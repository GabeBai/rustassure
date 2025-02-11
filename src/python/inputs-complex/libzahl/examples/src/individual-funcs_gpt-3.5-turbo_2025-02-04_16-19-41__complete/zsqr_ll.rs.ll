; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsqr_ll.rs.bc'
source_filename = "zsqr_ll.21d30e05-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: uwtable
define void @zsqr_ll_single_char(%Zahl* %a, %Zahl* %b) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zsplit_unsigned_fast_small_auto(%Zahl* %high, %Zahl* %low, %Zahl* %b, i64 %bits) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zsplit_unsigned_fast_large_taint(%Zahl* %high, %Zahl* %low, %Zahl* %b, i64 %bits) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zinit_temp(%Zahl* %z) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zfree_temp(%Zahl* %z) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @main() unnamed_addr #0 {
start:
  ret void
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsqr_ll.rs.bc", hash: (2465609911, 2808732376, 679412620, 1446517539, 2997413329))
^1 = gv: (name: "zsplit_unsigned_fast_large_taint", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 8532760241395172910
^2 = gv: (name: "zfree_temp", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9319338411799261585
^3 = gv: (name: "zsplit_unsigned_fast_small_auto", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9967062138583482442
^4 = gv: (name: "zinit_temp", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 11950511933810137963
^5 = gv: (name: "zsqr_ll_single_char", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 13949238099473909187
^6 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15822663052811949562
^7 = blockcount: 6
