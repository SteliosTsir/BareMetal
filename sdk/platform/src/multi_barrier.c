#include <platform/utils/multi_barrier.h>
#include <platform/utils/utils.h>	/* For console output */
#include <platform/riscv/hart.h>


/**
*
* The following is an implementation of a sense reversing counter barrier based on this peudocode
*
*     barrier:
*       L_sense = not L_sense;
*       Lock();
*           count —-;
*           if(count == 0){
*               count = P;
*               sense = L_sense
*           }
*       Unlock();
*       while (sense != L_sense) ;
*
*/

void multi_barrier_init(multi_barrier_t *b, uint32_t num_harts) {
    b->count = num_harts;
    b->g_sense = 0;
    b->num_harts = num_harts;
    __asm__ volatile ("fence rw, rw" ::: "memory");
}

void multi_barrier_wait(multi_barrier_t *b, uint32_t *l_sense) {
    struct hart_state *hs = hart_get_hstate_self();
    uint32_t hart_id = hs->hart_idx;

    /* Invert the hart's local sense */
    *l_sense = !(*l_sense);

    __asm__ volatile ("fence rw, rw" ::: "memory");

    uint32_t remaining = __atomic_fetch_sub(&b->count, 1, __ATOMIC_ACQ_REL) - 1;
    
    if (remaining == 0) {
        /* Last arrival */
        DBG("[Hart %u] Releasing barrier...\n", hart_id);
        b->count = b->num_harts;

        __asm__ volatile ("fence rw, rw" ::: "memory");

        b->g_sense = *l_sense;
    
    } else {
        DBG("[Hart %u] Waiting for barrier...\n", hart_id);
        while (b->g_sense != *l_sense) {
            __asm__ volatile ("" ::: "memory");
        }
        __asm__ volatile ("fence r, rw" ::: "memory");
    
    }
}
