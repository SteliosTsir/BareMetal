/*
 * B-Profile (Bit Manipulation) Performance Benchmark
 */

#include <platform/utils/utils.h>
#include <platform/riscv/csr.h>
#include <test_framework.h>
#include <stdint.h>
#include "../include/z_extensions.h"

extern int check_zba_extension(void);
extern int check_zbb_extension(void);
extern int check_zbc_extension(void);
extern int check_zbs_extension(void);


/*
 * Read cycles
 */
static inline uint64_t get_cycles(void) {
    uint64_t cycles;
    __asm__ volatile ("rdcycle %0" : "=r" (cycles));
    return cycles;
}

static int test_b_profile_perf(void) {
    ANN("\n---=== B-Profile Performance Benchmark ===---\n");
    
    uint64_t start, end, cycles_sw, cycles_hw;
    volatile uint32_t result = 0; 
    
    if (check_zba_extension()) {
        INF("\n[1] Benchmarking Zba (Address Generation)...\n");
        volatile uint32_t base_address = 100;
        
        start = get_cycles();
        for (int i = 0; i < 100000; i++) {
            result = (i << 3) + base_address; /* SW: Shift & Add */
        }
        end = get_cycles();
        cycles_sw = end - start;
        
        start = get_cycles();
        for (int i = 0; i < 100000; i++) {
            register uint32_t a5 asm("a5") = i;
            register uint32_t a4 asm("a4") = base_address;
            __asm__ volatile (".word 0x20E7A7B3\n" : "=r" (a5) : "r" (a5), "r" (a4)); /* HW: sh3add */
            result = a5;
        }
        end = get_cycles();
        cycles_hw = end - start;
        INF("  -> SW: %llu cycles | HW: %llu cycles (Saved: %lld)\n", cycles_sw, cycles_hw, (int64_t)(cycles_sw - cycles_hw));
    } else {
        WRN("\n[1] Skipping Zba benchmark (Not supported)\n");
    }

    /* ==========================================================
     * 2. Zbb: Basic Bit Manipulation (cpop - Count Population)
     * ========================================================== */
    if (check_zbb_extension()) {
        INF("\n[2] Benchmarking Zbb (Population Count)...\n");
        volatile uint32_t test_val = 0b10101010101010101010101010101010;
        
        start = get_cycles();
        for (int i = 0; i < 100000; i++) {
            uint32_t n = test_val;
            uint32_t count = 0;
            while (n) { count += n & 1; n >>= 1; }
            result = count;
        }
        end = get_cycles();
        cycles_sw = end - start;
        
        start = get_cycles();
        for (int i = 0; i < 100000; i++) {
            register uint32_t a5 asm("a5") = test_val;
            __asm__ volatile (".word 0x602797B3\n" : "=r" (a5) : "r" (a5)); /* HW: cpop */
            result = a5;
        }
        end = get_cycles();
        cycles_hw = end - start;
        INF("  -> SW: %llu cycles | HW: %llu cycles (Saved: %lld)\n", cycles_sw, cycles_hw, (int64_t)(cycles_sw - cycles_hw));
    } else {
        WRN("\n[2] Skipping Zbb benchmark (Not supported)\n");
    }

    /* ==========================================================
     * 3. Zbc: Carry-less Multiplication (clmul)
     * ========================================================== */
    if (check_zbc_extension()) {
        INF("\n[3] Benchmarking Zbc (Carry-less Multiplication)...\n");
        volatile uint32_t val1 = 0x12345678, val2 = 0x9ABCDEF0;
        
        start = get_cycles();
        for (int i = 0; i < 100000; i++) {
            uint32_t res = 0;
            for(int j = 0; j < 32; j++) { 
                if ((val2 >> j) & 1) res ^= (val1 << j);
            }
            result = res;
        }
        end = get_cycles();
        cycles_sw = end - start;
        
        start = get_cycles();
        for (int i = 0; i < 100000; i++) {
            register uint32_t a5 asm("a5") = val1;
            register uint32_t a4 asm("a4") = val2;
            __asm__ volatile (".word 0x0AE797B3\n" : "=r" (a5) : "r" (a5), "r" (a4)); /* HW: clmul */
            result = a5;
        }
        end = get_cycles();
        cycles_hw = end - start;
        INF("  -> SW: %llu cycles | HW: %llu cycles (Saved: %lld)\n", cycles_sw, cycles_hw, (int64_t)(cycles_sw - cycles_hw));
    } else {
        WRN("\n[3] Skipping Zbc benchmark (Not supported)\n");
    }

    /* ==========================================================
     * 4. Zbs: Single-bit Operations (bset - Bit Set)
     * ========================================================== */
    if (check_zbs_extension()) {
        INF("\n[4] Benchmarking Zbs (Single-bit Set)...\n");
        volatile uint32_t val = 0x00000000;
        volatile uint32_t bit_pos = 15;
        
        start = get_cycles();
        for (int i = 0; i < 100000; i++) {
            result = val | (1 << bit_pos); 
        }
        end = get_cycles();
        cycles_sw = end - start;
        
        start = get_cycles();
        for (int i = 0; i < 100000; i++) {
            register uint32_t a5 asm("a5") = val;
            register uint32_t a4 asm("a4") = bit_pos;
            __asm__ volatile (".word 0x28E797B3\n" : "=r" (a5) : "r" (a5), "r" (a4)); /* HW: bset */
            result = a5;
        }
        end = get_cycles();
        cycles_hw = end - start;
        INF("  -> SW: %llu cycles | HW: %llu cycles (Saved: %lld)\n", cycles_sw, cycles_hw, (int64_t)(cycles_sw - cycles_hw));
    } else {
        WRN("\n[4] Skipping Zbs benchmark (Not supported)\n");
    }

    if(check_zba_extension() && check_zbb_extension() && check_zbc_extension() && check_zbs_extension()){
        INF("All test completed\n");
    } else if (!(check_zba_extension() || check_zbb_extension() || check_zbc_extension() || check_zbs_extension())){
        return 1;
    }

    return 0;
}

REGISTER_PLATFORM_TEST("B-Profile (Bitmanip) Performance Test", test_b_profile_perf);