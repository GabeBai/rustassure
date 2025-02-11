; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsqr.rs.bc'
source_filename = "zsqr.45060ba3-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: inlinehint uwtable
define void @zsqr([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #0 {
start:
  %_3 = call i32 @zzero([1 x %Zahl]* align 1 %b)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = icmp eq i32 %_3, 0
  br i1 %0, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  call void @zsqr_ll([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b)
  br label %bb4

bb2:                                              ; preds = %bb1
  %1 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %2 = bitcast %Zahl* %1 to i32*
  store i32 0, i32* %2, align 1
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  ret void

bb4:                                              ; preds = %bb3
  %3 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %4 = bitcast %Zahl* %3 to i32*
  store i32 1, i32* %4, align 1
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define i32 @zzero([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  ret i32 0
}

; Function Attrs: uwtable
define void @zsqr_ll([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  ret void
}

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsqr.rs.bc", hash: (2530998709, 2883768133, 438943890, 755282619, 772069530))
^1 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5436943481773832288
^2 = gv: (name: "zsqr_ll", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5680309956812831830
^3 = gv: (name: "zsqr", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^1), (callee: ^2))))) ; guid = 7698392874651616019
^4 = blockcount: 8
