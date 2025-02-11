; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zseti.rs.bc'
source_filename = "zseti.28cae36c-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::ptr::metadata::PtrComponents<u64>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u64>" = type { [1 x i64] }
%Zahl = type <{ i32, i32, i64, i64, i64* }>

@alloc15 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/num/mod.rs" }>, align 1
@alloc16 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\D6\00\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [31 x i8] c"attempt to negate with overflow"

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core3num21_$LT$impl$u20$i64$GT$3abs17h0bd3391d255322d2E"(i64 %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = icmp slt i64 %self, 0
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %1, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  store i64 %self, i64* %0, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %_5 = icmp eq i64 %self, -9223372036854775808
  %2 = call i1 @llvm.expect.i1(i1 %_5, i1 false)
  br i1 %2, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %3 = sub i64 0, %self
  store i64 %3, i64* %0, align 8
  br label %bb5

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([31 x i8]* @str.0 to [0 x i8]*), i64 31, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #5
  unreachable

bb5:                                              ; preds = %bb3, %bb4
  %4 = load i64, i64* %0, align 8
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17h3aff32dbb2547794E({}* %data_address) unnamed_addr #0 {
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
  %4 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17h3aff32dbb2547794E({}* %3)
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
define void @libzahl_realloc(%Zahl* align 1 %a, i64 %size) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zsetu(%Zahl* align 1 %a, i64 %b) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zseti(%Zahl* align 1 %a, i64 %b) unnamed_addr #1 {
start:
  %_3 = icmp sge i64 %b, 0
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  call void @libzahl_realloc(%Zahl* align 1 %a, i64 1)
  br label %bb3

bb1:                                              ; preds = %start
  call void @zsetu(%Zahl* align 1 %a, i64 %b)
  br label %bb5

bb5:                                              ; preds = %bb4, %bb1
  ret void

bb3:                                              ; preds = %bb2
  %0 = bitcast %Zahl* %a to i32*
  store i32 -1, i32* %0, align 1
  %_11 = call i64 @"_ZN4core3num21_$LT$impl$u20$i64$GT$3abs17h0bd3391d255322d2E"(i64 %b)
  br label %bb4

bb4:                                              ; preds = %bb3
  %1 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_13 = load i64*, i64** %1, align 1
  store i64 %_11, i64* %_13, align 8
  %2 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  store i64 1, i64* %2, align 1
  br label %bb5
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zseti.rs.bc", hash: (2524477414, 330992213, 354493157, 2010057122, 3950264539))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^3 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8)))) ; guid = 6134487038014365118
^4 = gv: (name: "new", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^11))))) ; guid = 6686536032942599970
^5 = gv: (name: "zsetu", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9096558055660469103
^6 = gv: (name: "libzahl_realloc", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9296568666965528725
^7 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^8 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10265117124884058040
^9 = gv: (name: "zseti", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^6), (callee: ^5), (callee: ^12))))) ; guid = 12249533030182154352
^10 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13608513805683357651
^11 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h3aff32dbb2547794E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 16491529101808900572
^12 = gv: (name: "_ZN4core3num21_$LT$impl$u20$i64$GT$3abs17h0bd3391d255322d2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 16, calls: ((callee: ^7)), refs: (^3, ^10)))) ; guid = 18017600218267559757
^13 = blockcount: 18
