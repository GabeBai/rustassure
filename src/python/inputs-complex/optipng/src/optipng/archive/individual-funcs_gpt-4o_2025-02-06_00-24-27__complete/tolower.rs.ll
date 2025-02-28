; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/tolower.rs.bc'
source_filename = "tolower.e1819ebd-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

; Function Attrs: uwtable
define i32 @__tolower(i32 %c) unnamed_addr #0 {
start:
  ret i32 %c
}

; Function Attrs: inlinehint uwtable
define i32 @tolower(i32 %c) unnamed_addr #1 {
start:
  %0 = call i32 @__tolower(i32 %c)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/tolower.rs.bc", hash: (3473929471, 350446937, 110578563, 48702111, 962557950))
^1 = gv: (name: "__tolower", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 3509907326134048607
^2 = gv: (name: "tolower", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^1))))) ; guid = 17411069740033744106
^3 = blockcount: 3
