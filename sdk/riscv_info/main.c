#include <platform/utils/utils.h>	/* For console output */
#include <platform/riscv/caps.h>
#include "riscv_info.h"

int main(void) {
    /* Stack to store the caps */
    struct rvcaps my_caps;

    /* Use hart_probe_priv_caps to scan the hardware and fill in our struct */
    hart_probe_priv_caps(&my_caps);

    /* Print caps using the custom print function */
    print_riscv_info(&my_caps);

    while (1) {
        __asm__ volatile("wfi"); 
    }

    return 0;
}