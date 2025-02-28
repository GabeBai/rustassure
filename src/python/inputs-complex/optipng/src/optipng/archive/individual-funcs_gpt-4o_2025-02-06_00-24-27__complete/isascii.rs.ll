; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/isascii.rs.bc'
source_filename = "isascii.bc669029-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

; Function Attrs: inlinehint uwtable
define zeroext i1 @isascii(i32 %c) unnamed_addr #0 {
start:
  %_2 = and i32 %c, -128
  %0 = icmp eq i32 %_2, 0
  ret i1 %0
}

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/isascii.rs.bc", hash: (992878801, 3291590713, 2329601588, 3803504241, 3614297695))
^1 = gv: (name: "isascii", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 13654494072929806929
^2 = blockcount: 1
