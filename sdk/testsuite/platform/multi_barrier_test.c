#include <platform/utils/multi_barrier.h>
#include <test_framework.h>		/* For test registration macros */
#include <platform/riscv/hart.h>
#include <platform/utils/utils.h>	/* For console output */

#define MAX_HARTS 4
#define TOTAL_ROUNDS 50

/* --- Shared Test State --- */
static multi_barrier_t barrier_sync;
static volatile uint32_t init_done = 0;
static volatile uint32_t hart_progress[MAX_HARTS];
static volatile uint32_t test_error = 0;
static volatile uint32_t terminate_flag = 0;
static volatile uint32_t completed_harts = 0;


void secondary_run_barrier_test(uint64_t arg0, uint64_t arg1) {
    uint32_t total_rounds = (uint32_t)arg0;
    uint32_t active_harts = (uint32_t)arg1;
    struct hart_state *hs = hart_get_hstate_self();
    uint32_t hart_id = hs->hart_idx;
    uint32_t l_sense = 0; /* Thread-local sense initialized to 0 */

    if (hart_id != 0) {
        DBG("[Hart %u] Waiting for init_done...\n", hart_id);
        while (init_done == 0) {
            __asm__ volatile ("" ::: "memory");
        }
        __asm__ volatile ("fence r, rw" ::: "memory");
        DBG("[Hart %u] Released from init spinlock\n", hart_id);
    } else {
        DBG("[Hart 0] Master initialized; releasing secondary harts\n");
    }

    uint32_t current_round = 0;

    while (1) {
        current_round++;

        /* Hart publishes its current round index */
        hart_progress[hart_id] = current_round;

        DBG("[Hart %u] R%u: Entering Barrier 1 (Publish), sense=%u\n", hart_id, current_round, l_sense);
        /* Synchronize all harts before reading sibling states */
        multi_barrier_wait(&barrier_sync, &l_sense);
        DBG("[Hart %u] R%u: Passed Barrier 1, sense=%u\n", hart_id, current_round, l_sense);
        
        /* Consistency check across all participating harts */
        for (uint32_t i = 0; i < active_harts; i++) {
            if (hart_progress[i] != current_round) {
                test_error = 1;
                WRN("[ERROR] Hart %d detected Hart %d at round %d (expected %d)!\n",
                        hart_id, i, hart_progress[i], current_round);
            }
        }

        /* Synchronize to ensure all harts finished checking */
        multi_barrier_wait(&barrier_sync, &l_sense);

        /* Hart 0 evaluates termination criterion */
        if (hart_id == 0) {
            if ((current_round % 10) == 0 || current_round == total_rounds) {
                DBG("[TEST] Successfully passed barrier round %d/%d\n", 
                        current_round, total_rounds);
            }

            if (current_round >= total_rounds || test_error != 0) {
                terminate_flag = 1;
            }
        }

        /* Synchronize to broadcast terminate_flag */
        multi_barrier_wait(&barrier_sync, &l_sense);

        /* Check termination condition */
        if (terminate_flag != 0) {
            break;
        }
    }

    /* Record hart exit */
    __atomic_fetch_add(&completed_harts, 1, __ATOMIC_ACQ_REL);

    /* Hart 0 waits for all other harts to break out, then prints summary */
    if (hart_id == 0) {
        while (completed_harts < active_harts) {
            __asm__ volatile ("" ::: "memory");
        }

        ANN("\n============================================\n");
        if (test_error == 0) {
            ANN(" [TEST RESULT: PASSED]\n");
            ANN(" Verified %d rounds across %d harts with 0 race conditions.\n",
                    total_rounds, active_harts);
        } else {
            ANN(" [TEST RESULT: FAILED]\n");
            ANN(" Barrier ordering violation detected!\n");
        }
        ANN("============================================\n");
    }

    return;
}

int run_barrier_test(void) {

    uint32_t num_harts = hart_get_count();

    init_done = 0;
    test_error = 0;
    terminate_flag = 0;
    completed_harts = 0;

    if (num_harts < 2) {
        WRN("Only 1 hart available; barrier test requires at least 2 harts.\n");
        return 0;
    }

    if (num_harts > MAX_HARTS) {
        num_harts = MAX_HARTS;
    }

    INF("Enter number of harts to race [2-%u, default %u]: ", num_harts, num_harts);
    int active_harts = 0;
    int input = 0;
    do{
        while (input != '\r' && input != '\n' && input != ' ') {
            input = getchar();
            pause();
            if (input > '9' || input < '0')
                continue;
            active_harts = active_harts * 10 + (input - '0');
            putchar(input);
        }
        putchar('\n');
    } while ((active_harts < 2 || (uint32_t)active_harts > num_harts));

    INF("Enter number of barrier rounds [default %u]: ", TOTAL_ROUNDS);
    int rounds = 0;
    input = 0;
    while (input != '\r' && input != '\n' && input != ' ') {
        input = getchar();
        pause();
        if (input > '9' || input < '0')
            continue;
        rounds = rounds * 10 + (input - '0');
        putchar(input);
    }
    putchar('\n');

    if (rounds <= 0) {
        INF("Exiting test...\n");
        return test_error;
    }

    ANN("Starting Sense-Reversing Barrier Test on %d Harts...\n", active_harts);

    for (uint32_t i = 0; i < active_harts; i++) {
        hart_progress[i] = 0;
    }

    multi_barrier_init(&barrier_sync, active_harts);

    __asm__ volatile ("fence rw, rw" ::: "memory");
    init_done = 1;

    for (uint32_t i = 1; i < active_harts; i++) {
        hart_wakeup_with_addr(i, (uintptr_t)secondary_run_barrier_test, 0, 0, 0);
    }

    secondary_run_barrier_test((uint64_t)rounds, (uint64_t)active_harts);

    return test_error;
}

REGISTER_PLATFORM_TEST("Multihart barrier on top of atomics test", run_barrier_test);
