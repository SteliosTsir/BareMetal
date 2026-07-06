#ifndef _RVMODEL_MACROS_H
#define _RVMODEL_MACROS_H

#define RVTEST_BEGIN 
//#define RVMODEL_BOOT 

#define RVMODEL_DATA_BEGIN \
    .section .data.signature; \
    .align 4; \
    .global begin_signature; \
    begin_signature:

#define RVMODEL_DATA_END \
    .align 4; \
    .global end_signature; \
    end_signature:

#define RVMODEL_IO_INIT
#define RVMODEL_IO_WRITE_STR(_R1, _R2, _R3, _STR)
#define RVMODEL_IO_ASSERT_GPR_EQ(_S1, _S2, _S3)
#define RVMODEL_IO_ASSERT_SFPR_EQ(_F1, _F2, _I1)
#define RVMODEL_IO_ASSERT_DFPR_EQ(_D1, _D2, _I1)
#define RVMODEL_SET_MSW_INT
#define RVMODEL_CLEAR_MSW_INT
#define RVMODEL_CLEAR_MTIMER_INT
#define RVMODEL_CLEAR_MEXT_INT
#define RVMODEL_HALT \
    ret;
    
#endif