/*
 * SPDX-FileType: SOURCE
 *
 * SPDX-FileCopyrightText: 2019-2026 Nick Kossifidis <mick@ics.forth.gr>
 * SPDX-FileCopyrightText: 2019-2026 ICS/FORTH
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <target_config.h>		/* For PLAT_UART_* / PLAT_NO_IRQ */
#include <platform/interfaces/irq.h>	/* For REGISTER_IRQ_SOURCE */
#include <platform/interfaces/uart.h>	/* For uart interface definitions */
#include <platform/riscv/mmio.h>	/* For register access */
#include <platform/utils/utils.h>	/* For DBG */
#include <errno.h>			/* For EAGAIN, EIO */

#if defined(PLAT_UART_BASE) && (PLAT_UART_BASE > 0)

/*
 * This is a simple driver for an 8250/16550A compatible UART, for more
 * infos on its programming interface check out:
 * https://www.lammertbies.nl/comm/info/serial-uart
 */

/******************\
* Register offsets *
\******************/

#define UART_RBR_OFFSET		0x0	/* In:  Receive Buffer Register */
#define UART_THR_OFFSET		0x0	/* Out: Transmitter Holding Register */
#define UART_DLL_OFFSET		0x0	/* Out: Divisor Latch Low */
#define UART_IER_OFFSET		0x1	/* I/O: Interrupt Enable Register */
#define UART_DLM_OFFSET		0x1	/* Out: Divisor Latch High */
#define UART_FCR_OFFSET		0x2	/* Out: FIFO Control Register */
#define UART_IIR_OFFSET		0x2	/* I/O: Interrupt Identification Register */
#define UART_LCR_OFFSET		0x3	/* Out: Line Control Register */
#define UART_MCR_OFFSET		0x4	/* Out: Modem Control Register */
#define UART_LSR_OFFSET		0x5	/* In:  Line Status Register */
#define UART_MSR_OFFSET		0x6	/* In:  Modem Status Register */
#define UART_SCR_OFFSET		0x7	/* I/O: Scratch Register */
#define UART_MDR1_OFFSET	0x8	/* I/O:  Mode Register */

#define UART_LSR_FIFOE		0x80    /* Fifo error */
#define UART_LSR_TEMT		0x40    /* Transmitter empty */
#define UART_LSR_THRE		0x20    /* Transmit-hold-register empty */
#define UART_LSR_BI		0x10    /* Break interrupt indicator */
#define UART_LSR_FE		0x08    /* Frame error indicator */
#define UART_LSR_PE		0x04    /* Parity error indicator */
#define UART_LSR_OE		0x02    /* Overrun error indicator */
#define UART_LSR_DR		0x01    /* Receiver data ready */
#define UART_LSR_BRK_ERROR_BITS	0x1E    /* BI, FE, PE, OE bits */

#define UART_FCR_FIFO_EN	0x1	/* FIFO Enable */
#define	UART_FCR_RX_FIFO_CLEAR	0x2	/* Clear RX FIFO */
#define	UART_FCR_TX_FIFO_CLEAR	0x4	/* Clear TX FIFO */
#define	UART_FCR_DMA_MODE	0x8	/* Enable DMA mode (RXRDY/TXRDY) */
#define	UART_FCR_FIFO_TRIG_LVL	0x60	/* Mask for FIFO Trigger level */

#define UART_IIR_ID_MASK	0x0F	/* Interrupt ID bits of the IIR */

/*
 * DesignWare APB UART (Synopsys "snps,dw-apb-uart") extensions.
 *
 * The DW APB UART is a widely used soft IP found on many SoCs. It is
 * register-compatible with the 8250/16550 for the core registers above, so
 * uart_getc()/uart_putc() need no changes; it only differs in a few places,
 * all handled below behind PLAT_UART_DW_APB:
 *
 *  1) "Busy" behaviour. The DW UART refuses writes to the Line Control
 *     Register while it is mid-transfer: the write is silently dropped and
 *     a "busy detect" interrupt is raised instead (IIR id == 0x07). Since
 *     setting DLAB to program the divisor is an LCR write, a UART left
 *     active by a previous boot stage would never get reconfigured. We
 *     guard the LCR writes in uart_init() by first quiescing the UART
 *     (clear busy-detect via the status register, soft-reset it if it is
 *     still busy via the Software Reset Register), and we swallow any
 *     busy-detect interrupt in the IRQ path.
 *
 *  2) Fractional baud divisor. The DW UART has a Divisor Latch Fraction
 *     (DLF) register that extends the integer divisor by 1/16th steps,
 *     letting us hit odd baud rates exactly. For example, with a 25 MHz
 *     reference clock at 115200 baud the ideal divisor is 13.56: the
 *     integer-only 13 gives a ~4% baud error, while DLL=13 + DLF=9 lands
 *     within ~0.01%.
 *
 * (The 32-bit, word-strided register access that these parts are often
 * wired up with - reg-io-width = 4, reg-shift = 2 - is not a DW feature as
 * such; it is already covered generically by PLAT_UART_SHIFTED_IO /
 * PLAT_UART_REG_SHIFT.)
 *
 * Register offsets below are register *indices* (pre-shift), matching the
 * UART_*_OFFSET convention above. Byte offsets are noted for reference.
 */
