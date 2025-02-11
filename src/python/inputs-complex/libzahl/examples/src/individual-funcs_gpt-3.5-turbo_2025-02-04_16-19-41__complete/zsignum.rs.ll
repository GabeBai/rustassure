; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsignum.rs.bc'
source_filename = "zsignum.b45753f8-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: uwtable
define i32 @zsignum(%Zahl* align 1 %self) unnamed_addr #0 {
start:
  %0 = bitcast %Zahl* %self to i32*
  %1 = load i32, i32* %0, align 1
  ret i32 %1
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsignum.rs.bc", hash: (1947825813, 3618801144, 113404467, 3985923012, 1889546170))
^1 = gv: (name: "zsignum", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 15352537659571043505
^2 = blockcount: 1
