; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrsh_taint.rs.bc'
source_filename = "zrsh_taint.0b0a7704-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: inlinehint uwtable
define i64 @zbits([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  ret i64 0
}

; Function Attrs: inlinehint uwtable
define i32 @zzero([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  ret i32 0
}

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrsh_taint.rs.bc", hash: (172038034, 521171418, 527629648, 3752190003, 2189462556))
^1 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5436943481773832288
^2 = gv: (name: "zbits", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 10528502499225088932
^3 = blockcount: 2
