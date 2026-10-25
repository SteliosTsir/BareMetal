/*
 * SPDX-FileType: SOURCE
 *
 * SPDX-FileCopyrightText: 2026 Nick Kossifidis <mick@ics.forth.gr>
 * SPDX-FileCopyrightText: 2026 ICS/FORTH
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef _CACHE_H
#define _CACHE_H

#include <target_config.h>	/* For PLAT_QUIRK_* / PLAT_SYSRAM_BASE */
#include <stddef.h>		/* For size_t */

/*
 * DMA cache maintenance for non-coherent platforms.
 *
 * A bus-master device (e.g. an Ethernet DMA engine) and the CPU D-cache are
 * only coherent on some platforms. Where they are not, software must push
 * dirty cache lines out before the device reads them, and drop stale cache
 * lines before reading what the device wrote. Two operations cover every
 * hand-off:
 *
 *   dma_cache_flush(addr, size)
 *       Write back (clean) + invalidate. Call just before handing a buffer or
 *       descriptor TO the device (outbound TX data, and when (re)posting an RX
 *       buffer): our writes reach memory, and no stale dirty line can later be
 *       evicted on top of what the device DMAs in.
 *
 *   dma_cache_inval(addr, size)
 *       Invalidate only. Call after the device wrote memory, before the CPU
 *       reads it (inbound RX data, and polling a descriptor the device owns):
 *       the next read misses to memory instead of returning a stale copy.
 *
 * On coherent platforms both are no-ops. A non-coherent platform selects an
 * implementation in target_config.h with exactly one quirk:
 *
 *   PLAT_QUIRK_THEAD_CMO   T-Head C9xx custom cache ops (no ratified Zicbom).
 *   PLAT_QUIRK_ZICBOM_CMO  Standard RISC-V Zicbom (cbo.flush / cbo.inval).
 *
 * These only ever touch DMA buffers, which by design live in the DRAM / system
 * RAM window, so a platform that enables them must declare that window via
 * PLAT_SYSRAM_BASE (callers prove their buffers fall inside it). Addresses need
 * not be cache-line aligned; the range is rounded out to whole lines, so pad
 * DMA buffers to PLAT_CACHE_LINE_SIZE to avoid sharing a line with other data.
 */

#if defined(PLAT_QUIRK_THEAD_CMO) || defined(PLAT_QUIRK_ZICBOM_CMO)

#if defined(PLAT_QUIRK_THEAD_CMO) && defined(PLAT_QUIRK_ZICBOM_CMO)
#error "Define at most one DMA CMO quirk (THEAD_CMO or ZICBOM_CMO)"
#endif

#if !defined(PLAT_SYSRAM_BASE)
#error "DMA cache ops need PLAT_SYSRAM_BASE: the DMA-capable DRAM window"
#endif

/* Cache line / CMO block size. 64 bytes on every RISC-V core we target;
 * override in target_config.h if a platform differs. */
#ifndef PLAT_CACHE_LINE_SIZE
#define PLAT_CACHE_LINE_SIZE	64
#endif
#define _CACHE_LINE_MASK	(PLAT_CACHE_LINE_SIZE - 1)

#endif /* any CMO */


#if defined(PLAT_QUIRK_THEAD_CMO)

/*
 * T-Head C9xx custom cache ops, physical-address variants (our images run with
 * the MMU off, so VA == PA). Encodings taken verbatim from the verified
 * Sophgo/CVITek C906 u-boot cache code; they hardcode rs1 = a0, so the address
 * must sit in a0 when the instruction retires:
 *
 *   dcache.ipa  a0  .long 0x02a5000b  (invalidate)
 *   dcache.cipa a0  .long 0x02b5000b  (clean + invalidate)
 *   sync.s          .long 0x0190000b  (ordering barrier after the range)
 *
 * The T-Head extended ISA (mxstatus.THEADISAEE) is left enabled by the boot
 * ROM / FSBL, which is why the vendor code uses these unconditionally.
 */
#define _CMO_INVAL	".long 0x02a5000b"
#define _CMO_FLUSH	".long 0x02b5000b"
#define _CMO_BARRIER	".long 0x0190000b"

#define _CMO_RANGE(_op, _addr, _size)					\
do {									\
	register unsigned long _i __asm__("a0") =			\
		(unsigned long)(_addr) & ~_CACHE_LINE_MASK;		\
	unsigned long _end = ((unsigned long)(_addr) + (_size) +	\
			      _CACHE_LINE_MASK) & ~_CACHE_LINE_MASK;	\
	for (; _i < _end; _i += PLAT_CACHE_LINE_SIZE)			\
		__asm__ __volatile__(_op : : "r"(_i) : "memory");	\
	__asm__ __volatile__(_CMO_BARRIER : : : "memory");		\
} while (0)

#elif defined(PLAT_QUIRK_ZICBOM_CMO)

/*
 * Standard RISC-V Zicbom. We enable the extension for the assembler locally so
 * the driver builds regardless of -march (needs binutils >= 2.38). cbo.flush is
 * clean+invalidate, cbo.inval is invalidate; both act on the block holding the
 * address in rs1. A plain fence orders the range against the following DMA.
 */
#define _CMO_INVAL	"cbo.inval"
#define _CMO_FLUSH	"cbo.flush"

#define _CMO_RANGE(_op, _addr, _size)					\
do {									\
	unsigned long _i = (unsigned long)(_addr) & ~_CACHE_LINE_MASK;	\
	unsigned long _end = ((unsigned long)(_addr) + (_size) +	\
			      _CACHE_LINE_MASK) & ~_CACHE_LINE_MASK;	\
	for (; _i < _end; _i += PLAT_CACHE_LINE_SIZE)			\
		__asm__ __volatile__(".option push\n"			\
				     ".option arch, +zicbom\n"		\
				     _op " (%0)\n"			\
				     ".option pop\n"			\
				     : : "r"(_i) : "memory");		\
	__asm__ __volatile__("fence rw, rw" : : : "memory");		\
} while (0)

#endif /* quirk select */


#if defined(PLAT_QUIRK_THEAD_CMO) || defined(PLAT_QUIRK_ZICBOM_CMO)

static inline void
dma_cache_flush(const void *addr, size_t size)
{
	_CMO_RANGE(_CMO_FLUSH, addr, size);
}

static inline void
dma_cache_inval(const void *addr, size_t size)
{
	_CMO_RANGE(_CMO_INVAL, addr, size);
}

#else /* coherent: nothing to do */

static inline void
dma_cache_flush(const void *addr, size_t size)
{
	(void)addr;
	(void)size;
}

static inline void
dma_cache_inval(const void *addr, size_t size)
{
	(void)addr;
	(void)size;
}

#endif

#endif /* _CACHE_H */
