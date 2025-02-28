; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_finalize.rs.bc'
source_filename = "opng_finalize.98ca528b-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked_mut::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Error" = type {}
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok" = type { [1 x i64], { i8*, i64 } }
%"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok" = type { {} }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue" = type { [1 x i64], { i64, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break" = type { [1 x i64], { i64, i64 } }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue" = type { [1 x i64], i64 }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break" = type { [1 x i64], { i64, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue" = type { [1 x i64], { i8*, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue" = type { {} }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%OpngOptions = type { i8 }
%OpngSummary = type <{ i32, i32, i32, i32 }>
%OpngEngine = type { i8 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (%"alloc::string::String"**)* @"_ZN4core3ptr54drop_in_place$LT$$RF$mut$u20$alloc..string..String$GT$17h860266cf33969bd4E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (%"alloc::string::String"**, [0 x i8]*, i64)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha170b38141c52703E" to i8*), i8* bitcast (i1 (%"alloc::string::String"**, i32)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha8652d9824a851fdE" to i8*), i8* bitcast (i1 (%"alloc::string::String"**, %"core::fmt::Arguments"*)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h4bd8ce01500ed128E" to i8*) }>, align 8
@alloc25 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc26 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc72 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc176 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc177 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc176, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc182 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/char/methods.rs" }>, align 1
@alloc179 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc182, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\8D\06\00\00\16\00\00\00" }>, align 8
@alloc181 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc182, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\A7\06\00\00\0A\00\00\00" }>, align 8
@alloc39 = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"encode_utf8: need " }>, align 1
@alloc41 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c" bytes to encode U+" }>, align 1
@alloc42 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c", but the buffer has " }>, align 1
@alloc40 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [18 x i8] }>, <{ [18 x i8] }>* @alloc39, i32 0, i32 0, i32 0), [8 x i8] c"\12\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [19 x i8] }>, <{ [19 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [8 x i8] c"\13\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc42, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@alloc183 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc182, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\A0\06\00\00\0E\00\00\00" }>, align 8
@alloc184 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc185 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc184, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc186 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%"core::fmt::Error"*)* @"_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h55bf51902451bae0E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 (%"core::fmt::Error"*, %"core::fmt::Formatter"*)* @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h747599ac67d37615E" to i8*) }>, align 8
@anon.22a24f58c4c4e95161f7aeb0caeab480.0 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@alloc194 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc191 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc194, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc193 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc194, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\D2\00\00\00\1B\00\00\00" }>, align 8
@alloc195 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc194, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\DF\00\00\00\1F\00\00\00" }>, align 8
@alloc204 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc197 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc204, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\C9\01\00\00\16\00\00\00" }>, align 8
@alloc199 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc204, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\CB\01\00\00\05\00\00\00" }>, align 8
@alloc201 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc204, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc203 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc204, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\86\01\00\00\1C\00\00\00" }>, align 8
@alloc205 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc204, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\90\01\00\00\13\00\00\00" }>, align 8
@_ZN13opng_finalize7OPTIONS17hbe06d177902bae3bE = internal global <{ [1 x i8] }> zeroinitializer, align 1
@_ZN13opng_finalize7SUMMARY17h17ce3ada329b8d7dE = internal global <{ [16 x i8] }> zeroinitializer, align 1
@_ZN13opng_finalize6ENGINE17h536520dcb14333a4E = internal global <{ [1 x i8] }> zeroinitializer, align 1
@alloc73 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc72 to i8*), [8 x i8] zeroinitializer }>, align 8
@alloc206 = private unnamed_addr constant <{ [95 x i8] }> <{ [95 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_finalize.rs" }>, align 1
@alloc207 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc206, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00&\00\00\00%\00\00\00" }>, align 8
@alloc17 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc16 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc72 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc17, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc208 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"** Status report\0A" }>, align 1
@alloc209 = private unnamed_addr constant <{ [32 x i8] }> <{ [32 x i8] c"{} file(s) have been processed.\0A" }>, align 1
@alloc210 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"{} multi-image file(s) have been snipped.\0A" }>, align 1
@alloc211 = private unnamed_addr constant <{ [35 x i8] }> <{ [35 x i8] c"{} error(s) have been encountered.\0A" }>, align 1
@alloc212 = private unnamed_addr constant <{ [38 x i8] }> <{ [38 x i8] c"{} erroneous file(s) have been fixed.\0A" }>, align 1

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb2ff4008d34387aeE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked_mut::{closure#0}]", align 8
  %1 = bitcast [0 x i8]* %slice.0 to i8*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds i8, i8* %1, i64 %self.0
  store i8* %2, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h056207dc7af126b7E(i8* %_3.i, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hdab63c3670883c2aE"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = icmp ugt i64 %self.0, %self.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_10 = icmp ugt i64 %self.1, %slice.1
  br i1 %_10, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) #15
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb2ff4008d34387aeE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
  %_20.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_20.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #15
  unreachable

bb5:                                              ; preds = %bb4
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_20.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_20.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h33212dcb932087efE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_5 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %_5 to i64*
  store i64 0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  store i64 %self, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hdab63c3670883c2aE"(i64 %4, i64 %6, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %7, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hcee01246e152fcb3E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h7c1678e4247c4d15E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0a9dfd292a28d8cbE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h0df49f27e499953dE"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h5dc5c88af2e0ad87E"(i64 %kind.0, i64 %kind.1) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %kind.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %kind.1, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: uwtable
define void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50534b6dc4233651E"(%"alloc::vec::Vec<u8>"* align 8 %self, i8* %0, i8* %1) unnamed_addr #1 {
start:
  %iterator = alloca { i8*, i8* }, align 8
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iterator, i32 0, i32 0
  store i8* %0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iterator, i32 0, i32 1
  store i8* %1, i8** %3, align 8
  %4 = call { [0 x i8]*, i64 } @"_ZN4core5slice4iter13Iter$LT$T$GT$8as_slice17hb59f2c47c92f30b3E"({ i8*, i8* }* align 8 %iterator)
  %slice.0 = extractvalue { [0 x i8]*, i64 } %4, 0
  %slice.1 = extractvalue { [0 x i8]*, i64 } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17haf60dd4eebdc03d8E"(%"alloc::vec::Vec<u8>"* align 8 %self, [0 x i8]* %slice.0, i64 %slice.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h0b65e5be037d1449E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h3f25e09bb0dabc3eE"()
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
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1f6b8498352408c3E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h5dc5c88af2e0ad87E"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %_3.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %_3.1, i64* %12, align 8
  %13 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %13, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h279868f64c5a5835E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h66d1fc6be8c8c27cE"()
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
  %9 = load i64, i64* %8, align 8, !range !2, !noundef !1
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5885ddb56bc0cc51E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
start:
  %3 = alloca { i64, i64 }, align 8
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h20f9f4c866abb4f0E"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %_3.0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_3.1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %14 = load i64, i64* %13, align 8, !range !3, !noundef !1
  %15 = insertvalue { i64, i64 } undef, i64 %12, 0
  %16 = insertvalue { i64, i64 } %15, i64 %14, 1
  ret { i64, i64 } %16
}

; Function Attrs: inlinehint uwtable
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h937a5c7819e1e4c4E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h20f9f4c866abb4f0E"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %_3.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %_3.1, i64* %12, align 8
  %13 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %13, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hc6b7f73d6fc42ba0E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
