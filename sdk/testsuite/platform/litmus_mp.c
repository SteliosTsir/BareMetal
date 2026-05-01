/*
 * Message Passing (MP) Litmus Test
 */
#include "../include/litmus_framework.h"

DEFINE_LITMUS_STATE()

static void core1_receiver(void) {
    uint32_t r_y, r_x;
    
    LITMUS_CORE1_WAIT()

    /* lw x5,0(y) | lw x7,0(x) */
    __asm__ volatile (
        "lw %0, 0(%2)\n"
        "lw %1, 0(%3)\n"
        : "=r" (r_y), "=r" (r_x)
        : "r" (&y), "r" (&x)
        : "memory"
    );

    core1_res = r_y;
    core0_res = r_x;
    __asm__ volatile ("wfi");
}

static int test_litmus_mp(void) {
    ANN("\n---=== MP Litmus Test ===---\n");
    if (hart_get_count() < 2) return 1;

    LITMUS_CORE0_START(core1_receiver)
    
    uint32_t val = 1;

    /* sw x5,0(x) | sw x5,0(y) */
    __asm__ volatile (
        "sw %0, 0(%1)\n"
        "sw %0, 0(%2)\n"
        : 
        : "r" (val), "r" (&x), "r" (&y)
        : "memory"
    );

    for(volatile int i=0; i<1000; i++); 

    INF("Core 1 read: y = %u, x = %u\n", core1_res, core0_res);
    
    if (core1_res == 1 && core0_res == 0) {
        WRN("MEMORY REORDERING DETECTED! (Exists: 1:x5=1 /\\ 1:x7=0)\n");
    } else {
        INF("Result: Strict ordering maintained.\n");
    }

    return 0;
}

REGISTER_PLATFORM_TEST("Litmus Test: MP", test_litmus_mp);