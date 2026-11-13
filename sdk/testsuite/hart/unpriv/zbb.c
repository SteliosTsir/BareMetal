/*
 * SPDX-FileType: SOURCE
 *
 * SPDX-FileCopyrightText: 2026 ICS/FORTH
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/*
 * Zbb (basic bit-manipulation) -- 24 instructions, mostly peepholes for sequences the
 * spec names outright: sext/zext "replace the generalized idioms slli + srai and slli
 * + srli", the rotates "replace a common four-instruction sequence (neg; sll/srl;
 * srl/sll; or)", and orc.b is for "string-processing functions, such as strlen and
 * strcpy". Each instruction gets an EXT_INSN unit (the op vs its base-ISA reference).
 *
 * Five benchmark kernels, each a real algorithm rather than a synthetic chain, reaching
 * 20 of the 24 instructions between them:
 *
 *   popcnt   Hamming distance and similarity   cpop cpopw xnor
 *   sha      SHA-512 and SHA-256 Sigma0        rori roriw
 *   rc5      data-dependent rotation, RC5      rol rolw ror rorw
 *   bscan    first zero byte in a word         orc.b ctz rev8
 *   pack     packed sample decode and clamp    sext.b sext.h zext.h min minu max maxu andn
 *
 *
 * zbb() drives all of it off `flags`: probe presence, fuzz differentially, or benchmark.
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

#define ZBB	".option arch, +zbb\n"

/*
 * Base-ISA references, following the Operation blocks in 30.9.
 *
 * clz/ctz return XLEN when the input is zero, and the w forms return 32 -- defined
 * behaviour that rand64() will never reach, so the fuzz path checks zero explicitly.
 * The w forms work on bit 31 downwards, not bit 63.
 */
static uint64_t
clz_ref(uint64_t a)
{
	unsigned n = 0;

	if (!a)
		return 64;
	while (!(a >> 63)) {
		a <<= 1;
		n++;
	}
	return n;
}

static uint64_t
clzw_ref(uint64_t a)
{
	uint32_t v = (uint32_t)a;
	unsigned n = 0;

	if (!v)
		return 32;
	while (!(v >> 31)) {
		v <<= 1;
		n++;
	}
	return n;
}

static uint64_t
ctz_ref(uint64_t a)
{
	unsigned n = 0;

	if (!a)
		return 64;
	while (!(a & 1)) {
		a >>= 1;
		n++;
	}
	return n;
}

static uint64_t
ctzw_ref(uint64_t a)
{
	uint32_t v = (uint32_t)a;
	unsigned n = 0;

	if (!v)
		return 32;
	while (!(v & 1)) {
		v >>= 1;
		n++;
	}
	return n;
}

static uint64_t
cpop_ref(uint64_t a)
{
	unsigned n = 0;

	for (; a; a >>= 1)
		n += a & 1;
	return n;
}

static uint64_t
cpopw_ref(uint64_t a)
{
	uint32_t v = (uint32_t)a;
	unsigned n = 0;

	for (; v; v >>= 1)
		n += v & 1;
	return n;
}

/* rol/ror take the amount from rs2[5:0], the w forms from rs2[4:0]. The w forms rotate
 * inside 32 bits then sign-extend bit 31. A C shift by the full width is undefined,
 * hence the n == 0 cases -- which random rs2 hits about one round in 64. */
static uint64_t
rol_ref(uint64_t a, uint64_t n)
{
	n &= 63;
	return n ? (a << n) | (a >> (64 - n)) : a;
}

static uint64_t
ror_ref(uint64_t a, uint64_t n)
{
	n &= 63;
	return n ? (a >> n) | (a << (64 - n)) : a;
}

static uint64_t
rolw_ref(uint64_t a, uint64_t n)
{
	uint32_t v = (uint32_t)a;

	n &= 31;
	if (n)
		v = (v << n) | (v >> (32 - n));
	return (uint64_t)(int64_t)(int32_t)v;
}

static uint64_t
rorw_ref(uint64_t a, uint64_t n)
{
	uint32_t v = (uint32_t)a;

	n &= 31;
	if (n)
		v = (v >> n) | (v << (32 - n));
	return (uint64_t)(int64_t)(int32_t)v;
}

