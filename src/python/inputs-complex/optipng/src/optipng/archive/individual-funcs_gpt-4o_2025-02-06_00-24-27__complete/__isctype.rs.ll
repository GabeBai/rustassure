; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__isctype.rs.bc'
source_filename = "__isctype.3ab53c76-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%RuneLocale = type <{ [8 x i8], [32 x i8], i64*, i64*, i32, [256 x i32], [256 x i32], [256 x i32], %RuneRange, %RuneRange, %RuneRange, i8*, i32, i32, %RuneCharClass* }>
%RuneRange = type <{ i32, %RuneEntry* }>
%RuneEntry = type <{ i32, i32, i32, i32* }>
%RuneCharClass = type <{ [14 x i8], i32 }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@_DefaultRuneLocale = external global %RuneLocale
@alloc4 = private unnamed_addr constant <{ [91 x i8] }> <{ [91 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__isctype.rs" }>, align 1
@alloc5 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc4, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\00<\00\00\00\10\00\00\00" }>, align 8

; Function Attrs: uwtable
define i32 @is_ctype(i32 %c, i32 %f) unnamed_addr #0 {
start:
  %_3 = alloca i8, align 1
  %0 = alloca i32, align 4
  %_4 = icmp slt i32 %c, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_6 = icmp sge i32 %c, 256
  %1 = zext i1 %_6 to i8
  store i8 %1, i8* %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %2 = load i8, i8* %_3, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  %_11 = sext i32 %c to i64
  %_14 = icmp ult i64 %_11, 256
  %4 = call i1 @llvm.expect.i1(i1 %_14, i1 true)
  br i1 %4, label %bb6, label %panic

bb4:                                              ; preds = %bb3
  store i32 0, i32* %0, align 4
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8, %bb4
  %5 = load i32, i32* %0, align 4
  ret i32 %5

bb6:                                              ; preds = %bb5
  %6 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%RuneLocale, %RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %_11
  %_9 = load i32, i32* %6, align 1
  %_8 = and i32 %_9, %f
  %7 = icmp eq i32 %_8, 0
  br i1 %7, label %bb8, label %bb7

panic:                                            ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11, i64 256, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc5 to %"core::panic::location::Location"*)) #3
  unreachable

bb8:                                              ; preds = %bb6
  store i32 0, i32* %0, align 4
  br label %bb9

bb7:                                              ; preds = %bb6
  store i32 1, i32* %0, align 4
  br label %bb9
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone willreturn }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__isctype.rs.bc", hash: (1388953646, 1036735097, 1072138034, 1935625487, 1090481581))
^1 = gv: (name: "_DefaultRuneLocale") ; guid = 1968481278962314263
^2 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^3 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4)))) ; guid = 4280254618300169676
^4 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5136248884264732979
^5 = gv: (name: "is_ctype", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, calls: ((callee: ^6)), refs: (^1, ^3)))) ; guid = 12568062643976036641
^6 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^7 = blockcount: 11
