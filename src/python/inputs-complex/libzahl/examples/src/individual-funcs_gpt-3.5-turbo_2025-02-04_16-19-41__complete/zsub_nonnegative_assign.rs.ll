; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub_nonnegative_assign.rs.bc'
source_filename = "zsub_nonnegative_assign.d629f85d-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: uwtable
define zeroext i1 @zcmpmag([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_3 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %b)
  br label %bb4

bb4:                                              ; preds = %start
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %bb4
  %_6 = call zeroext i1 @zcmpmag([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b)
  br label %bb5

bb1:                                              ; preds = %bb4
  store i8 1, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb5, %bb1
  %1 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %2 = trunc i8 %1 to i1
  ret i1 %2

bb5:                                              ; preds = %bb2
  %_5 = xor i1 %_6, true
  %3 = zext i1 %_5 to i8
  store i8 %3, i8* %0, align 1
  br label %bb3
}

; Function Attrs: uwtable
define void @zabs([1 x %Zahl]* align 1 %_a, [1 x %Zahl]* align 1 %_b) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %_a) unnamed_addr #0 {
start:
  ret i1 false
}

; Function Attrs: uwtable
define void @zsub_impl([1 x %Zahl]* align 1 %_a, [1 x %Zahl]* align 1 %_b, i64 %_used) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zsub_nonnegative_assign([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #0 {
start:
  %_3 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %b)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_9 = call zeroext i1 @zcmpmag([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b)
  br label %bb4

bb2:                                              ; preds = %bb1
  call void @zabs([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %a)
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6, %bb2
  ret void

bb4:                                              ; preds = %bb3
  %_8 = xor i1 %_9, true
  br i1 %_8, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %1 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  %_16 = load i64, i64* %1, align 1
  call void @zsub_impl([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, i64 %_16)
  br label %bb7

bb5:                                              ; preds = %bb4
  %2 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %3 = bitcast %Zahl* %2 to i32*
  store i32 0, i32* %3, align 1
  br label %bb7
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub_nonnegative_assign.rs.bc", hash: (3374065421, 733682287, 492077758, 3579079909, 2858635626))
^1 = gv: (name: "zabs", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 571569045789519847
^2 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5436943481773832288
^3 = gv: (name: "zsub_impl", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 14149763078176628570
^4 = gv: (name: "zsub_nonnegative_assign", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19, calls: ((callee: ^2), (callee: ^5), (callee: ^1), (callee: ^3))))) ; guid = 14155255248577901991
^5 = gv: (name: "zcmpmag", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^2), (callee: ^5))))) ; guid = 15996841441792720421
^6 = blockcount: 17