/* Each byte becomes all ones if any bit in it is set, else all zeros. */
static uint64_t
orcb_ref(uint64_t a)
{
	uint64_t o = 0;

	for (unsigned i = 0; i < 64; i += 8)
		o |= (uint64_t)(((a >> i) & 0xFF) ? 0xFF : 0x00) << i;
	return o;
}

static uint64_t
rev8_ref(uint64_t a)
{
	uint64_t o = 0;

	for (unsigned i = 0; i < 8; i++)
		o |= ((a >> (8 * i)) & 0xFF) << (8 * (7 - i));
	return o;
}

/* The two immediate forms carry their shift amount twice on the same line, so the asm
 * and the reference cannot drift apart unnoticed. The amounts are ones SHA actually
 * uses: 28 from SHA-512's Sigma0, 13 from SHA-256's. */
EXT_INSN(zbb_andn,   ZBB, "andn   %[r], %[a], %[b]\n", a & ~b)
EXT_INSN(zbb_orn,    ZBB, "orn    %[r], %[a], %[b]\n", a | ~b)
EXT_INSN(zbb_xnor,   ZBB, "xnor   %[r], %[a], %[b]\n", ~(a ^ b))
EXT_INSN(zbb_clz,    ZBB, "clz    %[r], %[a]\n",       clz_ref(a))
EXT_INSN(zbb_clzw,   ZBB, "clzw   %[r], %[a]\n",       clzw_ref(a))
EXT_INSN(zbb_ctz,    ZBB, "ctz    %[r], %[a]\n",       ctz_ref(a))
EXT_INSN(zbb_ctzw,   ZBB, "ctzw   %[r], %[a]\n",       ctzw_ref(a))
EXT_INSN(zbb_cpop,   ZBB, "cpop   %[r], %[a]\n",       cpop_ref(a))
EXT_INSN(zbb_cpopw,  ZBB, "cpopw  %[r], %[a]\n",       cpopw_ref(a))
EXT_INSN(zbb_max,    ZBB, "max    %[r], %[a], %[b]\n", (int64_t)a > (int64_t)b ? a : b)
EXT_INSN(zbb_maxu,   ZBB, "maxu   %[r], %[a], %[b]\n", a > b ? a : b)
EXT_INSN(zbb_min,    ZBB, "min    %[r], %[a], %[b]\n", (int64_t)a < (int64_t)b ? a : b)
EXT_INSN(zbb_minu,   ZBB, "minu   %[r], %[a], %[b]\n", a < b ? a : b)
EXT_INSN(zbb_sext_b, ZBB, "sext.b %[r], %[a]\n",       (uint64_t)(int64_t)(int8_t)a)
EXT_INSN(zbb_sext_h, ZBB, "sext.h %[r], %[a]\n",       (uint64_t)(int64_t)(int16_t)a)
EXT_INSN(zbb_zext_h, ZBB, "zext.h %[r], %[a]\n",       (uint64_t)(uint16_t)a)
EXT_INSN(zbb_rol,    ZBB, "rol    %[r], %[a], %[b]\n", rol_ref(a, b))
EXT_INSN(zbb_rolw,   ZBB, "rolw   %[r], %[a], %[b]\n", rolw_ref(a, b))
EXT_INSN(zbb_ror,    ZBB, "ror    %[r], %[a], %[b]\n", ror_ref(a, b))
EXT_INSN(zbb_rorw,   ZBB, "rorw   %[r], %[a], %[b]\n", rorw_ref(a, b))
EXT_INSN(zbb_rori,   ZBB, "rori   %[r], %[a], 28\n",   ror_ref(a, 28))
EXT_INSN(zbb_roriw,  ZBB, "roriw  %[r], %[a], 13\n",   rorw_ref(a, 13))
EXT_INSN(zbb_orc_b,  ZBB, "orc.b  %[r], %[a]\n",       orcb_ref(a))
EXT_INSN(zbb_rev8,   ZBB, "rev8   %[r], %[a]\n",       rev8_ref(a))

