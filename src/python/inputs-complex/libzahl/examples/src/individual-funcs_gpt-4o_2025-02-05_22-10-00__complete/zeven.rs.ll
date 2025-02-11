; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zeven.rs.bc'
source_filename = "zeven.b985fc2e-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

@alloc7 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc8 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17h3c39c545aad578aeE(i64* %src) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %1 = bitcast i64* %0 to {}*
  %2 = load i64, i64* %0, align 8
  store i64 %2, i64* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast i64* %tmp to i8*
  %4 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %_6 = load i64, i64* %tmp, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64 %_6
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4read17h2f43bbe2a81b8a1bE"(i64* %self) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3ptr4read17h3c39c545aad578aeE(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: uwtable
define i32 @zeven([1 x %Zahl]* align 1 %a) unnamed_addr #1 {
start:
  %_2 = alloca i8, align 1
  %0 = alloca i32, align 4
  %1 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %2 = bitcast %Zahl* %1 to i32*
  %_3 = load i32, i32* %2, align 1
  %3 = icmp eq i32 %_3, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %4 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %5 = getelementptr inbounds %Zahl, %Zahl* %4, i32 0, i32 4
  %_9 = load i64*, i64** %5, align 1
  %_8 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4read17h2f43bbe2a81b8a1bE"(i64* %_9)
  br label %bb4

bb4:                                              ; preds = %bb2
  %_7 = xor i64 %_8, -1
  %_6 = and i64 %_7, 1
  %_5 = icmp eq i64 %_6, 0
  %6 = zext i1 %_5 to i8
  store i8 %6, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb4, %bb1
  %7 = load i8, i8* %_2, align 1, !range !1, !noundef !2
  %8 = trunc i8 %7 to i1
  br i1 %8, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  store i32 0, i32* %0, align 4
  br label %bb7

bb5:                                              ; preds = %bb3
  store i32 1, i32* %0, align 4
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %9 = load i32, i32* %0, align 4
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zeven.rs.bc", hash: (3651599443, 71115466, 3707319256, 4226601957, 3378488738))
^1 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4read17h2f43bbe2a81b8a1bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^5))))) ; guid = 557547063456720018
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4011496834683696316
^4 = gv: (name: "zeven", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^1))))) ; guid = 11374502905011557409
^5 = gv: (name: "_ZN4core3ptr4read17h3c39c545aad578aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 17016196270047305403
^6 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 17844792515757597211
^7 = blockcount: 14
