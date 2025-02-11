; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zlsh.rs.bc'
source_filename = "zlsh.e0e39734-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ptr::metadata::PtrComponents<u64>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u64>" = type { [1 x i64] }
%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: inlinehint uwtable
define i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17h4591e7e7a2303f08E({}* %data_address) unnamed_addr #0 {
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
define void @main() unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %1 = alloca {}*, align 8
  %b = alloca %Zahl, align 1
  %a = alloca %Zahl, align 1
  %2 = bitcast {}** %0 to i64*
  store i64 0, i64* %2, align 8
  %3 = load {}*, {}** %0, align 8
  %4 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17h4591e7e7a2303f08E({}* %3)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = bitcast %Zahl* %a to i32*
  store i32 0, i32* %5, align 1
  %6 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 1
  store i32 0, i32* %6, align 1
  %7 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  store i64 0, i64* %7, align 1
  %8 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 3
  store i64 0, i64* %8, align 1
  %9 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  store i64* %4, i64** %9, align 1
  %10 = bitcast {}** %1 to i64*
  store i64 0, i64* %10, align 8
  %11 = load {}*, {}** %1, align 8
  %12 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17h4591e7e7a2303f08E({}* %11)
  br label %bb2

bb2:                                              ; preds = %bb1
  %13 = bitcast %Zahl* %b to i32*
  store i32 0, i32* %13, align 1
  %14 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 1
  store i32 0, i32* %14, align 1
  %15 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  store i64 0, i64* %15, align 1
  %16 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 3
  store i64 0, i64* %16, align 1
  %17 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 4
  store i64* %12, i64** %17, align 1
  call void @zlsh(%Zahl* %a, %Zahl* %b, i64 0)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
declare void @zlsh(%Zahl*, %Zahl*, i64) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zlsh.rs.bc", hash: (3859084514, 360785414, 1194953863, 3948184564, 800579651))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "zlsh") ; guid = 12865527316353931809
^3 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37, calls: ((callee: ^4), (callee: ^2))))) ; guid = 15822663052811949562
^4 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h4591e7e7a2303f08E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 17022738437588911697
^5 = blockcount: 5