start:
  %3 = alloca { i64, i64 }, align 8
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h5dc5c88af2e0ad87E"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %_3.0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_3.1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %14 = load i64, i64* %13, align 8, !range !3, !noundef !1
  %15 = insertvalue { i64, i64 } undef, i64 %12, 0
  %16 = insertvalue { i64, i64 } %15, i64 %14, 1
  ret { i64, i64 } %16
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics11write_bytes17h25ba0cb59ed20e21E(i8* %dst, i8 %val, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 1, %count
  call void @llvm.memset.p0i8.i64(i8* align 1 %dst, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17hc121ac7273d8e12bE(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3Ord3max17h2dca361a8e2971f7E(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17he1826b2a71aabaf1E"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !4

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
  %_7 = load i8, i8* %_3, align 1, !range !4, !noundef !1
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !5, !noundef !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, i8* %_8, align 1
  %12 = load i64, i64* %other, align 8
  store i64 %12, i64* %3, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_9, align 1
  %13 = load i64, i64* %self, align 8
  store i64 %13, i64* %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %14 = load i8, i8* %_8, align 1, !range !5, !noundef !1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !5, !noundef !1
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
define i64 @_ZN4core3cmp3max17ha614936573d6fc85E(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3cmp3Ord3max17h2dca361a8e2971f7E(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17he1826b2a71aabaf1E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
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
  %1 = load i8, i8* %0, align 1, !range !4, !noundef !1
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h04ad3ec3fe4d945aE(%"alloc::string::String"* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hef2aacdc6a5e2960E(%"alloc::string::String"* align 8 %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h6dd7d88a6239d1b2E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h2f7cb015821accc2E(%"core::fmt::Arguments"* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hbb38cf78c8be72c3E(%"core::fmt::Arguments"* align 8 %x, i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2165ef06e41cd052E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5a560d7a4e45d58fE(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h07c77236349660f8E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h8e47bd7e26b59c68E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h06f05dc29ea35319E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h51d1725681cab92bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17h62ccfbc73a97e345E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h06f05dc29ea35319E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h06f05dc29ea35319E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i32*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i32* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !6, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !6, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h07c77236349660f8E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i64*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i64* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !6, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !6, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hbb38cf78c8be72c3E(%"core::fmt::Arguments"* align 8 %x, i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"core::fmt::Arguments"* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !6, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !6, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hef2aacdc6a5e2960E(%"alloc::string::String"* align 8 %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"alloc::string::String"* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !6, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !6, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: uwtable
define zeroext i1 @_ZN4core3fmt5Write9write_fmt17haa167e5639f7d893E(%"alloc::string::String"* align 8 %0, %"core::fmt::Arguments"* %args) unnamed_addr #1 {
start:
  %_6 = alloca %"core::fmt::Arguments", align 8
  %self = alloca %"alloc::string::String"*, align 8
  store %"alloc::string::String"* %0, %"alloc::string::String"** %self, align 8
  %_3.0 = bitcast %"alloc::string::String"** %self to {}*
  %1 = bitcast %"core::fmt::Arguments"* %_6 to i8*
  %2 = bitcast %"core::fmt::Arguments"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 48, i1 false)
  %3 = call zeroext i1 @_ZN4core3fmt5write17hda8e8eb84b49cbfcE({}* align 1 %_3.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.0 to [3 x i64]*), %"core::fmt::Arguments"* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %3
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h03ee6e2bdfba67eaE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
start:
  %_24 = alloca { i64*, i64 }, align 8
  %_16 = alloca %"core::fmt::Arguments", align 8
  %_3 = alloca i8, align 1
  %_4 = icmp ult i64 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i64 %args.1, 1
  %_9 = icmp ugt i64 %pieces.1, %_12
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %2 = load i8, i8* %_3, align 1, !range !5, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %4 = bitcast { i64*, i64 }* %_24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = bitcast { i64*, i64 }* %_24 to {}**
  store {}* null, {}** %5, align 8
  %6 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %7 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %6, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %7, align 8
  %8 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %6, i32 0, i32 1
  store i64 %pieces.1, i64* %8, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8, !align !7
  %12 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %9, i32 0, i32 0
  store i64* %11, i64** %14, align 8
  %15 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %9, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %17 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %16, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %17, align 8
  %18 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %16, i32 0, i32 1
  store i64 %args.1, i64* %18, align 8
  ret void

bb4:                                              ; preds = %bb3
  call void @_ZN4core3fmt9Arguments6new_v117h03ee6e2bdfba67eaE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc26 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc72 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc177 to %"core::panic::location::Location"*)) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h9258a58a9ec9cb69E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !8, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hf5ffe09a83292f97E(i64 %_3), !range !9
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h076503618dc7bd78E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !8, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h066fc72c3d6f41a3E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %0 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i8 }, align 8
  %2 = alloca i8, align 1
  %3 = alloca { i64, i64 }, align 8
  %4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %rhs)
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
  %12 = load i8, i8* %11, align 8, !range !5, !noundef !1
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !5, !noundef !1
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
  %27 = load i8, i8* %2, align 1, !range !5, !noundef !1
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
  %32 = load i64, i64* %31, align 8, !range !10, !noundef !1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h1f5d1a7d172d3bbcE"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %12 = load i8, i8* %11, align 8, !range !5, !noundef !1
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !5, !noundef !1
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
  %27 = load i8, i8* %2, align 1, !range !5, !noundef !1
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
  %32 = load i64, i64* %31, align 8, !range !10, !noundef !1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hf5ffe09a83292f97E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !9, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h7e509b609b46f1fdE(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h3828aeeed371bdadE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0f3aed686690d42cE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hdf406ceb3fe14d03E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h056207dc7af126b7E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h29993ce22a792d23E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h55bf51902451bae0E"(%"core::fmt::Error"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61fefe8609c2c68bE"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h18d572bf9c5f6eedE"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h18d572bf9c5f6eedE"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f641aed630b95ebE"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc3f48320e13e1be7E"({ i8*, i64 }* %1) #16
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
  %7 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc3f48320e13e1be7E"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
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
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc3f48320e13e1be7E"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03273d01127982f0E"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr54drop_in_place$LT$$RF$mut$u20$alloc..string..String$GT$17h860266cf33969bd4E"(%"alloc::string::String"** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h06e0d43ca14cd886E(i8* %dst, i8 %0) unnamed_addr #0 {
start:
  %src = alloca i8, align 1
  store i8 %0, i8* %src, align 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 1, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hfc2bbffbd6be7910E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0a9dfd292a28d8cbE"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h44ac59d565f23a5eE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb5889aca00355e4aE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h0df49f27e499953dE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h7c1678e4247c4d15E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hff73b8f914faf2a6E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !5, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hc0ac898de0558847E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to i8**
  store i8* %self, i8** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbc716eee41b5d95eE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hfc5fa77e814eeb27E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hff73b8f914faf2a6E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hdf406ceb3fe14d03E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata14from_raw_parts17hfb6349eeaed822d2E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h29993ce22a792d23E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hfc5fa77e814eeb27E({}* %data_address) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0a9dfd292a28d8cbE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he98532cfc733ccabE"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %ptr.1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i8*, i64 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64 } %8, i64 %7, 1
  ret { i8*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hb3e18a8d79d51548E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbc716eee41b5d95eE"(i8* %ptr)
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
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0a9dfd292a28d8cbE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb4faa080e00f2e9eE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h93d92f1ed37dc7eaE"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0a9dfd292a28d8cbE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb5889aca00355e4aE"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0a9dfd292a28d8cbE"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h93d92f1ed37dc7eaE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hac324822ca98607dE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h321cf236a8cb408cE"(i8* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h321cf236a8cb408cE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h93d92f1ed37dc7eaE"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0a9dfd292a28d8cbE"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h8c58781789d5cc39E"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h056207dc7af126b7E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he98532cfc733ccabE"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h110457221f38e0d2E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !5, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd0595999f33d8725E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to i8**
  store i8* %self, i8** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0f3aed686690d42cE"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hdb43336309f072b5E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hfb6349eeaed822d2E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h110457221f38e0d2E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17hc4d88b6949530e88E([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %v.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %v.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !6, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts23from_utf8_unchecked_mut17hb9f7d85df47a82daE([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %v.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %v.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core4char7methods15encode_utf8_raw17h50aaef02d1a8caf7E(i32 %0, [0 x i8]* align 1 %dst.0, i64 %dst.1) unnamed_addr #0 {
start:
  %_91 = alloca i64, align 8
  %_86 = alloca i64, align 8
  %_76 = alloca [3 x { i8*, i64* }], align 8
  %_69 = alloca %"core::fmt::Arguments", align 8
  %_6 = alloca { i64, { [0 x i8]*, i64 } }, align 8
  %len = alloca i64, align 8
  %code = alloca i32, align 4
  store i32 %0, i32* %code, align 4
  %_5 = load i32, i32* %code, align 4
  %1 = call i64 @_ZN4core4char7methods8len_utf817h2de4ae7af34d03ebE(i32 %_5)
  store i64 %1, i64* %len, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = load i64, i64* %len, align 8
  %2 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hd74884eb11824379E"([0 x i8]* align 1 %dst.0, i64 %dst.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc179 to %"core::panic::location::Location"*))
  %_9.0 = extractvalue { [0 x i8]*, i64 } %2, 0
  %_9.1 = extractvalue { [0 x i8]*, i64 } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast { i64, { [0 x i8]*, i64 } }* %_6 to i64*
  store i64 %_7, i64* %3, align 8
  %4 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 0
  store [0 x i8]* %_9.0, [0 x i8]** %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 1
  store i64 %_9.1, i64* %6, align 8
  %7 = bitcast { i64, { [0 x i8]*, i64 } }* %_6 to i64*
  %8 = load i64, i64* %7, align 8
  switch i64 %8, label %bb4 [
    i64 1, label %bb3
    i64 2, label %bb5
    i64 3, label %bb6
    i64 4, label %bb7
  ]

bb4:                                              ; preds = %bb7, %bb6, %bb5, %bb3, %bb2
  %9 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5a560d7a4e45d58fE(i64* align 8 %len)
  %_77.0 = extractvalue { i8*, i64* } %9, 0
  %_77.1 = extractvalue { i8*, i64* } %9, 1
  br label %bb12

bb3:                                              ; preds = %bb2
  %10 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 0
  %_94.0 = load [0 x i8]*, [0 x i8]** %11, align 8, !nonnull !1, !align !6, !noundef !1
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 1
  %_94.1 = load i64, i64* %12, align 8
  %_14 = icmp uge i64 %_94.1, 1
  br i1 %_14, label %bb8, label %bb4

bb5:                                              ; preds = %bb2
  %13 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 0
  %_95.0 = load [0 x i8]*, [0 x i8]** %14, align 8, !nonnull !1, !align !6, !noundef !1
  %15 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 1
  %_95.1 = load i64, i64* %15, align 8
  %_17 = icmp uge i64 %_95.1, 2
  br i1 %_17, label %bb9, label %bb4

bb6:                                              ; preds = %bb2
  %16 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %17 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %16, i32 0, i32 0
  %_96.0 = load [0 x i8]*, [0 x i8]** %17, align 8, !nonnull !1, !align !6, !noundef !1
  %18 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %16, i32 0, i32 1
  %_96.1 = load i64, i64* %18, align 8
  %_20 = icmp uge i64 %_96.1, 3
  br i1 %_20, label %bb10, label %bb4

bb7:                                              ; preds = %bb2
  %19 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %20 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %19, i32 0, i32 0
  %_97.0 = load [0 x i8]*, [0 x i8]** %20, align 8, !nonnull !1, !align !6, !noundef !1
  %21 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %19, i32 0, i32 1
  %_97.1 = load i64, i64* %21, align 8
  %_23 = icmp uge i64 %_97.1, 4
  br i1 %_23, label %bb11, label %bb4

bb11:                                             ; preds = %bb7
  %22 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %22, i32 0, i32 0
  %_104.0 = load [0 x i8]*, [0 x i8]** %23, align 8, !nonnull !1, !align !6, !noundef !1
  %24 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %22, i32 0, i32 1
  %_104.1 = load i64, i64* %24, align 8
  %a = getelementptr inbounds [0 x i8], [0 x i8]* %_104.0, i64 0, i64 0
  %25 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %26 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %25, i32 0, i32 0
  %_105.0 = load [0 x i8]*, [0 x i8]** %26, align 8, !nonnull !1, !align !6, !noundef !1
  %27 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %25, i32 0, i32 1
  %_105.1 = load i64, i64* %27, align 8
  %b = getelementptr inbounds [0 x i8], [0 x i8]* %_105.0, i64 0, i64 1
  %28 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %29 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 0
  %_106.0 = load [0 x i8]*, [0 x i8]** %29, align 8, !nonnull !1, !align !6, !noundef !1
  %30 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 1
  %_106.1 = load i64, i64* %30, align 8
  %c = getelementptr inbounds [0 x i8], [0 x i8]* %_106.0, i64 0, i64 2
  %31 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %32 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %31, i32 0, i32 0
  %_107.0 = load [0 x i8]*, [0 x i8]** %32, align 8, !nonnull !1, !align !6, !noundef !1
  %33 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %31, i32 0, i32 1
  %_107.1 = load i64, i64* %33, align 8
  %d = getelementptr inbounds [0 x i8], [0 x i8]* %_107.0, i64 0, i64 3
  %_56 = load i32, i32* %code, align 4
  %_55 = lshr i32 %_56, 18
  %_54 = and i32 %_55, 7
  %_53 = trunc i32 %_54 to i8
  %34 = or i8 %_53, -16
  store i8 %34, i8* %a, align 1
  %_60 = load i32, i32* %code, align 4
  %_59 = lshr i32 %_60, 12
  %_58 = and i32 %_59, 63
  %_57 = trunc i32 %_58 to i8
  %35 = or i8 %_57, -128
  store i8 %35, i8* %b, align 1
  %_64 = load i32, i32* %code, align 4
  %_63 = lshr i32 %_64, 6
  %_62 = and i32 %_63, 63
  %_61 = trunc i32 %_62 to i8
  %36 = or i8 %_61, -128
  store i8 %36, i8* %c, align 1
  %_67 = load i32, i32* %code, align 4
  %_66 = and i32 %_67, 63
  %_65 = trunc i32 %_66 to i8
  %37 = or i8 %_65, -128
  store i8 %37, i8* %d, align 1
  br label %bb16

bb16:                                             ; preds = %bb8, %bb9, %bb10, %bb11
  %_92 = load i64, i64* %len, align 8
  store i64 %_92, i64* %_91, align 8
  %38 = load i64, i64* %_91, align 8
  %39 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6cafea2de52186ddE"([0 x i8]* align 1 %dst.0, i64 %dst.1, i64 %38, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc181 to %"core::panic::location::Location"*))
  %_89.0 = extractvalue { [0 x i8]*, i64 } %39, 0
  %_89.1 = extractvalue { [0 x i8]*, i64 } %39, 1
  br label %bb17

bb10:                                             ; preds = %bb6
  %40 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %41 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 0
  %_101.0 = load [0 x i8]*, [0 x i8]** %41, align 8, !nonnull !1, !align !6, !noundef !1
  %42 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 1
  %_101.1 = load i64, i64* %42, align 8
  %a1 = getelementptr inbounds [0 x i8], [0 x i8]* %_101.0, i64 0, i64 0
  %43 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %44 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 0
  %_102.0 = load [0 x i8]*, [0 x i8]** %44, align 8, !nonnull !1, !align !6, !noundef !1
  %45 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 1
  %_102.1 = load i64, i64* %45, align 8
  %b2 = getelementptr inbounds [0 x i8], [0 x i8]* %_102.0, i64 0, i64 1
  %46 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %47 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %46, i32 0, i32 0
  %_103.0 = load [0 x i8]*, [0 x i8]** %47, align 8, !nonnull !1, !align !6, !noundef !1
  %48 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %46, i32 0, i32 1
  %_103.1 = load i64, i64* %48, align 8
  %c3 = getelementptr inbounds [0 x i8], [0 x i8]* %_103.0, i64 0, i64 2
  %_41 = load i32, i32* %code, align 4
  %_40 = lshr i32 %_41, 12
  %_39 = and i32 %_40, 15
  %_38 = trunc i32 %_39 to i8
  %49 = or i8 %_38, -32
  store i8 %49, i8* %a1, align 1
  %_45 = load i32, i32* %code, align 4
  %_44 = lshr i32 %_45, 6
  %_43 = and i32 %_44, 63
  %_42 = trunc i32 %_43 to i8
  %50 = or i8 %_42, -128
  store i8 %50, i8* %b2, align 1
  %_48 = load i32, i32* %code, align 4
  %_47 = and i32 %_48, 63
  %_46 = trunc i32 %_47 to i8
  %51 = or i8 %_46, -128
  store i8 %51, i8* %c3, align 1
  br label %bb16

bb9:                                              ; preds = %bb5
  %52 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %53 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %52, i32 0, i32 0
  %_99.0 = load [0 x i8]*, [0 x i8]** %53, align 8, !nonnull !1, !align !6, !noundef !1
  %54 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %52, i32 0, i32 1
  %_99.1 = load i64, i64* %54, align 8
  %a4 = getelementptr inbounds [0 x i8], [0 x i8]* %_99.0, i64 0, i64 0
  %55 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %56 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %55, i32 0, i32 0
  %_100.0 = load [0 x i8]*, [0 x i8]** %56, align 8, !nonnull !1, !align !6, !noundef !1
  %57 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %55, i32 0, i32 1
  %_100.1 = load i64, i64* %57, align 8
  %b5 = getelementptr inbounds [0 x i8], [0 x i8]* %_100.0, i64 0, i64 1
  %_31 = load i32, i32* %code, align 4
  %_30 = lshr i32 %_31, 6
  %_29 = and i32 %_30, 31
  %_28 = trunc i32 %_29 to i8
  %58 = or i8 %_28, -64
  store i8 %58, i8* %a4, align 1
  %_34 = load i32, i32* %code, align 4
  %_33 = and i32 %_34, 63
  %_32 = trunc i32 %_33 to i8
  %59 = or i8 %_32, -128
  store i8 %59, i8* %b5, align 1
  br label %bb16

bb8:                                              ; preds = %bb3
  %60 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %61 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %60, i32 0, i32 0
  %_98.0 = load [0 x i8]*, [0 x i8]** %61, align 8, !nonnull !1, !align !6, !noundef !1
  %62 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %60, i32 0, i32 1
  %_98.1 = load i64, i64* %62, align 8
  %a6 = getelementptr inbounds [0 x i8], [0 x i8]* %_98.0, i64 0, i64 0
  %_25 = load i32, i32* %code, align 4
  %63 = trunc i32 %_25 to i8
  store i8 %63, i8* %a6, align 1
  br label %bb16

bb17:                                             ; preds = %bb16
  %64 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_89.0, 0
  %65 = insertvalue { [0 x i8]*, i64 } %64, i64 %_89.1, 1
  ret { [0 x i8]*, i64 } %65

bb12:                                             ; preds = %bb4
  %66 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17h62ccfbc73a97e345E(i32* align 4 %code)
  %_80.0 = extractvalue { i8*, i64* } %66, 0
  %_80.1 = extractvalue { i8*, i64* } %66, 1
  br label %bb13

bb13:                                             ; preds = %bb12
  store i64 %dst.1, i64* %_86, align 8
  %67 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5a560d7a4e45d58fE(i64* align 8 %_86)
  %_83.0 = extractvalue { i8*, i64* } %67, 0
  %_83.1 = extractvalue { i8*, i64* } %67, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  %68 = getelementptr inbounds [3 x { i8*, i64* }], [3 x { i8*, i64* }]* %_76, i64 0, i64 0
  %69 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %68, i32 0, i32 0
  store i8* %_77.0, i8** %69, align 8
  %70 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %68, i32 0, i32 1
  store i64* %_77.1, i64** %70, align 8
  %71 = getelementptr inbounds [3 x { i8*, i64* }], [3 x { i8*, i64* }]* %_76, i64 0, i64 1
  %72 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %71, i32 0, i32 0
  store i8* %_80.0, i8** %72, align 8
  %73 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %71, i32 0, i32 1
  store i64* %_80.1, i64** %73, align 8
  %74 = getelementptr inbounds [3 x { i8*, i64* }], [3 x { i8*, i64* }]* %_76, i64 0, i64 2
  %75 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %74, i32 0, i32 0
  store i8* %_83.0, i8** %75, align 8
  %76 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %74, i32 0, i32 1
  store i64* %_83.1, i64** %76, align 8
  %_73.0 = bitcast [3 x { i8*, i64* }]* %_76 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h03ee6e2bdfba67eaE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_69, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc40 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_73.0, i64 3)
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_69, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc183 to %"core::panic::location::Location"*)) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h0a77812b2205ee1cE"(i32 %self, [0 x i8]* align 1 %dst.0, i64 %dst.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core4char7methods15encode_utf8_raw17h50aaef02d1a8caf7E(i32 %self, [0 x i8]* align 1 %dst.0, i64 %dst.1)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts23from_utf8_unchecked_mut17hb9f7d85df47a82daE([0 x i8]* align 1 %_7.0, i64 %_7.1)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_5.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_5.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8len_utf817h892dc52684e13f2cE"(i32 %self) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core4char7methods8len_utf817h2de4ae7af34d03ebE(i32 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4char7methods8len_utf817h2de4ae7af34d03ebE(i32 %code) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %_2 = icmp ult i32 %code, 128
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_4 = icmp ult i32 %code, 2048
  br i1 %_4, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i64 1, i64* %0, align 8
  br label %bb9

bb9:                                              ; preds = %bb8, %bb1
  %1 = load i64, i64* %0, align 8
  ret i64 %1

bb4:                                              ; preds = %bb2
  %_6 = icmp ult i32 %code, 65536
  br i1 %_6, label %bb5, label %bb6

bb3:                                              ; preds = %bb2
  store i64 2, i64* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb3
  br label %bb9

bb6:                                              ; preds = %bb4
  store i64 4, i64* %0, align 8
  br label %bb7

bb5:                                              ; preds = %bb4
  store i64 3, i64* %0, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  br label %bb8
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17hdf83e70b6c781dd2E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hf7efdcb963b4cf93E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h076503618dc7bd78E(i64 %align), !range !8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !8, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h00ee797c7bcc4706E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !8, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h9258a58a9ec9cb69E(i64 %_3), !range !9
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h7e509b609b46f1fdE(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h2980d866db13e0b0E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h1f5d1a7d172d3bbcE"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h4e46aae09dffe493E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h61d0a700a6b35e20E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !10, !noundef !1
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h279868f64c5a5835E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc185 to %"core::panic::location::Location"*))
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !range !2, !noundef !1
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb9:                                              ; preds = %bb5
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hf7efdcb963b4cf93E(i64 %val, i64 1)
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
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17h76935b9c0314b2b5E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h00ee797c7bcc4706E({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0a9dfd292a28d8cbE"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h3c3d24ec70b7d03cE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h158f0dae40bbd693E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h2c9b735f4a6b377aE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hb6bf0c61be7a6281E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h3828aeeed371bdadE(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h158f0dae40bbd693E"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h2c9b735f4a6b377aE"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hdb43336309f072b5E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 1, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %4 = getelementptr i8, i8* %ptr, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds i8, i8* %ptr, i64 %slice.1
  store i8* %6, i8** %0, align 8
  %7 = load i8*, i8** %0, align 8
  store i8* %7, i8** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0a9dfd292a28d8cbE"(i8* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  store i8* %5, i8** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load i8*, i8** %end, align 8
  %8 = bitcast { i8*, i8* }* %2 to i8**
  store i8* %_18, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  store i8* %_21, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !nonnull !1, !noundef !1
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = insertvalue { i8*, i8* } undef, i8* %11, 0
  %15 = insertvalue { i8*, i8* } %14, i8* %13, 1
  ret { i8*, i8* } %15
}

; Function Attrs: uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice4iter13Iter$LT$T$GT$8as_slice17hb59f2c47c92f30b3E"({ i8*, i8* }* align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %_5.i = alloca i64, align 8
  %1 = bitcast { i8*, i8* }* %self to i8**
  %_4.i = load i8*, i8** %1, align 8, !nonnull !1, !noundef !1
  %_3.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %_4.i)
  %2 = bitcast { i8*, i8* }* %self to i8**
  %start1.i = load i8*, i8** %2, align 8, !nonnull !1, !noundef !1
  %_9.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %start1.i)
  %3 = icmp eq i64 1, 0
  br i1 %3, label %bb4.i, label %bb9.i

bb4.i:                                            ; preds = %start
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_13.i = load i8*, i8** %4, align 8
  %_12.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd0595999f33d8725E"(i8* %_13.i)
  %_15.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %start1.i)
  %_14.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hc0ac898de0558847E"(i8* %_15.i)
  %5 = sub i64 %_12.i, %_14.i
  store i64 %5, i64* %_5.i, align 8
  br label %"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17hc6d4ff511702bdeaE.exit"

bb9.i:                                            ; preds = %start
  %6 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_19.i = load i8*, i8** %6, align 8
  %_18.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd0595999f33d8725E"(i8* %_19.i)
  %_21.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %start1.i)
  %_20.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hc0ac898de0558847E"(i8* %_21.i)
  %7 = sub nuw i64 %_18.i, %_20.i
  store i64 %7, i64* %0, align 8
  %diff.i = load i64, i64* %0, align 8
  %8 = udiv exact i64 %diff.i, 1
  store i64 %8, i64* %_5.i, align 8
  br label %"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17hc6d4ff511702bdeaE.exit"

"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17hc6d4ff511702bdeaE.exit": ; preds = %bb9.i, %bb4.i
  %9 = load i64, i64* %_5.i, align 8
  %10 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hb6bf0c61be7a6281E(i8* %_3.i, i64 %9)
  %11 = extractvalue { [0 x i8]*, i64 } %10, 0
  %12 = extractvalue { [0 x i8]*, i64 } %10, 1
  %13 = extractvalue { [0 x i8]*, i64 } %10, 0
  %14 = extractvalue { [0 x i8]*, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17hc6d4ff511702bdeaE.exit"
  %15 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %13, 0
  %16 = insertvalue { [0 x i8]*, i64 } %15, i64 %14, 1
  ret { [0 x i8]*, i64 } %16
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6cafea2de52186ddE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h33212dcb932087efE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hd74884eb11824379E"([0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h336626add822661bE"([0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h4e46aae09dffe493E"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %_3 = load i64, i64* %5, align 8, !range !10, !noundef !1
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
  %12 = load i8, i8* %_7, align 1, !range !5, !noundef !1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !range !10, !noundef !1
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h593a43d74203777bE"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2, i64 %err.0, i64 %err.1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %5, align 8, !range !10, !noundef !1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %6 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"*
  %7 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %err.0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %err.1, i64* %9, align 8
  %10 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 1, i64* %10, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %v = load i64, i64* %11, align 8
  %12 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"*
  %13 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"* %12, i32 0, i32 1
  store i64 %v, i64* %13, align 8
  %14 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %15 = load i8, i8* %_7, align 1, !range !5, !noundef !1
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  ret void

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hdac7ac65f6b05174E"(i8* %0) unnamed_addr #0 {
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
  %v = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %9 = load i8, i8* %_7, align 1, !range !5, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h5bb3893d69dc4cfbE"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !2, !noundef !1
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
  %t.1 = load i64, i64* %10, align 8, !range !8, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !2, !noundef !1
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17hdf83e70b6c781dd2E() #15
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %16 = load i64, i64* %15, align 8, !range !2, !noundef !1
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

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h22751c06e456beaaE"(i1 zeroext %0, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %e = alloca %"core::fmt::Error", align 1
  %self = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %self, align 1
  %4 = load i8, i8* %self, align 1, !range !5, !noundef !1
  %5 = trunc i8 %4 to i1
  %_2 = zext i1 %5 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
  %_7.0 = bitcast %"core::fmt::Error"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 bitcast (<{ [43 x i8] }>* @alloc186 to [0 x i8]*), i64 43, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), %"core::panic::location::Location"* align 8 %1) #15
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb4
  %11 = bitcast { i8*, i32 }* %2 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h6159de12d59d562bE"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2) unnamed_addr #0 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { %"core::alloc::layout::LayoutError" }, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 1, i8* %_11, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
  %7 = icmp eq i64 %6, 0
  %_3 = select i1 %7, i64 1, i64 0
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %t.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %9, align 8, !range !8, !noundef !1
  %10 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"*
  %11 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"* %10, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %t.0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %t.1, i64* %13, align 8
  %14 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %15 = bitcast { %"core::alloc::layout::LayoutError" }* %_9 to %"core::alloc::layout::LayoutError"*
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h17ae173893e4dac1E"()
  %_7.0 = extractvalue { i64, i64 } %16, 0
  %_7.1 = extractvalue { i64, i64 } %16, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %17 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"*
  %18 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %_7.0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %_7.1, i64* %20, align 8
  %21 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %22 = load i8, i8* %_11, align 1, !range !5, !noundef !1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h8aa59da39c83fa15E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %1, i64 %2, i64* align 8 %op) unnamed_addr #0 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { %"core::alloc::AllocError" }, align 1
  %self = alloca { i8*, i64 }, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %1, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 1, i8* %_11, align 1
  %5 = bitcast { i8*, i64 }* %self to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_3 = select i1 %7, i64 1, i64 0
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  %t.0 = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %9, align 8
  %10 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"*
  %11 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"* %10, i32 0, i32 1
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 0
  store i8* %t.0, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 1
  store i64 %t.1, i64* %13, align 8
  %14 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %15 = bitcast { %"core::alloc::AllocError" }* %_9 to %"core::alloc::AllocError"*
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h9e4b4e190925426eE"(i64* align 8 %op)
  %_7.0 = extractvalue { i64, i64 } %16, 0
  %_7.1 = extractvalue { i64, i64 } %16, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %17 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %18 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %_7.0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %_7.1, i64* %20, align 8
  %21 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %22 = load i8, i8* %_11, align 1, !range !5, !noundef !1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h98fe100815c4c604E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { i64, i64 }, align 8
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  store i8 1, i8* %_11, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !1
  %7 = sub i64 %6, -9223372036854775807
  %8 = icmp eq i64 %7, 0
  %_3 = select i1 %8, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = bitcast { i64, i64 }* %2 to %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok"*
  %10 = bitcast %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok"* %9 to {}*
  %11 = bitcast { i64, i64 }* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 -9223372036854775807, i64* %12, align 8
  br label %bb7

bb1:                                              ; preds = %start
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  store i8 0, i8* %_11, align 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !range !2, !noundef !1
  %21 = call { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17hde2e003399e04f3fE"(i64 %18, i64 %20)
  %_7.0 = extractvalue { i64, i64 } %21, 0
  %_7.1 = extractvalue { i64, i64 } %21, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  store i64 %_7.0, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %_7.1, i64* %23, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %24 = load i8, i8* %_11, align 1, !range !5, !noundef !1
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %29 = load i64, i64* %28, align 8, !range !3, !noundef !1
  %30 = insertvalue { i64, i64 } undef, i64 %27, 0
  %31 = insertvalue { i64, i64 } %30, i64 %29, 1
  ret { i64, i64 } %31

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha8652d9824a851fdE"(%"alloc::string::String"** align 8 %self, i32 %c) unnamed_addr #1 {
start:
  %_5 = load %"alloc::string::String"*, %"alloc::string::String"** %self, align 8, !nonnull !1, !align !7, !noundef !1
  %0 = call zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17hc0a47a2c3e5f3b98E"(%"alloc::string::String"* align 8 %_5, i32 %c)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h4bd8ce01500ed128E"(%"alloc::string::String"** align 8 %self, %"core::fmt::Arguments"* %args) unnamed_addr #1 {
start:
  %_4 = alloca %"core::fmt::Arguments", align 8
  %_5 = load %"alloc::string::String"*, %"alloc::string::String"** %self, align 8, !nonnull !1, !align !7, !noundef !1
  %0 = bitcast %"core::fmt::Arguments"* %_4 to i8*
  %1 = bitcast %"core::fmt::Arguments"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 48, i1 false)
  %2 = call zeroext i1 @_ZN4core3fmt5Write9write_fmt17haa167e5639f7d893E(%"alloc::string::String"* align 8 %_5, %"core::fmt::Arguments"* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha170b38141c52703E"(%"alloc::string::String"** align 8 %self, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %_5 = load %"alloc::string::String"*, %"alloc::string::String"** %self, align 8, !nonnull !1, !align !7, !noundef !1
  %0 = call zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h49e86bee41a15ed3E"(%"alloc::string::String"* align 8 %_5, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h20f9f4c866abb4f0E"(i64 %t.0, i64 %t.1) unnamed_addr #1 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %t.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h3f25e09bb0dabc3eE"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h66d1fc6be8c8c27cE"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8e46c4044b7e45f1E"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hcee01246e152fcb3E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9c30ccdcf30f0501E"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h5dc5c88af2e0ad87E"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17hc0a47a2c3e5f3b98E"(%"alloc::string::String"* align 8 %self, i32 %c) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  call void @_ZN5alloc6string6String4push17h520607310cdc8981E(%"alloc::string::String"* align 8 %self, i32 %c)
  br label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  %1 = load i8, i8* %0, align 1, !range !5, !noundef !1
  %2 = trunc i8 %1 to i1
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h49e86bee41a15ed3E"(%"alloc::string::String"* align 8 %self, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  call void @_ZN5alloc6string6String8push_str17hcb05daf37301d94cE(%"alloc::string::String"* align 8 %self, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  %1 = load i8, i8* %0, align 1, !range !5, !noundef !1
  %2 = trunc i8 %1 to i1
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17hfd126ab48e6c5dd4E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h80f4f74785df9f6eE"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hc03953c1b09dddb4E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0) unnamed_addr #0 {
start:
  %_1.0 = load i8*, i8** getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* bitcast (<{ [16 x i8] }>* @anon.22a24f58c4c4e95161f7aeb0caeab480.0 to { i8*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !noundef !1
  %_1.1 = load i64, i64* getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* bitcast (<{ [16 x i8] }>* @anon.22a24f58c4c4e95161f7aeb0caeab480.0 to { i8*, i64 }*), i32 0, i32 1), align 8
  %1 = bitcast %"alloc::vec::Vec<u8>"* %0 to { i8*, i64 }*
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  store i8* %_1.0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  store i64 %_1.1, i64* %3, align 8
  %4 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %0, i32 0, i32 1
  store i64 0, i64* %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hba68b9623336457eE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h4de481207615f25bE"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbc716eee41b5d95eE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17haf60dd4eebdc03d8E"(%"alloc::vec::Vec<u8>"* align 8 %self, [0 x i8]* %other.0, i64 %other.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0ec211532b1dd872E"(%"alloc::vec::Vec<u8>"* align 8 %self, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  %len = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h48d30f7785130bbdE"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_11 = bitcast [0 x i8]* %other.0 to i8*
  %_14 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hba68b9623336457eE"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb3

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds i8, i8* %_14, i64 %len
  store i8* %1, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hc121ac7273d8e12bE(i8* %_11, i8* %_3.i, i64 %other.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %2 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %3 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = add i64 %4, %other.1
  store i64 %5, i64* %2, align 8
  ret void
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h732331f35e57a80cE"(%"alloc::vec::Vec<u8>"* align 8 %self, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h3c3d24ec70b7d03cE"([0 x i8]* align 1 %other.0, i64 %other.1)
  %_4.0 = extractvalue { i8*, i8* } %0, 0
  %_4.1 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50534b6dc4233651E"(%"alloc::vec::Vec<u8>"* align 8 %self, i8* %_4.0, i8* %_4.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h48d30f7785130bbdE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h958c68380a42d207E"(%"alloc::vec::Vec<u8>"* align 8 %self, i8 %value) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca i64, align 8
  %1 = alloca i8*, align 8
  %2 = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  store i8 1, i8* %_17, align 1
  %3 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %3, align 8
  %_6 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %0, align 8
  %6 = load i64, i64* %0, align 8
  br label %bb1

bb10:                                             ; preds = %cleanup
  %7 = load i8, i8* %_17, align 1, !range !5, !noundef !1
  %8 = trunc i8 %7 to i1
  br i1 %8, label %bb9, label %bb8

cleanup:                                          ; preds = %bb6, %bb2, %bb4
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb10

bb1:                                              ; preds = %start
  %_3 = icmp eq i64 %_4, %6
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %_11 = invoke i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hba68b9623336457eE"(%"alloc::vec::Vec<u8>"* align 8 %self)
          to label %bb5 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_8 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %14 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_9 = load i64, i64* %14, align 8
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hddfa1c0ed84be6eeE"({ i8*, i64 }* align 8 %_8, i64 %_9)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  br label %bb4

bb5:                                              ; preds = %bb4
  %15 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_13 = load i64, i64* %15, align 8
  %16 = getelementptr inbounds i8, i8* %_11, i64 %_13
  store i8* %16, i8** %1, align 8
  %_3.i = load i8*, i8** %1, align 8
  br label %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17had7acce827af50a8E.exit"

"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17had7acce827af50a8E.exit": ; preds = %bb5
  br label %bb6

bb6:                                              ; preds = %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17had7acce827af50a8E.exit"
  store i8 0, i8* %_17, align 1
  invoke void @_ZN4core3ptr5write17h06e0d43ca14cd886E(i8* %_3.i, i8 %value)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %17 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %18 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %17, align 8
  ret void

bb8:                                              ; preds = %bb9, %bb10
  %21 = bitcast { i8*, i32 }* %2 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

bb9:                                              ; preds = %bb10
  br label %bb8
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hb41381758d92bb21E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h4de481207615f25bE"({ i8*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbc716eee41b5d95eE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0ec211532b1dd872E"(%"alloc::vec::Vec<u8>"* align 8 %self, i64 %additional) unnamed_addr #1 {
start:
  %_4 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h81b3d9ea8c6d1d90E"({ i8*, i64 }* align 8 %_4, i64 %_5, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h768f1ef17a20f9e4E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h00ee797c7bcc4706E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h1e38f7e523ae5ebdE(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h00ee797c7bcc4706E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h13656f3e5c826172E(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17h76935b9c0314b2b5E({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !8, !noundef !1
  %8 = call i8* @_ZN5alloc5alloc5alloc17h1e38f7e523ae5ebdE(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !8, !noundef !1
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h768f1ef17a20f9e4E(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hb3e18a8d79d51548E"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hdac7ac65f6b05174E"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h267aa650ed072921E"(i8* %_16)
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
  %val = load i8*, i8** %_15, align 8, !nonnull !1, !noundef !1
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h8c58781789d5cc39E"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h0b65e5be037d1449E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc191 to %"core::panic::location::Location"*))
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
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h8c58781789d5cc39E"(i8* %_7, i64 0)
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
define internal { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h7264527559eda700E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1, i64 %2, i64 %3, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %4 = alloca i8*, align 8
  %_53 = alloca { i8*, i64 }, align 8
  %_31 = alloca i8*, align 8
  %5 = alloca { i8*, i64 }, align 8
  %new_layout = alloca { i64, i64 }, align 8
  %old_layout = alloca { i64, i64 }, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %2, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %3, i64* %9, align 8
  %_6 = call i64 @_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE({ i64, i64 }* align 8 %old_layout)
  br label %bb1

bb1:                                              ; preds = %start
  %10 = icmp eq i64 %_6, 0
  br i1 %10, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_9.0 = load i64, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_9.1 = load i64, i64* %12, align 8, !range !8, !noundef !1
  %13 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h13656f3e5c826172E(%"alloc::alloc::Global"* align 1 %self, i64 %_9.0, i64 %_9.1, i1 zeroext %zeroed)
  store { i8*, i64 } %13, { i8*, i64 }* %5, align 8
  br label %bb3

bb4:                                              ; preds = %bb1
  %_14 = call i64 @_ZN4core5alloc6layout6Layout5align17h00ee797c7bcc4706E({ i64, i64 }* align 8 %old_layout)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_16 = call i64 @_ZN4core5alloc6layout6Layout5align17h00ee797c7bcc4706E({ i64, i64 }* align 8 %new_layout)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_13 = icmp eq i64 %_14, %_16
  br i1 %_13, label %bb7, label %bb8

bb8:                                              ; preds = %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_56.0 = load i64, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_56.1 = load i64, i64* %15, align 8, !range !8, !noundef !1
  %16 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h13656f3e5c826172E(%"alloc::alloc::Global"* align 1 %self, i64 %_56.0, i64 %_56.1, i1 zeroext %zeroed)
  %_54.0 = extractvalue { i8*, i64 } %16, 0
  %_54.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb26

bb7:                                              ; preds = %bb6
  %new_size = call i64 @_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE({ i64, i64 }* align 8 %new_layout)
  br label %bb9

bb9:                                              ; preds = %bb7
  %_23 = call i64 @_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE({ i64, i64 }* align 8 %old_layout)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_21 = icmp uge i64 %new_size, %_23
  call void @llvm.assume(i1 %_21)
  br label %bb11

bb11:                                             ; preds = %bb10
  %_26 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %ptr)
  br label %bb12

bb12:                                             ; preds = %bb11
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_28.0 = load i64, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_28.1 = load i64, i64* %18, align 8, !range !8, !noundef !1
  %raw_ptr = call i8* @_ZN5alloc5alloc7realloc17h1f77f81545378231E(i8* %_26, i64 %_28.0, i64 %_28.1, i64 %new_size)
  br label %bb13

bb13:                                             ; preds = %bb12
  %_33 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hb3e18a8d79d51548E"(i8* %raw_ptr)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_32 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hdac7ac65f6b05174E"(i8* %_33)
  br label %bb15

bb15:                                             ; preds = %bb14
  %19 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h267aa650ed072921E"(i8* %_32)
  store i8* %19, i8** %_31, align 8
  br label %bb16

bb16:                                             ; preds = %bb15
  %20 = bitcast i8** %_31 to {}**
  %21 = load {}*, {}** %20, align 8
  %22 = icmp eq {}* %21, null
  %_36 = select i1 %22, i64 1, i64 0
  switch i64 %_36, label %bb18 [
    i64 0, label %bb17
    i64 1, label %bb19
  ]

bb18:                                             ; preds = %bb16
  unreachable

bb17:                                             ; preds = %bb16
  %val = load i8*, i8** %_31, align 8, !nonnull !1, !noundef !1
  br i1 %zeroed, label %bb21, label %bb24

bb19:                                             ; preds = %bb16
  %23 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h0b65e5be037d1449E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc193 to %"core::panic::location::Location"*))
  store { i8*, i64 } %23, { i8*, i64 }* %5, align 8
  br label %bb20

bb20:                                             ; preds = %bb19
  br label %bb37

bb37:                                             ; preds = %bb31, %bb20
  br label %bb38

bb24:                                             ; preds = %bb23, %bb17
  %24 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h8c58781789d5cc39E"(i8* %val, i64 %new_size)
  %_48.0 = extractvalue { i8*, i64 } %24, 0
  %_48.1 = extractvalue { i8*, i64 } %24, 1
  br label %bb25

bb21:                                             ; preds = %bb17
  %25 = getelementptr inbounds i8, i8* %raw_ptr, i64 %_6
  store i8* %25, i8** %4, align 8
  %_3.i = load i8*, i8** %4, align 8
  br label %bb22

bb22:                                             ; preds = %bb21
  %_45 = sub i64 %new_size, %_6
  call void @_ZN4core10intrinsics11write_bytes17h25ba0cb59ed20e21E(i8* %_3.i, i8 0, i64 %_45)
  br label %bb23

bb23:                                             ; preds = %bb22
  br label %bb24

bb25:                                             ; preds = %bb24
  %26 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  store i8* %_48.0, i8** %26, align 8
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  store i64 %_48.1, i64* %27, align 8
  br label %bb36

bb36:                                             ; preds = %bb3, %bb35, %bb25
  br label %bb38

bb26:                                             ; preds = %bb8
  %28 = call { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h01c7ea9348a3bb91E"(i8* %_54.0, i64 %_54.1)
  store { i8*, i64 } %28, { i8*, i64 }* %_53, align 8
  br label %bb27

bb27:                                             ; preds = %bb26
  %29 = bitcast { i8*, i64 }* %_53 to {}**
  %30 = load {}*, {}** %29, align 8
  %31 = icmp eq {}* %30, null
  %_58 = select i1 %31, i64 1, i64 0
  switch i64 %_58, label %bb29 [
    i64 0, label %bb28
    i64 1, label %bb30
  ]

bb29:                                             ; preds = %bb27
  unreachable

bb28:                                             ; preds = %bb27
  %32 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_53, i32 0, i32 0
  %val.0 = load i8*, i8** %32, align 8, !nonnull !1, !noundef !1
  %33 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_53, i32 0, i32 1
  %val.1 = load i64, i64* %33, align 8
  %_64 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %ptr)
  br label %bb32

bb30:                                             ; preds = %bb27
  %34 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h0b65e5be037d1449E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc195 to %"core::panic::location::Location"*))
  store { i8*, i64 } %34, { i8*, i64 }* %5, align 8
  br label %bb31

bb31:                                             ; preds = %bb30
  br label %bb37

bb38:                                             ; preds = %bb36, %bb37
  %35 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = insertvalue { i8*, i64 } undef, i8* %36, 0
  %40 = insertvalue { i8*, i64 } %39, i64 %38, 1
  ret { i8*, i64 } %40

bb32:                                             ; preds = %bb28
  %_66 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hac324822ca98607dE"(i8* %val.0, i64 %val.1)
  br label %bb33

bb33:                                             ; preds = %bb32
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hc121ac7273d8e12bE(i8* %_64, i8* %_66, i64 %_6)
  br label %bb34

bb34:                                             ; preds = %bb33
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_72.0 = load i64, i64* %41, align 8
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_72.1 = load i64, i64* %42, align 8, !range !8, !noundef !1
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h8afc34ea7db096eaE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %_72.0, i64 %_72.1)
  br label %bb35

bb35:                                             ; preds = %bb34
  %43 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  store i8* %val.0, i8** %43, align 8
  %44 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  store i64 %val.1, i64* %44, align 8
  br label %bb36

bb3:                                              ; preds = %bb2
  br label %bb36
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17h32e91bd45c5de2d9E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h00ee797c7bcc4706E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc7realloc17h1f77f81545378231E(i8* %ptr, i64 %0, i64 %1, i64 %new_size) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_5 = call i64 @_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core5alloc6layout6Layout5align17h00ee797c7bcc4706E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_realloc(i8* %ptr, i64 %_5, i64 %_7, i64 %new_size) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc6string6String3new17hc876247d86763729E(%"alloc::string::String"* sret(%"alloc::string::String") %0) unnamed_addr #0 {
start:
  %_1 = alloca %"alloc::vec::Vec<u8>", align 8
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hc03953c1b09dddb4E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %_1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"alloc::string::String"* %0 to %"alloc::vec::Vec<u8>"*
  %2 = bitcast %"alloc::vec::Vec<u8>"* %1 to i8*
  %3 = bitcast %"alloc::vec::Vec<u8>"* %_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc6string6String4push17h520607310cdc8981E(%"alloc::string::String"* align 8 %self, i32 %ch) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %_17 = alloca [4 x i8], align 1
  %_3 = call i64 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8len_utf817h892dc52684e13f2cE"(i32 %ch)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i64 %_3, 1
  br i1 %1, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_5 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  %_6 = trunc i32 %ch to i8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h958c68380a42d207E"(%"alloc::vec::Vec<u8>"* align 8 %_5, i8 %_6)
  br label %bb4

bb2:                                              ; preds = %bb1
  %_8 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  %2 = getelementptr inbounds [4 x i8], [4 x i8]* %_17, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 4, i1 false)
  %_14.0 = bitcast [4 x i8]* %_17 to [0 x i8]*
  %3 = call { [0 x i8]*, i64 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h0a77812b2205ee1cE"(i32 %ch, [0 x i8]* align 1 %_14.0, i64 4)
  %_12.0 = extractvalue { [0 x i8]*, i64 } %3, 0
  %_12.1 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb5

bb5:                                              ; preds = %bb2
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %_12.0, [0 x i8]** %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %_12.1, i64* %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %7 = load [0 x i8]*, [0 x i8]** %6, align 8, !nonnull !1, !align !6, !noundef !1
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  %_10.0 = extractvalue { [0 x i8]*, i64 } %11, 0
  %_10.1 = extractvalue { [0 x i8]*, i64 } %11, 1
  br label %bb6

bb6:                                              ; preds = %bb5
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h732331f35e57a80cE"(%"alloc::vec::Vec<u8>"* align 8 %_8, [0 x i8]* align 1 %_10.0, i64 %_10.1)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb4, %bb7
  ret void

bb4:                                              ; preds = %bb3
  br label %bb8
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc6string6String8push_str17hcb05daf37301d94cE(%"alloc::string::String"* align 8 %self, [0 x i8]* align 1 %string.0, i64 %string.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %_3 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %string.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %string.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !6, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  %_5.0 = extractvalue { [0 x i8]*, i64 } %8, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h732331f35e57a80cE"(%"alloc::vec::Vec<u8>"* align 8 %_3, [0 x i8]* align 1 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17h16c09fdffc195f25E(i64 %alloc_size) unnamed_addr #0 {
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
  %8 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %9 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9c30ccdcf30f0501E"(i64 %6, i64 %8)
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
  %15 = load i64, i64* %14, align 8, !range !3, !noundef !1
  %16 = insertvalue { i64, i64 } undef, i64 %13, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: noinline uwtable
define void @_ZN5alloc7raw_vec11finish_grow17hcc2419b379c4d24cE(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, %"alloc::alloc::Global"* align 1 %alloc) unnamed_addr #3 {
start:
  %_41 = alloca i64*, align 8
  %old_layout = alloca { i64, i64 }, align 8
  %memory = alloca { i8*, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %_6 = alloca %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>", align 8
  %_5 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>", align 8
  %new_layout = alloca { i64, i64 }, align 8
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h6159de12d59d562bE"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %_6, i64 %new_layout.0, i64 %new_layout.1)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hff6a1216e6552ed8E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %_5, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to i64*
  %_9 = load i64, i64* %1, align 8, !range !10, !noundef !1
  switch i64 %_9, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %2 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"*
  %3 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %val.0 = load i64, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %val.1 = load i64, i64* %5, align 8, !range !8, !noundef !1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %val.0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %val.1, i64* %7, align 8
  %_15 = call i64 @_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE({ i64, i64 }* align 8 %new_layout)
  br label %bb7

bb5:                                              ; preds = %bb2
  %8 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %9 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %residual.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %residual.1 = load i64, i64* %11, align 8, !range !2, !noundef !1
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1f6b8498352408c3E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc197 to %"core::panic::location::Location"*))
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb13, %bb6
  br label %bb24

bb7:                                              ; preds = %bb3
  %12 = call { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17h16c09fdffc195f25E(i64 %_15)
  %_14.0 = extractvalue { i64, i64 } %12, 0
  %_14.1 = extractvalue { i64, i64 } %12, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %13 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h37b5c6849643209cE"(i64 %_14.0, i64 %_14.1)
  store { i64, i64 } %13, { i64, i64 }* %_13, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !range !3, !noundef !1
  %16 = sub i64 %15, -9223372036854775807
  %17 = icmp eq i64 %16, 0
  %_17 = select i1 %17, i64 0, i64 1
  switch i64 %_17, label %bb11 [
    i64 0, label %bb10
    i64 1, label %bb12
  ]

bb11:                                             ; preds = %bb9
  unreachable

bb10:                                             ; preds = %bb9
  %18 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, i32 0, i32 1
  %19 = load i64, i64* %18, align 8, !range !2, !noundef !1
  %20 = icmp eq i64 %19, 0
  %_22 = select i1 %20, i64 0, i64 1
  %21 = icmp eq i64 %_22, 1
  br i1 %21, label %bb15, label %bb14

bb12:                                             ; preds = %bb9
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 0
  %residual.01 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %residual.12 = load i64, i64* %23, align 8, !range !2, !noundef !1
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h937a5c7819e1e4c4E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.01, i64 %residual.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc199 to %"core::panic::location::Location"*))
  br label %bb13

bb13:                                             ; preds = %bb12
  br label %bb23

bb24:                                             ; preds = %bb22, %bb23
  ret void

bb15:                                             ; preds = %bb10
  %24 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %25 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %24 to { i8*, { i64, i64 } }*
  %26 = bitcast { i8*, { i64, i64 } }* %25 to i8**
  %ptr = load i8*, i8** %26, align 8, !nonnull !1, !noundef !1
  %27 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %28 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %27 to { i8*, { i64, i64 } }*
  %29 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %28, i32 0, i32 1
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8, !range !8, !noundef !1
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %_30 = call i64 @_ZN4core5alloc6layout6Layout5align17h00ee797c7bcc4706E({ i64, i64 }* align 8 %old_layout)
  br label %bb16

bb14:                                             ; preds = %bb10
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_39.0 = load i64, i64* %36, align 8
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_39.1 = load i64, i64* %37, align 8, !range !8, !noundef !1
  %38 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hbd9de4132f34e8e9E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_39.0, i64 %_39.1)
  store { i8*, i64 } %38, { i8*, i64 }* %memory, align 8
  br label %bb20

bb20:                                             ; preds = %bb14
  br label %bb21

bb21:                                             ; preds = %bb19, %bb20
  %39 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %memory, i32 0, i32 0
  %_40.0 = load i8*, i8** %39, align 8
  %40 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %memory, i32 0, i32 1
  %_40.1 = load i64, i64* %40, align 8
  %41 = bitcast i64** %_41 to { i64, i64 }**
  store { i64, i64 }* %new_layout, { i64, i64 }** %41, align 8
  %42 = load i64*, i64** %_41, align 8, !nonnull !1, !align !7, !noundef !1
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h8aa59da39c83fa15E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %_40.0, i64 %_40.1, i64* align 8 %42)
  br label %bb22

bb16:                                             ; preds = %bb15
  %_32 = call i64 @_ZN4core5alloc6layout6Layout5align17h00ee797c7bcc4706E({ i64, i64 }* align 8 %new_layout)
  br label %bb17

bb17:                                             ; preds = %bb16
  %_29 = icmp eq i64 %_30, %_32
  call void @llvm.assume(i1 %_29)
  br label %bb18

bb18:                                             ; preds = %bb17
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_36.0 = load i64, i64* %43, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_36.1 = load i64, i64* %44, align 8, !range !8, !noundef !1
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_37.0 = load i64, i64* %45, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_37.1 = load i64, i64* %46, align 8, !range !8, !noundef !1
  %47 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h88ee6a82a9a739bcE"(%"alloc::alloc::Global"* align 1 %alloc, i8* %ptr, i64 %_36.0, i64 %_36.1, i64 %_37.0, i64 %_37.1)
  store { i8*, i64 } %47, { i8*, i64 }* %memory, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  br label %bb21

bb22:                                             ; preds = %bb21
  br label %bb24
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h17ae173893e4dac1E"() unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h9e4b4e190925426eE"(i64* align 8 %0) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  %1 = bitcast i64** %_1 to { i64, i64 }**
  %_5 = load { i64, i64 }*, { i64, i64 }** %1, align 8, !nonnull !1, !align !7, !noundef !1
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %_4.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %_4.1 = load i64, i64* %3, align 8, !range !8, !noundef !1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  store i64 %_4.0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %_4.1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %9 = load i64, i64* %8, align 8, !range !2, !noundef !1
  %10 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9c30ccdcf30f0501E"(i64 %7, i64 %9)
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %start
  %13 = insertvalue { i64, i64 } undef, i64 %11, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc7raw_vec14handle_reserve17h00905c3baad8378eE(i64 %result.0, i64 %result.1) unnamed_addr #0 {
start:
  %_2 = alloca { i64, i64 }, align 8
  %0 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h98fe100815c4c604E"(i64 %result.0, i64 %result.1)
  store { i64, i64 } %0, { i64, i64 }* %_2, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %2 = load i64, i64* %1, align 8, !range !3, !noundef !1
  %3 = sub i64 %2, -9223372036854775807
  %4 = icmp eq i64 %3, 0
  %_6 = select i1 %4, i64 0, i64 1
  switch i64 %_6, label %bb4 [
    i64 0, label %bb2
    i64 1, label %bb3
  ]

bb4:                                              ; preds = %bb3, %bb1
  unreachable

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
  %7 = icmp eq i64 %6, 0
  %_5 = select i1 %7, i64 0, i64 1
  switch i64 %_5, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb3
  call void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #15
  unreachable

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 0
  %layout.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %layout.1 = load i64, i64* %9, align 8, !range !8, !noundef !1
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17hde2e003399e04f3fE"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %e = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = call { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17hfd126ab48e6c5dd4E({ i64, i64 }* align 8 %e)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17h4225c940b0dcd5a9E"({ i8*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  store i64 %2, i64* %0, align 8
  %3 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %4 = sub i64 %3, %len
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = icmp ugt i64 %additional, %4
  ret i1 %5
}

; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hf0a550cf321c5da4E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_9 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 1, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %2, align 8
  %_4 = icmp eq i64 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %4 = load i8, i8* %_2, align 1, !range !5, !noundef !1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h2980d866db13e0b0E(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h5bb3893d69dc4cfbE"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc201 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h44ac59d565f23a5eE"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8e46c4044b7e45f1E"(i8* %_11)
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

; Function Attrs: uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h6dfc5079a9ca33acE"({ i8*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #1 {
start:
  %_30 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %_28 = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", align 8
  %_27 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>", align 8
  %_13 = alloca { i64, i64 }, align 8
  %_9 = alloca %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>", align 8
  %_8 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>", align 8
  %_6 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i64 1, 0
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %2 = bitcast { i64, i64 }* %_6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9c30ccdcf30f0501E"(i64 %5, i64 %7)
  %_5.0 = extractvalue { i64, i64 } %8, 0
  %_5.1 = extractvalue { i64, i64 } %8, 1
  br label %bb3

bb4:                                              ; preds = %bb1
  %9 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h066fc72c3d6f41a3E"(i64 %len, i64 %additional)
  %_10.0 = extractvalue { i64, i64 } %9, 0
  %_10.1 = extractvalue { i64, i64 } %9, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %10 = bitcast { i64, i64 }* %_13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !range !2, !noundef !1
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h593a43d74203777bE"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %_9, i64 %_10.0, i64 %_10.1, i64 %13, i64 %15)
  br label %bb6

bb6:                                              ; preds = %bb5
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hce07e955294baf06E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %_8, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  %16 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to i64*
  %_14 = load i64, i64* %16, align 8, !range !10, !noundef !1
  switch i64 %_14, label %bb9 [
    i64 0, label %bb8
    i64 1, label %bb10
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb8:                                              ; preds = %bb7
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"* %17, i32 0, i32 1
  %val = load i64, i64* %18, align 8
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_20 = load i64, i64* %19, align 8
  %_19 = mul i64 %_20, 2
  %cap = call i64 @_ZN4core3cmp3max17ha614936573d6fc85E(i64 %_19, i64 %val)
  br label %bb12

bb10:                                             ; preds = %bb7
  %20 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %21 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %20, i32 0, i32 1
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %residual.0 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %residual.1 = load i64, i64* %23, align 8, !range !2, !noundef !1
  %24 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hc6b7f73d6fc42ba0E"(i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc203 to %"core::panic::location::Location"*))
  store { i64, i64 } %24, { i64, i64 }* %0, align 8
  br label %bb11

bb11:                                             ; preds = %bb10
  br label %bb23

bb23:                                             ; preds = %bb21, %bb11
  br label %bb24

bb12:                                             ; preds = %bb8
  %cap1 = call i64 @_ZN4core3cmp3max17ha614936573d6fc85E(i64 8, i64 %cap)
  br label %bb13

bb13:                                             ; preds = %bb12
  %25 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h2980d866db13e0b0E(i64 %cap1)
  %new_layout.0 = extractvalue { i64, i64 } %25, 0
  %new_layout.1 = extractvalue { i64, i64 } %25, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hf0a550cf321c5da4E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_30, { i8*, i64 }* align 8 %self)
  br label %bb15

bb15:                                             ; preds = %bb14
  %_33 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @_ZN5alloc7raw_vec11finish_grow17hcc2419b379c4d24cE(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %_28, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30, %"alloc::alloc::Global"* align 1 %_33)
  br label %bb16

bb16:                                             ; preds = %bb15
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2a7cdde478bacf06E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %_27, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %_28)
  br label %bb17

bb17:                                             ; preds = %bb16
  %26 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to i64*
  %_34 = load i64, i64* %26, align 8, !range !10, !noundef !1
  switch i64 %_34, label %bb19 [
    i64 0, label %bb18
    i64 1, label %bb20
  ]

bb19:                                             ; preds = %bb17
  unreachable

bb18:                                             ; preds = %bb17
  %27 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"*
  %28 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"* %27, i32 0, i32 1
  %29 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %28, i32 0, i32 0
  %val.0 = load i8*, i8** %29, align 8, !nonnull !1, !noundef !1
  %30 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %28, i32 0, i32 1
  %val.1 = load i64, i64* %30, align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hfc94f7569d0648e0E"({ i8*, i64 }* align 8 %self, i8* %val.0, i64 %val.1, i64 %cap1)
  br label %bb22

bb20:                                             ; preds = %bb17
  %31 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %32 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %31, i32 0, i32 1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %residual.02 = load i64, i64* %33, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %residual.13 = load i64, i64* %34, align 8, !range !2, !noundef !1
  %35 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5885ddb56bc0cc51E"(i64 %residual.02, i64 %residual.13, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc205 to %"core::panic::location::Location"*))
  store { i64, i64 } %35, { i64, i64 }* %0, align 8
  br label %bb21

bb21:                                             ; preds = %bb20
  br label %bb23

bb24:                                             ; preds = %bb3, %bb22, %bb23
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %39 = load i64, i64* %38, align 8, !range !3, !noundef !1
  %40 = insertvalue { i64, i64 } undef, i64 %37, 0
  %41 = insertvalue { i64, i64 } %40, i64 %39, 1
  ret { i64, i64 } %41

bb22:                                             ; preds = %bb18
  %42 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %42, i8 0, i64 16, i1 false)
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 -9223372036854775807, i64* %43, align 8
  br label %bb24

bb3:                                              ; preds = %bb2
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_5.0, i64* %44, align 8
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_5.1, i64* %45, align 8
  br label %bb24
}

; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hfc94f7569d0648e0E"({ i8*, i64 }* align 8 %self, i8* %ptr.0, i64 %ptr.1, i64 %cap) unnamed_addr #1 {
start:
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb4faa080e00f2e9eE"(i8* %ptr.0, i64 %ptr.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hfc2bbffbd6be7910E"(i8* %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  %0 = bitcast { i8*, i64 }* %self to i8**
  store i8* %_4, i8** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %cap, i64* %1, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hddfa1c0ed84be6eeE"({ i8*, i64 }* align 8 %self, i64 %len) unnamed_addr #3 {
start:
  %0 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h6dfc5079a9ca33acE"({ i8*, i64 }* align 8 %self, i64 %len, i64 1)
  %_4.0 = extractvalue { i64, i64 } %0, 0
  %_4.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc7raw_vec14handle_reserve17h00905c3baad8378eE(i64 %_4.0, i64 %_4.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h4de481207615f25bE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h7c1678e4247c4d15E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h81b3d9ea8c6d1d90E"({ i8*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #0 {
start:
  %_4 = call zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17h4225c940b0dcd5a9E"({ i8*, i64 }* align 8 %self, i64 %len, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb4

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb2:                                              ; preds = %bb1
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h68e3f07ba1f2e061E"({ i8*, i64 }* align 8 %self, i64 %len, i64 %additional)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: cold uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h68e3f07ba1f2e061E"({ i8*, i64 }* align 8 %slf, i64 %len, i64 %additional) unnamed_addr #4 {
start:
  %0 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h6dfc5079a9ca33acE"({ i8*, i64 }* align 8 %slf, i64 %len, i64 %additional)
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc7raw_vec14handle_reserve17h00905c3baad8378eE(i64 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h6dd7d88a6239d1b2E"(%"alloc::string::String"* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h1aa7b3093c346895E"(%"alloc::string::String"* align 8 %self)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1 %_5.0, i64 %_5.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h8afc34ea7db096eaE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !8, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h32e91bd45c5de2d9E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h88ee6a82a9a739bcE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h7264527559eda700E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hbd9de4132f34e8e9E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h13656f3e5c826172E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h1aa7b3093c346895E"(%"alloc::string::String"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  %0 = call { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h798b51288ddac40cE"(%"alloc::vec::Vec<u8>"* align 8 %_5)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17hc4d88b6949530e88E([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h0bdb358444d58f0bE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8, !range !8, !noundef !1
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f641aed630b95ebE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hba68b9623336457eE"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h056207dc7af126b7E(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h798b51288ddac40cE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hb41381758d92bb21E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hb6bf0c61be7a6281E(i8* %_2, i64 %_4)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03273d01127982f0E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hf0a550cf321c5da4E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !2, !noundef !1
  %2 = icmp eq i64 %1, 0
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i64, i64 } }*
  %6 = bitcast { i8*, { i64, i64 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 8, !nonnull !1, !noundef !1
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !8, !noundef !1
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h8afc34ea7db096eaE"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h80f4f74785df9f6eE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8, !range !2, !noundef !1
  %3 = icmp eq i64 %2, 0
  %_2 = select i1 %3, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %4 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 0, i64* %5, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %6 = call { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h0bdb358444d58f0bE"({ i64, i64 }* align 8 %self)
  %_5.0 = extractvalue { i64, i64 } %6, 0
  %_5.1 = extractvalue { i64, i64 } %6, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_5.0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_5.1, i64* %8, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !2, !noundef !1
  %13 = insertvalue { i64, i64 } undef, i64 %10, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h01c7ea9348a3bb91E"(i8* %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  %2 = alloca { i8*, i64 }, align 8
  %self = alloca { i8*, i64 }, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i8*, i64 }* %self to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_2 = select i1 %7, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  %v.0 = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %v.1 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %v.0, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %v.1, i64* %11, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %12 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"* %_6 to %"core::alloc::AllocError"*
  %13 = bitcast { i8*, i64 }* %2 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %14 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %13 to %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"*
  %15 = bitcast { i8*, i64 }* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = bitcast { i8*, i64 }* %2 to {}**
  store {}* null, {}** %16, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %17 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { i8*, i64 } undef, i8* %18, 0
  %22 = insertvalue { i8*, i64 } %21, i64 %20, 1
  ret { i8*, i64 } %22
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h267aa650ed072921E"(i8* %0) unnamed_addr #0 {
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
  %v = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
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
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2a7cdde478bacf06E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %0, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !10, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 0
  %v.0 = load i8*, i8** %4, align 8, !nonnull !1, !noundef !1
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %v.1 = load i64, i64* %5, align 8
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"*
  %7 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 0
  store i8* %v.0, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 1
  store i64 %v.1, i64* %9, align 8
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to i64*
  store i64 0, i64* %10, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %11 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %12 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %11, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !range !2, !noundef !1
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to i64*
  store i64 1, i64* %25, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h37b5c6849643209cE"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !1
  %7 = sub i64 %6, -9223372036854775807
  %8 = icmp eq i64 %7, 0
  %_2 = select i1 %8, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = bitcast { i64, i64 }* %2 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue"*
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue"* %9 to {}*
  %11 = bitcast { i64, i64 }* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 -9223372036854775807, i64* %12, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !range !2, !noundef !1
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %26 = load i64, i64* %25, align 8, !range !3, !noundef !1
  %27 = insertvalue { i64, i64 } undef, i64 %24, 0
  %28 = insertvalue { i64, i64 } %27, i64 %26, 1
  ret { i64, i64 } %28
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h61d0a700a6b35e20E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !10, !noundef !1
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
  %14 = load i64, i64* %13, align 8, !range !10, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hce07e955294baf06E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %0, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !10, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"* %2, i32 0, i32 1
  %v = load i64, i64* %3, align 8
  %4 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"*
  %5 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"* %4, i32 0, i32 1
  store i64 %v, i64* %5, align 8
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to i64*
  store i64 0, i64* %6, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %7 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"*
  %8 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"* %7, i32 0, i32 1
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  %e.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  %e.1 = load i64, i64* %10, align 8, !range !2, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %12, align 8
  %13 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %14 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %13, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8, !range !2, !noundef !1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hff6a1216e6552ed8E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %0, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !10, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %v.0 = load i64, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %v.1 = load i64, i64* %5, align 8, !range !8, !noundef !1
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"*
  %7 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %v.0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %v.1, i64* %9, align 8
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to i64*
  store i64 0, i64* %10, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %11 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"*
  %12 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"* %11, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !range !2, !noundef !1
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to i64*
  store i64 1, i64* %25, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h336626add822661bE"([0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %slice.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %slice.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: uwtable
define void @usr_printf([0 x i8]* align 1 %fmt.0, i64 %fmt.1, %"core::fmt::Arguments"* %args) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_27 = alloca [1 x { i8*, i64* }], align 8
  %_20 = alloca %"core::fmt::Arguments", align 8
  %_15 = alloca [1 x { i8*, i64* }], align 8
  %_8 = alloca %"core::fmt::Arguments", align 8
  %output = alloca %"alloc::string::String", align 8
  call void @_ZN5alloc6string6String3new17hc876247d86763729E(%"alloc::string::String"* sret(%"alloc::string::String") %output)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h2f7cb015821accc2E(%"core::fmt::Arguments"* align 8 %args)
          to label %bb2 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61fefe8609c2c68bE"(%"alloc::string::String"* %output) #16
          to label %bb11 unwind label %abort

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb3, %bb2, %bb1
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb10

bb2:                                              ; preds = %bb1
  %_16.0 = extractvalue { i8*, i64* } %1, 0
  %_16.1 = extractvalue { i8*, i64* } %1, 1
  %7 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_15, i64 0, i64 0
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %7, i32 0, i32 0
  store i8* %_16.0, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %7, i32 0, i32 1
  store i64* %_16.1, i64** %9, align 8
  %_12.0 = bitcast [1 x { i8*, i64* }]* %_15 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117h03ee6e2bdfba67eaE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_8, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc73 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 %_12.0, i64 1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_5 = invoke zeroext i1 @_ZN4core3fmt5Write9write_fmt17haa167e5639f7d893E(%"alloc::string::String"* align 8 %output, %"core::fmt::Arguments"* %_8)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h22751c06e456beaaE"(i1 zeroext %_5, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc207 to %"core::panic::location::Location"*))
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %10 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h04ad3ec3fe4d945aE(%"alloc::string::String"* align 8 %output)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_28.0 = extractvalue { i8*, i64* } %10, 0
  %_28.1 = extractvalue { i8*, i64* } %10, 1
  %11 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_27, i64 0, i64 0
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 0
  store i8* %_28.0, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 1
  store i64* %_28.1, i64** %13, align 8
  %_24.0 = bitcast [1 x { i8*, i64* }]* %_27 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117h03ee6e2bdfba67eaE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_20, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc16 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_24.0, i64 1)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_20)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61fefe8609c2c68bE"(%"alloc::string::String"* %output)
  br label %bb9

abort:                                            ; preds = %bb10
  %14 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb11:                                             ; preds = %bb10
  %15 = bitcast { i8*, i32 }* %0 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: uwtable
define i32 @opng_finalize() unnamed_addr #1 {
start:
  %_85 = alloca [1 x { i8*, i64* }], align 8
  %_78 = alloca %"core::fmt::Arguments", align 8
  %_67 = alloca [1 x { i8*, i64* }], align 8
  %_60 = alloca %"core::fmt::Arguments", align 8
  %_49 = alloca [1 x { i8*, i64* }], align 8
  %_42 = alloca %"core::fmt::Arguments", align 8
  %_31 = alloca [1 x { i8*, i64* }], align 8
  %_24 = alloca %"core::fmt::Arguments", align 8
  %_14 = alloca %"core::fmt::Arguments", align 8
  %_2 = alloca i8, align 1
  %_1 = alloca i8, align 1
  %0 = load i8, i8* getelementptr inbounds (%OpngOptions, %OpngOptions* bitcast (<{ [1 x i8] }>* @_ZN13opng_finalize7OPTIONS17hbe06d177902bae3bE to %OpngOptions*), i32 0, i32 0), align 1, !range !5, !noundef !1
  %_3 = trunc i8 %0 to i1
  br i1 %_3, label %bb4, label %bb5

bb5:                                              ; preds = %start
  %_6 = load i32, i32* getelementptr inbounds (%OpngSummary, %OpngSummary* bitcast (<{ [16 x i8] }>* @_ZN13opng_finalize7SUMMARY17h17ce3ada329b8d7dE to %OpngSummary*), i32 0, i32 3), align 1
  %_5 = icmp ugt i32 %_6, 0
  %1 = zext i1 %_5 to i8
  store i8 %1, i8* %_2, align 1
  br label %bb6

bb4:                                              ; preds = %start
  store i8 1, i8* %_2, align 1
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %2 = load i8, i8* %_2, align 1, !range !5, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb1, label %bb2

bb2:                                              ; preds = %bb6
  %_9 = load i32, i32* getelementptr inbounds (%OpngSummary, %OpngSummary* bitcast (<{ [16 x i8] }>* @_ZN13opng_finalize7SUMMARY17h17ce3ada329b8d7dE to %OpngSummary*), i32 0, i32 1), align 1
  %_8 = icmp ugt i32 %_9, 0
  %4 = zext i1 %_8 to i8
  store i8 %4, i8* %_1, align 1
  br label %bb3

bb1:                                              ; preds = %bb6
  store i8 1, i8* %_1, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %_1, align 1, !range !5, !noundef !1
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb7, label %bb24

bb24:                                             ; preds = %bb23, %bb20, %bb16, %bb3
  store i8 0, i8* getelementptr inbounds (%OpngEngine, %OpngEngine* bitcast (<{ [1 x i8] }>* @_ZN13opng_finalize6ENGINE17h536520dcb14333a4E to %OpngEngine*), i32 0, i32 0), align 1
  ret i32 0

bb7:                                              ; preds = %bb3
  call void @_ZN4core3fmt9Arguments6new_v117h03ee6e2bdfba67eaE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_14, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{}>* @alloc72 to [0 x { [0 x i8]*, i64 }]*), i64 0, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc72 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb8

bb8:                                              ; preds = %bb7
  call void @usr_printf([0 x i8]* align 1 bitcast (<{ [17 x i8] }>* @alloc208 to [0 x i8]*), i64 17, %"core::fmt::Arguments"* %_14)
  br label %bb9

bb9:                                              ; preds = %bb8
  %7 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h8e47bd7e26b59c68E(i32* align 4 getelementptr inbounds (%OpngSummary, %OpngSummary* bitcast (<{ [16 x i8] }>* @_ZN13opng_finalize7SUMMARY17h17ce3ada329b8d7dE to %OpngSummary*), i32 0, i32 0))
  %_32.0 = extractvalue { i8*, i64* } %7, 0
  %_32.1 = extractvalue { i8*, i64* } %7, 1
  br label %bb10

bb10:                                             ; preds = %bb9
  %8 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_31, i64 0, i64 0
  %9 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %8, i32 0, i32 0
  store i8* %_32.0, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %8, i32 0, i32 1
  store i64* %_32.1, i64** %10, align 8
  %_28.0 = bitcast [1 x { i8*, i64* }]* %_31 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h03ee6e2bdfba67eaE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_24, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc73 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 %_28.0, i64 1)
  br label %bb11

bb11:                                             ; preds = %bb10
  call void @usr_printf([0 x i8]* align 1 bitcast (<{ [32 x i8] }>* @alloc209 to [0 x i8]*), i64 32, %"core::fmt::Arguments"* %_24)
  br label %bb12

bb12:                                             ; preds = %bb11
  %_37 = load i32, i32* getelementptr inbounds (%OpngSummary, %OpngSummary* bitcast (<{ [16 x i8] }>* @_ZN13opng_finalize7SUMMARY17h17ce3ada329b8d7dE to %OpngSummary*), i32 0, i32 3), align 1
  %_36 = icmp ugt i32 %_37, 0
  br i1 %_36, label %bb13, label %bb16

bb16:                                             ; preds = %bb15, %bb12
  %_55 = load i32, i32* getelementptr inbounds (%OpngSummary, %OpngSummary* bitcast (<{ [16 x i8] }>* @_ZN13opng_finalize7SUMMARY17h17ce3ada329b8d7dE to %OpngSummary*), i32 0, i32 1), align 1
  %_54 = icmp ugt i32 %_55, 0
  br i1 %_54, label %bb17, label %bb24

bb13:                                             ; preds = %bb12
  %11 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h8e47bd7e26b59c68E(i32* align 4 getelementptr inbounds (%OpngSummary, %OpngSummary* bitcast (<{ [16 x i8] }>* @_ZN13opng_finalize7SUMMARY17h17ce3ada329b8d7dE to %OpngSummary*), i32 0, i32 3))
  %_50.0 = extractvalue { i8*, i64* } %11, 0
  %_50.1 = extractvalue { i8*, i64* } %11, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  %12 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_49, i64 0, i64 0
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %12, i32 0, i32 0
  store i8* %_50.0, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %12, i32 0, i32 1
  store i64* %_50.1, i64** %14, align 8
  %_46.0 = bitcast [1 x { i8*, i64* }]* %_49 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h03ee6e2bdfba67eaE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_42, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc73 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 %_46.0, i64 1)
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @usr_printf([0 x i8]* align 1 bitcast (<{ [42 x i8] }>* @alloc210 to [0 x i8]*), i64 42, %"core::fmt::Arguments"* %_42)
  br label %bb16

bb17:                                             ; preds = %bb16
  %15 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h8e47bd7e26b59c68E(i32* align 4 getelementptr inbounds (%OpngSummary, %OpngSummary* bitcast (<{ [16 x i8] }>* @_ZN13opng_finalize7SUMMARY17h17ce3ada329b8d7dE to %OpngSummary*), i32 0, i32 1))
  %_68.0 = extractvalue { i8*, i64* } %15, 0
  %_68.1 = extractvalue { i8*, i64* } %15, 1
  br label %bb18

bb18:                                             ; preds = %bb17
  %16 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_67, i64 0, i64 0
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 0
  store i8* %_68.0, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 1
  store i64* %_68.1, i64** %18, align 8
  %_64.0 = bitcast [1 x { i8*, i64* }]* %_67 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h03ee6e2bdfba67eaE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_60, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc73 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 %_64.0, i64 1)
  br label %bb19

bb19:                                             ; preds = %bb18
  call void @usr_printf([0 x i8]* align 1 bitcast (<{ [35 x i8] }>* @alloc211 to [0 x i8]*), i64 35, %"core::fmt::Arguments"* %_60)
  br label %bb20

bb20:                                             ; preds = %bb19
  %_73 = load i32, i32* getelementptr inbounds (%OpngSummary, %OpngSummary* bitcast (<{ [16 x i8] }>* @_ZN13opng_finalize7SUMMARY17h17ce3ada329b8d7dE to %OpngSummary*), i32 0, i32 2), align 1
  %_72 = icmp ugt i32 %_73, 0
  br i1 %_72, label %bb21, label %bb24

bb21:                                             ; preds = %bb20
  %19 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h8e47bd7e26b59c68E(i32* align 4 getelementptr inbounds (%OpngSummary, %OpngSummary* bitcast (<{ [16 x i8] }>* @_ZN13opng_finalize7SUMMARY17h17ce3ada329b8d7dE to %OpngSummary*), i32 0, i32 2))
  %_86.0 = extractvalue { i8*, i64* } %19, 0
  %_86.1 = extractvalue { i8*, i64* } %19, 1
  br label %bb22

bb22:                                             ; preds = %bb21
  %20 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_85, i64 0, i64 0
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 0
  store i8* %_86.0, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 1
  store i64* %_86.1, i64** %22, align 8
  %_82.0 = bitcast [1 x { i8*, i64* }]* %_85 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h03ee6e2bdfba67eaE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_78, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc73 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 %_82.0, i64 1)
  br label %bb23

