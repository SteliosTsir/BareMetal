# 0 "sdk/testsuite/arch/I-add-00.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "sdk/testsuite/arch/I-add-00.S"
.global run_test_I_add_00
run_test_I_add_00:
# 13 "sdk/testsuite/arch/I-add-00.S"
##### START_TEST_CONFIG #####
# REQUIRED_EXTENSIONS: ['I']
# params:
# MXLEN: 64
# MARCH: rv64i_zicsr_zifencei
##### END_TEST_CONFIG #####
# 28 "sdk/testsuite/arch/I-add-00.S"
# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 1
# riscv_arch_test.h
# Top-level riscv-arch-test header file
# Jordan Carlin jcarlin@hmc.edu October 2025
# SPDX-License-Identifier: Apache-2.0

# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_config.h" 1
# 7 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2

# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/derived_config.h" 1
# 9 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2
# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/encoding.h" 1
# 10 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2
# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/utils.h" 1
# utils.h
# Utility macros for riscv-arch-test
# Jordan Carlin jcarlin@hmc.edu November 2025
# SPDX-License-Identifier: BSD-3-Clause
# 11 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2
# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvmodel_macros.h" 1
# 12 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2

# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/sail_macros.h" 1
# sail_macros.h
# RVMODEL macro definitions for Sail reference model
# Jordan Carlin jcarlin@hmc.edu October 2025, Sadhvi Narayana sanarayanan@hmc.edu February 2026
# SPDX-License-Identifier: BSD-3-Clause
# 24 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/sail_macros.h"
##### STARTUP #####

# Perform boot operations. Can be empty or left undefined unless needed for
# DUT-specific behavior such as turning on a memory controller or
# initializing custom state.



##### TERMINATION #####




# Terminate test with a pass indication.
# When the test is run in simulation, this should end the simulation.
# 49 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/sail_macros.h"
# Terminate test with a fail indication.
# When the test is run in simulation, this should end the simulation.
# 61 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/sail_macros.h"
##### IO #####

# Initialization steps needed prior to writing to the console
# _R1, _R2, and _R3 can be used as temporary registers if needed.
# Do not modify any other registers (or make sure to restore them).
# Can be empty or left undefined if no initialization is needed.




# Prints a null-terminated string using a DUT specific mechanism.
# A pointer to the string is passed in _STR_PTR.
# _R1, _R2, and _R3 can be used as temporary registers if needed.
# Do not modify any other registers (or make sure to restore them).
# 90 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/sail_macros.h"
##### Machine Timer #####







##### Machine Interrupts #####
# 136 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/sail_macros.h"
##### Supervisor Interrupts #####
# 14 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2

# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/check_defines.h" 1
# check_defines.h
# Ensures all RVMODEL macros are defined
# Jordan Carlin jcarlin@hmc.edu December 2025
# SPDX-License-Identifier: BSD-3-Clause

########## test.S CHECKS ##########
# 19 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/check_defines.h"
########## GLOBAL XLEN CHECK ##########




########## rvmodel_macros.h CHECKS ##########




##### TERMINATION #####
# 38 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/check_defines.h"
##### IO #####




##### ADDRESSES #####


##### MTIME #####
# 58 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/check_defines.h"
##### Interrupt Delays #####







##### Machine Interrupts #####
# 83 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/check_defines.h"
##### Supervisor Interrupts #####
# 16 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2
# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/signature.h" 1
# signature.h
# Signature region handling macros
# Jordan Carlin jcarlin@hmc.edu October 2025
# SPDX-License-Identifier: Apache-2.0
# 17 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2
# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_macros.h" 1
# 18 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2



# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h" 1
# 201 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.set MMODE_SIG, 3
.set SMODE_SIG, 1
.set HMODE_SIG, 1
.set VMODE_SIG, 2
# 345 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.macro INSTANTIATE_MODE_MACRO MACRO_NAME
  \MACRO_NAME M







.endm
# 363 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.macro DFLT_INT_MACRO MACRO_NAME
.set MACRO_NAME_, \MACRO_NAME
 .ifndef MACRO_NAME_
  .warning "MACRO_NAME_ is not defined by target. Executing this will end test."

 .endif
.endm
# 402 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.macro _XCSR_RENAME_V
  .set CSR_XSTATUS, 0x200
  .set CSR_XIE, 0x204
  .set CSR_XIP, 0x244
  .set CSR_XSATP, 0x280
  .set CSR_XTVAL, 0x243
  .set CSR_XEDELEG, CSR_SEDELEG
  .set CSR_XIDELEG, CSR_SIDELEG
  .set CSR_XENVCFG, 0x10a
  .set CSR_XCOUNTEREN, 0x106
  .set CSR_XTVEC, 0x205
  .set CSR_XSCRATCH,0x240
  .set CSR_XEPC, 0x241
  .set CSR_XCAUSE, 0x242



.endm

.macro _XCSR_RENAME_S
  .set CSR_XSTATUS, 0x100
  .set CSR_XIE, 0x104
  .set CSR_XIP, 0x144
  .set CSR_XSATP, 0x180
  .set CSR_XTVAL, 0x143
  .set CSR_XEDELEG, CSR_SEDELEG
  .set CSR_XIDELEG, CSR_SIDELEG
  .set CSR_XENVCFG, 0x10a
  .set CSR_XCOUNTEREN, 0x106
  .set CSR_XTVEC, 0x105
  .set CSR_XSCRATCH,0x140
  .set CSR_XEPC, 0x141
  .set CSR_XCAUSE, 0x142



.endm

.macro _XCSR_RENAME_H
  .set CSR_XSTATUS, 0x600
  .set CSR_XIE, 0x604
  .set CSR_XIP, 0x644
  .set CSR_XSATP, 0x680
  .set CSR_XTVAL, 0x643
  .set CSR_XEDELEG, 0x602
  .set CSR_XIDELEG, 0x603
  .set CSR_XENVCFG, 0x60a
  .set CSR_XCOUNTEREN, 0x606
  .set CSR_XTVEC, 0x105
  .set CSR_XSCRATCH,0x140
  .set CSR_XEPC, 0x141
  .set CSR_XCAUSE, 0x142



.endm

.macro _XCSR_RENAME_M
  .set CSR_XSTATUS, 0x300
  .set CSR_XIE, 0x304
  .set CSR_XIP, 0x344
  .set CSR_XSATP, 0x180
  .set CSR_XTVAL, 0x343
  .set CSR_XEDELEG, 0x302
  .set CSR_XIDELEG, 0x303
  .set CSR_XENVCFG, 0x30a
  .set CSR_XCOUNTEREN, 0x306
  .set CSR_XTVEC, 0x305
  .set CSR_XSCRATCH,0x340
  .set CSR_XEPC, 0x341
  .set CSR_XCAUSE, 0x342



.endm






 .macro XCSR_RENAME __MODE__
  .ifc \__MODE__ , M
       _XCSR_RENAME_M
  .endif
  .ifc \__MODE__ , H
       _XCSR_RENAME_H
  .endif
  .ifc \__MODE__ , S
       _XCSR_RENAME_S
  .endif
  .ifc \__MODE__ , V
       _XCSR_RENAME_V
  .endif
.endm
# 638 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.macro RVTEST_GOTO_MMODE
  .option push
  .option norvc
  mv t0, x3
  li x3, 0



  ecall

  mv x3, t0
  .option pop
.endm

.macro RVTEST_GOTO_DELEGATED_MMODE
  .option push
  .option norvc


  mv t0, x3
  li x3, 0

  .word 0

  mv x3, t0
  .option pop
.endm


.macro RVTEST_GOTO_SMODE
  .option push
  .option norvc
# 678 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
  .option pop
.endm
# 696 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.macro RVTEST_GOTO_LOWER_MODE LMODE
.option push
.option norvc





   .if ((\LMODE\()==0x4) || (\LMODE\()==0x5))
     LI x7, (1<<7)





     slli x7, x7, 32
     csrs 0x300, x7

   .elseif ((\LMODE\()==0x9))
     LI x7, (1<<7)





     slli x7, x7, 32
     csrc 0x300, x7

   .endif


    ; .option push ; .option norelax ; .option norvc ; .set immx, (0x00001800UL & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((0x00001800UL)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x9, imm12 ; .else ; lui x9, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((0x00001800UL&((1 << 12)-1))!=0) ; addi x9, x9, imm12 ; .endif ; .endif ; .option pop
  .if (\LMODE\()==0x3)
    csrs 0x300, x9
  .else
    csrc 0x300, x9
    .if ( !((\LMODE\()==0x4) || (\LMODE\()==0x0)))
      .if ((\LMODE\()==0x9) || (\LMODE\()==0x5) || (\LMODE\()==0x1))



     ; .option push ; .option norelax ; .option norvc ; .set immx, ((3<<11) & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, (((((3<<11))>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x9, imm12 ; .else ; lui x9, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if (((3<<11)&((1 << 12)-1))!=0) ; addi x9, x9, imm12 ; .endif ; .endif ; .option pop

        csrs 0x300, x9
      .endif
    .endif
  .endif

        csrr x7, 0x340
        addi x7, x7, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 0*8)+(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))
# 755 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
  .if ((\LMODE\() == 0x5) || (\LMODE\() == 0x4))
        lq x6, 2*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))(x7)
# 770 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
  .else
        lq x6, -1*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))(x7)
  .endif

        lq x9, -1*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))(x7)
        sub x6, x6, x9
        addi x6, x6, 4*(32 >> 3)
1: auipc x9, 0
        add x9, x9, x6
        csrw 0x341, x9
        mret
2: .option pop
.endm
# 852 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.macro RVTEST_TRAP_PROLOG __MODE__
.option push
.option norvc
# 875 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.global \__MODE__\()trampoline
        XCSR_RENAME \__MODE__

        ; .ifnc(x6, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la x6,\__MODE__\()tramptbl_sv ; .align 5 ; .option pop ; .endif

init_\__MODE__\()scratch:
        csrrw x8, CSR_XSCRATCH, x6
        sq x8, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+15*8)(x6)



init_\__MODE__\()timecmp:
        ; .option push ; .option norelax ; .option norvc ; .set immx, (-1 & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((-1)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x7, imm12 ; .else ; lui x7, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((-1&((1 << 12)-1))!=0) ; addi x7, x7, imm12 ; .endif ; .endif ; .option pop
        ; .option push ; .option norelax ; .option norvc ; .set immx, (0x02004000 & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((0x02004000)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x9, imm12 ; .else ; lui x9, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((0x02004000&((1 << 12)-1))!=0) ; addi x9, x9, imm12 ; .endif ; .endif ; .option pop
        sq x7, 0(x9)
  .if (UDB_MXLEN==32)
        sq x7, 4(x9)
  .endif
        nop
# 904 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
init_\__MODE__\()edeleg:
        li x7, 0
  .ifc \__MODE__ , M



  .endif
  .ifc \__MODE__ , H
        csrrw x7, CSR_XEDELEG, x7
  .endif
       sq x7, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+12*8)(x6)

init_\__MODE__\()satp:
.ifnc \__MODE__ , M
        ; .ifnc(x9, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la x9,rvtest_\__MODE__\()root_pg_tbl ; .align 5 ; .option pop ; .endif
        srli x9, x9, 12
# 929 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
        or x9, x9, x8
        csrrw x9, CSR_XSATP, x9

        sq x9, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 9*8)(x6)
.endif



init_\__MODE__\()tvec:
        csrr x8, CSR_XTVEC
        sq x8, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+14*8)(x6)
        andi x7, x8, ((32 >> 3)-1)
        lq x9, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+11*8)(x6)
        addi x9, x9, -((UDB_MXLEN + 3* 24 + 9 + 5) * 4)
        or x7, x9, x7
        sq x7, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+13*8)(x6)
        csrw CSR_XTVEC, x7

        csrr x10, CSR_XTVEC

        beq x10, x7, rvtest_\__MODE__\()prolog_done

        csrw CSR_XTVEC, x8
        beqz x8, abort\__MODE__\()test
        sq x8, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+13*8)(x6)






init_\__MODE__\()tramp:
        andi x7, x8, ~((32 >> 3)-1)
        addi x8, x7, ((UDB_MXLEN + 3* 24 + 9 + 5) * 4)
        mv sp, x6

overwt_tt_\__MODE__\()loop:
        lw x11, 0(x7)
        sw x11, 0(x6)
        lw x10, 0(x9)
        sw x10, 0(x7)
        lw x11, 0(x7)
        bne x11, x10, endcopy_\__MODE__\()tramp





        addi x7, x7, (32 >> 3)
        addi x6, x6, (32 >> 3)
        addi x9, x9, (32 >> 3)
        bne x8, x7, overwt_tt_\__MODE__\()loop





endcopy_\__MODE__\()tramp:
        nop
        csrr x6, CSR_XSCRATCH

        sq x9, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+11*8)(x6)
        beq x8,x7, rvtest_\__MODE__\()prolog_done
abort\__MODE__\()test:
        mv x8, x7
        ; .ifnc(x11, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la x11,exit_\__MODE__\()cleanup ; .align 5 ; .option pop ; .endif
        jr x11

rvtest_\__MODE__\()prolog_done:
        nop

.option pop
.endm




.macro RVTEST_TRAP_HANDLER __MODE__
.option push
.option rvc

.balign 64
.balign UDB_MTVEC_BASE_ALIGNMENT_VECTORED
.balign UDB_MTVEC_BASE_ALIGNMENT_DIRECT
.option pop
# 1025 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
  XCSR_RENAME \__MODE__

.global \__MODE__\()trampoline
.global common_\__MODE__\()entry
.option push
.option norvc

\__MODE__\()trampoline:
   .set value, 0
  .rept 24
        j trap_\__MODE__\()handler+ value
        .set value, value + 12
  .endr

  .rept UDB_MXLEN-24
        j rvtest_\__MODE__\()endtest
  .endr







 trap_\__MODE__\()handler:
  .rept 24
        csrrw sp, CSR_XSCRATCH, sp
        sq x11, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+6*(UDB_MXLEN>>3)(sp)
        jal x11, common_\__MODE__\()handler
  .endr


rvtest_\__MODE__\()endtest:
        ; .ifnc(x6, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la x6,rvtest_\__MODE__\()end ; .align 5 ; .option pop ; .endif
        jr x6
# 1083 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
common_\__MODE__\()handler:
        sq x10, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+5*(UDB_MXLEN>>3)(sp)
        csrrw x10, CSR_XSCRATCH, sp
        sq x10, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+7*(UDB_MXLEN>>3)(sp)
        lq x10, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+11*8)(sp)
        jr x10

common_\__MODE__\()entry:

        sq x9, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+4*(UDB_MXLEN>>3)(sp)
        sq x8, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+3*(UDB_MXLEN>>3)(sp)
        sq x7, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+2*(UDB_MXLEN>>3)(sp)
        sq x6, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+1*(UDB_MXLEN>>3)(sp)
        csrr x10, CSR_XCAUSE





  .ifc \__MODE__ , M

spcl_\__MODE__\()2mmode_test:
        ; .option push ; .option norelax ; .option norvc ; .set immx, ((1<<(UDB_MXLEN-1))+((1<<12)-1) & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, (((((1<<(UDB_MXLEN-1))+((1<<12)-1))>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x9, imm12 ; .else ; lui x9, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if (((1<<(UDB_MXLEN-1))+((1<<12)-1)&((1 << 12)-1))!=0) ; addi x9, x9, imm12 ; .endif ; .endif ; .option pop
        and x9, x9, x10
spcl_\__MODE__\()chk4alt:
        addi x8,x9, -0x2
        bnez x8, spcl_\__MODE__\()chk4ecall
spcl_\__MODE__\()param_chk:
        beqz x3, \__MODE__\()rtn2mmode
        j \__MODE__\()trapsig_ptr_upd
spcl_\__MODE__\()chk4ecall:
        addi x8, x9, -0x8
        srli x8, x8, 2
        bnez x8, \__MODE__\()trapsig_ptr_upd
   .endif




.ifc \__MODE__ , M
\__MODE__\()goto_mchk:
        beqz x3, \__MODE__\()rtn2mmode
.endif

.ifc \__MODE__ , S
\__MODE__\()goto_schk:
        ; .option push ; .option norelax ; .option norvc ; .set immx, ((1<<(UDB_MXLEN-1))+((1<<12)-1) & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, (((((1<<(UDB_MXLEN-1))+((1<<12)-1))>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x9, imm12 ; .else ; lui x9, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if (((1<<(UDB_MXLEN-1))+((1<<12)-1)&((1 << 12)-1))!=0) ; addi x9, x9, imm12 ; .endif ; .endif ; .option pop
        and x9, x9, x10
        addi x8, x9, -0x8
        bnez x8, \__MODE__\()trapsig_ptr_upd
        beqz x3, \__MODE__\()rtn2smode
.endif


\__MODE__\()trapsig_ptr_upd:
        li x7, 4*(UDB_MXLEN>>3)
        bgez x10, \__MODE__\()xcpt_sig_sv
\__MODE__\()int_sig_sv:
        slli x8, x10, 1
        addi x8, x8, -(7)<<1
        bgez x8, \__MODE__\()trap_sig_sv
        li x7, 3*(UDB_MXLEN>>3)
        j \__MODE__\()trap_sig_sv



\__MODE__\()xcpt_sig_sv:
.ifc \__MODE__ , M






.else
  .ifc \__MODE__ , H
        li x7, 6*(UDB_MXLEN>>3)
  .endif
.endif

\__MODE__\()trap_sig_sv:







        .set sv_area_off, (+1*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3))))
.ifc \__MODE__ , H
        .set sv_area_off, ( 0*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3))))
.else
   .ifc \__MODE__ , S



        .set sv_area_off, ( 0*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3))))

   .else
      .ifc \__MODE__ , V
        .set sv_area_off, (-2*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3))))
      .endif
    .endif
.endif
        addi sp, sp, -1*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))

        lq x6, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 8*8)+sv_area_off(sp)
        add x9, x6, x7
        sq x9, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 8*8)+sv_area_off(sp)



        lq x8, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 4*8)+sv_area_off(sp)
        sub x6, x6, x8
        addi sp, sp, 1*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))
        lq x8, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 4*8)+ 0(sp)
        add x6, x6, x8
# 1212 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
sv_\__MODE__\()vect:
        lq x8, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+13*8)(sp)
        sub x11, x11, x8
        slli x9, x11, 1
        add x11, x11, x9
        srli x11, x11, 5
        slli x11, x11, 6
        or x11, x11, x7
        addi x11, x11, \__MODE__\()MODE_SIG

        bgez x10, 1f
        li x8, 0xf
        and x8, x10, x8
        csrr x9, CSR_XIE
        srl x9, x9, x8
        andi x9, x9, 1
        slli x9, x9, 11
        or x11, x11, x9

        csrr x9, CSR_XIP
        srl x9, x9, x8
        andi x9, x9, 1
        slli x9, x9, 12
        or x11, x11, x9

        1:
        csrr x7, CSR_XSTATUS
        slli x7, x7, UDB_MXLEN-17
        srli x7, x7, UDB_MXLEN-17-13
        ; .option push ; .option norelax ; .option norvc ; .set immx, (0x219FE5 & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((0x219FE5)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x8, imm12 ; .else ; lui x8, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((0x219FE5&((1 << 12)-1))!=0) ; addi x8, x8, imm12 ; .endif ; .endif ; .option pop
        xori x8, x8, -1
        and x8, x7, x8
        or x8, x11, x8




.ifc \__MODE__ , M




          csrr x9, 0x310




.else
  .ifc \__MODE__ , H
        csrr x9, 0x600
  .endif
.endif
        andi x9, x9, 0x1C0
        slli x9, x9, 14-6
        or x8, x8, x9
        sq x8, 0*(UDB_MXLEN>>3)(x6) ; beq x0, x0, 2f ; jal x7, failedtest_trap_x7_x9 ; .word sv_\__MODE__\()vect ; .word sv_\__MODE__\()vect_str ; .word CSR_XEPC ; 2: ;


sv_\__MODE__\()cause:
        mv x8, x10
        sq x8, 1*(UDB_MXLEN>>3)(x6) ; beq x0, x0, 2f ; jal x7, failedtest_trap_x7_x9 ; .word sv_\__MODE__\()cause ; .word sv_\__MODE__\()cause_str ; .word CSR_XEPC ; 2: ;

        bltz x10, common_\__MODE__\()int_handler
# 1283 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
common_\__MODE__\()excpt_handler:
# 1345 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
        csrr x8, CSR_XEPC
        mv x9, sp

.ifc \__MODE__ , M

        j vmem_adj_\__MODE__\()epc
# 1400 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.endif

 .ifc \__MODE__ , H

        csrr x7, 0x680
        srli x7, x7, (UDB_MXLEN-4)
        bnez x7, sv_\__MODE__\()epc

        csrr x7, 0x600
        slli x7, x7, UDB_MXLEN-7 -1
        bgez x7, vmem_adj_\__MODE__\()epc

        csrr x7, 0x280
        srli x7, x7, (UDB_MXLEN-4)
        ; .option push ; .option norelax ; .option norvc ; .set immx, (2*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3))) & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((2*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3))))>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x9, imm12 ; .else ; lui x9, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((2*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))&((1 << 12)-1))!=0) ; addi x9, x9, imm12 ; .endif ; .endif ; .option pop
        add x9, x9, sp
        bnez x7, sv_\__MODE__\()epc

.endif

.ifc \__MODE__ , S

        csrr x7, 0x180
        srli x7, x7, (UDB_MXLEN-4)
        bnez x7, sv_\__MODE__\()epc

.endif

.ifc \__MODE__ , V

        csrr x7, 0x180
        srli x7, x7, (UDB_MXLEN-4)
        bnez x7, sv_\__MODE__\()epc

        lq x7, ((((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))+((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+10*8)(sp)
        srli x7, x7, (UDB_MXLEN-4)
        bnez x7, sv_\__MODE__\()epc

  .endif
# 1447 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
vmem_adj_\__MODE__\()epc:
# 1457 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
        lq x7, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 6*8)(x9)
        lq x11, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 7*8)(x9)
        add x11, x11, x7
        bgeu x8, x11, code_adj_\__MODE__\()epc
        bgeu x8, x7, adj_\__MODE__\()epc

code_adj_\__MODE__\()epc:
        lq x7, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 0*8)(x9)
        lq x11, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 1*8)(x9)
        add x11, x11, x7
        bgeu x8, x11, data_adj_\__MODE__\()epc
        bgeu x8, x7, adj_\__MODE__\()epc

data_adj_\__MODE__\()epc:
        lq x7, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 2*8)(x9)
        lq x11, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 3*8)(x9)
        add x11, x11, x7
        bgeu x8, x11, abort_test
        bltu x8, x7, abort_test

adj_\__MODE__\()epc:
        sub x8, x8, x7

sv_\__MODE__\()epc:
        sq x8, 2*(UDB_MXLEN>>3)(x6) ; beq x0, x0, 2f ; jal x7, failedtest_trap_x7_x9 ; .word sv_\__MODE__\()epc ; .word sv_\__MODE__\()epc_str ; .word CSR_XEPC ; 2: ;
        csrr x8, CSR_XEPC
# 1500 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
adj_\__MODE__\()epc_rtn:
        andi x8, x8, ~((32 >> 3)-1)
        addi x8, x8, 2*(32 >> 3)
        csrw CSR_XEPC, x8

skp_adj_\__MODE__\()epc:

        csrr x8, CSR_XTVAL

sv_\__MODE__\()tval:
        sq x8, 3*(UDB_MXLEN>>3)(x6) ; beq x0, x0, 2f ; jal x7, failedtest_trap_x7_x9 ; .word sv_\__MODE__\()tval ; .word sv_\__MODE__\()tval_str ; .word CSR_XEPC ; 2: ;

skp_\__MODE__\()tval:

  .ifc \__MODE__ , M
        csrr x8, 0x301
        slli x8, x8, UDB_MXLEN-7-1
        bgez x8, 1f
  .endif
  .ifnc \__MODE__ , S
    .ifnc \__MODE__ , V
# 1529 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
    .endif
  .endif

1:
chk_\__MODE__\()trapsig_overrun:

        addi sp, sp, -1*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))
        lq x9, sv_area_off+(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 8*8)(sp)
        lq x7, sv_area_off+(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 4*8)(sp)
        lq x6, sv_area_off+(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 5*8)(sp)
        addi sp, sp, 1*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))


        add x6, x6, x7
        bgtu x9, x6, abort_test


        li x7, (UDB_MXLEN*2*(32 >> 3))
        j spcl_\__MODE__\()handler


resto_\__MODE__\()rtn:
        lq x6, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+1*(UDB_MXLEN>>3)(sp)
        lq x7, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+2*(UDB_MXLEN>>3)(sp)
        lq x8, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+3*(UDB_MXLEN>>3)(sp)
        lq x9, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+4*(UDB_MXLEN>>3)(sp)
        lq x10, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+5*(UDB_MXLEN>>3)(sp)
        lq x11, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+6*(UDB_MXLEN>>3)(sp)
        lq sp, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+7*(UDB_MXLEN>>3)(sp)

  .ifc \__MODE__ , M
        mret
  .else
        sret
  .endif






common_\__MODE__\()int_handler:
        li x8, 1

        andi x7, x10, ((1<<5)-1)
        sll x8, x8, x7
        csrrc x9, CSR_XIE, x8
        csrrc x8, CSR_XIP, x8
sv_\__MODE__\()ip:
        sq x8, 2*(UDB_MXLEN>>3)(x6) ; beq x0, x0, 2f ; jal x7, failedtest_trap_x7_x9 ; .word sv_\__MODE__\()ip ; .word sv_\__MODE__\()ip_str ; .word CSR_XEPC ; 2: ;

        ; .option push ; .option norelax ; .option norvc ; .set immx, (0 & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((0)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x7, imm12 ; .else ; lui x7, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((0&((1 << 12)-1))!=0) ; addi x7, x7, imm12 ; .endif ; .endif ; .option pop
# 1592 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
spcl_\__MODE__\()handler:
        auipc x8, 0
        addi x8, x8, 15*4
        add x8, x8, x7
        slli x7, x10, 3
        add x8, x8, x7
        andi x8, x8, -8
        lq x8, 0(x8)
spcl_\__MODE__\()dispatch_handling:
        beqz x8, 1f
        slli x7, x8, UDB_MXLEN-1
        bge x7, x0, spcl_\__MODE__\()dispatch
        srli x8, x8,1
        beq x10, x8, resto_\__MODE__\()rtn
1:
        j abort_test

spcl_\__MODE__\()dispatch:
        jr x8
# 1622 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
        .align 3
clrint_\__MODE__\()tbl:
# 1658 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
        .dword 0
        .dword 1
        .dword 1
        .dword \__MODE__\()clr_Msw_int

        .dword 0
        .dword 1
        .dword 1
        .dword \__MODE__\()clr_Mtmr_int

        .dword 0
        .dword 1
        .dword 1
        .dword \__MODE__\()clr_Mext_int




 .rept 24 -0xC
        .dword 1
 .endr
 .rept UDB_MXLEN-24
        .dword 0
 .endr




excpt_\__MODE__\()hndlr_tbl:
 .set causeidx, 0
 .rept 24
        .dword causeidx*2+1
        .set causeidx, causeidx+1
 .endr
 .rept UDB_MXLEN-24
        .dword 0
 .endr
# 1708 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.pushsection .text.rvmodel, "ax"


\__MODE__\()clr_Msw_int:
        li x10, (0x02000000 + 0x0); sw zero, 0(x10);
        j resto_\__MODE__\()rtn

\__MODE__\()clr_Mtmr_int:
        li x10, -1
        # skip if 0x02004000 is not defined

                la x7, 0x02004000
                sq x10, 0(x7)




        j resto_\__MODE__\()rtn

\__MODE__\()clr_Mext_int:
        li x7, (1 << 11); li x10, (0xC000000 + 0x4); sw x7, 0(x10) ;


        j resto_\__MODE__\()rtn


\__MODE__\()clr_Ssw_int:

        .ifc \__MODE__ , M
            li x7, 2
            csrc mip, x7
            li x7, (1 << 1); li x10, (0xC000000 + 0x4); sw x7, 0(x10) ;
        .else
                .ifc \__MODE__ , S
                        li x7, 2
                        csrc sip, x7
                        li x7, (1 << 1); li x10, (0xC000000 + 0x4); sw x7, 0(x10) ;
                .else
                        li x7, 2
                        csrc sip, x7
                        li x7, (1 << 1); li x10, (0xC000000 + 0x4); sw x7, 0(x10) ;
                .endif
        .endif

        j resto_\__MODE__\()rtn

\__MODE__\()clr_Stmr_int:

        .ifc \__MODE__ , M
           
        .else
                .ifc \__MODE__ , S
                       
                .else
                       
                .endif
        .endif
        j resto_\__MODE__\()rtn

\__MODE__\()clr_Sext_int:
        li x7, (1 << 9); li x10, (0xC000000 + 0x4); sw x7, 0(x10) ;
        sq x8, 3*(UDB_MXLEN>>3)(x6) ; beq x0, x0, 2f ; jal x7, failedtest_trap_x7_x9 ; .word \__MODE__\()clr_Sext_int ; .word \__MODE__\()clr_Sext_int_str ; .word CSR_XEPC ; 2: ;
        j resto_\__MODE__\()rtn


\__MODE__\()clr_Vsw_int:
        j cleanup_epilogs
        j resto_\__MODE__\()rtn

\__MODE__\()clr_Vtmr_int:
        j cleanup_epilogs
        j resto_\__MODE__\()rtn

\__MODE__\()clr_Vext_int:
        j cleanup_epilogs
        sq x8, 3*(UDB_MXLEN>>3)(x6) ; beq x0, x0, 2f ; jal x7, failedtest_trap_x7_x9 ; .word \__MODE__\()clr_Vext_int ; .word \__MODE__\()clr_Vext_int_str ; .word CSR_XEPC ; 2: ;
        j resto_\__MODE__\()rtn

.popsection

.ifc \__MODE__ , M






\__MODE__\()rtn2mmode:
        csrr x7, 0x300
        srli x9, x7, 11
        andi x9, x9, MMODE_SIG
        addi x8, x9, -MMODE_SIG
        csrr x7, 0x341
        li x9, 0
        beqz x8, rtn_fm_mmode

        addi sp, sp, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))
# 1813 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
        csrr x7, 0x300

        slli x7, x7, 32 -1-7
        bgez x7, from_hs_u
from_vs:
        addi sp, sp, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))
        lq x11, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 0*8)+1*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))(sp)
        addi sp, sp, -(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))
        j 1f
from_hs_u:



        lq x11, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 0*8)-1*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))(sp)


1:
        csrr x7, 0x341
        sub x7, x7, x11
        addi sp, sp, -(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))
        lq x9, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 0*8)-0*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))(sp)
rtn_fm_mmode:
        add x7, x9, x7

        lq x6, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+1*(UDB_MXLEN>>3)(sp)

        lq x8, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+3*(UDB_MXLEN>>3)(sp)
        lq x9, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+4*(UDB_MXLEN>>3)(sp)
        lq x10, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+5*(UDB_MXLEN>>3)(sp)
        lq x11, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+6*(UDB_MXLEN>>3)(sp)
        lq sp, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+16*8)+7*(UDB_MXLEN>>3)(sp)
        jr 4(x7)



.endif




.ifc \__MODE__ , S

\__MODE__\()rtn2smode:
        csrr x8, CSR_XEPC
        addi x8, x8, 4
        csrw CSR_XEPC, x8
        ; .option push ; .option norelax ; .option norvc ; .set immx, (0x00000100UL & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((0x00000100UL)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x8, imm12 ; .else ; lui x8, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((0x00000100UL&((1 << 12)-1))!=0) ; addi x8, x8, imm12 ; .endif ; .endif ; .option pop
        csrs CSR_XSTATUS, x8
        j resto_\__MODE__\()rtn
.endif
.option pop
.endm
# 1875 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.macro RVTEST_TRAP_EPILOG __MODE__
.option push
.option norvc

        XCSR_RENAME \__MODE__
        ; .option push ; .option norelax ; .option norvc ; .set immx, (((UDB_MXLEN + 3* 24 + 9 + 5) * 4) & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((((UDB_MXLEN + 3* 24 + 9 + 5) * 4))>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x8, imm12 ; .else ; lui x8, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)&((1 << 12)-1))!=0) ; addi x8, x8, imm12 ; .endif ; .endif ; .option pop
exit_\__MODE__\()cleanup:

        csrr x6, mscratch
      .ifc \__MODE__ , H
        addi x6, x6, 1*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))
      .else
        .ifc \__MODE__ , S
          addi x6, x6, 2*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))
        .else
          .ifc \__MODE__ , V
             addi x6, x6, 1*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))
             addi x6, x6, 2*(((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8) + (16*8) + ( 8*(UDB_MXLEN>>3)) + ( 8*(UDB_MXLEN>>3)))
          .endif
        .endif
      .endif





resto_\__MODE__\()edeleg:
        lq x7, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+12*8)(x6)



.ifnc \__MODE__ , S
  .ifnc \__MODE__ , V
# 1916 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
  .endif
.endif


resto_\__MODE__\()satp:
        lq x7, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+ 9*8)(x6)
.ifc \__MODE__ , H
        csrw 0x680, x7
.else
  .ifc \__MODE__ , S
        csrw 0x180, x7
  .endif
        .endif


resto_\__MODE__\()scratch:
        lq x9, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+15*8)(x6)
        csrw CSR_XSCRATCH, x9


resto_\__MODE__\()xtvec:
        lq x9, (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)+14*8)(x6)
        csrrw x7, CSR_XTVEC, x9
        andi x9, x9, ~((32 >> 3)-1)
        andi x7, x7, ~((32 >> 3)-1)
        bne x9, x7, 1f



resto_\__MODE__\()tramp:
        addi x9, x6, ( 0*8)


resto_\__MODE__\()loop:
        lw x11, 0(x9)
        sw x11, 0(x7)
        addi x7, x7, (32 >> 3)
        addi x9, x9, (32 >> 3)
        blt x7, x8, resto_\__MODE__\()loop
  1:
        nop


.global rvtest_\__MODE__\()end
rvtest_\__MODE__\()end:






 .option pop
 .endm
# 1979 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_trap_handler.h"
.macro RVTEST_TRAP_SAVEAREA __MODE__

.option push
.option norvc
.global \__MODE__\()tramptbl_sv


\__MODE__\()tramptbl_sv:
.rept (((((UDB_MXLEN + 3* 24 + 9 + 5) * 4)+4) & -8)>>2)
        j .+0
.endr
\__MODE__\()save_area:
\__MODE__\()code_bgn_ptr: .dword rvtest_code_begin
\__MODE__\()code_seg_sz: .dword rvtest_code_end-rvtest_code_begin
\__MODE__\()data_bgn_ptr: .dword rvtest_data_begin
\__MODE__\()data_seg_sz: .dword rvtest_data_end-rvtest_data_begin
\__MODE__\()sig_bgn_ptr: .dword rvtest_sig_begin
\__MODE__\()sig_seg_sz: .dword rvtest_sig_end-rvtest_sig_begin
\__MODE__\()vmem_bgn_ptr: .dword rvtest_code_begin
\__MODE__\()vmem_seg_sz: .dword rvtest_code_end-rvtest_code_begin

\__MODE__\()trap_sig: .dword trap_sigptr
\__MODE__\()satp_sv: .dword 0
\__MODE__\()sved_misa:
\__MODE__\()sved_hgatp:
\__MODE__\()sved_mpp:
\__MODE__\()unused: .dword 0
\__MODE__\()tentry_sv: .dword \__MODE__\()trampoline + ((UDB_MXLEN + 3* 24 + 9 + 5) * 4)
\__MODE__\()edeleg_sv: .dword 0
\__MODE__\()tvec_new: .dword 0
\__MODE__\()tvec_save: .dword 0
\__MODE__\()scratch_save: .dword 0
\__MODE__\()trapreg_sv: .fill 8, (UDB_MXLEN>>3), 0xdeadbeef

