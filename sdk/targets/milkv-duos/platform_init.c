/*
 * SPDX-FileType: SOURCE
 *
 * SPDX-FileCopyrightText: 2026 Nick Kossifidis <mick@ics.forth.gr>
 * SPDX-FileCopyrightText: 2026 ICS/FORTH
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/*
 * Milk-V Duo S (Sophgo SG2000 / CVITek CV181x) platform init.
 *
 * Overrides the weak platform_init() to power up and calibrate the SoC's
 * internal Ethernet ePHY before handing off to the default init. The ePHY is
 * wired over RMII to the dwmac-1000 MAC at PLAT_DWMAC3_BASE_ADDR; after reset
 * its PHY id reads 0 and its analog front-end is off, so nothing on the MDIO
 * bus responds until this runs. Everything here is plain APB register access
 * to the ePHY glue block (base 0x03009000) and is independent of the MAC/MDIO,
 * so it completes standalone before the driver.
 *
 * The ePHY has no public documentation. The register offsets and the values
 * the analog block requires are hardware facts; they were cross-checked
 * against the vendor u-boot (board/cvitek/cv181x board init and the CVITek PHY
 * driver, GPL-2.0) and the board DTS. The code and comments here are our own.
 * The sequence is kept intact rather than trimmed, since which writes matter
 * for link quality cannot be told apart from the outside. The eth clocks
 * (eth_csrclk/eth_ptpclk) and the MAC/ePHY resets are left at their
 * power-on-default enabled state - the vendor wires neither in its ethernet
 * node, so they are known to be up at this point.
 */

#include <target_config.h>		/* For PLAT_* */
#include <platform/riscv/mmio.h>	/* For read32/write32 */

/*
 * ePHY glue register block. The front-end lives behind a paged MII window:
 * PAGE_SEL picks the page, then REG(0..13) are that page's registers. CTL and
 * the page-0 id live at the bottom; TOP/APB_SEL (at +0x800) drive power/reset/
 * autoneg and hand the MII window between this APB path and the MAC's MDIO.
 */
#define EPHY_BASE		0x03009000

#define EPHY_CTL		0x000	/* page 0: basic control */
#define EPHY_ID_HI		0x008	/* page 0: PHY id [31:16] */
#define EPHY_ID_LO		0x00c	/* page 0: PHY id [15:0]  */
#define EPHY_REG(n)		(0x040 + ((n) * 4))	/* current page's regs */
#define EPHY_PAGE_SEL		0x07c
#define EPHY_TOP		0x800	/* shutdown / reset / autoneg */
#define EPHY_APB_SEL		0x804	/* 1: APB drives MII, 0: MDIO */

/* eFuse shadow registers holding per-die analog trims, and the "valid" flags
 * marking which were actually blown in production (separate EFUSE block). */
#define EPHY_EFUSE_VALID	0x03050120
#define EPHY_EFUSE_TRIM		0x03050124
#define EFUSE_TXECHORC_VALID	(1 << 8)
#define EFUSE_TXITUNE_VALID	(1 << 9)
#define EFUSE_TXRXTERM_VALID	(1 << 11)

static inline void
ephy_w(uint32_t off, uint32_t val)
{
	write32((void *)(uintptr_t)(EPHY_BASE + off), val);
}

static inline uint32_t
ephy_r(uint32_t off)
{
	return read32((const void *)(uintptr_t)(EPHY_BASE + off));
}

static inline void
ephy_clrset(uint32_t off, uint32_t clr, uint32_t set)
{
	ephy_w(off, (ephy_r(off) & ~clr) | set);
}

static inline void
ephy_page(uint32_t page)
{
	ephy_w(EPHY_PAGE_SEL, page << 8);
}

static inline uint32_t
efuse_r(uintptr_t addr)
{
	return read32((const void *)addr);
}

/*
 * Bring the ePHY out of power-down/reset and give it a non-zero PHY id so it
 * can be found on the MDIO bus. Mirrors the vendor board-init step.
 */
static void
milkv_ephy_power_on(void)
{
	ephy_w(EPHY_APB_SEL, 1);	/* drive MII regs over APB */

	ephy_w(EPHY_TOP, 0x0900);	/* clear shutdown */
	ephy_w(EPHY_TOP, 0x0904);	/* release digital reset -> MII readable */

	ephy_page(5);			/* analog PD/EN live on page 5 */
	ephy_w(EPHY_REG(0), 0x0c00);	/* analog power-down release */
	ephy_w(EPHY_REG(0), 0x0c7e);	/* analog enable */
	ephy_w(EPHY_TOP, 0x0906);	/* release analog reset */

	ephy_page(5);
	ephy_w(EPHY_ID_HI, 0x0043);	/* CVITek ePHY id 0x0043:5649 */
	ephy_w(EPHY_ID_LO, 0x5649);

	ephy_w(EPHY_APB_SEL, 0);	/* back to MDIO control */
}

