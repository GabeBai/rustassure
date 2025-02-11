; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub_positive_assign.rs.bc'
source_filename = "zsub_positive_assign.3573f3e7-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: uwtable
define void @zsub_positive_assign([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %1 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  %_6 = load i64, i64* %1, align 1
  call void @zsub_impl([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, i64 %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @zsub_impl([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, i64 %used) unnamed_addr #0 {
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

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub_positive_assign.rs.bc", hash: (878318283, 736859369, 3805897190, 3122898919, 1015563347))
^1 = gv: (name: "zsub_positive_assign", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^2))))) ; guid = 7542852048706822268
^2 = gv: (name: "zsub_impl", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 14149763078176628570
^3 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15822663052811949562
^4 = blockcount: 4
