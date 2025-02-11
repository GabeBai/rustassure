; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub.rs.bc'
source_filename = "zsub.92771f72-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>" = type { { i8*, i8* }, { i8*, i8* }, i64, i64, i64 }
%Zahl = type <{ i32, i64, i64, %"alloc::vec::Vec<u64>" }>
%"alloc::vec::Vec<u64>" = type { { i64*, i64 }, i64 }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"[closure@core::intrinsics::copy_nonoverlapping<u64>::{closure#0}]" = type { i64**, i64**, i64* }
%"core::ptr::metadata::PtrRepr<[u64]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"[closure@core::iter::traits::iterator::Iterator::all::check<(&Zahl, &Zahl), [closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]>::{closure#0}]" = type { %"[closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]" }
%"[closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::ops::control_flow::ControlFlow<(), core::convert::Infallible>::Break" = type { {} }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc36 = private unnamed_addr constant <{ [1 x i8] }> zeroinitializer, align 1
@alloc126 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc127 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc126, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc128 = private unnamed_addr constant <{ [83 x i8] }> <{ [83 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/vec/partial_eq.rs" }>, align 1
@alloc129 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc128, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\00\17\00\00\00\01\00\00\00" }>, align 8
@alloc130 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc131 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc130, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc132 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc133 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc132, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc136 = private unnamed_addr constant <{ [82 x i8] }> <{ [82 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/array/equality.rs" }>, align 1
@alloc135 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [82 x i8] }>, <{ [82 x i8] }>* @alloc136, i32 0, i32 0, i32 0), [16 x i8] c"R\00\00\00\00\00\00\00\8F\00\00\00\09\00\00\00" }>, align 8
@alloc137 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [82 x i8] }>, <{ [82 x i8] }>* @alloc136, i32 0, i32 0, i32 0), [16 x i8] c"R\00\00\00\00\00\00\00\8F\00\00\00\12\00\00\00" }>, align 8
@alloc140 = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub.rs" }>, align 1
@alloc139 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc140, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00D\00\00\00\11\00\00\00" }>, align 8
@str.0 = internal constant [31 x i8] c"attempt to negate with overflow"
@alloc141 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc140, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00m\00\00\00\19\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a5c2b49119e60aeE"(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h1e1cb6f13147febfE"(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* align 8 %self)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN104_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hde0602b9e9d64e30E"() unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = getelementptr i8, i8* %0, i64 1
  %2 = bitcast i8* %1 to {}*
  store i8 1, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: uwtable
define void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hf24b8f77abc6c5faE"(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* sret(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>") %0, i8* %1, i8* %2, i8* %3, i8* %4) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %5 = alloca { i8*, i32 }, align 8
  %b = alloca { i8*, i8* }, align 8
  %a = alloca { i8*, i8* }, align 8
  %6 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %a, i32 0, i32 0
  store i8* %1, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %a, i32 0, i32 1
  store i8* %2, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %b, i32 0, i32 0
  store i8* %3, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %b, i32 0, i32 1
  store i8* %4, i8** %9, align 8
  %a_len = invoke i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17ha03d0799e9fbc9d8E({ i8*, i8* }* align 8 %a)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb2, %bb1, %start
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %5, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %5, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %_7 = invoke i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17ha03d0799e9fbc9d8E({ i8*, i8* }* align 8 %b)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %len = invoke i64 @_ZN4core3cmp3min17hed090e4d545643d1E(i64 %a_len, i64 %_7)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %15 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %a, i32 0, i32 0
  %_9.0 = load i8*, i8** %15, align 8, !nonnull !2, !noundef !2
  %16 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %a, i32 0, i32 1
  %_9.1 = load i8*, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %b, i32 0, i32 0
  %_10.0 = load i8*, i8** %17, align 8, !nonnull !2, !noundef !2
  %18 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %b, i32 0, i32 1
  %_10.1 = load i8*, i8** %18, align 8
  %19 = bitcast %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %0 to { i8*, i8* }*
  %20 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 0
  store i8* %_9.0, i8** %20, align 8
  %21 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 1
  store i8* %_9.1, i8** %21, align 8
  %22 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %0, i32 0, i32 1
  %23 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %22, i32 0, i32 0
  store i8* %_10.0, i8** %23, align 8
  %24 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %22, i32 0, i32 1
  store i8* %_10.1, i8** %24, align 8
  %25 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %0, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %0, i32 0, i32 3
  store i64 %len, i64* %26, align 8
  %27 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %0, i32 0, i32 4
  store i64 %a_len, i64* %27, align 8
  ret void

bb5:                                              ; preds = %bb4
  br label %bb6

bb6:                                              ; preds = %bb5
  %28 = bitcast { i8*, i32 }* %5 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = insertvalue { i8*, i32 } undef, i8* %29, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h1e1cb6f13147febfE"(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_6 = alloca { i8*, i8* }, align 8
  %1 = alloca { i8*, i8* }, align 8
  %2 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 2
  %_3 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 3
  %_4 = load i64, i64* %3, align 8
  %_2 = icmp ult i64 %_3, %_4
  br i1 %_2, label %bb1, label %bb4

bb4:                                              ; preds = %start
  br i1 false, label %bb6, label %bb5

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 2
  %i = load i64, i64* %4, align 8
  %5 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 2
  %6 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, i64* %5, align 8
  %_8 = bitcast %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self to { i8*, i8* }*
  %_7 = call align 1 %Zahl* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17h89ad6f89bd71ca87E"({ i8*, i8* }* align 8 %_8, i64 %i)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_11 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 1
  %_10 = invoke align 1 %Zahl* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17h89ad6f89bd71ca87E"({ i8*, i8* }* align 8 %_11, i64 %i)
          to label %bb3 unwind label %cleanup

bb14:                                             ; preds = %cleanup
  br label %bb15

cleanup:                                          ; preds = %bb2
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb14

bb3:                                              ; preds = %bb2
  %14 = bitcast { i8*, i8* }* %_6 to %Zahl**
  store %Zahl* %_7, %Zahl** %14, align 8
  %15 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_6, i32 0, i32 1
  %16 = bitcast i8** %15 to %Zahl**
  store %Zahl* %_10, %Zahl** %16, align 8
  %17 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_6, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !nonnull !2, !align !3, !noundef !2
  %19 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_6, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8, !nonnull !2, !align !3, !noundef !2
  %21 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  br label %bb13

bb15:                                             ; preds = %bb14
  %23 = bitcast { i8*, i32 }* %0 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = insertvalue { i8*, i32 } undef, i8* %24, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

bb13:                                             ; preds = %bb12, %bb3
  %29 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8, !align !3
  %31 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = insertvalue { i8*, i8* } undef, i8* %30, 0
  %34 = insertvalue { i8*, i8* } %33, i8* %32, 1
  ret { i8*, i8* } %34

bb5:                                              ; preds = %bb4
  store i8 0, i8* %_13, align 1
  br label %bb7

bb6:                                              ; preds = %bb4
  %35 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 2
  %_15 = load i64, i64* %35, align 8
  %36 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 4
  %_16 = load i64, i64* %36, align 8
  %_14 = icmp ult i64 %_15, %_16
  %37 = zext i1 %_14 to i8
  store i8 %37, i8* %_13, align 1
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %38 = load i8, i8* %_13, align 1, !range !1, !noundef !2
  %39 = trunc i8 %38 to i1
  br i1 %39, label %bb8, label %bb11

bb11:                                             ; preds = %bb7
  %40 = bitcast { i8*, i8* }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %40, i8 0, i64 16, i1 false)
  %41 = bitcast { i8*, i8* }* %1 to {}**
  store {}* null, {}** %41, align 8
  br label %bb12

bb8:                                              ; preds = %bb7
  %42 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 2
  %i1 = load i64, i64* %42, align 8
  %43 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 2
  %44 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %43, align 8
  %47 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 3
  %48 = getelementptr inbounds %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %47, align 8
  %_19 = bitcast %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* %self to { i8*, i8* }*
  %_18 = call align 1 %Zahl* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17h89ad6f89bd71ca87E"({ i8*, i8* }* align 8 %_19, i64 %i1)
  br label %bb9

bb9:                                              ; preds = %bb8
  br label %bb10

bb10:                                             ; preds = %bb9
  %51 = bitcast { i8*, i8* }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 16, i1 false)
  %52 = bitcast { i8*, i8* }* %1 to {}**
  store {}* null, {}** %52, align 8
  br label %bb12

