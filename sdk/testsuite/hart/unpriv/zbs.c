/*
 * SPDX-FileType: SOURCE
 *
 * SPDX-FileCopyrightText: 2026 ICS/FORTH
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/*
 * Zbs (single-bit instructions) -- set, clear, invert or extract one bit of rs1. The
 * register forms take the bit index from rs2[5:0], the immediate forms from a 6-bit
 * shamt. Each instruction gets an EXT_INSN unit (the op vs its base-ISA reference).
 * The one zbs() function drives them off `flags`: probe presence, fuzz differentially,
 * or run the IPC benchmark.
 */

#include "ext_probe.h"
#include "ext_bench.h"
#include <test_framework.h>		/* For PROBE_* + REGISTER_HART_UNPRIV */
#include <platform/riscv/hart.h>	/* For hart_state + HS_FLAG_PROBING */
#include <platform/interfaces/uart.h>	/* For uart_getc() (non-blocking fuzz poll) */
#include <platform/utils/utils.h>	/* For INF() */
#include <stddef.h>
#include <stdint.h>

#define ARRAY_SIZE(a)	(sizeof(a) / sizeof((a)[0]))

#define ZBS	".option arch, +zbs\n"

/* The immediate forms carry their index twice on the same line, asm and reference.
 * All four indices are >= 32, so bit 5 of the shamt field is exercised. */
EXT_INSN(zbs_bclr,  ZBS, "bclr  %[r], %[a], %[b]\n", a & ~(1ULL << (b & 63)))
EXT_INSN(zbs_bclri, ZBS, "bclri %[r], %[a], 63\n",   a & ~(1ULL << 63))
EXT_INSN(zbs_bext,  ZBS, "bext  %[r], %[a], %[b]\n", (a >> (b & 63)) & 1)
EXT_INSN(zbs_bexti, ZBS, "bexti %[r], %[a], 32\n",   (a >> 32) & 1)
EXT_INSN(zbs_binv,  ZBS, "binv  %[r], %[a], %[b]\n", a ^ (1ULL << (b & 63)))
EXT_INSN(zbs_binvi, ZBS, "binvi %[r], %[a], 47\n",   a ^ (1ULL << 47))
EXT_INSN(zbs_bset,  ZBS, "bset  %[r], %[a], %[b]\n", a | (1ULL << (b & 63)))
EXT_INSN(zbs_bseti, ZBS, "bseti %[r], %[a], 58\n",   a | (1ULL << 58))

static const struct ext_unit zbs_units[] = {
	{ "bclr",  zbs_bclr  },
	{ "bclri", zbs_bclri },
	{ "bext",  zbs_bext  },
	{ "bexti", zbs_bexti },
	{ "binv",  zbs_binv  },
	{ "binvi", zbs_binvi },
	{ "bset",  zbs_bset  },
	{ "bseti", zbs_bseti },
};

/*
 * Benchmark kernels: one register-only loop runs all eight Zbs instructions per
 * iteration (a synthetic single-bit mix), written once with Zbs and once as a base-ISA
 * twin computing the same acc. The register forms take their indices from the top 24
 * bits of acc, six bits each, so the index is data. The closing multiply by k (odd)
 * scrambles acc for the next iteration. norvc keeps every op 4 bytes.
 * 17 instructions.
 */
static uint64_t
kern_zbs_ext(uint64_t acc, uint64_t k, uint64_t n)
{
	asm volatile(".option push\n.option norvc\n" ZBS
		     "1:\n"
		     "srli  t1, %[acc], 40\n"		/* index word: top 24 bits     */
		     "bset  %[acc], %[acc], t1\n"	/* set bit t1[5:0]             */
		     "srli  t1, t1, 6\n"		/* next index                  */
		     "bclr  %[acc], %[acc], t1\n"	/* clear a bit                 */
		     "srli  t1, t1, 6\n"
		     "binv  %[acc], %[acc], t1\n"	/* toggle a bit                */
		     "srli  t1, t1, 6\n"
		     "bext  t0, %[acc], t1\n"		/* read a bit: 0 or 1          */
		     "bseti %[acc], %[acc], 7\n"	/* fixed-position forms        */
		     "bclri %[acc], %[acc], 8\n"
		     "binvi %[acc], %[acc], 9\n"
		     "bexti t1, %[acc], 10\n"
		     "add   %[acc], %[acc], t0\n"	/* fold both extracted bits in */
		     "add   %[acc], %[acc], t1\n"
		     "mul   %[acc], %[acc], %[k]\n"	/* scramble for the next round */
		     "addi  %[n], %[n], -1\n"
		     "bnez  %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     : [k] "r"(k)
		     : "t0", "t1", "memory");
	return acc;
}