#if defined(PLAT_UART_DW_APB)
#define UART_USR_OFFSET		0x1F	/* 0x7C: UART Status Register */
#define UART_SRR_OFFSET		0x22	/* 0x88: Software Reset Register */
#define UART_DLF_OFFSET		0x30	/* 0xC0: Divisor Latch Fraction */

#define UART_USR_BUSY		0x01	/* UART is busy transferring data */

#define UART_SRR_UR		0x01	/* UART soft reset */
#define UART_SRR_RFR		0x02	/* RX FIFO reset */
#define UART_SRR_XFR		0x04	/* TX FIFO reset */

#define UART_IIR_BUSY_DETECT	0x07	/* IIR id for a busy-detect interrupt */

#define UART_DLF_WIDTH		4	/* DLF is a 1/16th (4-bit) fraction */
#endif /* PLAT_UART_DW_APB */

/*********\
* Helpers *
\*********/

static inline void
uart_write(int reg, uint8_t val)
{
	uintptr_t addr = (uintptr_t)(PLAT_UART_BASE + (reg << PLAT_UART_REG_SHIFT));
	#if defined(PLAT_UART_SHIFTED_IO) && (PLAT_UART_REG_SHIFT == 4)
		write64((uint64_t*)addr, val);
	#elif defined(PLAT_UART_SHIFTED_IO) && (PLAT_UART_REG_SHIFT == 2)
		write32((uint32_t*)addr, val);
	#else
		write8((uint8_t*)addr, val);
	#endif
}

static inline uint8_t
uart_read(int reg)
{
	uintptr_t addr = (uintptr_t)(PLAT_UART_BASE + (reg << PLAT_UART_REG_SHIFT));
	#if defined(PLAT_UART_SHIFTED_IO) && (PLAT_UART_REG_SHIFT == 4)
		return (uint8_t) read64((uint64_t*)addr);
	#elif defined(PLAT_UART_SHIFTED_IO) && (PLAT_UART_REG_SHIFT == 2)
		return (uint8_t) read32((uint32_t*)addr);
	#else
		return read8((uint8_t*)addr);
	#endif
}

/**************\
* Entry points *
\**************/

void
uart_init(void)
{
	uint16_t uart_divisor = (uint16_t) (PLAT_UART_CLOCK_HZ / (PLAT_UART_BAUD_RATE << 4));

#if defined(PLAT_UART_DW_APB)
	/* Fractional part of the divisor, in 1/16th steps (see DLF notes). */
	uint32_t uart_div_rem = (uint32_t)(PLAT_UART_CLOCK_HZ % (PLAT_UART_BAUD_RATE << 4));
	uint8_t uart_dlf = (uint8_t)(((uart_div_rem << UART_DLF_WIDTH) +
				      ((PLAT_UART_BAUD_RATE << 4) >> 1)) /
				     (PLAT_UART_BAUD_RATE << 4));
	/* A fraction that rounds up to a full step carries into the integer. */
	if (uart_dlf >> UART_DLF_WIDTH) {
		uart_dlf = 0;
		uart_divisor++;
	}

	/* Quiesce the controller before touching LCR: clear any pending
	 * busy-detect, and if it is still mid-transfer (e.g. a prior stage
	 * left it active) soft-reset it so our LCR writes are not dropped. */
	if (uart_read(UART_USR_OFFSET) & UART_USR_BUSY)
		uart_write(UART_SRR_OFFSET,
			   UART_SRR_UR | UART_SRR_RFR | UART_SRR_XFR);
	(void) uart_read(UART_USR_OFFSET);
#endif

	/* Disable interrupts */
	uart_write(UART_IER_OFFSET, 0);

	/* Enable DLAB */
	uart_write(UART_LCR_OFFSET, 0x80);

	/* Set divisor low/high bytes
	 * Example: 50MHz / (115200 << 4) = 27.1... -> 0x1b
	 * Note: always set DLM as well, the divisor latches are not
	 * affected by reset (their power-up content is indeterminate,
	 * see e.g. the PC16550D datasheet), and a previous boot stage
	 * may also have left a non-zero value there. */
	uart_write(UART_DLL_OFFSET, uart_divisor & 0xFF);
	uart_write(UART_DLM_OFFSET, uart_divisor >> 8);

#if defined(PLAT_UART_DW_APB)
	/* Program the fractional divisor (DLAB does not gate this register). */
	uart_write(UART_DLF_OFFSET, uart_dlf);
#endif

	/* Set Line Control Register:
	 * 8 bits, no parity, one stop bit */
	uart_write(UART_LCR_OFFSET, 0x3);

	/* No modem control DTR/RTS */
	uart_write(UART_MCR_OFFSET, 0x0);

	/* Set scratchpad */
	uart_write(UART_SCR_OFFSET, 0x0);

	/* Enable and clear FIFO */
	uart_write(UART_FCR_OFFSET, 0x07);

	/* Clear any pending RX */
	uart_read(UART_RBR_OFFSET);

	/* Clear any pending errors */
	uart_read(UART_LSR_OFFSET);

	return;
}

