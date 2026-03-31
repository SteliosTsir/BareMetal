/*
 * SPDX-FileType: SOURCE
 *
 * SPDX-FileCopyrightText: 2025-2026 Nick Kossifidis <mick@ics.forth.gr>
 * SPDX-FileCopyrightText: 2025-2026 ICS/FORTH
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <platform/riscv/hart.h>	/* For hart_state */
#include <platform/riscv/caps.h>	/* For CAP_* macros */
#include <platform/utils/utils.h>	/* For ANN/INF */
#include <test_framework.h>		/* For test registration macros */
#include "z_extensions.h"

#include <stdint.h>			/* For typed ints */

/* Forward declaration */
void hart_probe_priv_caps(struct rvcaps *caps);

struct cap_to_str {
	uint32_t cap;
	const char* name;
};

struct cap_to_str_64 {
	uint64_t cap;
	const char* name;
};

/* M-mode capabilities */
static const struct cap_to_str m_cap_names[] = {
	{CAP_MCOUNTINHIBIT, "Mcountinhibit (Priv. spec. 1.11)"},
	{CAP_SMDBLTRP, "Smdbltrp (double trap)"},
	{CAP_SMMPM, "Smmpm (pointer masking)"},
	{CAP_SMNPM, "Smnpm (pointer masking next mode)"},
	{CAP_SMSTATEEN, "Smstateen (state enable)"},
	{CAP_SMCSRIND, "Smcsrind (indirect CSR access)"},
	{CAP_SMEPMP, "Smepmp (enhanced PMP)"},
	{CAP_SMCNTRPMF, "Smcntrpmf (counter privilege mode filtering)"},
	{CAP_SMRNMI, "Smrnmi (resumable NMI)"},
	{CAP_SMCTR, "Smctr (control transfer records)"},
	{CAP_SDTRIG, "Sdtrig (debug triggers)"},
	{CAP_SMAIA, "Smaia (advanced interrupt architecture)"}
};

/* S-mode capabilities */
static const struct cap_to_str s_cap_names[] = {
	{CAP_SSDBLTRP, "Ssdbltrp (double trap)"},
	{CAP_SVPBMT, "Svpbmt (page-based memory types)"},
	{CAP_SMCDELEG, "Smcdeleg (counter delegation)"},
	{CAP_SSTC, "Sstc (timer compare)"},
	{CAP_SSNPM, "Ssnpm (pointer masking)"},
	{CAP_SSSTATEEN, "Ssstateen (state enable)"},
	{CAP_SSCSRIND, "Sscsrind (indirect CSR access)"},
	{CAP_SV32, "Sv32 (virtual memory)"},
	{CAP_SV39, "Sv39 (virtual memory)"},
	{CAP_SV48, "Sv48 (virtual memory)"},
	{CAP_SV57, "Sv57 (virtual memory)"},
	{CAP_SVNAPOT, "Svnapot (naturally aligned power-of-2)"},
	{CAP_SVINVAL, "Svinval (fine-grained TLB invalidation)"},
	{CAP_SVADU, "Svadu (hardware A/D bit updates)"},
	{CAP_SSQOSID, "Ssqosid (QoS identifiers)"},
	{CAP_SSCOFPMF, "Sscofpmf (counter overflow)"},
	{CAP_SSCTR, "Ssctr (control transfer records)"},
	{CAP_SSCCFG, "Ssccfg (counter configuration)"},
	{CAP_SSAIA, "Ssaia (advanced interrupt architecture)"}
};

/* MISA Extensions */
static const struct cap_to_str misa_ext_names[] = {
	{CAP_A, "A (atomics)"},
	{CAP_B, "B (bit manipulation)"},
	{CAP_C, "C (compressed)"},
	{CAP_D, "D (double-precision FP)"},
	{CAP_F, "F (single-precision FP)"},
	{CAP_M, "M (multiply/divide)"},
	{CAP_Q, "Q (quad-precision FP)"},
	{CAP_V, "V (vector)"},
	{CAP_X, "X (non-standard extensions)"}
};