static const struct ext_unit zbb_units[] = {
	{ "andn",   zbb_andn   },
	{ "orn",    zbb_orn    },
	{ "xnor",   zbb_xnor   },
	{ "clz",    zbb_clz    },
	{ "clzw",   zbb_clzw   },
	{ "ctz",    zbb_ctz    },
	{ "ctzw",   zbb_ctzw   },
	{ "cpop",   zbb_cpop   },
	{ "cpopw",  zbb_cpopw  },
	{ "max",    zbb_max    },
	{ "maxu",   zbb_maxu   },
	{ "min",    zbb_min    },
	{ "minu",   zbb_minu   },
	{ "sext.b", zbb_sext_b },
	{ "sext.h", zbb_sext_h },
	{ "zext.h", zbb_zext_h },
	{ "rol",    zbb_rol    },
	{ "rolw",   zbb_rolw   },
	{ "ror",    zbb_ror    },
	{ "rorw",   zbb_rorw   },
	{ "rori",   zbb_rori   },
	{ "roriw",  zbb_roriw  },
	{ "orc.b",  zbb_orc_b  },
	{ "rev8",   zbb_rev8   },
};

/*
 * Benchmark kernels. Each takes the accumulator as its input word and feeds its result
 * back, so the chain is dependent and nothing folds; norvc keeps every op 4 bytes for a
 * fair comparison. Constants are loaded before each loop, where the N-vs-2N differential
 * cancels the cost. Instruction counts per iteration are noted per pair.
 */

/* Hamming distance and similarity: cpop of the xor counts the differing bits, and cpopw
 * counts the matching ones in the low word. 8 instructions. */
static uint64_t
kern_popcnt_ext(uint64_t acc, uint64_t k, uint64_t n)
{
	asm volatile(".option push\n.option norvc\n" ZBB
		     "1:\n"
		     "xor   t0, %[acc], %[k]\n"		/* bits differing from the key */
		     "cpop  t1, t0\n"			/* Hamming distance, 64 bits   */
		     "xnor  t0, %[acc], %[k]\n"		/* bits matching the key       */
		     "cpopw t2, t0\n"			/* ...counted in the low word  */
		     "add   %[acc], %[acc], t1\n"
		     "add   %[acc], %[acc], t2\n"
		     "addi  %[n], %[n], -1\n"
		     "bnez  %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     : [k] "r"(k)
		     : "t0", "t1", "t2", "memory");
	return acc;
}

/* The twin is the usual SWAR popcount, twice: 24 of its 33 instructions are the two bit
 * counts the ext kernel gets from cpop and cpopw. 33 instructions. */
static uint64_t
kern_popcnt_base(uint64_t acc, uint64_t k, uint64_t n)
{
	/* SWAR treats the register as a vector of counters and folds it in a tree: 64
	 * one-bit counters to 32 two-bit, to 16 four-bit, to 8 byte-wide, then one
	 * multiply sums those eight bytes into 63:56. Each mask selects every other
	 * field at one width -- needed because the shift that lines a field up with its
	 * neighbour also drags in bits from the field beyond it, which would otherwise
	 * leak across lanes and corrupt the counts. There is no vector unit, so the
	 * lanes are faked with masks. */
	uint64_t c55 = 0x5555555555555555ULL;	/* low bit of each pair       */
	uint64_t c33 = 0x3333333333333333ULL;	/* low half of each nibble    */
	uint64_t c0f = 0x0F0F0F0F0F0F0F0FULL;	/* low half of each byte      */
	uint64_t c01 = 0x0101010101010101ULL;	/* one per byte, for the sum  */

	asm volatile(".option push\n.option norvc\n"
		     "1:\n"
		     "xor   t0, %[acc], %[k]\n"
		     "srli  t1, t0, 1\n"		/* popcount of t0 -> t1:       */
		     "and   t1, t1, %[c55]\n"
		     "sub   t1, t0, t1\n"		/* counts in 2-bit fields      */
		     "srli  t2, t1, 2\n"
		     "and   t2, t2, %[c33]\n"
		     "and   t1, t1, %[c33]\n"
		     "add   t1, t1, t2\n"		/* counts in 4-bit fields      */
		     "srli  t2, t1, 4\n"
		     "add   t1, t1, t2\n"
		     "and   t1, t1, %[c0f]\n"		/* counts in bytes             */
		     "mul   t1, t1, %[c01]\n"		/* byte sum lands in bits 63:56 */
		     "srli  t1, t1, 56\n"
		     "xor   t0, %[acc], %[k]\n"		/* xnor is not + xor here      */
		     "not   t0, t0\n"
		     "slli  t2, t0, 32\n"
		     "srli  t2, t2, 32\n"		/* zero-extend the low word    */
		     "srli  t3, t2, 1\n"		/* ...and popcount that        */
		     "and   t3, t3, %[c55]\n"
		     "sub   t2, t2, t3\n"
		     "srli  t3, t2, 2\n"
		     "and   t3, t3, %[c33]\n"
		     "and   t2, t2, %[c33]\n"
		     "add   t2, t2, t3\n"
		     "srli  t3, t2, 4\n"
		     "add   t2, t2, t3\n"
		     "and   t2, t2, %[c0f]\n"
		     "mul   t2, t2, %[c01]\n"
		     "srli  t2, t2, 56\n"
		     "add   %[acc], %[acc], t1\n"
		     "add   %[acc], %[acc], t2\n"
		     "addi  %[n], %[n], -1\n"
		     "bnez  %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     : [k] "r"(k), [c55] "r"(c55), [c33] "r"(c33),
		       [c0f] "r"(c0f), [c01] "r"(c01)
		     : "t0", "t1", "t2", "t3", "memory");
	return acc;
}

