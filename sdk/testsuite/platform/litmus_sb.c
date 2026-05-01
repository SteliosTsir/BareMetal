/*
 * Store Buffering (SB) Litmus Test
 */
#include "../include/litmus_framework.h"

DEFINE_LITMUS_STATE()

static void core1_receiver(void) {
    uint32_t r_x;
    uint32_t val = 1;
    
    LITMUS_CORE1_WAIT()

    /* sw x5,0(y) | lw x7,0(x) */
    __asm__ volatile (
        "sw %1, 0(%2)\n"
        "lw %0, 0(%3)\n"
        : "=&r" (r_x)
        : "r" (val), "r" (&y), "r" (&x)
        : "memory"
    );

    core1_res = r_x;
    __asm__ volatile ("wfi");
}

static int test_litmus_sb(void) {
    ANN("\n---=== SB Litmus Test ===---\n");
    if (hart_get_count() < 2) return 1;

    LITMUS_CORE0_START(core1_receiver)
    
    uint32_t r_y;
    uint32_t val = 1;

    /* sw x5,0(x) | lw x7,0(y) */
    __asm__ volatile (
        "sw %1, 0(%2)\n"
        "lw %0, 0(%3)\n"
        : "=&r" (r_y)
        : "r" (val), "r" (&x), "r" (&y)
        : "memory"
    );

    core0_res = r_y;

    for(volatile int i=0; i<1000; i++); 

    INF("Core 0 read: y = %u | Core 1 read: x = %u\n", core0_res, core1_res);
    
    if (core0_res == 0 && core1_res == 0) {
        WRN("MEMORY REORDERING DETECTED! (Exists: 0:x7=0 /\\ 1:x7=0)\n");
    } else {
        INF("Result: Strict ordering maintained.\n");
    }

    return 0;
}

REGISTER_PLATFORM_TEST("Litmus Test: SB", test_litmus_sb);