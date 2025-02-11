; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zodd.rs.bc'
source_filename = "zodd.f04796b9-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ptr::metadata::PtrRepr<[u64]>" = type { [2 x i64] }
%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc7 = private unnamed_addr constant <{ [85 x i8] }> <{ [85 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zodd.rs" }>, align 1
@alloc8 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [85 x i8] }>, <{ [85 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [16 x i8] c"U\00\00\00\00\00\00\004\00\00\00$\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h1bb2ddac8c190989E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h29fff5d90c16dec5E"(i64* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h3c25c5854a78b939E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i64]*, i64 } %0, 0
  %2 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %1, 0
  %4 = insertvalue { [0 x i64]*, i64 } %3, i64 %2, 1
  ret { [0 x i64]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h3c25c5854a78b939E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u64]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { [0 x i64]*, i64 }*
  %10 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i64]*, [0 x i64]** %10, align 8
  %12 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %11, 0
  %15 = insertvalue { [0 x i64]*, i64 } %14, i64 %13, 1
  ret { [0 x i64]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h29fff5d90c16dec5E"(i64* %self) unnamed_addr #0 {
start:
  %0 = bitcast i64* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h090ff6b662526437E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h1bb2ddac8c190989E(i64* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: uwtable
define zeroext i1 @zodd(%Zahl* align 1 %self) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast %Zahl* %self to i32*
  %_2 = load i32, i32* %1, align 1
  %2 = icmp eq i32 %_2, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %3 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 4
  %_8 = load i64*, i64** %3, align 1
  %4 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  %_10 = load i64, i64* %4, align 1
  %5 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h090ff6b662526437E(i64* %_8, i64 %_10)
  %_6.0 = extractvalue { [0 x i64]*, i64 } %5, 0
  %_6.1 = extractvalue { [0 x i64]*, i64 } %5, 1
  br label %bb4

bb4:                                              ; preds = %bb2
  %_13 = icmp ult i64 0, %_6.1
  %6 = call i1 @llvm.expect.i1(i1 %_13, i1 true)
  br i1 %6, label %bb5, label %panic

bb5:                                              ; preds = %bb4
  %7 = getelementptr inbounds [0 x i64], [0 x i64]* %_6.0, i64 0, i64 0
  %_5 = load i64, i64* %7, align 8
  %_4 = and i64 %_5, 1
  %_3 = icmp ne i64 %_4, 0
  %8 = zext i1 %_3 to i8
  store i8 %8, i8* %0, align 1
  br label %bb3

panic:                                            ; preds = %bb4
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_6.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc8 to %"core::panic::location::Location"*)) #4
  unreachable

bb3:                                              ; preds = %bb5, %bb1
  %9 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %10 = trunc i8 %9 to i1
  ret i1 %10
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zodd.rs.bc", hash: (2655008052, 1691070520, 2644869662, 133970495, 1855201881))
^1 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^2 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h29fff5d90c16dec5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3691906171302296117
^3 = gv: (name: "zodd", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 30, calls: ((callee: ^4), (callee: ^9)), refs: (^6)))) ; guid = 6622788486584753083
^4 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17h090ff6b662526437E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^8))))) ; guid = 7642213024520662832
^5 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10442890827799803593
^6 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^5)))) ; guid = 13118554060908303021
^7 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h3c25c5854a78b939E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 15281864268278304357
^8 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h1bb2ddac8c190989E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^2), (callee: ^7))))) ; guid = 17392016885649496504
^9 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^10 = blockcount: 14
