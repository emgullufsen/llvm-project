; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -verify-machineinstrs  -mtriple=aarch64-linux-gnu -mattr=+aes -o - %s| FileCheck %s --check-prefixes=CHECK

; Tests that scalar i64 arguments of llvm.aarch64.neon.pmull64 are
; loaded into SIMD registers, as opposed to being loaded into GPR followed by a mov.

define void @test1(ptr %0, i64 %1, i64 %2) {
; CHECK-LABEL: test1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    add x8, x0, x2, lsl #4
; CHECK-NEXT:    add x9, x0, x1, lsl #4
; CHECK-NEXT:    ldr d0, [x8, #8]
; CHECK-NEXT:    ldr d1, [x9, #8]
; CHECK-NEXT:    pmull v0.1q, v1.1d, v0.1d
; CHECK-NEXT:    str q0, [x9]
; CHECK-NEXT:    ret
  %4 = getelementptr inbounds <2 x i64>, ptr %0, i64 %1
  %5 = getelementptr inbounds <2 x i64>, ptr %0, i64 %1, i64 1
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds <2 x i64>, ptr %0, i64 %2, i64 1
  %8 = load i64, ptr %7, align 8
  %9 = tail call <16 x i8> @llvm.aarch64.neon.pmull64(i64 %6, i64 %8)
  store <16 x i8> %9, ptr %4, align 16
  ret void
}

define void @test2(ptr %0, i64 %1, i64 %2, <2 x i64> %3) {
; CHECK-LABEL: test2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov x9, v0.d[1]
; CHECK-NEXT:    add x8, x0, x1, lsl #4
; CHECK-NEXT:    ldr d0, [x8, #8]
; CHECK-NEXT:    fmov d1, x9
; CHECK-NEXT:    pmull v0.1q, v0.1d, v1.1d
; CHECK-NEXT:    str q0, [x8]
; CHECK-NEXT:    ret
  %5 = getelementptr inbounds <2 x i64>, ptr %0, i64 %1
  %6 = getelementptr inbounds <2 x i64>, ptr %0, i64 %1, i64 1
  %7 = load i64, ptr %6, align 8
  %8 = extractelement <2 x i64> %3, i64 1
  %9 = tail call <16 x i8> @llvm.aarch64.neon.pmull64(i64 %7, i64 %8)
  store <16 x i8> %9, ptr %5, align 16
  ret void
}

define void @test3(ptr %0, i64 %1, i64 %2, i64 %3) {
; CHECK-LABEL: test3:
; CHECK:       // %bb.0:
; CHECK-NEXT:    add x8, x0, x1, lsl #4
; CHECK-NEXT:    fmov d0, x3
; CHECK-NEXT:    ldr d1, [x8, #8]
; CHECK-NEXT:    pmull v0.1q, v1.1d, v0.1d
; CHECK-NEXT:    str q0, [x8]
; CHECK-NEXT:    ret
  %5 = getelementptr inbounds <2 x i64>, ptr %0, i64 %1
  %6 = getelementptr inbounds <2 x i64>, ptr %0, i64 %1, i64 1
  %7 = load i64, ptr %6, align 8
  %8 = tail call <16 x i8> @llvm.aarch64.neon.pmull64(i64 %7, i64 %3)
  store <16 x i8> %8, ptr %5, align 16
  ret void
}

declare <16 x i8> @llvm.aarch64.neon.pmull64(i64, i64)
