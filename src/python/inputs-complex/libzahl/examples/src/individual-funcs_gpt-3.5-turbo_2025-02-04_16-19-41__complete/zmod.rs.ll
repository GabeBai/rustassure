; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmod.rs.bc'
source_filename = "zmod.61dd8a78-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

@libzahl_tmp_mod = external global [1 x %Zahl]

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h4c87c69afa3bf5e3E"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x %Zahl]* %self.0 to %Zahl*
  ret %Zahl* %0
}

; Function Attrs: uwtable
define void @zmod(%Zahl* %a, %Zahl* %b, %Zahl* %c) unnamed_addr #1 {
start:
  %_5 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h4c87c69afa3bf5e3E"([0 x %Zahl]* align 1 bitcast ([1 x %Zahl]* @libzahl_tmp_mod to [0 x %Zahl]*), i64 1)
  br label %bb1

bb1:                                              ; preds = %start
  call void @zdivmod(%Zahl* %_5, %Zahl* %a, %Zahl* %b, %Zahl* %c)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: uwtable
declare void @zdivmod(%Zahl*, %Zahl*, %Zahl*, %Zahl*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmod.rs.bc", hash: (4125943603, 2705087323, 1881736611, 2920940214, 761626917))
^1 = gv: (name: "zdivmod") ; guid = 615378436294839599
^2 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h4c87c69afa3bf5e3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 6412457824616073645
^3 = gv: (name: "libzahl_tmp_mod") ; guid = 9722416115338077691
^4 = gv: (name: "zmod", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^2), (callee: ^1)), refs: (^3)))) ; guid = 16944572769852845422
^5 = blockcount: 4
