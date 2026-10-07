/*
 * SPDX-FileType: SOURCE
 *
 * SPDX-FileCopyrightText: 2025-2026 Nick Kossifidis <mick@ics.forth.gr>
 * SPDX-FileCopyrightText: 2025-2026 ICS/FORTH
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef _ATTRIBUTE_MACROS_H
#define _ATTRIBUTE_MACROS_H

#include <target_config.h>	/* For PLAT_HART_VECTORED_TRAPS */

/*
 * Pseudo-keywords for readability when declaring trap handlers.
 *
 * In case of vectored traps, each trap handler is standalone and should contain
 * the whole intro/exit +mret sequence required. All stub handlers are declared
 * as aliases of the default trap handler for clarity. In case a single handler is
 * used for all traps, trap handlers are declared as static inline so that they
 * become part of the direct trap handler. Weak handlers are functions called by
 * trap handlers that applications can override. Since trap handlers are not
 * called from other functions, we need to declare them as used otherwise LTO
 * and / or --gc-sections may throw them away.
 */
#define __weak_handler	__attribute__((weak))
#if (PLAT_HART_VECTORED_TRAPS == 1)
	#define __trap_handler __attribute__((used, interrupt("machine"), optimize("align-functions=8"), section(".text.trap_handlers"))) // removed static for modbus
#else
	#define __trap_handler	static inline
	#define __direct_trap_handler __attribute__((used, interrupt("machine"), optimize("align-functions=8"))) // removed static for modbus
#endif
#define __empty_trap_handler	__trap_handler __attribute__((alias("hart_default_trap_handler")))

#endif /* _ATTRIBUTE_MACROS_H */
