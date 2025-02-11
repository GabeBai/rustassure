; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zeven_nonzero.rs.bc'
source_filename = "zeven_nonzero.b9fcc380-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: inlinehint uwtable
define i32 @zeven_nonzero([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %1 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 4
  %_6 = load i64*, i64** %1, align 1
  %_4 = load i64, i64* %_6, align 8
  %_3 = and i64 %_4, 1
  %_2 = xor i64 %_3, -1
  %2 = trunc i64 %_2 to i32
  ret i32 %2
}

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zeven_nonzero.rs.bc", hash: (1539211094, 3712012389, 440680236, 3803189307, 3869199199))
^1 = gv: (name: "zeven_nonzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 7883345413359899939
^2 = blockcount: 1
