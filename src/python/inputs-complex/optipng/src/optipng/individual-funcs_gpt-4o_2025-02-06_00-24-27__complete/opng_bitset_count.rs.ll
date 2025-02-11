; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_count.rs.bc'
source_filename = "opng_bitset_count.973cbbab-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc7 = private unnamed_addr constant <{ [99 x i8] }> <{ [99 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_count.rs" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [99 x i8] }>, <{ [99 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [16 x i8] c"c\00\00\00\00\00\00\00\0C\00\00\00\10\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc8 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [99 x i8] }>, <{ [99 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [16 x i8] c"c\00\00\00\00\00\00\00\0D\00\00\00\09\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"

; Function Attrs: uwtable
define i32 @opng_bitset_count(i32 %0) unnamed_addr #0 {
start:
  %result = alloca i32, align 4
  %set = alloca i32, align 4
  store i32 %0, i32* %set, align 4
  store i32 0, i32* %result, align 4
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %_2 = load i32, i32* %set, align 4
  %1 = icmp eq i32 %_2, 0
  br i1 %1, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  %2 = load i32, i32* %result, align 4
  ret i32 %2

bb2:                                              ; preds = %bb1
  %_4 = load i32, i32* %set, align 4
  %3 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %_4, i32 1)
  %_5.0 = extractvalue { i32, i1 } %3, 0
  %_5.1 = extractvalue { i32, i1 } %3, 1
  %4 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  br i1 %4, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %5 = load i32, i32* %set, align 4
  %6 = and i32 %5, %_5.0
  store i32 %6, i32* %set, align 4
  %7 = load i32, i32* %result, align 4
  %8 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 1)
  %_6.0 = extractvalue { i32, i1 } %8, 0
  %_6.1 = extractvalue { i32, i1 } %8, 1
  %9 = call i1 @llvm.expect.i1(i1 %_6.1, i1 false)
  br i1 %9, label %panic1, label %bb4

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc6 to %"core::panic::location::Location"*)) #4
  unreachable

bb4:                                              ; preds = %bb3
  store i32 %_6.0, i32* %result, align 4
  br label %bb1

panic1:                                           ; preds = %bb3
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc8 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_count.rs.bc", hash: (3076150500, 3029477531, 1554851026, 4034942861, 1308427003))
^1 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 579355916379620076
^2 = gv: (name: "opng_bitset_count", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, calls: ((callee: ^7)), refs: (^10, ^9, ^5, ^3)))) ; guid = 1306151882005239416
^3 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1445978748112606591
^4 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^5 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 6023997518905902529
^6 = gv: (name: "llvm.uadd.with.overflow.i32") ; guid = 7434724336648776420
^7 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^8 = gv: (name: "llvm.usub.with.overflow.i32") ; guid = 14343078616435432074
^9 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17985270264944502318
^10 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 18232280631935429843
^11 = blockcount: 8
