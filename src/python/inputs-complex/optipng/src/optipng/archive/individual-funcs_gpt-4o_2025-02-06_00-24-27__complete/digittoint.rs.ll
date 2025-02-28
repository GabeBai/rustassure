; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/digittoint.rs.bc'
source_filename = "digittoint.cbc7b464-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc7 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"not implemented" }>, align 1
@alloc8 = private unnamed_addr constant <{ [92 x i8] }> <{ [92 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/digittoint.rs" }>, align 1
@alloc9 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [92 x i8] }>, <{ [92 x i8] }>* @alloc8, i32 0, i32 0, i32 0), [16 x i8] c"\\\00\00\00\00\00\00\00\08\00\00\00\05\00\00\00" }>, align 8

; Function Attrs: uwtable
define i32 @__maskrune(i32 %c, i64 %mask) unnamed_addr #0 {
start:
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [15 x i8] }>* @alloc7 to [0 x i8]*), i64 15, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc9 to %"core::panic::location::Location"*)) #3
  unreachable
}

; Function Attrs: inlinehint uwtable
define i32 @digittoint(i32 %c) unnamed_addr #1 {
start:
  %0 = call i32 @__maskrune(i32 %c, i64 15)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/digittoint.rs.bc", hash: (3023447258, 2012385772, 1235407911, 2027556490, 4139498546))
^1 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2312255032635217722
^2 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2993754688538369418
^3 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^4 = gv: (name: "__maskrune", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^3)), refs: (^5, ^2)))) ; guid = 14848670321230169798
^5 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 16813230754303167734
^6 = gv: (name: "digittoint", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^4))))) ; guid = 17282513044464216053
^7 = blockcount: 3
