#include <platform/riscv/hart.h>	/* For hart_state */
#include <errno.h>
#include <stdint.h>			/* For typed ints */


#ifndef Z_EXTENSIONS_H
#define Z_EXTENSIONS_H

int check_zba_extension(void);
int check_zbb_extension(void);
int check_zbc_extension(void);
int check_zbs_extension(void);
int check_zicond_extension(void);
int check_zawrs_extension(void);
int check_zacas_extension(void);
int check_zabha_extension(void);
int check_zfh_extension(void);
int check_zfa_extension(void);

#endif