/* U-mode extensions */
static const struct cap_to_str u_ext_names[] = {
	{CAP_ZICNTR, "Zicntr (base counters)"},
	{CAP_ZIHPM, "Zihpm (HPM counters)"}
};

/* Z* (common) capabilities */
static const struct cap_to_str_64 z_cap_names[] = {
	{CAP_ZICFILP, "Zicfilp (landing pads)"},
	{CAP_ZICFISS, "Zicfiss (shadow stack)"},
	{CAP_ZICBOM, "Zicbom (cache block management)"},
	{CAP_ZICBOZ, "Zicboz (cache block zero)"},
	{CAP_ZKR, "Zkr (entropy source)"}
};

static void
print_caps_section(const char *section_name, uint32_t caps,
                   const struct cap_to_str *cap_list, size_t num_caps)
{
	size_t i;
	bool found = false;

	for (i = 0; i < num_caps; i++) {
		if (caps & cap_list[i].cap) {
			if (!found) {
				INF("\n%s:\n", section_name);
				found = true;
			}
			INF("  %s\n", cap_list[i].name);
		}
	}

	if (!found)
		INF("\n%s: None\n", section_name);
}

static void
print_caps_section_64(const char *section_name, uint64_t caps,
                      const struct cap_to_str_64 *cap_list, size_t num_caps)
{
	size_t i;
	bool found = false;

	for (i = 0; i < num_caps; i++) {
		if (caps & cap_list[i].cap) {
			if (!found) {
				INF("\n%s:\n", section_name);
				found = true;
			}
			INF("  %s\n", cap_list[i].name);
		}
	}

	if (!found)
		INF("\n%s: None\n", section_name);
}

static void
print_priv_modes(struct rvcaps *caps)
{
	INF("\nPrivilege Modes:\n");
	if (caps->r_caps & CAP_U)
		INF("  U-mode (User)\n");
	if (caps->s_caps & CAP_S)
		INF("  S-mode (Supervisor)\n");
	if (caps->s_caps & CAP_H)
		INF("  H-mode (Hypervisor)\n");
}

static void
print_big_endian_support(struct rvcaps *caps)
{
	bool has_any = false;

	INF("\nBig Endian Support:\n");
	if (caps->r_caps & CAP_UBE) {
		INF("  U-mode\n");
		has_any = true;
	}
	if (caps->s_caps & CAP_SBE) {
		INF("  S-mode\n");
		has_any = true;
	}
	if (caps->m_caps & CAP_MBE) {
		INF("  M-mode\n");
		has_any = true;
	}

	if (!has_any)
		INF("  None\n");
}

static void print_isa_profiles(struct rvcaps *caps)
{
    /* Read basic bits from misa to get the base architecture */
    unsigned long misa_val = csr_read(CSR_MISA);
    int mxl = (misa_val >> 62) & 0x3;
    int bits = (mxl == 1) ? 32 : ((mxl == 2) ? 64 : ((mxl == 3) ? 128 : 64));
    char base_isa = (misa_val & CSR_MISA_I) ? 'I' : 'E';

    INF("\nBase Architecture:\n");
    INF("  RV%d%c (%d bits)\n", bits, base_isa, bits);

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

    INF("\nISA Profiles:\n");
    INF("  RVI20U32 : %s\n", (bits == 32 && has_i) ? "Yes" : "No");
    INF("  RVI20U64 : %s\n", (bits == 64 && has_i) ? "Yes" : "No");
    
    INF("  RVA20U64 : %s\n", (bits == 64 && is_rva_base) ? "Yes" : "No");
    INF("  RVA20S64 : %s\n", (bits == 64 && is_rva_base && has_s) ? "Yes" : "No");
    
    INF("  RVA22U64 : %s\n", (bits == 64 && is_rva22_base) ? "Yes" : "No");
    INF("  RVA22S64 : %s\n", (bits == 64 && is_rva22_base && has_s) ? "Yes" : "No");
    
    INF("  RVA23U64 : %s\n", (bits == 64 && is_rva22_base) ? "Yes" : "No");
    INF("  RVA23S64 : %s\n", (bits == 64 && is_rva22_base && has_s) ? "Yes" : "No");
    
    INF("  RVB23U64 : No (Requires Z-ext parsing)\n");
    INF("  RVB23S64 : No (Requires Z-ext parsing)\n");
	
}

