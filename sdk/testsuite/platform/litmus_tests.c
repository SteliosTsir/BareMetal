/*
 * SPDX-FileType: SOURCE
 *
 * SPDX-FileCopyrightText: 2025-2026 Nick Kossifidis <mick@ics.forth.gr>
 * SPDX-FileCopyrightText: 2025-2026 ICS/FORTH
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <platform/utils/utils.h>	/* For console output */
#include <platform/riscv/csr.h>		/* For pause() */
#include <platform/interfaces/ipi.h>	/* For ipi_self/send() */
#include <test_framework.h>		/* For test registration macros */

static int
litmus_tests_menu(void)
{
	ANN("\n---=== Litmus Tests ===---\n");
	
    /* Number of tests found */
    int num_tests = __stop_rodata_tests_litmus - __start_rodata_tests_litmus;
	
    if (num_tests == 0) {
		WRN("No Litmus Tests found.\n");
		INF("Press a key to continue...\n");
		return 0;
	}

    while (1) {
        INF("\nChoose a Litmus Test to perform (or type %i to go back):\n", num_tests);
        
        for (int i = 0; i < num_tests; i++) {
            INF("\t%i -> %s\n", i, __start_rodata_tests_litmus[i].description);
        }
	
        INF("Input: ");
		int num = 0;
		int input = 0;
        while (input != '\r' && input != '\n' && input != ' ') {
            input = getchar();
			pause();
			if (input > '9' || input < '0')
				continue;
			num = num * 10 + (input - '0');
			putchar(input);
		}
		putchar('\n');

        if (num == num_tests) {
            break;
        }

        if (num >= 0 && num < num_tests) {
            INF("Running %s...\n", __start_rodata_tests_litmus[num].description);
            int res = __start_rodata_tests_litmus[num].test_fn();
            INF("Test finished with code %i\n", res);
        } else {
            ERR("Invalid test index: %i, retry...\n", num);
        }
    }

	INF("Press a key to continue...\n");
	return 0;
}

REGISTER_PLATFORM_TEST("Litmus Tests", litmus_tests_menu);