int
uart_getc(void)
{
	uint8_t lsr = uart_read(UART_LSR_OFFSET);

	/* Check for errors */
	if (lsr & UART_LSR_BRK_ERROR_BITS)
		return -EIO;

	/* We have data available, read the next character in FIFO */
	if(lsr & UART_LSR_DR)
		return uart_read(UART_RBR_OFFSET);

	/* No data yet, caller should try again */
	return -EAGAIN;
}

void
uart_putc(uint8_t c)
{
	uint8_t lsr = 0;

 tx:
	/* Wait for transmit register to be flushed */
	do {
		lsr = uart_read(UART_LSR_OFFSET);
	} while(!(lsr & UART_LSR_THRE));

	/* Write byte to the Tx buffer */
	uart_write(UART_THR_OFFSET, c);

	/* If we got a new line, also print a carriage return, going
	 * through the THRE check above again. With FIFOs enabled the
	 * second write would be covered anyway, but on FIFO-less parts
	 * (16450, or a 16550 with a broken FIFO) back-to-back writes
	 * may overwrite the holding register. */
	if (c == '\n') {
		c = '\r';
		goto tx;
	}

	return;
}

#ifndef PLAT_NO_IRQ
void
uart_enable_irq(void)
{
	uart_write(UART_IER_OFFSET, 1);
}

void
uart_disable_irq(void)
{
	uart_write(UART_IER_OFFSET, 0);
}

static uart_irq_handler_t uart_irq_handler = NULL;

void uart_set_irq_handler(uart_irq_handler_t new_handler)
{
	if (new_handler != NULL) {
		uart_irq_handler = new_handler;
		/* Memory barrier to ensure the write is visible */
		__asm__ volatile("fence rw,rw" ::: "memory");
	}
}

static void
uart_irq_trampoline(uint16_t source_id)
{
#if defined(PLAT_UART_DW_APB)
	/* A busy-detect interrupt (raised when LCR is written while the UART
	 * is busy) is cleared by reading the UART status register. It is not
	 * an RX event, so acknowledge and swallow it to avoid a storm. */
	if ((uart_read(UART_IIR_OFFSET) & UART_IIR_ID_MASK) == UART_IIR_BUSY_DETECT) {
		(void) uart_read(UART_USR_OFFSET);
		return;
	}
#endif

	/* Safety check in case someone sets NULL */
	if (uart_irq_handler != NULL)
		uart_irq_handler(source_id);
	else
		DBG("UART interrupt received but no handler installed\n");
}

REGISTER_IRQ_SOURCE(uart0_rx, {
	.source.wire_id = PLAT_UART_IRQ,
	.handler = uart_irq_trampoline,
	.target_hart = 0,
	.priority = IRQ_PRIORITY_HIGH,
	.flags = IRQ_TRIGGER_LEVEL_HIGH,
});
#else

void uart_enable_irq(void) { return; }
void uart_disable_irq(void) { return; }
void uart_set_irq_handler(uart_irq_handler_t new_handler) { return; }

#endif /* PLAT_NO_IRQ */
#endif /* defined(PLAT_UART_BASE) && (PLAT_UART_BASE > 0) */