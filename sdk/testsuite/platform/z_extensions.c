#include "../include/z_extensions.h"

int check_zba_extension(void) {
    struct hart_state *hs = hart_get_hstate_self();

	hs->error = 0;
    hs->probe_mode = 1;

	__asm__ volatile (".word 0x0800003B\n"); /* add.uw */

	hs->probe_mode = 0;

	if (hs->error == ENOSYS) {
        return 0;
    }
    
    return 1;
}

int check_zbb_extension(void) {
    struct hart_state *hs = hart_get_hstate_self();

	hs->error = 0;
    hs->probe_mode = 1;

	__asm__ volatile (".word 0x40007033\n");

	hs->probe_mode = 0;

	if (hs->error == ENOSYS) {
        return 0;
    }
    
    return 1;
}

int check_zbc_extension(void) {
    struct hart_state *hs = hart_get_hstate_self();

	hs->error = 0;
    hs->probe_mode = 1;

	__asm__ volatile (".word 0x0A001033\n");  /* clmul */

	hs->probe_mode = 0;

	if (hs->error == ENOSYS) {
        return 0;
    }
    
    return 1;
}

int check_zbs_extension(void) {
    struct hart_state *hs = hart_get_hstate_self();

	hs->error = 0;
    hs->probe_mode = 1;

	__asm__ volatile (".word 0x28001033\n");   /* bset */

	hs->probe_mode = 0;

	if (hs->error == ENOSYS) {
        return 0;
    }
    
    return 1;
}

int check_zicond_extension(void) {
    struct hart_state *hs = hart_get_hstate_self();

    hs->error = 0;
    hs->probe_mode = 1;

    __asm__ volatile (".word 0x0E005033\n");   /* czero.eqz */

    hs->probe_mode = 0;

    if (hs->error == ENOSYS) {
        return 0;
    }
    return 1;
}

int check_zawrs_extension(void) {
    struct hart_state *hs = hart_get_hstate_self();

    hs->error = 0;
    hs->probe_mode = 1;

    __asm__ volatile (".word 0x00D00073\n");   /* wrs.nto */

    hs->probe_mode = 0;

    if (hs->error == ENOSYS) {
        return 0;
    }
    return 1;
}

int check_zacas_extension(void) {
    struct hart_state *hs = hart_get_hstate_self();

    hs->error = 0;
    hs->probe_mode = 1;

    __asm__ volatile (".word 0x2800202F\n");       /* amocas.w */

    hs->probe_mode = 0;

    if (hs->error == ENOSYS) {
        return 0;
    }
    return 1;
}

int check_zabha_extension(void) {
    struct hart_state *hs = hart_get_hstate_self();

    hs->error = 0;
    hs->probe_mode = 1;

    __asm__ volatile (".word 0x0000002F\n");       /* amoadd.b */
    hs->probe_mode = 0;

    if (hs->error == ENOSYS) {
        return 0;
    }
    return 1;
}

int check_zfh_extension(void) {
    struct hart_state *hs = hart_get_hstate_self();

    hs->error = 0;
    hs->probe_mode = 1;

    __asm__ volatile (".word 0x04000053\n");       /* fadd.h */

    hs->probe_mode = 0;

    if (hs->error == ENOSYS) {
        return 0;
    }
    return 1;
}

int check_zfa_extension(void) {
    struct hart_state *hs = hart_get_hstate_self();

    hs->error = 0;
    hs->probe_mode = 1;

    __asm__ volatile (".word 0xF0000053\n");       /* fli.s */

    hs->probe_mode = 0;

    if (hs->error == ENOSYS) {
        return 0;
    }
    return 1;
}
