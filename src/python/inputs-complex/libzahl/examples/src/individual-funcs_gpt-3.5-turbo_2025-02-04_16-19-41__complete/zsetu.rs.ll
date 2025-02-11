; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsetu.rs.bc'
source_filename = "zsetu.6b12ea27-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ptr::metadata::PtrComponents<u64>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u64>" = type { [1 x i64] }
%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: inlinehint uwtable
define i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2376b41aed0848f8E({}* %data_address) unnamed_addr #0 {
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
define void @zsetu(%Zahl* align 1 %a, i64 %b) unnamed_addr #1 {
start:
  %0 = icmp eq i64 %b, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %1 = bitcast %Zahl* %a to i32*
  store i32 0, i32* %1, align 1
  br label %bb5

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 3
  %_5 = load i64, i64* %2, align 1
  %_4 = icmp ult i64 %_5, 1
  br i1 %_4, label %bb3, label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %3 = bitcast %Zahl* %a to i32*
  store i32 1, i32* %3, align 1
  %4 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_9 = load i64*, i64** %4, align 1
  store i64 %b, i64* %_9, align 8
  %5 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  store i64 1, i64* %5, align 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @libzahl_realloc(%Zahl* %a, i64 1)
  br label %bb4

bb5:                                              ; preds = %bb4, %bb1
  ret void
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %a = alloca %Zahl, align 1
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2376b41aed0848f8E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %Zahl* %a to i32*
  store i32 0, i32* %4, align 1
  %5 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 1
  store i32 0, i32* %5, align 1
  %6 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  store i64 0, i64* %6, align 1
  %7 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 3
  store i64 0, i64* %7, align 1
  %8 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  store i64* %3, i64** %8, align 1
  call void @zsetu(%Zahl* align 1 %a, i64 42)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
declare void @libzahl_realloc(%Zahl*, i64) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsetu.rs.bc", hash: (1271867704, 863641570, 4106819264, 859373741, 646897302))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "zsetu", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^4))))) ; guid = 9096558055660469103
^3 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h2376b41aed0848f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 9279093102600571786
^4 = gv: (name: "libzahl_realloc") ; guid = 9296568666965528725
^5 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^3), (callee: ^2))))) ; guid = 15822663052811949562
^6 = blockcount: 10
