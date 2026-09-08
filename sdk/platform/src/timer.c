/*
 * SPDX-FileType: SOURCE
 *
 * SPDX-FileCopyrightText: 2025-2026 Nick Kossifidis <mick@ics.forth.gr>
 * SPDX-FileCopyrightText: 2025-2026 ICS/FORTH
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <target_config.h>		/* For PLAT_* constants */
#include <platform/interfaces/timer.h>	/* The public API used by yalibc */
#include <platform/riscv/csr.h>		/* For wfi() */
#include <platform/riscv/hart.h>	/* For hart_get_hstate_self(), hart_*_counter() */
#include <platform/riscv/mtimer.h>	/* For mtimer_*() functions */
#include <platform/utils/utils.h>	/* For console output */

/*********\
* HELPERS *
\*********/

#define NSECS_IN_SEC 1000000000UL

/* Note: We assume all harts run at the same frequency
 * so we don't need to have different timer parameters
 * per part. Hence we only have two sets of parameters,
 * one for the platform-level timer (mtimer), and one
 * for the timer based on each hart's cycle counter. */
struct timer_spec {
	struct timespec res;
	uint32_t clock_freq;
	uint32_t mult_c2ns;
	uint32_t shift_c2ns;
	uint32_t mult_ns2c;
	uint32_t shift_ns2c;
	uint32_t mult_c2c;
	uint32_t shift_c2c;
};

static struct timer_spec cyclecount_timer = {0};

#ifndef PLAT_NO_MTIMER
static struct timer_spec platform_timer = {0};
#endif

/* Compute (val * mult) >> shift without runtime division or a mandatory
 * 128-bit type: on RV64 use the native path, on RV32 split val into 32-bit
 * halves (only u32*u32->u64 products). shift is in [0, 32]. */
static inline uint64_t
timer_mul_shift(uint64_t val, uint32_t mult, uint32_t shift)
{
#if defined(__SIZEOF_INT128__)
	return (uint64_t)(((unsigned __int128)val * mult) >> shift);
#else
	uint32_t lo = (uint32_t)val, hi = (uint32_t)(val >> 32);
	uint64_t ret = ((uint64_t)lo * mult) >> shift;
	if (hi)
		ret += ((uint64_t)hi * mult) << (32 - shift);
	return ret;
#endif
}

/* Pick the largest shift (<= 32) that keeps a 32-bit multiplier for the ratio
 * num/den, so timer_mul_shift(x, mult, shift) ~= x * num / den. Since the full
 * product is evaluated there, mult only has to fit 32 bits (no max-interval
 * cap) and a larger shift just buys precision. This is Linux's
 * clocks_calc_mult_shift() without the range limit. */
static void
timer_calc_mult_shift(uint64_t num, uint64_t den, uint32_t *mult, uint32_t *shift)
{
	uint64_t m = 0;
	uint32_t s;
	for (s = 32; s > 0; s--) {
		m = ((num << s) + (den >> 1)) / den;
		if ((m >> 32) == 0)
			break;
	}
	*mult = (uint32_t)m;
	*shift = s;
}

/* Initialize a timer parameters for the given clock frequency,
 * and/or return the cached version. Note: We could init params
 * on e.g. platform_init or hart_init, but this way if a program
 * never uses a timer, this function will also be optimized-out
 * since it'll never get called. */
static const struct timer_spec *
timer_get_spec(timerid_t timerid)
{
	struct timer_spec *timer = NULL;
	uint32_t clock_freq = 0;
	switch (timerid) {
	case PLAT_TIMER_RTC:
	case PLAT_TIMER_MTIMER:
		#ifndef PLAT_NO_MTIMER
			timer = &platform_timer;
			clock_freq = PLAT_MTIMER_FREQ;
			break;
		#endif
		/* Fallthrough */
	case PLAT_TIMER_CYCLES:
		timer = &cyclecount_timer;
		clock_freq = PLAT_HART_FREQ;
		break;
	default:
		return NULL;
	}

	/* Already initialized */
	if (timer->clock_freq > 0)
		return timer;

	timer->res.tv_sec = 0;
	timer->res.tv_nsec = 0;

	/* Resolution: smallest power-of-ten period the clock can represent,
	 * from 1ns down to 100ms. */
	for (uint32_t divisor = NSECS_IN_SEC; divisor >= 100; divisor /= 10) {
		if (clock_freq >= divisor) {
			timer->res.tv_nsec = NSECS_IN_SEC / divisor;
			break;
		}
	}

	/* Slower than 100Hz is kinda useless; fall back to a 1s resolution. */
	if (!timer->res.tv_nsec)
		timer->res.tv_sec = 1;

	timer->clock_freq = clock_freq;

	/* Precompute a multiplier/shift per conversion so the hot paths avoid
	 * division (Linux's clocks_calc_mult_shift approach). timer_mul_shift()
	 * evaluates the full-width product, so none of these carry a maximum-
	 * interval limit. */
	timer_calc_mult_shift(NSECS_IN_SEC, clock_freq, &timer->mult_c2ns, &timer->shift_c2ns);   /* cycles -> nsecs */
	timer_calc_mult_shift(clock_freq, NSECS_IN_SEC, &timer->mult_ns2c, &timer->shift_ns2c);   /* nsecs  -> cycles */
	timer_calc_mult_shift(CLOCKS_PER_SEC, NSECS_IN_SEC, &timer->mult_c2c, &timer->shift_c2c); /* nsecs  -> clock() ticks */

	return timer;
}