/* SHA-512 Sigma0 = ror(x,28) ^ ror(x,34) ^ ror(x,39) and SHA-256 Sigma0 =
 * ror(x,2) ^ ror(x,13) ^ ror(x,22) on the low word -- six rotation amounts a real hash
 * uses, and the only way to reach the immediate forms. 13 instructions. */
static uint64_t
kern_sha_ext(uint64_t acc, uint64_t k, uint64_t n)
{
	(void)k;

	asm volatile(".option push\n.option norvc\n" ZBB
		     "1:\n"
		     "rori  t0, %[acc], 28\n"		/* SHA-512 Sigma0              */
		     "rori  t1, %[acc], 34\n"
		     "rori  t2, %[acc], 39\n"
		     "xor   t0, t0, t1\n"
		     "xor   t0, t0, t2\n"
		     "roriw t1, %[acc], 2\n"		/* SHA-256 Sigma0, low word    */
		     "roriw t2, %[acc], 13\n"
		     "roriw t3, %[acc], 22\n"
		     "xor   t1, t1, t2\n"
		     "xor   t1, t1, t3\n"
		     "xor   %[acc], t0, t1\n"		/* fold both into the chain    */
		     "addi  %[n], %[n], -1\n"
		     "bnez  %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     :
		     : "t0", "t1", "t2", "t3", "memory");
	return acc;
}

/* The twin spells each rotate out as srli + slli + or, the sequence the spec says rori
 * replaces. The word-width ones use srliw/slliw and need no zero-extension before or
 * sign-extension after: with shamt >= 1 srliw shifts a zero into bit 31, clearing 63:32,
 * while slliw sign-extends bit 31 of its own result -- which is exactly bit 31 of the
 * rotate, since the srliw half is zero there. 25 instructions. */
static uint64_t
kern_sha_base(uint64_t acc, uint64_t k, uint64_t n)
{
	(void)k;

	asm volatile(".option push\n.option norvc\n"
		     "1:\n"
		     "srli  t0, %[acc], 28\n"		/* ror 28 = srli | slli        */
		     "slli  t1, %[acc], 36\n"
		     "or    t0, t0, t1\n"
		     "srli  t1, %[acc], 34\n"		/* ror 34                      */
		     "slli  t2, %[acc], 30\n"
		     "or    t1, t1, t2\n"
		     "srli  t2, %[acc], 39\n"		/* ror 39                      */
		     "slli  t3, %[acc], 25\n"
		     "or    t2, t2, t3\n"
		     "xor   t0, t0, t1\n"
		     "xor   t0, t0, t2\n"		/* Sigma0, 64-bit              */
		     "srliw t2, %[acc], 2\n"		/* rorw 2: the w forms carry   */
		     "slliw t3, %[acc], 30\n"		/* the width and the sign      */
		     "or    t2, t2, t3\n"
		     "srliw t3, %[acc], 13\n"		/* rorw 13                     */
		     "slliw t4, %[acc], 19\n"
		     "or    t3, t3, t4\n"
		     "srliw t4, %[acc], 22\n"		/* rorw 22                     */
		     "slliw t5, %[acc], 10\n"
		     "or    t4, t4, t5\n"
		     "xor   t2, t2, t3\n"
		     "xor   t2, t2, t4\n"		/* Sigma0, low word            */
		     "xor   %[acc], t0, t2\n"
		     "addi  %[n], %[n], -1\n"
		     "bnez  %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     :
		     : "t0", "t1", "t2", "t3", "t4", "t5", "memory");
	return acc;
}

