; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/toascii.rs.bc'
source_filename = "toascii.53ee1eec-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

; Function Attrs: inlinehint uwtable
define i32 @toascii(i32 %c) unnamed_addr #0 {
start:
  %0 = and i32 %c, 127
  ret i32 %0
}

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/toascii.rs.bc", hash: (3418137641, 446175702, 1158613312, 3913171249, 945942639))
^1 = gv: (name: "toascii", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 4548159975983457080
^2 = blockcount: 1