\__MODE__\()rvmodel_sv: .fill 8, (UDB_MXLEN>>3), 0xdeadbeef
\__MODE__\()sv_area_end:

.option pop
.endm
# 22 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2
# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_failure_code.h" 1
# failure_code.h
# riscv-arch-test assembly test failure handling code
# Jordan Carlin jcarlin@hmc.edu October 2025
# SPDX-License-Identifier: Apache-2.0



.macro RVTEST_FAILURE_CODE
    # Log failure. x5 (x5) contains return address of jal from the failure and x4 (x4) is a vacant temporary register
    failedtest_x5_x4:
        la x4, begin_failure_scratch
        sq x5, 40(x4) # store return address
        sq x1, 8(x4) # save x1 early (used for failure_type)
        sw zero, 0(x4) # failure_type = 0 (integer)
        j failedtest_saveregs

    # Log failure. x8 contains return address of jal from the failure and x7 is a vacant temporary register
    failedtest_x8_x7:
        la x7, begin_failure_scratch
        sq x8, 64(x7) # store return address
        sq x4, 32(x7) # save x4
        sq x5, 40(x7) # save x5
        sq x1, 8(x7) # save x1 early
        sw zero, 0(x7) # failure_type = 0 (integer)
        mv x4, x7 # move scratch base into x4
        mv x5, x8 # move return address into x5
        # now x5 has the return address of jal from the failure and x4 is a vacant temporary register.
        j failedtest_saveregs

    # Log failure. x13 contains return address of jal from the failure and x12 is a vacant temporary register
    failedtest_x13_x12:
        la x12, begin_failure_scratch
        sq x13, 104(x12) # store return address
        sq x4, 32(x12) # save x4
        sq x5, 40(x12) # save x5
        sq x1, 8(x12) # save x1 early
        sw zero, 0(x12) # failure_type = 0 (integer)
        mv x4, x12 # move scratch base into x4
        mv x5, x13 # move return address into x5
        # now x5 has the return address of jal from the failure and x4 is a vacant temporary register.
        j failedtest_saveregs

    # Log failure. x7 contains return address of jal from the failure and x9 is a vacant temporary register
    failedtest_trap_x7_x9:
        la x9, begin_failure_scratch
        sq x7, 104(x9) # store return address
        sq x4, 32(x9) # save x4
        sq x5, 40(x9) # save x5
        sq x1, 8(x9) # save x1 early
        li x1, 3
        sw x1, 0(x9) # failure_type = 3 (trap handler)
        mv x4, x9 # move scratch base into x4
        mv x5, x7 # move return address into x5
        # now x5 has the return address of jal from the failure and x4 is a vacant temporary register.
        j failedtest_saveregs
# 273 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_failure_code.h"
    # for the rest of this code, x5 contains return address of jal from the failure, x4 points to scratch space
    failedtest_saveregs:
        # x1 has already been saved by all entry points
        sq x2, 16(x4)
        sq x3, 24(x4)
        # sq x4, 32(x4)
        # sq x5, 40(x4)
        # x4 and x5 have already been saved if relevant (default temp and link regs)
        sq x6, 48(x4)
        sq x7, 56(x4)
        sq x8, 64(x4)
        sq x9, 72(x4)
        sq x10, 80(x4)
        sq x11, 88(x4)
        sq x12, 96(x4)
        sq x13, 104(x4)
        sq x14, 112(x4)
        sq x15, 120(x4)
        sq x16, 128(x4)
        sq x17, 136(x4)
        sq x18, 144(x4)
        sq x19, 152(x4)
        sq x20, 160(x4)
        sq x21, 168(x4)
        sq x22, 176(x4)
        sq x23, 184(x4)
        sq x24, 192(x4)
        sq x25, 200(x4)
        sq x26, 208(x4)
        sq x27, 216(x4)
        sq x28, 224(x4)
        sq x29, 232(x4)
        sq x30, 240(x4)
        sq x31, 248(x4)
# 375 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_failure_code.h"
    failedtest_saveresults:
        # Dispatch based on failure type
        lw x9, failure_type
# 389 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_failure_code.h"
    failedtest_saveresults_int:
        # --- INTEGER (type 0): extract info from beq and load instructions ---
        # Reconstruct and extract information from the beq
        # branch might be on 16-byte boundary, so fetch with halfword
        lhu x6, -6(x5) # get upper half of the beq that compared good and bad registers
        lhu x7, -8(x5) # get lower half of the beq
        slli x6, x6, 16 # reassemble beq
        or x6, x6, x7
        # extract rs1 and rs2 from branch (beq format: rs2[24:20] rs1[19:15])
        srli x7, x6, 15
        andi x7, x7, 31 # x7 = rs1 of branch
        srli x8, x6, 20
        andi x8, x8, 31 # x8 = rs2 of branch
        sw x8, 260(x4) # record id of failing register (rs2 of beq)
        # save bad value from rs2
        slli x6, x8, 3 # rs2 * 8
        add x6, x4, x6 # address of scratch memory containing rs2
        lq x6, 0(x6) # value of rs2 (bad result of operation)
        sq x6, 272(x4) # record bad value

        # Reconstruct and extract information from the load
        # The ld loads from an offset of a base register, extract base register and offset
        lhu x6, -10(x5) # get upper half of the ld instruction
        lhu x7, -12(x5) # get lower half of the ld
        slli x6, x6, 16 # reassemble ld
        or x6, x6, x7
        # ld format: imm[11:0] at bits [31:20], rs1 at bits [19:15]
        srai x7, x6, 20 # extract immediate (sign-extended)
        srli x6, x6, 15
        andi x6, x6, 31 # extract rs1 (base register)
        # Load the value of the sigptr register from saved state
        slli x6, x6, 3 # rs1 * 8
        add x6, x4, x6 # address of sigptr register
        lq x6, 0(x6) # get sigptr register value
        add x6, x6, x7 # sigptr + offset = address of expected value
        lq x6, 0(x6) # load expected value
        sq x6, 280(x4) # record expected value
        j failedtest_saveresults_common
