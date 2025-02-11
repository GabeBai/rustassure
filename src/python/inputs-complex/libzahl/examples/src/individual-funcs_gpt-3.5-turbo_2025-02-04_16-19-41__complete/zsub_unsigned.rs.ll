; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub_unsigned.rs.bc'
source_filename = "zsub_unsigned.f5655d58-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ptr::metadata::PtrComponents<u64>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u64>" = type { [1 x i64] }
%z_t = type { i32, i32, i64, i64, i64* }

; Function Attrs: inlinehint uwtable
define i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2a0868b09ecec702E({}* %data_address) unnamed_addr #0 {
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
define void @zsub_unsigned(%z_t* align 8 %a, %z_t* align 8 %b, %z_t* align 8 %c) unnamed_addr #1 {
start:
  call void @libzahl_zsub_unsigned(%z_t* %a, %z_t* %b, %z_t* %c)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %1 = alloca {}*, align 8
  %2 = alloca {}*, align 8
  %c = alloca %z_t, align 8
  %b = alloca %z_t, align 8
  %a = alloca %z_t, align 8
  %3 = bitcast {}** %0 to i64*
  store i64 0, i64* %3, align 8
  %4 = load {}*, {}** %0, align 8
  %5 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2a0868b09ecec702E({}* %4)
  br label %bb1

bb1:                                              ; preds = %start
  %6 = bitcast %z_t* %a to i32*
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %z_t, %z_t* %a, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %z_t, %z_t* %a, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %z_t, %z_t* %a, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %z_t, %z_t* %a, i32 0, i32 4
  store i64* %5, i64** %10, align 8
  %11 = bitcast {}** %1 to i64*
  store i64 0, i64* %11, align 8
  %12 = load {}*, {}** %1, align 8
  %13 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2a0868b09ecec702E({}* %12)
  br label %bb2

bb2:                                              ; preds = %bb1
  %14 = bitcast %z_t* %b to i32*
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %z_t, %z_t* %b, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %z_t, %z_t* %b, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %z_t, %z_t* %b, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %z_t, %z_t* %b, i32 0, i32 4
  store i64* %13, i64** %18, align 8
  %19 = bitcast {}** %2 to i64*
  store i64 0, i64* %19, align 8
  %20 = load {}*, {}** %2, align 8
  %21 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2a0868b09ecec702E({}* %20)
  br label %bb3

bb3:                                              ; preds = %bb2
  %22 = bitcast %z_t* %c to i32*
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %z_t, %z_t* %c, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %z_t, %z_t* %c, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %z_t, %z_t* %c, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %z_t, %z_t* %c, i32 0, i32 4
  store i64* %21, i64** %26, align 8
  call void @zsub_unsigned(%z_t* align 8 %a, %z_t* align 8 %b, %z_t* align 8 %c)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
declare void @libzahl_zsub_unsigned(%z_t*, %z_t*, %z_t*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub_unsigned.rs.bc", hash: (2778768308, 3864761670, 1794216416, 3091185696, 2843765350))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h2a0868b09ecec702E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 4566606448249296161
^3 = gv: (name: "libzahl_zsub_unsigned") ; guid = 9790471082808042728
^4 = gv: (name: "zsub_unsigned", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^3))))) ; guid = 9948682264463128493
^5 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, calls: ((callee: ^2), (callee: ^4))))) ; guid = 15822663052811949562
^6 = blockcount: 8
