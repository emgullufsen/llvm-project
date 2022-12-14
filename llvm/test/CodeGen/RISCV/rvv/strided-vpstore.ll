; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+d,+zfh,+v,+experimental-zvfh \
; RUN:     -verify-machineinstrs < %s | FileCheck %s --check-prefixes=CHECK-RV32
; RUN: llc -mtriple=riscv64 -mattr=+d,+zfh,+v,+experimental-zvfh \
; RUN:     -verify-machineinstrs < %s | FileCheck %s --check-prefixes=CHECK-RV64

declare void @llvm.experimental.vp.strided.store.nxv1i8.p0i8.i8(<vscale x 1 x i8>, i8*, i8, <vscale x 1 x i1>, i32)

define void @strided_vpstore_nxv1i8_i8(<vscale x 1 x i8> %val, i8* %ptr, i8 signext %stride, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv1i8_i8:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e8, mf8, ta, mu
; CHECK-RV32-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv1i8_i8:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e8, mf8, ta, mu
; CHECK-RV64-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv1i8.p0i8.i8(<vscale x 1 x i8> %val, i8* %ptr, i8 %stride, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv1i8.p0i8.i16(<vscale x 1 x i8>, i8*, i16, <vscale x 1 x i1>, i32)

define void @strided_vpstore_nxv1i8_i16(<vscale x 1 x i8> %val, i8* %ptr, i16 signext %stride, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv1i8_i16:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e8, mf8, ta, mu
; CHECK-RV32-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv1i8_i16:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e8, mf8, ta, mu
; CHECK-RV64-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv1i8.p0i8.i16(<vscale x 1 x i8> %val, i8* %ptr, i16 %stride, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv1i8.p0i8.i64(<vscale x 1 x i8>, i8*, i64, <vscale x 1 x i1>, i32)

define void @strided_vpstore_nxv1i8_i64(<vscale x 1 x i8> %val, i8* %ptr, i64 signext %stride, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv1i8_i64:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a3, e8, mf8, ta, mu
; CHECK-RV32-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv1i8_i64:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e8, mf8, ta, mu
; CHECK-RV64-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv1i8.p0i8.i64(<vscale x 1 x i8> %val, i8* %ptr, i64 %stride, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv1i8.p0i8.i32(<vscale x 1 x i8>, i8*, i32, <vscale x 1 x i1>, i32)

define void @strided_vpstore_nxv1i8(<vscale x 1 x i8> %val, i8* %ptr, i32 signext %strided, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv1i8:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e8, mf8, ta, mu
; CHECK-RV32-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv1i8:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e8, mf8, ta, mu
; CHECK-RV64-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv1i8.p0i8.i32(<vscale x 1 x i8> %val, i8* %ptr, i32 %strided, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv2i8.p0i8.i32(<vscale x 2 x i8>, i8*, i32, <vscale x 2 x i1>, i32)

define void @strided_vpstore_nxv2i8(<vscale x 2 x i8> %val, i8* %ptr, i32 signext %strided, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv2i8:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e8, mf4, ta, mu
; CHECK-RV32-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv2i8:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e8, mf4, ta, mu
; CHECK-RV64-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv2i8.p0i8.i32(<vscale x 2 x i8> %val, i8* %ptr, i32 %strided, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv4i8.p0i8.i32(<vscale x 4 x i8>, i8*, i32, <vscale x 4 x i1>, i32)

define void @strided_vpstore_nxv4i8(<vscale x 4 x i8> %val, i8* %ptr, i32 signext %strided, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv4i8:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e8, mf2, ta, mu
; CHECK-RV32-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv4i8:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e8, mf2, ta, mu
; CHECK-RV64-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv4i8.p0i8.i32(<vscale x 4 x i8> %val, i8* %ptr, i32 %strided, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv8i8.p0i8.i32(<vscale x 8 x i8>, i8*, i32, <vscale x 8 x i1>, i32)

define void @strided_vpstore_nxv8i8(<vscale x 8 x i8> %val, i8* %ptr, i32 signext %strided, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv8i8:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e8, m1, ta, mu
; CHECK-RV32-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv8i8:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e8, m1, ta, mu
; CHECK-RV64-NEXT:    vsse8.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv8i8.p0i8.i32(<vscale x 8 x i8> %val, i8* %ptr, i32 %strided, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv1i16.p0i16.i32(<vscale x 1 x i16>, i16*, i32, <vscale x 1 x i1>, i32)

define void @strided_vpstore_nxv1i16(<vscale x 1 x i16> %val, i16* %ptr, i32 signext %strided, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv1i16:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e16, mf4, ta, mu
; CHECK-RV32-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv1i16:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e16, mf4, ta, mu
; CHECK-RV64-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv1i16.p0i16.i32(<vscale x 1 x i16> %val, i16* %ptr, i32 %strided, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv2i16.p0i16.i32(<vscale x 2 x i16>, i16*, i32, <vscale x 2 x i1>, i32)

define void @strided_vpstore_nxv2i16(<vscale x 2 x i16> %val, i16* %ptr, i32 signext %strided, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv2i16:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e16, mf2, ta, mu
; CHECK-RV32-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv2i16:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e16, mf2, ta, mu
; CHECK-RV64-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv2i16.p0i16.i32(<vscale x 2 x i16> %val, i16* %ptr, i32 %strided, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv4i16.p0i16.i32(<vscale x 4 x i16>, i16*, i32, <vscale x 4 x i1>, i32)

define void @strided_vpstore_nxv4i16(<vscale x 4 x i16> %val, i16* %ptr, i32 signext %strided, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv4i16:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e16, m1, ta, mu
; CHECK-RV32-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv4i16:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e16, m1, ta, mu
; CHECK-RV64-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv4i16.p0i16.i32(<vscale x 4 x i16> %val, i16* %ptr, i32 %strided, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv8i16.p0i16.i32(<vscale x 8 x i16>, i16*, i32, <vscale x 8 x i1>, i32)

define void @strided_vpstore_nxv8i16(<vscale x 8 x i16> %val, i16* %ptr, i32 signext %strided, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv8i16:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e16, m2, ta, mu
; CHECK-RV32-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv8i16:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e16, m2, ta, mu
; CHECK-RV64-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv8i16.p0i16.i32(<vscale x 8 x i16> %val, i16* %ptr, i32 %strided, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv1i32.p0i32.i32(<vscale x 1 x i32>, i32*, i32, <vscale x 1 x i1>, i32)

define void @strided_vpstore_nxv1i32(<vscale x 1 x i32> %val, i32* %ptr, i32 signext %strided, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv1i32:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e32, mf2, ta, mu
; CHECK-RV32-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv1i32:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e32, mf2, ta, mu
; CHECK-RV64-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv1i32.p0i32.i32(<vscale x 1 x i32> %val, i32* %ptr, i32 %strided, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv2i32.p0i32.i32(<vscale x 2 x i32>, i32*, i32, <vscale x 2 x i1>, i32)

define void @strided_vpstore_nxv2i32(<vscale x 2 x i32> %val, i32* %ptr, i32 signext %strided, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv2i32:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e32, m1, ta, mu
; CHECK-RV32-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv2i32:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e32, m1, ta, mu
; CHECK-RV64-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv2i32.p0i32.i32(<vscale x 2 x i32> %val, i32* %ptr, i32 %strided, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv4i32.p0i32.i32(<vscale x 4 x i32>, i32*, i32, <vscale x 4 x i1>, i32)

define void @strided_vpstore_nxv4i32(<vscale x 4 x i32> %val, i32* %ptr, i32 signext %strided, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv4i32:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e32, m2, ta, mu
; CHECK-RV32-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv4i32:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e32, m2, ta, mu
; CHECK-RV64-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv4i32.p0i32.i32(<vscale x 4 x i32> %val, i32* %ptr, i32 %strided, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv8i32.p0i32.i32(<vscale x 8 x i32>, i32*, i32, <vscale x 8 x i1>, i32)

define void @strided_vpstore_nxv8i32(<vscale x 8 x i32> %val, i32* %ptr, i32 signext %strided, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv8i32:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e32, m4, ta, mu
; CHECK-RV32-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv8i32:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e32, m4, ta, mu
; CHECK-RV64-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv8i32.p0i32.i32(<vscale x 8 x i32> %val, i32* %ptr, i32 %strided, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv1i64.p0i64.i32(<vscale x 1 x i64>, i64*, i32, <vscale x 1 x i1>, i32)

define void @strided_vpstore_nxv1i64(<vscale x 1 x i64> %val, i64* %ptr, i32 signext %strided, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv1i64:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e64, m1, ta, mu
; CHECK-RV32-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv1i64:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e64, m1, ta, mu
; CHECK-RV64-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv1i64.p0i64.i32(<vscale x 1 x i64> %val, i64* %ptr, i32 %strided, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv2i64.p0i64.i32(<vscale x 2 x i64>, i64*, i32, <vscale x 2 x i1>, i32)

define void @strided_vpstore_nxv2i64(<vscale x 2 x i64> %val, i64* %ptr, i32 signext %strided, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv2i64:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e64, m2, ta, mu
; CHECK-RV32-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv2i64:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e64, m2, ta, mu
; CHECK-RV64-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv2i64.p0i64.i32(<vscale x 2 x i64> %val, i64* %ptr, i32 %strided, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv4i64.p0i64.i32(<vscale x 4 x i64>, i64*, i32, <vscale x 4 x i1>, i32)

define void @strided_vpstore_nxv4i64(<vscale x 4 x i64> %val, i64* %ptr, i32 signext %strided, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv4i64:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e64, m4, ta, mu
; CHECK-RV32-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv4i64:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e64, m4, ta, mu
; CHECK-RV64-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv4i64.p0i64.i32(<vscale x 4 x i64> %val, i64* %ptr, i32 %strided, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv8i64.p0i64.i32(<vscale x 8 x i64>, i64*, i32, <vscale x 8 x i1>, i32)

define void @strided_vpstore_nxv8i64(<vscale x 8 x i64> %val, i64* %ptr, i32 signext %strided, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv8i64:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e64, m8, ta, mu
; CHECK-RV32-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv8i64:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e64, m8, ta, mu
; CHECK-RV64-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv8i64.p0i64.i32(<vscale x 8 x i64> %val, i64* %ptr, i32 %strided, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv1f16.p0f16.i32(<vscale x 1 x half>, half*, i32, <vscale x 1 x i1>, i32)

define void @strided_vpstore_nxv1f16(<vscale x 1 x half> %val, half* %ptr, i32 signext %strided, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv1f16:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e16, mf4, ta, mu
; CHECK-RV32-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv1f16:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e16, mf4, ta, mu
; CHECK-RV64-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv1f16.p0f16.i32(<vscale x 1 x half> %val, half* %ptr, i32 %strided, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv2f16.p0f16.i32(<vscale x 2 x half>, half*, i32, <vscale x 2 x i1>, i32)

define void @strided_vpstore_nxv2f16(<vscale x 2 x half> %val, half* %ptr, i32 signext %strided, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv2f16:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e16, mf2, ta, mu
; CHECK-RV32-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv2f16:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e16, mf2, ta, mu
; CHECK-RV64-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv2f16.p0f16.i32(<vscale x 2 x half> %val, half* %ptr, i32 %strided, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv4f16.p0f16.i32(<vscale x 4 x half>, half*, i32, <vscale x 4 x i1>, i32)

define void @strided_vpstore_nxv4f16(<vscale x 4 x half> %val, half* %ptr, i32 signext %strided, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv4f16:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e16, m1, ta, mu
; CHECK-RV32-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv4f16:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e16, m1, ta, mu
; CHECK-RV64-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv4f16.p0f16.i32(<vscale x 4 x half> %val, half* %ptr, i32 %strided, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv8f16.p0f16.i32(<vscale x 8 x half>, half*, i32, <vscale x 8 x i1>, i32)

define void @strided_vpstore_nxv8f16(<vscale x 8 x half> %val, half* %ptr, i32 signext %strided, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv8f16:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e16, m2, ta, mu
; CHECK-RV32-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv8f16:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e16, m2, ta, mu
; CHECK-RV64-NEXT:    vsse16.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv8f16.p0f16.i32(<vscale x 8 x half> %val, half* %ptr, i32 %strided, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv1f32.p0f32.i32(<vscale x 1 x float>, float*, i32, <vscale x 1 x i1>, i32)

define void @strided_vpstore_nxv1f32(<vscale x 1 x float> %val, float* %ptr, i32 signext %strided, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv1f32:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e32, mf2, ta, mu
; CHECK-RV32-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv1f32:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e32, mf2, ta, mu
; CHECK-RV64-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv1f32.p0f32.i32(<vscale x 1 x float> %val, float* %ptr, i32 %strided, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv2f32.p0f32.i32(<vscale x 2 x float>, float*, i32, <vscale x 2 x i1>, i32)

define void @strided_vpstore_nxv2f32(<vscale x 2 x float> %val, float* %ptr, i32 signext %strided, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv2f32:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e32, m1, ta, mu
; CHECK-RV32-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv2f32:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e32, m1, ta, mu
; CHECK-RV64-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv2f32.p0f32.i32(<vscale x 2 x float> %val, float* %ptr, i32 %strided, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv4f32.p0f32.i32(<vscale x 4 x float>, float*, i32, <vscale x 4 x i1>, i32)

define void @strided_vpstore_nxv4f32(<vscale x 4 x float> %val, float* %ptr, i32 signext %strided, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv4f32:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e32, m2, ta, mu
; CHECK-RV32-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv4f32:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e32, m2, ta, mu
; CHECK-RV64-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv4f32.p0f32.i32(<vscale x 4 x float> %val, float* %ptr, i32 %strided, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv8f32.p0f32.i32(<vscale x 8 x float>, float*, i32, <vscale x 8 x i1>, i32)

define void @strided_vpstore_nxv8f32(<vscale x 8 x float> %val, float* %ptr, i32 signext %strided, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv8f32:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e32, m4, ta, mu
; CHECK-RV32-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv8f32:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e32, m4, ta, mu
; CHECK-RV64-NEXT:    vsse32.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv8f32.p0f32.i32(<vscale x 8 x float> %val, float* %ptr, i32 %strided, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv1f64.p0f64.i32(<vscale x 1 x double>, double*, i32, <vscale x 1 x i1>, i32)

define void @strided_vpstore_nxv1f64(<vscale x 1 x double> %val, double* %ptr, i32 signext %strided, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv1f64:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e64, m1, ta, mu
; CHECK-RV32-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv1f64:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e64, m1, ta, mu
; CHECK-RV64-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv1f64.p0f64.i32(<vscale x 1 x double> %val, double* %ptr, i32 %strided, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv2f64.p0f64.i32(<vscale x 2 x double>, double*, i32, <vscale x 2 x i1>, i32)

define void @strided_vpstore_nxv2f64(<vscale x 2 x double> %val, double* %ptr, i32 signext %strided, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv2f64:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e64, m2, ta, mu
; CHECK-RV32-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv2f64:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e64, m2, ta, mu
; CHECK-RV64-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv2f64.p0f64.i32(<vscale x 2 x double> %val, double* %ptr, i32 %strided, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv4f64.p0f64.i32(<vscale x 4 x double>, double*, i32, <vscale x 4 x i1>, i32)

define void @strided_vpstore_nxv4f64(<vscale x 4 x double> %val, double* %ptr, i32 signext %strided, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv4f64:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e64, m4, ta, mu
; CHECK-RV32-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv4f64:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e64, m4, ta, mu
; CHECK-RV64-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv4f64.p0f64.i32(<vscale x 4 x double> %val, double* %ptr, i32 %strided, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.experimental.vp.strided.store.nxv8f64.p0f64.i32(<vscale x 8 x double>, double*, i32, <vscale x 8 x i1>, i32)

define void @strided_vpstore_nxv8f64(<vscale x 8 x double> %val, double* %ptr, i32 signext %strided, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv8f64:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e64, m8, ta, mu
; CHECK-RV32-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv8f64:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e64, m8, ta, mu
; CHECK-RV64-NEXT:    vsse64.v v8, (a0), a1, v0.t
; CHECK-RV64-NEXT:    ret
  call void @llvm.experimental.vp.strided.store.nxv8f64.p0f64.i32(<vscale x 8 x double> %val, double* %ptr, i32 %strided, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

define void @strided_vpstore_nxv1i8_allones_mask(<vscale x 1 x i8> %val, i8* %ptr, i32 signext %strided, i32 zeroext %evl) {
; CHECK-RV32-LABEL: strided_vpstore_nxv1i8_allones_mask:
; CHECK-RV32:       # %bb.0:
; CHECK-RV32-NEXT:    vsetvli zero, a2, e8, mf8, ta, mu
; CHECK-RV32-NEXT:    vsse8.v v8, (a0), a1
; CHECK-RV32-NEXT:    ret
;
; CHECK-RV64-LABEL: strided_vpstore_nxv1i8_allones_mask:
; CHECK-RV64:       # %bb.0:
; CHECK-RV64-NEXT:    vsetvli zero, a2, e8, mf8, ta, mu
; CHECK-RV64-NEXT:    vsse8.v v8, (a0), a1
; CHECK-RV64-NEXT:    ret
  %a = insertelement <vscale x 1 x i1> poison, i1 true, i32 0
  %b = shufflevector <vscale x 1 x i1> %a, <vscale x 1 x i1> poison, <vscale x 1 x i32> zeroinitializer
  call void @llvm.experimental.vp.strided.store.nxv1i8.p0i8.i32(<vscale x 1 x i8> %val, i8* %ptr, i32 %strided, <vscale x 1 x i1> %b, i32 %evl)
  ret void
}