# 722 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_failure_code.h"
    failedtest_saveresults_common:
        # After the jal instruction there are two XLEN-sized pointers: the instruction address and the test string pointer
        # The jal returns to x5, which points to the data after jal (i.e., the first pointer itself)

        # Save failing address (loaded from embedded instruction pointer after jal)
        # Only guaranteed to be 4-byte aligned, so need to load in 4-byte chunks on rv64

        lwu x6, 0(x5) # load lower 32 bits of instruction address
        lw x7, 4(x5) # load upper 32 bits
        slli x7, x7, 32
        or x6, x6, x7 # combine into 64-bit value



        sq x6, 264(x4)

        # Fetch the failing instruction using INSTR_PTR address
        # Check bottom 2 bits: if inst[1:0] != 0b11, it's a 16-bit compressed instruction
        lhu x7, 0(x6) # get lower half of the failing instruction
        andi x8, x7, 3
        li x9, 3
        bne x8, x9, 1f # compressed: only lower half needed
        lhu x8, 2(x6) # 32-bit: fetch upper half
        slli x8, x8, 16
        or x7, x7, x8
    1:
        sw x7, 256(x4) # record failing instruction (16 or 32 bits)

        # Get pointer to failure string (loaded from second embedded pointer after jal)
        # Only guaranteed to be 4-byte aligned, so need to load in 4-byte chunks on rv64

        lwu x6, (UDB_MXLEN>>3)(x5) # load lower 32 bits of string pointer
        lw x7, (UDB_MXLEN>>3)+4(x5) # load upper 32 bits
        slli x7, x7, 32
        or x6, x6, x7 # combine into 64-bit value



        sq x6, 288(x4) # save the string pointer

    failedtest_report:
      print_failstr:
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,failstr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str

        # Print test name string
      print_testnamestr:
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,testnamestr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str
      print_failure_test_name_str:
        lq a0, failure_string_ptr
        call rvmodel_io_write_str
      print_newline_str:
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,newlinestr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str

        # Trap abort sentinel: skip instruction/address/register/value fields
        lq a0, failing_value
        ; .option push ; .option norelax ; .option norvc ; .set immx, (0xBAD0DEAD & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((0xBAD0DEAD)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li a1, imm12 ; .else ; lui a1, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((0xBAD0DEAD&((1 << 12)-1))!=0) ; addi a1, a1, imm12 ; .endif ; .endif ; .option pop
        beq a0, a1, failedtest_report_traphandler

        # Print failing instruction (detect 16-bit compressed vs 32-bit)
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,inststr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str
        lw a0, failing_instruction
        li a1, 32 # assume 32-bit instruction
        andi a2, a0, 3
        li a3, 3
        beq a2, a3, 2f
        li a1, 16 # compressed: print as 16-bit
    2:
        jal failedtest_hex_to_str
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,ascii_buffer ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str

        # Print failing address (XLEN-bit)
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,addrstr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str
        lq a0, failing_addr
        li a1, 64
        jal failedtest_hex_to_str
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,ascii_buffer ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str

        # Print failing register — "x<N>" for int, "f<N>" for FP, "fflags" for fflags, "v<N>" for vector
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,regstr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str
        lw a0, failure_type
        beqz a0, 1f
        li a1, 3 # Trap handler also uses int regs
        bne a0, a1, failedtest_report_not_intreg
        # Integer: write "x" + decimal register number
        1:
        li a1, 'x'
        ; .ifnc(a2, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a2,ascii_buffer ; .align 5 ; .option pop ; .endif
        sb a1, 0(a2)
        addi a2, a2, 1
        lw a0, failing_reg
        jal failedtest_dec_to_str
        j failedtest_report_print_regstr
    failedtest_report_not_intreg:
        li a1, 1
        beq a0, a1, failedtest_report_fpreg
        li a1, 4
        beq a0, a1, failedtest_report_vecreg
        # fflags: print "fflags\n"
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,fflagsstr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str
        j failedtest_report_after_reg
    failedtest_report_fpreg:
        # FP: write "f" + decimal register number
        li a1, 'f'
        ; .ifnc(a2, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a2,ascii_buffer ; .align 5 ; .option pop ; .endif
        sb a1, 0(a2)
        addi a2, a2, 1
        lw a0, failing_reg
        jal failedtest_dec_to_str
        j failedtest_report_print_regstr
    failedtest_report_vecreg:
        li a1, 'v'
        ; .ifnc(a2, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a2,ascii_buffer ; .align 5 ; .option pop ; .endif
        sb a1, 0(a2)
        addi a2, a2, 1
        lw a0, failing_reg
        jal failedtest_dec_to_str
    failedtest_report_print_regstr:
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,ascii_buffer ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str
    failedtest_report_after_reg:
# 996 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_failure_code.h"
        # Print failing value — type-aware
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,badvalstr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str
        lw a0, failure_type
        li a1, 1
        bne a0, a1, failedtest_report_badval_not_fp






        # FP with 0 <= XLEN (or 0 not defined): standard hex
        lq a0, failing_value
        li a1, 64
        jal failedtest_hex_to_str

        j failedtest_report_badval_done
    failedtest_report_badval_not_fp:
        # Integer or fflags: standard XLEN-bit hex
        lq a0, failing_value
        li a1, 64
        jal failedtest_hex_to_str
    failedtest_report_badval_done:
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,ascii_buffer ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str

        # Print expected value — type-aware
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,expvalstr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str
        lw a0, failure_type
        li a1, 1
        bne a0, a1, failedtest_report_expval_not_fp






        # FP with 0 <= XLEN (or 0 not defined): standard hex
        lq a0, expected_value
        li a1, 64
        jal failedtest_hex_to_str

        j failedtest_report_expval_done
    failedtest_report_expval_not_fp:
        # Integer or fflags: standard XLEN-bit hex
        lq a0, expected_value
        li a1, 64
        jal failedtest_hex_to_str
    failedtest_report_expval_done:
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,ascii_buffer ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str

    failedtest_report_traphandler:
        lw a0, failure_type
        li a1, 3 # Failed in trap handler
        bne a0, a1, failedtest_report_end
    failedtest_report_xepc:
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,xepcstr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str
        # Load CSR_XEPC (12-bit CSR addr) placed after STR_PTR
        lhu x6, 2*(UDB_MXLEN>>3)(x5)
        ; .option push ; .option norelax ; .option norvc ; .set immx, (0x341 & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((0x341)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x7, imm12 ; .else ; lui x7, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((0x341&((1 << 12)-1))!=0) ; addi x7, x7, imm12 ; .endif ; .endif ; .option pop
        bne x6, x7, 1f
        csrr a0, mepc
        j 2f
        1:
        csrr a0, sepc
        2:
        li a1, 64
        jal failedtest_hex_to_str
        mv a2, a0 # move xepc
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,ascii_buffer ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str
    failedtest_report_xepc_instr:
        # Print instruction at xepc
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,xepcinstrstr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str
        # Check if its a compressed instruction
        lhu a0, 0(a2) # load lower half of instruction at xepc
        li a1, 16
        andi x8, a0, 3
        li x9, 3
        bne x8, x9, 1f # compressed: only lower half needed
        lhu x8, 2(a2)
        slli x8, x8, 16
        or a0, a0, x8
        li a1, 32
        1:
        jal failedtest_hex_to_str
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,ascii_buffer ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str

    failedtest_report_end:
        # Print end string
        ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,endstr ; .align 5 ; .option pop ; .endif
        call rvmodel_io_write_str

    failedtest_terminate:
        call rvmodel_halt_fail


    # Convert hex number to ASCII string and store result in ascii_buffer
    # a0: value to convert
    # a1: number of bits (32 or 64)
    failedtest_hex_to_str:
        ; .ifnc(a2, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a2,ascii_buffer ; .align 5 ; .option pop ; .endif # buffer pointer
        ; .option push ; .option norelax ; .option norvc ; .set immx, ('0' & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, (((('0')>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li a3, imm12 ; .else ; lui a3, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if (('0'&((1 << 12)-1))!=0) ; addi a3, a3, imm12 ; .endif ; .endif ; .option pop
        sb a3, 0(a2) # write '0'
        ; .option push ; .option norelax ; .option norvc ; .set immx, ('x' & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, (((('x')>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li a3, imm12 ; .else ; lui a3, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if (('x'&((1 << 12)-1))!=0) ; addi a3, a3, imm12 ; .endif ; .endif ; .option pop
        sb a3, 1(a2) # write 'x'
        addi a2, a2, 2 # move past "0x"
        mv a3, a1 # a3 = bit count
    failedtest_hex_to_str_loop:
        addi a3, a3, -4 # move to next nibble
        srl a4, a0, a3 # shift nibble to bottom
        andi a4, a4, 15 # mask to get nibble

        # Convert nibble to ASCII
        ; .option push ; .option norelax ; .option norvc ; .set immx, (10 & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((10)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li a5, imm12 ; .else ; lui a5, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((10&((1 << 12)-1))!=0) ; addi a5, a5, imm12 ; .endif ; .endif ; .option pop
        blt a4, a5, failedtest_hex_to_str_digit
        # It's a letter (A-F)
        addi a4, a4, 87 # 'a' - 10 = 87
        j failedtest_hex_to_str_write
    failedtest_hex_to_str_digit:
        # It's a digit (0-9)
        addi a4, a4, 48 # '0' = 48
    failedtest_hex_to_str_write:
        sb a4, 0(a2) # write character to buffer
        addi a2, a2, 1 # advance buffer pointer
        bnez a3, failedtest_hex_to_str_loop

        # Add newline and null terminator
        ; .option push ; .option norelax ; .option norvc ; .set immx, (10 & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((10)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li a3, imm12 ; .else ; lui a3, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((10&((1 << 12)-1))!=0) ; addi a3, a3, imm12 ; .endif ; .endif ; .option pop # '\n'
        sb a3, 0(a2)
        sb zero, 1(a2) # null terminator

        ret


    # Convert register number (0-31) to decimal string with newline
    # a0: register number (0-31)
    # a2: buffer pointer (writes digits + '\n' + '\0')
    failedtest_dec_to_str:
        li a3, 10
        blt a0, a3, 1f # single digit
        addi a0, a0, -10
        li a4, '1'
        blt a0, a3, 2f
        addi a0, a0, -10
        li a4, '2'
        blt a0, a3, 2f
        addi a0, a0, -10
        li a4, '3'
    2: sb a4, 0(a2) # tens digit
        addi a2, a2, 1
    1: addi a0, a0, '0' # ones digit
        sb a0, 0(a2)
        li a3, 10 # '\n'
        sb a3, 1(a2)
        sb zero, 2(a2) # null terminator
        ret
# 1211 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_failure_code.h"
.endm



.macro RVTEST_FAILURE_DATA
    .data
    .align 4
    failure_type: # 0=int, 1=fp, 2=fflags (reuses x0 slot at offset 0), 3=trap handler, 4=vector
    begin_failure_scratch:
        .fill 64, 4, 0xfeedf00dbaaaaaad
    failing_instruction:
        .fill 1, 4, 0xfeedf00d
    failing_reg:
        .fill 1, 4, 0xbaaaaaad
    failing_addr:
        .fill 2, 4, 0xfeedf00dbaaaaaad
    failing_value:
        .fill 2, 4, 0xfeedf00dbaaaaaad
    expected_value:
        .fill 2, 4, 0xfeedf00dbaaaaaad
    failure_string_ptr:
        .fill 2, 4, 0xfeedf00dbaaaaaad
# 1255 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_failure_code.h"
    ascii_buffer:
        .fill 40, 1, 0 # Buffer for hex string conversion (max "0x" + 16 + 16 + "\n" + null)
    end_failure_scratch:

    successstr:
# 1268 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_failure_code.h"
            .ascii "\nRVCP-SUMMARY: TEST SIGRUN - Test File \""

        .ascii "I-add-00.S"
        .asciz "\"\n\n"
    failstr:
        .ascii "\nRVCP-SUMMARY: TEST FAILED - Test File \""
        .ascii "I-add-00.S"
        .asciz "\"\nRVCP: DEBUG INFORMATION FOLLOWS\n"
    abortstr:
        .string "\"The trap handler aborted the test before normal completion!\"";
    testnamestr:
        .string "RVCP: Test Info: "
    newlinestr:
        .string "\n"
    inststr:
        .string "RVCP: Instruction: "


    addrstr:
        .string "RVCP: Approximate address (failure may be slightly after this): "
    xepcstr:
        .string "RVCP: Address of instruction that trapped (XEPC): "
    xepcinstrstr:
        .string "RVCP: Instruction that trapped: "
    trap_sig_offset_mismatch:
        .string "\"Mismatch in trap signature pointer offset! The test likely observed an incorrect number of traps.\"";
    sv_Mvect_str:
        .string "\"Mismatch in trap signature! Trap was being handled in M-Mode.\"";
    sv_Svect_str:
        .string "\"Mismatch in trap signature! Trap was being handled in S-Mode.\"";
    sv_Hvect_str:
        .string "\"Mismatch in trap signature! Trap was being handled in HS-Mode.\"";
    sv_Vvect_str:
        .string "\"Mismatch in trap signature! Trap was being handled in VS-Mode.\"";
    sv_Mcause_str:
        .string "\"Mismatch in mcause value! Trap was being handled in M-Mode.\"";
    sv_Scause_str:
        .string "\"Mismatch in scause value! Trap was being handled in S-Mode.\"";
    sv_Hcause_str:
        .string "\"Mismatch in scause value! Trap was being handled in HS-Mode.\"";
    sv_Vcause_str:
        .string "\"Mismatch in vscause value! Trap was being handled in VS-Mode.\"";
    sv_Mepc_str:
        .string "\"Mismatch in mepc value! Trap was being handled in M-Mode.\"";
    sv_Sepc_str:
        .string "\"Mismatch in sepc value! Trap was being handled in S-Mode.\"";
    sv_Hepc_str:
        .string "\"Mismatch in sepc value! Trap was being handled in HS-Mode.\"";
    sv_Vepc_str:
        .string "\"Mismatch in vsepc value! Trap was being handled in VS-Mode.\"";
    sv_Mtval_str:
        .string "\"Mismatch in mtval value! Trap was being handled in M-Mode.\"";
    sv_Stval_str:
        .string "\"Mismatch in stval value! Trap was being handled in S-Mode.\"";
    sv_Htval_str:
        .string "\"Mismatch in stval value! Trap was being handled in HS-Mode.\"";
    sv_Vtval_str:
        .string "\"Mismatch in vstval value! Trap was being handled in VS-Mode.\"";
    sv_Mtval2_str:
        .string "\"Mismatch in mtval2 value! Trap was being handled in M-Mode.\"";
    sv_Mtinst_str:
        .string "\"Mismatch in mtinst value! Trap was being handled in M-Mode.\"";
    sv_Mip_str:
        .string "\"Mismatch in mip value! Trap was being handled in M-Mode.\"";
    sv_Sip_str:
        .string "\"Mismatch in sip value! Trap was being handled in S-Mode.\"";
    sv_Hip_str:
        .string "\"Mismatch in hip value! Trap was being handled in HS-Mode.\"";
    sv_Vip_str:
        .string "\"Mismatch in vsip value! Trap was being handled in VS-Mode.\"";
    Mclr_Mext_int_str:
        .string "\"Mismatch in machine external interrupt ID! Trap was being handled in M-Mode.\"";
    Mclr_Sext_int_str:
        .string "\"Mismatch in supervisor external interrupt ID! Trap was being handled in M-Mode.\"";
    Mclr_Vext_int_str:
        .string "\"Mismatch in virtual supervisor external interrupt ID! Trap was being handled in M-Mode.\"";
    Sclr_Mext_int_str:
        .string "\"Mismatch in machine external interrupt ID! Trap was being handled in S-Mode.\"";
    Sclr_Sext_int_str:
        .string "\"Mismatch in supervisor external interrupt ID! Trap was being handled in S-Mode.\"";
    Sclr_Vext_int_str:
        .string "\"Mismatch in virtual supervisor external interrupt ID! Trap was being handled in S-Mode.\"";
    Hclr_Mext_int_str:
        .string "\"Mismatch in machine external interrupt ID! Trap was being handled in HS-Mode.\"";
    Hclr_Sext_int_str:
        .string "\"Mismatch in supervisor external interrupt ID! Trap was being handled in HS-Mode.\"";
    Hclr_Vext_int_str:
        .string "\"Mismatch in virtual supervisor external interrupt ID! Trap was being handled in HS-Mode.\"";
    Vclr_Mext_int_str:
        .string "\"Mismatch in machine external interrupt ID! Trap was being handled in VS-Mode.\"";
    Vclr_Sext_int_str:
        .string "\"Mismatch in supervisor external interrupt ID! Trap was being handled in VS-Mode.\"";
    Vclr_Vext_int_str:
        .string "\"Mismatch in virtual supervisor external interrupt ID! Trap was being handled in VS-Mode.\"";
# 1382 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_failure_code.h"
    regstr:
        .string "RVCP: Register: "
    badvalstr:
        .string "RVCP: Bad Value:      "
    expvalstr:
        .string "RVCP: Expected Value: "
    endstr:
        .string "RVCP: END OF DEBUG INFORMATION\n\n"
    fflagsstr:
        .string "fflags\n"
    canary_mismatch:
        .string "Testcase signature canary mismatch!"
.endm
# 23 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2
# 1 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h" 1
# test_setup.h
# Main riscv-arch-test test macros
# Jordan Carlin jcarlin@hmc.edu October 2025, Sadhvi Narayanan sanarayanan@hmc.edu February 2026
# SPDX-License-Identifier: BSD-3-Clause
# 14 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
.macro

  .section .text.init
  .global rvtest_entry_point
  rvtest_entry_point:







  .option push
  .option norelax



  .option push
  .option rvc
  .align 5
  .option norvc



  ; .ifnc(ra, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la ra,rvmodel_boot ; .align 5 ; .option pop ; .endif
  jalr ra
# 48 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
  .section .text.rvtest



  .global rvtest_code_begin
  rvtest_code_begin:

  .option pop
.endm
# 68 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
.macro RVTEST_CODE_END

  .option push
  .option norvc
  .global rvtest_code_end
  .global cleanup_epilogs






  rvtest_code_end:





  cleanup_epilogs:
# 116 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
  exit_cleanup:
    ; .ifnc(a0, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la a0,successstr ; .align 5 ; .option pop ; .endif
    call rvmodel_io_write_str
    call rvmodel_halt_pass


  abort_test:
    ; .option push ; .option norelax ; .option norvc ; .set immx, (0xBAD0DEAD & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((0xBAD0DEAD)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x10, imm12 ; .else ; lui x10, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((0xBAD0DEAD&((1 << 12)-1))!=0) ; addi x10, x10, imm12 ; .endif ; .endif ; .option pop
    j cleanup_epilogs
# 135 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
  RVTEST_FAILURE_CODE







  .pushsection .text.rvmodel,"ax",@progbits

  rvmodel_boot:







    RVTEST_BOOT_TO_MMODE
# 200 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
    RVTEST_INIT_REGS

    ; .ifnc(x6, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la x6,rvtest_code_begin ; .align 5 ; .option pop ; .endif
    jr x6

  rvmodel_io_write_str:

    1: ; lbu x6, 0(a0) ; beqz x6, 3f ; 2: ; la x7, tohost ; sw x6, 0(x7) ; li x6, 0x01010000 ; sw x6, 4(x7) ; addi a0, a0, 1 ; j 1b ; 3:
    ret

  rvmodel_halt_pass:
    li x1, 1 ; la t0, tohost ; write_tohost_pass: ; sw x1, 0(t0) ; sw x0, 4(t0) ; j write_tohost_pass ;
    j .

  rvmodel_halt_fail:
    li x1, 3 ; la t0, tohost ; write_tohost_fail: ; sw x1, 0(t0) ; sw x0, 4(t0) ; j write_tohost_fail ;
    j .
# 259 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
  nop

  .popsection

  .option pop


  .option pop
.endm
# 277 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
.macro RVTEST_DATA_BEGIN




  .data
  .align 8
  scratch:
    .dword 0xDEAD0001FFFEBEEF, 0xDEAD0002FFFDBEEF
    .dword 0xDEAD0003FFFCBEEF, 0xDEAD0004FFFBBEEF
    .dword 0xDEAD0005FFFABEEF, 0xDEAD0006FFF9BEEF
    .dword 0xDEAD0007FFF8BEEF, 0xDEAD0008FFF7BEEF
    .dword 0xDEAD0009FFF6BEEF, 0xDEAD000AFFF5BEEF
    .dword 0xDEAD000BFFF4BEEF, 0xDEAD000CFFF3BEEF
    .dword 0xDEAD000DFFF2BEEF, 0xDEAD000EFFF1BEEF
    .dword 0xDEAD000FFFF0BEEF, 0xDEAD0010FFEFBEEF
    .dword 0xDEAD0011FFEEBEEF, 0xDEAD0012FFEDBEEF
    .dword 0xDEAD0013FFECBEEF, 0xDEAD0014FFEBBEEF
    .dword 0xDEAD0015FFEABEEF, 0xDEAD0016FFE9BEEF
    .dword 0xDEAD0017FFE8BEEF, 0xDEAD0018FFE7BEEF
    .dword 0xDEAD0019FFE6BEEF, 0xDEAD001AFFE5BEEF
    .dword 0xDEAD001BFFE4BEEF, 0xDEAD001CFFE3BEEF
    .dword 0xDEAD001DFFE2BEEF, 0xDEAD001EFFE1BEEF
    .dword 0xDEAD001FFFE0BEEF, 0xDEAD0020FFDFBEEF
    .dword 0xDEAD0021FFDEBEEF

  .align 4
# 314 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
  .align 4
  .global rvtest_data_begin
  rvtest_data_begin:
.endm
# 326 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
.macro RVTEST_DATA_END
# 344 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
  RVTEST_FAILURE_DATA


  .global rvtest_data_end
  rvtest_data_end:
.endm
# 359 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
.macro RVTEST_SIG_SETUP
  .align 4
  .global begin_signature
  begin_signature:
  .global rvtest_sig_begin
  rvtest_sig_begin:
# 375 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
      signature_base:
        .dword 0x6F5CA309E7D4B281

        .fill 522*((64>>3)>>2),4,0xdeadbeef


      tsig_begin_canary:
        .dword 0xD3A91F6C8B47E25D

      trap_sigptr:
          .fill 15000*((64>>3)>>2),4,0xdeadbeef


      sig_end_canary:
        .dword 0x6F5CA309E7D4B281


  .align 4
  .global rvtest_sig_end
  rvtest_sig_end:
  .global end_signature
  end_signature:




  .pushsection .tohost,"aw",@progbits; .align 8; .global tohost; tohost: .dword 0; .align 8; .global fromhost; fromhost: .dword 0; .popsection
.endm







.macro RVTEST_BOOT_TO_MMODE




    rvtest_boot_to_mmode:
# 647 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
  INIT_FLOAT_VECTOR_STATE
.endm





.macro RVTEST_BOOT_TO_SMODE







    rvtest_boot_to_smode:
# 693 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
    li t0, 0x0FCB5FF
    li t0, 0x0FCB0FF # *** dh 4/24/26 temporary don't delegate any ecalls until SBI forwarding is implemented
    csrw medeleg, t0
# 709 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
    li t0, 0x3666
    csrw mideleg, t0
# 736 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
    li t0, -1
    csrw scounteren, t0
# 749 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
    li t0, 0x00000030UL | 0x00000040UL | 0x00000080UL
    csrw senvcfg, t0


    # RVMODEL_GOTO_LOWER_MODE SMODE

.endm




.macro RVTEST_BOOT_TO_UMODE






    rvtest_boot_to_umode:
# 776 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
  nop
.endm




.macro INIT_FLOAT_VECTOR_STATE
# 799 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/rvtest_setup.h"
.endm





.macro DBLSHIFTR dstreg, oldreg, tmpreg, shamt
        slli \tmpreg\(), \oldreg\(), UDB_MXLEN-\shamt
        srli \dstreg\(), \oldreg\(), \shamt
        or \dstreg\(), \dstreg\(), \tmpreg\()
.endm




.macro RVTEST_INIT_REGS

  rvtest_init_regs:


    ; .option push ; .option norelax ; .option norvc ; .set immx, ((0x7D5BFDDB7D5BFDDB & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, (((((0x7D5BFDDB7D5BFDDB & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))))>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x16, imm12 ; .else ; lui x16, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if (((0x7D5BFDDB7D5BFDDB & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1))))&((1 << 12)-1))!=0) ; addi x16, x16, imm12 ; .endif ; .endif ; .option pop
    DBLSHIFTR x17, x16, x15, 7
    DBLSHIFTR x18, x17, x15, 7
    DBLSHIFTR x19, x18, x15, 7
    DBLSHIFTR x20, x19, x15, 7
    DBLSHIFTR x21, x20, x15, 7
    DBLSHIFTR x22, x21, x15, 7
    DBLSHIFTR x23, x22, x15, 7
    DBLSHIFTR x24, x23, x15, 7
    DBLSHIFTR x25, x24, x15, 7
    DBLSHIFTR x26, x25, x15, 7
    DBLSHIFTR x27, x26, x15, 7
    DBLSHIFTR x28, x27, x15, 7
    DBLSHIFTR x29, x28, x15, 7
    DBLSHIFTR x30, x29, x15, 7
    DBLSHIFTR x31, x30, x15, 7

    ; .option push ; .option norelax ; .option norvc ; .set immx, ((0xFEEDBEADFEEDBEAD & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, (((((0xFEEDBEADFEEDBEAD & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))))>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x1, imm12 ; .else ; lui x1, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if (((0xFEEDBEADFEEDBEAD & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1))))&((1 << 12)-1))!=0) ; addi x1, x1, imm12 ; .endif ; .endif ; .option pop
    DBLSHIFTR x2, x1, x15, 7
    DBLSHIFTR x3, x2, x15, 7
    DBLSHIFTR x4, x3, x15, 7
    DBLSHIFTR x5, x4, x15, 7
    DBLSHIFTR x6, x5, x15, 7
    DBLSHIFTR x7, x6, x15, 7
    DBLSHIFTR x8, x7, x15, 7
    DBLSHIFTR x9, x8, x15, 7
    DBLSHIFTR x10, x9, x15, 7
    DBLSHIFTR x11, x10, x15, 7
    DBLSHIFTR x12, x11, x15, 7
    DBLSHIFTR x13, x12, x15, 7
    DBLSHIFTR x14, x13, x15, 7
    ; .option push ; .option norelax ; .option norvc ; .set immx, ((0xFAB7FBB6FAB7FBB6 & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, (((((0xFAB7FBB6FAB7FBB6 & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))))>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x15, imm12 ; .else ; lui x15, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if (((0xFAB7FBB6FAB7FBB6 & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1))))&((1 << 12)-1))!=0) ; addi x15, x15, imm12 ; .endif ; .endif ; .option pop


    ; .ifnc(x2, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la x2,signature_base ; .align 5 ; .option pop ; .endif


    canary_check:
    ; .option push ; .option norelax ; .option norvc ; .set immx, (0x6F5CA309E7D4B281 & (((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set absimm, ((immx^(-(((immx)>>(UDB_MXLEN-1))&1)))&(((1<<(UDB_MXLEN-1))-1) + (1<<(UDB_MXLEN-1)))) ; .set cry, ((((0x6F5CA309E7D4B281)>>((12 -1)))&1)) ; .set imm12, (((immx & ((1 << 12)-1)) | (-((((immx))>>((12 -1)))&1)<< 12))) ; .if ((absimm>>(12 -1))==0) ; li x6, imm12 ; .else ; lui x6, (((immx>>12)+cry) & ((1 <<(32 - 12))-1)) ; .if ((0x6F5CA309E7D4B281&((1 << 12)-1))!=0) ; addi x6, x6, imm12 ; .endif ; .endif ; .option pop






      addi x2, x2, (64>>3)


      nop
      nop
      nop
      nop
      nop

        nop
        nop



    ; .ifnc(x3, X0) ; .option push ; .option rvc ; .align 5 ; .option norvc ; la x3,rvtest_data_begin ; .align 5 ; .option pop ; .endif
.endm
# 24 "/home/stelios/carv/BareMetal/sdk/testsuite/include/arch_env/riscv_arch_test.h" 2
# 29 "sdk/testsuite/arch/I-add-00.S" 2










 # Testcase cp_rs1 (Test source rs1 = x0)
  lq x0, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x0 = 0xab8f14e2795ba545
  lq x11, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x11 = 0x7cff6728488620d9
I_add_cg_cp_rs1_b0:
  add x28, x0, x11 # perform operation
  # Check if x28 contains the expected result. x2 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x2) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cp_rs1_b0 ; .word I_add_cg_cp_rs1_b0_str ; 1: ; addi x2, x2, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x1)
  lq x1, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x1 = 0x7175f3dfb907ad96
  lq x27, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x27 = 0x5112e764fe64f78f
I_add_cg_cp_rs1_b1:
  add x20, x1, x27 # perform operation
  # Check if x20 contains the expected result. x2 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x2) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cp_rs1_b1 ; .word I_add_cg_cp_rs1_b1_str ; 1: ; addi x2, x2, (64>>3) ; .option pop

  mv x31, x2 # switch signature pointer register to avoid conflict with test
# Testcase cp_rs1 (Test source rs1 = x2)
  lq x2, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x2 = 0x155b413507582920
  lq x16, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x16 = 0xf103a60caefe3c9c
I_add_cg_cp_rs1_b2:
  add x15, x2, x16 # perform operation
  # Check if x15 contains the expected result. x31 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x31) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cp_rs1_b2 ; .word I_add_cg_cp_rs1_b2_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

  mv x27, x3 # switch data pointer register to avoid conflict with test
# Testcase cp_rs1 (Test source rs1 = x3)
  lq x3, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x3 = 0x7e33e4f817e54095
  lq x18, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x18 = 0x1ca9bae717c499e3
I_add_cg_cp_rs1_b3:
  add x15, x3, x18 # perform operation
  # Check if x15 contains the expected result. x31 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x31) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cp_rs1_b3 ; .word I_add_cg_cp_rs1_b3_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

  mv x7, x4 # switch temp register to avoid conflict with test
  mv x8, x5 # switch link pointer register to avoid conflict with test
# Testcase cp_rs1 (Test source rs1 = x4)
  lq x4, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x4 = 0x32c0b170ea8550ff
  lq x26, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x26 = 0xf8934f2d06587591
I_add_cg_cp_rs1_b4:
  add x24, x4, x26 # perform operation
  # Check if x24 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b4 ; .word I_add_cg_cp_rs1_b4_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x5)
  lq x5, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x5 = 0x876240f5f1f178b8
  lq x14, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x14 = 0xba52de6df5f9fb86
I_add_cg_cp_rs1_b5:
  add x28, x5, x14 # perform operation
  # Check if x28 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b5 ; .word I_add_cg_cp_rs1_b5_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x6)
  lq x6, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x6 = 0x7f38d749b9be7a75
  lq x18, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x18 = 0x2d5aee8bca6058fd
I_add_cg_cp_rs1_b6:
  add x24, x6, x18 # perform operation
  # Check if x24 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b6 ; .word I_add_cg_cp_rs1_b6_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

  mv x12, x7 # switch temp register to avoid conflict with test
  mv x13, x8 # switch link pointer register to avoid conflict with test
# Testcase cp_rs1 (Test source rs1 = x7)
  lq x7, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x7 = 0x7a516a4a8872b9c7
  lq x22, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x22 = 0x28c9c0060c2d9615
I_add_cg_cp_rs1_b7:
  add x30, x7, x22 # perform operation
  # Check if x30 contains the expected result. x31 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x31) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rs1_b7 ; .word I_add_cg_cp_rs1_b7_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x8)
  lq x8, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x8 = 0xb57e79ab184d2958
  lq x5, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x5 = 0xa9463b9a8f865f5c
I_add_cg_cp_rs1_b8:
  add x4, x8, x5 # perform operation
  # Check if x4 contains the expected result. x31 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x31) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rs1_b8 ; .word I_add_cg_cp_rs1_b8_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x9)
  lq x9, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x9 = 0xca7794d83e498d49
  lq x14, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x14 = 0x72a0d78358e1762b
I_add_cg_cp_rs1_b9:
  add x4, x9, x14 # perform operation
  # Check if x4 contains the expected result. x31 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x31) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rs1_b9 ; .word I_add_cg_cp_rs1_b9_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x10)
  lq x10, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x10 = 0x3c88478d4fe14414
  lq x25, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x25 = 0x1f2f62e9df4a5f55
I_add_cg_cp_rs1_b10:
  add x1, x10, x25 # perform operation
  # Check if x1 contains the expected result. x31 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x31) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rs1_b10 ; .word I_add_cg_cp_rs1_b10_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x11)
  lq x11, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x11 = 0x28cb711e2d73193d
  lq x0, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x0 = 0x40214e384ddb07f1
I_add_cg_cp_rs1_b11:
  add x28, x11, x0 # perform operation
  # Check if x28 contains the expected result. x31 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x31) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rs1_b11 ; .word I_add_cg_cp_rs1_b11_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

  mv x7, x12 # switch temp register to avoid conflict with test
  mv x8, x13 # switch link pointer register to avoid conflict with test
# Testcase cp_rs1 (Test source rs1 = x12)
  lq x12, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x12 = 0x0b5bc7087604cc2c
  lq x24, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x24 = 0x5cc11b571453a40f
I_add_cg_cp_rs1_b12:
  add x3, x12, x24 # perform operation
  # Check if x3 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b12 ; .word I_add_cg_cp_rs1_b12_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x13)
  lq x13, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x13 = 0xe6aa280a22773413
  lq x3, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x3 = 0x1483c110ff92fab4
I_add_cg_cp_rs1_b13:
  add x25, x13, x3 # perform operation
  # Check if x25 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x25, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b13 ; .word I_add_cg_cp_rs1_b13_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x14)
  lq x14, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x14 = 0x1eee3edf011c7895
  lq x19, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x19 = 0x15685edf1368e343
I_add_cg_cp_rs1_b14:
  add x12, x14, x19 # perform operation
  # Check if x12 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b14 ; .word I_add_cg_cp_rs1_b14_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x15)
  lq x15, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x15 = 0x88c2eb61b72635c8
  lq x6, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x6 = 0x3c2e8ded44b51dc6
I_add_cg_cp_rs1_b15:
  add x0, x15, x6 # perform operation
  # Check if x0 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x0, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b15 ; .word I_add_cg_cp_rs1_b15_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x16)
  lq x16, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x16 = 0xf0c7433620f2088f
  lq x3, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x3 = 0x5bc60702e376fde3
I_add_cg_cp_rs1_b16:
  add x11, x16, x3 # perform operation
  # Check if x11 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b16 ; .word I_add_cg_cp_rs1_b16_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x17)
  lq x17, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x17 = 0xc29ebecd8541527b
  lq x18, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x18 = 0xbbd1662fdccbb261
I_add_cg_cp_rs1_b17:
  add x12, x17, x18 # perform operation
  # Check if x12 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b17 ; .word I_add_cg_cp_rs1_b17_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x18)
  lq x18, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x18 = 0x27bb3ee598fea259
  lq x10, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x10 = 0xbf955895aabf7cf7
I_add_cg_cp_rs1_b18:
  add x17, x18, x10 # perform operation
  # Check if x17 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b18 ; .word I_add_cg_cp_rs1_b18_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x19)
  lq x19, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x19 = 0xb4743055258b1c9a
  lq x12, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x12 = 0xc7014713471a0e78
I_add_cg_cp_rs1_b19:
  add x2, x19, x12 # perform operation
  # Check if x2 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b19 ; .word I_add_cg_cp_rs1_b19_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x20)
  lq x20, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x20 = 0xaac46c7d7fc9caef
  lq x5, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x5 = 0x8d45a6e06e598b23
I_add_cg_cp_rs1_b20:
  add x19, x20, x5 # perform operation
  # Check if x19 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x19, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b20 ; .word I_add_cg_cp_rs1_b20_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x21)
  lq x21, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x21 = 0x540d414fdfdaf135
  lq x30, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x30 = 0x3af03ed8cf1bfa5e
I_add_cg_cp_rs1_b21:
  add x20, x21, x30 # perform operation
  # Check if x20 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b21 ; .word I_add_cg_cp_rs1_b21_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x22)
  lq x22, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x22 = 0xd35940a702867701
  lq x2, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x2 = 0x7567753d4f803770
I_add_cg_cp_rs1_b22:
  add x3, x22, x2 # perform operation
  # Check if x3 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b22 ; .word I_add_cg_cp_rs1_b22_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x23)
  lq x23, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x23 = 0x8dd0c2e67dfb2019
  lq x20, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x20 = 0x2b3413c6d452b1aa
I_add_cg_cp_rs1_b23:
  add x15, x23, x20 # perform operation
  # Check if x15 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b23 ; .word I_add_cg_cp_rs1_b23_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x24)
  lq x24, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x24 = 0x86fce15b12ca8e8b
  lq x23, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x23 = 0xd60b0a31f80c75e2
I_add_cg_cp_rs1_b24:
  add x20, x24, x23 # perform operation
  # Check if x20 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b24 ; .word I_add_cg_cp_rs1_b24_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x25)
  lq x25, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x25 = 0x38a845ea29250f9e
  lq x16, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x16 = 0x469a8f500b3f2927
I_add_cg_cp_rs1_b25:
  add x18, x25, x16 # perform operation
  # Check if x18 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b25 ; .word I_add_cg_cp_rs1_b25_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x26)
  lq x26, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x26 = 0xe57a553d386ccb0b
  lq x18, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x18 = 0x537f503768c62473
I_add_cg_cp_rs1_b26:
  add x4, x26, x18 # perform operation
  # Check if x4 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b26 ; .word I_add_cg_cp_rs1_b26_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

  mv x15, x27 # switch data pointer register to avoid conflict with test
# Testcase cp_rs1 (Test source rs1 = x27)
  lq x27, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x27 = 0xf65d24bd2f125793
  lq x11, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x11 = 0x814e3b617dfa8c79
I_add_cg_cp_rs1_b27:
  add x28, x27, x11 # perform operation
  # Check if x28 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b27 ; .word I_add_cg_cp_rs1_b27_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x28)
  lq x28, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x28 = 0x3793e5e124ea6673
  lq x23, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x23 = 0xd0caf0158edeb8fa
I_add_cg_cp_rs1_b28:
  add x16, x28, x23 # perform operation
  # Check if x16 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b28 ; .word I_add_cg_cp_rs1_b28_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x29)
  lq x29, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x29 = 0x5899aed3980e679f
  lq x1, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x1 = 0x01687b82c1f1ce78
I_add_cg_cp_rs1_b29:
  add x0, x29, x1 # perform operation
  # Check if x0 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x0, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b29 ; .word I_add_cg_cp_rs1_b29_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

 # Testcase cp_rs1 (Test source rs1 = x30)
  lq x30, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x30 = 0x03d8523566e97e0c
  lq x20, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x20 = 0xab1f99c84bec5ef9
I_add_cg_cp_rs1_b30:
  add x2, x30, x20 # perform operation
  # Check if x2 contains the expected result. x31 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x31) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b30 ; .word I_add_cg_cp_rs1_b30_str ; 1: ; addi x31, x31, (64>>3) ; .option pop

  mv x1, x31 # switch signature pointer register to avoid conflict with test
# Testcase cp_rs1 (Test source rs1 = x31)
  lq x31, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x31 = 0x703eb9ed4a01d1c5
  lq x9, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x9 = 0xf8a72569afcc7612
I_add_cg_cp_rs1_b31:
  add x26, x31, x9 # perform operation
  # Check if x26 contains the expected result. x1 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x1) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_b31 ; .word I_add_cg_cp_rs1_b31_str ; 1: ; addi x1, x1, (64>>3) ; .option pop





 # Testcase cp_rs2 (Test source rs2 = x0)
  lq x30, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x30 = 0x41cae6f019022473
  lq x0, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x0 = 0x3eaae683b83e7c5c
I_add_cg_cp_rs2_b0:
  add x16, x30, x0 # perform operation
  # Check if x16 contains the expected result. x1 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x1) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b0 ; .word I_add_cg_cp_rs2_b0_str ; 1: ; addi x1, x1, (64>>3) ; .option pop

  mv x11, x1 # switch signature pointer register to avoid conflict with test
# Testcase cp_rs2 (Test source rs2 = x1)
  lq x21, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x21 = 0x43d5ee725d3b6cc6
  lq x1, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x1 = 0x7f3dab23e01af2ca
I_add_cg_cp_rs2_b1:
  add x29, x21, x1 # perform operation
  # Check if x29 contains the expected result. x11 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x11) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b1 ; .word I_add_cg_cp_rs2_b1_str ; 1: ; addi x11, x11, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x2)
  lq x23, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x23 = 0x975eb46c2bf6b50e
  lq x2, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x2 = 0x2bde2caee8510754
I_add_cg_cp_rs2_b2:
  add x5, x23, x2 # perform operation
  # Check if x5 contains the expected result. x11 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x11) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b2 ; .word I_add_cg_cp_rs2_b2_str ; 1: ; addi x11, x11, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x3)
  lq x26, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x26 = 0x63271b218524c578
  lq x3, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x3 = 0xc2e70e8aafab724e
I_add_cg_cp_rs2_b3:
  add x20, x26, x3 # perform operation
  # Check if x20 contains the expected result. x11 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x11) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b3 ; .word I_add_cg_cp_rs2_b3_str ; 1: ; addi x11, x11, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x4)
  lq x9, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x9 = 0x31b6ca4cfd926c5c
  lq x4, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x4 = 0x0e3e6e1a69ce70af
I_add_cg_cp_rs2_b4:
  add x12, x9, x4 # perform operation
  # Check if x12 contains the expected result. x11 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x11) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b4 ; .word I_add_cg_cp_rs2_b4_str ; 1: ; addi x11, x11, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x5)
  lq x31, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x31 = 0x3b9b6e94a52e41fe
  lq x5, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x5 = 0x816b08c94836c192
I_add_cg_cp_rs2_b5:
  add x21, x31, x5 # perform operation
  # Check if x21 contains the expected result. x11 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x11) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b5 ; .word I_add_cg_cp_rs2_b5_str ; 1: ; addi x11, x11, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x6)
  lq x29, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x29 = 0xa587e0d95926fe45
  lq x6, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x6 = 0xfc20a9df8818ebd1
I_add_cg_cp_rs2_b6:
  add x28, x29, x6 # perform operation
  # Check if x28 contains the expected result. x11 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x11) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b6 ; .word I_add_cg_cp_rs2_b6_str ; 1: ; addi x11, x11, (64>>3) ; .option pop

  mv x12, x7 # switch temp register to avoid conflict with test
  mv x13, x8 # switch link pointer register to avoid conflict with test
# Testcase cp_rs2 (Test source rs2 = x7)
  lq x19, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x19 = 0xcf6b8bdabbf88405
  lq x7, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x7 = 0x620229e866c4468c
I_add_cg_cp_rs2_b7:
  add x0, x19, x7 # perform operation
  # Check if x0 contains the expected result. x11 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x0, 0(x11) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rs2_b7 ; .word I_add_cg_cp_rs2_b7_str ; 1: ; addi x11, x11, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x8)
  lq x2, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x2 = 0x48c6243969df7aca
  lq x8, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x8 = 0xa9cdae0012d86d6c
I_add_cg_cp_rs2_b8:
  add x0, x2, x8 # perform operation
  # Check if x0 contains the expected result. x11 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x0, 0(x11) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rs2_b8 ; .word I_add_cg_cp_rs2_b8_str ; 1: ; addi x11, x11, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x9)
  lq x2, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x2 = 0x38af9c3bcb75737d
  lq x9, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x9 = 0xa3515808128e3c15
I_add_cg_cp_rs2_b9:
  add x22, x2, x9 # perform operation
  # Check if x22 contains the expected result. x11 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x11) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rs2_b9 ; .word I_add_cg_cp_rs2_b9_str ; 1: ; addi x11, x11, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x10)
  lq x17, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x17 = 0x53b23b360e3de86d
  lq x10, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x10 = 0xc7ad9342d543610b
I_add_cg_cp_rs2_b10:
  add x14, x17, x10 # perform operation
  # Check if x14 contains the expected result. x11 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x11) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rs2_b10 ; .word I_add_cg_cp_rs2_b10_str ; 1: ; addi x11, x11, (64>>3) ; .option pop

  mv x23, x11 # switch signature pointer register to avoid conflict with test
# Testcase cp_rs2 (Test source rs2 = x11)
  lq x29, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x29 = 0xece184e8a6dd3cfe
  lq x11, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x11 = 0x2e3ca2b7310eaa30
I_add_cg_cp_rs2_b11:
  add x8, x29, x11 # perform operation
  # Check if x8 contains the expected result. x23 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x8, 0(x23) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rs2_b11 ; .word I_add_cg_cp_rs2_b11_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

  mv x7, x12 # switch temp register to avoid conflict with test
  mv x8, x13 # switch link pointer register to avoid conflict with test
# Testcase cp_rs2 (Test source rs2 = x12)
  lq x24, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x24 = 0x3d346c593e80450b
  lq x12, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x12 = 0x4d3a3208b1b60c2e
I_add_cg_cp_rs2_b12:
  add x14, x24, x12 # perform operation
  # Check if x14 contains the expected result. x23 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x23) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b12 ; .word I_add_cg_cp_rs2_b12_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x13)
  lq x3, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x3 = 0xc7966030ba7ea2bc
  lq x13, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x13 = 0xdeab9ba16944d6a3
I_add_cg_cp_rs2_b13:
  add x21, x3, x13 # perform operation
  # Check if x21 contains the expected result. x23 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x23) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b13 ; .word I_add_cg_cp_rs2_b13_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x14)
  lq x4, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x4 = 0xc34ce661bf00be87
  lq x14, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x14 = 0xbfed69773ce3e7fb
I_add_cg_cp_rs2_b14:
  add x26, x4, x14 # perform operation
  # Check if x26 contains the expected result. x23 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x23) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b14 ; .word I_add_cg_cp_rs2_b14_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

  mv x24, x15 # switch data pointer register to avoid conflict with test
# Testcase cp_rs2 (Test source rs2 = x15)
  lq x17, 0(x24) ; addi x24, x24, (64>>3) # load rs1: x17 = 0x9f384bd6305e08cd
  lq x15, 0(x24) ; addi x24, x24, (64>>3) # load rs2: x15 = 0xad0e914a84beb586
I_add_cg_cp_rs2_b15:
  add x12, x17, x15 # perform operation
  # Check if x12 contains the expected result. x23 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x23) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b15 ; .word I_add_cg_cp_rs2_b15_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x16)
  lq x19, 0(x24) ; addi x24, x24, (64>>3) # load rs1: x19 = 0x2d8552a1d25dcdb8
  lq x16, 0(x24) ; addi x24, x24, (64>>3) # load rs2: x16 = 0xf83a4f861ac832cc
I_add_cg_cp_rs2_b16:
  add x2, x19, x16 # perform operation
  # Check if x2 contains the expected result. x23 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x23) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b16 ; .word I_add_cg_cp_rs2_b16_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x17)
  lq x21, 0(x24) ; addi x24, x24, (64>>3) # load rs1: x21 = 0x0a1af462bb5a1302
  lq x17, 0(x24) ; addi x24, x24, (64>>3) # load rs2: x17 = 0xf21bdfcfc62111a1
I_add_cg_cp_rs2_b17:
  add x30, x21, x17 # perform operation
  # Check if x30 contains the expected result. x23 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x23) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b17 ; .word I_add_cg_cp_rs2_b17_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x18)
  lq x11, 0(x24) ; addi x24, x24, (64>>3) # load rs1: x11 = 0x5fcf6182bba0120a
  lq x18, 0(x24) ; addi x24, x24, (64>>3) # load rs2: x18 = 0xda7f969fc6e566bb
I_add_cg_cp_rs2_b18:
  add x5, x11, x18 # perform operation
  # Check if x5 contains the expected result. x23 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x23) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b18 ; .word I_add_cg_cp_rs2_b18_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x19)
  lq x29, 0(x24) ; addi x24, x24, (64>>3) # load rs1: x29 = 0x02006d8fbbbef7d5
  lq x19, 0(x24) ; addi x24, x24, (64>>3) # load rs2: x19 = 0x1f73980003b8b559
I_add_cg_cp_rs2_b19:
  add x14, x29, x19 # perform operation
  # Check if x14 contains the expected result. x23 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x23) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b19 ; .word I_add_cg_cp_rs2_b19_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x20)
  lq x9, 0(x24) ; addi x24, x24, (64>>3) # load rs1: x9 = 0x5d16a22721385c43
  lq x20, 0(x24) ; addi x24, x24, (64>>3) # load rs2: x20 = 0xe2485bb0d824b444
I_add_cg_cp_rs2_b20:
  add x11, x9, x20 # perform operation
  # Check if x11 contains the expected result. x23 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x23) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b20 ; .word I_add_cg_cp_rs2_b20_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x21)
  lq x13, 0(x24) ; addi x24, x24, (64>>3) # load rs1: x13 = 0x1233095af7d31109
  lq x21, 0(x24) ; addi x24, x24, (64>>3) # load rs2: x21 = 0xbf9abc665a9b914e
I_add_cg_cp_rs2_b21:
  add x16, x13, x21 # perform operation
  # Check if x16 contains the expected result. x23 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x23) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b21 ; .word I_add_cg_cp_rs2_b21_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x22)
  lq x25, 0(x24) ; addi x24, x24, (64>>3) # load rs1: x25 = 0xe917e1668217fb16
  lq x22, 0(x24) ; addi x24, x24, (64>>3) # load rs2: x22 = 0xc10379d1c6b6bde5
I_add_cg_cp_rs2_b22:
  add x5, x25, x22 # perform operation
  # Check if x5 contains the expected result. x23 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x23) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b22 ; .word I_add_cg_cp_rs2_b22_str ; 1: ; addi x23, x23, (64>>3) ; .option pop

  mv x18, x23 # switch signature pointer register to avoid conflict with test
# Testcase cp_rs2 (Test source rs2 = x23)
  lq x21, 0(x24) ; addi x24, x24, (64>>3) # load rs1: x21 = 0x14f03448aff64e54
  lq x23, 0(x24) ; addi x24, x24, (64>>3) # load rs2: x23 = 0x0aac8f33821c89b6
I_add_cg_cp_rs2_b23:
  add x2, x21, x23 # perform operation
  # Check if x2 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b23 ; .word I_add_cg_cp_rs2_b23_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

  mv x15, x24 # switch data pointer register to avoid conflict with test
# Testcase cp_rs2 (Test source rs2 = x24)
  lq x12, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x12 = 0x33397d1805094cd0
  lq x24, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x24 = 0xab3bd44d31d15543
I_add_cg_cp_rs2_b24:
  add x23, x12, x24 # perform operation
  # Check if x23 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b24 ; .word I_add_cg_cp_rs2_b24_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x25)
  lq x31, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x31 = 0xe87221de13d924e0
  lq x25, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x25 = 0xa0dd6448b9e71d99
I_add_cg_cp_rs2_b25:
  add x6, x31, x25 # perform operation
  # Check if x6 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b25 ; .word I_add_cg_cp_rs2_b25_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x26)
  lq x19, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x19 = 0x3ff5a81b354a9cde
  lq x26, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x26 = 0x71cf14f8baddd979
I_add_cg_cp_rs2_b26:
  add x9, x19, x26 # perform operation
  # Check if x9 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b26 ; .word I_add_cg_cp_rs2_b26_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x27)
  lq x19, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x19 = 0x64fb2448bed02a7a
  lq x27, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x27 = 0xc625cae6009e4c63
I_add_cg_cp_rs2_b27:
  add x26, x19, x27 # perform operation
  # Check if x26 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b27 ; .word I_add_cg_cp_rs2_b27_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x28)
  lq x6, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x6 = 0xd4b0bd90375ee341
  lq x28, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x28 = 0x747b9cd21072d3b1
I_add_cg_cp_rs2_b28:
  add x20, x6, x28 # perform operation
  # Check if x20 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b28 ; .word I_add_cg_cp_rs2_b28_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x29)
  lq x10, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x10 = 0x62b2a528bd376e95
  lq x29, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x29 = 0x68ce98751e3c6610
I_add_cg_cp_rs2_b29:
  add x25, x10, x29 # perform operation
  # Check if x25 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x25, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b29 ; .word I_add_cg_cp_rs2_b29_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x30)
  lq x6, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x6 = 0xf22b4f26dd94a250
  lq x30, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x30 = 0x19a2fbad5fdec793
I_add_cg_cp_rs2_b30:
  add x24, x6, x30 # perform operation
  # Check if x24 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b30 ; .word I_add_cg_cp_rs2_b30_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rs2 (Test source rs2 = x31)
  lq x28, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x28 = 0x12dad8d61a4633f2
  lq x31, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x31 = 0x1f30309b75db76c7
I_add_cg_cp_rs2_b31:
  add x6, x28, x31 # perform operation
  # Check if x6 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_b31 ; .word I_add_cg_cp_rs2_b31_str ; 1: ; addi x18, x18, (64>>3) ; .option pop





 # Testcase cp_rd (Test destination rd = x0)
  lq x23, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x23 = 0xed078b9341d58273
  lq x16, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x16 = 0x45c29b42322b2e78
I_add_cg_cp_rd_b0:
  add x0, x23, x16 # perform operation
  # Check if x0 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x0, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b0 ; .word I_add_cg_cp_rd_b0_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x1)
  lq x14, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x14 = 0xaef87f419796c960
  lq x4, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x4 = 0xff4799d0135e99dc
I_add_cg_cp_rd_b1:
  add x1, x14, x4 # perform operation
  # Check if x1 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b1 ; .word I_add_cg_cp_rd_b1_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x2)
  lq x3, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x3 = 0x3f9d2b536868529a
  lq x17, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x17 = 0x621482b7cfc50d6b
I_add_cg_cp_rd_b2:
  add x2, x3, x17 # perform operation
  # Check if x2 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b2 ; .word I_add_cg_cp_rd_b2_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x3)
  lq x0, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x0 = 0xb8a9e20011c98bc0
  lq x29, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x29 = 0xd036321a6d6848fa
I_add_cg_cp_rd_b3:
  add x3, x0, x29 # perform operation
  # Check if x3 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b3 ; .word I_add_cg_cp_rd_b3_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x4)
  lq x28, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x28 = 0x348bc6aebb034e28
  lq x16, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x16 = 0x1e470dd78a12d3fd
I_add_cg_cp_rd_b4:
  add x4, x28, x16 # perform operation
  # Check if x4 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b4 ; .word I_add_cg_cp_rd_b4_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x5)
  lq x19, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x19 = 0xa391fecd330ad053
  lq x16, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x16 = 0xa622a84cab17eb46
I_add_cg_cp_rd_b5:
  add x5, x19, x16 # perform operation
  # Check if x5 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b5 ; .word I_add_cg_cp_rd_b5_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x6)
  lq x30, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x30 = 0xd8c081b644d6907c
  lq x1, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x1 = 0x3d1b0cc22724b344
I_add_cg_cp_rd_b6:
  add x6, x30, x1 # perform operation
  # Check if x6 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b6 ; .word I_add_cg_cp_rd_b6_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

  mv x12, x7 # switch temp register to avoid conflict with test
  mv x13, x8 # switch link pointer register to avoid conflict with test
# Testcase cp_rd (Test destination rd = x7)
  lq x31, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x31 = 0x3de6e2cfb5ee26ae
  lq x24, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x24 = 0x88b864a6e20b6023
I_add_cg_cp_rd_b7:
  add x7, x31, x24 # perform operation
  # Check if x7 contains the expected result. x18 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x7, 0(x18) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rd_b7 ; .word I_add_cg_cp_rd_b7_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x8)
  lq x6, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x6 = 0xf21e100d40a639bc
  lq x7, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x7 = 0x71a7383d3cab5592
I_add_cg_cp_rd_b8:
  add x8, x6, x7 # perform operation
  # Check if x8 contains the expected result. x18 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x8, 0(x18) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rd_b8 ; .word I_add_cg_cp_rd_b8_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x9)
  lq x23, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x23 = 0x25342b205e562e47
  lq x7, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x7 = 0x80f834e573cc5a27
I_add_cg_cp_rd_b9:
  add x9, x23, x7 # perform operation
  # Check if x9 contains the expected result. x18 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x18) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rd_b9 ; .word I_add_cg_cp_rd_b9_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x10)
  lq x19, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x19 = 0x04507ba251961035
  lq x23, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x23 = 0x6f638255e816430c
I_add_cg_cp_rd_b10:
  add x10, x19, x23 # perform operation
  # Check if x10 contains the expected result. x18 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x18) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rd_b10 ; .word I_add_cg_cp_rd_b10_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x11)
  lq x8, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x8 = 0xb35c35761f43cfe6
  lq x17, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x17 = 0x7f3872754f70d3b5
I_add_cg_cp_rd_b11:
  add x11, x8, x17 # perform operation
  # Check if x11 contains the expected result. x18 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x18) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cp_rd_b11 ; .word I_add_cg_cp_rd_b11_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

  mv x7, x12 # switch temp register to avoid conflict with test
  mv x8, x13 # switch link pointer register to avoid conflict with test
# Testcase cp_rd (Test destination rd = x12)
  lq x22, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x22 = 0x9d1babbfc52ddc23
  lq x17, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x17 = 0x0e2bd96887685a9a
I_add_cg_cp_rd_b12:
  add x12, x22, x17 # perform operation
  # Check if x12 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b12 ; .word I_add_cg_cp_rd_b12_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x13)
  lq x4, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x4 = 0x91032b2e818da0ce
  lq x0, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x0 = 0x12258f546dddc320
I_add_cg_cp_rd_b13:
  add x13, x4, x0 # perform operation
  # Check if x13 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b13 ; .word I_add_cg_cp_rd_b13_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x14)
  lq x21, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x21 = 0xa1f003f9f0d9f002
  lq x6, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x6 = 0xd70241be98355271
I_add_cg_cp_rd_b14:
  add x14, x21, x6 # perform operation
  # Check if x14 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b14 ; .word I_add_cg_cp_rd_b14_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

  mv x28, x15 # switch data pointer register to avoid conflict with test
# Testcase cp_rd (Test destination rd = x15)
  lq x19, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x19 = 0x49bf4fdfd9fe776b
  lq x22, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x22 = 0x63af217c4a653e21
I_add_cg_cp_rd_b15:
  add x15, x19, x22 # perform operation
  # Check if x15 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b15 ; .word I_add_cg_cp_rd_b15_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x16)
  lq x29, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x29 = 0xe33d4b0b23153a0c
  lq x15, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x15 = 0x0a9a21d62c6d574f
I_add_cg_cp_rd_b16:
  add x16, x29, x15 # perform operation
  # Check if x16 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b16 ; .word I_add_cg_cp_rd_b16_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x17)
  lq x31, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x31 = 0xc8e256d572af9519
  lq x16, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x16 = 0xfea8bcb49136f259
I_add_cg_cp_rd_b17:
  add x17, x31, x16 # perform operation
  # Check if x17 contains the expected result. x18 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x18) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b17 ; .word I_add_cg_cp_rd_b17_str ; 1: ; addi x18, x18, (64>>3) ; .option pop

  mv x27, x18 # switch signature pointer register to avoid conflict with test
# Testcase cp_rd (Test destination rd = x18)
  lq x16, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x16 = 0xf4430e4bb3e092ea
  lq x29, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x29 = 0x886a1096884481cc
I_add_cg_cp_rd_b18:
  add x18, x16, x29 # perform operation
  # Check if x18 contains the expected result. x27 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x27) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b18 ; .word I_add_cg_cp_rd_b18_str ; 1: ; addi x27, x27, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x19)
  lq x26, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x26 = 0x2bd547b5c8c3ce57
  lq x13, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x13 = 0xd8a41f69761853a8
I_add_cg_cp_rd_b19:
  add x19, x26, x13 # perform operation
  # Check if x19 contains the expected result. x27 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x19, 0(x27) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b19 ; .word I_add_cg_cp_rd_b19_str ; 1: ; addi x27, x27, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x20)
  lq x1, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x1 = 0xdb6e0539b8ac4eb9
  lq x15, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x15 = 0xd14f98d9b1b781d1
I_add_cg_cp_rd_b20:
  add x20, x1, x15 # perform operation
  # Check if x20 contains the expected result. x27 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x27) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b20 ; .word I_add_cg_cp_rd_b20_str ; 1: ; addi x27, x27, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x21)
  lq x15, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x15 = 0xa9de691fbf00490f
  lq x20, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x20 = 0x5234b0b9a96acb3a
I_add_cg_cp_rd_b21:
  add x21, x15, x20 # perform operation
  # Check if x21 contains the expected result. x27 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x27) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b21 ; .word I_add_cg_cp_rd_b21_str ; 1: ; addi x27, x27, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x22)
  lq x11, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x11 = 0x02eb8fbc0ba0145e
  lq x25, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x25 = 0x0f3861090ba4ec85
I_add_cg_cp_rd_b22:
  add x22, x11, x25 # perform operation
  # Check if x22 contains the expected result. x27 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x27) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b22 ; .word I_add_cg_cp_rd_b22_str ; 1: ; addi x27, x27, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x23)
  lq x19, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x19 = 0xb83d042fc586122e
  lq x1, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x1 = 0x8b7b7bd7a80c4604
I_add_cg_cp_rd_b23:
  add x23, x19, x1 # perform operation
  # Check if x23 contains the expected result. x27 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x27) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b23 ; .word I_add_cg_cp_rd_b23_str ; 1: ; addi x27, x27, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x24)
  lq x21, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x21 = 0xd06e0cb7a1ccba0d
  lq x4, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x4 = 0x59866d92afd8ec88
I_add_cg_cp_rd_b24:
  add x24, x21, x4 # perform operation
  # Check if x24 contains the expected result. x27 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x27) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b24 ; .word I_add_cg_cp_rd_b24_str ; 1: ; addi x27, x27, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x25)
  lq x3, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x3 = 0xffe01ba72ed9ac00
  lq x17, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x17 = 0x789baf59a55d2b4f
I_add_cg_cp_rd_b25:
  add x25, x3, x17 # perform operation
  # Check if x25 contains the expected result. x27 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x25, 0(x27) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b25 ; .word I_add_cg_cp_rd_b25_str ; 1: ; addi x27, x27, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x26)
  lq x25, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x25 = 0x53a4fe4e0d3a5721
  lq x5, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x5 = 0xca1d5f9b27f0658a
I_add_cg_cp_rd_b26:
  add x26, x25, x5 # perform operation
  # Check if x26 contains the expected result. x27 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x27) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b26 ; .word I_add_cg_cp_rd_b26_str ; 1: ; addi x27, x27, (64>>3) ; .option pop

  mv x25, x27 # switch signature pointer register to avoid conflict with test
# Testcase cp_rd (Test destination rd = x27)
  lq x16, 0(x28) ; addi x28, x28, (64>>3) # load rs1: x16 = 0xccc8bca7add1ff94
  lq x2, 0(x28) ; addi x28, x28, (64>>3) # load rs2: x2 = 0x35393de234878449
I_add_cg_cp_rd_b27:
  add x27, x16, x2 # perform operation
  # Check if x27 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b27 ; .word I_add_cg_cp_rd_b27_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

  mv x19, x28 # switch data pointer register to avoid conflict with test
# Testcase cp_rd (Test destination rd = x28)
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x5 = 0xb150eca1c2b840a9
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x984e7797a5b71193
I_add_cg_cp_rd_b28:
  add x28, x5, x16 # perform operation
  # Check if x28 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b28 ; .word I_add_cg_cp_rd_b28_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x29)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x402fc02a43e8f1b2
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x26 = 0x7d745378c3be9c75
I_add_cg_cp_rd_b29:
  add x29, x18, x26 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b29 ; .word I_add_cg_cp_rd_b29_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x30)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x0c63e0197d6048bf
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x5ae14803cc9098ff
I_add_cg_cp_rd_b30:
  add x30, x13, x16 # perform operation
  # Check if x30 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b30 ; .word I_add_cg_cp_rd_b30_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rd (Test destination rd = x31)
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x17 = 0xbf8f045228680b1b
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x97384ae960ca270c
I_add_cg_cp_rd_b31:
  add x31, x17, x24 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rd_b31 ; .word I_add_cg_cp_rd_b31_str ; 1: ; addi x25, x25, (64>>3) ; .option pop





 # Testcase cp_rs1_edges (Test source rs1 value = 0x0000000000000000)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x0000000000000000
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0xe2f827902e80e14a
I_add_cg_cp_rs1_edges_0x0:
  add x3, x13, x23 # perform operation
  # Check if x3 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0x0 ; .word I_add_cg_cp_rs1_edges_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x0000000000000001)
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x2 = 0x0000000000000001
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x73426dcee139eb42
I_add_cg_cp_rs1_edges_0x1:
  add x14, x2, x20 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0x1 ; .word I_add_cg_cp_rs1_edges_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x0000000000000002)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x0000000000000002
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0x4e6b2693113667fc
I_add_cg_cp_rs1_edges_0x2:
  add x12, x27, x3 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0x2 ; .word I_add_cg_cp_rs1_edges_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x8000000000000000)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0x8000000000000000
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0xdedd714018d7fff1
I_add_cg_cp_rs1_edges_0x8000000000000000:
  add x5, x11, x22 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0x8000000000000000 ; .word I_add_cg_cp_rs1_edges_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x8000000000000001)
  lq x31, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x31 = 0x8000000000000001
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x3afc9bb077345ffb
I_add_cg_cp_rs1_edges_0x8000000000000001:
  add x5, x31, x22 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0x8000000000000001 ; .word I_add_cg_cp_rs1_edges_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x7fffffffffffffff)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0x7fffffffffffffff
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x12 = 0xe38811be8c446dc3
I_add_cg_cp_rs1_edges_0x7fffffffffffffff:
  add x24, x20, x12 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0x7fffffffffffffff ; .word I_add_cg_cp_rs1_edges_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x7ffffffffffffffe)
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x29 = 0x7ffffffffffffffe
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0xee92503565b98a9c
I_add_cg_cp_rs1_edges_0x7ffffffffffffffe:
  add x9, x29, x20 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0x7ffffffffffffffe ; .word I_add_cg_cp_rs1_edges_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0xffffffffffffffff)
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x9 = 0xffffffffffffffff
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0x330354c63b17b904
I_add_cg_cp_rs1_edges_0xffffffffffffffff:
  add x16, x9, x10 # perform operation
  # Check if x16 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0xffffffffffffffff ; .word I_add_cg_cp_rs1_edges_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0xfffffffffffffffe)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0xfffffffffffffffe
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x00214c522256027e
I_add_cg_cp_rs1_edges_0xfffffffffffffffe:
  add x29, x22, x16 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0xfffffffffffffffe ; .word I_add_cg_cp_rs1_edges_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x5bbc887763ae86f2)
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x15 = 0x5bbc887763ae86f2
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0x0ed7b293680436ab
I_add_cg_cp_rs1_edges_0x5bbc887763ae86f2:
  add x13, x15, x23 # perform operation
  # Check if x13 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0x5bbc887763ae86f2 ; .word I_add_cg_cp_rs1_edges_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0xaaaaaaaaaaaaaaaa
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0xb58989a012de63b8
I_add_cg_cp_rs1_edges_0xaaaaaaaaaaaaaaaa:
  add x17, x14, x27 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cp_rs1_edges_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x5555555555555555)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0x5555555555555555
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x17 = 0x6e64843a37a1eeba
I_add_cg_cp_rs1_edges_0x5555555555555555:
  add x6, x14, x17 # perform operation
  # Check if x6 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0x5555555555555555 ; .word I_add_cg_cp_rs1_edges_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x00000000ffffffff)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0x00000000ffffffff
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0x313d9bfab221ddaa
I_add_cg_cp_rs1_edges_0xffffffff:
  add x3, x1, x4 # perform operation
  # Check if x3 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0xffffffff ; .word I_add_cg_cp_rs1_edges_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x00000000fffffffe)
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x29 = 0x00000000fffffffe
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0x5bb53a17a4173aa8
I_add_cg_cp_rs1_edges_0xfffffffe:
  add x11, x29, x23 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0xfffffffe ; .word I_add_cg_cp_rs1_edges_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x0000000100000000)
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x5 = 0x0000000100000000
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x30 = 0x64bde7266d2254f1
I_add_cg_cp_rs1_edges_0x100000000:
  add x28, x5, x30 # perform operation
  # Check if x28 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0x100000000 ; .word I_add_cg_cp_rs1_edges_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs1_edges (Test source rs1 value = 0x0000000100000001)
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x16 = 0x0000000100000001
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0xa2247c6f6f8cb5cb
I_add_cg_cp_rs1_edges_0x100000001:
  add x27, x16, x5 # perform operation
  # Check if x27 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs1_edges_0x100000001 ; .word I_add_cg_cp_rs1_edges_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop





 # Testcase cp_rs2_edges (Test source rs2 value = 0x0000000000000000)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x39a5c7711f3b1891
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x15 = 0x0000000000000000
I_add_cg_cp_rs2_edges_0x0:
  add x14, x4, x15 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0x0 ; .word I_add_cg_cp_rs2_edges_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x0000000000000001)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0x51e6fa61e76b34dd
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x28 = 0x0000000000000001
I_add_cg_cp_rs2_edges_0x1:
  add x31, x20, x28 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0x1 ; .word I_add_cg_cp_rs2_edges_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x0000000000000002)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x602608043e1e0b20
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x14 = 0x0000000000000002
I_add_cg_cp_rs2_edges_0x2:
  add x1, x22, x14 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0x2 ; .word I_add_cg_cp_rs2_edges_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x8000000000000000)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x965dcbb43f1bfcf6
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x15 = 0x8000000000000000
I_add_cg_cp_rs2_edges_0x8000000000000000:
  add x1, x22, x15 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0x8000000000000000 ; .word I_add_cg_cp_rs2_edges_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x8000000000000001)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x0556e7229b9604b7
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0x8000000000000001
I_add_cg_cp_rs2_edges_0x8000000000000001:
  add x13, x22, x11 # perform operation
  # Check if x13 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0x8000000000000001 ; .word I_add_cg_cp_rs2_edges_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x7fffffffffffffff)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0xdd6e85df80927107
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x14 = 0x7fffffffffffffff
I_add_cg_cp_rs2_edges_0x7fffffffffffffff:
  add x29, x22, x14 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0x7fffffffffffffff ; .word I_add_cg_cp_rs2_edges_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x7ffffffffffffffe)
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x9 = 0xbd602a084b193956
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x14 = 0x7ffffffffffffffe
I_add_cg_cp_rs2_edges_0x7ffffffffffffffe:
  add x29, x9, x14 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0x7ffffffffffffffe ; .word I_add_cg_cp_rs2_edges_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0xffffffffffffffff)
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x29 = 0x3d7ac084eb5f05f3
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0xffffffffffffffff
I_add_cg_cp_rs2_edges_0xffffffffffffffff:
  add x2, x29, x20 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0xffffffffffffffff ; .word I_add_cg_cp_rs2_edges_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0xfffffffffffffffe)
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x29 = 0xb204dfd4fcc1792a
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x17 = 0xfffffffffffffffe
I_add_cg_cp_rs2_edges_0xfffffffffffffffe:
  add x10, x29, x17 # perform operation
  # Check if x10 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0xfffffffffffffffe ; .word I_add_cg_cp_rs2_edges_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x5bbc887763ae86f2)
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x2 = 0x13748a1f67097101
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x5bbc887763ae86f2
I_add_cg_cp_rs2_edges_0x5bbc887763ae86f2:
  add x11, x2, x16 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0x5bbc887763ae86f2 ; .word I_add_cg_cp_rs2_edges_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x17 = 0x6287e9df13c23af7
  lq x31, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x31 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cp_rs2_edges_0xaaaaaaaaaaaaaaaa:
  add x2, x17, x31 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cp_rs2_edges_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x5555555555555555)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x84973bea18d9c61a
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x18 = 0x5555555555555555
I_add_cg_cp_rs2_edges_0x5555555555555555:
  add x12, x13, x18 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0x5555555555555555 ; .word I_add_cg_cp_rs2_edges_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x00000000ffffffff)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0xf2fff439464ee564
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x9 = 0x00000000ffffffff
I_add_cg_cp_rs2_edges_0xffffffff:
  add x2, x13, x9 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0xffffffff ; .word I_add_cg_cp_rs2_edges_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x00000000fffffffe)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0xa3af1af07406d923
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x00000000fffffffe
I_add_cg_cp_rs2_edges_0xfffffffe:
  add x9, x27, x20 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0xfffffffe ; .word I_add_cg_cp_rs2_edges_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x0000000100000000)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0xebf68641020d0d6d
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x9 = 0x0000000100000000
I_add_cg_cp_rs2_edges_0x100000000:
  add x6, x20, x9 # perform operation
  # Check if x6 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0x100000000 ; .word I_add_cg_cp_rs2_edges_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cp_rs2_edges (Test source rs2 value = 0x0000000100000001)
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x17 = 0x60997967767c885e
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x0000000100000001
I_add_cg_cp_rs2_edges_0x100000001:
  add x24, x17, x16 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cp_rs2_edges_0x100000001 ; .word I_add_cg_cp_rs2_edges_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop





 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x0000000000000000)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x0000000000000000
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x0:
  add x10, x22, x20 # perform operation
  # Check if x10 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x0000000000000001)
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x2 = 0x0000000000000000
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x1:
  add x17, x2, x27 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x0000000000000002)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x0000000000000000
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x2:
  add x23, x28, x24 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x8000000000000000)
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x16 = 0x0000000000000000
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x8000000000000000:
  add x4, x16, x22 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x8000000000000001)
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x15 = 0x0000000000000000
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x8000000000000001:
  add x31, x15, x11 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x7fffffffffffffff)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0x0000000000000000
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x7fffffffffffffff:
  add x6, x11, x24 # perform operation
  # Check if x6 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x7ffffffffffffffe)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0x0000000000000000
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x7ffffffffffffffe:
  add x12, x1, x20 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0xffffffffffffffff)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x0000000000000000
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x17 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xffffffffffffffff:
  add x20, x4, x17 # perform operation
  # Check if x20 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0xfffffffffffffffe)
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x24 = 0x0000000000000000
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xfffffffffffffffe:
  add x22, x24, x10 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x5bbc887763ae86f2)
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x15 = 0x0000000000000000
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x5bbc887763ae86f2:
  add x21, x15, x5 # perform operation
  # Check if x21 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x24 = 0x0000000000000000
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xaaaaaaaaaaaaaaaa:
  add x11, x24, x16 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x5555555555555555)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x0000000000000000
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x5555555555555555:
  add x24, x27, x23 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x00000000ffffffff)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0x0000000000000000
  lq x31, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x31 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xffffffff:
  add x6, x14, x31 # perform operation
  # Check if x6 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x00000000fffffffe)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0x0000000000000000
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x14 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xfffffffe:
  add x1, x20, x14 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x0000000100000000)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x0000000000000000
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x100000000:
  add x23, x26, x27 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000000 rs2 = 0x0000000100000001)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0x0000000000000000
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x100000001:
  add x29, x14, x5 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x0000000000000000)
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x6 = 0x0000000000000001
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x0:
  add x23, x6, x20 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x0000000000000001)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x0000000000000001
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x29 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x1:
  add x5, x27, x29 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x0000000000000002)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x0000000000000001
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x2:
  add x4, x28, x11 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x8000000000000000)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x0000000000000001
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x29 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x8000000000000000:
  add x15, x18, x29 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x8000000000000001)
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x23 = 0x0000000000000001
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x8000000000000001:
  add x6, x23, x10 # perform operation
  # Check if x6 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x7fffffffffffffff)
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x17 = 0x0000000000000001
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x7fffffffffffffff:
  add x14, x17, x22 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x7ffffffffffffffe)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0x0000000000000001
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x21 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x7ffffffffffffffe:
  add x17, x3, x21 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0xffffffffffffffff)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x0000000000000001
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x6 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xffffffffffffffff:
  add x29, x28, x6 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0xfffffffffffffffe)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x0000000000000001
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x28 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xfffffffffffffffe:
  add x14, x27, x28 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x5bbc887763ae86f2)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x0000000000000001
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x5bbc887763ae86f2:
  add x12, x4, x20 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x0000000000000001
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xaaaaaaaaaaaaaaaa:
  add x30, x27, x11 # perform operation
  # Check if x30 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x5555555555555555)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0x0000000000000001
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x5555555555555555:
  add x23, x11, x16 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x00000000ffffffff)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0x0000000000000001
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x30 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xffffffff:
  add x22, x20, x30 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x00000000fffffffe)
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x24 = 0x0000000000000001
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xfffffffe:
  add x2, x24, x5 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x0000000100000000)
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x21 = 0x0000000000000001
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x100000000:
  add x10, x21, x27 # perform operation
  # Check if x10 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000001 rs2 = 0x0000000100000001)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x0000000000000001
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x100000001:
  add x3, x18, x16 # perform operation
  # Check if x3 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x0000000000000000)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x0000000000000002
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x0:
  add x31, x13, x24 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x0000000000000001)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x0000000000000002
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x13 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x1:
  add x5, x18, x13 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x0000000000000002)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x0000000000000002
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x15 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x2:
  add x5, x13, x15 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x8000000000000000)
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x10 = 0x0000000000000002
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x1 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x8000000000000000:
  add x5, x10, x1 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x8000000000000001)
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x30 = 0x0000000000000002
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x15 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x8000000000000001:
  add x9, x30, x15 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x7fffffffffffffff)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x0000000000000002
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x30 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x7fffffffffffffff:
  add x9, x26, x30 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x7ffffffffffffffe)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x0000000000000002
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x29 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x7ffffffffffffffe:
  add x24, x28, x29 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0xffffffffffffffff)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0x0000000000000002
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x13 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xffffffffffffffff:
  add x21, x11, x13 # perform operation
  # Check if x21 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0xfffffffffffffffe)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x0000000000000002
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xfffffffffffffffe:
  add x30, x26, x5 # perform operation
  # Check if x30 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x5bbc887763ae86f2)
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x29 = 0x0000000000000002
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x5bbc887763ae86f2:
  add x10, x29, x24 # perform operation
  # Check if x10 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x9 = 0x0000000000000002
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xaaaaaaaaaaaaaaaa:
  add x28, x9, x16 # perform operation
  # Check if x28 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x5555555555555555)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0x0000000000000002
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x13 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x5555555555555555:
  add x15, x3, x13 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x00000000ffffffff)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x0000000000000002
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x18 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xffffffff:
  add x20, x27, x18 # perform operation
  # Check if x20 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x00000000fffffffe)
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x15 = 0x0000000000000002
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xfffffffe:
  add x24, x15, x3 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x0000000100000000)
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x10 = 0x0000000000000002
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x100000000:
  add x2, x10, x4 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000000000002 rs2 = 0x0000000100000001)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0x0000000000000002
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x15 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x100000001:
  add x4, x1, x15 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x0000000000000000)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0x8000000000000000
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x2 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x0:
  add x30, x14, x2 # perform operation
  # Check if x30 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x0000000000000001)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0x8000000000000000
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x1:
  add x18, x12, x24 # perform operation
  # Check if x18 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x0000000000000002)
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x17 = 0x8000000000000000
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x2:
  add x22, x17, x3 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x8000000000000000
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x21 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x8000000000000000:
  add x4, x28, x21 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x15 = 0x8000000000000000
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x8000000000000001:
  add x14, x15, x27 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x15 = 0x8000000000000000
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x7fffffffffffffff:
  add x23, x15, x16 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x8000000000000000
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x7ffffffffffffffe:
  add x2, x27, x4 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x2 = 0x8000000000000000
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xffffffffffffffff:
  add x15, x2, x20 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x6 = 0x8000000000000000
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x15 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xfffffffffffffffe:
  add x26, x6, x15 # perform operation
  # Check if x26 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0x8000000000000000
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x5bbc887763ae86f2:
  add x16, x14, x23 # perform operation
  # Check if x16 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x8000000000000000
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x9 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xaaaaaaaaaaaaaaaa:
  add x5, x28, x9 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x17 = 0x8000000000000000
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x5555555555555555:
  add x15, x17, x22 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x00000000ffffffff)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x8000000000000000
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xffffffff:
  add x29, x27, x16 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x00000000fffffffe)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x8000000000000000
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x28 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xfffffffe:
  add x20, x26, x28 # perform operation
  # Check if x20 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x0000000100000000)
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x23 = 0x8000000000000000
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x6 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x100000000:
  add x9, x23, x6 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000000 rs2 = 0x0000000100000001)
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x30 = 0x8000000000000000
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x100000001:
  add x22, x30, x20 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x0000000000000000)
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x17 = 0x8000000000000001
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x0:
  add x3, x17, x4 # perform operation
  # Check if x3 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x0000000000000001)
  lq x31, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x31 = 0x8000000000000001
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x1:
  add x1, x31, x22 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x0000000000000002)
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x21 = 0x8000000000000001
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x2:
  add x27, x21, x10 # perform operation
  # Check if x27 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0x8000000000000001
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x8000000000000000:
  add x4, x1, x20 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x8000000000000001
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x8000000000000001:
  add x6, x26, x20 # perform operation
  # Check if x6 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x8000000000000001
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x7fffffffffffffff:
  add x1, x26, x20 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x8000000000000001
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x7ffffffffffffffe:
  add x18, x13, x11 # perform operation
  # Check if x18 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0x8000000000000001
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x17 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xffffffffffffffff:
  add x4, x12, x17 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x15 = 0x8000000000000001
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x28 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xfffffffffffffffe:
  add x10, x15, x28 # perform operation
  # Check if x10 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x8000000000000001
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x5bbc887763ae86f2:
  add x26, x13, x22 # perform operation
  # Check if x26 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x9 = 0x8000000000000001
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x2 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xaaaaaaaaaaaaaaaa:
  add x31, x9, x2 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x8000000000000001
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x5555555555555555:
  add x22, x4, x23 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x00000000ffffffff)
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x24 = 0x8000000000000001
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x18 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xffffffff:
  add x12, x24, x18 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x00000000fffffffe)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0x8000000000000001
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x21 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xfffffffe:
  add x27, x14, x21 # perform operation
  # Check if x27 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x0000000100000000)
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x9 = 0x8000000000000001
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x2 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x100000000:
  add x1, x9, x2 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x8000000000000001 rs2 = 0x0000000100000001)
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x24 = 0x8000000000000001
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x12 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x100000001:
  add x21, x24, x12 # perform operation
  # Check if x21 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0000000000000000)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0x7fffffffffffffff
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x30 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x0:
  add x23, x12, x30 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0000000000000001)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x7fffffffffffffff
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x1:
  add x24, x28, x10 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0000000000000002)
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x10 = 0x7fffffffffffffff
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x9 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x2:
  add x27, x10, x9 # perform operation
  # Check if x27 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x7fffffffffffffff
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x8000000000000000:
  add x22, x28, x5 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0x7fffffffffffffff
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x8000000000000001:
  add x12, x14, x3 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x10 = 0x7fffffffffffffff
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x7fffffffffffffff:
  add x12, x10, x5 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0x7fffffffffffffff
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x17 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x7ffffffffffffffe:
  add x2, x3, x17 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x30 = 0x7fffffffffffffff
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xffffffffffffffff:
  add x29, x30, x3 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x7fffffffffffffff
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xfffffffffffffffe:
  add x11, x26, x27 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x10 = 0x7fffffffffffffff
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x5bbc887763ae86f2:
  add x2, x10, x27 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x16 = 0x7fffffffffffffff
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xaaaaaaaaaaaaaaaa:
  add x23, x16, x20 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0x7fffffffffffffff
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x5555555555555555:
  add x13, x14, x24 # perform operation
  # Check if x13 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x00000000ffffffff)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x7fffffffffffffff
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x21 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xffffffff:
  add x11, x22, x21 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x00000000fffffffe)
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x15 = 0x7fffffffffffffff
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x18 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xfffffffe:
  add x16, x15, x18 # perform operation
  # Check if x16 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0000000100000000)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x7fffffffffffffff
  lq x31, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x31 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x100000000:
  add x30, x22, x31 # perform operation
  # Check if x30 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0000000100000001)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x7fffffffffffffff
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x2 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x100000001:
  add x12, x27, x2 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0000000000000000)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0x7ffffffffffffffe
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x28 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x0:
  add x18, x12, x28 # perform operation
  # Check if x18 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0000000000000001)
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x9 = 0x7ffffffffffffffe
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x13 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x1:
  add x22, x9, x13 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0000000000000002)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0x7ffffffffffffffe
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x17 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x2:
  add x14, x3, x17 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x7ffffffffffffffe
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x26 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x8000000000000000:
  add x2, x13, x26 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x5 = 0x7ffffffffffffffe
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x28 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x8000000000000001:
  add x24, x5, x28 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x24 = 0x7ffffffffffffffe
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x7fffffffffffffff:
  add x2, x24, x22 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x17 = 0x7ffffffffffffffe
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x7ffffffffffffffe:
  add x12, x17, x3 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x21 = 0x7ffffffffffffffe
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xffffffffffffffff:
  add x24, x21, x4 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x7ffffffffffffffe
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xfffffffffffffffe:
  add x20, x18, x11 # perform operation
  # Check if x20 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x7ffffffffffffffe
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x5bbc887763ae86f2:
  add x10, x4, x3 # perform operation
  # Check if x10 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x7ffffffffffffffe
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xaaaaaaaaaaaaaaaa:
  add x11, x18, x3 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x7ffffffffffffffe
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x5555555555555555:
  add x5, x18, x27 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x00000000ffffffff)
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x9 = 0x7ffffffffffffffe
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x26 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xffffffff:
  add x10, x9, x26 # perform operation
  # Check if x10 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x00000000fffffffe)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0x7ffffffffffffffe
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x17 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xfffffffe:
  add x11, x3, x17 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0000000100000000)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x7ffffffffffffffe
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x100000000:
  add x18, x28, x10 # perform operation
  # Check if x18 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0000000100000001)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x7ffffffffffffffe
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x100000001:
  add x31, x13, x3 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x0000000000000000)
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x21 = 0xffffffffffffffff
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x0:
  add x1, x21, x23 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x0000000000000001)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0xffffffffffffffff
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x21 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x1:
  add x22, x1, x21 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x0000000000000002)
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x21 = 0xffffffffffffffff
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x29 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x2:
  add x9, x21, x29 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x10 = 0xffffffffffffffff
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x8000000000000000:
  add x6, x10, x22 # perform operation
  # Check if x6 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0xffffffffffffffff
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x8000000000000001:
  add x9, x14, x11 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0xffffffffffffffff
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x7fffffffffffffff:
  add x9, x4, x23 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0xffffffffffffffff
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x17 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x7ffffffffffffffe:
  add x12, x28, x17 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0xffffffffffffffff
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x1 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xffffffffffffffff:
  add x29, x26, x1 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0xffffffffffffffff
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xfffffffffffffffe:
  add x6, x13, x3 # perform operation
  # Check if x6 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x9 = 0xffffffffffffffff
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x5bbc887763ae86f2:
  add x27, x9, x22 # perform operation
  # Check if x27 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0xffffffffffffffff
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xaaaaaaaaaaaaaaaa:
  add x9, x1, x20 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0xffffffffffffffff
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x5555555555555555:
  add x23, x11, x27 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x00000000ffffffff)
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x24 = 0xffffffffffffffff
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x12 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xffffffff:
  add x17, x24, x12 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x00000000fffffffe)
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x6 = 0xffffffffffffffff
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xfffffffe:
  add x17, x6, x23 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x0000000100000000)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0xffffffffffffffff
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x100000000:
  add x14, x26, x24 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xffffffffffffffff rs2 = 0x0000000100000001)
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x23 = 0xffffffffffffffff
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x100000001:
  add x11, x23, x4 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0000000000000000)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0xfffffffffffffffe
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x0:
  add x3, x12, x16 # perform operation
  # Check if x3 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0000000000000001)
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x23 = 0xfffffffffffffffe
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x1:
  add x31, x23, x20 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0000000000000002)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0xfffffffffffffffe
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x2:
  add x15, x11, x4 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0xfffffffffffffffe
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x8000000000000000:
  add x2, x14, x5 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0xfffffffffffffffe
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x8000000000000001:
  add x23, x14, x27 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0xfffffffffffffffe
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x13 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x7fffffffffffffff:
  add x16, x4, x13 # perform operation
  # Check if x16 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0xfffffffffffffffe
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x21 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x7ffffffffffffffe:
  add x17, x26, x21 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0xfffffffffffffffe
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xffffffffffffffff:
  add x10, x1, x11 # perform operation
  # Check if x10 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0xfffffffffffffffe
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xfffffffffffffffe:
  add x16, x3, x24 # perform operation
  # Check if x16 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0xfffffffffffffffe
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x5bbc887763ae86f2:
  add x21, x18, x20 # perform operation
  # Check if x21 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x2 = 0xfffffffffffffffe
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x18 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xaaaaaaaaaaaaaaaa:
  add x26, x2, x18 # perform operation
  # Check if x26 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x16 = 0xfffffffffffffffe
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x15 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x5555555555555555:
  add x24, x16, x15 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x00000000ffffffff)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0xfffffffffffffffe
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x26 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xffffffff:
  add x11, x27, x26 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x00000000fffffffe)
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x6 = 0xfffffffffffffffe
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x29 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xfffffffe:
  add x9, x6, x29 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0000000100000000)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0xfffffffffffffffe
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x9 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x100000000:
  add x15, x3, x9 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0000000100000001)
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x29 = 0xfffffffffffffffe
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x100000001:
  add x12, x29, x5 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0000000000000000)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x5bbc887763ae86f2
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x0:
  add x24, x27, x3 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0000000000000001)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x5bbc887763ae86f2
  lq x31, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x31 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x1:
  add x15, x13, x31 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0000000000000002)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0x5bbc887763ae86f2
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x30 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x2:
  add x22, x1, x30 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x2 = 0x5bbc887763ae86f2
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x8000000000000000:
  add x18, x2, x4 # perform operation
  # Check if x18 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x5bbc887763ae86f2
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x12 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x8000000000000001:
  add x21, x28, x12 # perform operation
  # Check if x21 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x17 = 0x5bbc887763ae86f2
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x7fffffffffffffff:
  add x31, x17, x24 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x29 = 0x5bbc887763ae86f2
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x9 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x7ffffffffffffffe:
  add x2, x29, x9 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0x5bbc887763ae86f2
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x28 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xffffffffffffffff:
  add x3, x12, x28 # perform operation
  # Check if x3 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x5bbc887763ae86f2
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x30 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xfffffffffffffffe:
  add x2, x27, x30 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x5bbc887763ae86f2
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x6 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x5bbc887763ae86f2:
  add x23, x4, x6 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x5bbc887763ae86f2
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xaaaaaaaaaaaaaaaa:
  add x24, x22, x10 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
  lq x31, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x31 = 0x5bbc887763ae86f2
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x5555555555555555:
  add x10, x31, x22 # perform operation
  # Check if x10 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x00000000ffffffff)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x5bbc887763ae86f2
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x14 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xffffffff:
  add x4, x13, x14 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x00000000fffffffe)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0x5bbc887763ae86f2
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xfffffffe:
  add x14, x11, x16 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0000000100000000)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x5bbc887763ae86f2
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x1 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x100000000:
  add x4, x22, x1 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0000000100000001)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0x5bbc887763ae86f2
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x100000001:
  add x22, x11, x27 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0000000000000000)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0xaaaaaaaaaaaaaaaa
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x29 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x0:
  add x31, x18, x29 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0000000000000001)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0xaaaaaaaaaaaaaaaa
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x1:
  add x5, x28, x10 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0000000000000002)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0xaaaaaaaaaaaaaaaa
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x2:
  add x4, x13, x22 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0xaaaaaaaaaaaaaaaa
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x13 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x8000000000000000:
  add x30, x20, x13 # perform operation
  # Check if x30 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0xaaaaaaaaaaaaaaaa
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x8000000000000001:
  add x31, x20, x23 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0xaaaaaaaaaaaaaaaa
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x28 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x7fffffffffffffff:
  add x5, x27, x28 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x24 = 0xaaaaaaaaaaaaaaaa
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x15 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x7ffffffffffffffe:
  add x22, x24, x15 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x16 = 0xaaaaaaaaaaaaaaaa
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xffffffffffffffff:
  add x24, x16, x23 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x29 = 0xaaaaaaaaaaaaaaaa
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xfffffffffffffffe:
  add x4, x29, x3 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x30 = 0xaaaaaaaaaaaaaaaa
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x14 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x5bbc887763ae86f2:
  add x13, x30, x14 # perform operation
  # Check if x13 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0xaaaaaaaaaaaaaaaa
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x28 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xaaaaaaaaaaaaaaaa:
  add x15, x12, x28 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x2 = 0xaaaaaaaaaaaaaaaa
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x5555555555555555:
  add x28, x2, x3 # perform operation
  # Check if x28 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x00000000ffffffff)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0xaaaaaaaaaaaaaaaa
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xffffffff:
  add x30, x26, x11 # perform operation
  # Check if x30 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x00000000fffffffe)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0xaaaaaaaaaaaaaaaa
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x21 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xfffffffe:
  add x24, x28, x21 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0000000100000000)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0xaaaaaaaaaaaaaaaa
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x1 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x100000000:
  add x9, x28, x1 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0000000100000001)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0xaaaaaaaaaaaaaaaa
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x100000001:
  add x27, x1, x10 # perform operation
  # Check if x27 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x0000000000000000)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x5555555555555555
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x1 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x0:
  add x9, x27, x1 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x0000000000000001)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0x5555555555555555
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x1:
  add x20, x3, x22 # perform operation
  # Check if x20 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x0000000000000002)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0x5555555555555555
  lq x31, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x31 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x2:
  add x1, x20, x31 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x5555555555555555
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x2 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x8000000000000000:
  add x5, x22, x2 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x17 = 0x5555555555555555
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x8000000000000001:
  add x2, x17, x5 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x5555555555555555
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x7fffffffffffffff:
  add x31, x27, x16 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x5555555555555555
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x9 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x7ffffffffffffffe:
  add x27, x18, x9 # perform operation
  # Check if x27 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x24 = 0x5555555555555555
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xffffffffffffffff:
  add x17, x24, x23 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0x5555555555555555
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xfffffffffffffffe:
  add x27, x3, x20 # perform operation
  # Check if x27 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x5 = 0x5555555555555555
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x5bbc887763ae86f2:
  add x4, x5, x24 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x10 = 0x5555555555555555
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xaaaaaaaaaaaaaaaa:
  add x28, x10, x16 # perform operation
  # Check if x28 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0x5555555555555555
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x2 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x5555555555555555:
  add x13, x20, x2 # perform operation
  # Check if x13 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x00000000ffffffff)
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x29 = 0x5555555555555555
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x13 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xffffffff:
  add x17, x29, x13 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x00000000fffffffe)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x5555555555555555
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x13 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xfffffffe:
  add x31, x28, x13 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x0000000100000000)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0x5555555555555555
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x100000000:
  add x21, x3, x11 # perform operation
  # Check if x21 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x5555555555555555 rs2 = 0x0000000100000001)
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x5 = 0x5555555555555555
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x100000001:
  add x22, x5, x16 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x0000000000000000)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0x00000000ffffffff
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x0:
  add x4, x11, x5 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x0000000000000001)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0x00000000ffffffff
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x1:
  add x29, x12, x5 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x0000000000000002)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x00000000ffffffff
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x2:
  add x6, x26, x10 # perform operation
  # Check if x6 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x8000000000000000)
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x27 = 0x00000000ffffffff
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x8000000000000000:
  add x11, x27, x3 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x8000000000000001)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x00000000ffffffff
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x6 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x8000000000000001:
  add x13, x28, x6 # perform operation
  # Check if x13 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x7fffffffffffffff)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x00000000ffffffff
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x7fffffffffffffff:
  add x5, x4, x24 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x7ffffffffffffffe)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x00000000ffffffff
  lq x31, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x31 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x7ffffffffffffffe:
  add x5, x26, x31 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0xffffffffffffffff)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x00000000ffffffff
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xffffffffffffffff:
  add x28, x22, x16 # perform operation
  # Check if x28 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0xfffffffffffffffe)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x00000000ffffffff
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xfffffffffffffffe:
  add x10, x18, x5 # perform operation
  # Check if x10 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x5bbc887763ae86f2)
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x23 = 0x00000000ffffffff
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x5bbc887763ae86f2:
  add x28, x23, x22 # perform operation
  # Check if x28 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0x00000000ffffffff
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xaaaaaaaaaaaaaaaa:
  add x30, x11, x24 # perform operation
  # Check if x30 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x5555555555555555)
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x21 = 0x00000000ffffffff
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x5555555555555555:
  add x17, x21, x4 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x00000000ffffffff)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x00000000ffffffff
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xffffffff:
  add x4, x26, x10 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x00000000fffffffe)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x00000000ffffffff
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xfffffffe:
  add x20, x26, x24 # perform operation
  # Check if x20 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x0000000100000000)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0x00000000ffffffff
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x26 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x100000000:
  add x23, x11, x26 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000ffffffff rs2 = 0x0000000100000001)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0x00000000ffffffff
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x100000001:
  add x2, x12, x11 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x0000000000000000)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x00000000fffffffe
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x0:
  add x12, x18, x20 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x0000000000000001)
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x21 = 0x00000000fffffffe
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x13 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x1:
  add x31, x21, x13 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x0000000000000002)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0x00000000fffffffe
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x29 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x2:
  add x4, x3, x29 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x8000000000000000)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0x00000000fffffffe
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x8000000000000000:
  add x12, x20, x4 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x8000000000000001)
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x23 = 0x00000000fffffffe
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x26 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x8000000000000001:
  add x12, x23, x26 # perform operation
  # Check if x12 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x7fffffffffffffff)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0x00000000fffffffe
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x1 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x7fffffffffffffff:
  add x9, x20, x1 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x7ffffffffffffffe)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0x00000000fffffffe
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x7ffffffffffffffe:
  add x26, x1, x11 # perform operation
  # Check if x26 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0xffffffffffffffff)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x00000000fffffffe
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xffffffffffffffff:
  add x29, x28, x5 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0xfffffffffffffffe)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0x00000000fffffffe
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x26 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xfffffffffffffffe:
  add x28, x1, x26 # perform operation
  # Check if x28 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x5bbc887763ae86f2)
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x26 = 0x00000000fffffffe
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x1 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x5bbc887763ae86f2:
  add x22, x26, x1 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x00000000fffffffe
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xaaaaaaaaaaaaaaaa:
  add x2, x18, x3 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x5555555555555555)
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x24 = 0x00000000fffffffe
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x5555555555555555:
  add x28, x24, x4 # perform operation
  # Check if x28 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x00000000ffffffff)
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x9 = 0x00000000fffffffe
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x30 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xffffffff:
  add x14, x9, x30 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x00000000fffffffe)
  lq x21, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x21 = 0x00000000fffffffe
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xfffffffe:
  add x27, x21, x16 # perform operation
  # Check if x27 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x0000000100000000)
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x2 = 0x00000000fffffffe
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x12 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x100000000:
  add x22, x2, x12 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x00000000fffffffe rs2 = 0x0000000100000001)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0x00000000fffffffe
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x23 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x100000001:
  add x20, x1, x23 # perform operation
  # Check if x20 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x0000000000000000)
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x28 = 0x0000000100000000
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x30 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x0:
  add x9, x28, x30 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x0000000000000001)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0x0000000100000000
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x1:
  add x29, x14, x22 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x0000000000000002)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0x0000000100000000
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x2:
  add x5, x12, x16 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x8000000000000000)
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x6 = 0x0000000100000000
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x8000000000000000:
  add x31, x6, x22 # perform operation
  # Check if x31 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x8000000000000001)
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x10 = 0x0000000100000000
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x8000000000000001:
  add x14, x10, x24 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x7fffffffffffffff)
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x23 = 0x0000000100000000
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x6 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x7fffffffffffffff:
  add x24, x23, x6 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x7ffffffffffffffe)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0x0000000100000000
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x14 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x7ffffffffffffffe:
  add x16, x3, x14 # perform operation
  # Check if x16 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0xffffffffffffffff)
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x20 = 0x0000000100000000
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x15 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xffffffffffffffff:
  add x5, x20, x15 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0xfffffffffffffffe)
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x24 = 0x0000000100000000
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xfffffffffffffffe:
  add x20, x24, x22 # perform operation
  # Check if x20 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x5bbc887763ae86f2)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0x0000000100000000
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x5bbc887763ae86f2:
  add x28, x12, x10 # perform operation
  # Check if x28 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x0000000100000000
  lq x28, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x28 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xaaaaaaaaaaaaaaaa:
  add x18, x4, x28 # perform operation
  # Check if x18 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x5555555555555555)
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x6 = 0x0000000100000000
  lq x24, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x24 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x5555555555555555:
  add x1, x6, x24 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x00000000ffffffff)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0x0000000100000000
  lq x27, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x27 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xffffffff:
  add x1, x11, x27 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x00000000fffffffe)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0x0000000100000000
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x22 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xfffffffe:
  add x3, x18, x22 # perform operation
  # Check if x3 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x0000000100000000)
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x23 = 0x0000000100000000
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x14 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x100000000:
  add x15, x23, x14 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000000 rs2 = 0x0000000100000001)
  lq x31, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x31 = 0x0000000100000000
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x1 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x100000001:
  add x29, x31, x1 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x0000000000000000)
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x29 = 0x0000000100000001
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x17 = 0x0000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x0:
  add x26, x29, x17 # perform operation
  # Check if x26 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x0 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x0000000000000001)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x0000000100000001
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0x0000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x1:
  add x13, x4, x3 # perform operation
  # Check if x13 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x1 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x0000000000000002)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0x0000000100000001
  lq x26, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x26 = 0x0000000000000002
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x2:
  add x24, x11, x26 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x8000000000000000)
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x23 = 0x0000000100000001
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0x8000000000000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x8000000000000000:
  add x9, x23, x20 # perform operation
  # Check if x9 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x8000000000000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x8000000000000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x8000000000000001)
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x15 = 0x0000000100000001
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x2 = 0x8000000000000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x8000000000000001:
  add x20, x15, x2 # perform operation
  # Check if x20 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x8000000000000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x8000000000000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x7fffffffffffffff)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x0000000100000001
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x12 = 0x7fffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x7fffffffffffffff:
  add x20, x22, x12 # perform operation
  # Check if x20 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x7fffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x7fffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x7ffffffffffffffe)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x0000000100000001
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x30 = 0x7ffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x7ffffffffffffffe:
  add x16, x22, x30 # perform operation
  # Check if x16 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x7ffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x7ffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0xffffffffffffffff)
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x10 = 0x0000000100000001
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x13 = 0xffffffffffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xffffffffffffffff:
  add x17, x10, x13 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xffffffffffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xffffffffffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0xfffffffffffffffe)
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x6 = 0x0000000100000001
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x9 = 0xfffffffffffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xfffffffffffffffe:
  add x1, x6, x9 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xfffffffffffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xfffffffffffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x5bbc887763ae86f2)
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x9 = 0x0000000100000001
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x5bbc887763ae86f2
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x5bbc887763ae86f2:
  add x17, x9, x5 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x5bbc887763ae86f2 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x5bbc887763ae86f2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x0000000100000001
  lq x20, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x20 = 0xaaaaaaaaaaaaaaaa
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xaaaaaaaaaaaaaaaa:
  add x23, x13, x20 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xaaaaaaaaaaaaaaaa ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xaaaaaaaaaaaaaaaa_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x5555555555555555)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x0000000100000001
  lq x30, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x30 = 0x5555555555555555
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x5555555555555555:
  add x24, x4, x30 # perform operation
  # Check if x24 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x5555555555555555 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x5555555555555555_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x00000000ffffffff)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x0000000100000001
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x29 = 0x00000000ffffffff
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xffffffff:
  add x15, x4, x29 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xffffffff ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xffffffff_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x00000000fffffffe)
  lq x23, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x23 = 0x0000000100000001
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x00000000fffffffe
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xfffffffe:
  add x13, x23, x5 # perform operation
  # Check if x13 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xfffffffe ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xfffffffe_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x0000000100000000)
  lq x22, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x22 = 0x0000000100000001
  lq x31, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x31 = 0x0000000100000000
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x100000000:
  add x16, x22, x31 # perform operation
  # Check if x16 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x100000000 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x100000000_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cr_rs1_rs2_edges (Test source rs1 = 0x0000000100000001 rs2 = 0x0000000100000001)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0x0000000100000001
  lq x29, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x29 = 0x0000000100000001
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x100000001:
  add x15, x14, x29 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x100000001 ; .word I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x100000001_str ; 1: ; addi x25, x25, (64>>3) ; .option pop





 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
  lq x0, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x0 = 0x639c4a0151a2e5fd
  lq x0, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x0 = 0x2b1adbb812019500
