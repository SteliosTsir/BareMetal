/*
 * SPDX-License-Identifier: Apache-2.0
 * 
 * BareMetal Litmus Test Framework
 */

#ifndef _LITMUS_FRAMEWORK_H
#define _LITMUS_FRAMEWORK_H

#include <platform/utils/utils.h>
#include <platform/riscv/csr.h>
#include <platform/interfaces/ipi.h>
#include <test_framework.h>


#define DEFINE_LITMUS_STATE() \
    static volatile uint32_t x = 0; \
    static volatile uint32_t y = 0; \
    static volatile uint32_t test_go = 0; \
    static volatile uint32_t core1_ready = 0; \
    static volatile uint32_t core0_res = 0; \
    static volatile uint32_t core1_res = 0;


#define LITMUS_CORE1_WAIT() \
    core1_ready = 1; \
    while (test_go == 0) { /* Busy wait until Core 0 says GO */ }

    
#define LITMUS_CORE0_START(core1_func) \
    x = 0; y = 0; test_go = 0; core1_ready = 0; \
    struct hart_state* hs1 = hart_get_hstate_by_idx(1); \
    hs1->next_addr = (uintptr_t)(core1_func); \
    ipi_send(hs1, IPI_WAKEUP_WITH_ADDR); \
    while (core1_ready == 0) { /* Wait for Core 1 to wake up */ } \
    test_go = 1; /* 3... 2... 1... GO! */

#endif /* _LITMUS_FRAMEWORK_H */