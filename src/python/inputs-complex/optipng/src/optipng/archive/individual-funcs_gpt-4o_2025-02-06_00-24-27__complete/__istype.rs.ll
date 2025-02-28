; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__istype.rs.bc'
source_filename = "__istype.70ed35c2-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%RuneLocale = type <{ [8 x i8], [32 x i8], i64*, i64*, i32, [256 x i32], [256 x i32], [256 x i32], %RuneRange, %RuneRange, %RuneRange, i8*, i32, i32, %RuneCharClass* }>
%RuneRange = type <{ i32, %RuneEntry* }>
%RuneEntry = type <{ i32, i32, i32, i32* }>
%RuneCharClass = type <{ [14 x i8], i32 }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@_DefaultRuneLocale = external global %RuneLocale
@alloc6 = private unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__istype.rs" }>, align 1
@alloc7 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc6, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00;\00\00\00\0E\00\00\00" }>, align 8

; Function Attrs: uwtable
define zeroext i1 @isascii(i32 %c) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_2 = icmp sge i32 %c, 0
  br i1 %_2, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %_4 = icmp slt i32 %c, 128
  %1 = zext i1 %_4 to i8
  store i8 %1, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  ret i1 %3
}

; Function Attrs: uwtable
define zeroext i1 @istype(i32 %c, i64 %f) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_3 = call zeroext i1 @isascii(i32 %c)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_14 = call i32 @__maskrune(i32 %c, i64 %f)
  br label %bb5

bb2:                                              ; preds = %bb1
  %_9 = sext i32 %c to i64
  %_12 = icmp ult i64 %_9, 256
  %1 = call i1 @llvm.expect.i1(i1 %_12, i1 true)
  br i1 %1, label %bb3, label %panic

bb3:                                              ; preds = %bb2
  %2 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%RuneLocale, %RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %_9
  %_7 = load i32, i32* %2, align 1
  %_6 = zext i32 %_7 to i64
  %_5 = and i64 %_6, %f
  %3 = icmp ne i64 %_5, 0
  %4 = zext i1 %3 to i8
  store i8 %4, i8* %0, align 1
  br label %bb6

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_9, i64 256, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc7 to %"core::panic::location::Location"*)) #3
  unreachable

bb6:                                              ; preds = %bb5, %bb3
  %5 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %6 = trunc i8 %5 to i1
  ret i1 %6

bb5:                                              ; preds = %bb4
  %7 = icmp ne i32 %_14, 0
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %0, align 1
  br label %bb6
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: uwtable
declare i32 @__maskrune(i32, i64) unnamed_addr #0

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone willreturn }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__istype.rs.bc", hash: (532821959, 380022067, 493808247, 1156151990, 526275784))
^1 = gv: (name: "_DefaultRuneLocale") ; guid = 1968481278962314263
^2 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^3 = gv: (name: "istype", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 27, calls: ((callee: ^5), (callee: ^6), (callee: ^8)), refs: (^1, ^7)))) ; guid = 6536321070817800222
^4 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7309954731202638191
^5 = gv: (name: "isascii", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 13654494072929806929
^6 = gv: (name: "__maskrune") ; guid = 14848670321230169798
^7 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4)))) ; guid = 16818007384448319222
^8 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^9 = blockcount: 12