I_add_cg_cmp_rs1_rs2_b0:
  add x21, x0, x0 # perform operation
  # Check if x21 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b0 ; .word I_add_cg_cmp_rs1_rs2_b0_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x1 = 0x89da5142daea7b9e
  lq x1, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x1 = 0xabb2ff161f134ce1
I_add_cg_cmp_rs1_rs2_b1:
  add x15, x1, x1 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b1 ; .word I_add_cg_cmp_rs1_rs2_b1_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x2 = 0xa5595774ffb8e770
  lq x2, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x2 = 0xa286805ea8251f56
I_add_cg_cmp_rs1_rs2_b2:
  add x16, x2, x2 # perform operation
  # Check if x16 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b2 ; .word I_add_cg_cmp_rs1_rs2_b2_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x3 = 0x727d80fc47d06343
  lq x3, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x3 = 0xa307a3a6c5159379
I_add_cg_cmp_rs1_rs2_b3:
  add x26, x3, x3 # perform operation
  # Check if x26 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b3 ; .word I_add_cg_cmp_rs1_rs2_b3_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x4 = 0x857fbb8c86e25590
  lq x4, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x4 = 0x7d723dd425fae285
I_add_cg_cmp_rs1_rs2_b4:
  add x18, x4, x4 # perform operation
  # Check if x18 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b4 ; .word I_add_cg_cmp_rs1_rs2_b4_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x5 = 0x9f2dfcf985c766ff
  lq x5, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x5 = 0x3c52b5ec854300ea
