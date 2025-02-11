; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zswap_tainted_unsigned.rs.bc'
source_filename = "zswap_tainted_unsigned.07387a5b-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ptr::metadata::PtrComponents<u64>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u64>" = type { [1 x i64] }
%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: inlinehint uwtable
define i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17hd95eb0050362c1ddE({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u64>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u64>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u64>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u64>", %"core::ptr::metadata::PtrComponents<u64>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u64>"* %_3 to %"core::ptr::metadata::PtrComponents<u64>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u64>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u64>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u64>"* %_3 to i64**
  %6 = load i64*, i64** %5, align 8
  ret i64* %6
}

; Function Attrs: alwaysinline uwtable
define void @zswap_tainted_unsigned([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %_4 = alloca %Zahl, align 1
  %t = alloca [1 x %Zahl], align 1
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17hd95eb0050362c1ddE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %Zahl* %_4 to i32*
  store i32 0, i32* %4, align 1
  %5 = getelementptr inbounds %Zahl, %Zahl* %_4, i32 0, i32 1
  store i32 0, i32* %5, align 1
  %6 = getelementptr inbounds %Zahl, %Zahl* %_4, i32 0, i32 2
  store i64 0, i64* %6, align 1
  %7 = getelementptr inbounds %Zahl, %Zahl* %_4, i32 0, i32 3
  store i64 0, i64* %7, align 1
  %8 = getelementptr inbounds %Zahl, %Zahl* %_4, i32 0, i32 4
  store i64* %3, i64** %8, align 1
  %9 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %t, i64 0, i64 0
  %10 = bitcast %Zahl* %9 to i8*
  %11 = bitcast %Zahl* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %11, i64 32, i1 false)
  %12 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %13 = getelementptr inbounds %Zahl, %Zahl* %12, i32 0, i32 2
  %_6 = load i64, i64* %13, align 1
  %14 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %t, i64 0, i64 0
  %15 = getelementptr inbounds %Zahl, %Zahl* %14, i32 0, i32 2
  store i64 %_6, i64* %15, align 1
  %16 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %17 = getelementptr inbounds %Zahl, %Zahl* %16, i32 0, i32 2
  %_9 = load i64, i64* %17, align 1
  %18 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %19 = getelementptr inbounds %Zahl, %Zahl* %18, i32 0, i32 2
  store i64 %_9, i64* %19, align 1
  %20 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %t, i64 0, i64 0
  %21 = getelementptr inbounds %Zahl, %Zahl* %20, i32 0, i32 2
  %_12 = load i64, i64* %21, align 1
  %22 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %23 = getelementptr inbounds %Zahl, %Zahl* %22, i32 0, i32 2
  store i64 %_12, i64* %23, align 1
  %24 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %25 = getelementptr inbounds %Zahl, %Zahl* %24, i32 0, i32 4
  %_15 = load i64*, i64** %25, align 1
  %26 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %t, i64 0, i64 0
  %27 = getelementptr inbounds %Zahl, %Zahl* %26, i32 0, i32 4
  store i64* %_15, i64** %27, align 1
  %28 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %29 = getelementptr inbounds %Zahl, %Zahl* %28, i32 0, i32 4
  %_18 = load i64*, i64** %29, align 1
  %30 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %31 = getelementptr inbounds %Zahl, %Zahl* %30, i32 0, i32 4
  store i64* %_18, i64** %31, align 1
  %32 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %t, i64 0, i64 0
  %33 = getelementptr inbounds %Zahl, %Zahl* %32, i32 0, i32 4
  %_21 = load i64*, i64** %33, align 1
  %34 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %35 = getelementptr inbounds %Zahl, %Zahl* %34, i32 0, i32 4
  store i64* %_21, i64** %35, align 1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { alwaysinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zswap_tainted_unsigned.rs.bc", hash: (3749864037, 2033620003, 2440575177, 753349735, 2202589037))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "zswap_tainted_unsigned", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 59, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 1, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^3))))) ; guid = 8275925170626935015
^3 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hd95eb0050362c1ddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 14767415010576946888
^4 = blockcount: 3
