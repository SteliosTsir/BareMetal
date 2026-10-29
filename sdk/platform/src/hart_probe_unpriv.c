/*
 * SPDX-FileType: SOURCE
 *
 * SPDX-FileCopyrightText: 2026 ICS/FORTH
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <platform/riscv/caps.h>	/* For CAP_* macros and struct rvcaps */
#include <platform/riscv/hart.h>	/* For hart_state and the flag helpers */
#include <stdbool.h>			/* For bool */
#include <stdint.h>			/* For typed ints */

/*
 * Probing for extensions that have no CSR to look at: run their instructions
 * and see what happens. While HS_FLAG_PROBING_UNPRIV is set, the trap handler
 * in hart.c turns an illegal instruction into hs->error = ENOSYS and resumes
 * at the next one, instead of reporting it and hanging.
 *
 * Every block goes between hart_probe_insn_begin() and hart_probe_insn_end(),
 * and must be assembled with ".option norvc": the handler resumes at mepc + 4,
 * so a compressed instruction would leave us in the middle of the next one.
 */

static inline void
hart_probe_insn_begin(struct hart_state *hs)
{
	hs->error = 0;
	hart_set_flags(hs, HS_FLAG_PROBING_UNPRIV);
	__asm__ volatile ("" ::: "memory");
}

/* True if every instruction in the block executed */
static inline bool
hart_probe_insn_end(struct hart_state *hs)
{
	__asm__ volatile ("" ::: "memory");
	hart_clear_flags(hs, HS_FLAG_PROBING_UNPRIV);
	bool ok = (hs->error == 0);
	hs->error = 0;
	return ok;
}


/**************\
* Entry points *
\**************/

void
hart_probe_unpriv_caps(struct rvcaps *caps)
{
	/* Same trick as hart_probe_priv_caps(): hand the probes their rvcaps
	 * through hs, so they only need hs as an argument. caps shares a union
	 * with early_caps, so keep a copy of it and put it back when we're done.
	 * Unlike the privileged side we don't clear caps here: that ran first
	 * and already filled it in. */
	struct hart_state *hs = hart_get_hstate_self();
	uint64_t saved_early_caps = hs->early_caps;

	hs->caps = caps;

	/* Probes go here */

	hs->early_caps = saved_early_caps;
}