I_add_cg_cmp_rs1_rs2_b5:
  add x20, x5, x5 # perform operation
  # Check if x20 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b5 ; .word I_add_cg_cmp_rs1_rs2_b5_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x6 = 0xa21abb0acd4932f5
  lq x6, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x6 = 0x8934aeb03199451d
I_add_cg_cmp_rs1_rs2_b6:
  add x17, x6, x6 # perform operation
  # Check if x17 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b6 ; .word I_add_cg_cmp_rs1_rs2_b6_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

  mv x12, x7 # switch temp register to avoid conflict with test
  mv x13, x8 # switch link pointer register to avoid conflict with test
# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
  lq x7, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x7 = 0x06d688086b684b72
  lq x7, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x7 = 0x0ca7e115cf598c2e
I_add_cg_cmp_rs1_rs2_b7:
  add x27, x7, x7 # perform operation
  # Check if x27 contains the expected result. x25 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x25) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rs1_rs2_b7 ; .word I_add_cg_cmp_rs1_rs2_b7_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
  lq x8, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x8 = 0x50e36f9829cd4cdc
  lq x8, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x8 = 0x6ccd916574f58b68
I_add_cg_cmp_rs1_rs2_b8:
  add x11, x8, x8 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rs1_rs2_b8 ; .word I_add_cg_cmp_rs1_rs2_b8_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x9 = 0xf7873c28fb91aa43
  lq x9, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x9 = 0x77b789aa29e487a2
I_add_cg_cmp_rs1_rs2_b9:
  add x6, x9, x9 # perform operation
  # Check if x6 contains the expected result. x25 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x25) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rs1_rs2_b9 ; .word I_add_cg_cmp_rs1_rs2_b9_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x10 = 0x90b1f43070c129c5
  lq x10, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x10 = 0x2f9dd50a98056ecc
I_add_cg_cmp_rs1_rs2_b10:
  add x29, x10, x10 # perform operation
  # Check if x29 contains the expected result. x25 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x25) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rs1_rs2_b10 ; .word I_add_cg_cmp_rs1_rs2_b10_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x11 = 0xd47787fea5d1cda0
  lq x11, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x11 = 0x505c1fff5addc5e1
I_add_cg_cmp_rs1_rs2_b11:
  add x22, x11, x11 # perform operation
  # Check if x22 contains the expected result. x25 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x25) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rs1_rs2_b11 ; .word I_add_cg_cmp_rs1_rs2_b11_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

  mv x7, x12 # switch temp register to avoid conflict with test
  mv x8, x13 # switch link pointer register to avoid conflict with test
# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x12 = 0x73d4b7663e33978a
  lq x12, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x12 = 0x7eeb3eacede37412
I_add_cg_cmp_rs1_rs2_b12:
  add x14, x12, x12 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b12 ; .word I_add_cg_cmp_rs1_rs2_b12_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x13 = 0x541c0d73bf46bb8d
  lq x13, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x13 = 0xe6141d396957797a
I_add_cg_cmp_rs1_rs2_b13:
  add x1, x13, x13 # perform operation
  # Check if x1 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b13 ; .word I_add_cg_cmp_rs1_rs2_b13_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x14 = 0xbae4d6da5488c840
  lq x14, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x14 = 0x3b3d4d8cd271f656
I_add_cg_cmp_rs1_rs2_b14:
  add x23, x14, x14 # perform operation
  # Check if x23 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b14 ; .word I_add_cg_cmp_rs1_rs2_b14_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x15 = 0xc6837ba5a7673112
  lq x15, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x15 = 0xc1df6e44187974da
I_add_cg_cmp_rs1_rs2_b15:
  add x5, x15, x15 # perform operation
  # Check if x5 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b15 ; .word I_add_cg_cmp_rs1_rs2_b15_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x16 = 0xb6f26b28afbd03aa
  lq x16, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x16 = 0x8566132fc1cbc846
I_add_cg_cmp_rs1_rs2_b16:
  add x14, x16, x16 # perform operation
  # Check if x14 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b16 ; .word I_add_cg_cmp_rs1_rs2_b16_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x17 = 0x0cc35e40d637449c
  lq x17, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x17 = 0x52431ea1f1eca2f2
I_add_cg_cmp_rs1_rs2_b17:
  add x10, x17, x17 # perform operation
  # Check if x10 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b17 ; .word I_add_cg_cmp_rs1_rs2_b17_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs1: x18 = 0xb8c690439bfc1254
  lq x18, 0(x19) ; addi x19, x19, (64>>3) # load rs2: x18 = 0xf99de966c3e58899
I_add_cg_cmp_rs1_rs2_b18:
  add x11, x18, x18 # perform operation
  # Check if x11 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b18 ; .word I_add_cg_cmp_rs1_rs2_b18_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

  mv x1, x19 # switch data pointer register to avoid conflict with test
# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
  lq x19, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x19 = 0xc4045122ed058007
  lq x19, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x19 = 0x5e40e8a5b35bd3f4
I_add_cg_cmp_rs1_rs2_b19:
  add x2, x19, x19 # perform operation
  # Check if x2 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b19 ; .word I_add_cg_cmp_rs1_rs2_b19_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
  lq x20, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x20 = 0xd4954596ba59e031
  lq x20, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x20 = 0x4f3e0d4c2171959e
I_add_cg_cmp_rs1_rs2_b20:
  add x15, x20, x20 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b20 ; .word I_add_cg_cmp_rs1_rs2_b20_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
  lq x21, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x21 = 0x95fc43e64fa5b9a1
  lq x21, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x21 = 0x7c8061f529803b80
I_add_cg_cmp_rs1_rs2_b21:
  add x26, x21, x21 # perform operation
  # Check if x26 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b21 ; .word I_add_cg_cmp_rs1_rs2_b21_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
  lq x22, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x22 = 0xa9d4cf1a9f83e92b
  lq x22, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x22 = 0x64566dcaad7a3594
I_add_cg_cmp_rs1_rs2_b22:
  add x16, x22, x22 # perform operation
  # Check if x16 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b22 ; .word I_add_cg_cmp_rs1_rs2_b22_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
  lq x23, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x23 = 0xede8b13e74f6ccfb
  lq x23, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x23 = 0x369056203be564b3
I_add_cg_cmp_rs1_rs2_b23:
  add x15, x23, x23 # perform operation
  # Check if x15 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b23 ; .word I_add_cg_cmp_rs1_rs2_b23_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
  lq x24, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x24 = 0xfb1343035c788394
  lq x24, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x24 = 0xba74fa4464fc6560
I_add_cg_cmp_rs1_rs2_b24:
  add x4, x24, x24 # perform operation
  # Check if x4 contains the expected result. x25 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x25) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b24 ; .word I_add_cg_cmp_rs1_rs2_b24_str ; 1: ; addi x25, x25, (64>>3) ; .option pop

  mv x15, x25 # switch signature pointer register to avoid conflict with test
# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
  lq x25, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x25 = 0x541a730df9907c09
  lq x25, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x25 = 0x1d37cfe02bdb2712
I_add_cg_cmp_rs1_rs2_b25:
  add x31, x25, x25 # perform operation
  # Check if x31 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b25 ; .word I_add_cg_cmp_rs1_rs2_b25_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
  lq x26, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x26 = 0xe1a6e9a40e74cc60
  lq x26, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x26 = 0x6fadd6ae9c074214
I_add_cg_cmp_rs1_rs2_b26:
  add x6, x26, x26 # perform operation
  # Check if x6 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b26 ; .word I_add_cg_cmp_rs1_rs2_b26_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
  lq x27, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x27 = 0x3357845555544459
  lq x27, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x27 = 0x216de89efbd8b398
I_add_cg_cmp_rs1_rs2_b27:
  add x4, x27, x27 # perform operation
  # Check if x4 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b27 ; .word I_add_cg_cmp_rs1_rs2_b27_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
  lq x28, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x28 = 0xa5d72aba09229e61
  lq x28, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x28 = 0x23e0f527fb68f99f
I_add_cg_cmp_rs1_rs2_b28:
  add x14, x28, x28 # perform operation
  # Check if x14 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b28 ; .word I_add_cg_cmp_rs1_rs2_b28_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
  lq x29, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x29 = 0x4b41ca033b5ed08a
  lq x29, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x29 = 0x4decf642b839644c
I_add_cg_cmp_rs1_rs2_b29:
  add x27, x29, x29 # perform operation
  # Check if x27 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b29 ; .word I_add_cg_cmp_rs1_rs2_b29_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
  lq x30, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x30 = 0xa6f5124dbe5871d9
  lq x30, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x30 = 0xf95b6a3fdff8a390
I_add_cg_cmp_rs1_rs2_b30:
  add x28, x30, x30 # perform operation
  # Check if x28 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b30 ; .word I_add_cg_cmp_rs1_rs2_b30_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
  lq x31, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x31 = 0x59794fa395c3f858
  lq x31, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x31 = 0x2406f118a79253b1
I_add_cg_cmp_rs1_rs2_b31:
  add x23, x31, x31 # perform operation
  # Check if x23 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rs1_rs2_b31 ; .word I_add_cg_cmp_rs1_rs2_b31_str ; 1: ; addi x15, x15, (64>>3) ; .option pop





 # Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
  lq x0, 0(x1) ; addi x1, x1, (64>>3) # load rs1: x0 = 0x3014774c7193a356
  lq x26, 0(x1) ; addi x1, x1, (64>>3) # load rs2: x26 = 0x14d2b4ae667968a7
I_add_cg_cmp_rd_rs1_b0:
  add x0, x0, x26 # perform operation
  # Check if x0 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x0, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_b0 ; .word I_add_cg_cmp_rd_rs1_b0_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

  mv x25, x1 # switch data pointer register to avoid conflict with test
# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
  lq x1, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x1 = 0x210976e00d1d191b
  lq x16, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x16 = 0x07d09cdcb6724918
I_add_cg_cmp_rd_rs1_b1:
  add x1, x1, x16 # perform operation
  # Check if x1 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_b1 ; .word I_add_cg_cmp_rd_rs1_b1_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
  lq x2, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x2 = 0x40f76593c84d1755
  lq x1, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x1 = 0x950d3da8e13ea7f8
I_add_cg_cmp_rd_rs1_b2:
  add x2, x2, x1 # perform operation
  # Check if x2 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_b2 ; .word I_add_cg_cmp_rd_rs1_b2_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
  lq x3, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x3 = 0xbbfc55689e98ef5f
  lq x2, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x2 = 0xa6532c1b2d93a27c
I_add_cg_cmp_rd_rs1_b3:
  add x3, x3, x2 # perform operation
  # Check if x3 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_b3 ; .word I_add_cg_cmp_rd_rs1_b3_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
  lq x4, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x4 = 0x79e0fa72540da988
  lq x30, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x30 = 0x1575438d57a6880f
I_add_cg_cmp_rd_rs1_b4:
  add x4, x4, x30 # perform operation
  # Check if x4 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_b4 ; .word I_add_cg_cmp_rd_rs1_b4_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
  lq x5, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x5 = 0xd4473d9e229e7bc7
  lq x22, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x22 = 0x199851aa5eed15ca
I_add_cg_cmp_rd_rs1_b5:
  add x5, x5, x22 # perform operation
  # Check if x5 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_b5 ; .word I_add_cg_cmp_rd_rs1_b5_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
  lq x6, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x6 = 0xd4df032dbe3ea1a6
  lq x20, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x20 = 0x5a12bdbb6c62639c
I_add_cg_cmp_rd_rs1_b6:
  add x6, x6, x20 # perform operation
  # Check if x6 contains the expected result. x15 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x15) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_b6 ; .word I_add_cg_cmp_rd_rs1_b6_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

  mv x4, x7 # switch temp register to avoid conflict with test
  mv x5, x8 # switch link pointer register to avoid conflict with test
# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
  lq x7, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x7 = 0x8ca89615631ea90b
  lq x13, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x13 = 0x3e298aae5e2c0a26
I_add_cg_cmp_rd_rs1_b7:
  add x7, x7, x13 # perform operation
  # Check if x7 contains the expected result. x15 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x7, 0(x15) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b7 ; .word I_add_cg_cmp_rd_rs1_b7_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
  lq x8, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x8 = 0x7592da6e54995033
  lq x11, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x11 = 0x8fd5025d54297cd1
I_add_cg_cmp_rd_rs1_b8:
  add x8, x8, x11 # perform operation
  # Check if x8 contains the expected result. x15 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x8, 0(x15) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b8 ; .word I_add_cg_cmp_rd_rs1_b8_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
  lq x9, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x9 = 0x0615f89cd57306fa
  lq x13, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x13 = 0x5b13009d817e08a5
I_add_cg_cmp_rd_rs1_b9:
  add x9, x9, x13 # perform operation
  # Check if x9 contains the expected result. x15 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x15) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b9 ; .word I_add_cg_cmp_rd_rs1_b9_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
  lq x10, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x10 = 0x3bbb2c2be65c8f24
  lq x13, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x13 = 0xc268a05c6499acff
I_add_cg_cmp_rd_rs1_b10:
  add x10, x10, x13 # perform operation
  # Check if x10 contains the expected result. x15 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x15) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b10 ; .word I_add_cg_cmp_rd_rs1_b10_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
  lq x11, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x11 = 0x47fd6ae5cf2a50b3
  lq x3, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x3 = 0x338ec7c4e741dc0b
I_add_cg_cmp_rd_rs1_b11:
  add x11, x11, x3 # perform operation
  # Check if x11 contains the expected result. x15 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x15) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b11 ; .word I_add_cg_cmp_rd_rs1_b11_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
  lq x12, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x12 = 0x9c41b9aa8310f2fa
  lq x24, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x24 = 0x5096c87ad993a36d
I_add_cg_cmp_rd_rs1_b12:
  add x12, x12, x24 # perform operation
  # Check if x12 contains the expected result. x15 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x15) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b12 ; .word I_add_cg_cmp_rd_rs1_b12_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
  lq x13, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x13 = 0xb7d495d9bb849585
  lq x17, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x17 = 0xff45877fcb515ae6
I_add_cg_cmp_rd_rs1_b13:
  add x13, x13, x17 # perform operation
  # Check if x13 contains the expected result. x15 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x15) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b13 ; .word I_add_cg_cmp_rd_rs1_b13_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
  lq x14, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x14 = 0xe822b9d55a6a65d8
  lq x23, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x23 = 0x8d4de868ca48a41c
I_add_cg_cmp_rd_rs1_b14:
  add x14, x14, x23 # perform operation
  # Check if x14 contains the expected result. x15 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x15) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b14 ; .word I_add_cg_cmp_rd_rs1_b14_str ; 1: ; addi x15, x15, (64>>3) ; .option pop

  mv x3, x15 # switch signature pointer register to avoid conflict with test
# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
  lq x15, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x15 = 0x8f2263d8837dd25f
  lq x28, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x28 = 0x33fb9386287d4597
I_add_cg_cmp_rd_rs1_b15:
  add x15, x15, x28 # perform operation
  # Check if x15 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b15 ; .word I_add_cg_cmp_rd_rs1_b15_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
  lq x16, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x16 = 0xa7b2c47a7eeb6e44
  lq x19, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x19 = 0xcbb3e49c073f70d3
I_add_cg_cmp_rd_rs1_b16:
  add x16, x16, x19 # perform operation
  # Check if x16 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b16 ; .word I_add_cg_cmp_rd_rs1_b16_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
  lq x17, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x17 = 0xebfc02ffb8b30e43
  lq x22, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x22 = 0x7f6630a3bd431478
I_add_cg_cmp_rd_rs1_b17:
  add x17, x17, x22 # perform operation
  # Check if x17 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b17 ; .word I_add_cg_cmp_rd_rs1_b17_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
  lq x18, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x18 = 0x9dba9ae62812ee41
  lq x13, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x13 = 0x37308526495891ae
I_add_cg_cmp_rd_rs1_b18:
  add x18, x18, x13 # perform operation
  # Check if x18 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b18 ; .word I_add_cg_cmp_rd_rs1_b18_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
  lq x19, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x19 = 0xd9be163bb365aab6
  lq x1, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x1 = 0xa6b63fea1e380349
I_add_cg_cmp_rd_rs1_b19:
  add x19, x19, x1 # perform operation
  # Check if x19 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x19, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b19 ; .word I_add_cg_cmp_rd_rs1_b19_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
  lq x20, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x20 = 0xf3844b43d57e4f28
  lq x7, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x7 = 0x959e76037e96eca9
I_add_cg_cmp_rd_rs1_b20:
  add x20, x20, x7 # perform operation
  # Check if x20 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b20 ; .word I_add_cg_cmp_rd_rs1_b20_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
  lq x21, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x21 = 0x0c770301c495e5c3
  lq x17, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x17 = 0x3c8dbaa584e79b26
I_add_cg_cmp_rd_rs1_b21:
  add x21, x21, x17 # perform operation
  # Check if x21 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b21 ; .word I_add_cg_cmp_rd_rs1_b21_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
  lq x22, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x22 = 0xfb8cea49e5c5a8a4
  lq x13, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x13 = 0x41f68b9d62ecfb6e
I_add_cg_cmp_rd_rs1_b22:
  add x22, x22, x13 # perform operation
  # Check if x22 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b22 ; .word I_add_cg_cmp_rd_rs1_b22_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
  lq x23, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x23 = 0x0fdea3a91a93f56f
  lq x0, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x0 = 0x6779f221afbe80e9
I_add_cg_cmp_rd_rs1_b23:
  add x23, x23, x0 # perform operation
  # Check if x23 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b23 ; .word I_add_cg_cmp_rd_rs1_b23_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
  lq x24, 0(x25) ; addi x25, x25, (64>>3) # load rs1: x24 = 0x5c2cfc9b9453633b
  lq x17, 0(x25) ; addi x25, x25, (64>>3) # load rs2: x17 = 0x7b26498989af5400
I_add_cg_cmp_rd_rs1_b24:
  add x24, x24, x17 # perform operation
  # Check if x24 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b24 ; .word I_add_cg_cmp_rd_rs1_b24_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

  mv x27, x25 # switch data pointer register to avoid conflict with test
# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
  lq x25, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x25 = 0xab9b523d0d627eb9
  lq x26, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x26 = 0x8ed800c7799ab627
I_add_cg_cmp_rd_rs1_b25:
  add x25, x25, x26 # perform operation
  # Check if x25 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x25, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b25 ; .word I_add_cg_cmp_rd_rs1_b25_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
  lq x26, 0(x27) ; addi x27, x27, (64>>3) # load rs1: x26 = 0xfa7735392d3e3d8d
  lq x24, 0(x27) ; addi x27, x27, (64>>3) # load rs2: x24 = 0x08c8561cf77aa180
I_add_cg_cmp_rd_rs1_b26:
  add x26, x26, x24 # perform operation
  # Check if x26 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b26 ; .word I_add_cg_cmp_rd_rs1_b26_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

  mv x31, x27 # switch data pointer register to avoid conflict with test
# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
  lq x27, 0(x31) ; addi x31, x31, (64>>3) # load rs1: x27 = 0x09973cb593b07bdf
  lq x30, 0(x31) ; addi x31, x31, (64>>3) # load rs2: x30 = 0xcdf86eff8462a9a7
I_add_cg_cmp_rd_rs1_b27:
  add x27, x27, x30 # perform operation
  # Check if x27 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b27 ; .word I_add_cg_cmp_rd_rs1_b27_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
  lq x28, 0(x31) ; addi x31, x31, (64>>3) # load rs1: x28 = 0xda55508272c2c930
  lq x23, 0(x31) ; addi x31, x31, (64>>3) # load rs2: x23 = 0x6c95e1be22225191
I_add_cg_cmp_rd_rs1_b28:
  add x28, x28, x23 # perform operation
  # Check if x28 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b28 ; .word I_add_cg_cmp_rd_rs1_b28_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
  lq x29, 0(x31) ; addi x31, x31, (64>>3) # load rs1: x29 = 0xa126f856e23cebc6
  lq x24, 0(x31) ; addi x31, x31, (64>>3) # load rs2: x24 = 0xfb75b2d68eae3d1b
I_add_cg_cmp_rd_rs1_b29:
  add x29, x29, x24 # perform operation
  # Check if x29 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b29 ; .word I_add_cg_cmp_rd_rs1_b29_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
  lq x30, 0(x31) ; addi x31, x31, (64>>3) # load rs1: x30 = 0x8fb82384f5e63969
  lq x24, 0(x31) ; addi x31, x31, (64>>3) # load rs2: x24 = 0xcf610ac94184456f
I_add_cg_cmp_rd_rs1_b30:
  add x30, x30, x24 # perform operation
  # Check if x30 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b30 ; .word I_add_cg_cmp_rd_rs1_b30_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

  mv x15, x31 # switch data pointer register to avoid conflict with test
# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
  lq x31, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x31 = 0xb2473f2cfe760b32
  lq x23, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x23 = 0x3374bbb45c4af982
I_add_cg_cmp_rd_rs1_b31:
  add x31, x31, x23 # perform operation
  # Check if x31 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_b31 ; .word I_add_cg_cmp_rd_rs1_b31_str ; 1: ; addi x3, x3, (64>>3) ; .option pop





 # Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
  lq x16, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x16 = 0xc19bdf5291c38f06
  lq x0, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x0 = 0x6cadc7ef89a20834
I_add_cg_cmp_rd_rs2_b0:
  add x0, x16, x0 # perform operation
  # Check if x0 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x0, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b0 ; .word I_add_cg_cmp_rd_rs2_b0_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
  lq x26, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x26 = 0x696a18e6483031a4
  lq x1, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x1 = 0x42a3edbed201ef21
I_add_cg_cmp_rd_rs2_b1:
  add x1, x26, x1 # perform operation
  # Check if x1 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b1 ; .word I_add_cg_cmp_rd_rs2_b1_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
  lq x14, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x14 = 0xb9a7134cc45dd5d6
  lq x2, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x2 = 0xe4375136d175e5e9
I_add_cg_cmp_rd_rs2_b2:
  add x2, x14, x2 # perform operation
  # Check if x2 contains the expected result. x3 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x3) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b2 ; .word I_add_cg_cmp_rd_rs2_b2_str ; 1: ; addi x3, x3, (64>>3) ; .option pop

  mv x14, x3 # switch signature pointer register to avoid conflict with test
# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
  lq x19, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x19 = 0xc6abedb9419c6366
  lq x3, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x3 = 0x3865b06965bd47db
I_add_cg_cmp_rd_rs2_b3:
  add x3, x19, x3 # perform operation
  # Check if x3 contains the expected result. x14 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x14) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b3 ; .word I_add_cg_cmp_rd_rs2_b3_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

  mv x7, x4 # switch temp register to avoid conflict with test
  mv x8, x5 # switch link pointer register to avoid conflict with test
# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
  lq x13, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x13 = 0x5a19c166b72041ae
  lq x4, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x4 = 0xf0b59163d538b3f1
I_add_cg_cmp_rd_rs2_b4:
  add x4, x13, x4 # perform operation
  # Check if x4 contains the expected result. x14 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x14) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs2_b4 ; .word I_add_cg_cmp_rd_rs2_b4_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
  lq x25, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x25 = 0x59d4f8a38916cd08
  lq x5, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x5 = 0x1b379fa6ec31245a
I_add_cg_cmp_rd_rs2_b5:
  add x5, x25, x5 # perform operation
  # Check if x5 contains the expected result. x14 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x14) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs2_b5 ; .word I_add_cg_cmp_rd_rs2_b5_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
  lq x4, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x4 = 0x07a9dbc3f137bee8
  lq x6, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x6 = 0x41df21e39423167d
I_add_cg_cmp_rd_rs2_b6:
  add x6, x4, x6 # perform operation
  # Check if x6 contains the expected result. x14 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x14) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs2_b6 ; .word I_add_cg_cmp_rd_rs2_b6_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

  mv x4, x7 # switch temp register to avoid conflict with test
  mv x5, x8 # switch link pointer register to avoid conflict with test
# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
  lq x10, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x10 = 0x93559ff4d156e0aa
  lq x7, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x7 = 0xa20cbdac5d91a4d6
I_add_cg_cmp_rd_rs2_b7:
  add x7, x10, x7 # perform operation
  # Check if x7 contains the expected result. x14 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x7, 0(x14) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b7 ; .word I_add_cg_cmp_rd_rs2_b7_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
  lq x22, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x22 = 0x8cc1b88af3b79244
  lq x8, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x8 = 0x643056437a17a4f2
I_add_cg_cmp_rd_rs2_b8:
  add x8, x22, x8 # perform operation
  # Check if x8 contains the expected result. x14 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x8, 0(x14) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b8 ; .word I_add_cg_cmp_rd_rs2_b8_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
  lq x24, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x24 = 0xb659345a72239287
  lq x9, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x9 = 0xff4c216edd64803c
I_add_cg_cmp_rd_rs2_b9:
  add x9, x24, x9 # perform operation
  # Check if x9 contains the expected result. x14 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x14) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b9 ; .word I_add_cg_cmp_rd_rs2_b9_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
  lq x12, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x12 = 0x49c42e8af5e289a6
  lq x10, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x10 = 0xb140a3b34b1b613c
I_add_cg_cmp_rd_rs2_b10:
  add x10, x12, x10 # perform operation
  # Check if x10 contains the expected result. x14 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x14) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b10 ; .word I_add_cg_cmp_rd_rs2_b10_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
  lq x2, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x2 = 0x082fd0cb1cb6c1d0
  lq x11, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x11 = 0xe9d5edb8b76a4436
I_add_cg_cmp_rd_rs2_b11:
  add x11, x2, x11 # perform operation
  # Check if x11 contains the expected result. x14 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x14) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b11 ; .word I_add_cg_cmp_rd_rs2_b11_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
  lq x8, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x8 = 0xaa983909222c5472
  lq x12, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x12 = 0x7dae30f7d5398b30
I_add_cg_cmp_rd_rs2_b12:
  add x12, x8, x12 # perform operation
  # Check if x12 contains the expected result. x14 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x14) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b12 ; .word I_add_cg_cmp_rd_rs2_b12_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
  lq x18, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x18 = 0x6235bb2d40fffa5d
  lq x13, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x13 = 0x6b8405717fbd45d7
I_add_cg_cmp_rd_rs2_b13:
  add x13, x18, x13 # perform operation
  # Check if x13 contains the expected result. x14 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x14) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b13 ; .word I_add_cg_cmp_rd_rs2_b13_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

  mv x26, x14 # switch signature pointer register to avoid conflict with test
# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
  lq x25, 0(x15) ; addi x15, x15, (64>>3) # load rs1: x25 = 0x2cb3eb5adc5e11ad
  lq x14, 0(x15) ; addi x15, x15, (64>>3) # load rs2: x14 = 0x3b7004007901b8b2
I_add_cg_cmp_rd_rs2_b14:
  add x14, x25, x14 # perform operation
  # Check if x14 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b14 ; .word I_add_cg_cmp_rd_rs2_b14_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

  mv x20, x15 # switch data pointer register to avoid conflict with test
# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
  lq x2, 0(x20) ; addi x20, x20, (64>>3) # load rs1: x2 = 0x3dad2fc70f907c34
  lq x15, 0(x20) ; addi x20, x20, (64>>3) # load rs2: x15 = 0x0d12258a6dc368af
I_add_cg_cmp_rd_rs2_b15:
  add x15, x2, x15 # perform operation
  # Check if x15 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b15 ; .word I_add_cg_cmp_rd_rs2_b15_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
  lq x9, 0(x20) ; addi x20, x20, (64>>3) # load rs1: x9 = 0x3204c113bcb00518
  lq x16, 0(x20) ; addi x20, x20, (64>>3) # load rs2: x16 = 0x503025890d9d211b
I_add_cg_cmp_rd_rs2_b16:
  add x16, x9, x16 # perform operation
  # Check if x16 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b16 ; .word I_add_cg_cmp_rd_rs2_b16_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
  lq x1, 0(x20) ; addi x20, x20, (64>>3) # load rs1: x1 = 0x62afbf47ab583edd
  lq x17, 0(x20) ; addi x20, x20, (64>>3) # load rs2: x17 = 0xef35d07793cdb49d
I_add_cg_cmp_rd_rs2_b17:
  add x17, x1, x17 # perform operation
  # Check if x17 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b17 ; .word I_add_cg_cmp_rd_rs2_b17_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
  lq x21, 0(x20) ; addi x20, x20, (64>>3) # load rs1: x21 = 0xe10d781d682b472d
  lq x18, 0(x20) ; addi x20, x20, (64>>3) # load rs2: x18 = 0x67058c6516403c37
I_add_cg_cmp_rd_rs2_b18:
  add x18, x21, x18 # perform operation
  # Check if x18 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b18 ; .word I_add_cg_cmp_rd_rs2_b18_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
  lq x9, 0(x20) ; addi x20, x20, (64>>3) # load rs1: x9 = 0x03700c3f9aebe8d0
  lq x19, 0(x20) ; addi x20, x20, (64>>3) # load rs2: x19 = 0x26fd46089e94d119
I_add_cg_cmp_rd_rs2_b19:
  add x19, x9, x19 # perform operation
  # Check if x19 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x19, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b19 ; .word I_add_cg_cmp_rd_rs2_b19_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

  mv x3, x20 # switch data pointer register to avoid conflict with test
# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
  lq x2, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x2 = 0x03f9b4524d21c9ad
  lq x20, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x20 = 0x8494b6e45a4e0f92
I_add_cg_cmp_rd_rs2_b20:
  add x20, x2, x20 # perform operation
  # Check if x20 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b20 ; .word I_add_cg_cmp_rd_rs2_b20_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
  lq x15, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x15 = 0x3e3afe6374c01a2b
  lq x21, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x21 = 0xc8143bef41d870de
I_add_cg_cmp_rd_rs2_b21:
  add x21, x15, x21 # perform operation
  # Check if x21 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b21 ; .word I_add_cg_cmp_rd_rs2_b21_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
  lq x27, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x27 = 0x3c552c5978903ad2
  lq x22, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x22 = 0x028158592142b0b0
