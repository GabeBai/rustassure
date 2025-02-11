; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zodd.rs.bc'
source_filename = "zodd.f04796b9-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: uwtable
define i32 @zodd([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  %_2 = alloca i8, align 1
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %1 = bitcast %Zahl* %0 to i32*
  %_3 = load i32, i32* %1, align 1
  %2 = icmp eq i32 %_3, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 0, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %3 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %4 = getelementptr inbounds %Zahl, %Zahl* %3, i32 0, i32 4
  %_9 = load i64*, i64** %4, align 1
  %_7 = load i64, i64* %_9, align 8
  %_6 = and i64 %_7, 1
  %_5 = icmp ne i64 %_6, 0
  %5 = zext i1 %_5 to i8
  store i8 %5, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %6 = load i8, i8* %_2, align 1, !range !1, !noundef !2
  %7 = trunc i8 %6 to i1
  %8 = zext i1 %7 to i32
  ret i32 %8
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zodd.rs.bc", hash: (3205664645, 2040757117, 3140400037, 2091093959, 883728293))
^1 = gv: (name: "zodd", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21))) ; guid = 6622788486584753083
^2 = blockcount: 4
