; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_find_prev.rs.bc'
source_filename = "opng_bitset_find_prev.43c2b5ba-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc13 = private unnamed_addr constant <{ [103 x i8] }> <{ [103 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_find_prev.rs" }>, align 1
@alloc10 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc13, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\0A\00\00\00\11\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc12 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc13, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\0C\00\00\00\13\00\00\00" }>, align 8
@str.1 = internal constant [35 x i8] c"attempt to shift left with overflow"
@alloc14 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc13, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\0F\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: uwtable
define i32 @opng_bitset_find_prev(i32 %set, i32 %elt) unnamed_addr #0 {
start:
  %_4 = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = alloca i32, align 4
  %_5 = icmp slt i32 %elt, 32
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 32, i32* %_4, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 %elt, i32* %_4, align 4
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %1 = load i32, i32* %_4, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1, i32 1)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  %3 = call i1 @llvm.expect.i1(i1 %_8.1, i1 false)
  br i1 %3, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_8.0, i32* %i, align 4
  br label %bb5

panic:                                            ; preds = %bb3
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc10 to %"core::panic::location::Location"*)) #4
  unreachable

bb5:                                              ; preds = %bb10, %bb4
  %_10 = load i32, i32* %i, align 4
  %_9 = icmp sge i32 %_10, 0
  br i1 %_9, label %bb6, label %bb11

bb11:                                             ; preds = %bb5
  store i32 -1, i32* %0, align 4
  br label %bb12

bb6:                                              ; preds = %bb5
  %_14 = load i32, i32* %i, align 4
  %4 = and i32 %_14, -32
  %_15.1 = icmp ne i32 %4, 0
  %5 = and i32 %_14, 31
  %_15.0 = shl i32 1, %5
  %6 = call i1 @llvm.expect.i1(i1 %_15.1, i1 false)
  br i1 %6, label %panic1, label %bb7

bb7:                                              ; preds = %bb6
  %_11 = and i32 %set, %_15.0
  %7 = icmp eq i32 %_11, 0
  br i1 %7, label %bb9, label %bb8

panic1:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.1 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc12 to %"core::panic::location::Location"*)) #4
  unreachable

bb9:                                              ; preds = %bb7
  %8 = load i32, i32* %i, align 4
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %8, i32 1)
  %_16.0 = extractvalue { i32, i1 } %9, 0
  %_16.1 = extractvalue { i32, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_16.1, i1 false)
  br i1 %10, label %panic2, label %bb10

bb8:                                              ; preds = %bb7
  %11 = load i32, i32* %i, align 4
  store i32 %11, i32* %0, align 4
  br label %bb12

bb12:                                             ; preds = %bb8, %bb11
  %12 = load i32, i32* %0, align 4
  ret i32 %12

bb10:                                             ; preds = %bb9
  store i32 %_16.0, i32* %i, align 4
  br label %bb5

panic2:                                           ; preds = %bb9
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc14 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_find_prev.rs.bc", hash: (3706575906, 1394580360, 1923174401, 2647789147, 2974140319))
^1 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^2 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3305669675689398775
^3 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4775844571418031203
^4 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6064048228965232337
^5 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4)))) ; guid = 7448749381771742392
^6 = gv: (name: "opng_bitset_find_prev", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^7)), refs: (^5, ^2, ^8, ^3, ^10)))) ; guid = 9624292317922766454
^7 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^8 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4)))) ; guid = 10471408057650101371
^9 = gv: (name: "llvm.ssub.with.overflow.i32") ; guid = 12482542225321408869
^10 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4)))) ; guid = 13415697750483824593
^11 = blockcount: 16