I_add_cg_cmp_rd_rs2_b22:
  add x22, x27, x22 # perform operation
  # Check if x22 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b22 ; .word I_add_cg_cmp_rd_rs2_b22_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
  lq x2, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x2 = 0xda3ec0455dec4416
  lq x23, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x23 = 0x3c8424a77c28dd80
I_add_cg_cmp_rd_rs2_b23:
  add x23, x2, x23 # perform operation
  # Check if x23 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b23 ; .word I_add_cg_cmp_rd_rs2_b23_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
  lq x10, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x10 = 0xc00b31ef062215f9
  lq x24, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x24 = 0x6e8e28f64429fc53
I_add_cg_cmp_rd_rs2_b24:
  add x24, x10, x24 # perform operation
  # Check if x24 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b24 ; .word I_add_cg_cmp_rd_rs2_b24_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
  lq x2, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x2 = 0xf576b40405e88172
  lq x25, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x25 = 0xb033f829b090e7e2
I_add_cg_cmp_rd_rs2_b25:
  add x25, x2, x25 # perform operation
  # Check if x25 contains the expected result. x26 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x25, 0(x26) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b25 ; .word I_add_cg_cmp_rd_rs2_b25_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

  mv x28, x26 # switch signature pointer register to avoid conflict with test
# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
  lq x18, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x18 = 0x3116041f3012cead
  lq x26, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x26 = 0x6dde0ad11a9a3df8
I_add_cg_cmp_rd_rs2_b26:
  add x26, x18, x26 # perform operation
  # Check if x26 contains the expected result. x28 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x28) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b26 ; .word I_add_cg_cmp_rd_rs2_b26_str ; 1: ; addi x28, x28, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
  lq x25, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x25 = 0x60c59fe597171054
  lq x27, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x27 = 0x2123e7d99fd23a58
I_add_cg_cmp_rd_rs2_b27:
  add x27, x25, x27 # perform operation
  # Check if x27 contains the expected result. x28 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x28) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b27 ; .word I_add_cg_cmp_rd_rs2_b27_str ; 1: ; addi x28, x28, (64>>3) ; .option pop

  mv x20, x28 # switch signature pointer register to avoid conflict with test
# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
  lq x26, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x26 = 0x954ae653430a81f9
  lq x28, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x28 = 0xb1fb9fabb10c89de
I_add_cg_cmp_rd_rs2_b28:
  add x28, x26, x28 # perform operation
  # Check if x28 contains the expected result. x20 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x20) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b28 ; .word I_add_cg_cmp_rd_rs2_b28_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
  lq x22, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x22 = 0xb158ff0e04237203
  lq x29, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x29 = 0xebfa674955c231bc
I_add_cg_cmp_rd_rs2_b29:
  add x29, x22, x29 # perform operation
  # Check if x29 contains the expected result. x20 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x20) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b29 ; .word I_add_cg_cmp_rd_rs2_b29_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
  lq x21, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x21 = 0x4f2a971430d9a675
  lq x30, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x30 = 0x2514ec7230ce71e3
I_add_cg_cmp_rd_rs2_b30:
  add x30, x21, x30 # perform operation
  # Check if x30 contains the expected result. x20 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x20) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b30 ; .word I_add_cg_cmp_rd_rs2_b30_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
  lq x25, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x25 = 0xbcdc101c7c3d9a68
  lq x31, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x31 = 0x66d75828064af637
I_add_cg_cmp_rd_rs2_b31:
  add x31, x25, x31 # perform operation
  # Check if x31 contains the expected result. x20 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x20) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs2_b31 ; .word I_add_cg_cmp_rd_rs2_b31_str ; 1: ; addi x20, x20, (64>>3) ; .option pop





 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
  lq x0, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x0 = 0xc137bf95baab7231
  lq x0, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x0 = 0x4a584c85f71bdcf0
I_add_cg_cmp_rd_rs1_rs2_b0:
  add x0, x0, x0 # perform operation
  # Check if x0 contains the expected result. x20 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x0, 0(x20) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_rs2_b0 ; .word I_add_cg_cmp_rd_rs1_rs2_b0_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
  lq x1, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x1 = 0xb1ae1e78afa9008d
  lq x1, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x1 = 0xf7d1c3ec5750ccf6
I_add_cg_cmp_rd_rs1_rs2_b1:
  add x1, x1, x1 # perform operation
  # Check if x1 contains the expected result. x20 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x1, 0(x20) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_rs2_b1 ; .word I_add_cg_cmp_rd_rs1_rs2_b1_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
  lq x2, 0(x3) ; addi x3, x3, (64>>3) # load rs1: x2 = 0x1f9305922fdcbd29
  lq x2, 0(x3) ; addi x3, x3, (64>>3) # load rs2: x2 = 0x80e0bc7aa423cc60
I_add_cg_cmp_rd_rs1_rs2_b2:
  add x2, x2, x2 # perform operation
  # Check if x2 contains the expected result. x20 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x2, 0(x20) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_rs2_b2 ; .word I_add_cg_cmp_rd_rs1_rs2_b2_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

  mv x14, x3 # switch data pointer register to avoid conflict with test
# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
  lq x3, 0(x14) ; addi x14, x14, (64>>3) # load rs1: x3 = 0xaf5c8f2cea410cde
  lq x3, 0(x14) ; addi x14, x14, (64>>3) # load rs2: x3 = 0x90ddcee2e902a31d
I_add_cg_cmp_rd_rs1_rs2_b3:
  add x3, x3, x3 # perform operation
  # Check if x3 contains the expected result. x20 is the signature ptr, x5 is the link ptr, x4 is a temp reg.
  .option push ; .option norvc ; sq x3, 0(x20) ; beq x0, x0, 1f ; jal x5, failedtest_x5_x4 ; .word I_add_cg_cmp_rd_rs1_rs2_b3 ; .word I_add_cg_cmp_rd_rs1_rs2_b3_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

  mv x12, x4 # switch temp register to avoid conflict with test
  mv x13, x5 # switch link pointer register to avoid conflict with test
# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
  lq x4, 0(x14) ; addi x14, x14, (64>>3) # load rs1: x4 = 0x259b72182106af34
  lq x4, 0(x14) ; addi x14, x14, (64>>3) # load rs2: x4 = 0xe92e1dcb68b32256
I_add_cg_cmp_rd_rs1_rs2_b4:
  add x4, x4, x4 # perform operation
  # Check if x4 contains the expected result. x20 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x4, 0(x20) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rd_rs1_rs2_b4 ; .word I_add_cg_cmp_rd_rs1_rs2_b4_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
  lq x5, 0(x14) ; addi x14, x14, (64>>3) # load rs1: x5 = 0x00823a289fe8f51d
  lq x5, 0(x14) ; addi x14, x14, (64>>3) # load rs2: x5 = 0x32f1ea88a2619969
I_add_cg_cmp_rd_rs1_rs2_b5:
  add x5, x5, x5 # perform operation
  # Check if x5 contains the expected result. x20 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x5, 0(x20) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rd_rs1_rs2_b5 ; .word I_add_cg_cmp_rd_rs1_rs2_b5_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
  lq x6, 0(x14) ; addi x14, x14, (64>>3) # load rs1: x6 = 0x9a6a75e97a704fc5
  lq x6, 0(x14) ; addi x14, x14, (64>>3) # load rs2: x6 = 0x9ee0de72949b8dc3
I_add_cg_cmp_rd_rs1_rs2_b6:
  add x6, x6, x6 # perform operation
  # Check if x6 contains the expected result. x20 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x6, 0(x20) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rd_rs1_rs2_b6 ; .word I_add_cg_cmp_rd_rs1_rs2_b6_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
  lq x7, 0(x14) ; addi x14, x14, (64>>3) # load rs1: x7 = 0x70b8ae2b9e788e74
  lq x7, 0(x14) ; addi x14, x14, (64>>3) # load rs2: x7 = 0xd5f5feed9ff796c9
I_add_cg_cmp_rd_rs1_rs2_b7:
  add x7, x7, x7 # perform operation
  # Check if x7 contains the expected result. x20 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x7, 0(x20) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rd_rs1_rs2_b7 ; .word I_add_cg_cmp_rd_rs1_rs2_b7_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
  lq x8, 0(x14) ; addi x14, x14, (64>>3) # load rs1: x8 = 0x406c2329344c631a
  lq x8, 0(x14) ; addi x14, x14, (64>>3) # load rs2: x8 = 0xb673eaa6be894fb5
I_add_cg_cmp_rd_rs1_rs2_b8:
  add x8, x8, x8 # perform operation
  # Check if x8 contains the expected result. x20 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x8, 0(x20) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rd_rs1_rs2_b8 ; .word I_add_cg_cmp_rd_rs1_rs2_b8_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
  lq x9, 0(x14) ; addi x14, x14, (64>>3) # load rs1: x9 = 0x7520de874289719d
  lq x9, 0(x14) ; addi x14, x14, (64>>3) # load rs2: x9 = 0x5dc351c23612b0ff
I_add_cg_cmp_rd_rs1_rs2_b9:
  add x9, x9, x9 # perform operation
  # Check if x9 contains the expected result. x20 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x9, 0(x20) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rd_rs1_rs2_b9 ; .word I_add_cg_cmp_rd_rs1_rs2_b9_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
  lq x10, 0(x14) ; addi x14, x14, (64>>3) # load rs1: x10 = 0x88a3ed00ef3e3200
  lq x10, 0(x14) ; addi x14, x14, (64>>3) # load rs2: x10 = 0xb6dea2321eca4b14
I_add_cg_cmp_rd_rs1_rs2_b10:
  add x10, x10, x10 # perform operation
  # Check if x10 contains the expected result. x20 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x10, 0(x20) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rd_rs1_rs2_b10 ; .word I_add_cg_cmp_rd_rs1_rs2_b10_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
  lq x11, 0(x14) ; addi x14, x14, (64>>3) # load rs1: x11 = 0xe372ba32e12bb546
  lq x11, 0(x14) ; addi x14, x14, (64>>3) # load rs2: x11 = 0x5439a97fc59c81da
I_add_cg_cmp_rd_rs1_rs2_b11:
  add x11, x11, x11 # perform operation
  # Check if x11 contains the expected result. x20 is the signature ptr, x13 is the link ptr, x12 is a temp reg.
  .option push ; .option norvc ; sq x11, 0(x20) ; beq x0, x0, 1f ; jal x13, failedtest_x13_x12 ; .word I_add_cg_cmp_rd_rs1_rs2_b11 ; .word I_add_cg_cmp_rd_rs1_rs2_b11_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

  mv x7, x12 # switch temp register to avoid conflict with test
  mv x8, x13 # switch link pointer register to avoid conflict with test
# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
  lq x12, 0(x14) ; addi x14, x14, (64>>3) # load rs1: x12 = 0x291cddf2ae09c0cc
  lq x12, 0(x14) ; addi x14, x14, (64>>3) # load rs2: x12 = 0xff40d5af48942b04
I_add_cg_cmp_rd_rs1_rs2_b12:
  add x12, x12, x12 # perform operation
  # Check if x12 contains the expected result. x20 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x12, 0(x20) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b12 ; .word I_add_cg_cmp_rd_rs1_rs2_b12_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
  lq x13, 0(x14) ; addi x14, x14, (64>>3) # load rs1: x13 = 0xe5a24262697ad07f
  lq x13, 0(x14) ; addi x14, x14, (64>>3) # load rs2: x13 = 0xe39482dfd17c4547
I_add_cg_cmp_rd_rs1_rs2_b13:
  add x13, x13, x13 # perform operation
  # Check if x13 contains the expected result. x20 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x13, 0(x20) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b13 ; .word I_add_cg_cmp_rd_rs1_rs2_b13_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

  mv x17, x14 # switch data pointer register to avoid conflict with test
# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
  lq x14, 0(x17) ; addi x17, x17, (64>>3) # load rs1: x14 = 0x49780ca626ba833f
  lq x14, 0(x17) ; addi x17, x17, (64>>3) # load rs2: x14 = 0xb8c8c322a9bf4069
I_add_cg_cmp_rd_rs1_rs2_b14:
  add x14, x14, x14 # perform operation
  # Check if x14 contains the expected result. x20 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x14, 0(x20) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b14 ; .word I_add_cg_cmp_rd_rs1_rs2_b14_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
  lq x15, 0(x17) ; addi x17, x17, (64>>3) # load rs1: x15 = 0x49caecac3e5e934f
  lq x15, 0(x17) ; addi x17, x17, (64>>3) # load rs2: x15 = 0xee2bf77dbc9cfdf3
I_add_cg_cmp_rd_rs1_rs2_b15:
  add x15, x15, x15 # perform operation
  # Check if x15 contains the expected result. x20 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x15, 0(x20) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b15 ; .word I_add_cg_cmp_rd_rs1_rs2_b15_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
  lq x16, 0(x17) ; addi x17, x17, (64>>3) # load rs1: x16 = 0x6615404354b876cb
  lq x16, 0(x17) ; addi x17, x17, (64>>3) # load rs2: x16 = 0xa5c1f4e649761a48
I_add_cg_cmp_rd_rs1_rs2_b16:
  add x16, x16, x16 # perform operation
  # Check if x16 contains the expected result. x20 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x16, 0(x20) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b16 ; .word I_add_cg_cmp_rd_rs1_rs2_b16_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

  mv x10, x17 # switch data pointer register to avoid conflict with test
# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
  lq x17, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x17 = 0xe226094ec54ed176
  lq x17, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x17 = 0x4e54e998c21c6c15
I_add_cg_cmp_rd_rs1_rs2_b17:
  add x17, x17, x17 # perform operation
  # Check if x17 contains the expected result. x20 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x17, 0(x20) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b17 ; .word I_add_cg_cmp_rd_rs1_rs2_b17_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
  lq x18, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x18 = 0x04b9e694a61757a3
  lq x18, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x18 = 0x5f5e79b9cf6217a4
I_add_cg_cmp_rd_rs1_rs2_b18:
  add x18, x18, x18 # perform operation
  # Check if x18 contains the expected result. x20 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x18, 0(x20) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b18 ; .word I_add_cg_cmp_rd_rs1_rs2_b18_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
  lq x19, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x19 = 0xd994fd0a408f09d0
  lq x19, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x19 = 0x353c07f2e9b30dd7
I_add_cg_cmp_rd_rs1_rs2_b19:
  add x19, x19, x19 # perform operation
  # Check if x19 contains the expected result. x20 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x19, 0(x20) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b19 ; .word I_add_cg_cmp_rd_rs1_rs2_b19_str ; 1: ; addi x20, x20, (64>>3) ; .option pop

  mv x24, x20 # switch signature pointer register to avoid conflict with test
# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
  lq x20, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x20 = 0x27b7876b4cc7a58e
  lq x20, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x20 = 0x7af2f839cd069b0a
I_add_cg_cmp_rd_rs1_rs2_b20:
  add x20, x20, x20 # perform operation
  # Check if x20 contains the expected result. x24 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x20, 0(x24) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b20 ; .word I_add_cg_cmp_rd_rs1_rs2_b20_str ; 1: ; addi x24, x24, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
  lq x21, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x21 = 0x67be7bcd1358521f
  lq x21, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x21 = 0x0458d60e4fc32b62
I_add_cg_cmp_rd_rs1_rs2_b21:
  add x21, x21, x21 # perform operation
  # Check if x21 contains the expected result. x24 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x21, 0(x24) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b21 ; .word I_add_cg_cmp_rd_rs1_rs2_b21_str ; 1: ; addi x24, x24, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
  lq x22, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x22 = 0xa7e3513313a7cd5e
  lq x22, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x22 = 0x72ca692eb12179ce
I_add_cg_cmp_rd_rs1_rs2_b22:
  add x22, x22, x22 # perform operation
  # Check if x22 contains the expected result. x24 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x22, 0(x24) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b22 ; .word I_add_cg_cmp_rd_rs1_rs2_b22_str ; 1: ; addi x24, x24, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
  lq x23, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x23 = 0xf966e857c51a4909
  lq x23, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x23 = 0xf566eddfb40b7e63
I_add_cg_cmp_rd_rs1_rs2_b23:
  add x23, x23, x23 # perform operation
  # Check if x23 contains the expected result. x24 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x23, 0(x24) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b23 ; .word I_add_cg_cmp_rd_rs1_rs2_b23_str ; 1: ; addi x24, x24, (64>>3) ; .option pop

  mv x26, x24 # switch signature pointer register to avoid conflict with test
# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
  lq x24, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x24 = 0xb74f4b72fcb860c3
  lq x24, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x24 = 0x65d5b4145d896013
I_add_cg_cmp_rd_rs1_rs2_b24:
  add x24, x24, x24 # perform operation
  # Check if x24 contains the expected result. x26 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x24, 0(x26) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b24 ; .word I_add_cg_cmp_rd_rs1_rs2_b24_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
  lq x25, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x25 = 0xec035c14085990fe
  lq x25, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x25 = 0x0aed84f6bef37d13
I_add_cg_cmp_rd_rs1_rs2_b25:
  add x25, x25, x25 # perform operation
  # Check if x25 contains the expected result. x26 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x25, 0(x26) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b25 ; .word I_add_cg_cmp_rd_rs1_rs2_b25_str ; 1: ; addi x26, x26, (64>>3) ; .option pop

  mv x14, x26 # switch signature pointer register to avoid conflict with test
# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
  lq x26, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x26 = 0xc5f9027a70356ade
  lq x26, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x26 = 0x5c3e8dccb27565c2
I_add_cg_cmp_rd_rs1_rs2_b26:
  add x26, x26, x26 # perform operation
  # Check if x26 contains the expected result. x14 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x26, 0(x14) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b26 ; .word I_add_cg_cmp_rd_rs1_rs2_b26_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
  lq x27, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x27 = 0xb473a87cb6822aa1
  lq x27, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x27 = 0x4c90019ea1f58a3a
I_add_cg_cmp_rd_rs1_rs2_b27:
  add x27, x27, x27 # perform operation
  # Check if x27 contains the expected result. x14 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x27, 0(x14) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b27 ; .word I_add_cg_cmp_rd_rs1_rs2_b27_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
  lq x28, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x28 = 0x6a853c256d440a84
  lq x28, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x28 = 0x04ec3cd5c415f66e
I_add_cg_cmp_rd_rs1_rs2_b28:
  add x28, x28, x28 # perform operation
  # Check if x28 contains the expected result. x14 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x28, 0(x14) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b28 ; .word I_add_cg_cmp_rd_rs1_rs2_b28_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
  lq x29, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x29 = 0x5d8907547e167086
  lq x29, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x29 = 0x5a09d57265e96858
I_add_cg_cmp_rd_rs1_rs2_b29:
  add x29, x29, x29 # perform operation
  # Check if x29 contains the expected result. x14 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x29, 0(x14) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b29 ; .word I_add_cg_cmp_rd_rs1_rs2_b29_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
  lq x30, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x30 = 0x018a0daa6306675e
  lq x30, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x30 = 0x3de3e12983d1ddec
I_add_cg_cmp_rd_rs1_rs2_b30:
  add x30, x30, x30 # perform operation
  # Check if x30 contains the expected result. x14 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x30, 0(x14) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b30 ; .word I_add_cg_cmp_rd_rs1_rs2_b30_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

 # Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
  lq x31, 0(x10) ; addi x10, x10, (64>>3) # load rs1: x31 = 0xad3c16594a39d3ad
  lq x31, 0(x10) ; addi x10, x10, (64>>3) # load rs2: x31 = 0x15d52d415b9085aa
I_add_cg_cmp_rd_rs1_rs2_b31:
  add x31, x31, x31 # perform operation
  # Check if x31 contains the expected result. x14 is the signature ptr, x8 is the link ptr, x7 is a temp reg.
  .option push ; .option norvc ; sq x31, 0(x14) ; beq x0, x0, 1f ; jal x8, failedtest_x8_x7 ; .word I_add_cg_cmp_rd_rs1_rs2_b31 ; .word I_add_cg_cmp_rd_rs1_rs2_b31_str ; 1: ; addi x14, x14, (64>>3) ; .option pop

  mv x2, x14 # restore signature pointer to default register for teardown


RVTEST_CODE_END


RVTEST_DATA_BEGIN


