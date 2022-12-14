; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -aarch64-sve-vector-bits-min=256 < %s | FileCheck %s -check-prefixes=CHECK,VBITS_GE_256
; RUN: llc -aarch64-sve-vector-bits-min=512 < %s | FileCheck %s -check-prefixes=CHECK,VBITS_GE_512

target triple = "aarch64-unknown-linux-gnu"

define void @masked_gather_base_plus_stride_v8f32(ptr %dst, ptr %src) #0 {
; VBITS_GE_256-LABEL: masked_gather_base_plus_stride_v8f32:
; VBITS_GE_256:       // %bb.0:
; VBITS_GE_256-NEXT:    index z0.d, #0, #7
; VBITS_GE_256-NEXT:    ptrue p0.d, vl4
; VBITS_GE_256-NEXT:    mov z1.d, z0.d
; VBITS_GE_256-NEXT:    ld1w { z0.d }, p0/z, [x1, z0.d, lsl #2]
; VBITS_GE_256-NEXT:    add z1.d, z1.d, #28 // =0x1c
; VBITS_GE_256-NEXT:    ld1w { z1.d }, p0/z, [x1, z1.d, lsl #2]
; VBITS_GE_256-NEXT:    ptrue p0.s, vl4
; VBITS_GE_256-NEXT:    uzp1 z0.s, z0.s, z0.s
; VBITS_GE_256-NEXT:    uzp1 z1.s, z1.s, z1.s
; VBITS_GE_256-NEXT:    splice z0.s, p0, z0.s, z1.s
; VBITS_GE_256-NEXT:    ptrue p0.s, vl8
; VBITS_GE_256-NEXT:    st1w { z0.s }, p0, [x0]
; VBITS_GE_256-NEXT:    ret
;
; VBITS_GE_512-LABEL: masked_gather_base_plus_stride_v8f32:
; VBITS_GE_512:       // %bb.0:
; VBITS_GE_512-NEXT:    index z0.d, #0, #7
; VBITS_GE_512-NEXT:    ptrue p0.d, vl8
; VBITS_GE_512-NEXT:    ld1w { z0.d }, p0/z, [x1, z0.d, lsl #2]
; VBITS_GE_512-NEXT:    ptrue p0.s, vl8
; VBITS_GE_512-NEXT:    uzp1 z0.s, z0.s, z0.s
; VBITS_GE_512-NEXT:    st1w { z0.s }, p0, [x0]
; VBITS_GE_512-NEXT:    ret
  %ptrs = getelementptr float, ptr %src, <8 x i64> <i64 0, i64 7, i64 14, i64 21, i64 28, i64 35, i64 42, i64 49>
  %data = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> %ptrs, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef)
  store <8 x float> %data, ptr %dst, align 4
  ret void
}

define void @masked_gather_base_plus_stride_v4f64(ptr %dst, ptr %src) #0 {
; CHECK-LABEL: masked_gather_base_plus_stride_v4f64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov x8, #-32
; CHECK-NEXT:    ptrue p0.d, vl4
; CHECK-NEXT:    index z0.d, #-2, x8
; CHECK-NEXT:    ld1d { z0.d }, p0/z, [x1, z0.d, lsl #3]
; CHECK-NEXT:    st1d { z0.d }, p0, [x0]
; CHECK-NEXT:    ret
  %ptrs = getelementptr double, ptr %src, <4 x i64> <i64 -2, i64 -34, i64 -66, i64 -98>
  %data = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> %ptrs, i32 8, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x double> undef)
  store <4 x double> %data, ptr %dst, align 8
  ret void
}

define void @masked_scatter_base_plus_stride_v8f32(ptr %dst, ptr %src) #0 {
; VBITS_GE_256-LABEL: masked_scatter_base_plus_stride_v8f32:
; VBITS_GE_256:       // %bb.0:
; VBITS_GE_256-NEXT:    ptrue p0.s, vl8
; VBITS_GE_256-NEXT:    mov z1.d, #-28 // =0xffffffffffffffe4
; VBITS_GE_256-NEXT:    ld1w { z0.s }, p0/z, [x1]
; VBITS_GE_256-NEXT:    index z2.d, #0, #-7
; VBITS_GE_256-NEXT:    add z1.d, z2.d, z1.d
; VBITS_GE_256-NEXT:    ptrue p0.d, vl4
; VBITS_GE_256-NEXT:    uunpklo z3.d, z0.s
; VBITS_GE_256-NEXT:    ext z0.b, z0.b, z0.b, #16
; VBITS_GE_256-NEXT:    uunpklo z0.d, z0.s
; VBITS_GE_256-NEXT:    st1w { z3.d }, p0, [x0, z2.d, lsl #2]
; VBITS_GE_256-NEXT:    st1w { z0.d }, p0, [x0, z1.d, lsl #2]
; VBITS_GE_256-NEXT:    ret
;
; VBITS_GE_512-LABEL: masked_scatter_base_plus_stride_v8f32:
; VBITS_GE_512:       // %bb.0:
; VBITS_GE_512-NEXT:    ptrue p0.s, vl8
; VBITS_GE_512-NEXT:    index z1.d, #0, #-7
; VBITS_GE_512-NEXT:    ld1w { z0.s }, p0/z, [x1]
; VBITS_GE_512-NEXT:    ptrue p0.d, vl8
; VBITS_GE_512-NEXT:    uunpklo z0.d, z0.s
; VBITS_GE_512-NEXT:    st1w { z0.d }, p0, [x0, z1.d, lsl #2]
; VBITS_GE_512-NEXT:    ret
  %data = load <8 x float>, ptr %src, align 4
  %ptrs = getelementptr float, ptr %dst, <8 x i64> <i64 0, i64 -7, i64 -14, i64 -21, i64 -28, i64 -35, i64 -42, i64 -49>
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %data, <8 x ptr> %ptrs, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>)
  ret void
}

define void @masked_scatter_base_plus_stride_v4f64(ptr %dst, ptr %src) #0 {
; CHECK-LABEL: masked_scatter_base_plus_stride_v4f64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p0.d, vl4
; CHECK-NEXT:    index z1.d, #-2, #3
; CHECK-NEXT:    ld1d { z0.d }, p0/z, [x1]
; CHECK-NEXT:    st1d { z0.d }, p0, [x0, z1.d, lsl #3]
; CHECK-NEXT:    ret
  %data = load <4 x double>, ptr %src, align 8
  %ptrs = getelementptr double, ptr %dst, <4 x i64> <i64 -2, i64 1, i64 4, i64 7>
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %data, <4 x ptr> %ptrs, i32 8, <4 x i1> <i1 true, i1 true, i1 true, i1 true>)
  ret void
}

declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, i32 immarg, <8 x i1>, <8 x float>)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, i32 immarg, <4 x i1>, <4 x double>)

declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, i32 immarg, <8 x i1>)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, i32 immarg, <4 x i1>)

attributes #0 = { "target-features"="+sve" }
