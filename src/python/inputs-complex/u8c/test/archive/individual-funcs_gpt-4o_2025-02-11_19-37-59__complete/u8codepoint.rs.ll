; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8codepoint.rs.bc'
source_filename = "u8codepoint.7f41c50a-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

; Function Attrs: uwtable
define i32 @u8next_(i8* %txt, i32* align 4 %ch) unnamed_addr #0 {
start:
  ret i32 0
}

; Function Attrs: alwaysinline uwtable
define i32 @u8codepoint(i8* %s) unnamed_addr #1 {
start:
  %c = alloca i32, align 4
  store i32 0, i32* %c, align 4
  %_2 = call i32 @u8next_(i8* %s, i32* align 4 %c)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = load i32, i32* %c, align 4
  ret i32 %0
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { alwaysinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8codepoint.rs.bc", hash: (513914606, 1336572437, 1274469260, 505509278, 3867888226))
^1 = gv: (name: "u8next_", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 4978044037965714241
^2 = gv: (name: "u8codepoint", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 1, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^1))))) ; guid = 13006620501973347140
^3 = blockcount: 3
