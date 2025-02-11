; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zzero1.rs.bc'
source_filename = "zzero1.647560cb-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: uwtable
define i32 @zzero([1 x %Zahl]* %a) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %1 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %2 = getelementptr inbounds %Zahl, %Zahl* %1, i32 0, i32 2
  %_2 = load i64, i64* %2, align 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i32 1, i32* %0, align 4
  br label %bb3

bb2:                                              ; preds = %start
  store i32 0, i32* %0, align 4
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %4 = load i32, i32* %0, align 4
  ret i32 %4
}

; Function Attrs: uwtable
define i32 @zzero1([1 x %Zahl]* %a, [1 x %Zahl]* %b) unnamed_addr #0 {
start:
  %_8 = alloca [1 x %Zahl], align 1
  %_5 = alloca [1 x %Zahl], align 1
  %_3 = alloca i8, align 1
  %0 = alloca i32, align 4
  %1 = bitcast [1 x %Zahl]* %_5 to i8*
  %2 = bitcast [1 x %Zahl]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 32, i1 false)
  %_4 = call i32 @zzero([1 x %Zahl]* %_5)
  br label %bb4

bb4:                                              ; preds = %start
  %3 = icmp eq i32 %_4, 0
  br i1 %3, label %bb2, label %bb1

bb2:                                              ; preds = %bb4
  %4 = bitcast [1 x %Zahl]* %_8 to i8*
  %5 = bitcast [1 x %Zahl]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 32, i1 false)
  %_7 = call i32 @zzero([1 x %Zahl]* %_8)
  br label %bb5

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb5, %bb1
  %6 = load i8, i8* %_3, align 1, !range !1, !noundef !2
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb6, label %bb7

bb5:                                              ; preds = %bb2
  %_6 = icmp ne i32 %_7, 0
  %8 = zext i1 %_6 to i8
  store i8 %8, i8* %_3, align 1
  br label %bb3

bb7:                                              ; preds = %bb3
  store i32 0, i32* %0, align 4
  br label %bb8

bb6:                                              ; preds = %bb3
  store i32 1, i32* %0, align 4
  br label %bb8

bb8:                                              ; preds = %bb6, %bb7
  %9 = load i32, i32* %0, align 4
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zzero1.rs.bc", hash: (3239451905, 4194684902, 1264101858, 1192696040, 2623544663))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "zzero1", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, calls: ((callee: ^3))))) ; guid = 2177602619424140935
^3 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 5436943481773832288
^4 = blockcount: 13