.dword 0xab8f14e2795ba545
.dword 0x7cff6728488620d9
.dword 0x7175f3dfb907ad96
.dword 0x5112e764fe64f78f
.dword 0x155b413507582920
.dword 0xf103a60caefe3c9c
.dword 0x7e33e4f817e54095
.dword 0x1ca9bae717c499e3
.dword 0x32c0b170ea8550ff
.dword 0xf8934f2d06587591
.dword 0x876240f5f1f178b8
.dword 0xba52de6df5f9fb86
.dword 0x7f38d749b9be7a75
.dword 0x2d5aee8bca6058fd
.dword 0x7a516a4a8872b9c7
.dword 0x28c9c0060c2d9615
.dword 0xb57e79ab184d2958
.dword 0xa9463b9a8f865f5c
.dword 0xca7794d83e498d49
.dword 0x72a0d78358e1762b
.dword 0x3c88478d4fe14414
.dword 0x1f2f62e9df4a5f55
.dword 0x28cb711e2d73193d
.dword 0x40214e384ddb07f1
.dword 0x0b5bc7087604cc2c
.dword 0x5cc11b571453a40f
.dword 0xe6aa280a22773413
.dword 0x1483c110ff92fab4
.dword 0x1eee3edf011c7895
.dword 0x15685edf1368e343
.dword 0x88c2eb61b72635c8
.dword 0x3c2e8ded44b51dc6
.dword 0xf0c7433620f2088f
.dword 0x5bc60702e376fde3
.dword 0xc29ebecd8541527b
.dword 0xbbd1662fdccbb261
.dword 0x27bb3ee598fea259
.dword 0xbf955895aabf7cf7
.dword 0xb4743055258b1c9a
.dword 0xc7014713471a0e78
.dword 0xaac46c7d7fc9caef
.dword 0x8d45a6e06e598b23
.dword 0x540d414fdfdaf135
.dword 0x3af03ed8cf1bfa5e
.dword 0xd35940a702867701
.dword 0x7567753d4f803770
.dword 0x8dd0c2e67dfb2019
.dword 0x2b3413c6d452b1aa
.dword 0x86fce15b12ca8e8b
.dword 0xd60b0a31f80c75e2
.dword 0x38a845ea29250f9e
.dword 0x469a8f500b3f2927
.dword 0xe57a553d386ccb0b
.dword 0x537f503768c62473
.dword 0xf65d24bd2f125793
.dword 0x814e3b617dfa8c79
.dword 0x3793e5e124ea6673
.dword 0xd0caf0158edeb8fa
.dword 0x5899aed3980e679f
.dword 0x01687b82c1f1ce78
.dword 0x03d8523566e97e0c
.dword 0xab1f99c84bec5ef9
.dword 0x703eb9ed4a01d1c5
.dword 0xf8a72569afcc7612
.dword 0x41cae6f019022473
.dword 0x3eaae683b83e7c5c
.dword 0x43d5ee725d3b6cc6
.dword 0x7f3dab23e01af2ca
.dword 0x975eb46c2bf6b50e
.dword 0x2bde2caee8510754
.dword 0x63271b218524c578
.dword 0xc2e70e8aafab724e
.dword 0x31b6ca4cfd926c5c
.dword 0x0e3e6e1a69ce70af
.dword 0x3b9b6e94a52e41fe
.dword 0x816b08c94836c192
.dword 0xa587e0d95926fe45
.dword 0xfc20a9df8818ebd1
.dword 0xcf6b8bdabbf88405
.dword 0x620229e866c4468c
.dword 0x48c6243969df7aca
.dword 0xa9cdae0012d86d6c
.dword 0x38af9c3bcb75737d
.dword 0xa3515808128e3c15
.dword 0x53b23b360e3de86d
.dword 0xc7ad9342d543610b
.dword 0xece184e8a6dd3cfe
.dword 0x2e3ca2b7310eaa30
.dword 0x3d346c593e80450b
.dword 0x4d3a3208b1b60c2e
.dword 0xc7966030ba7ea2bc
.dword 0xdeab9ba16944d6a3
.dword 0xc34ce661bf00be87
.dword 0xbfed69773ce3e7fb
.dword 0x9f384bd6305e08cd
.dword 0xad0e914a84beb586
.dword 0x2d8552a1d25dcdb8
.dword 0xf83a4f861ac832cc
.dword 0x0a1af462bb5a1302
.dword 0xf21bdfcfc62111a1
.dword 0x5fcf6182bba0120a
.dword 0xda7f969fc6e566bb
.dword 0x02006d8fbbbef7d5
.dword 0x1f73980003b8b559
.dword 0x5d16a22721385c43
.dword 0xe2485bb0d824b444
.dword 0x1233095af7d31109
.dword 0xbf9abc665a9b914e
.dword 0xe917e1668217fb16
.dword 0xc10379d1c6b6bde5
.dword 0x14f03448aff64e54
.dword 0x0aac8f33821c89b6
.dword 0x33397d1805094cd0
.dword 0xab3bd44d31d15543
.dword 0xe87221de13d924e0
.dword 0xa0dd6448b9e71d99
.dword 0x3ff5a81b354a9cde
.dword 0x71cf14f8baddd979
.dword 0x64fb2448bed02a7a
.dword 0xc625cae6009e4c63
.dword 0xd4b0bd90375ee341
.dword 0x747b9cd21072d3b1
.dword 0x62b2a528bd376e95
.dword 0x68ce98751e3c6610
.dword 0xf22b4f26dd94a250
.dword 0x19a2fbad5fdec793
.dword 0x12dad8d61a4633f2
.dword 0x1f30309b75db76c7
.dword 0xed078b9341d58273
.dword 0x45c29b42322b2e78
.dword 0xaef87f419796c960
.dword 0xff4799d0135e99dc
.dword 0x3f9d2b536868529a
.dword 0x621482b7cfc50d6b
.dword 0xb8a9e20011c98bc0
.dword 0xd036321a6d6848fa
.dword 0x348bc6aebb034e28
.dword 0x1e470dd78a12d3fd
.dword 0xa391fecd330ad053
.dword 0xa622a84cab17eb46
.dword 0xd8c081b644d6907c
.dword 0x3d1b0cc22724b344
.dword 0x3de6e2cfb5ee26ae
.dword 0x88b864a6e20b6023
.dword 0xf21e100d40a639bc
.dword 0x71a7383d3cab5592
.dword 0x25342b205e562e47
.dword 0x80f834e573cc5a27
.dword 0x04507ba251961035
.dword 0x6f638255e816430c
.dword 0xb35c35761f43cfe6
.dword 0x7f3872754f70d3b5
.dword 0x9d1babbfc52ddc23
.dword 0x0e2bd96887685a9a
.dword 0x91032b2e818da0ce
.dword 0x12258f546dddc320
.dword 0xa1f003f9f0d9f002
.dword 0xd70241be98355271
.dword 0x49bf4fdfd9fe776b
.dword 0x63af217c4a653e21
.dword 0xe33d4b0b23153a0c
.dword 0x0a9a21d62c6d574f
.dword 0xc8e256d572af9519
.dword 0xfea8bcb49136f259
.dword 0xf4430e4bb3e092ea
.dword 0x886a1096884481cc
.dword 0x2bd547b5c8c3ce57
.dword 0xd8a41f69761853a8
.dword 0xdb6e0539b8ac4eb9
.dword 0xd14f98d9b1b781d1
.dword 0xa9de691fbf00490f
.dword 0x5234b0b9a96acb3a
.dword 0x02eb8fbc0ba0145e
.dword 0x0f3861090ba4ec85
.dword 0xb83d042fc586122e
.dword 0x8b7b7bd7a80c4604
.dword 0xd06e0cb7a1ccba0d
.dword 0x59866d92afd8ec88
.dword 0xffe01ba72ed9ac00
.dword 0x789baf59a55d2b4f
.dword 0x53a4fe4e0d3a5721
.dword 0xca1d5f9b27f0658a
.dword 0xccc8bca7add1ff94
.dword 0x35393de234878449
.dword 0xb150eca1c2b840a9
.dword 0x984e7797a5b71193
.dword 0x402fc02a43e8f1b2
.dword 0x7d745378c3be9c75
.dword 0x0c63e0197d6048bf
.dword 0x5ae14803cc9098ff
.dword 0xbf8f045228680b1b
.dword 0x97384ae960ca270c
.dword 0x0000000000000000
.dword 0xe2f827902e80e14a
.dword 0x0000000000000001
.dword 0x73426dcee139eb42
.dword 0x0000000000000002
.dword 0x4e6b2693113667fc
.dword 0x8000000000000000
.dword 0xdedd714018d7fff1
.dword 0x8000000000000001
.dword 0x3afc9bb077345ffb
.dword 0x7fffffffffffffff
.dword 0xe38811be8c446dc3
.dword 0x7ffffffffffffffe
.dword 0xee92503565b98a9c
.dword 0xffffffffffffffff
.dword 0x330354c63b17b904
.dword 0xfffffffffffffffe
.dword 0x00214c522256027e
.dword 0x5bbc887763ae86f2
.dword 0x0ed7b293680436ab
.dword 0xaaaaaaaaaaaaaaaa
.dword 0xb58989a012de63b8
.dword 0x5555555555555555
.dword 0x6e64843a37a1eeba
.dword 0x00000000ffffffff
.dword 0x313d9bfab221ddaa
.dword 0x00000000fffffffe
.dword 0x5bb53a17a4173aa8
.dword 0x0000000100000000
.dword 0x64bde7266d2254f1
.dword 0x0000000100000001
.dword 0xa2247c6f6f8cb5cb
.dword 0x39a5c7711f3b1891
.dword 0x0000000000000000
.dword 0x51e6fa61e76b34dd
.dword 0x0000000000000001
.dword 0x602608043e1e0b20
.dword 0x0000000000000002
.dword 0x965dcbb43f1bfcf6
.dword 0x8000000000000000
.dword 0x0556e7229b9604b7
.dword 0x8000000000000001
.dword 0xdd6e85df80927107
.dword 0x7fffffffffffffff
.dword 0xbd602a084b193956
.dword 0x7ffffffffffffffe
.dword 0x3d7ac084eb5f05f3
.dword 0xffffffffffffffff
.dword 0xb204dfd4fcc1792a
.dword 0xfffffffffffffffe
.dword 0x13748a1f67097101
.dword 0x5bbc887763ae86f2
.dword 0x6287e9df13c23af7
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x84973bea18d9c61a
.dword 0x5555555555555555
.dword 0xf2fff439464ee564
.dword 0x00000000ffffffff
.dword 0xa3af1af07406d923
.dword 0x00000000fffffffe
.dword 0xebf68641020d0d6d
.dword 0x0000000100000000
.dword 0x60997967767c885e
.dword 0x0000000100000001
.dword 0x0000000000000000
.dword 0x0000000000000000
.dword 0x0000000000000000
.dword 0x0000000000000001
.dword 0x0000000000000000
.dword 0x0000000000000002
.dword 0x0000000000000000
.dword 0x8000000000000000
.dword 0x0000000000000000
.dword 0x8000000000000001
.dword 0x0000000000000000
.dword 0x7fffffffffffffff
.dword 0x0000000000000000
.dword 0x7ffffffffffffffe
.dword 0x0000000000000000
.dword 0xffffffffffffffff
.dword 0x0000000000000000
.dword 0xfffffffffffffffe
.dword 0x0000000000000000
.dword 0x5bbc887763ae86f2
.dword 0x0000000000000000
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x0000000000000000
.dword 0x5555555555555555
.dword 0x0000000000000000
.dword 0x00000000ffffffff
.dword 0x0000000000000000
.dword 0x00000000fffffffe
.dword 0x0000000000000000
.dword 0x0000000100000000
.dword 0x0000000000000000
.dword 0x0000000100000001
.dword 0x0000000000000001
.dword 0x0000000000000000
.dword 0x0000000000000001
.dword 0x0000000000000001
.dword 0x0000000000000001
.dword 0x0000000000000002
.dword 0x0000000000000001
.dword 0x8000000000000000
.dword 0x0000000000000001
.dword 0x8000000000000001
.dword 0x0000000000000001
.dword 0x7fffffffffffffff
.dword 0x0000000000000001
.dword 0x7ffffffffffffffe
.dword 0x0000000000000001
.dword 0xffffffffffffffff
.dword 0x0000000000000001
.dword 0xfffffffffffffffe
.dword 0x0000000000000001
.dword 0x5bbc887763ae86f2
.dword 0x0000000000000001
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x0000000000000001
.dword 0x5555555555555555
.dword 0x0000000000000001
.dword 0x00000000ffffffff
.dword 0x0000000000000001
.dword 0x00000000fffffffe
.dword 0x0000000000000001
.dword 0x0000000100000000
.dword 0x0000000000000001
.dword 0x0000000100000001
.dword 0x0000000000000002
.dword 0x0000000000000000
.dword 0x0000000000000002
.dword 0x0000000000000001
.dword 0x0000000000000002
.dword 0x0000000000000002
.dword 0x0000000000000002
.dword 0x8000000000000000
.dword 0x0000000000000002
.dword 0x8000000000000001
.dword 0x0000000000000002
.dword 0x7fffffffffffffff
.dword 0x0000000000000002
.dword 0x7ffffffffffffffe
.dword 0x0000000000000002
.dword 0xffffffffffffffff
.dword 0x0000000000000002
.dword 0xfffffffffffffffe
.dword 0x0000000000000002
.dword 0x5bbc887763ae86f2
.dword 0x0000000000000002
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x0000000000000002
.dword 0x5555555555555555
.dword 0x0000000000000002
.dword 0x00000000ffffffff
.dword 0x0000000000000002
.dword 0x00000000fffffffe
.dword 0x0000000000000002
.dword 0x0000000100000000
.dword 0x0000000000000002
.dword 0x0000000100000001
.dword 0x8000000000000000
.dword 0x0000000000000000
.dword 0x8000000000000000
.dword 0x0000000000000001
.dword 0x8000000000000000
.dword 0x0000000000000002
.dword 0x8000000000000000
.dword 0x8000000000000000
.dword 0x8000000000000000
.dword 0x8000000000000001
.dword 0x8000000000000000
.dword 0x7fffffffffffffff
.dword 0x8000000000000000
.dword 0x7ffffffffffffffe
.dword 0x8000000000000000
.dword 0xffffffffffffffff
.dword 0x8000000000000000
.dword 0xfffffffffffffffe
.dword 0x8000000000000000
.dword 0x5bbc887763ae86f2
.dword 0x8000000000000000
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x8000000000000000
.dword 0x5555555555555555
.dword 0x8000000000000000
.dword 0x00000000ffffffff
.dword 0x8000000000000000
.dword 0x00000000fffffffe
.dword 0x8000000000000000
.dword 0x0000000100000000
.dword 0x8000000000000000
.dword 0x0000000100000001
.dword 0x8000000000000001
.dword 0x0000000000000000
.dword 0x8000000000000001
.dword 0x0000000000000001
.dword 0x8000000000000001
.dword 0x0000000000000002
.dword 0x8000000000000001
.dword 0x8000000000000000
.dword 0x8000000000000001
.dword 0x8000000000000001
.dword 0x8000000000000001
.dword 0x7fffffffffffffff
.dword 0x8000000000000001
.dword 0x7ffffffffffffffe
.dword 0x8000000000000001
.dword 0xffffffffffffffff
.dword 0x8000000000000001
.dword 0xfffffffffffffffe
.dword 0x8000000000000001
.dword 0x5bbc887763ae86f2
.dword 0x8000000000000001
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x8000000000000001
.dword 0x5555555555555555
.dword 0x8000000000000001
.dword 0x00000000ffffffff
.dword 0x8000000000000001
.dword 0x00000000fffffffe
.dword 0x8000000000000001
.dword 0x0000000100000000
.dword 0x8000000000000001
.dword 0x0000000100000001
.dword 0x7fffffffffffffff
.dword 0x0000000000000000
.dword 0x7fffffffffffffff
.dword 0x0000000000000001
.dword 0x7fffffffffffffff
.dword 0x0000000000000002
.dword 0x7fffffffffffffff
.dword 0x8000000000000000
.dword 0x7fffffffffffffff
.dword 0x8000000000000001
.dword 0x7fffffffffffffff
.dword 0x7fffffffffffffff
.dword 0x7fffffffffffffff
.dword 0x7ffffffffffffffe
.dword 0x7fffffffffffffff
.dword 0xffffffffffffffff
.dword 0x7fffffffffffffff
.dword 0xfffffffffffffffe
.dword 0x7fffffffffffffff
.dword 0x5bbc887763ae86f2
.dword 0x7fffffffffffffff
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x7fffffffffffffff
.dword 0x5555555555555555
.dword 0x7fffffffffffffff
.dword 0x00000000ffffffff
.dword 0x7fffffffffffffff
.dword 0x00000000fffffffe
.dword 0x7fffffffffffffff
.dword 0x0000000100000000
.dword 0x7fffffffffffffff
.dword 0x0000000100000001
.dword 0x7ffffffffffffffe
.dword 0x0000000000000000
.dword 0x7ffffffffffffffe
.dword 0x0000000000000001
.dword 0x7ffffffffffffffe
.dword 0x0000000000000002
.dword 0x7ffffffffffffffe
.dword 0x8000000000000000
.dword 0x7ffffffffffffffe
.dword 0x8000000000000001
.dword 0x7ffffffffffffffe
.dword 0x7fffffffffffffff
.dword 0x7ffffffffffffffe
.dword 0x7ffffffffffffffe
.dword 0x7ffffffffffffffe
.dword 0xffffffffffffffff
.dword 0x7ffffffffffffffe
.dword 0xfffffffffffffffe
.dword 0x7ffffffffffffffe
.dword 0x5bbc887763ae86f2
.dword 0x7ffffffffffffffe
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x7ffffffffffffffe
.dword 0x5555555555555555
.dword 0x7ffffffffffffffe
.dword 0x00000000ffffffff
.dword 0x7ffffffffffffffe
.dword 0x00000000fffffffe
.dword 0x7ffffffffffffffe
.dword 0x0000000100000000
.dword 0x7ffffffffffffffe
.dword 0x0000000100000001
.dword 0xffffffffffffffff
.dword 0x0000000000000000
.dword 0xffffffffffffffff
.dword 0x0000000000000001
.dword 0xffffffffffffffff
.dword 0x0000000000000002
.dword 0xffffffffffffffff
.dword 0x8000000000000000
.dword 0xffffffffffffffff
.dword 0x8000000000000001
.dword 0xffffffffffffffff
.dword 0x7fffffffffffffff
.dword 0xffffffffffffffff
.dword 0x7ffffffffffffffe
.dword 0xffffffffffffffff
.dword 0xffffffffffffffff
.dword 0xffffffffffffffff
.dword 0xfffffffffffffffe
.dword 0xffffffffffffffff
.dword 0x5bbc887763ae86f2
.dword 0xffffffffffffffff
.dword 0xaaaaaaaaaaaaaaaa
.dword 0xffffffffffffffff
.dword 0x5555555555555555
.dword 0xffffffffffffffff
.dword 0x00000000ffffffff
.dword 0xffffffffffffffff
.dword 0x00000000fffffffe
.dword 0xffffffffffffffff
.dword 0x0000000100000000
.dword 0xffffffffffffffff
.dword 0x0000000100000001
.dword 0xfffffffffffffffe
.dword 0x0000000000000000
.dword 0xfffffffffffffffe
.dword 0x0000000000000001
.dword 0xfffffffffffffffe
.dword 0x0000000000000002
.dword 0xfffffffffffffffe
.dword 0x8000000000000000
.dword 0xfffffffffffffffe
.dword 0x8000000000000001
.dword 0xfffffffffffffffe
.dword 0x7fffffffffffffff
.dword 0xfffffffffffffffe
.dword 0x7ffffffffffffffe
.dword 0xfffffffffffffffe
.dword 0xffffffffffffffff
.dword 0xfffffffffffffffe
.dword 0xfffffffffffffffe
.dword 0xfffffffffffffffe
.dword 0x5bbc887763ae86f2
.dword 0xfffffffffffffffe
.dword 0xaaaaaaaaaaaaaaaa
.dword 0xfffffffffffffffe
.dword 0x5555555555555555
.dword 0xfffffffffffffffe
.dword 0x00000000ffffffff
.dword 0xfffffffffffffffe
.dword 0x00000000fffffffe
.dword 0xfffffffffffffffe
.dword 0x0000000100000000
.dword 0xfffffffffffffffe
.dword 0x0000000100000001
.dword 0x5bbc887763ae86f2
.dword 0x0000000000000000
.dword 0x5bbc887763ae86f2
.dword 0x0000000000000001
.dword 0x5bbc887763ae86f2
.dword 0x0000000000000002
.dword 0x5bbc887763ae86f2
.dword 0x8000000000000000
.dword 0x5bbc887763ae86f2
.dword 0x8000000000000001
.dword 0x5bbc887763ae86f2
.dword 0x7fffffffffffffff
.dword 0x5bbc887763ae86f2
.dword 0x7ffffffffffffffe
.dword 0x5bbc887763ae86f2
.dword 0xffffffffffffffff
.dword 0x5bbc887763ae86f2
.dword 0xfffffffffffffffe
.dword 0x5bbc887763ae86f2
.dword 0x5bbc887763ae86f2
.dword 0x5bbc887763ae86f2
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x5bbc887763ae86f2
.dword 0x5555555555555555
.dword 0x5bbc887763ae86f2
.dword 0x00000000ffffffff
.dword 0x5bbc887763ae86f2
.dword 0x00000000fffffffe
.dword 0x5bbc887763ae86f2
.dword 0x0000000100000000
.dword 0x5bbc887763ae86f2
.dword 0x0000000100000001
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x0000000000000000
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x0000000000000001
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x0000000000000002
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x8000000000000000
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x8000000000000001
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x7fffffffffffffff
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x7ffffffffffffffe
.dword 0xaaaaaaaaaaaaaaaa
.dword 0xffffffffffffffff
.dword 0xaaaaaaaaaaaaaaaa
.dword 0xfffffffffffffffe
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x5bbc887763ae86f2
.dword 0xaaaaaaaaaaaaaaaa
.dword 0xaaaaaaaaaaaaaaaa
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x5555555555555555
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x00000000ffffffff
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x00000000fffffffe
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x0000000100000000
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x0000000100000001
.dword 0x5555555555555555
.dword 0x0000000000000000
.dword 0x5555555555555555
.dword 0x0000000000000001
.dword 0x5555555555555555
.dword 0x0000000000000002
.dword 0x5555555555555555
.dword 0x8000000000000000
.dword 0x5555555555555555
.dword 0x8000000000000001
.dword 0x5555555555555555
.dword 0x7fffffffffffffff
.dword 0x5555555555555555
.dword 0x7ffffffffffffffe
.dword 0x5555555555555555
.dword 0xffffffffffffffff
.dword 0x5555555555555555
.dword 0xfffffffffffffffe
.dword 0x5555555555555555
.dword 0x5bbc887763ae86f2
.dword 0x5555555555555555
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x5555555555555555
.dword 0x5555555555555555
.dword 0x5555555555555555
.dword 0x00000000ffffffff
.dword 0x5555555555555555
.dword 0x00000000fffffffe
.dword 0x5555555555555555
.dword 0x0000000100000000
.dword 0x5555555555555555
.dword 0x0000000100000001
.dword 0x00000000ffffffff
.dword 0x0000000000000000
.dword 0x00000000ffffffff
.dword 0x0000000000000001
.dword 0x00000000ffffffff
.dword 0x0000000000000002
.dword 0x00000000ffffffff
.dword 0x8000000000000000
.dword 0x00000000ffffffff
.dword 0x8000000000000001
.dword 0x00000000ffffffff
.dword 0x7fffffffffffffff
.dword 0x00000000ffffffff
.dword 0x7ffffffffffffffe
.dword 0x00000000ffffffff
.dword 0xffffffffffffffff
.dword 0x00000000ffffffff
.dword 0xfffffffffffffffe
.dword 0x00000000ffffffff
.dword 0x5bbc887763ae86f2
.dword 0x00000000ffffffff
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x00000000ffffffff
.dword 0x5555555555555555
.dword 0x00000000ffffffff
.dword 0x00000000ffffffff
.dword 0x00000000ffffffff
.dword 0x00000000fffffffe
.dword 0x00000000ffffffff
.dword 0x0000000100000000
.dword 0x00000000ffffffff
.dword 0x0000000100000001
.dword 0x00000000fffffffe
.dword 0x0000000000000000
.dword 0x00000000fffffffe
.dword 0x0000000000000001
.dword 0x00000000fffffffe
.dword 0x0000000000000002
.dword 0x00000000fffffffe
.dword 0x8000000000000000
.dword 0x00000000fffffffe
.dword 0x8000000000000001
.dword 0x00000000fffffffe
.dword 0x7fffffffffffffff
.dword 0x00000000fffffffe
.dword 0x7ffffffffffffffe
.dword 0x00000000fffffffe
.dword 0xffffffffffffffff
.dword 0x00000000fffffffe
.dword 0xfffffffffffffffe
.dword 0x00000000fffffffe
.dword 0x5bbc887763ae86f2
.dword 0x00000000fffffffe
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x00000000fffffffe
.dword 0x5555555555555555
.dword 0x00000000fffffffe
.dword 0x00000000ffffffff
.dword 0x00000000fffffffe
.dword 0x00000000fffffffe
.dword 0x00000000fffffffe
.dword 0x0000000100000000
.dword 0x00000000fffffffe
.dword 0x0000000100000001
.dword 0x0000000100000000
.dword 0x0000000000000000
.dword 0x0000000100000000
.dword 0x0000000000000001
.dword 0x0000000100000000
.dword 0x0000000000000002
.dword 0x0000000100000000
.dword 0x8000000000000000
.dword 0x0000000100000000
.dword 0x8000000000000001
.dword 0x0000000100000000
.dword 0x7fffffffffffffff
.dword 0x0000000100000000
.dword 0x7ffffffffffffffe
.dword 0x0000000100000000
.dword 0xffffffffffffffff
.dword 0x0000000100000000
.dword 0xfffffffffffffffe
.dword 0x0000000100000000
.dword 0x5bbc887763ae86f2
.dword 0x0000000100000000
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x0000000100000000
.dword 0x5555555555555555
.dword 0x0000000100000000
.dword 0x00000000ffffffff
.dword 0x0000000100000000
.dword 0x00000000fffffffe
.dword 0x0000000100000000
.dword 0x0000000100000000
.dword 0x0000000100000000
.dword 0x0000000100000001
.dword 0x0000000100000001
.dword 0x0000000000000000
.dword 0x0000000100000001
.dword 0x0000000000000001
.dword 0x0000000100000001
.dword 0x0000000000000002
.dword 0x0000000100000001
.dword 0x8000000000000000
.dword 0x0000000100000001
.dword 0x8000000000000001
.dword 0x0000000100000001
.dword 0x7fffffffffffffff
.dword 0x0000000100000001
.dword 0x7ffffffffffffffe
.dword 0x0000000100000001
.dword 0xffffffffffffffff
.dword 0x0000000100000001
.dword 0xfffffffffffffffe
.dword 0x0000000100000001
.dword 0x5bbc887763ae86f2
.dword 0x0000000100000001
.dword 0xaaaaaaaaaaaaaaaa
.dword 0x0000000100000001
.dword 0x5555555555555555
.dword 0x0000000100000001
.dword 0x00000000ffffffff
.dword 0x0000000100000001
.dword 0x00000000fffffffe
.dword 0x0000000100000001
.dword 0x0000000100000000
.dword 0x0000000100000001
.dword 0x0000000100000001
.dword 0x639c4a0151a2e5fd
.dword 0x2b1adbb812019500
.dword 0x89da5142daea7b9e
.dword 0xabb2ff161f134ce1
.dword 0xa5595774ffb8e770
.dword 0xa286805ea8251f56
.dword 0x727d80fc47d06343
.dword 0xa307a3a6c5159379
.dword 0x857fbb8c86e25590
.dword 0x7d723dd425fae285
.dword 0x9f2dfcf985c766ff
.dword 0x3c52b5ec854300ea
.dword 0xa21abb0acd4932f5
.dword 0x8934aeb03199451d
.dword 0x06d688086b684b72
.dword 0x0ca7e115cf598c2e
.dword 0x50e36f9829cd4cdc
.dword 0x6ccd916574f58b68
.dword 0xf7873c28fb91aa43
.dword 0x77b789aa29e487a2
.dword 0x90b1f43070c129c5
.dword 0x2f9dd50a98056ecc
.dword 0xd47787fea5d1cda0
.dword 0x505c1fff5addc5e1
.dword 0x73d4b7663e33978a
.dword 0x7eeb3eacede37412
.dword 0x541c0d73bf46bb8d
.dword 0xe6141d396957797a
.dword 0xbae4d6da5488c840
.dword 0x3b3d4d8cd271f656
.dword 0xc6837ba5a7673112
.dword 0xc1df6e44187974da
.dword 0xb6f26b28afbd03aa
.dword 0x8566132fc1cbc846
.dword 0x0cc35e40d637449c
.dword 0x52431ea1f1eca2f2
.dword 0xb8c690439bfc1254
.dword 0xf99de966c3e58899
.dword 0xc4045122ed058007
.dword 0x5e40e8a5b35bd3f4
.dword 0xd4954596ba59e031
.dword 0x4f3e0d4c2171959e
.dword 0x95fc43e64fa5b9a1
.dword 0x7c8061f529803b80
.dword 0xa9d4cf1a9f83e92b
.dword 0x64566dcaad7a3594
.dword 0xede8b13e74f6ccfb
.dword 0x369056203be564b3
.dword 0xfb1343035c788394
.dword 0xba74fa4464fc6560
.dword 0x541a730df9907c09
.dword 0x1d37cfe02bdb2712
.dword 0xe1a6e9a40e74cc60
.dword 0x6fadd6ae9c074214
.dword 0x3357845555544459
.dword 0x216de89efbd8b398
.dword 0xa5d72aba09229e61
.dword 0x23e0f527fb68f99f
.dword 0x4b41ca033b5ed08a
.dword 0x4decf642b839644c
.dword 0xa6f5124dbe5871d9
.dword 0xf95b6a3fdff8a390
.dword 0x59794fa395c3f858
.dword 0x2406f118a79253b1
.dword 0x3014774c7193a356
.dword 0x14d2b4ae667968a7
.dword 0x210976e00d1d191b
.dword 0x07d09cdcb6724918
.dword 0x40f76593c84d1755
.dword 0x950d3da8e13ea7f8
.dword 0xbbfc55689e98ef5f
.dword 0xa6532c1b2d93a27c
.dword 0x79e0fa72540da988
.dword 0x1575438d57a6880f
.dword 0xd4473d9e229e7bc7
.dword 0x199851aa5eed15ca
.dword 0xd4df032dbe3ea1a6
.dword 0x5a12bdbb6c62639c
.dword 0x8ca89615631ea90b
.dword 0x3e298aae5e2c0a26
.dword 0x7592da6e54995033
.dword 0x8fd5025d54297cd1
.dword 0x0615f89cd57306fa
.dword 0x5b13009d817e08a5
.dword 0x3bbb2c2be65c8f24
.dword 0xc268a05c6499acff
.dword 0x47fd6ae5cf2a50b3
.dword 0x338ec7c4e741dc0b
.dword 0x9c41b9aa8310f2fa
.dword 0x5096c87ad993a36d
.dword 0xb7d495d9bb849585
.dword 0xff45877fcb515ae6
.dword 0xe822b9d55a6a65d8
.dword 0x8d4de868ca48a41c
.dword 0x8f2263d8837dd25f
.dword 0x33fb9386287d4597
.dword 0xa7b2c47a7eeb6e44
.dword 0xcbb3e49c073f70d3
.dword 0xebfc02ffb8b30e43
.dword 0x7f6630a3bd431478
.dword 0x9dba9ae62812ee41
.dword 0x37308526495891ae
.dword 0xd9be163bb365aab6
.dword 0xa6b63fea1e380349
.dword 0xf3844b43d57e4f28
.dword 0x959e76037e96eca9
.dword 0x0c770301c495e5c3
.dword 0x3c8dbaa584e79b26
.dword 0xfb8cea49e5c5a8a4
.dword 0x41f68b9d62ecfb6e
.dword 0x0fdea3a91a93f56f
.dword 0x6779f221afbe80e9
.dword 0x5c2cfc9b9453633b
.dword 0x7b26498989af5400
.dword 0xab9b523d0d627eb9
.dword 0x8ed800c7799ab627
.dword 0xfa7735392d3e3d8d
.dword 0x08c8561cf77aa180
.dword 0x09973cb593b07bdf
.dword 0xcdf86eff8462a9a7
.dword 0xda55508272c2c930
.dword 0x6c95e1be22225191
.dword 0xa126f856e23cebc6
.dword 0xfb75b2d68eae3d1b
.dword 0x8fb82384f5e63969
.dword 0xcf610ac94184456f
.dword 0xb2473f2cfe760b32
.dword 0x3374bbb45c4af982
.dword 0xc19bdf5291c38f06
.dword 0x6cadc7ef89a20834
.dword 0x696a18e6483031a4
.dword 0x42a3edbed201ef21
.dword 0xb9a7134cc45dd5d6
.dword 0xe4375136d175e5e9
.dword 0xc6abedb9419c6366
.dword 0x3865b06965bd47db
.dword 0x5a19c166b72041ae
.dword 0xf0b59163d538b3f1
.dword 0x59d4f8a38916cd08
.dword 0x1b379fa6ec31245a
.dword 0x07a9dbc3f137bee8
.dword 0x41df21e39423167d
.dword 0x93559ff4d156e0aa
.dword 0xa20cbdac5d91a4d6
.dword 0x8cc1b88af3b79244
.dword 0x643056437a17a4f2
.dword 0xb659345a72239287
.dword 0xff4c216edd64803c
.dword 0x49c42e8af5e289a6
.dword 0xb140a3b34b1b613c
.dword 0x082fd0cb1cb6c1d0
.dword 0xe9d5edb8b76a4436
.dword 0xaa983909222c5472
.dword 0x7dae30f7d5398b30
.dword 0x6235bb2d40fffa5d
.dword 0x6b8405717fbd45d7
.dword 0x2cb3eb5adc5e11ad
.dword 0x3b7004007901b8b2
.dword 0x3dad2fc70f907c34
.dword 0x0d12258a6dc368af
.dword 0x3204c113bcb00518
.dword 0x503025890d9d211b
.dword 0x62afbf47ab583edd
.dword 0xef35d07793cdb49d
.dword 0xe10d781d682b472d
.dword 0x67058c6516403c37
.dword 0x03700c3f9aebe8d0
.dword 0x26fd46089e94d119
.dword 0x03f9b4524d21c9ad
.dword 0x8494b6e45a4e0f92
.dword 0x3e3afe6374c01a2b
.dword 0xc8143bef41d870de
.dword 0x3c552c5978903ad2
.dword 0x028158592142b0b0
.dword 0xda3ec0455dec4416
.dword 0x3c8424a77c28dd80
.dword 0xc00b31ef062215f9
.dword 0x6e8e28f64429fc53
.dword 0xf576b40405e88172
.dword 0xb033f829b090e7e2
.dword 0x3116041f3012cead
.dword 0x6dde0ad11a9a3df8
.dword 0x60c59fe597171054
.dword 0x2123e7d99fd23a58
.dword 0x954ae653430a81f9
.dword 0xb1fb9fabb10c89de
.dword 0xb158ff0e04237203
.dword 0xebfa674955c231bc
.dword 0x4f2a971430d9a675
.dword 0x2514ec7230ce71e3
.dword 0xbcdc101c7c3d9a68
.dword 0x66d75828064af637
.dword 0xc137bf95baab7231
.dword 0x4a584c85f71bdcf0
.dword 0xb1ae1e78afa9008d
.dword 0xf7d1c3ec5750ccf6
.dword 0x1f9305922fdcbd29
.dword 0x80e0bc7aa423cc60
.dword 0xaf5c8f2cea410cde
.dword 0x90ddcee2e902a31d
.dword 0x259b72182106af34
.dword 0xe92e1dcb68b32256
.dword 0x00823a289fe8f51d
.dword 0x32f1ea88a2619969
.dword 0x9a6a75e97a704fc5
.dword 0x9ee0de72949b8dc3
.dword 0x70b8ae2b9e788e74
.dword 0xd5f5feed9ff796c9
.dword 0x406c2329344c631a
.dword 0xb673eaa6be894fb5
.dword 0x7520de874289719d
.dword 0x5dc351c23612b0ff
.dword 0x88a3ed00ef3e3200
.dword 0xb6dea2321eca4b14
.dword 0xe372ba32e12bb546
.dword 0x5439a97fc59c81da
.dword 0x291cddf2ae09c0cc
.dword 0xff40d5af48942b04
.dword 0xe5a24262697ad07f
.dword 0xe39482dfd17c4547
.dword 0x49780ca626ba833f
.dword 0xb8c8c322a9bf4069
.dword 0x49caecac3e5e934f
.dword 0xee2bf77dbc9cfdf3
.dword 0x6615404354b876cb
.dword 0xa5c1f4e649761a48
.dword 0xe226094ec54ed176
.dword 0x4e54e998c21c6c15
.dword 0x04b9e694a61757a3
.dword 0x5f5e79b9cf6217a4
.dword 0xd994fd0a408f09d0
.dword 0x353c07f2e9b30dd7
.dword 0x27b7876b4cc7a58e
.dword 0x7af2f839cd069b0a
.dword 0x67be7bcd1358521f
.dword 0x0458d60e4fc32b62
.dword 0xa7e3513313a7cd5e
.dword 0x72ca692eb12179ce
.dword 0xf966e857c51a4909
.dword 0xf566eddfb40b7e63
.dword 0xb74f4b72fcb860c3
.dword 0x65d5b4145d896013
.dword 0xec035c14085990fe
.dword 0x0aed84f6bef37d13
.dword 0xc5f9027a70356ade
.dword 0x5c3e8dccb27565c2
.dword 0xb473a87cb6822aa1
.dword 0x4c90019ea1f58a3a
.dword 0x6a853c256d440a84
.dword 0x04ec3cd5c415f66e
.dword 0x5d8907547e167086
.dword 0x5a09d57265e96858
.dword 0x018a0daa6306675e
.dword 0x3de3e12983d1ddec
.dword 0xad3c16594a39d3ad
.dword 0x15d52d415b9085aa


