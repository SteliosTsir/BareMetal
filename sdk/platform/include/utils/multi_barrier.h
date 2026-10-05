#ifndef MULTI_BARRIER_H
#define MULTI_BARRIER_H

#include <stdint.h>

typedef struct {
    volatile uint32_t count;        /* Number of harts currently arrived */
    volatile uint32_t g_sense;      /* Current release phase (0 or 1)    */
    uint32_t num_harts;             /* Total participating harts         */
} multi_barrier_t;

/**
 * Initialize a sense-reversing barrier.
 */
void multi_barrier_init(multi_barrier_t *b, uint32_t num_harts);

/**
 * Synchronize participating harts.
 */
void multi_barrier_wait(multi_barrier_t *b, uint32_t *l_sense);

#endif /* MULTI_BARRIER_H */