void probe_and_print_z_extensions(void) {
    INF("\nUnprivileged Z-Extensions (via Hardware Trap Probing):\n");

    /* Bit Manipulation */
    INF("  Bit Manipulation:\n");
    INF("    Zba (Address generation)      : %s\n", check_zba_extension() ? "Yes" : "No");
    INF("    Zbb (Basic bit-manipulation)  : %s\n", check_zbb_extension() ? "Yes" : "No");
    INF("    Zbc (Carry-less multiply)     : %s\n", check_zbc_extension() ? "Yes" : "No");
    INF("    Zbs (Single-bit operations)   : %s\n", check_zbs_extension() ? "Yes" : "No");

    /* Conditional Operations */
    INF("  Conditional Operations:\n");
    INF("    Zicond (Integer conditionals) : %s\n", check_zicond_extension() ? "Yes" : "No");

    /* Atomics */
    INF("  Atomics:\n");
    INF("    Zawrs (Wait-on-reservation)   : %s\n", check_zawrs_extension() ? "Yes" : "No");
    INF("    Zacas (Compare-and-swap)      : %s\n", check_zacas_extension() ? "Yes" : "No");
    INF("    Zabha (Byte/halfword atomics) : %s\n", check_zabha_extension() ? "Yes" : "No");

    /* Floating-Point */
    INF("  Floating-Point:\n");
    INF("    Zfh (Half-precision FP)       : %s\n", check_zfh_extension() ? "Yes" : "No");
    INF("    Zfa (Additional FP)           : %s\n", check_zfa_extension() ? "Yes" : "No");

}

static int
print_caps(void)
{
	struct rvcaps caps = {0};

	ANN("\n---=== Probing RISC-V Capabilities ===---\n");
	INF("Running capability detection...\n");

	/* Probe all capabilities */
	hart_probe_priv_caps(&caps);

	/* Print results organized by category */
	ANN("\n---=== Detected Capabilities ===---\n");

	/* Privilege modes */
	print_priv_modes(&caps);

	/* Big endian support */
	print_big_endian_support(&caps);

	/* MISA-derived extensions */
	print_caps_section("MISA Extensions", caps.r_caps,
	                   misa_ext_names, sizeof(misa_ext_names) / sizeof(misa_ext_names[0]));

	/* U-mode extensions */
	print_caps_section("U-mode Extensions", caps.r_caps,
	                   u_ext_names, sizeof(u_ext_names) / sizeof(u_ext_names[0]));

	/* M-mode capabilities */
	print_caps_section("M-mode Extensions", caps.m_caps,
	                   m_cap_names, sizeof(m_cap_names) / sizeof(m_cap_names[0]));

	/* S-mode capabilities */
	print_caps_section("S-mode Extensions", caps.s_caps,
	                   s_cap_names, sizeof(s_cap_names) / sizeof(s_cap_names[0]));

	/* Common/Z* capabilities */
	print_caps_section_64("Common Extensions (Z*)", caps.z_caps,
	                      z_cap_names, sizeof(z_cap_names) / sizeof(z_cap_names[0]));

	/* Additional info */
	if (caps.num_hpmcounters > 0)
		INF("\nHardware Performance Counters: %u\n", caps.num_hpmcounters);
	if (caps.num_pmp_rules > 0)
		INF("PMP Rules: %u\n", caps.num_pmp_rules);
	if (caps.num_asid_bits > 0)
		INF("ASID bits: %u\n", caps.num_asid_bits);
	if (caps.vlenb_shift > 0) {
		uint16_t vlenb = 1 << caps.vlenb_shift;
		uint16_t vlen = vlenb * 8;
		INF("Vector Length (VLEN): %u bits (%u bytes)\n", vlen, vlenb);
	}

	print_isa_profiles(&caps);

	probe_and_print_z_extensions();

	INF("\nPress a key to continue...\n");
	return 0;
}

REGISTER_PLATFORM_TEST("Probe and print hart capabilities", print_caps);