/* RC5 has two half-rounds per round, A = rol(A ^ B, B) + S and B = rol(B ^ A, A) + S.
 * This is the second, with acc as A and k standing in for both B and the round key: the
 * amount is the other half of the block, i.e. data, which is what the register forms are
 * for and what a fixed-amount hash cannot reach. It has to be the second, because the
 * first rotates by B -- here k, so the twin's setup would hoist out of the loop.
 *
 * Only the first rotate is RC5. The three after it repeat its shape, rotating by a value
 * produced in the same iteration, in the other direction and at word width, so all four
 * register forms are covered and all four stay on the dependency chain; every one of the
 * 64 amounts and all 32 w-form amounts occurs over 1024 iterations. ror cannot be RC5's
 * real inverse round here: ror(rol(B ^ A, A), A) ^ A is B, which is k, so a true
 * encrypt-then-decrypt pair would collapse to a constant. 11 instructions. */
static uint64_t
kern_rc5_ext(uint64_t acc, uint64_t k, uint64_t n)
{
	asm volatile(".option push\n.option norvc\n" ZBB
		     "1:\n"
		     "xor   t0, %[acc], %[k]\n"		/* B ^ A                       */
		     "rol   t1, t0, %[acc]\n"		/* <<< A: the amount is data   */
		     "add   t1, t1, %[k]\n"		/* + S, giving the new B       */
		     "rolw  t3, t0, t1\n"		/* same shape, by the new B    */
		     "ror   t2, t1, t3\n"		/* inverse direction, by data  */
		     "rorw  t4, t2, t3\n"
		     "xor   t1, t1, t2\n"
		     "xor   t3, t3, t4\n"
		     "xor   %[acc], t1, t3\n"
		     "addi  %[n], %[n], -1\n"
		     "bnez  %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     : [k] "r"(k)
		     : "t0", "t1", "t2", "t3", "t4", "memory");
	return acc;
}

/* The twin is the spec's own four-instruction sequence, neg; sll; srl; or, four times
 * over -- correct at a zero amount without a branch, since -0 is 0 and the shifts take
 * rs2[5:0], so both shift by zero and the or returns the input. The w forms use
 * sllw/srlw, which take rs2[4:0] and sign-extend their own 32-bit result, so they need
 * no zero-extension before and none after: four instructions, not ten. The last two
 * rotates share an amount, so -t3 is computed once. 22 instructions. */
static uint64_t
kern_rc5_base(uint64_t acc, uint64_t k, uint64_t n)
{
	asm volatile(".option push\n.option norvc\n"
		     "1:\n"
		     "xor   t0, %[acc], %[k]\n"
		     "neg   t5, %[acc]\n"		/* rol(t0, acc) -> t1          */
		     "sll   t1, t0, %[acc]\n"
		     "srl   t6, t0, t5\n"		/* shift by -acc, i.e. 64 - acc */
		     "or    t1, t1, t6\n"
		     "add   t1, t1, %[k]\n"		/* + round key                 */
		     "neg   t5, t1\n"			/* rolw(t0, t1) -> t3          */
		     "sllw  t3, t0, t1\n"
		     "srlw  t6, t0, t5\n"
		     "or    t3, t3, t6\n"
		     "neg   t5, t3\n"			/* ror(t1, t3) -> t2           */
		     "srl   t2, t1, t3\n"
		     "sll   t6, t1, t5\n"
		     "or    t2, t2, t6\n"
		     "srlw  t4, t2, t3\n"		/* rorw(t2, t3) -> t4; t5 still */
		     "sllw  t6, t2, t5\n"		/* holds -t3 from the line above */
		     "or    t4, t4, t6\n"
		     "xor   t1, t1, t2\n"
		     "xor   t3, t3, t4\n"
		     "xor   %[acc], t1, t3\n"
		     "addi  %[n], %[n], -1\n"
		     "bnez  %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     : [k] "r"(k)
		     : "t0", "t1", "t2", "t3", "t4", "t5", "t6", "memory");
	return acc;
}

/* Byte scan, the inner step of strlen: orc.b marks every non-zero byte, so the
 * complement has all ones in the zero-byte lanes and ctz >> 3 is the index of the first
 * zero byte. rev8 gives the big-endian view of the same word, which is what it is for.
 * 7 instructions. */