/*
 * Analog calibration: TX bias/termination/echo trims (from eFuse when the die
 * was trimmed, otherwise a default), the MLT3 line-driver phase tables, link
 * pulse / idle / 10baseT shaping, and the CV181x line filters. Each trimmed
 * value is written and then re-written to latch it into the analog block.
 */
static void
milkv_ephy_calibrate(void)
{
	uint32_t trim;

	ephy_w(EPHY_APB_SEL, 1);

	ephy_page(5);
	ephy_w(EPHY_REG(0), 0x0c00);
	ephy_w(EPHY_REG(0), 0x0c7e);
	ephy_w(EPHY_TOP, 0x0906);
	ephy_page(5);

	/* TX bias current (txitune1/0) */
	if (efuse_r(EPHY_EFUSE_VALID) & EFUSE_TXITUNE_VALID) {
		trim = ((efuse_r(EPHY_EFUSE_TRIM) >> 24) & 0xFF) |
		       (((efuse_r(EPHY_EFUSE_TRIM) >> 16) & 0xFF) << 8);
		ephy_clrset(EPHY_REG(9), 0xFFFF, trim);
	} else
		ephy_w(EPHY_REG(9), 0x5a5a);
	ephy_w(EPHY_REG(9), 0x5a5a);	/* latch */

	/* TX echo adjust (txechoiadj) */
	if (efuse_r(EPHY_EFUSE_VALID) & EFUSE_TXECHORC_VALID)
		ephy_clrset(EPHY_REG(5), 0xFF00,
			    ((efuse_r(EPHY_EFUSE_TRIM) >> 8) & 0xFF) << 8);
	else
		ephy_w(EPHY_REG(5), 0x0000);

	/* TX termination + echo RC delay (txrterm_p1/txrterm/txechorcadj) */
	if (efuse_r(EPHY_EFUSE_VALID) & EFUSE_TXRXTERM_VALID) {
		trim = (((efuse_r(EPHY_EFUSE_VALID) >> 28) & 0xF) << 4) |
		       (((efuse_r(EPHY_EFUSE_VALID) >> 24) & 0xF) << 8);
		ephy_clrset(EPHY_REG(6), 0xFF0, trim);
	} else
		ephy_w(EPHY_REG(6), 0x0bb0);
	ephy_w(EPHY_REG(6), 0x0bb0);	/* latch */

	/* 100baseT timing */
	ephy_w(EPHY_REG(7), 0x0c10);	/* rise update */
	ephy_w(EPHY_REG(10), 0x0003);	/* falling phase */
	ephy_w(EPHY_REG(5), 0x0000);	/* TX bias */

	/* MLT3 positive-phase code table (page 16) */
	ephy_page(16);
	ephy_w(EPHY_REG(10), 0x1000);
	ephy_w(EPHY_REG(11), 0x3020);
	ephy_w(EPHY_REG(12), 0x5040);
	ephy_w(EPHY_REG(13), 0x7060);
	ephy_w(EPHY_REG(6), 0x1708);
	ephy_w(EPHY_REG(7), 0x3827);
	ephy_w(EPHY_REG(8), 0x5748);
	ephy_w(EPHY_REG(9), 0x7867);

	/* MLT3 negative-phase code table (page 17) */
	ephy_page(17);
	ephy_w(EPHY_REG(0), 0x9080);
	ephy_w(EPHY_REG(1), 0xb0a0);
	ephy_w(EPHY_REG(2), 0xd0c0);
	ephy_w(EPHY_REG(3), 0xf0e0);
	ephy_w(EPHY_REG(4), 0x9788);
	ephy_w(EPHY_REG(5), 0xb8a7);
	ephy_w(EPHY_REG(6), 0xd7c8);
	ephy_w(EPHY_REG(7), 0xf8e7);

	/* page 5: enable TX termination, adjust rx common-mode */
	ephy_page(5);
	ephy_clrset(EPHY_REG(0), 0, 0x0001);
	ephy_clrset(EPHY_REG(3), 0, 0x0820);

	/* Link-pulse shaping (page 10) */
	ephy_page(10);
	ephy_w(EPHY_REG(0), 0x3e00);
	ephy_w(EPHY_REG(1), 0x7864);
	ephy_w(EPHY_REG(2), 0x6470);
	ephy_w(EPHY_REG(3), 0x5f62);
	ephy_w(EPHY_REG(4), 0x5a5a);
	ephy_w(EPHY_REG(5), 0x5458);
	ephy_w(EPHY_REG(6), 0xb23a);
	ephy_w(EPHY_REG(7), 0x94a0);
	ephy_w(EPHY_REG(8), 0x9092);
	ephy_w(EPHY_REG(9), 0x8a8e);
	ephy_w(EPHY_REG(10), 0x8688);
	ephy_w(EPHY_REG(11), 0x8484);
	ephy_w(EPHY_REG(12), 0x0082);

	/* TP idle shaping (page 11) */
	ephy_page(11);
	ephy_w(EPHY_REG(0), 0x5252);
	ephy_w(EPHY_REG(1), 0x5252);
	ephy_w(EPHY_REG(2), 0x4b52);
	ephy_w(EPHY_REG(3), 0x3d47);
	ephy_w(EPHY_REG(4), 0xaa99);
	ephy_w(EPHY_REG(5), 0x989e);
	ephy_w(EPHY_REG(6), 0x9395);
	ephy_w(EPHY_REG(7), 0x9091);
	ephy_w(EPHY_REG(8), 0x8e8f);
	ephy_w(EPHY_REG(9), 0x8d8e);
	ephy_w(EPHY_REG(10), 0x8c8c);
	ephy_w(EPHY_REG(11), 0x8b8b);
	ephy_w(EPHY_REG(12), 0x008a);

	/* 10baseT waveform tables (pages 13-15) */
	ephy_page(13);
	ephy_w(EPHY_REG(0), 0x1e0a);
	ephy_w(EPHY_REG(1), 0x3862);
	ephy_w(EPHY_REG(2), 0x1e62);
	ephy_w(EPHY_REG(3), 0x2a08);
	ephy_w(EPHY_REG(4), 0x244c);
	ephy_w(EPHY_REG(5), 0x1a44);
	ephy_w(EPHY_REG(6), 0x061c);

	ephy_page(14);
	ephy_w(EPHY_REG(0), 0x2d30);
	ephy_w(EPHY_REG(1), 0x3470);
	ephy_w(EPHY_REG(2), 0x0648);
	ephy_w(EPHY_REG(3), 0x261c);
	ephy_w(EPHY_REG(4), 0x3160);
	ephy_w(EPHY_REG(5), 0x2d5e);

	ephy_page(15);
	ephy_w(EPHY_REG(0), 0x2922);
	ephy_w(EPHY_REG(1), 0x366e);
	ephy_w(EPHY_REG(2), 0x0752);
	ephy_w(EPHY_REG(3), 0x2556);
	ephy_w(EPHY_REG(4), 0x2348);
	ephy_w(EPHY_REG(5), 0x0c30);

	ephy_page(16);
	ephy_w(EPHY_REG(0), 0x1e08);
	ephy_w(EPHY_REG(1), 0x3868);
	ephy_w(EPHY_REG(2), 0x1462);
	ephy_w(EPHY_REG(3), 0x1a0e);
	ephy_w(EPHY_REG(4), 0x305e);
	ephy_w(EPHY_REG(5), 0x2f62);

	/* LED routing (page 1): drive LNK/SPD/DPX onto the LED pads */
	ephy_page(1);
	ephy_clrset(EPHY_REG(10), 0x0f00, 0);

	/* AGC swing (page 19) */
	ephy_page(19);
	ephy_w(EPHY_REG(6), 0x0012);
	ephy_w(EPHY_REG(7), 0x6848);

	/* CV181x line filters (page 18) */
	ephy_page(18);
	ephy_w(EPHY_REG(2), 0x0808);	/* lpf */
	ephy_w(EPHY_REG(3), 0x0808);
	ephy_w(EPHY_REG(4), 0x32f8);	/* hpf */
	ephy_w(EPHY_REG(5), 0xf8dc);

	/* Back to page 0: start autoneg, force full-duplex (resets to half) */
	ephy_page(0);
	ephy_w(EPHY_TOP, 0x090e);
	ephy_clrset(EPHY_CTL, 0, 0x0100);

	ephy_w(EPHY_APB_SEL, 0);	/* back to MDIO control */
}

/* Default init (UART, secondary harts, irq_init), kept as a separate symbol
 * by the SDK precisely so target overrides can chain to it. */
extern void platform_init_default(void);

void
platform_init(void)
{
	milkv_ephy_power_on();
	milkv_ephy_calibrate();
	platform_init_default();
}