bb23:                                             ; preds = %bb22
  call void @usr_printf([0 x i8]* align 1 bitcast (<{ [38 x i8] }>* @alloc212 to [0 x i8]*), i64 38, %"core::fmt::Arguments"* %_78)
  br label %bb24
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_1 = call i32 @opng_finalize()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2165ef06e41cd052E"(%"core::fmt::Arguments"* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h51d1725681cab92bE"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt5write17hda8e8eb84b49cbfcE({}* align 1, [3 x i64]* align 8, %"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #10

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: uwtable
declare zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h747599ac67d37615E"(%"core::fmt::Error"* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #12

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #12

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #12

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #12

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #13

; Function Attrs: noreturn uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() unnamed_addr #14

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { cold uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #11 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #13 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #14 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #15 = { noreturn }
attributes #16 = { noinline }
attributes #17 = { noinline noreturn nounwind }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 0, i64 -9223372036854775807}
!3 = !{i64 0, i64 -9223372036854775806}
!4 = !{i8 -1, i8 2}
!5 = !{i8 0, i8 2}
!6 = !{i64 1}
!7 = !{i64 8}
!8 = !{i64 1, i64 -9223372036854775807}
!9 = !{i64 1, i64 0}
!10 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_finalize.rs.bc", hash: (2697796824, 206552090, 1626027019, 4013738225, 1640133014))
^1 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd0595999f33d8725E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 11794103220547904
^2 = gv: (name: "alloc193", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^74)))) ; guid = 43772816601832106
^3 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h44ac59d565f23a5eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^30), (callee: ^24))))) ; guid = 105387871810209874
^4 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$8as_slice17hb59f2c47c92f30b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, calls: ((callee: ^96), (callee: ^1), (callee: ^22), (callee: ^200))))) ; guid = 239685405472694483
^5 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1f6b8498352408c3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^52))))) ; guid = 371918967069936083
^6 = gv: (name: "alloc208", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 388489362890242652
^7 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0a9dfd292a28d8cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 413760389620153309
^8 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h3c3d24ec70b7d03cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^114))))) ; guid = 443264262106372309
^9 = gv: (name: "_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h49e86bee41a15ed3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^124))))) ; guid = 509065553432917566
^10 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^11 = gv: (name: "_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE") ; guid = 682884734678583306
^12 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h2c9b735f4a6b377aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 705247703526267518
^13 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h2980d866db13e0b0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^175), (callee: ^181), (callee: ^32), (callee: ^198), (callee: ^145)), refs: (^26)))) ; guid = 885892708901498074
^14 = gv: (name: "_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h1aa7b3093c346895E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^123), (callee: ^21))))) ; guid = 931890383489777856
^15 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^16 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h00ee797c7bcc4706E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^165), (callee: ^94))))) ; guid = 1057636681658083910
^17 = gv: (name: "_ZN4core5alloc6layout6Layout4size17hde193edcee07f62aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 1108832025712341735
^18 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h5bb3893d69dc4cfbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^27)), refs: (^174)))) ; guid = 1158996973099420991
^19 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb4faa080e00f2e9eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^56), (callee: ^7))))) ; guid = 1344196611433386861
^20 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^21 = gv: (name: "_ZN4core3str8converts19from_utf8_unchecked17hc4d88b6949530e88E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 13))) ; guid = 1527237270946979878
^22 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hc0ac898de0558847E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 1623704466580245080
^23 = gv: (name: "_ZN13opng_finalize6ENGINE17h536520dcb14333a4E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 1659177868672679409
^24 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h0df49f27e499953dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1718056417673689885
^25 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h88ee6a82a9a739bcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^131))))) ; guid = 1766724562789824126
^26 = gv: (name: "alloc185", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^132)))) ; guid = 1855132312531770541
^27 = gv: (name: "_ZN4core4hint21unreachable_unchecked17hdf83e70b6c781dd2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 1906067353668133580
^28 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^100, ^53, ^205)))) ; guid = 1960938783923584603
^29 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h593a43d74203777bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34))) ; guid = 2033141176428217784
^30 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb5889aca00355e4aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^96), (callee: ^7))))) ; guid = 2101333427918657283
^31 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17haf60dd4eebdc03d8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^153), (callee: ^146), (callee: ^64), (callee: ^50))))) ; guid = 2141040689667208350
^32 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h61d0a700a6b35e20E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 2400166993967147249
^33 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2421013559772578939
^34 = gv: (name: "_ZN5alloc11collections15TryReserveError4kind17hfd126ab48e6c5dd4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^54))))) ; guid = 2495296520656982633
^35 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^36 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61fefe8609c2c68bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^220))))) ; guid = 2627731664294270791
^37 = gv: (name: "alloc181", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^163)))) ; guid = 3096782942903652562
^38 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hbb38cf78c8be72c3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 3297926738156952149
^39 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6cafea2de52186ddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^202))))) ; guid = 3402370819560839443
^40 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17h768f1ef17a20f9e4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^17), (callee: ^16), (callee: ^20))))) ; guid = 3584248766369699653
^41 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9c30ccdcf30f0501E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^52))))) ; guid = 3956302730991346203
^42 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc3f48320e13e1be7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^93))))) ; guid = 3967021397420427672
^43 = gv: (name: "_ZN5alloc6string6String3new17hc876247d86763729E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8, calls: ((callee: ^70))))) ; guid = 4056978025035369672
^44 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hbd9de4132f34e8e9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^159))))) ; guid = 4146906110027141658
^45 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17h76935b9c0314b2b5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^16), (callee: ^7))))) ; guid = 4217252447530124368
^46 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17hde2e003399e04f3fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^34))))) ; guid = 4282336787541259333
^47 = gv: (name: "_ZN4core3fmt10ArgumentV113new_upper_hex17h62ccfbc73a97e345E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^67)), refs: (^97)))) ; guid = 4499049499476135892
^48 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^49 = gv: (name: "_ZN4core4char7methods15encode_utf8_raw17h50aaef02d1a8caf7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 216, calls: ((callee: ^162), (callee: ^177), (callee: ^68), (callee: ^39), (callee: ^47), (callee: ^109), (callee: ^191)), refs: (^182, ^37, ^28, ^197)))) ; guid = 4779780225930839378
^50 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17hc121ac7273d8e12bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 4826247515850443746
^51 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h66d1fc6be8c8c27cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 4929289202700500720
^52 = gv: (name: "_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h5dc5c88af2e0ad87E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 5049385629909555705
^53 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5053466557274246225
^54 = gv: (name: "_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h80f4f74785df9f6eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 28, calls: ((callee: ^117))))) ; guid = 5093370285691589257
^55 = gv: (name: "alloc212", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5297654555485994770
^56 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h93d92f1ed37dc7eaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 5316683795628899215
^57 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hcee01246e152fcb3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^88), (callee: ^7))))) ; guid = 5372794690784999320
^58 = gv: (name: "_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2165ef06e41cd052E") ; guid = 5412852833668672798
^59 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h066fc72c3d6f41a3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 5536398318003321428
^60 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h68e3f07ba1f2e061E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^137), (callee: ^156))))) ; guid = 5577783196711036598
^61 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hfc2bbffbd6be7910E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^7))))) ; guid = 5723113685179667275
^62 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^33)))) ; guid = 5759813722483376420
^63 = gv: (name: "_ZN4core3str8converts23from_utf8_unchecked_mut17hb9f7d85df47a82daE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 5800746570581792862
^64 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hba68b9623336457eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^79), (callee: ^106))))) ; guid = 5810857313139175513
^65 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h01c7ea9348a3bb91E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37))) ; guid = 5840301238435377112
^66 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hfc94f7569d0648e0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^19), (callee: ^96), (callee: ^61))))) ; guid = 5857946192170077202
^67 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h06f05dc29ea35319E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 6117160593811714768
^68 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h5a560d7a4e45d58fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^87)), refs: (^15)))) ; guid = 6173911554052293736
^69 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h8afc34ea7db096eaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^17), (callee: ^96), (callee: ^166))))) ; guid = 6263622144891807296
^70 = gv: (name: "_ZN5alloc3vec12Vec$LT$T$GT$3new17hc03953c1b09dddb4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, refs: (^105)))) ; guid = 6269380765370622935
^71 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^72 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^168, ^188, ^155, ^112)))) ; guid = 6402556944641224059
^73 = gv: (name: "_ZN13opng_finalize7SUMMARY17h17ce3ada329b8d7dE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 6416832723165247177
^74 = gv: (name: "alloc194", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6565201770081605666
^75 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^76 = gv: (name: "_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h55bf51902451bae0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 6583499633263579023
^77 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb2ff4008d34387aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^199))))) ; guid = 6588192060448983843
^78 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17h4225c940b0dcd5a9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 6625171490454669486
^79 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h4de481207615f25bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^88))))) ; guid = 6718071106216709593
^80 = gv: (name: "alloc209", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6751247543569231464
^81 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^82 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$8len_utf817h892dc52684e13f2cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^162))))) ; guid = 6849296935361091369
^83 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hdf406ceb3fe14d03E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 6939543909259329745
^84 = gv: (name: "_ZN13opng_finalize7OPTIONS17hbe06d177902bae3bE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 6997836822860442198
^85 = gv: (name: "alloc205", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 7203063674660028383
^86 = gv: (name: "alloc72", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7503140665542255706
^87 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h07c77236349660f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 7693249260024017200
^88 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h7c1678e4247c4d15E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^96))))) ; guid = 7704560257760676715
^89 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h8aa59da39c83fa15E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^179))))) ; guid = 7821616715822517858
^90 = gv: (name: "alloc207", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^219)))) ; guid = 7918058678433876721
^91 = gv: (name: "alloc210", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7931380365563077002
^92 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hc6b7f73d6fc42ba0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^52))))) ; guid = 8043689104817094067
^93 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03273d01127982f0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^143), (callee: ^69))))) ; guid = 8111339555324128253
^94 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h7e509b609b46f1fdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 8115171482054361897
^95 = gv: (name: "_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17hc0a47a2c3e5f3b98E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^126))))) ; guid = 8326475261030355878
^96 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc0295277f02cd74eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 8378984685355330605
^97 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E") ; guid = 8401561645110503840
^98 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8e46c4044b7e45f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^57))))) ; guid = 8424413956596978824
^99 = gv: (name: "_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h6dd7d88a6239d1b2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^14), (callee: ^184))))) ; guid = 8455806484150330576
^100 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8550090264695253147
^101 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8727569143885619918
^102 = gv: (name: "_ZN4core3fmt5write17hda8e8eb84b49cbfcE") ; guid = 8840068324628476335
^103 = gv: (name: "alloc191", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^74)))) ; guid = 8954766007893463841
^104 = gv: (name: "alloc204", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9186744720832256847
^105 = gv: (name: "anon.22a24f58c4c4e95161f7aeb0caeab480.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9187082388691294172
^106 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbc716eee41b5d95eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^207), (callee: ^208))))) ; guid = 9324024742197711758
^107 = gv: (name: "alloc176", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9407556995428371412
^108 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hf5ffe09a83292f97E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 9549932645098957891
^109 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h03ee6e2bdfba67eaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^109), (callee: ^191)), refs: (^86, ^62, ^110)))) ; guid = 9593973565179697340
^110 = gv: (name: "alloc177", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^107)))) ; guid = 9853220176783530784
^111 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0f3aed686690d42cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 9935977360534713539
^112 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha170b38141c52703E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^9))))) ; guid = 10017917524601917423
^113 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^114 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h158f0dae40bbd693E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^12), (callee: ^150), (callee: ^7))))) ; guid = 10397615282844956111
^115 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hac324822ca98607dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^157), (callee: ^96))))) ; guid = 10441846900035224115
^116 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h17ae173893e4dac1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 10489523386233670833
^117 = gv: (name: "_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h0bdb358444d58f0bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7))) ; guid = 10521059733136852979
^118 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2a7cdde478bacf06E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 10647767154235615937
^119 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^86, ^101)))) ; guid = 10714235621739725100
^120 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h8c58781789d5cc39E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^96), (callee: ^199), (callee: ^142))))) ; guid = 10943215557471033798
^121 = gv: (name: "_ZN5alloc7raw_vec11finish_grow17hcc2419b379c4d24cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 117, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^218), (callee: ^206), (callee: ^17), (callee: ^5), (callee: ^164), (callee: ^209), (callee: ^133), (callee: ^16), (callee: ^44), (callee: ^89), (callee: ^25)), refs: (^187, ^210)))) ; guid = 10963804473560841995
^122 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^123 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h798b51288ddac40cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^130), (callee: ^200))))) ; guid = 11000706679298141151
^124 = gv: (name: "_ZN5alloc6string6String8push_str17hcb05daf37301d94cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18, calls: ((callee: ^128))))) ; guid = 11041777171684273302
^125 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h267aa650ed072921E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 11085319865922659788
^126 = gv: (name: "_ZN5alloc6string6String4push17h520607310cdc8981E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 36, calls: ((callee: ^82), (callee: ^204), (callee: ^190), (callee: ^128))))) ; guid = 11091039145847825387
^127 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17hdac7ac65f6b05174E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 11282027011794477506
^128 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h732331f35e57a80cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^8), (callee: ^129))))) ; guid = 11415964142186158832
^129 = gv: (name: "_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50534b6dc4233651E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^4), (callee: ^31))))) ; guid = 11504817558490703292
^130 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hb41381758d92bb21E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^79), (callee: ^106))))) ; guid = 11529491669511809981
^131 = gv: (name: "_ZN5alloc5alloc6Global9grow_impl17h7264527559eda700E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 134, calls: ((callee: ^17), (callee: ^159), (callee: ^16), (callee: ^96), (callee: ^189), (callee: ^201), (callee: ^127), (callee: ^125), (callee: ^215), (callee: ^120), (callee: ^214), (callee: ^65), (callee: ^115), (callee: ^50), (callee: ^69)), refs: (^2, ^158)))) ; guid = 11558069625358234051
^132 = gv: (name: "alloc184", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11626633467585298291
^133 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h937a5c7819e1e4c4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^172))))) ; guid = 11690155128138849340
^134 = gv: (name: "_ZN4core3ptr5write17h06e0d43ca14cd886E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 11777805429069381794
^135 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h22751c06e456beaaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 30, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^122)), refs: (^174, ^193, ^176)))) ; guid = 12092789982249773047
^136 = gv: (name: "alloc73", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^86)))) ; guid = 12138738129943754990
^137 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h6dfc5079a9ca33acE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 114, calls: ((callee: ^41), (callee: ^59), (callee: ^29), (callee: ^169), (callee: ^203), (callee: ^92), (callee: ^13), (callee: ^143), (callee: ^121), (callee: ^118), (callee: ^66), (callee: ^171)), refs: (^149, ^85)))) ; guid = 12378599740326126135
^138 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h3828aeeed371bdadE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^111), (callee: ^83))))) ; guid = 12604241269108508311
^139 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f641aed630b95ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^64), (callee: ^199))))) ; guid = 12651172233548612335
^140 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h8e47bd7e26b59c68E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^67)), refs: (^178)))) ; guid = 12677363685285961552
^141 = gv: (name: "alloc201", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 12689262216571382253
^142 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he98532cfc733ccabE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 12754026747468094938
^143 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hf0a550cf321c5da4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^13), (callee: ^18), (callee: ^3), (callee: ^98)), refs: (^141)))) ; guid = 12796426132276233851
^144 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h29993ce22a792d23E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 12931223502091234324
^145 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hf7efdcb963b4cf93E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^212))))) ; guid = 13011518539942516905
^146 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h48d30f7785130bbdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 13026298901328419870
^147 = gv: (name: "usr_printf", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 53, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^43), (callee: ^183), (callee: ^36), (callee: ^109), (callee: ^186), (callee: ^135), (callee: ^161), (callee: ^211), (callee: ^225)), refs: (^174, ^136, ^90, ^119)))) ; guid = 13082329727166584461
^148 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hfb6349eeaed822d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 13095971420595033909
^149 = gv: (name: "alloc203", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 13134215137432157893
^150 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hdb43336309f072b5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^148), (callee: ^192))))) ; guid = 13152515001114640623
^151 = gv: (name: "opng_finalize", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 105, calls: ((callee: ^109), (callee: ^147), (callee: ^140)), refs: (^86, ^6, ^73, ^136, ^80, ^91, ^221, ^55, readonly ^84, writeonly ^23)))) ; guid = 13312923863925658807
^152 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hef2aacdc6a5e2960E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 13381027692431457910
^153 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0ec211532b1dd872E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^195))))) ; guid = 13453838040657493334
^154 = gv: (name: "_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h336626add822661bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 13457901594520135887
^155 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h4bd8ce01500ed128E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^186))))) ; guid = 13493667116582340652
^156 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve17h00905c3baad8378eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 25, calls: ((callee: ^173), (callee: ^11), (callee: ^224))))) ; guid = 13642429506013466351
^157 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h321cf236a8cb408cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^56), (callee: ^7))))) ; guid = 13643865078454154222
^158 = gv: (name: "alloc195", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^74)))) ; guid = 13688299703325574360
^159 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17h13656f3e5c826172E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^17), (callee: ^45), (callee: ^213), (callee: ^40), (callee: ^201), (callee: ^127), (callee: ^125), (callee: ^120), (callee: ^215)), refs: (^103)))) ; guid = 13714961117736115386
^160 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hdab63c3670883c2aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^194), (callee: ^77), (callee: ^216))))) ; guid = 14001038975295959731
^161 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h04ad3ec3fe4d945aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^152)), refs: (^99)))) ; guid = 14018276282234852961
^162 = gv: (name: "_ZN4core4char7methods8len_utf817h2de4ae7af34d03ebE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 19))) ; guid = 14103218366699633840
^163 = gv: (name: "alloc182", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14133135842620100226
^164 = gv: (name: "_ZN5alloc7raw_vec11alloc_guard17h16c09fdffc195f25E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 32, calls: ((callee: ^41))))) ; guid = 14172167973676626444
^165 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h9258a58a9ec9cb69E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^108))))) ; guid = 14206426407389420623
^166 = gv: (name: "_ZN5alloc5alloc7dealloc17h32e91bd45c5de2d9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^17), (callee: ^16), (callee: ^48))))) ; guid = 14245568199944645093
^167 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^168 = gv: (name: "_ZN4core3ptr54drop_in_place$LT$$RF$mut$u20$alloc..string..String$GT$17h860266cf33969bd4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 14380446049274819993
^169 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hce07e955294baf06E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 38))) ; guid = 14525778002231608036
^170 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hddfa1c0ed84be6eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^137), (callee: ^156))))) ; guid = 14560190653645721874
^171 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5885ddb56bc0cc51E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^172))))) ; guid = 14658348490176314859
^172 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h20f9f4c866abb4f0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 14675939134729761295
^173 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h98fe100815c4c604E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^46))))) ; guid = 14760055169042172626
^174 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^175 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h1f5d1a7d172d3bbcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 14955877213606083037
^176 = gv: (name: "alloc186", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15192514608425875528
^177 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hd74884eb11824379E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^154))))) ; guid = 15242830897084525121
^178 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h51d1725681cab92bE") ; guid = 15262257252216737227
^179 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h9e4b4e190925426eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^41))))) ; guid = 15410453517939664615
^180 = gv: (name: "__rust_realloc") ; guid = 15507136812573830794
^181 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h4e46aae09dffe493E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 15560676420717229739
^182 = gv: (name: "alloc179", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^163)))) ; guid = 15567545279565082393
^183 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h2f7cb015821accc2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^38)), refs: (^58)))) ; guid = 15677269175563897005
^184 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^185 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^151))))) ; guid = 15822663052811949562
^186 = gv: (name: "_ZN4core3fmt5Write9write_fmt17haa167e5639f7d893E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^102)), refs: (^72)))) ; guid = 15846380596023465495
^187 = gv: (name: "alloc197", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 15866734805482935989
^188 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha8652d9824a851fdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^95))))) ; guid = 16017839934886025030
^189 = gv: (name: "_ZN5alloc5alloc7realloc17h1f77f81545378231E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^17), (callee: ^16), (callee: ^180))))) ; guid = 16025359773358967371
^190 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h0a77812b2205ee1cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^49), (callee: ^63))))) ; guid = 16038387565583080628
^191 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^192 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h110457221f38e0d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 16084226737677828890
^193 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^76, ^223)))) ; guid = 16234488947794415528
^194 = gv: (name: "_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E") ; guid = 16237673211549674151
^195 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h81b3d9ea8c6d1d90E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^78), (callee: ^60))))) ; guid = 16338627551194398681
^196 = gv: (name: "_ZN4core3cmp3Ord3max17h2dca361a8e2971f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^217)), refs: (^174)))) ; guid = 16437988912817490699
^197 = gv: (name: "alloc183", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^163)))) ; guid = 16453608598766453487
^198 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h279868f64c5a5835E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^51))))) ; guid = 16466185525931533751
^199 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h056207dc7af126b7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^144))))) ; guid = 16480993227753877473
^200 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hb6bf0c61be7a6281E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^138))))) ; guid = 16662237198451901835
^201 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hb3e18a8d79d51548E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^106), (callee: ^7))))) ; guid = 16770833032996116988
^202 = gv: (name: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h33212dcb932087efE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^160))))) ; guid = 16823312779856085851
^203 = gv: (name: "_ZN4core3cmp3max17ha614936573d6fc85E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^196))))) ; guid = 16882318731977998949
^204 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h958c68380a42d207E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 55, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^64), (callee: ^170), (callee: ^134)), refs: (^174)))) ; guid = 16990818266317926871
^205 = gv: (name: "alloc42", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17020495282051443504
^206 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hff6a1216e6552ed8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 17099723960795505533
^207 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hfc5fa77e814eeb27E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 17334185884733481652
^208 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hff73b8f914faf2a6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 17499471400807253509
^209 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h37b5c6849643209cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 45))) ; guid = 17551584965397785390
^210 = gv: (name: "alloc199", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 17574628215412480125
^211 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^212 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h076503618dc7bd78E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 17731445084993858631
^213 = gv: (name: "_ZN5alloc5alloc5alloc17h1e38f7e523ae5ebdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^17), (callee: ^16), (callee: ^113))))) ; guid = 17802606451042313882
^214 = gv: (name: "_ZN4core10intrinsics11write_bytes17h25ba0cb59ed20e21E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 17922805353819380048
^215 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h0b65e5be037d1449E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^222))))) ; guid = 17927135706462731877
^216 = gv: (name: "_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E") ; guid = 17978184489729322003
^217 = gv: (name: "_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17he1826b2a71aabaf1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 18009292316207842496
^218 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h6159de12d59d562bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^116))))) ; guid = 18010559525945318184
^219 = gv: (name: "alloc206", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18036285197047093010
^220 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h18d572bf9c5f6eedE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^139), (callee: ^42), (callee: ^225)), refs: (^174)))) ; guid = 18136405374493769407
^221 = gv: (name: "alloc211", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18250677636230265676
^222 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h3f25e09bb0dabc3eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 18253218692762166214
^223 = gv: (name: "_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h747599ac67d37615E") ; guid = 18263356797599038007
^224 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^225 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^226 = blockcount: 686