static uint64_t
kern_bscan_ext(uint64_t acc, uint64_t k, uint64_t n)
{
	(void)k;

	asm volatile(".option push\n.option norvc\n" ZBB
		     "1:\n"
		     "orc.b t0, %[acc]\n"		/* all ones per non-zero byte  */
		     "not   t0, t0\n"			/* ...so ones mark zero bytes  */
		     "ctz   t1, t0\n"			/* >> 3 is the first zero byte */
		     "rev8  t2, %[acc]\n"		/* byte-swap the whole word    */
		     "add   %[acc], t2, t1\n"
		     "addi  %[n], %[n], -1\n"
		     "bnez  %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     :
		     : "t0", "t1", "t2", "memory");
	return acc;
}

/* The twin needs all three in software: the SWAR zero-byte test, a popcount to turn the
 * isolated low bit into an index, and the usual three-stage swap. 39 instructions, the
 * widest gap of the five -- this is the case orc.b was added for. */
static uint64_t
kern_bscan_base(uint64_t acc, uint64_t k, uint64_t n)
{
	/* Three SWAR idioms here, all faking per-byte lanes with masks because there is
	 * no vector unit. orc.b: adding 0x7F to a byte's low seven bits carries into
	 * bit 7 if any of them is set, so c80 then holds one flag per non-zero byte.
	 * ctz: the popcount masks are the same tree as in kern_popcnt_base, counting the
	 * bits below the isolated low bit. rev8: each mask selects every other field of
	 * one width, so a shift lines up the pair to be swapped. */
	uint64_t c7f = 0x7F7F7F7F7F7F7F7FULL;	/* low 7 bits of each byte    */
	uint64_t c80 = 0x8080808080808080ULL;	/* bit 7 of each byte         */
	uint64_t c55 = 0x5555555555555555ULL;	/* low bit of each pair       */
	uint64_t c33 = 0x3333333333333333ULL;	/* low half of each nibble    */
	uint64_t c0f = 0x0F0F0F0F0F0F0F0FULL;	/* low half of each byte      */
	uint64_t c01 = 0x0101010101010101ULL;	/* one per byte, for the sum  */
	uint64_t cff = 0x00FF00FF00FF00FFULL;	/* every other byte           */
	uint64_t cffff = 0x0000FFFF0000FFFFULL;	/* every other halfword       */

	(void)k;

	asm volatile(".option push\n.option norvc\n"
		     "1:\n"
		     "and   t0, %[acc], %[c7f]\n"	/* orc.b: carry any set bit in */
		     "add   t0, t0, %[c7f]\n"		/* bits 6:0 up into bit 7      */
		     "or    t0, t0, %[acc]\n"		/* fold the original bit 7 in  */
		     "and   t0, t0, %[c80]\n"		/* one flag bit per byte       */
		     "srli  t1, t0, 7\n"
		     "sub   t1, t0, t1\n"		/* 0x80 -> 0x7F per set lane   */
		     "or    t0, t0, t1\n"		/* 0x80 | 0x7F = 0xFF          */
		     "not   t0, t0\n"
		     "neg   t1, t0\n"			/* ctz: isolate the lowest set */
		     "and   t1, t1, t0\n"		/* bit, x & -x                 */
		     "addi  t1, t1, -1\n"		/* fill the bits below it...   */
		     "srli  t2, t1, 1\n"		/* ...and count them           */
		     "and   t2, t2, %[c55]\n"
		     "sub   t1, t1, t2\n"
		     "srli  t2, t1, 2\n"
		     "and   t2, t2, %[c33]\n"
		     "and   t1, t1, %[c33]\n"
		     "add   t1, t1, t2\n"
		     "srli  t2, t1, 4\n"
		     "add   t1, t1, t2\n"
		     "and   t1, t1, %[c0f]\n"
		     "mul   t1, t1, %[c01]\n"
		     "srli  t1, t1, 56\n"
		     "srli  t3, %[acc], 8\n"		/* rev8, the usual three-stage */
		     "and   t3, t3, %[cff]\n"		/* swap: bytes within each     */
		     "and   t2, %[acc], %[cff]\n"	/* 16-bit group...             */
		     "slli  t2, t2, 8\n"
		     "or    t2, t2, t3\n"
		     "srli  t3, t2, 16\n"		/* ...then halves within each  */
		     "and   t3, t3, %[cffff]\n"		/* 32-bit group...             */
		     "and   t2, t2, %[cffff]\n"
		     "slli  t2, t2, 16\n"
		     "or    t2, t2, t3\n"
		     "srli  t3, t2, 32\n"		/* ...then the two halves      */
		     "slli  t2, t2, 32\n"
		     "or    t2, t2, t3\n"
		     "add   %[acc], t2, t1\n"
		     "addi  %[n], %[n], -1\n"
		     "bnez  %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     : [c7f] "r"(c7f), [c80] "r"(c80), [c55] "r"(c55),
		       [c33] "r"(c33), [c0f] "r"(c0f), [c01] "r"(c01),
		       [cff] "r"(cff), [cffff] "r"(cffff)
		     : "t0", "t1", "t2", "t3", "memory");
	return acc;
}

