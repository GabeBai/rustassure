; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zset.rs.bc'
source_filename = "zset.4bfb0365-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@core::intrinsics::copy_nonoverlapping<u64>::{closure#0}]" = type { i64**, i64**, i64* }
%"core::ptr::metadata::PtrComponents<u64>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u64>" = type { [1 x i64] }
%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17hcf50b72658ff3a81E(i64* %src, i64* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u64>::{closure#0}]", align 8
  %0 = mul i64 %count, 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17hf0a8dfc91bb6c173E({}* %data_address) unnamed_addr #0 {
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

; Function Attrs: uwtable
define void @new(%Zahl* sret(%Zahl) %0) unnamed_addr #1 {
start:
  %1 = alloca {}*, align 8
  %2 = bitcast {}** %1 to i64*
  store i64 0, i64* %2, align 8
  %3 = load {}*, {}** %1, align 8
  %4 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17hf0a8dfc91bb6c173E({}* %3)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = bitcast %Zahl* %0 to i32*
  store i32 0, i32* %5, align 1
  %6 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 1
  store i32 0, i32* %6, align 1
  %7 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  store i64 0, i64* %7, align 1
  %8 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 3
  store i64 0, i64* %8, align 1
  %9 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 4
  store i64* %4, i64** %9, align 1
  ret void
}

; Function Attrs: uwtable
define void @libzahl_realloc(%Zahl* align 1 %z, i64 %size) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @libzahl_memcpy(i64* %dest, i64* %src, i64 %size) unnamed_addr #1 {
start:
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hcf50b72658ff3a81E(i64* %src, i64* %dest, i64 %size)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @zset([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %1 = bitcast %Zahl* %0 to i32*
  %_3 = load i32, i32* %1, align 1
  %2 = icmp eq i32 %_3, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %4 = bitcast %Zahl* %3 to i32*
  store i32 0, i32* %4, align 1
  br label %bb5

bb2:                                              ; preds = %start
  %5 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %6 = bitcast %Zahl* %5 to i32*
  %_6 = load i32, i32* %6, align 1
  %7 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %8 = bitcast %Zahl* %7 to i32*
  store i32 %_6, i32* %8, align 1
  %9 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %10 = getelementptr inbounds %Zahl, %Zahl* %9, i32 0, i32 2
  %_9 = load i64, i64* %10, align 1
  %11 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %12 = getelementptr inbounds %Zahl, %Zahl* %11, i32 0, i32 2
  store i64 %_9, i64* %12, align 1
  %13 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %14 = getelementptr inbounds %Zahl, %Zahl* %13, i32 0, i32 3
  %_13 = load i64, i64* %14, align 1
  %15 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %16 = getelementptr inbounds %Zahl, %Zahl* %15, i32 0, i32 2
  %_15 = load i64, i64* %16, align 1
  %_12 = icmp ult i64 %_13, %_15
  br i1 %_12, label %bb3, label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %17 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %18 = getelementptr inbounds %Zahl, %Zahl* %17, i32 0, i32 4
  %_24 = load i64*, i64** %18, align 1
  %19 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %20 = getelementptr inbounds %Zahl, %Zahl* %19, i32 0, i32 4
  %_27 = load i64*, i64** %20, align 1
  %21 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %22 = getelementptr inbounds %Zahl, %Zahl* %21, i32 0, i32 2
  %_29 = load i64, i64* %22, align 1
  call void @libzahl_memcpy(i64* %_24, i64* %_27, i64 %_29)
  br label %bb5

bb3:                                              ; preds = %bb2
  %_19 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %23 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %24 = getelementptr inbounds %Zahl, %Zahl* %23, i32 0, i32 2
  %_21 = load i64, i64* %24, align 1
  call void @libzahl_realloc(%Zahl* align 1 %_19, i64 %_21)
  br label %bb4

bb5:                                              ; preds = %bb4, %bb1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zset.rs.bc", hash: (3675996999, 2141423434, 950575511, 1000662036, 173189727))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17hcf50b72658ff3a81E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 5557892441106547874
^3 = gv: (name: "new", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^6))))) ; guid = 6686536032942599970
^4 = gv: (name: "libzahl_realloc", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9296568666965528725
^5 = gv: (name: "libzahl_memcpy", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^2))))) ; guid = 11838894465342582843
^6 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hf0a8dfc91bb6c173E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 16281366006987862479
^7 = gv: (name: "zset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^5), (callee: ^4))))) ; guid = 17194806963102885160
^8 = blockcount: 13
