; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbset_ll_set.rs.bc'
source_filename = "zbset_ll_set.71fea2f6-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 8 %a) unnamed_addr #0 {
start:
  ret i1 true
}

; Function Attrs: uwtable
define void @libzahl_realloc([1 x %Zahl]* align 8 %a, i64 %new_size) unnamed_addr #0 {
start:
  ret void
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbset_ll_set.rs.bc", hash: (1448604705, 1634051711, 2904695556, 378844751, 134255554))
^1 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5436943481773832288
^2 = gv: (name: "libzahl_realloc", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9296568666965528725
^3 = blockcount: 2