/* Packed sample decode: pull three lanes out of the word with the sext/zext forms, mix
 * the two signed channels and saturate the sum into a 12-bit output rangethen clamp the
 * unsigned lane into its valid window with the unsigned pair, and clear the bits it
 * selects with andn.
 */
static uint64_t
kern_pack_ext(uint64_t acc, uint64_t k, uint64_t n)
{
	uint64_t smin = (uint64_t)(int64_t)-2048;	/* output floor; k is the ceiling */
	uint64_t ulo = 0x4000ULL;			/* reading window, low            */
	uint64_t uhi = 0xC000ULL;			/* reading window, high           */
 
	asm volatile(".option push\n.option norvc\n" ZBB
		     "1:\n"
		     "sext.b t0, %[acc]\n"		/* decode: the s8 lane         */
		     "srli   t1, %[acc], 16\n"
		     "sext.h t1, t1\n"			/* decode: the s16 lane        */
		     "add    t0, t0, t1\n"		/* mix the two channels...     */
		     "max    t0, t0, %[smin]\n"		/* ...and saturate both ends,  */
		     "min    t0, t0, %[k]\n"		/* i.e. a saturating add       */
		     "srli   t2, %[acc], 32\n"
		     "zext.h t2, t2\n"			/* decode: the u16 lane        */
		     "maxu   t2, t2, %[ulo]\n"		/* clamp it into its window    */
		     "minu   t2, t2, %[uhi]\n"
		     "andn   t0, t0, t2\n"		/* clear the bits it selects   */
		     "add    %[acc], %[acc], t0\n"
		     "add    %[acc], %[acc], t2\n"
		     "addi   %[n], %[n], -1\n"
		     "bnez   %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     : [k] "r"(k), [smin] "r"(smin), [ulo] "r"(ulo), [uhi] "r"(uhi)
		     : "t0", "t1", "t2", "memory");
	return acc;
}
 
/* The twin is the slli + srai and slli + srli pairs the spec names, a compare and a
 * conditional move per clamp, and not + and for andn. 19 instructions plus one move per
 * clamp that fires: 19..23, 20.4 on average. */
static uint64_t
kern_pack_base(uint64_t acc, uint64_t k, uint64_t n)
{
	uint64_t smin = (uint64_t)(int64_t)-2048;
	uint64_t ulo = 0x4000ULL;
	uint64_t uhi = 0xC000ULL;
 
	asm volatile(".option push\n.option norvc\n"
		     "1:\n"
		     "slli  t0, %[acc], 56\n"		/* sext.b = slli + srai        */
		     "srai  t0, t0, 56\n"
		     "srli  t1, %[acc], 16\n"
		     "slli  t1, t1, 48\n"		/* sext.h = slli + srai        */
		     "srai  t1, t1, 48\n"
		     "add   t0, t0, t1\n"
		     "bge   t0, %[smin], 2f\n"		/* max: keep t0 if it is >=    */
		     "mv    t0, %[smin]\n"
		     "2:\n"
		     "blt   t0, %[k], 3f\n"		/* min: keep t0 if it is <     */
		     "mv    t0, %[k]\n"
		     "3:\n"
		     "srli  t2, %[acc], 32\n"
		     "slli  t2, t2, 48\n"		/* zext.h = slli + srli        */
		     "srli  t2, t2, 48\n"
		     "bgeu  t2, %[ulo], 4f\n"		/* maxu                        */
		     "mv    t2, %[ulo]\n"
		     "4:\n"
		     "bltu  t2, %[uhi], 5f\n"		/* minu                        */
		     "mv    t2, %[uhi]\n"
		     "5:\n"
		     "not   t3, t2\n"			/* andn = not + and            */
		     "and   t0, t0, t3\n"
		     "add   %[acc], %[acc], t0\n"
		     "add   %[acc], %[acc], t2\n"
		     "addi  %[n], %[n], -1\n"
		     "bnez  %[n], 1b\n"
		     ".option pop\n"
		     : [acc] "+r"(acc), [n] "+r"(n)
		     : [k] "r"(k), [smin] "r"(smin), [ulo] "r"(ulo), [uhi] "r"(uhi)
		     : "t0", "t1", "t2", "t3", "memory");
	return acc;
}