static uint64_t __attribute__((noinline))
timer_sample(timerid_t timerid, const struct timer_spec **_Nullable tspec)
{
	const struct timer_spec *timer = NULL;
	uint64_t tval = 0;
	switch (timerid) {
		case PLAT_TIMER_RTC:
		case PLAT_TIMER_MTIMER:
			#ifndef PLAT_NO_MTIMER
				timer = timer_get_spec(timerid);
				/* mtime is the shared, free-running wall clock: convert
				 * its absolute value. Stateless, so every hart reads a
				 * coherent time and we never write mtime (which would
				 * disturb other harts and their mtimecmp sleeps). */
				tval = timer_mul_shift(mtimer_get_num_ticks(),
						       timer->mult_c2ns, timer->shift_c2ns);
				break;
			#else
				/* Fallthrough */
			#endif
		case PLAT_TIMER_CYCLES: {
			timer = timer_get_spec(timerid);
			struct hart_state *hs = hart_get_hstate_self();
			/* mcycle is per-hart and free-running; capture a base on
			 * first use so CYCLES reads as CPU-time-since-first-use
			 * without ever resetting the counter. A read of mcycle is
			 * never 0 (mandatory and left running by
			 * CSR_MCOUNTINHIBIT_INIT), so base == 0 is a safe "unset". */
			if (hs->cyclecount_base == 0) {
				hart_enable_counter(HC_CYCLES);
				hs->cyclecount_base = hart_get_counter(HC_CYCLES);
			}
			uint64_t cycles = hart_get_counter(HC_CYCLES) - hs->cyclecount_base;
			tval = timer_mul_shift(cycles, timer->mult_c2ns, timer->shift_c2ns);
			break;
		}
		default:
			ERR("Tried to sample unknown timerid: %i\n", timerid);
			return 0;
	}
	if (tspec)
		*tspec = timer;
	return tval;
}

/**************\
* ENTRY POINTS *
\**************/

const struct timespec*
timer_get_resolution(timerid_t timerid)
{
	const struct timer_spec *timer = timer_get_spec(timerid);
	if (timer)
		return &timer->res;
	else
		return NULL;
}

uint64_t
timer_get_nsecs(timerid_t timerid)
{
	return timer_sample(timerid, NULL);
}

uint64_t
timer_get_num_ticks(timerid_t timerid)
{
	const struct timer_spec *timer = NULL;
	uint64_t nsecs = timer_sample(timerid, &timer);
	if (!timer)
		return 0;
	return timer_mul_shift(nsecs, timer->mult_c2c, timer->shift_c2c);
}

uint64_t
timer_nsecs_to_cycles(timerid_t timerid, uint64_t nsecs)
{
	const struct timer_spec *timer = timer_get_spec(timerid);
	if (!timer)
		return 0;
	return timer_mul_shift(nsecs, timer->mult_ns2c, timer->shift_ns2c);
}

void
timer_nanosleep(timerid_t timerid, uint64_t nsecs)
{
	struct hart_state *hs = hart_get_hstate_self();
	const struct timer_spec *timer = timer_get_spec(timerid);
	if (!timer)
		return;
	uint64_t cycles_to_wait = timer_mul_shift(nsecs, timer->mult_ns2c, timer->shift_ns2c);

	switch (timerid) {
	case PLAT_TIMER_RTC:
	case PLAT_TIMER_MTIMER:
		#ifndef PLAT_NO_MTIMER
			hart_set_flags(hs, HS_FLAG_SLEEPING);
			mtimer_arm_after_ticks(cycles_to_wait);
			mtimer_enable_irq();
			/* Wait for the trap handler to clear the
			 * HS_FLAG_SLEEPING flag and disarm the timer. */
			while (hart_test_flags(hs, HS_FLAG_SLEEPING)) {
				wfi();
			}
			mtimer_disable_irq();
			break;
		#endif
		/* Fallthrough */
	case PLAT_TIMER_CYCLES:
		uint64_t curr_cycles = hart_get_counter(HC_CYCLES);
		uint64_t tot_cycles = curr_cycles + cycles_to_wait;

		hart_set_flags(hs, HS_FLAG_SLEEPING);
		while (tot_cycles > curr_cycles)
			curr_cycles = hart_get_counter(HC_CYCLES);

		hart_clear_flags(hs, HS_FLAG_SLEEPING);
		break;
	default:
		return;
	}
}