/* The twin builds each register-form mask with a shift of the constant 1 (sll takes
 * rs2[5:0], like the Zbs forms). The immediate forms sit below bit 11, so ori, andi
 * and xori reach them directly. 23 instructions. */
static uint64_t
kern_zbs_base(uint64_t acc, uint64_t k, uint64_t n)
{
	uint64_t one = 1;

	asm volatile(".option push\n.option norvc\n"
		     "1:\n"
		     "srli  t1, %[acc], 40\n"
		     "sll   t2, %[one], t1\n"		/* bset = sll + or             */
		     "or    %[acc], %[acc], t2\n"
		     "srli  t1, t1, 6\n"
		     "sll   t2, %[one], t1\n"		/* bclr = sll + not + and      */
		     "not   t2, t2\n"
		     "and   %[acc], %[acc], t2\n"
		     "srli  t1, t1, 6\n"
		     "sll   t2, %[one], t1\n"		/* binv = sll + xor            */
		     "xor   %[acc], %[acc], t2\n"
		     "srli  t1, t1, 6\n"
		     "srl   t0, %[acc], t1\n"		/* bext = srl + andi           */
		     "andi  t0, t0, 1\n"
		     "ori   %[acc], %[acc], 128\n"	/* bseti 7                     */
		     "andi  %[acc], %[acc], -257\n"	/* bclri 8                     */
		     "xori  %[acc], %[acc], 512\n"	/* binvi 9                     */
		     "srli  t1, %[acc], 10\n"		/* bexti 10 = srli + andi      */
		     "andi  t1, t1, 1\n"
		     "add   %[acc], %[acc], t0\n"
		     "add   %[acc], %[acc], t1\n"
		     "mul   %[acc], %[acc], %[k]\n"
		     "addi  %[n], %[n], -1\n"
		     "bnez  %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     : [k] "r"(k), [one] "r"(one)
		     : "t0", "t1", "t2", "memory");
	return acc;
}

/* The one Zbs unit: probe the instructions, then act on `flags` (test_framework.h). */
static int
zbs(unsigned flags)
{
	const char *name = "Zbs (single-bit instructions)";
	struct hart_state *hs = hart_get_hstate_self();
	size_t present = 0;

	/* Probe: run each op once under HS_FLAG_PROBING, so an absent instruction is
	 * stepped over (hs->error) instead of trapping for real. Value-independent. */
	for (size_t i = 0; i < ARRAY_SIZE(zbs_units); i++) {
		hs->error = 0;
		hart_set_flags(hs, HS_FLAG_PROBING);
		(void)zbs_units[i].fn(rand64(), rand64());
		hart_clear_flags(hs, HS_FLAG_PROBING);
		present += (hs->error == 0);
	}
	if (present == 0)
		return PROBE_ABSENT;
	if (present < ARRAY_SIZE(zbs_units))
		return PROBE_FAILED;		/* partial: fuzz/bench would trap for real */

	/* Pure probe: report the ops we support (benchmark needs mcountinhibit). */
	if (!(flags & (PROBE_FUZZ | PROBE_BENCH)))
		return PROBE_FUZZ | (bench_available() ? PROBE_BENCH : 0);

	if (flags & PROBE_FUZZ) {
		uint64_t rounds = 0;
		int mism = 0;

		INF("Fuzzing %s (differential vs base-ISA), press 'q' to stop...\n", name);
		while (1) {
			uint64_t a = rand64(), b = rand64();

			for (size_t i = 0; i < ARRAY_SIZE(zbs_units); i++)
				if (!zbs_units[i].fn(a, b) && ++mism <= 8)
					INF("  MISMATCH: %s (a=%#lx b=%#lx)\n",
					    zbs_units[i].name, a, b);
			if ((++rounds & 0xFFFFu) == 0) {
				int c = uart_getc();	/* non-blocking */
				if (c == 'q' || c == 'Q')
					break;
			}
		}
		INF("Fuzz done: %lu rounds, %d mismatches\n", rounds, mism);
		return mism ? PROBE_FAILED : 0;
	}

	/* PROBE_BENCH */
	if (!bench_available()) {
		INF("Zbs benchmark needs mcountinhibit -- unavailable.\n");
		return 0;
	}
	bench_pair("Zbs single-bit chain", kern_zbs_ext, kern_zbs_base,
		   0x9E3779B97F4A7C15ULL, flags & PROBE_COMPACT);	/* k must be odd */
	return 0;
}
REGISTER_HART_UNPRIV("Zbs (single-bit instructions)", zbs);