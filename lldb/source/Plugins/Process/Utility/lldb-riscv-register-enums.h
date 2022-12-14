//===-- lldb-riscv-register-enums.h -----------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLDB_SOURCE_PLUGINS_PROCESS_UTILITY_LLDB_RISCV_REGISTER_ENUMS_H
#define LLDB_SOURCE_PLUGINS_PROCESS_UTILITY_LLDB_RISCV_REGISTER_ENUMS_H

// LLDB register codes (e.g. RegisterKind == eRegisterKindLLDB)

// Internal codes for all riscv registers.
enum {
  k_first_gpr_riscv,
  gpr_x0_riscv = k_first_gpr_riscv,
  gpr_x1_riscv,
  gpr_x2_riscv,
  gpr_x3_riscv,
  gpr_x4_riscv,
  gpr_x5_riscv,
  gpr_x6_riscv,
  gpr_x7_riscv,
  gpr_x8_riscv,
  gpr_x9_riscv,
  gpr_x10_riscv,
  gpr_x11_riscv,
  gpr_x12_riscv,
  gpr_x13_riscv,
  gpr_x14_riscv,
  gpr_x15_riscv,
  gpr_x16_riscv,
  gpr_x17_riscv,
  gpr_x18_riscv,
  gpr_x19_riscv,
  gpr_x20_riscv,
  gpr_x21_riscv,
  gpr_x22_riscv,
  gpr_x23_riscv,
  gpr_x24_riscv,
  gpr_x25_riscv,
  gpr_x26_riscv,
  gpr_x27_riscv,
  gpr_x28_riscv,
  gpr_x29_riscv,
  gpr_x30_riscv,
  gpr_x31_riscv,
  gpr_pc_riscv,

  k_last_gpr_riscv = gpr_pc_riscv,

  k_first_fpr_riscv,
  fpr_f0_riscv = k_first_fpr_riscv,
  fpr_f1_riscv,
  fpr_f2_riscv,
  fpr_f3_riscv,
  fpr_f4_riscv,
  fpr_f5_riscv,
  fpr_f6_riscv,
  fpr_f7_riscv,
  fpr_f8_riscv,
  fpr_f9_riscv,
  fpr_f10_riscv,
  fpr_f11_riscv,
  fpr_f12_riscv,
  fpr_f13_riscv,
  fpr_f14_riscv,
  fpr_f15_riscv,
  fpr_f16_riscv,
  fpr_f17_riscv,
  fpr_f18_riscv,
  fpr_f19_riscv,
  fpr_f20_riscv,
  fpr_f21_riscv,
  fpr_f22_riscv,
  fpr_f23_riscv,
  fpr_f24_riscv,
  fpr_f25_riscv,
  fpr_f26_riscv,
  fpr_f27_riscv,
  fpr_f28_riscv,
  fpr_f29_riscv,
  fpr_f30_riscv,
  fpr_f31_riscv,
  fpr_fflags_riscv,
  fpr_frm_riscv,
  fpr_fcsr_riscv,
  k_last_fpr_riscv = fpr_fcsr_riscv,

  k_first_vcr_riscv,
  vcr_v0_riscv = k_first_vcr_riscv,
  vcr_v1_riscv,
  vcr_v2_riscv,
  vcr_v3_riscv,
  vcr_v4_riscv,
  vcr_v5_riscv,
  vcr_v6_riscv,
  vcr_v7_riscv,
  vcr_v8_riscv,
  vcr_v9_riscv,
  vcr_v10_riscv,
  vcr_v11_riscv,
  vcr_v12_riscv,
  vcr_v13_riscv,
  vcr_v14_riscv,
  vcr_v15_riscv,
  vcr_v16_riscv,
  vcr_v17_riscv,
  vcr_v18_riscv,
  vcr_v19_riscv,
  vcr_v20_riscv,
  vcr_v21_riscv,
  vcr_v22_riscv,
  vcr_v23_riscv,
  vcr_v24_riscv,
  vcr_v25_riscv,
  vcr_v26_riscv,
  vcr_v27_riscv,
  vcr_v28_riscv,
  vcr_v29_riscv,
  vcr_v30_riscv,
  vcr_v31_riscv,
  vcr_vstart_riscv,
  vcr_vxsat_riscv,
  vcr_vxrm_riscv,
  vcr_vcsr_riscv,
  vcr_vl_riscv,
  vcr_vtype_riscv,
  vcr_vlenb_riscv,
  k_last_vcr_riscv = vcr_vlenb_riscv,

  k_num_registers_riscv,
  k_num_gpr_registers_riscv = k_last_gpr_riscv - k_first_gpr_riscv + 1,
  k_num_fpr_registers_riscv = k_last_fpr_riscv - k_first_fpr_riscv + 1,
  k_num_vcr_registers_riscv = k_last_vcr_riscv - k_first_vcr_riscv + 1,
};

#endif // LLDB_SOURCE_PLUGINS_PROCESS_UTILITY_LLDB_RISCV_REGISTER_ENUMS_H
