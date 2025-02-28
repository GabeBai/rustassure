; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__wcwidth.rs.bc'
source_filename = "__wcwidth.77ea0756-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc7 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"not implemented" }>, align 1
@alloc8 = private unnamed_addr constant <{ [91 x i8] }> <{ [91 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__wcwidth.rs" }>, align 1
@alloc9 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc8, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\00\08\00\00\00\05\00\00\00" }>, align 8

; Function Attrs: uwtable
define i32 @__maskrune(i32 %c, i64 %mask) unnamed_addr #0 {
start:
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [15 x i8] }>* @alloc7 to [0 x i8]*), i64 15, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc9 to %"core::panic::location::Location"*)) #2
  unreachable
}

; Function Attrs: uwtable
define i32 @__wcwidth(i32 %c) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %1 = icmp eq i32 %c, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i32 0, i32* %0, align 4
  br label %bb9

bb2:                                              ; preds = %start
  %_4 = call i32 @__maskrune(i32 %c, i64 3758358528)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_7 = and i32 %_4, -536870912
  %2 = icmp eq i32 %_7, 0
  br i1 %2, label %bb6, label %bb4

bb6:                                              ; preds = %bb3
  %_13 = and i32 %_4, 262144
  %3 = icmp eq i32 %_13, 0
  br i1 %3, label %bb8, label %bb7

bb4:                                              ; preds = %bb3
  %_10 = and i32 %_4, -536870912
  %_12.0 = lshr i32 %_10, 30
  br label %bb5

bb5:                                              ; preds = %bb4
  store i32 %_12.0, i32* %0, align 4
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8, %bb5, %bb1
  %4 = load i32, i32* %0, align 4
  ret i32 %4

bb8:                                              ; preds = %bb6
  store i32 -1, i32* %0, align 4
  br label %bb9

bb7:                                              ; preds = %bb6
  store i32 1, i32* %0, align 4
  br label %bb9
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #1

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__wcwidth.rs.bc", hash: (2213496161, 2559597580, 576046610, 2746840512, 3417200301))
^1 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^5)))) ; guid = 2670258549838425525
^2 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^3 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12642240410055707604
^4 = gv: (name: "__maskrune", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^2)), refs: (^1, ^3)))) ; guid = 14848670321230169798
^5 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15097884669332380465
^6 = gv: (name: "__wcwidth", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^4))))) ; guid = 16125660156483335983
^7 = blockcount: 11
