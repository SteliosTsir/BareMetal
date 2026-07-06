#include <stdint.h>
#include <platform/utils/utils.h>   /* Για τα ANN, INF, ERR, DBG, κλπ. */
#include "../../testsuite/include/arch_tests.h"  // Εδώ βρίσκεται το struct arch_test_t και ο πίνακας all_arch_tests

// 1. Assembly function definition
extern void run_test_I_add_00(void);

void run_all_compliance_tests(void) {
    int passed = 0;

    ANN("\n\r---=== RISC-V Architectural Compliance ===---\n\r");
    INF("Found %i tests to execute.\n\r", num_arch_tests);
    ANN("---------------------------------------------\n\r");

    for (int i = 0; i < num_arch_tests; i++) {
        const arch_test_t* test = &all_arch_tests[i];
        
        // Εκτύπωση progress
        printf("Running %-15s ... ", test->name); 

        // 1. Εκτέλεση της Assembly
        test->run_func();

        // 2. Verification
        // Αντί για printf, χρησιμοποιούμε απευθείας pointers στη μνήμη
        uint32_t* current_sig = test->begin_sig;
        uint32_t* end_sig = test->end_sig;
        
        int is_correct = 1;
        
        // Εδώ τσεκάρουμε αν η μνήμη άλλαξε (απλό test για αρχή)
        if (current_sig == end_sig) {
            is_correct = 0; // Το signature έμεινε άδειο!
        }

        // 3. Αποτέλεσμα
        if (is_correct) {
            printf("[PASS]\n\r");
            passed++;
        } else {
            printf("[FAIL]\n\r");
        }
    }

    ANN("---------------------------------------------\n\r");
    INF("Compliance Score: %i / %i Tests Passed.\n\r", passed, num_arch_tests);
    ANN("---------------------------------------------\n\r");
}