I_add_cg_cp_rs1_b0_str: .string "\"test: 1; cg: I_add_cg; cp: cp_rs1; bin: b0\""
I_add_cg_cp_rs1_b1_str: .string "\"test: 2; cg: I_add_cg; cp: cp_rs1; bin: b1\""
I_add_cg_cp_rs1_b2_str: .string "\"test: 3; cg: I_add_cg; cp: cp_rs1; bin: b2\""
I_add_cg_cp_rs1_b3_str: .string "\"test: 4; cg: I_add_cg; cp: cp_rs1; bin: b3\""
I_add_cg_cp_rs1_b4_str: .string "\"test: 5; cg: I_add_cg; cp: cp_rs1; bin: b4\""
I_add_cg_cp_rs1_b5_str: .string "\"test: 6; cg: I_add_cg; cp: cp_rs1; bin: b5\""
I_add_cg_cp_rs1_b6_str: .string "\"test: 7; cg: I_add_cg; cp: cp_rs1; bin: b6\""
I_add_cg_cp_rs1_b7_str: .string "\"test: 8; cg: I_add_cg; cp: cp_rs1; bin: b7\""
I_add_cg_cp_rs1_b8_str: .string "\"test: 9; cg: I_add_cg; cp: cp_rs1; bin: b8\""
I_add_cg_cp_rs1_b9_str: .string "\"test: 10; cg: I_add_cg; cp: cp_rs1; bin: b9\""
I_add_cg_cp_rs1_b10_str: .string "\"test: 11; cg: I_add_cg; cp: cp_rs1; bin: b10\""
I_add_cg_cp_rs1_b11_str: .string "\"test: 12; cg: I_add_cg; cp: cp_rs1; bin: b11\""
I_add_cg_cp_rs1_b12_str: .string "\"test: 13; cg: I_add_cg; cp: cp_rs1; bin: b12\""
I_add_cg_cp_rs1_b13_str: .string "\"test: 14; cg: I_add_cg; cp: cp_rs1; bin: b13\""
I_add_cg_cp_rs1_b14_str: .string "\"test: 15; cg: I_add_cg; cp: cp_rs1; bin: b14\""
I_add_cg_cp_rs1_b15_str: .string "\"test: 16; cg: I_add_cg; cp: cp_rs1; bin: b15\""
I_add_cg_cp_rs1_b16_str: .string "\"test: 17; cg: I_add_cg; cp: cp_rs1; bin: b16\""
I_add_cg_cp_rs1_b17_str: .string "\"test: 18; cg: I_add_cg; cp: cp_rs1; bin: b17\""
I_add_cg_cp_rs1_b18_str: .string "\"test: 19; cg: I_add_cg; cp: cp_rs1; bin: b18\""
I_add_cg_cp_rs1_b19_str: .string "\"test: 20; cg: I_add_cg; cp: cp_rs1; bin: b19\""
I_add_cg_cp_rs1_b20_str: .string "\"test: 21; cg: I_add_cg; cp: cp_rs1; bin: b20\""
I_add_cg_cp_rs1_b21_str: .string "\"test: 22; cg: I_add_cg; cp: cp_rs1; bin: b21\""
I_add_cg_cp_rs1_b22_str: .string "\"test: 23; cg: I_add_cg; cp: cp_rs1; bin: b22\""
I_add_cg_cp_rs1_b23_str: .string "\"test: 24; cg: I_add_cg; cp: cp_rs1; bin: b23\""
I_add_cg_cp_rs1_b24_str: .string "\"test: 25; cg: I_add_cg; cp: cp_rs1; bin: b24\""
I_add_cg_cp_rs1_b25_str: .string "\"test: 26; cg: I_add_cg; cp: cp_rs1; bin: b25\""
I_add_cg_cp_rs1_b26_str: .string "\"test: 27; cg: I_add_cg; cp: cp_rs1; bin: b26\""
I_add_cg_cp_rs1_b27_str: .string "\"test: 28; cg: I_add_cg; cp: cp_rs1; bin: b27\""
I_add_cg_cp_rs1_b28_str: .string "\"test: 29; cg: I_add_cg; cp: cp_rs1; bin: b28\""
I_add_cg_cp_rs1_b29_str: .string "\"test: 30; cg: I_add_cg; cp: cp_rs1; bin: b29\""
I_add_cg_cp_rs1_b30_str: .string "\"test: 31; cg: I_add_cg; cp: cp_rs1; bin: b30\""
I_add_cg_cp_rs1_b31_str: .string "\"test: 32; cg: I_add_cg; cp: cp_rs1; bin: b31\""
I_add_cg_cp_rs2_b0_str: .string "\"test: 33; cg: I_add_cg; cp: cp_rs2; bin: b0\""
I_add_cg_cp_rs2_b1_str: .string "\"test: 34; cg: I_add_cg; cp: cp_rs2; bin: b1\""
I_add_cg_cp_rs2_b2_str: .string "\"test: 35; cg: I_add_cg; cp: cp_rs2; bin: b2\""
I_add_cg_cp_rs2_b3_str: .string "\"test: 36; cg: I_add_cg; cp: cp_rs2; bin: b3\""
I_add_cg_cp_rs2_b4_str: .string "\"test: 37; cg: I_add_cg; cp: cp_rs2; bin: b4\""
I_add_cg_cp_rs2_b5_str: .string "\"test: 38; cg: I_add_cg; cp: cp_rs2; bin: b5\""
I_add_cg_cp_rs2_b6_str: .string "\"test: 39; cg: I_add_cg; cp: cp_rs2; bin: b6\""
I_add_cg_cp_rs2_b7_str: .string "\"test: 40; cg: I_add_cg; cp: cp_rs2; bin: b7\""
I_add_cg_cp_rs2_b8_str: .string "\"test: 41; cg: I_add_cg; cp: cp_rs2; bin: b8\""
I_add_cg_cp_rs2_b9_str: .string "\"test: 42; cg: I_add_cg; cp: cp_rs2; bin: b9\""
I_add_cg_cp_rs2_b10_str: .string "\"test: 43; cg: I_add_cg; cp: cp_rs2; bin: b10\""
I_add_cg_cp_rs2_b11_str: .string "\"test: 44; cg: I_add_cg; cp: cp_rs2; bin: b11\""
I_add_cg_cp_rs2_b12_str: .string "\"test: 45; cg: I_add_cg; cp: cp_rs2; bin: b12\""
I_add_cg_cp_rs2_b13_str: .string "\"test: 46; cg: I_add_cg; cp: cp_rs2; bin: b13\""
I_add_cg_cp_rs2_b14_str: .string "\"test: 47; cg: I_add_cg; cp: cp_rs2; bin: b14\""
I_add_cg_cp_rs2_b15_str: .string "\"test: 48; cg: I_add_cg; cp: cp_rs2; bin: b15\""
I_add_cg_cp_rs2_b16_str: .string "\"test: 49; cg: I_add_cg; cp: cp_rs2; bin: b16\""
I_add_cg_cp_rs2_b17_str: .string "\"test: 50; cg: I_add_cg; cp: cp_rs2; bin: b17\""
I_add_cg_cp_rs2_b18_str: .string "\"test: 51; cg: I_add_cg; cp: cp_rs2; bin: b18\""
I_add_cg_cp_rs2_b19_str: .string "\"test: 52; cg: I_add_cg; cp: cp_rs2; bin: b19\""
I_add_cg_cp_rs2_b20_str: .string "\"test: 53; cg: I_add_cg; cp: cp_rs2; bin: b20\""
I_add_cg_cp_rs2_b21_str: .string "\"test: 54; cg: I_add_cg; cp: cp_rs2; bin: b21\""
I_add_cg_cp_rs2_b22_str: .string "\"test: 55; cg: I_add_cg; cp: cp_rs2; bin: b22\""
I_add_cg_cp_rs2_b23_str: .string "\"test: 56; cg: I_add_cg; cp: cp_rs2; bin: b23\""
I_add_cg_cp_rs2_b24_str: .string "\"test: 57; cg: I_add_cg; cp: cp_rs2; bin: b24\""
I_add_cg_cp_rs2_b25_str: .string "\"test: 58; cg: I_add_cg; cp: cp_rs2; bin: b25\""
I_add_cg_cp_rs2_b26_str: .string "\"test: 59; cg: I_add_cg; cp: cp_rs2; bin: b26\""
I_add_cg_cp_rs2_b27_str: .string "\"test: 60; cg: I_add_cg; cp: cp_rs2; bin: b27\""
I_add_cg_cp_rs2_b28_str: .string "\"test: 61; cg: I_add_cg; cp: cp_rs2; bin: b28\""
I_add_cg_cp_rs2_b29_str: .string "\"test: 62; cg: I_add_cg; cp: cp_rs2; bin: b29\""
I_add_cg_cp_rs2_b30_str: .string "\"test: 63; cg: I_add_cg; cp: cp_rs2; bin: b30\""
I_add_cg_cp_rs2_b31_str: .string "\"test: 64; cg: I_add_cg; cp: cp_rs2; bin: b31\""
I_add_cg_cp_rd_b0_str: .string "\"test: 65; cg: I_add_cg; cp: cp_rd; bin: b0\""
I_add_cg_cp_rd_b1_str: .string "\"test: 66; cg: I_add_cg; cp: cp_rd; bin: b1\""
I_add_cg_cp_rd_b2_str: .string "\"test: 67; cg: I_add_cg; cp: cp_rd; bin: b2\""
I_add_cg_cp_rd_b3_str: .string "\"test: 68; cg: I_add_cg; cp: cp_rd; bin: b3\""
I_add_cg_cp_rd_b4_str: .string "\"test: 69; cg: I_add_cg; cp: cp_rd; bin: b4\""
I_add_cg_cp_rd_b5_str: .string "\"test: 70; cg: I_add_cg; cp: cp_rd; bin: b5\""
I_add_cg_cp_rd_b6_str: .string "\"test: 71; cg: I_add_cg; cp: cp_rd; bin: b6\""
I_add_cg_cp_rd_b7_str: .string "\"test: 72; cg: I_add_cg; cp: cp_rd; bin: b7\""
I_add_cg_cp_rd_b8_str: .string "\"test: 73; cg: I_add_cg; cp: cp_rd; bin: b8\""
I_add_cg_cp_rd_b9_str: .string "\"test: 74; cg: I_add_cg; cp: cp_rd; bin: b9\""
I_add_cg_cp_rd_b10_str: .string "\"test: 75; cg: I_add_cg; cp: cp_rd; bin: b10\""
I_add_cg_cp_rd_b11_str: .string "\"test: 76; cg: I_add_cg; cp: cp_rd; bin: b11\""
I_add_cg_cp_rd_b12_str: .string "\"test: 77; cg: I_add_cg; cp: cp_rd; bin: b12\""
I_add_cg_cp_rd_b13_str: .string "\"test: 78; cg: I_add_cg; cp: cp_rd; bin: b13\""
I_add_cg_cp_rd_b14_str: .string "\"test: 79; cg: I_add_cg; cp: cp_rd; bin: b14\""
I_add_cg_cp_rd_b15_str: .string "\"test: 80; cg: I_add_cg; cp: cp_rd; bin: b15\""
I_add_cg_cp_rd_b16_str: .string "\"test: 81; cg: I_add_cg; cp: cp_rd; bin: b16\""
I_add_cg_cp_rd_b17_str: .string "\"test: 82; cg: I_add_cg; cp: cp_rd; bin: b17\""
I_add_cg_cp_rd_b18_str: .string "\"test: 83; cg: I_add_cg; cp: cp_rd; bin: b18\""
I_add_cg_cp_rd_b19_str: .string "\"test: 84; cg: I_add_cg; cp: cp_rd; bin: b19\""
I_add_cg_cp_rd_b20_str: .string "\"test: 85; cg: I_add_cg; cp: cp_rd; bin: b20\""
I_add_cg_cp_rd_b21_str: .string "\"test: 86; cg: I_add_cg; cp: cp_rd; bin: b21\""
I_add_cg_cp_rd_b22_str: .string "\"test: 87; cg: I_add_cg; cp: cp_rd; bin: b22\""
I_add_cg_cp_rd_b23_str: .string "\"test: 88; cg: I_add_cg; cp: cp_rd; bin: b23\""
I_add_cg_cp_rd_b24_str: .string "\"test: 89; cg: I_add_cg; cp: cp_rd; bin: b24\""
I_add_cg_cp_rd_b25_str: .string "\"test: 90; cg: I_add_cg; cp: cp_rd; bin: b25\""
I_add_cg_cp_rd_b26_str: .string "\"test: 91; cg: I_add_cg; cp: cp_rd; bin: b26\""
I_add_cg_cp_rd_b27_str: .string "\"test: 92; cg: I_add_cg; cp: cp_rd; bin: b27\""
I_add_cg_cp_rd_b28_str: .string "\"test: 93; cg: I_add_cg; cp: cp_rd; bin: b28\""
I_add_cg_cp_rd_b29_str: .string "\"test: 94; cg: I_add_cg; cp: cp_rd; bin: b29\""
I_add_cg_cp_rd_b30_str: .string "\"test: 95; cg: I_add_cg; cp: cp_rd; bin: b30\""
I_add_cg_cp_rd_b31_str: .string "\"test: 96; cg: I_add_cg; cp: cp_rd; bin: b31\""
I_add_cg_cp_rs1_edges_0x0_str: .string "\"test: 97; cg: I_add_cg; cp: cp_rs1_edges; bin: 0x0\""
I_add_cg_cp_rs1_edges_0x1_str: .string "\"test: 98; cg: I_add_cg; cp: cp_rs1_edges; bin: 0x1\""
I_add_cg_cp_rs1_edges_0x2_str: .string "\"test: 99; cg: I_add_cg; cp: cp_rs1_edges; bin: 0x2\""
I_add_cg_cp_rs1_edges_0x8000000000000000_str: .string "\"test: 100; cg: I_add_cg; cp: cp_rs1_edges; bin: 0x8000000000000000\""
I_add_cg_cp_rs1_edges_0x8000000000000001_str: .string "\"test: 101; cg: I_add_cg; cp: cp_rs1_edges; bin: 0x8000000000000001\""
I_add_cg_cp_rs1_edges_0x7fffffffffffffff_str: .string "\"test: 102; cg: I_add_cg; cp: cp_rs1_edges; bin: 0x7fffffffffffffff\""
I_add_cg_cp_rs1_edges_0x7ffffffffffffffe_str: .string "\"test: 103; cg: I_add_cg; cp: cp_rs1_edges; bin: 0x7ffffffffffffffe\""
I_add_cg_cp_rs1_edges_0xffffffffffffffff_str: .string "\"test: 104; cg: I_add_cg; cp: cp_rs1_edges; bin: 0xffffffffffffffff\""
I_add_cg_cp_rs1_edges_0xfffffffffffffffe_str: .string "\"test: 105; cg: I_add_cg; cp: cp_rs1_edges; bin: 0xfffffffffffffffe\""
I_add_cg_cp_rs1_edges_0x5bbc887763ae86f2_str: .string "\"test: 106; cg: I_add_cg; cp: cp_rs1_edges; bin: 0x5bbc887763ae86f2\""
I_add_cg_cp_rs1_edges_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 107; cg: I_add_cg; cp: cp_rs1_edges; bin: 0xaaaaaaaaaaaaaaaa\""
I_add_cg_cp_rs1_edges_0x5555555555555555_str: .string "\"test: 108; cg: I_add_cg; cp: cp_rs1_edges; bin: 0x5555555555555555\""
I_add_cg_cp_rs1_edges_0xffffffff_str: .string "\"test: 109; cg: I_add_cg; cp: cp_rs1_edges; bin: 0xffffffff\""
I_add_cg_cp_rs1_edges_0xfffffffe_str: .string "\"test: 110; cg: I_add_cg; cp: cp_rs1_edges; bin: 0xfffffffe\""
I_add_cg_cp_rs1_edges_0x100000000_str: .string "\"test: 111; cg: I_add_cg; cp: cp_rs1_edges; bin: 0x100000000\""
I_add_cg_cp_rs1_edges_0x100000001_str: .string "\"test: 112; cg: I_add_cg; cp: cp_rs1_edges; bin: 0x100000001\""
I_add_cg_cp_rs2_edges_0x0_str: .string "\"test: 113; cg: I_add_cg; cp: cp_rs2_edges; bin: 0x0\""
I_add_cg_cp_rs2_edges_0x1_str: .string "\"test: 114; cg: I_add_cg; cp: cp_rs2_edges; bin: 0x1\""
I_add_cg_cp_rs2_edges_0x2_str: .string "\"test: 115; cg: I_add_cg; cp: cp_rs2_edges; bin: 0x2\""
I_add_cg_cp_rs2_edges_0x8000000000000000_str: .string "\"test: 116; cg: I_add_cg; cp: cp_rs2_edges; bin: 0x8000000000000000\""
I_add_cg_cp_rs2_edges_0x8000000000000001_str: .string "\"test: 117; cg: I_add_cg; cp: cp_rs2_edges; bin: 0x8000000000000001\""
I_add_cg_cp_rs2_edges_0x7fffffffffffffff_str: .string "\"test: 118; cg: I_add_cg; cp: cp_rs2_edges; bin: 0x7fffffffffffffff\""
I_add_cg_cp_rs2_edges_0x7ffffffffffffffe_str: .string "\"test: 119; cg: I_add_cg; cp: cp_rs2_edges; bin: 0x7ffffffffffffffe\""
I_add_cg_cp_rs2_edges_0xffffffffffffffff_str: .string "\"test: 120; cg: I_add_cg; cp: cp_rs2_edges; bin: 0xffffffffffffffff\""
I_add_cg_cp_rs2_edges_0xfffffffffffffffe_str: .string "\"test: 121; cg: I_add_cg; cp: cp_rs2_edges; bin: 0xfffffffffffffffe\""
I_add_cg_cp_rs2_edges_0x5bbc887763ae86f2_str: .string "\"test: 122; cg: I_add_cg; cp: cp_rs2_edges; bin: 0x5bbc887763ae86f2\""
I_add_cg_cp_rs2_edges_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 123; cg: I_add_cg; cp: cp_rs2_edges; bin: 0xaaaaaaaaaaaaaaaa\""
I_add_cg_cp_rs2_edges_0x5555555555555555_str: .string "\"test: 124; cg: I_add_cg; cp: cp_rs2_edges; bin: 0x5555555555555555\""
I_add_cg_cp_rs2_edges_0xffffffff_str: .string "\"test: 125; cg: I_add_cg; cp: cp_rs2_edges; bin: 0xffffffff\""
I_add_cg_cp_rs2_edges_0xfffffffe_str: .string "\"test: 126; cg: I_add_cg; cp: cp_rs2_edges; bin: 0xfffffffe\""
I_add_cg_cp_rs2_edges_0x100000000_str: .string "\"test: 127; cg: I_add_cg; cp: cp_rs2_edges; bin: 0x100000000\""
I_add_cg_cp_rs2_edges_0x100000001_str: .string "\"test: 128; cg: I_add_cg; cp: cp_rs2_edges; bin: 0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x0_str: .string "\"test: 129; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x1_str: .string "\"test: 130; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x2_str: .string "\"test: 131; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x8000000000000000_str: .string "\"test: 132; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x8000000000000001_str: .string "\"test: 133; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x7fffffffffffffff_str: .string "\"test: 134; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x7ffffffffffffffe_str: .string "\"test: 135; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xffffffffffffffff_str: .string "\"test: 136; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xfffffffffffffffe_str: .string "\"test: 137; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 138; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 139; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x5555555555555555_str: .string "\"test: 140; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xffffffff_str: .string "\"test: 141; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0xfffffffe_str: .string "\"test: 142; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x100000000_str: .string "\"test: 143; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x0_rs2val_0x100000001_str: .string "\"test: 144; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x0, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x0_str: .string "\"test: 145; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x1_str: .string "\"test: 146; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x2_str: .string "\"test: 147; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x8000000000000000_str: .string "\"test: 148; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x8000000000000001_str: .string "\"test: 149; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x7fffffffffffffff_str: .string "\"test: 150; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x7ffffffffffffffe_str: .string "\"test: 151; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xffffffffffffffff_str: .string "\"test: 152; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xfffffffffffffffe_str: .string "\"test: 153; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 154; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 155; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x5555555555555555_str: .string "\"test: 156; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xffffffff_str: .string "\"test: 157; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0xfffffffe_str: .string "\"test: 158; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x100000000_str: .string "\"test: 159; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x1_rs2val_0x100000001_str: .string "\"test: 160; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x1, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x0_str: .string "\"test: 161; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x1_str: .string "\"test: 162; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x2_str: .string "\"test: 163; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x8000000000000000_str: .string "\"test: 164; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x8000000000000001_str: .string "\"test: 165; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x7fffffffffffffff_str: .string "\"test: 166; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x7ffffffffffffffe_str: .string "\"test: 167; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xffffffffffffffff_str: .string "\"test: 168; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xfffffffffffffffe_str: .string "\"test: 169; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 170; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 171; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x5555555555555555_str: .string "\"test: 172; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xffffffff_str: .string "\"test: 173; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0xfffffffe_str: .string "\"test: 174; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x100000000_str: .string "\"test: 175; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x2_rs2val_0x100000001_str: .string "\"test: 176; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x2, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x0_str: .string "\"test: 177; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x1_str: .string "\"test: 178; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x2_str: .string "\"test: 179; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x8000000000000000_str: .string "\"test: 180; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x8000000000000001_str: .string "\"test: 181; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x7fffffffffffffff_str: .string "\"test: 182; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x7ffffffffffffffe_str: .string "\"test: 183; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xffffffffffffffff_str: .string "\"test: 184; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xfffffffffffffffe_str: .string "\"test: 185; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 186; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 187; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x5555555555555555_str: .string "\"test: 188; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xffffffff_str: .string "\"test: 189; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0xfffffffe_str: .string "\"test: 190; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x100000000_str: .string "\"test: 191; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000000_rs2val_0x100000001_str: .string "\"test: 192; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000000, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x0_str: .string "\"test: 193; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x1_str: .string "\"test: 194; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x2_str: .string "\"test: 195; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x8000000000000000_str: .string "\"test: 196; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x8000000000000001_str: .string "\"test: 197; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x7fffffffffffffff_str: .string "\"test: 198; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x7ffffffffffffffe_str: .string "\"test: 199; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xffffffffffffffff_str: .string "\"test: 200; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xfffffffffffffffe_str: .string "\"test: 201; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 202; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 203; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x5555555555555555_str: .string "\"test: 204; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xffffffff_str: .string "\"test: 205; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0xfffffffe_str: .string "\"test: 206; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x100000000_str: .string "\"test: 207; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x8000000000000001_rs2val_0x100000001_str: .string "\"test: 208; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x8000000000000001, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x0_str: .string "\"test: 209; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x1_str: .string "\"test: 210; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x2_str: .string "\"test: 211; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x8000000000000000_str: .string "\"test: 212; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x8000000000000001_str: .string "\"test: 213; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x7fffffffffffffff_str: .string "\"test: 214; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x7ffffffffffffffe_str: .string "\"test: 215; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xffffffffffffffff_str: .string "\"test: 216; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xfffffffffffffffe_str: .string "\"test: 217; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 218; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 219; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x5555555555555555_str: .string "\"test: 220; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xffffffff_str: .string "\"test: 221; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0xfffffffe_str: .string "\"test: 222; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x100000000_str: .string "\"test: 223; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7fffffffffffffff_rs2val_0x100000001_str: .string "\"test: 224; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7fffffffffffffff, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x0_str: .string "\"test: 225; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x1_str: .string "\"test: 226; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x2_str: .string "\"test: 227; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x8000000000000000_str: .string "\"test: 228; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x8000000000000001_str: .string "\"test: 229; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x7fffffffffffffff_str: .string "\"test: 230; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x7ffffffffffffffe_str: .string "\"test: 231; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xffffffffffffffff_str: .string "\"test: 232; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xfffffffffffffffe_str: .string "\"test: 233; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 234; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 235; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x5555555555555555_str: .string "\"test: 236; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xffffffff_str: .string "\"test: 237; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0xfffffffe_str: .string "\"test: 238; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x100000000_str: .string "\"test: 239; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x7ffffffffffffffe_rs2val_0x100000001_str: .string "\"test: 240; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x7ffffffffffffffe, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x0_str: .string "\"test: 241; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x1_str: .string "\"test: 242; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x2_str: .string "\"test: 243; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x8000000000000000_str: .string "\"test: 244; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x8000000000000001_str: .string "\"test: 245; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x7fffffffffffffff_str: .string "\"test: 246; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x7ffffffffffffffe_str: .string "\"test: 247; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xffffffffffffffff_str: .string "\"test: 248; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xfffffffffffffffe_str: .string "\"test: 249; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 250; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 251; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x5555555555555555_str: .string "\"test: 252; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xffffffff_str: .string "\"test: 253; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0xfffffffe_str: .string "\"test: 254; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x100000000_str: .string "\"test: 255; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffffffffffff_rs2val_0x100000001_str: .string "\"test: 256; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffffffffffff, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x0_str: .string "\"test: 257; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x1_str: .string "\"test: 258; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x2_str: .string "\"test: 259; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x8000000000000000_str: .string "\"test: 260; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x8000000000000001_str: .string "\"test: 261; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x7fffffffffffffff_str: .string "\"test: 262; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x7ffffffffffffffe_str: .string "\"test: 263; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xffffffffffffffff_str: .string "\"test: 264; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xfffffffffffffffe_str: .string "\"test: 265; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 266; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 267; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x5555555555555555_str: .string "\"test: 268; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xffffffff_str: .string "\"test: 269; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0xfffffffe_str: .string "\"test: 270; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x100000000_str: .string "\"test: 271; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffffffffffe_rs2val_0x100000001_str: .string "\"test: 272; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffffffffffe, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x0_str: .string "\"test: 273; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x1_str: .string "\"test: 274; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x2_str: .string "\"test: 275; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x8000000000000000_str: .string "\"test: 276; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x8000000000000001_str: .string "\"test: 277; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x7fffffffffffffff_str: .string "\"test: 278; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x7ffffffffffffffe_str: .string "\"test: 279; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xffffffffffffffff_str: .string "\"test: 280; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xfffffffffffffffe_str: .string "\"test: 281; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 282; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 283; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x5555555555555555_str: .string "\"test: 284; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xffffffff_str: .string "\"test: 285; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0xfffffffe_str: .string "\"test: 286; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x100000000_str: .string "\"test: 287; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5bbc887763ae86f2_rs2val_0x100000001_str: .string "\"test: 288; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5bbc887763ae86f2, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x0_str: .string "\"test: 289; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x1_str: .string "\"test: 290; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x2_str: .string "\"test: 291; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x8000000000000000_str: .string "\"test: 292; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x8000000000000001_str: .string "\"test: 293; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x7fffffffffffffff_str: .string "\"test: 294; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x7ffffffffffffffe_str: .string "\"test: 295; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xffffffffffffffff_str: .string "\"test: 296; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xfffffffffffffffe_str: .string "\"test: 297; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 298; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 299; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x5555555555555555_str: .string "\"test: 300; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xffffffff_str: .string "\"test: 301; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0xfffffffe_str: .string "\"test: 302; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x100000000_str: .string "\"test: 303; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xaaaaaaaaaaaaaaaa_rs2val_0x100000001_str: .string "\"test: 304; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xaaaaaaaaaaaaaaaa, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x0_str: .string "\"test: 305; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x1_str: .string "\"test: 306; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x2_str: .string "\"test: 307; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x8000000000000000_str: .string "\"test: 308; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x8000000000000001_str: .string "\"test: 309; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x7fffffffffffffff_str: .string "\"test: 310; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x7ffffffffffffffe_str: .string "\"test: 311; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xffffffffffffffff_str: .string "\"test: 312; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xfffffffffffffffe_str: .string "\"test: 313; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 314; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 315; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x5555555555555555_str: .string "\"test: 316; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xffffffff_str: .string "\"test: 317; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0xfffffffe_str: .string "\"test: 318; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x100000000_str: .string "\"test: 319; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x5555555555555555_rs2val_0x100000001_str: .string "\"test: 320; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x5555555555555555, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x0_str: .string "\"test: 321; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x1_str: .string "\"test: 322; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x2_str: .string "\"test: 323; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x8000000000000000_str: .string "\"test: 324; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x8000000000000001_str: .string "\"test: 325; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x7fffffffffffffff_str: .string "\"test: 326; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x7ffffffffffffffe_str: .string "\"test: 327; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xffffffffffffffff_str: .string "\"test: 328; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xfffffffffffffffe_str: .string "\"test: 329; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 330; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 331; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x5555555555555555_str: .string "\"test: 332; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xffffffff_str: .string "\"test: 333; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0xfffffffe_str: .string "\"test: 334; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x100000000_str: .string "\"test: 335; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xffffffff_rs2val_0x100000001_str: .string "\"test: 336; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xffffffff, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x0_str: .string "\"test: 337; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x1_str: .string "\"test: 338; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x2_str: .string "\"test: 339; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x8000000000000000_str: .string "\"test: 340; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x8000000000000001_str: .string "\"test: 341; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x7fffffffffffffff_str: .string "\"test: 342; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x7ffffffffffffffe_str: .string "\"test: 343; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xffffffffffffffff_str: .string "\"test: 344; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xfffffffffffffffe_str: .string "\"test: 345; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 346; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 347; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x5555555555555555_str: .string "\"test: 348; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xffffffff_str: .string "\"test: 349; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0xfffffffe_str: .string "\"test: 350; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x100000000_str: .string "\"test: 351; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0xfffffffe_rs2val_0x100000001_str: .string "\"test: 352; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0xfffffffe, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x0_str: .string "\"test: 353; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x1_str: .string "\"test: 354; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x2_str: .string "\"test: 355; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x8000000000000000_str: .string "\"test: 356; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x8000000000000001_str: .string "\"test: 357; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x7fffffffffffffff_str: .string "\"test: 358; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x7ffffffffffffffe_str: .string "\"test: 359; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xffffffffffffffff_str: .string "\"test: 360; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xfffffffffffffffe_str: .string "\"test: 361; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 362; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 363; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x5555555555555555_str: .string "\"test: 364; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xffffffff_str: .string "\"test: 365; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0xfffffffe_str: .string "\"test: 366; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x100000000_str: .string "\"test: 367; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000000_rs2val_0x100000001_str: .string "\"test: 368; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000000, rs2val=0x100000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x0_str: .string "\"test: 369; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0x0\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x1_str: .string "\"test: 370; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0x1\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x2_str: .string "\"test: 371; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0x2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x8000000000000000_str: .string "\"test: 372; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0x8000000000000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x8000000000000001_str: .string "\"test: 373; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0x8000000000000001\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x7fffffffffffffff_str: .string "\"test: 374; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0x7fffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x7ffffffffffffffe_str: .string "\"test: 375; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0x7ffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xffffffffffffffff_str: .string "\"test: 376; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0xffffffffffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xfffffffffffffffe_str: .string "\"test: 377; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0xfffffffffffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x5bbc887763ae86f2_str: .string "\"test: 378; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0x5bbc887763ae86f2\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xaaaaaaaaaaaaaaaa_str: .string "\"test: 379; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0xaaaaaaaaaaaaaaaa\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x5555555555555555_str: .string "\"test: 380; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0x5555555555555555\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xffffffff_str: .string "\"test: 381; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0xffffffff\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0xfffffffe_str: .string "\"test: 382; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0xfffffffe\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x100000000_str: .string "\"test: 383; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0x100000000\""
I_add_cg_cr_rs1_rs2_edges_rs1val_0x100000001_rs2val_0x100000001_str: .string "\"test: 384; cg: I_add_cg; cp: cr_rs1_rs2_edges; bin: rs1val=0x100000001, rs2val=0x100000001\""
I_add_cg_cmp_rs1_rs2_b0_str: .string "\"test: 385; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b0\""
I_add_cg_cmp_rs1_rs2_b1_str: .string "\"test: 386; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b1\""
I_add_cg_cmp_rs1_rs2_b2_str: .string "\"test: 387; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b2\""
I_add_cg_cmp_rs1_rs2_b3_str: .string "\"test: 388; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b3\""
I_add_cg_cmp_rs1_rs2_b4_str: .string "\"test: 389; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b4\""
I_add_cg_cmp_rs1_rs2_b5_str: .string "\"test: 390; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b5\""
I_add_cg_cmp_rs1_rs2_b6_str: .string "\"test: 391; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b6\""
I_add_cg_cmp_rs1_rs2_b7_str: .string "\"test: 392; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b7\""
I_add_cg_cmp_rs1_rs2_b8_str: .string "\"test: 393; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b8\""
I_add_cg_cmp_rs1_rs2_b9_str: .string "\"test: 394; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b9\""
I_add_cg_cmp_rs1_rs2_b10_str: .string "\"test: 395; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b10\""
I_add_cg_cmp_rs1_rs2_b11_str: .string "\"test: 396; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b11\""
I_add_cg_cmp_rs1_rs2_b12_str: .string "\"test: 397; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b12\""
I_add_cg_cmp_rs1_rs2_b13_str: .string "\"test: 398; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b13\""
I_add_cg_cmp_rs1_rs2_b14_str: .string "\"test: 399; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b14\""
I_add_cg_cmp_rs1_rs2_b15_str: .string "\"test: 400; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b15\""
I_add_cg_cmp_rs1_rs2_b16_str: .string "\"test: 401; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b16\""
I_add_cg_cmp_rs1_rs2_b17_str: .string "\"test: 402; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b17\""
I_add_cg_cmp_rs1_rs2_b18_str: .string "\"test: 403; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b18\""
I_add_cg_cmp_rs1_rs2_b19_str: .string "\"test: 404; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b19\""
I_add_cg_cmp_rs1_rs2_b20_str: .string "\"test: 405; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b20\""
I_add_cg_cmp_rs1_rs2_b21_str: .string "\"test: 406; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b21\""
I_add_cg_cmp_rs1_rs2_b22_str: .string "\"test: 407; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b22\""
I_add_cg_cmp_rs1_rs2_b23_str: .string "\"test: 408; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b23\""
I_add_cg_cmp_rs1_rs2_b24_str: .string "\"test: 409; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b24\""
I_add_cg_cmp_rs1_rs2_b25_str: .string "\"test: 410; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b25\""
I_add_cg_cmp_rs1_rs2_b26_str: .string "\"test: 411; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b26\""
I_add_cg_cmp_rs1_rs2_b27_str: .string "\"test: 412; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b27\""
I_add_cg_cmp_rs1_rs2_b28_str: .string "\"test: 413; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b28\""
I_add_cg_cmp_rs1_rs2_b29_str: .string "\"test: 414; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b29\""
I_add_cg_cmp_rs1_rs2_b30_str: .string "\"test: 415; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b30\""
I_add_cg_cmp_rs1_rs2_b31_str: .string "\"test: 416; cg: I_add_cg; cp: cmp_rs1_rs2; bin: b31\""
I_add_cg_cmp_rd_rs1_b0_str: .string "\"test: 417; cg: I_add_cg; cp: cmp_rd_rs1; bin: b0\""
I_add_cg_cmp_rd_rs1_b1_str: .string "\"test: 418; cg: I_add_cg; cp: cmp_rd_rs1; bin: b1\""
I_add_cg_cmp_rd_rs1_b2_str: .string "\"test: 419; cg: I_add_cg; cp: cmp_rd_rs1; bin: b2\""
I_add_cg_cmp_rd_rs1_b3_str: .string "\"test: 420; cg: I_add_cg; cp: cmp_rd_rs1; bin: b3\""
I_add_cg_cmp_rd_rs1_b4_str: .string "\"test: 421; cg: I_add_cg; cp: cmp_rd_rs1; bin: b4\""
I_add_cg_cmp_rd_rs1_b5_str: .string "\"test: 422; cg: I_add_cg; cp: cmp_rd_rs1; bin: b5\""
I_add_cg_cmp_rd_rs1_b6_str: .string "\"test: 423; cg: I_add_cg; cp: cmp_rd_rs1; bin: b6\""
I_add_cg_cmp_rd_rs1_b7_str: .string "\"test: 424; cg: I_add_cg; cp: cmp_rd_rs1; bin: b7\""
I_add_cg_cmp_rd_rs1_b8_str: .string "\"test: 425; cg: I_add_cg; cp: cmp_rd_rs1; bin: b8\""
I_add_cg_cmp_rd_rs1_b9_str: .string "\"test: 426; cg: I_add_cg; cp: cmp_rd_rs1; bin: b9\""
I_add_cg_cmp_rd_rs1_b10_str: .string "\"test: 427; cg: I_add_cg; cp: cmp_rd_rs1; bin: b10\""
I_add_cg_cmp_rd_rs1_b11_str: .string "\"test: 428; cg: I_add_cg; cp: cmp_rd_rs1; bin: b11\""
I_add_cg_cmp_rd_rs1_b12_str: .string "\"test: 429; cg: I_add_cg; cp: cmp_rd_rs1; bin: b12\""
I_add_cg_cmp_rd_rs1_b13_str: .string "\"test: 430; cg: I_add_cg; cp: cmp_rd_rs1; bin: b13\""
I_add_cg_cmp_rd_rs1_b14_str: .string "\"test: 431; cg: I_add_cg; cp: cmp_rd_rs1; bin: b14\""
I_add_cg_cmp_rd_rs1_b15_str: .string "\"test: 432; cg: I_add_cg; cp: cmp_rd_rs1; bin: b15\""
I_add_cg_cmp_rd_rs1_b16_str: .string "\"test: 433; cg: I_add_cg; cp: cmp_rd_rs1; bin: b16\""
I_add_cg_cmp_rd_rs1_b17_str: .string "\"test: 434; cg: I_add_cg; cp: cmp_rd_rs1; bin: b17\""
I_add_cg_cmp_rd_rs1_b18_str: .string "\"test: 435; cg: I_add_cg; cp: cmp_rd_rs1; bin: b18\""
I_add_cg_cmp_rd_rs1_b19_str: .string "\"test: 436; cg: I_add_cg; cp: cmp_rd_rs1; bin: b19\""
I_add_cg_cmp_rd_rs1_b20_str: .string "\"test: 437; cg: I_add_cg; cp: cmp_rd_rs1; bin: b20\""
I_add_cg_cmp_rd_rs1_b21_str: .string "\"test: 438; cg: I_add_cg; cp: cmp_rd_rs1; bin: b21\""
I_add_cg_cmp_rd_rs1_b22_str: .string "\"test: 439; cg: I_add_cg; cp: cmp_rd_rs1; bin: b22\""
I_add_cg_cmp_rd_rs1_b23_str: .string "\"test: 440; cg: I_add_cg; cp: cmp_rd_rs1; bin: b23\""
I_add_cg_cmp_rd_rs1_b24_str: .string "\"test: 441; cg: I_add_cg; cp: cmp_rd_rs1; bin: b24\""
I_add_cg_cmp_rd_rs1_b25_str: .string "\"test: 442; cg: I_add_cg; cp: cmp_rd_rs1; bin: b25\""
I_add_cg_cmp_rd_rs1_b26_str: .string "\"test: 443; cg: I_add_cg; cp: cmp_rd_rs1; bin: b26\""
I_add_cg_cmp_rd_rs1_b27_str: .string "\"test: 444; cg: I_add_cg; cp: cmp_rd_rs1; bin: b27\""
I_add_cg_cmp_rd_rs1_b28_str: .string "\"test: 445; cg: I_add_cg; cp: cmp_rd_rs1; bin: b28\""
I_add_cg_cmp_rd_rs1_b29_str: .string "\"test: 446; cg: I_add_cg; cp: cmp_rd_rs1; bin: b29\""
I_add_cg_cmp_rd_rs1_b30_str: .string "\"test: 447; cg: I_add_cg; cp: cmp_rd_rs1; bin: b30\""
I_add_cg_cmp_rd_rs1_b31_str: .string "\"test: 448; cg: I_add_cg; cp: cmp_rd_rs1; bin: b31\""
I_add_cg_cmp_rd_rs2_b0_str: .string "\"test: 449; cg: I_add_cg; cp: cmp_rd_rs2; bin: b0\""
I_add_cg_cmp_rd_rs2_b1_str: .string "\"test: 450; cg: I_add_cg; cp: cmp_rd_rs2; bin: b1\""
I_add_cg_cmp_rd_rs2_b2_str: .string "\"test: 451; cg: I_add_cg; cp: cmp_rd_rs2; bin: b2\""
I_add_cg_cmp_rd_rs2_b3_str: .string "\"test: 452; cg: I_add_cg; cp: cmp_rd_rs2; bin: b3\""
I_add_cg_cmp_rd_rs2_b4_str: .string "\"test: 453; cg: I_add_cg; cp: cmp_rd_rs2; bin: b4\""
I_add_cg_cmp_rd_rs2_b5_str: .string "\"test: 454; cg: I_add_cg; cp: cmp_rd_rs2; bin: b5\""
I_add_cg_cmp_rd_rs2_b6_str: .string "\"test: 455; cg: I_add_cg; cp: cmp_rd_rs2; bin: b6\""
I_add_cg_cmp_rd_rs2_b7_str: .string "\"test: 456; cg: I_add_cg; cp: cmp_rd_rs2; bin: b7\""
I_add_cg_cmp_rd_rs2_b8_str: .string "\"test: 457; cg: I_add_cg; cp: cmp_rd_rs2; bin: b8\""
I_add_cg_cmp_rd_rs2_b9_str: .string "\"test: 458; cg: I_add_cg; cp: cmp_rd_rs2; bin: b9\""
I_add_cg_cmp_rd_rs2_b10_str: .string "\"test: 459; cg: I_add_cg; cp: cmp_rd_rs2; bin: b10\""
I_add_cg_cmp_rd_rs2_b11_str: .string "\"test: 460; cg: I_add_cg; cp: cmp_rd_rs2; bin: b11\""
I_add_cg_cmp_rd_rs2_b12_str: .string "\"test: 461; cg: I_add_cg; cp: cmp_rd_rs2; bin: b12\""
I_add_cg_cmp_rd_rs2_b13_str: .string "\"test: 462; cg: I_add_cg; cp: cmp_rd_rs2; bin: b13\""
I_add_cg_cmp_rd_rs2_b14_str: .string "\"test: 463; cg: I_add_cg; cp: cmp_rd_rs2; bin: b14\""
I_add_cg_cmp_rd_rs2_b15_str: .string "\"test: 464; cg: I_add_cg; cp: cmp_rd_rs2; bin: b15\""
I_add_cg_cmp_rd_rs2_b16_str: .string "\"test: 465; cg: I_add_cg; cp: cmp_rd_rs2; bin: b16\""
I_add_cg_cmp_rd_rs2_b17_str: .string "\"test: 466; cg: I_add_cg; cp: cmp_rd_rs2; bin: b17\""
I_add_cg_cmp_rd_rs2_b18_str: .string "\"test: 467; cg: I_add_cg; cp: cmp_rd_rs2; bin: b18\""
I_add_cg_cmp_rd_rs2_b19_str: .string "\"test: 468; cg: I_add_cg; cp: cmp_rd_rs2; bin: b19\""
I_add_cg_cmp_rd_rs2_b20_str: .string "\"test: 469; cg: I_add_cg; cp: cmp_rd_rs2; bin: b20\""
I_add_cg_cmp_rd_rs2_b21_str: .string "\"test: 470; cg: I_add_cg; cp: cmp_rd_rs2; bin: b21\""
I_add_cg_cmp_rd_rs2_b22_str: .string "\"test: 471; cg: I_add_cg; cp: cmp_rd_rs2; bin: b22\""
I_add_cg_cmp_rd_rs2_b23_str: .string "\"test: 472; cg: I_add_cg; cp: cmp_rd_rs2; bin: b23\""
I_add_cg_cmp_rd_rs2_b24_str: .string "\"test: 473; cg: I_add_cg; cp: cmp_rd_rs2; bin: b24\""
I_add_cg_cmp_rd_rs2_b25_str: .string "\"test: 474; cg: I_add_cg; cp: cmp_rd_rs2; bin: b25\""
I_add_cg_cmp_rd_rs2_b26_str: .string "\"test: 475; cg: I_add_cg; cp: cmp_rd_rs2; bin: b26\""
I_add_cg_cmp_rd_rs2_b27_str: .string "\"test: 476; cg: I_add_cg; cp: cmp_rd_rs2; bin: b27\""
I_add_cg_cmp_rd_rs2_b28_str: .string "\"test: 477; cg: I_add_cg; cp: cmp_rd_rs2; bin: b28\""
I_add_cg_cmp_rd_rs2_b29_str: .string "\"test: 478; cg: I_add_cg; cp: cmp_rd_rs2; bin: b29\""
I_add_cg_cmp_rd_rs2_b30_str: .string "\"test: 479; cg: I_add_cg; cp: cmp_rd_rs2; bin: b30\""
I_add_cg_cmp_rd_rs2_b31_str: .string "\"test: 480; cg: I_add_cg; cp: cmp_rd_rs2; bin: b31\""
I_add_cg_cmp_rd_rs1_rs2_b0_str: .string "\"test: 481; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b0\""
I_add_cg_cmp_rd_rs1_rs2_b1_str: .string "\"test: 482; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b1\""
I_add_cg_cmp_rd_rs1_rs2_b2_str: .string "\"test: 483; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b2\""
I_add_cg_cmp_rd_rs1_rs2_b3_str: .string "\"test: 484; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b3\""
I_add_cg_cmp_rd_rs1_rs2_b4_str: .string "\"test: 485; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b4\""
I_add_cg_cmp_rd_rs1_rs2_b5_str: .string "\"test: 486; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b5\""
I_add_cg_cmp_rd_rs1_rs2_b6_str: .string "\"test: 487; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b6\""
I_add_cg_cmp_rd_rs1_rs2_b7_str: .string "\"test: 488; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b7\""
I_add_cg_cmp_rd_rs1_rs2_b8_str: .string "\"test: 489; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b8\""
I_add_cg_cmp_rd_rs1_rs2_b9_str: .string "\"test: 490; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b9\""
I_add_cg_cmp_rd_rs1_rs2_b10_str: .string "\"test: 491; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b10\""
I_add_cg_cmp_rd_rs1_rs2_b11_str: .string "\"test: 492; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b11\""
I_add_cg_cmp_rd_rs1_rs2_b12_str: .string "\"test: 493; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b12\""
I_add_cg_cmp_rd_rs1_rs2_b13_str: .string "\"test: 494; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b13\""
I_add_cg_cmp_rd_rs1_rs2_b14_str: .string "\"test: 495; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b14\""
I_add_cg_cmp_rd_rs1_rs2_b15_str: .string "\"test: 496; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b15\""
I_add_cg_cmp_rd_rs1_rs2_b16_str: .string "\"test: 497; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b16\""
I_add_cg_cmp_rd_rs1_rs2_b17_str: .string "\"test: 498; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b17\""
I_add_cg_cmp_rd_rs1_rs2_b18_str: .string "\"test: 499; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b18\""
I_add_cg_cmp_rd_rs1_rs2_b19_str: .string "\"test: 500; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b19\""
I_add_cg_cmp_rd_rs1_rs2_b20_str: .string "\"test: 501; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b20\""
I_add_cg_cmp_rd_rs1_rs2_b21_str: .string "\"test: 502; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b21\""
I_add_cg_cmp_rd_rs1_rs2_b22_str: .string "\"test: 503; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b22\""
I_add_cg_cmp_rd_rs1_rs2_b23_str: .string "\"test: 504; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b23\""
I_add_cg_cmp_rd_rs1_rs2_b24_str: .string "\"test: 505; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b24\""
I_add_cg_cmp_rd_rs1_rs2_b25_str: .string "\"test: 506; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b25\""
I_add_cg_cmp_rd_rs1_rs2_b26_str: .string "\"test: 507; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b26\""
I_add_cg_cmp_rd_rs1_rs2_b27_str: .string "\"test: 508; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b27\""
I_add_cg_cmp_rd_rs1_rs2_b28_str: .string "\"test: 509; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b28\""
I_add_cg_cmp_rd_rs1_rs2_b29_str: .string "\"test: 510; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b29\""
I_add_cg_cmp_rd_rs1_rs2_b30_str: .string "\"test: 511; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b30\""
I_add_cg_cmp_rd_rs1_rs2_b31_str: .string "\"test: 512; cg: I_add_cg; cp: cmp_rd_rs1_rs2; bin: b31\""


RVTEST_DATA_END


RVTEST_SIG_SETUP
