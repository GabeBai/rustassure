; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_strpbrk_digit.rs.bc'
source_filename = "opng_strpbrk_digit.32495f63-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h597afda0af4a62e4E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$14is_ascii_digit17hedd4ab2585110999E"(i32* align 4 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = load i32, i32* %self, align 4, !range !1, !noundef !2
  %_2 = icmp ule i32 48, %1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  store i8 0, i8* %0, align 1
  br label %bb4

bb1:                                              ; preds = %start
  %2 = load i32, i32* %self, align 4, !range !1, !noundef !2
  %_3 = icmp ule i32 %2, 57
  br i1 %_3, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  store i8 1, i8* %0, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: uwtable
define i8* @opng_strpbrk_digit(i8* %0) unnamed_addr #1 {
start:
  %1 = alloca i8*, align 8
  %2 = alloca {}*, align 8
  %_5 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %str = alloca i8*, align 8
  store i8* %0, i8** %str, align 8
  br label %bb1

bb1:                                              ; preds = %bb7, %start
  %4 = load i8*, i8** %str, align 8
  %_2 = load i8, i8* %4, align 1
  %5 = icmp eq i8 %_2, 0
  br i1 %5, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %6 = bitcast {}** %2 to i64*
  store i64 0, i64* %6, align 8
  %7 = load {}*, {}** %2, align 8
  %8 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h597afda0af4a62e4E({}* %7)
  store i8* %8, i8** %3, align 8
  br label %bb8

bb3:                                              ; preds = %bb1
  %9 = load i8*, i8** %str, align 8
  %_6 = load i8, i8* %9, align 1
  %10 = zext i8 %_6 to i32
  store i32 %10, i32* %_5, align 4
  %_3 = call zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$14is_ascii_digit17hedd4ab2585110999E"(i32* align 4 %_5)
  br label %bb4

bb4:                                              ; preds = %bb3
  br i1 %_3, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  %_9 = load i8*, i8** %str, align 8
  %11 = getelementptr inbounds i8, i8* %_9, i64 1
  store i8* %11, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  br label %bb7

bb5:                                              ; preds = %bb4
  %_7 = load i8*, i8** %str, align 8
  store i8* %_7, i8** %3, align 8
  br label %bb8

bb8:                                              ; preds = %bb5, %bb2
  %13 = load i8*, i8** %3, align 8
  ret i8* %13

bb7:                                              ; preds = %bb6
  store i8* %12, i8** %str, align 8
  br label %bb1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 0, i32 1114112}
!2 = !{}
!3 = !{i8 0, i8 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_strpbrk_digit.rs.bc", hash: (1411753376, 1492273913, 1071958218, 2901573246, 959238866))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "opng_strpbrk_digit", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, calls: ((callee: ^4), (callee: ^3))))) ; guid = 3876322421571764881
^3 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$14is_ascii_digit17hedd4ab2585110999E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14))) ; guid = 4644006948537610839
^4 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h597afda0af4a62e4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 17467797082783181143
^5 = blockcount: 15
