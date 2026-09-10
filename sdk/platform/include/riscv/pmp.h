/*
 * SPDX-FileType: SOURCE
 *
 * SPDX-FileCopyrightText: 2026 Nick Kossifidis <mick@ics.forth.gr>
 * SPDX-FileCopyrightText: 2026 ICS/FORTH
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef _PMP_H
#define _PMP_H

#include <target_config.h>	/* For PLAT_PMP_REGIONS / PLAT_RAM_* */

/*
 * RISC-V Physical Memory Protection (PMP)
 *
 * Each PMP entry is an 8-bit config (pmpcfg) plus an MXLEN-bit address
 * (pmpaddr = physical_address >> 2). M-mode bypasses PMP unless an entry
 * has the L (lock) bit set, in which case the rule is enforced on M-mode
 * too and becomes immutable until reset.
 *
 * PMP entries are a scarce hardware resource (typically 0, 8 or 16, up to 64).
 * Targets declare how many their harts implement via PLAT_PMP_REGIONS; if
 * that's below the number we need (PLAT_PMP_MIN_REGIONS) PMP is compiled out.
 *
 * What we protect (see pmp.c): a single locked NAPOT rule marks our RAM region
 * [PLAT_RAM_BASE, +PLAT_RAM_SIZE) -- data, bss, stack and heap -- as RW but
 * non-executable. .text/.rodata are already non-writable via PMA (ROM), and
 * everything outside our RAM region is left to the default M-mode policy (so
 * e.g. an FSBL loaded in a separate region can still be executed).
 */

/* PMP configuration byte fields (per entry) */
#define PMP_R		(1 << 0)	/* Read */
#define PMP_W		(1 << 1)	/* Write */
#define PMP_X		(1 << 2)	/* Execute */
#define PMP_A_SHIFT	3
#define PMP_A_MASK	(3 << PMP_A_SHIFT)
#define PMP_A_OFF	(0 << PMP_A_SHIFT)	/* Disabled (no match) */
#define PMP_A_TOR	(1 << PMP_A_SHIFT)	/* Top-of-range */
#define PMP_A_NA4	(2 << PMP_A_SHIFT)	/* Naturally aligned 4-byte */
#define PMP_A_NAPOT	(3 << PMP_A_SHIFT)	/* Naturally aligned power-of-two */
#define PMP_L		(1 << 7)		/* Lock (also applies to M-mode) */

/*
 * Encode a naturally-aligned power-of-two region [base, base + size) into a
 * NAPOT pmpaddr value. size must be a power of two >= 8 and base aligned to
 * size (checked with _Static_assert in pmp.c).
 */
#define PMP_NAPOT_ADDR(base, size)	(((base) >> 2) | (((size) >> 3) - 1))

/* Number of PMP entries our configuration needs (one NAPOT rule). */
#define PLAT_PMP_MIN_REGIONS	1

#if defined(PLAT_PMP_REGIONS) && (PLAT_PMP_REGIONS >= PLAT_PMP_MIN_REGIONS)
#define PLAT_HAS_PMP	1

void hart_init_pmp(void);

#else	/* No (or too few) PMP entries: compile the feature out */

static inline void hart_init_pmp(void) { }

#endif

#endif /* _PMP_H */