bb12:                                             ; preds = %bb10, %bb11
  br label %bb13
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h19663b6e96c8797eE"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h0f127b80eca6b735E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53fd7cbddaadb788E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17ha97b63b5a0c47b89E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hcc527a49181398b8E"(i64* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %pointer, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h1f605a9e104d59f3E"(i64 %kind.0, i64 %kind.1) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %kind.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %kind.1, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !4, !noundef !2
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h2ececb3b9c60fe80E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h3888bcbb9fbead25E"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i8*, i64 }* %1 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"*
  %3 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"* %2 to %"core::alloc::AllocError"*
  %4 = bitcast { i8*, i64 }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = bitcast { i8*, i64 }* %1 to {}**
  store {}* null, {}** %5, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { i8*, i64 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i64 } %10, i64 %9, 1
  ret { i8*, i64 } %11
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8b1c28275a01deb3E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h29843d8b2f964c10E"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i64, i64 }* %1 to %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"*
  %3 = bitcast %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"* %2 to %"core::alloc::layout::LayoutError"*
  %4 = bitcast { i64, i64 }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %9 = load i64, i64* %8, align 8, !range !4, !noundef !2
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17h656eeb88a9ba1742E(i64* %src, i64* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u64>::{closure#0}]", align 8
  %0 = mul i64 %count, 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3Ord3min17h9dcb029f2aab0b24E(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_3 = alloca i8, align 1
  %3 = alloca i64, align 8
  %other = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  store i64 %1, i64* %other, align 8
  store i8 1, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h454f39cc54579b18E"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !5

bb8:                                              ; preds = %cleanup
  br label %bb13

cleanup:                                          ; preds = %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb8

bb1:                                              ; preds = %start
  store i8 %4, i8* %_3, align 1
  %_7 = load i8, i8* %_3, align 1, !range !5, !noundef !2
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !1, !noundef !2
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, i8* %_9, align 1
  %12 = load i64, i64* %self, align 8
  store i64 %12, i64* %3, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_8, align 1
  %13 = load i64, i64* %other, align 8
  store i64 %13, i64* %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %14 = load i8, i8* %_8, align 1, !range !1, !noundef !2
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !1, !noundef !2
  %17 = trunc i8 %16 to i1
  br i1 %17, label %bb11, label %bb7

bb10:                                             ; preds = %bb5
  br label %bb6

bb9:                                              ; preds = %bb12, %bb13
  %18 = bitcast { i8*, i32 }* %2 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb12:                                             ; preds = %bb13
  br label %bb9

bb7:                                              ; preds = %bb11, %bb6
  %24 = load i64, i64* %3, align 8
  ret i64 %24

bb11:                                             ; preds = %bb6
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3min17hed090e4d545643d1E(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3cmp3Ord3min17h9dcb029f2aab0b24E(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h454f39cc54579b18E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_4 = load i64, i64* %self, align 8
  %_5 = load i64, i64* %other, align 8
  %_3 = icmp ult i64 %_4, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = load i64, i64* %self, align 8
  %_8 = load i64, i64* %other, align 8
  %_6 = icmp eq i64 %_7, %_8
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 -1, i8* %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %1 = load i8, i8* %0, align 1, !range !5, !noundef !2
  ret i8 %1

bb4:                                              ; preds = %bb2
  store i8 1, i8* %0, align 1
  br label %bb5

bb3:                                              ; preds = %bb2
  store i8 0, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  br label %bb6
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls59_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$$RP$$GT$2eq17h0cfc42f979267dceE"({}* align 1 %self, {}* align 1 %_other) unnamed_addr #0 {
start:
  ret i1 true
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h58ab027e81cdac5eE"(%Zahl** align 8 %self, %Zahl** align 8 %other) unnamed_addr #0 {
start:
  %_5 = load %Zahl*, %Zahl** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %_6 = load %Zahl*, %Zahl** %other, align 8, !nonnull !2, !align !3, !noundef !2
  %0 = call zeroext i1 @eq(%Zahl* align 1 %_5, %Zahl* align 1 %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls77_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$mut$u20$A$GT$2ne17h966a7dc8c9dfad9bE"([1 x %Zahl]** align 8 %self, [1 x %Zahl]** align 8 %other) unnamed_addr #0 {
start:
  %_5 = load [1 x %Zahl]*, [1 x %Zahl]** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %_6 = load [1 x %Zahl]*, [1 x %Zahl]** %other, align 8, !nonnull !2, !align !3, !noundef !2
  %0 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2ne17hb643d751b47e4e6aE"([1 x %Zahl]* align 1 %_5, [1 x %Zahl]* align 1 %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem11size_of_val17h6a090139a8451484E([0 x i64]* align 8 %val.0, i64 %val.1) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = mul nsw i64 %val.1, 8
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h85241e8d1de15528E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !6, !noundef !2
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h5a02c79132ba0c49E(i64 %_3), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h92a447f5d358b8a2E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !6, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hef2738a19b92aed9E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %0 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i8 }, align 8
  %2 = alloca i8, align 1
  %3 = alloca { i64, i64 }, align 8
  %4 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self, i64 %rhs)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = zext i1 %6 to i8
  %8 = bitcast { i64, i8 }* %0 to i64*
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %7, i8* %9, align 8
  %10 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  %_5.0.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 8, !range !1, !noundef !2
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !1, !noundef !2
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i8
  %22 = insertvalue { i64, i8 } undef, i64 %17, 0
  %23 = insertvalue { i64, i8 } %22, i8 %21, 1
  %_5.0 = extractvalue { i64, i8 } %23, 0
  %24 = extractvalue { i64, i8 } %23, 1
  %_5.1 = trunc i8 %24 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %25 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %2, align 1
  %27 = load i8, i8* %2, align 1, !range !1, !noundef !2
  %_8 = trunc i8 %27 to i1
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_5.0, i64* %28, align 8
  %29 = bitcast { i64, i64 }* %3 to i64*
  store i64 1, i64* %29, align 8
  br label %bb5

bb3:                                              ; preds = %bb2
  %30 = bitcast { i64, i64 }* %3 to i64*
  store i64 0, i64* %30, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8, !range !8, !noundef !2
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h5a02c79132ba0c49E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !7, !noundef !2
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h32e49639eeb4305cE(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h065681f58966d54fE(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h75c5594f489daf53E"(i64* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17haac7b45efb040963E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i64]*, i64 } %0, 0
  %2 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %1, 0
  %4 = insertvalue { [0 x i64]*, i64 } %3, i64 %2, 1
  ret { [0 x i64]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h5cd57e2ddd783ed1E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h43c86ed8e9fedb6aE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h9e03b3460ac71d39E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i64* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h72c8f8449663036aE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr31drop_in_place$LT$zsub..Zahl$GT$17hf5957a235e7e70aeE"(%Zahl* %_1) unnamed_addr #1 {
start:
  %_3 = alloca %"alloc::vec::Vec<u64>", align 8
  %_2 = alloca %"alloc::vec::Vec<u64>", align 8
  %0 = getelementptr inbounds %Zahl, %Zahl* %_1, i32 0, i32 3
  %1 = bitcast %"alloc::vec::Vec<u64>"* %_3 to i8*
  %2 = bitcast %"alloc::vec::Vec<u64>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 1 %2, i64 24, i1 false)
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h6acb1808a2b390f8E"(%"alloc::vec::Vec<u64>"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h6acb1808a2b390f8E"(%"alloc::vec::Vec<u64>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb882037ac0a902feE"(%"alloc::vec::Vec<u64>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u64>"* %_1 to { i64*, i64 }*
  invoke void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h3f97c9ab29add743E"({ i64*, i64 }* %1) #13
          to label %bb1 unwind label %abort

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb3

bb4:                                              ; preds = %start
  %7 = bitcast %"alloc::vec::Vec<u64>"* %_1 to { i64*, i64 }*
  call void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h3f97c9ab29add743E"({ i64*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb1:                                              ; preds = %bb3
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %bb4
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h3f97c9ab29add743E"({ i64*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h15dde4b27ceb66d2E"({ i64*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17ha19ccd83866767f7E"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %_2 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1d43d88f948da36aE"(i64* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i64* %_2, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hd8db532cf0558175E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h7554acdb0f4cb458E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17ha97b63b5a0c47b89E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h0f127b80eca6b735E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4eb31e01e90658a2E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2f84b2a5cc5cf25aE"(i64* %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h22fb1a09d0866af5E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h925d2f5185920f01E"() unnamed_addr #0 {
start:
  %_1 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17ha78d94061d6080d5E"()
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i64* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hcc527a49181398b8E"(i64* %_1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17he2a9c1e504ab5741E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hc2032444aa0636e9E"(%Zahl* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to %Zahl**
  store %Zahl* %self, %Zahl** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4a0addf553983f4aE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h920fdc4ac2206dc7E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17he2a9c1e504ab5741E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4fabc537e41e6f60E"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h920fdc4ac2206dc7E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17he2a9c1e504ab5741E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17haac7b45efb040963E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata14from_raw_parts17hadc9fa89b5df1f73E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h43c86ed8e9fedb6aE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h72c8f8449663036aE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h920fdc4ac2206dc7E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1d43d88f948da36aE"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %ptr, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h500a0a64eb265dd3E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %ptr.1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !2, !noundef !2
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i8*, i64 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64 } %8, i64 %7, 1
  ret { i8*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53fd7cbddaadb788E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h603e30f263c9e597E"(%Zahl* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to %Zahl**
  store %Zahl* %ptr, %Zahl** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h64323efe932f3fa7E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4a0addf553983f4aE"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = xor i1 %_3, true
  br i1 %_2, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %1 = bitcast i8** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i8** %0 to {}**
  store {}* null, {}** %2, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53fd7cbddaadb788E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h2644ba234192e5a4E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h32557233c2bb96afE"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i64*
  %1 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1d43d88f948da36aE"(i64* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h7554acdb0f4cb458E"(i64* %self) unnamed_addr #0 {
start:
  %_3 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h22fb1a09d0866af5E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast i64* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53fd7cbddaadb788E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h22fb1a09d0866af5E"(i64* %self) unnamed_addr #0 {
start:
  ret i64* %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h32557233c2bb96afE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h40fdb8436b6a919cE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to %Zahl*
  ret %Zahl* %_2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4eb31e01e90658a2E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17ha78d94061d6080d5E"() unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i64** %0 to i64*
  store i64 8, i64* %1, align 8
  %2 = load i64*, i64** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1d43d88f948da36aE"(i64* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %3
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hc53fd5a9d4379ba6E"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4eb31e01e90658a2E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h5cd57e2ddd783ed1E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h500a0a64eb265dd3E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h040c0be53195ca1bE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17h520e1079014e715cE"(i64* %self, i64* %dest, i64 %count) unnamed_addr #0 {
start:
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h656eeb88a9ba1742E(i64* %self, i64* %dest, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd5f42cfea5912a0cE"(%Zahl* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to %Zahl**
  store %Zahl* %self, %Zahl** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h75c5594f489daf53E"(i64* %self) unnamed_addr #0 {
start:
  %0 = bitcast i64* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h66632bd714a6944dE"(%Zahl* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast %Zahl* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hadc9fa89b5df1f73E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h040c0be53195ca1bE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17hd255022aa1219b30E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @_ZN4core4iter6traits8iterator8Iterator3all17hb978a40c17549251E(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* align 8 %self) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  call void @_ZN4core4iter6traits8iterator8Iterator3all5check17h343d9acf97a3818cE()
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call zeroext i1 @_ZN4core4iter6traits8iterator8Iterator8try_fold17h92c26e0c2c0ae9f4E(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* align 8 %self)
  %1 = zext i1 %0 to i8
  store i8 %1, i8* %_4, align 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call zeroext i1 @"_ZN90_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc03f1b5000790035E"(i8* align 1 %_4, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc36, i32 0, i32 0, i32 0))
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator3all5check17h343d9acf97a3818cE() unnamed_addr #0 {
start:
  %0 = alloca %"[closure@core::iter::traits::iterator::Iterator::all::check<(&Zahl, &Zahl), [closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]>::{closure#0}]", align 1
  %1 = bitcast %"[closure@core::iter::traits::iterator::Iterator::all::check<(&Zahl, &Zahl), [closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]>::{closure#0}]"* %0 to %"[closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]"*
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h8c300192acf5fc9bE"(%"[closure@core::iter::traits::iterator::Iterator::all::check<(&Zahl, &Zahl), [closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]>::{closure#0}]"* align 1 %_1, i8* align 1 %x.0, i8* align 1 %x.1) unnamed_addr #0 {
start:
  %_6 = alloca { i8*, i8* }, align 8
  %0 = alloca i8, align 1
  %_5 = bitcast %"[closure@core::iter::traits::iterator::Iterator::all::check<(&Zahl, &Zahl), [closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]>::{closure#0}]"* %_1 to %"[closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]"*
  %1 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_6, i32 0, i32 0
  store i8* %x.0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_6, i32 0, i32 1
  store i8* %x.1, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_6, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !nonnull !2, !align !3, !noundef !2
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_6, i32 0, i32 1
  %6 = load i8*, i8** %5, align 8, !nonnull !2, !align !3, !noundef !2
  %_4 = call zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal28_$u7b$$u7b$closure$u7d$$u7d$17h76f78b588ad01289E"(%"[closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]"* align 1 %_5, i8* align 1 %4, i8* align 1 %6)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  store i8 1, i8* %0, align 1
  br label %bb4

bb2:                                              ; preds = %bb1
  store i8 0, i8* %0, align 1
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %7 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %8 = trunc i8 %7 to i1
  ret i1 %8
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator3zip17h8f1d6b4589dba441E(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* sret(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>") %0, i8* %self.0, i8* %self.1, i8* %other.0, i8* %other.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_6 = alloca i8, align 1
  store i8 1, i8* %_6, align 1
  %2 = invoke { i8*, i8* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc0b6f04345160d8eE"(i8* %other.0, i8* %other.1)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_6, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_4.0 = extractvalue { i8*, i8* } %2, 0
  %_4.1 = extractvalue { i8*, i8* } %2, 1
  store i8 0, i8* %_6, align 1
  invoke void @"_ZN4core4iter8adapters3zip16Zip$LT$A$C$B$GT$3new17he218b4b8e5aee66dE"(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* sret(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>") %0, i8* %self.0, i8* %self.1, i8* %_4.0, i8* %_4.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb4, %bb5
  %10 = bitcast { i8*, i32 }* %1 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @_ZN4core4iter6traits8iterator8Iterator8try_fold17h92c26e0c2c0ae9f4E(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_21 = alloca i8, align 1
  %_13 = alloca { i8*, i8* }, align 8
  %_10 = alloca i8, align 1
  %_5 = alloca { i8*, i8* }, align 8
  %1 = alloca i8, align 1
  %f = alloca %"[closure@core::iter::traits::iterator::Iterator::all::check<(&Zahl, &Zahl), [closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]>::{closure#0}]", align 1
  store i8 1, i8* %_21, align 1
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %2 = invoke { i8*, i8* } @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a5c2b49119e60aeE"(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* align 8 %self)
          to label %bb2 unwind label %cleanup

bb17:                                             ; preds = %cleanup
  %3 = load i8, i8* %_21, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb16, label %bb14

cleanup:                                          ; preds = %bb8, %bb4, %bb11, %bb3, %bb1
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb17

bb2:                                              ; preds = %bb1
  store { i8*, i8* } %2, { i8*, i8* }* %_5, align 8
  %10 = bitcast { i8*, i8* }* %_5 to {}**
  %11 = load {}*, {}** %10, align 8
  %12 = icmp eq {}* %11, null
  %_7 = select i1 %12, i64 0, i64 1
  %13 = icmp eq i64 %_7, 1
  br i1 %13, label %bb3, label %bb10

bb3:                                              ; preds = %bb2
  %14 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_5, i32 0, i32 0
  %x.0 = load i8*, i8** %14, align 8, !nonnull !2, !align !3, !noundef !2
  %15 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_5, i32 0, i32 1
  %x.1 = load i8*, i8** %15, align 8, !nonnull !2, !align !3, !noundef !2
  store i8 0, i8* %_21, align 1
  %16 = bitcast { i8*, i8* }* %_13 to {}*
  %17 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_13, i32 0, i32 0
  store i8* %x.0, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_13, i32 0, i32 1
  store i8* %x.1, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_13, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !nonnull !2, !align !3, !noundef !2
  %21 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_13, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8, !nonnull !2, !align !3, !noundef !2
  %_11 = invoke zeroext i1 @"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h8c300192acf5fc9bE"(%"[closure@core::iter::traits::iterator::Iterator::all::check<(&Zahl, &Zahl), [closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]>::{closure#0}]"* align 1 %f, i8* align 1 %20, i8* align 1 %22)
          to label %bb4 unwind label %cleanup

bb10:                                             ; preds = %bb2
  br label %bb11

bb11:                                             ; preds = %bb10
  store i8 0, i8* %_21, align 1
  %23 = invoke zeroext i1 @"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h9161d4f27a85dfcaE"()
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %1, align 1
  br label %bb13

bb13:                                             ; preds = %bb9, %bb12
  %25 = load i8, i8* %1, align 1, !range !1, !noundef !2
  %26 = trunc i8 %25 to i1
  ret i1 %26

bb4:                                              ; preds = %bb3
  %27 = invoke zeroext i1 @"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h07cdf09058aabd0fE"(i1 zeroext %_11)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %_10, align 1
  %29 = load i8, i8* %_10, align 1, !range !1, !noundef !2
  %30 = trunc i8 %29 to i1
  %_16 = zext i1 %30 to i64
  switch i64 %_16, label %bb7 [
    i64 0, label %bb6
    i64 1, label %bb8
  ]

bb7:                                              ; preds = %bb5
  unreachable

bb6:                                              ; preds = %bb5
  store i8 1, i8* %_21, align 1
  br label %bb1

bb8:                                              ; preds = %bb5
  %31 = invoke zeroext i1 @"_ZN104_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hde0602b9e9d64e30E"()
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %1, align 1
  br label %bb13

bb14:                                             ; preds = %bb16, %bb17
  br label %bb15

bb16:                                             ; preds = %bb17
  br label %bb14

bb15:                                             ; preds = %bb14
  %33 = bitcast { i8*, i32 }* %0 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = insertvalue { i8*, i32 } undef, i8* %34, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters3zip16Zip$LT$A$C$B$GT$3new17he218b4b8e5aee66dE"(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* sret(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>") %0, i8* %a.0, i8* %a.1, i8* %b.0, i8* %b.1) unnamed_addr #1 {
start:
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hf24b8f77abc6c5faE"(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* sret(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>") %0, i8* %a.0, i8* %a.1, i8* %b.0, i8* %b.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17ha03d0799e9fbc9d8E({ i8*, i8* }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca { i64, { i64, i64 } }, align 8
  call void @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h01c6fdfb7c95a9c3E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_2, { i8*, i8* }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast { i64, { i64, i64 } }* %_2 to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17he3e86379bb0c83b6E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h92a447f5d358b8a2E(i64 %align), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !6, !noundef !2
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17ha8704eecf98033aeE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h2bf97bd5af81ca90E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !6, !noundef !2
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h85241e8d1de15528E(i64 %_3), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h32e49639eeb4305cE(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17hf7f302562722d8b0E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hef2738a19b92aed9E"(i64 8, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h94536b9b3a4f79a2E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3559b6c11d0d433bE"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !8, !noundef !2
  switch i64 %_9, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb7
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %val = load i64, i64* %5, align 8
  br label %bb9

bb7:                                              ; preds = %bb4
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8b1c28275a01deb3E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc127 to %"core::panic::location::Location"*))
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !range !4, !noundef !2
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb9:                                              ; preds = %bb5
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17he3e86379bb0c83b6E(i64 %val, i64 8)
  %_13.0 = extractvalue { i64, i64 } %13, 0
  %_13.1 = extractvalue { i64, i64 } %13, 1
  br label %bb10

bb10:                                             ; preds = %bb9
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_13.0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_13.1, i64* %15, align 8
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17h8abaa9acd260af87E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h2bf97bd5af81ca90E({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53fd7cbddaadb788E"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define { [0 x %Zahl]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h1eb22f0a9e61416bE"([1 x %Zahl]* align 1 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4.0 = bitcast [1 x %Zahl]* %self to [0 x %Zahl]*
  %1 = call { [0 x %Zahl]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h329826fccd3cf8f8E"([0 x %Zahl]* align 1 %_4.0, i64 1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x %Zahl]*, i64 } %1, 0
  %3 = extractvalue { [0 x %Zahl]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x %Zahl]*, i64 } undef, [0 x %Zahl]* %2, 0
  %5 = insertvalue { [0 x %Zahl]*, i64 } %4, i64 %3, 1
  ret { [0 x %Zahl]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2ne17hb643d751b47e4e6aE"([1 x %Zahl]* align 1 %self, [1 x %Zahl]* align 1 %other) unnamed_addr #0 {
start:
  %0 = call zeroext i1 @"_ZN73_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$Other$C$_$GT$$GT$7spec_ne17h11fb1d86037da202E"([1 x %Zahl]* align 1 %self, [1 x %Zahl]* align 1 %other)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h9d78f4caf985a01cE"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[u64]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_2 to { [0 x i64]*, i64 }*
  %1 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %0, i32 0, i32 0
  store [0 x i64]* %self.0, [0 x i64]** %1, align 8
  %2 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17ha3b68f9fe6763ac0E"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hb2977606cea32eecE"([0 x %Zahl]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h8a8f62f7081290abE"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x %Zahl]* %self.0 to %Zahl*
  ret %Zahl* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hdb7662dd17f97ad9E"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i64]* %self.0 to i64*
  ret i64* %0
}

; Function Attrs: uwtable
define zeroext i1 @_ZN4core5slice3cmp14SlicePartialEq9not_equal17hb2ae2b159ff789a4E([0 x %Zahl]* align 1 %self.0, i64 %self.1, [0 x %Zahl]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %_3 = call zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h0858e974c5b48204E"([0 x %Zahl]* align 1 %self.0, i64 %self.1, [0 x %Zahl]* align 1 %other.0, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_3, true
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17hbab8d8a155490143E"([0 x i64]* align 8 %self.0, i64 %self.1, [0 x i64]* align 8 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = call zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h77d8e7ea8fca8643E"([0 x i64]* align 8 %self.0, i64 %self.1, [0 x i64]* align 8 %other.0, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2ne17h50fb16511d48cb21E"([0 x %Zahl]* align 1 %self.0, i64 %self.1, [0 x %Zahl]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = call zeroext i1 @_ZN4core5slice3cmp14SlicePartialEq9not_equal17hb2ae2b159ff789a4E([0 x %Zahl]* align 1 %self.0, i64 %self.1, [0 x %Zahl]* align 1 %other.0, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h292c1b26ac218212E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h065681f58966d54fE(i64* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hb2977606cea32eecE"([0 x %Zahl]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca %Zahl*, align 8
  %1 = alloca i8*, align 8
  %end = alloca %Zahl*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h8a8f62f7081290abE"([0 x %Zahl]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h66632bd714a6944dE"(%Zahl* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 44, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %_11 = bitcast %Zahl* %ptr to i8*
  %4 = getelementptr i8, i8* %_11, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds %Zahl, %Zahl* %ptr, i64 %slice.1
  store %Zahl* %6, %Zahl** %0, align 8
  %7 = load %Zahl*, %Zahl** %0, align 8
  store %Zahl* %7, %Zahl** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h603e30f263c9e597E"(%Zahl* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  %8 = bitcast i8* %5 to %Zahl*
  store %Zahl* %8, %Zahl** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load %Zahl*, %Zahl** %end, align 8
  %9 = bitcast { i8*, i8* }* %2 to i8**
  store i8* %_18, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %11 = bitcast i8** %10 to %Zahl**
  store %Zahl* %_21, %Zahl** %11, align 8
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !nonnull !2, !noundef !2
  %14 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = insertvalue { i8*, i8* } undef, i8* %13, 0
  %17 = insertvalue { i8*, i8* } %16, i8* %15, 1
  ret { i8*, i8* } %17
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1d32517da76fa9c9E"([0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i64]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h28a59c392c503909E"([0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x %Zahl]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h329826fccd3cf8f8E"([0 x %Zahl]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x %Zahl]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17he8869fe56adea2ceE"([0 x %Zahl]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x %Zahl]*, i64 } %1, 0
  %3 = extractvalue { [0 x %Zahl]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x %Zahl]*, i64 } undef, [0 x %Zahl]* %2, 0
  %5 = insertvalue { [0 x %Zahl]*, i64 } %4, i64 %3, 1
  ret { [0 x %Zahl]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h94536b9b3a4f79a2E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %5, align 8, !range !8, !noundef !2
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %7 = bitcast i64* %6 to %"core::alloc::layout::LayoutError"*
  %8 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %v = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %v, i64* %10, align 8
  %11 = bitcast { i64, i64 }* %2 to i64*
  store i64 0, i64* %11, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %12 = load i8, i8* %_7, align 1, !range !1, !noundef !2
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !range !8, !noundef !2
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hfdd43dae55a2dc07E"(i8* %0) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  store i8 1, i8* %_7, align 1
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = bitcast i8** %1 to %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"*
  %6 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"* %5 to %"core::alloc::AllocError"*
  %7 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = bitcast i8** %1 to {}**
  store {}* null, {}** %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !2, !noundef !2
  store i8* %v, i8** %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %9 = load i8, i8* %_7, align 1, !range !1, !noundef !2
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hdfaa923e57d796d9E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !4, !noundef !2
  %8 = icmp eq i64 %7, 0
  %_2 = select i1 %8, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %t.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %10, align 8, !range !6, !noundef !2
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !4, !noundef !2
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17hd255022aa1219b30E() #15
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %16 = load i64, i64* %15, align 8, !range !4, !noundef !2
  %17 = icmp eq i64 %16, 0
  %_7 = select i1 %17, i64 1, i64 0
  %18 = icmp eq i64 %_7, 0
  br i1 %18, label %bb7, label %bb9

cleanup:                                          ; preds = %bb1
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %bb10

unreachable:                                      ; preds = %bb1
  unreachable

bb7:                                              ; preds = %bb10
  br i1 true, label %bb8, label %bb4

bb9:                                              ; preds = %bb10
  br label %bb4

bb4:                                              ; preds = %bb8, %bb9, %bb7
  %24 = bitcast { i8*, i32 }* %3 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

bb8:                                              ; preds = %bb7
  br label %bb4

bb5:                                              ; preds = %bb6, %bb3
  %30 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %31 = insertvalue { i64, i64 } %30, i64 %t.1, 1
  ret { i64, i64 } %31

bb6:                                              ; preds = %bb3
  br label %bb5
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h29843d8b2f964c10E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h3888bcbb9fbead25E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he0089d30eeffe946E"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h1f605a9e104d59f3E"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf3b0700be5531fa1E"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h19663b6e96c8797eE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h61a20183c5ce8fafE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %v, [0 x i64]* align 8 %s.0, i64 %s.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  store i8 1, i8* %_17, align 1
  %_3 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h9d78f4caf985a01cE"([0 x i64]* align 8 %s.0, i64 %s.1)
          to label %bb1 unwind label %cleanup

bb12:                                             ; preds = %bb9, %cleanup
  %1 = load i8, i8* %_17, align 1, !range !1, !noundef !2
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb11, label %bb10

cleanup:                                          ; preds = %bb1, %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb12

bb1:                                              ; preds = %start
  store i8 0, i8* %_17, align 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hb353a34ec39e0a54E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %v, i64 %_3)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_7 = invoke i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hdb7662dd17f97ad9E"([0 x i64]* align 8 %s.0, i64 %s.1)
          to label %bb3 unwind label %cleanup1

bb9:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h6acb1808a2b390f8E"(%"alloc::vec::Vec<u64>"* %v) #13
          to label %bb12 unwind label %abort

cleanup1:                                         ; preds = %bb7, %bb6, %bb5, %bb4, %bb3, %bb2
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb9

bb3:                                              ; preds = %bb2
  %_9 = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hde71f6eb58f1c842E"(%"alloc::vec::Vec<u64>"* align 8 %v)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
  %_11 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h9d78f4caf985a01cE"([0 x i64]* align 8 %s.0, i64 %s.1)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  invoke void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17h520e1079014e715cE"(i64* %_7, i64* %_9, i64 %_11)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  %_15 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h9d78f4caf985a01cE"([0 x i64]* align 8 %s.0, i64 %s.1)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h4f8037ddb3bd2453E"(%"alloc::vec::Vec<u64>"* align 8 %v, i64 %_15)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  ret void

abort:                                            ; preds = %bb9
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb10:                                             ; preds = %bb11, %bb12
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

bb11:                                             ; preds = %bb12
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..clone..Clone$GT$5clone17ha3ef19e4afee1402E"(%"alloc::alloc::Global"* align 1 %self) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd627f6a4b2b1161bE"(%"alloc::vec::Vec<u64>"* align 8 %self, %"alloc::vec::Vec<u64>"* align 8 %other) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc191acc781fc3de0E"(%"alloc::vec::Vec<u64>"* align 8 %self, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc129 to %"core::panic::location::Location"*))
  %_4.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i64]*, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc191acc781fc3de0E"(%"alloc::vec::Vec<u64>"* align 8 %other, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc129 to %"core::panic::location::Location"*))
  %_8.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_8.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17hbab8d8a155490143E"([0 x i64]* align 8 %_4.0, i64 %_4.1, [0 x i64]* align 8 %_8.0, i64 %_8.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hde71f6eb58f1c842E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h7f03f211b20a2afdE"({ i64*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4fabc537e41e6f60E"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hb353a34ec39e0a54E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64 %capacity) unnamed_addr #0 {
start:
  %1 = call { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h87ac91cae727765bE"(i64 %capacity)
  %_3.0 = extractvalue { i64*, i64 } %1, 0
  %_3.1 = extractvalue { i64*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"alloc::vec::Vec<u64>"* %0 to { i64*, i64 }*
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 0
  store i64* %_3.0, i64** %3, align 8
  %4 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 1
  store i64 %_3.1, i64* %4, align 8
  %5 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %0, i32 0, i32 1
  store i64 0, i64* %5, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h5df1f9d23546c49bE"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h7f03f211b20a2afdE"({ i64*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4fabc537e41e6f60E"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h4f8037ddb3bd2453E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %new_len) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  store i64 %new_len, i64* %0, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define align 1 %"alloc::alloc::Global"* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17hd56f54f793cc7442E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %0 = call align 1 %"alloc::alloc::Global"* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17h00fa3ca5d2fef03bE"({ i64*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::alloc::Global"* %0
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h165042d6814bedbeE(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17ha8704eecf98033aeE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h2bf97bd5af81ca90E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h172807a8f614cf28E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17ha8704eecf98033aeE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h2bf97bd5af81ca90E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h6ab0882ce74b8aa1E(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17ha8704eecf98033aeE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17h8abaa9acd260af87E({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !6, !noundef !2
  %8 = call i8* @_ZN5alloc5alloc5alloc17h172807a8f614cf28E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !6, !noundef !2
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h165042d6814bedbeE(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h64323efe932f3fa7E"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hfdd43dae55a2dc07E"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc7f7fd4bf3e61129E"(i8* %_16)
  store i8* %12, i8** %_15, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  %13 = bitcast i8** %_15 to {}**
  %14 = load {}*, {}** %13, align 8
  %15 = icmp eq {}* %14, null
  %_20 = select i1 %15, i64 1, i64 0
  switch i64 %_20, label %bb15 [
    i64 0, label %bb14
    i64 1, label %bb16
  ]

bb15:                                             ; preds = %bb13
  unreachable

bb14:                                             ; preds = %bb13
  %val = load i8*, i8** %_15, align 8, !nonnull !2, !noundef !2
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hc53fd5a9d4379ba6E"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h2ececb3b9c60fe80E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc131 to %"core::panic::location::Location"*))
  store { i8*, i64 } %17, { i8*, i64 }* %2, align 8
  br label %bb17

bb17:                                             ; preds = %bb16
  br label %bb20

bb20:                                             ; preds = %bb19, %bb17
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = insertvalue { i8*, i64 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i64 } %22, i64 %21, 1
  ret { i8*, i64 } %23

bb18:                                             ; preds = %bb14
  %24 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_24.0, i8** %24, align 8
  %25 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_24.1, i64* %25, align 8
  br label %bb19

bb19:                                             ; preds = %bb5, %bb18
  br label %bb20

bb4:                                              ; preds = %bb3
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hc53fd5a9d4379ba6E"(i8* %_7, i64 0)
  %_6.0 = extractvalue { i8*, i64 } %26, 0
  %_6.1 = extractvalue { i8*, i64 } %26, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_6.0, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_6.1, i64* %28, align 8
  br label %bb19
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17hcc23b0408c66fc53E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17ha8704eecf98033aeE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h2bf97bd5af81ca90E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h0ba787b6b2b1a71cE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @_ZN5alloc5slice4hack6to_vec17h85a2c86cd8d37760E(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5slice4hack6to_vec17h85a2c86cd8d37760E(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h61a20183c5ce8fafE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17h065e3f686ac717ddE(i64 %alloc_size) unnamed_addr #0 {
start:
  %_4 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br i1 false, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 -9223372036854775807, i64* %2, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %3 = bitcast { i64, i64 }* %_4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %8 = load i64, i64* %7, align 8, !range !4, !noundef !2
  %9 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he0089d30eeffe946E"(i64 %6, i64 %8)
  %_3.0 = extractvalue { i64, i64 } %9, 0
  %_3.1 = extractvalue { i64, i64 } %9, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_3.0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_3.1, i64* %11, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !range !9, !noundef !2
  %16 = insertvalue { i64, i64 } undef, i64 %13, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h98c096012390e452E"(i64 %capacity, i1 zeroext %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %result = alloca { i8*, i64 }, align 8
  %_15 = alloca { i64, i64 }, align 8
  %_10 = alloca { i64, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %_4 = alloca i8, align 1
  %2 = alloca { i64*, i64 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %init, align 1
  store i8 1, i8* %_37, align 1
  br label %bb4

bb32:                                             ; preds = %cleanup
  %4 = load i8, i8* %_37, align 1, !range !1, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb31, label %bb30

cleanup:                                          ; preds = %bb27, %bb26, %bb23, %bb25, %bb17, %bb19, %bb14, %bb12, %bb9, %bb11, %bb5, %bb7
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb32

bb4:                                              ; preds = %start
  %11 = icmp eq i64 8, 0
  br i1 %11, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_4, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %_6 = icmp eq i64 %capacity, 0
  %12 = zext i1 %_6 to i8
  store i8 %12, i8* %_4, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %13 = load i8, i8* %_4, align 1, !range !1, !noundef !2
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb5, label %bb7

bb7:                                              ; preds = %bb3
  %15 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array17hf7f302562722d8b0E(i64 %capacity)
          to label %bb8 unwind label %cleanup

bb5:                                              ; preds = %bb3
  store i8 0, i8* %_37, align 1
  %16 = invoke { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h7907c256c6ba8126E"()
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store { i64*, i64 } %16, { i64*, i64 }* %2, align 8
  br label %bb29

bb29:                                             ; preds = %bb28, %bb6
  %17 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8, !nonnull !2, !noundef !2
  %19 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { i64*, i64 } undef, i64* %18, 0
  %22 = insertvalue { i64*, i64 } %21, i64 %20, 1
  ret { i64*, i64 } %22

bb8:                                              ; preds = %bb7
  store { i64, i64 } %15, { i64, i64 }* %_10, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1
  %24 = load i64, i64* %23, align 8, !range !4, !noundef !2
  %25 = icmp eq i64 %24, 0
  %_12 = select i1 %25, i64 1, i64 0
  switch i64 %_12, label %bb10 [
    i64 0, label %bb11
    i64 1, label %bb9
  ]

bb10:                                             ; preds = %bb8
  unreachable

bb11:                                             ; preds = %bb8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 0
  %layout.0 = load i64, i64* %26, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1
  %layout.1 = load i64, i64* %27, align 8, !range !6, !noundef !2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %layout.0, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %layout.1, i64* %29, align 8
  %_16 = invoke i64 @_ZN4core5alloc6layout6Layout4size17ha8704eecf98033aeE({ i64, i64 }* align 8 %layout)
          to label %bb12 unwind label %cleanup

bb9:                                              ; preds = %bb8
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #15
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb23, %bb14, %bb9
  unreachable

bb12:                                             ; preds = %bb11
  %30 = invoke { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17h065e3f686ac717ddE(i64 %_16)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  store { i64, i64 } %30, { i64, i64 }* %_15, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_15, i32 0, i32 1
  %32 = load i64, i64* %31, align 8, !range !9, !noundef !2
  %33 = sub i64 %32, -9223372036854775807
  %34 = icmp eq i64 %33, 0
  %_18 = select i1 %34, i64 0, i64 1
  switch i64 %_18, label %bb15 [
    i64 0, label %bb16
    i64 1, label %bb14
  ]

bb15:                                             ; preds = %bb13
  unreachable

bb16:                                             ; preds = %bb13
  %35 = load i8, i8* %init, align 1, !range !1, !noundef !2
  %36 = trunc i8 %35 to i1
  %_21 = zext i1 %36 to i64
  switch i64 %_21, label %bb18 [
    i64 0, label %bb19
    i64 1, label %bb17
  ]

bb14:                                             ; preds = %bb13
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #15
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb16
  unreachable

bb19:                                             ; preds = %bb16
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_23.0 = load i64, i64* %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_23.1 = load i64, i64* %38, align 8, !range !6, !noundef !2
  %39 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdf24627bf191dd8eE"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_23.0, i64 %_23.1)
          to label %bb20 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_25.0 = load i64, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_25.1 = load i64, i64* %41, align 8, !range !6, !noundef !2
  %42 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h5181e350dd396f21E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_25.0, i64 %_25.1)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb17
  store { i8*, i64 } %42, { i8*, i64 }* %result, align 8
  br label %bb22

bb22:                                             ; preds = %bb20, %bb21
  %43 = bitcast { i8*, i64 }* %result to {}**
  %44 = load {}*, {}** %43, align 8
  %45 = icmp eq {}* %44, null
  %_27 = select i1 %45, i64 1, i64 0
  switch i64 %_27, label %bb24 [
    i64 0, label %bb25
    i64 1, label %bb23
  ]

bb20:                                             ; preds = %bb19
  store { i8*, i64 } %39, { i8*, i64 }* %result, align 8
  br label %bb22

bb24:                                             ; preds = %bb22
  unreachable

bb25:                                             ; preds = %bb22
  %46 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 0
  %ptr.0 = load i8*, i8** %46, align 8, !nonnull !2, !noundef !2
  %47 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 1
  %ptr.1 = load i64, i64* %47, align 8
  %_33 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h2644ba234192e5a4E"(i8* %ptr.0, i64 %ptr.1)
          to label %bb26 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_30.0 = load i64, i64* %48, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_30.1 = load i64, i64* %49, align 8, !range !6, !noundef !2
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %_30.0, i64 %_30.1) #15
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_32 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h22fb1a09d0866af5E"(i64* %_33)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_31 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17ha19ccd83866767f7E"(i64* %_32)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  %50 = bitcast { i64*, i64 }* %2 to i64**
  store i64* %_31, i64** %50, align 8
  %51 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 1
  store i64 %capacity, i64* %51, align 8
  %52 = bitcast { i64*, i64 }* %2 to %"alloc::alloc::Global"*
  br label %bb29

bb30:                                             ; preds = %bb31, %bb32
  %53 = bitcast { i8*, i32 }* %1 to i8**
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = insertvalue { i8*, i32 } undef, i8* %54, 0
  %58 = insertvalue { i8*, i32 } %57, i32 %56, 1
  resume { i8*, i32 } %58

bb31:                                             ; preds = %bb32
  br label %bb30
}

; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4ed0f095c5d6fda2E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i64*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_9 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 8, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %2, align 8
  %_4 = icmp eq i64 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %4 = load i8, i8* %_2, align 1, !range !1, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17hf7f302562722d8b0E(i64 %_8)
  %_7.0 = extractvalue { i64, i64 } %7, 0
  %_7.1 = extractvalue { i64, i64 } %7, 1
  br label %bb7

bb5:                                              ; preds = %bb3
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0, i32 0, i32 1
  store i64 0, i64* %9, align 8
  br label %bb11

bb11:                                             ; preds = %bb10, %bb5
  ret void

bb7:                                              ; preds = %bb6
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hdfaa923e57d796d9E"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc133 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i64*, i64 }* %self to i64**
  %_12 = load i64*, i64** %11, align 8, !nonnull !2, !noundef !2
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hd8db532cf0558175E"(i64* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf3b0700be5531fa1E"(i8* %_11)
  br label %bb10

bb10:                                             ; preds = %bb9
  %12 = bitcast { i8*, { i64, i64 } }* %_9 to i8**
  store i8* %_10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %_9, i32 0, i32 1
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %layout.0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %layout.1, i64* %15, align 8
  %16 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %17 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %16 to { i8*, { i64, i64 } }*
  %18 = bitcast { i8*, { i64, i64 } }* %17 to i8*
  %19 = bitcast { i8*, { i64, i64 } }* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h87ac91cae727765bE"(i64 %capacity) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !1, !noundef !2
  %1 = trunc i8 %0 to i1
  %2 = call { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h98c096012390e452E"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i64*, i64 } %2, 0
  %4 = extractvalue { i64*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i64*, i64 } undef, i64* %3, 0
  %6 = insertvalue { i64*, i64 } %5, i64 %4, 1
  ret { i64*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h7f03f211b20a2afdE"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64*, i64 }* %self to i64**
  %_2 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  %1 = call i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2f84b2a5cc5cf25aE"(i64* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h7907c256c6ba8126E"() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i64*, i64 }, align 8
  %_2 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h925d2f5185920f01E"()
          to label %bb1 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb2

bb1:                                              ; preds = %start
  %7 = bitcast { i64*, i64 }* %1 to i64**
  store i64* %_2, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = bitcast { i64*, i64 }* %1 to %"alloc::alloc::Global"*
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i64*, i64 } undef, i64* %11, 0
  %15 = insertvalue { i64*, i64 } %14, i64 %13, 1
  ret { i64*, i64 } %15

bb3:                                              ; preds = %bb2
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: uwtable
define align 1 %"alloc::alloc::Global"* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17h00fa3ca5d2fef03bE"({ i64*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
  ret %"alloc::alloc::Global"* %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc0b6f04345160d8eE"(i8* %self.0, i8* %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i8*, i8* } undef, i8* %self.0, 0
  %1 = insertvalue { i8*, i8* } %0, i8* %self.1, 1
  ret { i8*, i8* } %1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h03dced689a4badd1E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17ha8704eecf98033aeE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4eb31e01e90658a2E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !6, !noundef !2
  call void @_ZN5alloc5alloc7dealloc17hcc23b0408c66fc53E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h5181e350dd396f21E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h6ab0882ce74b8aa1E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdf24627bf191dd8eE"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h6ab0882ce74b8aa1E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: uwtable
define void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdaca981a0781b846E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_11 = alloca i8, align 1
  %_4 = call align 1 %"alloc::alloc::Global"* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17hd56f54f793cc7442E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  store i8 1, i8* %_11, align 1
  call void @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..clone..Clone$GT$5clone17ha3ef19e4afee1402E"(%"alloc::alloc::Global"* align 1 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcb965a65acfcc3b5E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb3 unwind label %cleanup

bb7:                                              ; preds = %cleanup
  %3 = load i8, i8* %_11, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb6, label %bb5

cleanup:                                          ; preds = %bb3, %bb2
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb7

bb3:                                              ; preds = %bb2
  %_8.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_8.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_11, align 1
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h0ba787b6b2b1a71cE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %_8.0, i64 %_8.1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  ret void

bb5:                                              ; preds = %bb6, %bb7
  %10 = bitcast { i8*, i32 }* %1 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb882037ac0a902feE"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hde71f6eb58f1c842E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h9e03b3460ac71d39E(i64* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcb965a65acfcc3b5E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h5df1f9d23546c49bE"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h292c1b26ac218212E(i64* %_2, i64 %_4)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h0858e974c5b48204E"([0 x %Zahl]* align 1 %self.0, i64 %self.1, [0 x %Zahl]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %_9 = alloca %"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>", align 8
  %0 = alloca i8, align 1
  %_3 = icmp ne i64 %self.1, %other.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17ha3b68f9fe6763ac0E"([0 x %Zahl]* align 1 %self.0, i64 %self.1)
  %_10.0 = extractvalue { i8*, i8* } %1, 0
  %_10.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6, %bb1
  %2 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  ret i1 %3

bb3:                                              ; preds = %bb2
  %4 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17ha3b68f9fe6763ac0E"([0 x %Zahl]* align 1 %other.0, i64 %other.1)
  %_12.0 = extractvalue { i8*, i8* } %4, 0
  %_12.1 = extractvalue { i8*, i8* } %4, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core4iter6traits8iterator8Iterator3zip17h8f1d6b4589dba441E(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* sret(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>") %_9, i8* %_10.0, i8* %_10.1, i8* %_12.0, i8* %_12.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %5 = call zeroext i1 @_ZN4core4iter6traits8iterator8Iterator3all17hb978a40c17549251E(%"core::iter::adapters::zip::Zip<core::slice::iter::Iter<Zahl>, core::slice::iter::Iter<Zahl>>"* align 8 %_9)
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb7
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h77d8e7ea8fca8643E"([0 x i64]* align 8 %self.0, i64 %self.1, [0 x i64]* align 8 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %_3 = icmp ne i64 %self.1, %other.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %size = call i64 @_ZN4core3mem11size_of_val17h6a090139a8451484E([0 x i64]* align 8 %self.0, i64 %self.1)
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6, %bb1
  %1 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %2 = trunc i8 %1 to i1
  ret i1 %2

bb3:                                              ; preds = %bb2
  %_12 = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hdb7662dd17f97ad9E"([0 x i64]* align 8 %self.0, i64 %self.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_11 = bitcast i64* %_12 to i8*
  %_15 = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hdb7662dd17f97ad9E"([0 x i64]* align 8 %other.0, i64 %other.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_14 = bitcast i64* %_15 to i8*
  %_10 = call i32 @memcmp(i8* %_11, i8* %_14, i64 %size)
  br label %bb6

bb6:                                              ; preds = %bb5
  %3 = icmp eq i32 %_10, 0
  %4 = zext i1 %3 to i8
  store i8 %4, i8* %0, align 1
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal28_$u7b$$u7b$closure$u7d$$u7d$17h76f78b588ad01289E"(%"[closure@<[Zahl] as core::slice::cmp::SlicePartialEq<Zahl>>::equal::{closure#0}]"* align 1 %_1, i8* align 1 %_2.0, i8* align 1 %_2.1) unnamed_addr #0 {
start:
  %y = alloca %Zahl*, align 8
  %x = alloca %Zahl*, align 8
  %0 = bitcast i8* %_2.0 to %Zahl*
  store %Zahl* %0, %Zahl** %x, align 8
  %1 = bitcast i8* %_2.1 to %Zahl*
  store %Zahl* %1, %Zahl** %y, align 8
  %2 = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h58ab027e81cdac5eE"(%Zahl** align 8 %x, %Zahl** align 8 %y)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN73_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$Other$C$_$GT$$GT$7spec_ne17h11fb1d86037da202E"([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  %0 = call { [0 x %Zahl]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h1eb22f0a9e61416bE"([1 x %Zahl]* align 1 %a, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc135 to %"core::panic::location::Location"*))
  %_4.0 = extractvalue { [0 x %Zahl]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x %Zahl]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x %Zahl]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h1eb22f0a9e61416bE"([1 x %Zahl]* align 1 %b, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc137 to %"core::panic::location::Location"*))
  %_8.0 = extractvalue { [0 x %Zahl]*, i64 } %1, 0
  %_8.1 = extractvalue { [0 x %Zahl]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2ne17h50fb16511d48cb21E"([0 x %Zahl]* align 1 %_4.0, i64 %_4.1, [0 x %Zahl]* align 1 %_8.0, i64 %_8.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i1 %2
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h15dde4b27ceb66d2E"({ i64*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4ed0f095c5d6fda2E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i64*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !4, !noundef !2
  %2 = icmp eq i64 %1, 0
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i64, i64 } }*
  %6 = bitcast { i8*, { i64, i64 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 8, !nonnull !2, !noundef !2
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !6, !noundef !2
  %_7 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h03dced689a4badd1E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3559b6c11d0d433bE"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !8, !noundef !2
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %v = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %v, i64* %7, align 8
  %8 = bitcast { i64, i64 }* %2 to i64*
  store i64 0, i64* %8, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"* %_6 to %"core::alloc::layout::LayoutError"*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %11 = bitcast i64* %10 to %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"*
  %12 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %12, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %14 = load i64, i64* %13, align 8, !range !8, !noundef !2
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc7f7fd4bf3e61129E"(i8* %0) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !2, !noundef !2
  store i8* %v, i8** %1, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"* %_6 to %"core::alloc::AllocError"*
  %6 = bitcast i8** %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"*
  %7 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"* %6 to %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"*
  %8 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = bitcast i8** %1 to {}**
  store {}* null, {}** %9, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %10 = load i8*, i8** %1, align 8
  ret i8* %10
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc191acc781fc3de0E"(%"alloc::vec::Vec<u64>"* align 8 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  store i8 1, i8* %_8, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcb965a65acfcc3b5E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_8, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_5.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_8, align 1
  %10 = invoke { [0 x i64]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1d32517da76fa9c9E"([0 x i64]* align 8 %_5.0, i64 %_5.1, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %11 = extractvalue { [0 x i64]*, i64 } %10, 0
  %12 = extractvalue { [0 x i64]*, i64 } %10, 1
  %13 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %11, 0
  %14 = insertvalue { [0 x i64]*, i64 } %13, i64 %12, 1
  ret { [0 x i64]*, i64 } %14

bb3:                                              ; preds = %bb4, %bb5
  %15 = bitcast { i8*, i32 }* %1 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN90_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc03f1b5000790035E"(i8* align 1 %self, i8* align 1 %other) unnamed_addr #0 {
start:
  %_11 = alloca { i8*, i8* }, align 8
  %_10 = alloca i8, align 1
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !1, !noundef !2
  %2 = trunc i8 %1 to i1
  %__self_tag = zext i1 %2 to i64
  %3 = load i8, i8* %other, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  %__arg1_tag = zext i1 %4 to i64
  %_7 = icmp eq i64 %__self_tag, %__arg1_tag
  br i1 %_7, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %5 = bitcast { i8*, i8* }* %_11 to i8**
  store i8* %self, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 1
  store i8* %other, i8** %6, align 8
  %7 = bitcast { i8*, i8* }* %_11 to i8**
  %_25 = load i8*, i8** %7, align 8, !nonnull !2, !align !3, !noundef !2
  %8 = load i8, i8* %_25, align 1, !range !1, !noundef !2
  %9 = trunc i8 %8 to i1
  %_16 = zext i1 %9 to i64
  switch i64 %_16, label %bb5 [
    i64 0, label %bb4
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb6, %bb4, %bb2
  unreachable

bb4:                                              ; preds = %bb2
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 1
  %_26 = load i8*, i8** %10, align 8, !nonnull !2, !align !3, !noundef !2
  %11 = load i8, i8* %_26, align 1, !range !1, !noundef !2
  %12 = trunc i8 %11 to i1
  %_14 = zext i1 %12 to i64
  %13 = icmp eq i64 %_14, 0
  br i1 %13, label %bb7, label %bb5

bb6:                                              ; preds = %bb2
  %14 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 1
  %_27 = load i8*, i8** %14, align 8, !nonnull !2, !align !3, !noundef !2
  %15 = load i8, i8* %_27, align 1, !range !1, !noundef !2
  %16 = trunc i8 %15 to i1
  %_15 = zext i1 %16 to i64
  %17 = icmp eq i64 %_15, 1
  br i1 %17, label %bb9, label %bb5

bb9:                                              ; preds = %bb6
  %18 = bitcast { i8*, i8* }* %_11 to i8**
  %_30 = load i8*, i8** %18, align 8, !nonnull !2, !align !3, !noundef !2
  %19 = getelementptr i8, i8* %_30, i64 1
  %__self_0 = bitcast i8* %19 to {}*
  %20 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 1
  %_31 = load i8*, i8** %20, align 8, !nonnull !2, !align !3, !noundef !2
  %21 = getelementptr i8, i8* %_31, i64 1
  %__arg1_0 = bitcast i8* %21 to {}*
  %22 = call zeroext i1 @"_ZN4core3cmp5impls59_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$$RP$$GT$2eq17h0cfc42f979267dceE"({}* align 1 %__self_0, {}* align 1 %__arg1_0)
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %_10, align 1
  br label %bb10

bb10:                                             ; preds = %bb9
  br label %bb11

bb11:                                             ; preds = %bb8, %bb10
  %24 = load i8, i8* %_10, align 1, !range !1, !noundef !2
  %25 = trunc i8 %24 to i1
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %0, align 1
  br label %bb3

bb7:                                              ; preds = %bb4
  %27 = bitcast { i8*, i8* }* %_11 to i8**
  %_28 = load i8*, i8** %27, align 8, !nonnull !2, !align !3, !noundef !2
  %28 = getelementptr i8, i8* %_28, i64 1
  %__self_01 = bitcast i8* %28 to {}*
  %29 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 1
  %_29 = load i8*, i8** %29, align 8, !nonnull !2, !align !3, !noundef !2
  %30 = getelementptr i8, i8* %_29, i64 1
  %__arg1_02 = bitcast i8* %30 to {}*
  %31 = call zeroext i1 @"_ZN4core3cmp5impls59_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$$RP$$GT$2eq17h0cfc42f979267dceE"({}* align 1 %__self_01, {}* align 1 %__arg1_02)
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %_10, align 1
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb3:                                              ; preds = %bb11, %bb1
  %33 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %34 = trunc i8 %33 to i1
  ret i1 %34
}

; Function Attrs: inlinehint uwtable
define align 1 %Zahl* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17h89ad6f89bd71ca87E"({ i8*, i8* }* align 8 %self, i64 %idx) unnamed_addr #0 {
start:
  %0 = alloca %Zahl*, align 8
  %1 = bitcast { i8*, i8* }* %self to i8**
  %_5 = load i8*, i8** %1, align 8, !nonnull !2, !noundef !2
  %_4 = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h40fdb8436b6a919cE"(i8* %_5)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %Zahl, %Zahl* %_4, i64 %idx
  store %Zahl* %2, %Zahl** %0, align 8
  %_3.i = load %Zahl*, %Zahl** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret %Zahl* %_3.i
}

; Function Attrs: inlinehint uwtable
define void @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h01c6fdfb7c95a9c3E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, { i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %1 = alloca i64, align 8
  %_23 = alloca { i64, i64 }, align 8
  %exact = alloca i64, align 8
  %2 = bitcast { i8*, i8* }* %self to i8**
  %start1 = load i8*, i8** %2, align 8, !nonnull !2, !noundef !2
  %_6 = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h40fdb8436b6a919cE"(i8* %start1)
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = icmp eq i64 44, 0
  br i1 %3, label %bb3, label %bb8

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %5 = bitcast i8** %4 to %Zahl**
  %_10 = load %Zahl*, %Zahl** %5, align 8
  %_9 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd5f42cfea5912a0cE"(%Zahl* %_10)
  br label %bb4

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %7 = bitcast i8** %6 to %Zahl**
  %_16 = load %Zahl*, %Zahl** %7, align 8
  %_15 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd5f42cfea5912a0cE"(%Zahl* %_16)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_18 = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h40fdb8436b6a919cE"(i8* %start1)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_17 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hc2032444aa0636e9E"(%Zahl* %_18)
  br label %bb11

bb11:                                             ; preds = %bb10
  %8 = sub nuw i64 %_15, %_17
  store i64 %8, i64* %1, align 8
  %diff = load i64, i64* %1, align 8
  br label %bb12

bb12:                                             ; preds = %bb11
  %9 = udiv exact i64 %diff, 44
  store i64 %9, i64* %exact, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  br label %bb14

bb14:                                             ; preds = %bb7, %bb13
  %_22 = load i64, i64* %exact, align 8
  %_24 = load i64, i64* %exact, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_23, i32 0, i32 1
  store i64 %_24, i64* %10, align 8
  %11 = bitcast { i64, i64 }* %_23 to i64*
  store i64 1, i64* %11, align 8
  %12 = bitcast { i64, { i64, i64 } }* %0 to i64*
  store i64 %_22, i64* %12, align 8
  %13 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i32 0, i32 1
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_23, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !range !8, !noundef !2
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_23, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  ret void

bb4:                                              ; preds = %bb3
  %_12 = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h40fdb8436b6a919cE"(i8* %start1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_11 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hc2032444aa0636e9E"(%Zahl* %_12)
  br label %bb6

bb6:                                              ; preds = %bb5
  %20 = sub i64 %_9, %_11
  store i64 %20, i64* %exact, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h9161d4f27a85dfcaE"() unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = getelementptr i8, i8* %0, i64 1
  %2 = bitcast i8* %1 to {}*
  store i8 0, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h07cdf09058aabd0fE"(i1 zeroext %0) unnamed_addr #0 {
start:
  %_6 = alloca %"core::ops::control_flow::ControlFlow<(), core::convert::Infallible>::Break", align 1
  %1 = alloca i8, align 1
  %self = alloca i8, align 1
  %2 = zext i1 %0 to i8
  store i8 %2, i8* %self, align 1
  %3 = load i8, i8* %self, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  %_2 = zext i1 %4 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %5 = getelementptr i8, i8* %1, i64 1
  %6 = bitcast i8* %5 to {}*
  store i8 0, i8* %1, align 1
  br label %bb4

bb1:                                              ; preds = %start
  %7 = bitcast %"core::ops::control_flow::ControlFlow<(), core::convert::Infallible>::Break"* %_6 to {}*
  %8 = getelementptr i8, i8* %1, i64 1
  %9 = bitcast i8* %8 to %"core::ops::control_flow::ControlFlow<(), core::convert::Infallible>::Break"*
  store i8 1, i8* %1, align 1
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %10 = load i8, i8* %1, align 1, !range !1, !noundef !2
  %11 = trunc i8 %10 to i1
  ret i1 %11
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h28a59c392c503909E"([0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %slice.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %slice.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x %Zahl]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17he8869fe56adea2ceE"([0 x %Zahl]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = insertvalue { [0 x %Zahl]*, i64 } undef, [0 x %Zahl]* %slice.0, 0
  %2 = insertvalue { [0 x %Zahl]*, i64 } %1, i64 %slice.1, 1
  ret { [0 x %Zahl]*, i64 } %2
}

; Function Attrs: uwtable
define zeroext i1 @eq(%Zahl* align 1 %self, %Zahl* align 1 %other) unnamed_addr #1 {
start:
  %_4 = alloca i8, align 1
  %_3 = alloca i8, align 1
  %0 = alloca i8, align 1
  %1 = bitcast %Zahl* %self to i32*
  %_6 = load i32, i32* %1, align 1
  %2 = bitcast %Zahl* %other to i32*
  %_7 = load i32, i32* %2, align 1
  %_5 = icmp eq i32 %_6, %_7
  br i1 %_5, label %bb8, label %bb7

bb7:                                              ; preds = %start
  store i8 0, i8* %_4, align 1
  br label %bb9

bb8:                                              ; preds = %start
  %3 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 1
  %_9 = load i64, i64* %3, align 1
  %4 = getelementptr inbounds %Zahl, %Zahl* %other, i32 0, i32 1
  %_10 = load i64, i64* %4, align 1
  %_8 = icmp eq i64 %_9, %_10
  %5 = zext i1 %_8 to i8
  store i8 %5, i8* %_4, align 1
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %6 = load i8, i8* %_4, align 1, !range !1, !noundef !2
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb5, label %bb4

bb4:                                              ; preds = %bb9
  store i8 0, i8* %_3, align 1
  br label %bb6

bb5:                                              ; preds = %bb9
  %8 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  %_12 = load i64, i64* %8, align 1
  %9 = getelementptr inbounds %Zahl, %Zahl* %other, i32 0, i32 2
  %_13 = load i64, i64* %9, align 1
  %_11 = icmp eq i64 %_12, %_13
  %10 = zext i1 %_11 to i8
  store i8 %10, i8* %_3, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  %11 = load i8, i8* %_3, align 1, !range !1, !noundef !2
  %12 = trunc i8 %11 to i1
  br i1 %12, label %bb2, label %bb1

bb1:                                              ; preds = %bb6
  store i8 0, i8* %0, align 1
  br label %bb3

bb2:                                              ; preds = %bb6
  %_15 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 3
  %_16 = getelementptr inbounds %Zahl, %Zahl* %other, i32 0, i32 3
  %_14 = call zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd627f6a4b2b1161bE"(%"alloc::vec::Vec<u64>"* align 8 %_15, %"alloc::vec::Vec<u64>"* align 8 %_16)
  br label %bb10

bb10:                                             ; preds = %bb2
  %13 = zext i1 %_14 to i8
  store i8 %13, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb10, %bb1
  %14 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %15 = trunc i8 %14 to i1
  ret i1 %15
}

; Function Attrs: uwtable
define void @zset([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  %_3 = alloca %Zahl, align 1
  store i8 0, i8* %_7, align 1
  %_4 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  store i8 1, i8* %_7, align 1
  call void @"_ZN49_$LT$zsub..Zahl$u20$as$u20$core..clone..Clone$GT$5clone17h3659a96a2400317dE"(%Zahl* sret(%Zahl) %_3, %Zahl* align 1 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %1 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  invoke void @"_ZN4core3ptr31drop_in_place$LT$zsub..Zahl$GT$17hf5957a235e7e70aeE"(%Zahl* %1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %2 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %3 = bitcast %Zahl* %2 to i8*
  %4 = bitcast %Zahl* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 44, i1 false)
  %5 = load i8, i8* %_7, align 1, !range !1, !noundef !2
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb5, label %bb2

cleanup:                                          ; preds = %bb1
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb3

bb4:                                              ; preds = %bb1
  %12 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %13 = bitcast %Zahl* %12 to i8*
  %14 = bitcast %Zahl* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 44, i1 false)
  store i8 0, i8* %_7, align 1
  ret void

bb2:                                              ; preds = %bb5, %bb3
  %15 = bitcast { i8*, i32 }* %0 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb5:                                              ; preds = %bb3
  invoke void @"_ZN4core3ptr31drop_in_place$LT$zsub..Zahl$GT$17hf5957a235e7e70aeE"(%Zahl* %_3) #13
          to label %bb2 unwind label %abort

abort:                                            ; preds = %bb5
  %21 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable
}

; Function Attrs: uwtable
define void @zneg([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %c) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_11 = alloca i8, align 1
  %_3 = alloca %Zahl, align 1
  store i8 0, i8* %_11, align 1
  %_4 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %c, i64 0, i64 0
  store i8 1, i8* %_11, align 1
  call void @"_ZN49_$LT$zsub..Zahl$u20$as$u20$core..clone..Clone$GT$5clone17h3659a96a2400317dE"(%Zahl* sret(%Zahl) %_3, %Zahl* align 1 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %1 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  invoke void @"_ZN4core3ptr31drop_in_place$LT$zsub..Zahl$GT$17hf5957a235e7e70aeE"(%Zahl* %1)
          to label %bb5 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %2 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %3 = bitcast %Zahl* %2 to i8*
  %4 = bitcast %Zahl* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 44, i1 false)
  %5 = load i8, i8* %_11, align 1, !range !1, !noundef !2
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb6, label %bb3

cleanup:                                          ; preds = %bb1
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb4

bb5:                                              ; preds = %bb1
  %12 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %13 = bitcast %Zahl* %12 to i8*
  %14 = bitcast %Zahl* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 44, i1 false)
  store i8 0, i8* %_11, align 1
  %15 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %16 = bitcast %Zahl* %15 to i32*
  %_7 = load i32, i32* %16, align 1
  %_9 = icmp eq i32 %_7, -2147483648
  %17 = call i1 @llvm.expect.i1(i1 %_9, i1 false)
  br i1 %17, label %panic, label %bb2

bb3:                                              ; preds = %bb6, %bb4
  %18 = bitcast { i8*, i32 }* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb6:                                              ; preds = %bb4
  invoke void @"_ZN4core3ptr31drop_in_place$LT$zsub..Zahl$GT$17hf5957a235e7e70aeE"(%Zahl* %_3) #13
          to label %bb3 unwind label %abort

abort:                                            ; preds = %bb6
  %24 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb2:                                              ; preds = %bb5
  %25 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %26 = bitcast %Zahl* %25 to i32*
  %27 = sub i32 0, %_7
  store i32 %27, i32* %26, align 1
  ret void

panic:                                            ; preds = %bb5
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([31 x i8]* @str.0 to [0 x i8]*), i64 31, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc139 to %"core::panic::location::Location"*)) #15
  unreachable
}

; Function Attrs: uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %z) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %z, i64 0, i64 0
  %1 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 1
  %_2 = load i64, i64* %1, align 1
  %2 = icmp eq i64 %_2, 0
  ret i1 %2
}

; Function Attrs: uwtable
define i32 @zsignum([1 x %Zahl]* align 1 %z) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %z, i64 0, i64 0
  %1 = bitcast %Zahl* %0 to i32*
  %2 = load i32, i32* %1, align 1
  ret i32 %2
}

; Function Attrs: uwtable
define void @zadd_unsigned([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @libzahl_zsub_unsigned([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zsub([1 x %Zahl]* align 1 %0, [1 x %Zahl]* align 1 %1, [1 x %Zahl]* align 1 %c) unnamed_addr #1 {
start:
  %b = alloca [1 x %Zahl]*, align 8
  %a = alloca [1 x %Zahl]*, align 8
  store [1 x %Zahl]* %0, [1 x %Zahl]** %a, align 8
  store [1 x %Zahl]* %1, [1 x %Zahl]** %b, align 8
  %_5 = load [1 x %Zahl]*, [1 x %Zahl]** %b, align 8, !nonnull !2, !align !3, !noundef !2
  %_4 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_9 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %c)
  br label %bb4

bb2:                                              ; preds = %bb1
  %_7 = load [1 x %Zahl]*, [1 x %Zahl]** %a, align 8, !nonnull !2, !align !3, !noundef !2
  call void @zneg([1 x %Zahl]* align 1 %_7, [1 x %Zahl]* align 1 %c)
  br label %bb21

bb21:                                             ; preds = %bb19, %bb20, %bb16, %bb12, %bb7, %bb6, %bb2
  ret void

bb4:                                              ; preds = %bb3
  br i1 %_9, label %bb5, label %bb8

bb8:                                              ; preds = %bb4
  %_19 = load [1 x %Zahl]*, [1 x %Zahl]** %b, align 8, !nonnull !2, !align !3, !noundef !2
  %_18 = call i32 @zsignum([1 x %Zahl]* align 1 %_19)
  br label %bb9

bb5:                                              ; preds = %bb4
  %_11 = call zeroext i1 @"_ZN4core3cmp5impls77_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$mut$u20$A$GT$2ne17h966a7dc8c9dfad9bE"([1 x %Zahl]** align 8 %a, [1 x %Zahl]** align 8 %b)
  br label %bb6

bb6:                                              ; preds = %bb5
  br i1 %_11, label %bb7, label %bb21

bb7:                                              ; preds = %bb6
  %_15 = load [1 x %Zahl]*, [1 x %Zahl]** %a, align 8, !nonnull !2, !align !3, !noundef !2
  %_16 = load [1 x %Zahl]*, [1 x %Zahl]** %b, align 8, !nonnull !2, !align !3, !noundef !2
  call void @zset([1 x %Zahl]* align 1 %_15, [1 x %Zahl]* align 1 %_16)
  br label %bb21

bb9:                                              ; preds = %bb8
  %_17 = icmp slt i32 %_18, 0
  br i1 %_17, label %bb10, label %bb17

bb17:                                             ; preds = %bb9
  %_36 = call i32 @zsignum([1 x %Zahl]* align 1 %c)
  br label %bb18

bb10:                                             ; preds = %bb9
  %_21 = call i32 @zsignum([1 x %Zahl]* align 1 %c)
  br label %bb11

bb11:                                             ; preds = %bb10
  %_20 = icmp slt i32 %_21, 0
  br i1 %_20, label %bb12, label %bb13

bb13:                                             ; preds = %bb11
  %_28 = load [1 x %Zahl]*, [1 x %Zahl]** %a, align 8, !nonnull !2, !align !3, !noundef !2
  %_29 = load [1 x %Zahl]*, [1 x %Zahl]** %b, align 8, !nonnull !2, !align !3, !noundef !2
  call void @zadd_unsigned([1 x %Zahl]* align 1 %_28, [1 x %Zahl]* align 1 %_29, [1 x %Zahl]* align 1 %c)
  br label %bb14

bb12:                                             ; preds = %bb11
  %_24 = load [1 x %Zahl]*, [1 x %Zahl]** %a, align 8, !nonnull !2, !align !3, !noundef !2
  %_26 = load [1 x %Zahl]*, [1 x %Zahl]** %b, align 8, !nonnull !2, !align !3, !noundef !2
  call void @libzahl_zsub_unsigned([1 x %Zahl]* align 1 %_24, [1 x %Zahl]* align 1 %c, [1 x %Zahl]* align 1 %_26)
  br label %bb21

bb14:                                             ; preds = %bb13
  %_32 = load [1 x %Zahl]*, [1 x %Zahl]** %a, align 8, !nonnull !2, !align !3, !noundef !2
  %_31 = call i32 @zsignum([1 x %Zahl]* align 1 %_32)
  br label %bb15

bb15:                                             ; preds = %bb14
  %_33 = icmp eq i32 %_31, -2147483648
  %2 = call i1 @llvm.expect.i1(i1 %_33, i1 false)
  br i1 %2, label %panic, label %bb16

bb16:                                             ; preds = %bb15
  %3 = load [1 x %Zahl]*, [1 x %Zahl]** %a, align 8, !nonnull !2, !align !3, !noundef !2
  %4 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %3, i64 0, i64 0
  %5 = bitcast %Zahl* %4 to i32*
  %6 = sub i32 0, %_31
  store i32 %6, i32* %5, align 1
  br label %bb21

panic:                                            ; preds = %bb15
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([31 x i8]* @str.0 to [0 x i8]*), i64 31, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc141 to %"core::panic::location::Location"*)) #15
  unreachable

bb18:                                             ; preds = %bb17
  %_35 = icmp slt i32 %_36, 0
  br i1 %_35, label %bb19, label %bb20

bb20:                                             ; preds = %bb18
  %_43 = load [1 x %Zahl]*, [1 x %Zahl]** %a, align 8, !nonnull !2, !align !3, !noundef !2
  %_44 = load [1 x %Zahl]*, [1 x %Zahl]** %b, align 8, !nonnull !2, !align !3, !noundef !2
  call void @libzahl_zsub_unsigned([1 x %Zahl]* align 1 %_43, [1 x %Zahl]* align 1 %_44, [1 x %Zahl]* align 1 %c)
  br label %bb21

bb19:                                             ; preds = %bb18
  %_39 = load [1 x %Zahl]*, [1 x %Zahl]** %a, align 8, !nonnull !2, !align !3, !noundef !2
  %_40 = load [1 x %Zahl]*, [1 x %Zahl]** %b, align 8, !nonnull !2, !align !3, !noundef !2
  call void @zadd_unsigned([1 x %Zahl]* align 1 %_39, [1 x %Zahl]* align 1 %_40, [1 x %Zahl]* align 1 %c)
  br label %bb21
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN49_$LT$zsub..Zahl$u20$as$u20$core..clone..Clone$GT$5clone17h3659a96a2400317dE"(%Zahl* sret(%Zahl) %0, %Zahl* align 1 %self) unnamed_addr #0 {
start:
  %_12 = alloca %"alloc::vec::Vec<u64>", align 8
  %__self_0_0 = bitcast %Zahl* %self to i32*
  %__self_0_1 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 1
  %__self_0_2 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  %__self_0_3 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 3
  %_6 = load i32, i32* %__self_0_0, align 4
  %_8 = load i64, i64* %__self_0_1, align 8
  %_10 = load i64, i64* %__self_0_2, align 8
  call void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdaca981a0781b846E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %_12, %"alloc::vec::Vec<u64>"* align 8 %__self_0_3)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %Zahl* %0 to i32*
  store i32 %_6, i32* %1, align 1
  %2 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 1
  store i64 %_8, i64* %2, align 1
  %3 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  store i64 %_10, i64* %3, align 1
  %4 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 3
  %5 = bitcast %"alloc::vec::Vec<u64>"* %4 to i8*
  %6 = bitcast %"alloc::vec::Vec<u64>"* %_12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %6, i64 24, i1 false)
  ret void
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #9

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #9

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #9

; Function Attrs: noreturn uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() unnamed_addr #10

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #11

; Function Attrs: uwtable
declare i32 @memcmp(i8*, i8*, i64) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #12

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #10 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #11 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #12 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #13 = { noinline }
attributes #14 = { noinline noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 1}
!4 = !{i64 0, i64 -9223372036854775807}
!5 = !{i8 -1, i8 2}
!6 = !{i64 1, i64 -9223372036854775807}
!7 = !{i64 1, i64 0}
!8 = !{i64 0, i64 2}
!9 = !{i64 0, i64 -9223372036854775806}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub.rs.bc", hash: (943416595, 362349273, 3071446092, 4241705895, 2041602140))
^1 = gv: (name: "alloc131", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^93)))) ; guid = 278749160660066221
^2 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 308824032987216479
^3 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h40fdb8436b6a919cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 485465399216060609
^4 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^5 = gv: (name: "_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE") ; guid = 682884734678583306
^6 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17he2a9c1e504ab5741E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 718253728068171674
^7 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h8c300192acf5fc9bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21, calls: ((callee: ^131))))) ; guid = 754584957521740236
^8 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h2ececb3b9c60fe80E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^143))))) ; guid = 780653711389563050
^9 = gv: (name: "_ZN90_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc03f1b5000790035E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 72, calls: ((callee: ^60))))) ; guid = 930816564123080647
^10 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17hfdd43dae55a2dc07E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 961988368135529195
^11 = gv: (name: "alloc133", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^68)))) ; guid = 1024259715301044585
^12 = gv: (name: "_ZN4core3mem11size_of_val17h6a090139a8451484E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 1290737131643853229
^13 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17h89ad6f89bd71ca87E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^3))))) ; guid = 1351430195035341894
^14 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he0089d30eeffe946E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^114))))) ; guid = 1458733875026578711
^15 = gv: (name: "alloc135", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^141)))) ; guid = 1482879294442516628
^16 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^17 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h64323efe932f3fa7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^44), (callee: ^162))))) ; guid = 1582373364270389023
^18 = gv: (name: "_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17he8869fe56adea2ceE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 1686081694410970453
^19 = gv: (name: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h1e1cb6f13147febfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 100, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^13)), refs: (^142)))) ; guid = 1687559377893401409
^20 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1d43d88f948da36aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1723368756000298559
^21 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hb353a34ec39e0a54E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^168))))) ; guid = 1834364789816174703
^22 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h43c86ed8e9fedb6aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1897931654556850581
^23 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd5f42cfea5912a0cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 2099777784986337959
^24 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h603e30f263c9e597E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 2373442210209778303
^25 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1d32517da76fa9c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^133))))) ; guid = 2534024550311101768
^26 = gv: (name: "_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2ne17h50fb16511d48cb21E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^127))))) ; guid = 2568746006958621972
^27 = gv: (name: "_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc191acc781fc3de0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^144), (callee: ^25)), refs: (^142)))) ; guid = 2573373007548748819
^28 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^29 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h9e03b3460ac71d39E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^39))))) ; guid = 2623180378234985023
^30 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hcc527a49181398b8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 2663357338143651685
^31 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdf24627bf191dd8eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^159))))) ; guid = 2674651567403989817
^32 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17hb2977606cea32eecE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^37), (callee: ^113), (callee: ^24))))) ; guid = 2687664100247811372
^33 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h040c0be53195ca1bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 2818005341323355846
^34 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17ha78d94061d6080d5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^20))))) ; guid = 2849928921859903260
^35 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h29843d8b2f964c10E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 2965928514548252233
^36 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8try_fold17h92c26e0c2c0ae9f4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 75, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^156), (callee: ^7), (callee: ^92), (callee: ^77), (callee: ^82)), refs: (^142)))) ; guid = 3036220046153714133
^37 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h8a8f62f7081290abE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3068288726205415735
^38 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17hd56f54f793cc7442E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^145))))) ; guid = 3341224777832377030
^39 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h72c8f8449663036aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 3438929478523371600
^40 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17h656eeb88a9ba1742E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 3456220253075918496
^41 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h19663b6e96c8797eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^117), (callee: ^162))))) ; guid = 3592758021829347163
^42 = gv: (name: "_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdaca981a0781b846E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^38), (callee: ^80), (callee: ^144), (callee: ^166)), refs: (^142)))) ; guid = 3801155930217252590
^43 = gv: (name: "_ZN49_$LT$zsub..Zahl$u20$as$u20$core..clone..Clone$GT$5clone17h3659a96a2400317dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 21, calls: ((callee: ^42))))) ; guid = 3838829164958245325
^44 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4a0addf553983f4aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^67), (callee: ^6))))) ; guid = 3958664712477535966
^45 = gv: (name: "_ZN4core3cmp3min17hed090e4d545643d1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^128))))) ; guid = 4051430652334583358
^46 = gv: (name: "zsub", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 65, calls: ((callee: ^58), (callee: ^88), (callee: ^148), (callee: ^83), (callee: ^164), (callee: ^47), (callee: ^99), (callee: ^105)), refs: (^155, ^104)))) ; guid = 4060406598330412769
^47 = gv: (name: "zadd_unsigned", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 4226811599618542885
^48 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hde71f6eb58f1c842E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^100), (callee: ^53))))) ; guid = 4239605043232133649
^49 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17h165042d6814bedbeE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^108), (callee: ^91), (callee: ^16))))) ; guid = 4243289804304979188
^50 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h065681f58966d54fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^59), (callee: ^62))))) ; guid = 4386557619225062411
^51 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h32557233c2bb96afE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 4518634473801841932
^52 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^53 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4fabc537e41e6f60E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^67), (callee: ^6))))) ; guid = 4648140334289968480
^54 = gv: (name: "_ZN4core5alloc6layout6Layout5array17hf7f302562722d8b0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^152), (callee: ^122), (callee: ^153), (callee: ^130), (callee: ^56)), refs: (^84)))) ; guid = 4724544301619915156
^55 = gv: (name: "_ZN4core4iter8adapters3zip16Zip$LT$A$C$B$GT$3new17he218b4b8e5aee66dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^96))))) ; guid = 4754810730065023159
^56 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17he3e86379bb0c83b6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^138))))) ; guid = 4789186681649195852
^57 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h5a02c79132ba0c49E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 4822008625288580423
^58 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 5436943481773832288
^59 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h75c5594f489daf53E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 5511030013823479259
^60 = gv: (name: "_ZN4core3cmp5impls59_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$$RP$$GT$2eq17h0cfc42f979267dceE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 5571505338827926277
^61 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h9d78f4caf985a01cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 5763153574234340550
^62 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17haac7b45efb040963E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 5780986323217315679
^63 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h500a0a64eb265dd3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 5908229522555571386
^64 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h7554acdb0f4cb458E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^137), (callee: ^162))))) ; guid = 5970559684578293846
^65 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^66 = gv: (name: "_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h1eb22f0a9e61416bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^116))))) ; guid = 6405592919615835653
^67 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h920fdc4ac2206dc7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 6448685585710493294
^68 = gv: (name: "alloc132", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6523776589040044362
^69 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2f84b2a5cc5cf25aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^137))))) ; guid = 6568971957761872784
^70 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^71 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^72 = gv: (name: "_ZN4core3ptr31drop_in_place$LT$zsub..Zahl$GT$17hf5957a235e7e70aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^107))))) ; guid = 6863037613743672835
^73 = gv: (name: "alloc139", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^149)))) ; guid = 7072045793743109438
^74 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h01c6fdfb7c95a9c3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 58, calls: ((callee: ^3), (callee: ^23), (callee: ^87))))) ; guid = 7102281006759784102
^75 = gv: (name: "_ZN4core4hint21unreachable_unchecked17hd255022aa1219b30E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 7519440052199593877
^76 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hd8db532cf0558175E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^64), (callee: ^160))))) ; guid = 7601712747109947878
^77 = gv: (name: "_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h07cdf09058aabd0fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22))) ; guid = 7714932520528909115
^78 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h85241e8d1de15528E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^57))))) ; guid = 7800922365525028888
^79 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h15dde4b27ceb66d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^134), (callee: ^174))))) ; guid = 7935917118815884940
^80 = gv: (name: "_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..clone..Clone$GT$5clone17ha3ef19e4afee1402E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 7968485375622005689
^81 = gv: (name: "_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2ne17hb643d751b47e4e6aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^170))))) ; guid = 8003033040028858986
^82 = gv: (name: "_ZN104_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hde0602b9e9d64e30E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 8033520857917581925
^83 = gv: (name: "_ZN4core3cmp5impls77_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$mut$u20$A$GT$2ne17h966a7dc8c9dfad9bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^81))))) ; guid = 8073525360311108577
^84 = gv: (name: "alloc127", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^169)))) ; guid = 8223893719832103873
^85 = gv: (name: "_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h454f39cc54579b18E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 8235847123242219390
^86 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hdb7662dd17f97ad9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 8245478759534967869
^87 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hc2032444aa0636e9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 8315744435349510279
^88 = gv: (name: "zneg", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 55, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^43), (callee: ^72), (callee: ^175), (callee: ^105)), refs: (^142, ^73, ^104)))) ; guid = 8422449061177613082
^89 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf3b0700be5531fa1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^41))))) ; guid = 8818016618931035167
^90 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h7907c256c6ba8126E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^102)), refs: (^142)))) ; guid = 8902567675381626868
^91 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h2bf97bd5af81ca90E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^78), (callee: ^98))))) ; guid = 8990600321071866223
^92 = gv: (name: "_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h9161d4f27a85dfcaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 8992674322234476542
^93 = gv: (name: "alloc130", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9398642631390392234
^94 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4eb31e01e90658a2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9404004871455637291
^95 = gv: (name: "_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h77d8e7ea8fca8643E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^12), (callee: ^86), (callee: ^136))))) ; guid = 9412459488878946215
^96 = gv: (name: "_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hf24b8f77abc6c5faE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^172), (callee: ^45)), refs: (^142)))) ; guid = 9639686971597361227
^97 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator3all17hb978a40c17549251E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^140), (callee: ^36), (callee: ^9)), refs: (^2)))) ; guid = 9664692013478806690
^98 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h32e49639eeb4305cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 9763020377220619554
^99 = gv: (name: "libzahl_zsub_unsigned", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9790471082808042728
^100 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h7f03f211b20a2afdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^69))))) ; guid = 9905303928512961770
^101 = gv: (name: "_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h61a20183c5ce8fafE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^61), (callee: ^21), (callee: ^86), (callee: ^107), (callee: ^48), (callee: ^163), (callee: ^126), (callee: ^175)), refs: (^142)))) ; guid = 9984303639157288740
^102 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h925d2f5185920f01E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^34), (callee: ^30))))) ; guid = 10012123083734232195
^103 = gv: (name: "_ZN5alloc7raw_vec11alloc_guard17h065e3f686ac717ddE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 32, calls: ((callee: ^14))))) ; guid = 10053324304270546317
^104 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10073338068765420039
^105 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^106 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^107 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h6acb1808a2b390f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^110), (callee: ^112), (callee: ^175)), refs: (^142)))) ; guid = 10353164508599094806
^108 = gv: (name: "_ZN4core5alloc6layout6Layout4size17ha8704eecf98033aeE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 10461743682592384702
^109 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17ha3b68f9fe6763ac0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^32))))) ; guid = 10611597833891159700
^110 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb882037ac0a902feE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^48), (callee: ^29))))) ; guid = 10618387485338770271
^111 = gv: (name: "_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd627f6a4b2b1161bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^27), (callee: ^135)), refs: (^124)))) ; guid = 10672084124838018332
^112 = gv: (name: "_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h3f97c9ab29add743E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^79))))) ; guid = 10734887705746995558
^113 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h66632bd714a6944dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^151), (callee: ^33))))) ; guid = 11055802173459979439
^114 = gv: (name: "_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h1f605a9e104d59f3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 11252245903894920458
^115 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17ha19ccd83866767f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^20))))) ; guid = 11410285621519681084
^116 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h329826fccd3cf8f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^18))))) ; guid = 11443717547891258421
^117 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h0f127b80eca6b735E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^94))))) ; guid = 11450152162448254972
^118 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hc53fd5a9d4379ba6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^94), (callee: ^125), (callee: ^63))))) ; guid = 11524330097001858691
^119 = gv: (name: "alloc137", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^141)))) ; guid = 11553479419271627405
^120 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator3zip17h8f1d6b4589dba441E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^150), (callee: ^55)), refs: (^142)))) ; guid = 11617153375499123994
^121 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hdfaa923e57d796d9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^75)), refs: (^142)))) ; guid = 11857703122596781890
^122 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h94536b9b3a4f79a2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 11930941174477430728
^123 = gv: (name: "_ZN5alloc5alloc5alloc17h172807a8f614cf28E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^108), (callee: ^91), (callee: ^106))))) ; guid = 12084789236266388964
^124 = gv: (name: "alloc129", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^167)))) ; guid = 12389023252958763535
^125 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h5cd57e2ddd783ed1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^22))))) ; guid = 12398500817337573078
^126 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h4f8037ddb3bd2453E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 12430606217058052795
^127 = gv: (name: "_ZN4core5slice3cmp14SlicePartialEq9not_equal17hb2ae2b159ff789a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^157))))) ; guid = 12544378448880935099
^128 = gv: (name: "_ZN4core3cmp3Ord3min17h9dcb029f2aab0b24E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^85)), refs: (^142)))) ; guid = 12670976127219734809
^129 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h2644ba234192e5a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^51), (callee: ^20))))) ; guid = 12671950914263398631
^130 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8b1c28275a01deb3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^35))))) ; guid = 12686363702559621691
^131 = gv: (name: "_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal28_$u7b$$u7b$closure$u7d$$u7d$17h76f78b588ad01289E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^165))))) ; guid = 13105689377345769895
^132 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h5181e350dd396f21E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^159))))) ; guid = 13182301715887703187
^133 = gv: (name: "_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h28a59c392c503909E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 13382181322075918914
^134 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4ed0f095c5d6fda2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^54), (callee: ^121), (callee: ^76), (callee: ^89)), refs: (^11)))) ; guid = 13396299947798142602
^135 = gv: (name: "_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17hbab8d8a155490143E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^95))))) ; guid = 13706045474499225698
^136 = gv: (name: "memcmp") ; guid = 13767193220660627266
^137 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h22fb1a09d0866af5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 13976086508593727012
^138 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h92a447f5d358b8a2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 14043948498110362551
^139 = gv: (name: "eq", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^111))))) ; guid = 14217732238743773919
^140 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator3all5check17h343d9acf97a3818cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 14719773504979573171
^141 = gv: (name: "alloc136", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14775941311896201184
^142 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^143 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h3888bcbb9fbead25E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 14936569075525581071
^144 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcb965a65acfcc3b5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^158), (callee: ^171))))) ; guid = 15017592376224974029
^145 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17h00fa3ca5d2fef03bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 15112348487596774341
^146 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h98c096012390e452E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 127, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^54), (callee: ^90), (callee: ^108), (callee: ^5), (callee: ^103), (callee: ^31), (callee: ^132), (callee: ^129), (callee: ^173), (callee: ^137), (callee: ^115)), refs: (^142)))) ; guid = 15113090234713289206
^147 = gv: (name: "_ZN5alloc5alloc7dealloc17hcc23b0408c66fc53E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^108), (callee: ^91), (callee: ^52))))) ; guid = 15342177249993734671
^148 = gv: (name: "zsignum", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 15352537659571043505
^149 = gv: (name: "alloc140", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15711466109272921913
^150 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc0b6f04345160d8eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 15764298309511642379
^151 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hadc9fa89b5df1f73E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 15785111402271562672
^152 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hef2738a19b92aed9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 16170835111242258198
^153 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3559b6c11d0d433bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 16251043915847595139
^154 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17h8abaa9acd260af87E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^91), (callee: ^162))))) ; guid = 16382186631585421265
^155 = gv: (name: "alloc141", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^149)))) ; guid = 16564408152933580601
^156 = gv: (name: "_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a5c2b49119e60aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^19))))) ; guid = 16651092373990567707
^157 = gv: (name: "_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h0858e974c5b48204E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^109), (callee: ^120), (callee: ^97))))) ; guid = 16680234993983576647
^158 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h5df1f9d23546c49bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^100), (callee: ^53))))) ; guid = 16843162368911576996
^159 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17h6ab0882ce74b8aa1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^108), (callee: ^154), (callee: ^123), (callee: ^49), (callee: ^17), (callee: ^10), (callee: ^161), (callee: ^118), (callee: ^8)), refs: (^1)))) ; guid = 16850419875758382941
^160 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17ha97b63b5a0c47b89E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 16854135780938102103
^161 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc7f7fd4bf3e61129E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 16897350123509728174
^162 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53fd7cbddaadb788E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 16995901872517990187
^163 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17h520e1079014e715cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^40))))) ; guid = 17170003589627488913
^164 = gv: (name: "zset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^43), (callee: ^72), (callee: ^175)), refs: (^142)))) ; guid = 17194806963102885160
^165 = gv: (name: "_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h58ab027e81cdac5eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^139))))) ; guid = 17507639918221131788
^166 = gv: (name: "_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h0ba787b6b2b1a71cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^176))))) ; guid = 17518375501100247456
^167 = gv: (name: "alloc128", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17607893473617456217
^168 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h87ac91cae727765bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^146))))) ; guid = 17793293715764156797
^169 = gv: (name: "alloc126", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17962478295642833318
^170 = gv: (name: "_ZN73_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$Other$C$_$GT$$GT$7spec_ne17h11fb1d86037da202E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^66), (callee: ^26)), refs: (^15, ^119)))) ; guid = 18035283979790954833
^171 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17h292c1b26ac218212E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^50))))) ; guid = 18041887511153598446
^172 = gv: (name: "_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17ha03d0799e9fbc9d8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^74))))) ; guid = 18166856208563234653
^173 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^174 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h03dced689a4badd1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^108), (callee: ^94), (callee: ^147))))) ; guid = 18367704023410141586
^175 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^176 = gv: (name: "_ZN5alloc5slice4hack6to_vec17h85a2c86cd8d37760E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^101))))) ; guid = 18414605809960201934
^177 = blockcount: 596