static int
zbb(unsigned flags)
{
	const char *name = "Zbb (basic bit-manipulation)";
	struct hart_state *hs = hart_get_hstate_self();
	size_t present = 0;

	/* Run each op once under HS_FLAG_PROBING, so an absent instruction is stepped
	 * over (hs->error) instead of trapping for real. Value-independent. */
	for (size_t i = 0; i < ARRAY_SIZE(zbb_units); i++) {
		hs->error = 0;
		hart_set_flags(hs, HS_FLAG_PROBING);
		(void)zbb_units[i].fn(rand64(), rand64());
		hart_clear_flags(hs, HS_FLAG_PROBING);
		present += (hs->error == 0);
	}
	if (present == 0)
		return PROBE_ABSENT;
	if (present < ARRAY_SIZE(zbb_units))
		return PROBE_FAILED;		/* partial: fuzz/bench would trap for real */

	/* Pure probe: report what we support (the benchmark needs mcountinhibit). */
	if (!(flags & (PROBE_FUZZ | PROBE_BENCH)))
		return PROBE_FUZZ | (bench_available() ? PROBE_BENCH : 0);

	if (flags & PROBE_FUZZ) {
		uint64_t rounds = 0;
		int mism = 0;

		INF("Fuzzing %s (differential vs base-ISA), press 'q' to stop...\n", name);

		/* clz/ctz and their w forms have defined results at zero that rand64()
		 * will not reach in any realistic number of rounds, so check it once
		 * rather than never. */
		for (size_t i = 0; i < ARRAY_SIZE(zbb_units); i++)
			if (!zbb_units[i].fn(0, 0) && ++mism <= 8)
				INF("  MISMATCH on zero: %s\n", zbb_units[i].name);

		while (1) {
			uint64_t a = rand64(), b = rand64();

			for (size_t i = 0; i < ARRAY_SIZE(zbb_units); i++)
				if (!zbb_units[i].fn(a, b) && ++mism <= 8)
					INF("  MISMATCH: %s (a=%#lx b=%#lx)\n",
					    zbb_units[i].name, a, b);
			if ((++rounds & 0xFFFFu) == 0) {
				int c = uart_getc();	/* non-blocking */
				if (c == 'q' || c == 'Q')
					break;
			}
		}
		INF("Fuzz done: %lu rounds, %d mismatches\n", rounds, mism);
		return mism ? PROBE_FAILED : 0;
	}

	if (!bench_available()) {
		INF("Zbb benchmark needs mcountinhibit -- unavailable.\n");
		return 0;
	}
	bench_pair("Hamming distance (cpop)", kern_popcnt_ext, kern_popcnt_base,
		   0x9E3779B97F4A7C15ULL, flags & PROBE_COMPACT);
	bench_pair("SHA Sigma0 (rori+roriw)", kern_sha_ext, kern_sha_base,
		   0, flags & PROBE_COMPACT);
	bench_pair("data-dependent rotation (rol/ror)", kern_rc5_ext, kern_rc5_base,
		   0x9E3779B9ULL, flags & PROBE_COMPACT);
	bench_pair("byte scan (orc.b+ctz)", kern_bscan_ext, kern_bscan_base,
		   0, flags & PROBE_COMPACT);
	bench_pair("packed decode+clamp (sext/min/max)", kern_pack_ext, kern_pack_base,
		   2047, flags & PROBE_COMPACT);
	return 0;
}
REGISTER_HART_UNPRIV("Zbb (basic bit-manipulation)", zbb);