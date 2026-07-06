#ifndef _ARCH_TESTS_H
#define _ARCH_TESTS_H

#include <stdint.h>

// basic arch test structure
typedef struct {
    const char* name;              
    void (*run_func)(void);        
    uint32_t* begin_sig;           
    uint32_t* end_sig;             
    const uint32_t* expected_sig;  
    uint32_t expected_size;        
} arch_test_t;


extern const arch_test_t all_arch_tests[];
extern const int num_arch_tests;

void run_all_compliance_tests(void);

#endif // _ARCH_TESTS_H