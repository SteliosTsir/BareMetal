#include <platform/utils/utils.h>	/* For console output */
#include <platform/riscv/caps.h>
#include <platform/riscv/hart.h>

void print_riscv_info(struct rvcaps *caps) {

    /*
     * Read basic bits from misa to get the base architecture 
     */

    unsigned long misa_val = csr_read(CSR_MISA);
    int mxl = (misa_val >> 62) & 0x3;
    int bits = (mxl == 1) ? 32 : ((mxl == 2) ? 64 : ((mxl == 3) ? 128 : 64));
    char base_isa = (misa_val & CSR_MISA_I) ? 'I' : 'E';

    /*
     * Print information about the cpu */

    printf("\n========================================\n");
    printf(" BareMetal RISC-V Info Diagnostic\n");
    printf("========================================\n");
    
    printf("\nBase architecture : RV%d%c (%d bits)\n\n", bits, base_isa, bits);
    
    printf("ISA extensions\n==============\n");
    printf("Found: %c", base_isa); // Τυπώνουμε το I ή E πρώτο
    if (caps->r_caps & CAP_M) printf("M");
    if (caps->r_caps & CAP_A) printf("A");
    if (caps->r_caps & CAP_F) printf("F");
    if (caps->r_caps & CAP_D) printf("D");
    if (caps->r_caps & CAP_C) printf("C");
    if (caps->r_caps & CAP_V) printf("V");
    if (caps->s_caps & CAP_H) printf("H");
    printf("\n\n");

    /* Vector Specific Info */
    if (caps->r_caps & CAP_V) {
        printf("Vector Unit\n===========\n");
        int vlen = 1 << caps->vlenb_shift;
        printf(" VLEN : %d bits\n\n", vlen * 8);
    }

    int has_i = (base_isa == 'I');
    int has_s = (caps->s_caps & CAP_S) ? 1 : 0;
    
    /* RVA Base */
    int is_rva_base = has_i && 
                      (caps->r_caps & CAP_M) && 
                      (caps->r_caps & CAP_A) && 
                      (caps->r_caps & CAP_F) && 
                      (caps->r_caps & CAP_D) && 
                      (caps->r_caps & CAP_C);
                      
    int is_rva22_base = is_rva_base && (caps->r_caps & CAP_V);

    printf("ISA profiles\n============\n");
    printf("  RVI20U32 : %s\n", (bits == 32 && has_i) ? "Yes" : "No");
    printf("  RVI20U64 : %s\n", (bits == 64 && has_i) ? "Yes" : "No");
    
    printf("  RVA20U64 : %s\n", (bits == 64 && is_rva_base) ? "Yes" : "No");
    printf("  RVA20S64 : %s\n", (bits == 64 && is_rva_base && has_s) ? "Yes" : "No");
    
    printf("  RVA22U64 : %s\n", (bits == 64 && is_rva22_base) ? "Yes" : "No");
    printf("  RVA22S64 : %s\n", (bits == 64 && is_rva22_base && has_s) ? "Yes" : "No");
    
    printf("  RVA23U64 : %s\n", (bits == 64 && is_rva22_base) ? "Yes" : "No");
    printf("  RVA23S64 : %s\n", (bits == 64 && is_rva22_base && has_s) ? "Yes" : "No");
    
    printf("  RVB23U64 : No (Requires Z-ext parsing)\n");
    printf("  RVB23S64 : No (Requires Z-ext parsing)\n\n");
    
}