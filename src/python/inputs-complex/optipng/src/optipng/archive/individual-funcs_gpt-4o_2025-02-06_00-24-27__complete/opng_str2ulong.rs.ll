; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_str2ulong.rs.bc'
source_filename = "opng_str2ulong.6c0f64eb-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"core::str::pattern::CharPredicateSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>" = type { %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>" }
%"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>" = type { %"[closure@core::str::<impl str>::trim_start::{closure#0}]", { [0 x i8]*, i64 }, %"core::str::iter::CharIndices" }
%"[closure@core::str::<impl str>::trim_start::{closure#0}]" = type {}
%"core::str::iter::CharIndices" = type { i64, { i8*, i8* } }
%"core::str::pattern::MultiCharEqPattern<[closure@core::str::<impl str>::trim_start::{closure#0}]>" = type { %"[closure@core::str::<impl str>::trim_start::{closure#0}]" }
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::option::Option<(usize, usize)>" = type { i64, [2 x i64] }
%"core::option::Option<(usize, usize)>::Some" = type { [1 x i64], { i64, i64 } }
%"core::str::pattern::SearchStep" = type { i64, [2 x i64] }
%"core::str::pattern::SearchStep::Reject" = type { [1 x i64], i64, i64 }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::str::pattern::SearchStep::Match" = type { [1 x i64], i64, i64 }
%"core::result::Result<u64, alloc::string::String>" = type { i64, [3 x i64] }
%"core::result::Result<u64, core::num::error::ParseIntError>" = type { i8, [15 x i8] }
%"core::result::Result<u64, alloc::string::String>::Err" = type { [1 x i64], %"alloc::string::String" }
%"core::result::Result<u64, core::num::error::ParseIntError>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<u64, alloc::string::String>::Ok" = type { [1 x i64], i64 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc67 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc68 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc67, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc65 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc153 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc154 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc153, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc182 = private unnamed_addr constant <{ [83 x i8] }> <{ [83 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/str/validations.rs" }>, align 1
@alloc173 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc182, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\001\00\00\00$\00\00\00" }>, align 8
@alloc175 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc182, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\008\00\00\00(\00\00\00" }>, align 8
@alloc177 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc182, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\00@\00\00\00,\00\00\00" }>, align 8
@alloc179 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc182, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\00^\00\00\00)\00\00\00" }>, align 8
@alloc181 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc182, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\00c\00\00\00-\00\00\00" }>, align 8
@alloc183 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc182, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\00h\00\00\001\00\00\00" }>, align 8
@alloc62 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"to_digit: radix is too high (maximum 36)" }>, align 1
@alloc63 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [40 x i8] }>, <{ [40 x i8] }>* @alloc62, i32 0, i32 0, i32 0), [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@alloc184 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/char/methods.rs" }>, align 1
@alloc185 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc184, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00]\01\00\00\0D\00\00\00" }>, align 8
@alloc186 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc187 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc186, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc188 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc189 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc188, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc190 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc191 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc190, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc212 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c"Invalid number format" }>, align 1
@alloc209 = private unnamed_addr constant <{ [96 x i8] }> <{ [96 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_str2ulong.rs" }>, align 1
@alloc195 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00$\00\00\00&\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc197 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00$\00\00\00\1C\00\00\00" }>, align 8
@alloc199 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00 \00\00\00&\00\00\00" }>, align 8
@alloc201 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00 \00\00\00\1C\00\00\00" }>, align 8
@alloc203 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\1C\00\00\00&\00\00\00" }>, align 8
@alloc205 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\1C\00\00\00\1C\00\00\00" }>, align 8
@alloc207 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00+\00\00\00\1A\00\00\00" }>, align 8
@str.1 = internal constant [25 x i8] c"attempt to divide by zero"
@alloc208 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Value too large" }>, align 1
@alloc210 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00.\00\00\00\11\00\00\00" }>, align 8
@str.2 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc213 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"1234K" }>, align 1
@alloc79 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"Error: " }>, align 1
@alloc85 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc80 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [7 x i8] }>, <{ [7 x i8] }>* @alloc79, i32 0, i32 0, i32 0), [8 x i8] c"\07\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc85, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc83 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"Parsed value: " }>, align 1
@alloc84 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [14 x i8] }>, <{ [14 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [8 x i8] c"\0E\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc85, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5b81d39badd7234dE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81d13bacb653873eE"(i8* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 1, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_11 = load i8*, i8** %5, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h55e714a4d0c6d30aE"(i8* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %6 = bitcast { i8*, i8* }* %self to i8**
  %_15 = load i8*, i8** %6, align 8, !nonnull !1, !noundef !1
  %_14 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_16 = load i8*, i8** %7, align 8
  %_12 = icmp eq i8* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_12.i = load i8*, i8** %8, align 8
  %9 = getelementptr inbounds i8, i8* %_12.i, i64 -1
  store i8* %9, i8** %0, align 8
  %10 = load i8*, i8** %0, align 8
  %11 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %15 = bitcast i8** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = bitcast i8** %2 to {}**
  store {}* null, {}** %16, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %17 = load i8*, i8** %2, align 8, !align !2
  ret i8* %17

bb13:                                             ; preds = %bb12
  store i8* %14, i8** %2, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h0cdec4dacfca704bE"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17he7af176454bffc77E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hff7c9b0a9047cda8E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hf0039e1645d41683E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h4e224aa08c1d6676E"(i64 %kind.0, i64 %kind.1) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %kind.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %kind.1, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6ef7fe125020c2f0E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h2366a9e47db45f1fE"()
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
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hb5fe79a34634970bE"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h22bdb6e2031c0c12E"()
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
  %9 = load i64, i64* %8, align 8, !range !3, !noundef !1
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17hb7be956587b277f5E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h3585d6992ed7fd9cE"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN49_$LT$F$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h8f794fbc621f5d0cE"(%"core::str::pattern::CharPredicateSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* sret(%"core::str::pattern::CharPredicateSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>") %0, [0 x i8]* align 1 %haystack.0, i64 %haystack.1) unnamed_addr #0 {
start:
  %_4 = alloca %"core::str::pattern::MultiCharEqPattern<[closure@core::str::<impl str>::trim_start::{closure#0}]>", align 1
  %_3 = alloca %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>", align 8
  %1 = bitcast %"core::str::pattern::MultiCharEqPattern<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* %_4 to %"[closure@core::str::<impl str>::trim_start::{closure#0}]"*
  call void @"_ZN95_$LT$core..str..pattern..MultiCharEqPattern$LT$C$GT$$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17ha566f42a0a2552a2E"(%"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* sret(%"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>") %_3, [0 x i8]* align 1 %haystack.0, i64 %haystack.1)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::str::pattern::CharPredicateSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* %0 to %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"*
  %3 = bitcast %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* %2 to i8*
  %4 = bitcast %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17hce86d8d7c901ed74E(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h7262c348838392f2E(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h52ff3397e50dcac0E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb5d5637c14577644E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h7cae7a693063daf7E(%"alloc::string::String"* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17ha41e72521f87c4e7E(%"alloc::string::String"* align 8 %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h6ca7d63c95f49475E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h52ff3397e50dcac0E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !2, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !2, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17ha41e72521f87c4e7E(%"alloc::string::String"* align 8 %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !2, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !2, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h5bcd16e8bb7029a9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !4, !noundef !1
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
  %11 = load i64*, i64** %10, align 8, !align !5
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
  call void @_ZN4core3fmt9Arguments6new_v117h5bcd16e8bb7029a9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc68 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc65 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc154 to %"core::panic::location::Location"*)) #13
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h609d9717e4350232E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !6, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h138ba37ee1df388dE(i64 %_3), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hbc1374b9fb08580cE(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !6, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h08c4c8cb2dbc9ebaE"(i8 %self) unnamed_addr #0 {
start:
  %0 = icmp sge i8 %self, -64
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he58450331b9dc315E"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %12 = load i8, i8* %11, align 8, !range !4, !noundef !1
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !4, !noundef !1
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
  %27 = load i8, i8* %2, align 1, !range !4, !noundef !1
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
  %32 = load i64, i64* %31, align 8, !range !8, !noundef !1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h138ba37ee1df388dE(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !7, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hcc2caa6735e280d2E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h97b72fa4253ba139E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h8920f6c125aa6412E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hbacaf0ea823d760dE({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h8973cb3f99fba8b3E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hf6e79663f9d8d97dE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4d6a192163028118E"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb6d0b13b0bef9d8E"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb6d0b13b0bef9d8E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha11591f469b11b7aE"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hecd0f4eba265749dE"({ i8*, i64 }* %1) #14
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
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hecd0f4eba265749dE"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #15
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
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hecd0f4eba265749dE"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h18c6cae612a7ecfeE"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hd9e5e9ba90a94e32E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hff7c9b0a9047cda8E"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hf4121cd1ca8f3950E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h20df31228795343fE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hf0039e1645d41683E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17he7af176454bffc77E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17hd961c209bc5d4ca0E"() unnamed_addr #0 {
start:
  %_1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h684b47e2a1fcac61E"()
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hf0039e1645d41683E"(i8* %_1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17he2c3cc61675157a7E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h184916e71b5e70c0E"(i8* %self) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81d13bacb653873eE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h35f6d2ae61219296E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17he2c3cc61675157a7E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17h59c5a9851e10353bE({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hbacaf0ea823d760dE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h35f6d2ae61219296E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hf6e79663f9d8d97dE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9bf170a35e98b142E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hff7c9b0a9047cda8E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h09f32b96e9f21734E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81d13bacb653873eE"(i8* %ptr)
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
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hff7c9b0a9047cda8E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h20df31228795343fE"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hff7c9b0a9047cda8E"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17he0951a68cd673b7cE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9b65e6ff01be1fd3E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hff7c9b0a9047cda8E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9b65e6ff01be1fd3E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h684b47e2a1fcac61E"() unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 1, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hff7c9b0a9047cda8E"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h8f93d2a4cb37ef7bE"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h8973cb3f99fba8b3E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9bf170a35e98b142E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h87b9918d83980465E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17hfdd228b638348c89E"(i8* %self, i8* %dest, i64 %count) unnamed_addr #0 {
start:
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hce86d8d7c901ed74E(i8* %self, i8* %dest, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd6ff404e9228653fE"(i8* %self) unnamed_addr #0 {
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
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h8920f6c125aa6412E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h55e714a4d0c6d30aE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h59c5a9851e10353bE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h87b9918d83980465E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hecbba59a19c50bfcE"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @_ZN4core3str11validations15next_code_point17h65b49ec5db2ad8aaE({ i8*, i8* }* align 8 %bytes) unnamed_addr #0 {
start:
  %ch = alloca i32, align 4
  %_4 = alloca i8*, align 8
  %0 = alloca { i32, i32 }, align 4
  %_5 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9ca24ca4623527bE"({ i8*, i8* }* align 8 %bytes)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd3b31d9ea225b9aeE"(i8* align 1 %_5)
  store i8* %1, i8** %_4, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast i8** %_4 to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_7 = select i1 %4, i64 1, i64 0
  switch i64 %_7, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %val = load i8*, i8** %_4, align 8, !nonnull !1, !align !2, !noundef !1
  %x = load i8, i8* %val, align 1
  %_11 = icmp ult i8 %x, -128
  br i1 %_11, label %bb7, label %bb8

bb5:                                              ; preds = %bb2
  %5 = call { i32, i32 } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hc207b9c953919c79E"()
  store { i32, i32 } %5, { i32, i32 }* %0, align 4
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb7, %bb6
  br label %bb24

bb8:                                              ; preds = %bb3
  %init = call i32 @_ZN4core3str11validations15utf8_first_byte17hf56a5306dd65f0fdE(i8 %x, i32 2)
  br label %bb9

bb7:                                              ; preds = %bb3
  %_13 = zext i8 %x to i32
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_13, i32* %6, align 4
  %7 = bitcast { i32, i32 }* %0 to i32*
  store i32 1, i32* %7, align 4
  br label %bb23

bb24:                                             ; preds = %bb22, %bb23
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %9 = load i32, i32* %8, align 4, !range !9, !noundef !1
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = insertvalue { i32, i32 } undef, i32 %9, 0
  %13 = insertvalue { i32, i32 } %12, i32 %11, 1
  ret { i32, i32 } %13

bb9:                                              ; preds = %bb8
  %_19 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9ca24ca4623527bE"({ i8*, i8* }* align 8 %bytes)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_18 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17hd14bed31f430a779E"(i8* align 1 %_19, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc173 to %"core::panic::location::Location"*))
  br label %bb11

bb11:                                             ; preds = %bb10
  %y = load i8, i8* %_18, align 1
  %14 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h69d98f2debb238e9E(i32 %init, i8 %y)
  store i32 %14, i32* %ch, align 4
  br label %bb12

bb12:                                             ; preds = %bb11
  %_24 = icmp uge i8 %x, -32
  br i1 %_24, label %bb13, label %bb22

bb22:                                             ; preds = %bb21, %bb12
  %_50 = load i32, i32* %ch, align 4
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_50, i32* %15, align 4
  %16 = bitcast { i32, i32 }* %0 to i32*
  store i32 1, i32* %16, align 4
  br label %bb24

bb13:                                             ; preds = %bb12
  %_28 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9ca24ca4623527bE"({ i8*, i8* }* align 8 %bytes)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_27 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17hd14bed31f430a779E"(i8* align 1 %_28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc175 to %"core::panic::location::Location"*))
  br label %bb15

bb15:                                             ; preds = %bb14
  %z = load i8, i8* %_27, align 1
  %_32 = and i8 %y, 63
  %_31 = zext i8 %_32 to i32
  %y_z = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h69d98f2debb238e9E(i32 %_31, i8 %z)
  br label %bb16

bb16:                                             ; preds = %bb15
  %_35 = shl i32 %init, 12
  %17 = or i32 %_35, %y_z
  store i32 %17, i32* %ch, align 4
  %_38 = icmp uge i8 %x, -16
  br i1 %_38, label %bb17, label %bb21

bb21:                                             ; preds = %bb20, %bb16
  br label %bb22

bb17:                                             ; preds = %bb16
  %_42 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9ca24ca4623527bE"({ i8*, i8* }* align 8 %bytes)
  br label %bb18

bb18:                                             ; preds = %bb17
  %_41 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17hd14bed31f430a779E"(i8* align 1 %_42, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc177 to %"core::panic::location::Location"*))
  br label %bb19

bb19:                                             ; preds = %bb18
  %w = load i8, i8* %_41, align 1
  %_45 = and i32 %init, 7
  %_44 = shl i32 %_45, 18
  %_47 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h69d98f2debb238e9E(i32 %y_z, i8 %w)
  br label %bb20

bb20:                                             ; preds = %bb19
  %18 = or i32 %_44, %_47
  store i32 %18, i32* %ch, align 4
  br label %bb21
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3str11validations15utf8_first_byte17hf56a5306dd65f0fdE(i8 %byte, i32 %width) unnamed_addr #0 {
start:
  %0 = trunc i32 %width to i8
  %1 = and i8 %0, 7
  %_5 = lshr i8 127, %1
  %_3 = and i8 %byte, %_5
  %2 = zext i8 %_3 to i32
  ret i32 %2
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN4core3str11validations17utf8_is_cont_byte17h617a110815da4b67E(i8 %byte) unnamed_addr #0 {
start:
  %0 = icmp slt i8 %byte, -64
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h69d98f2debb238e9E(i32 %ch, i8 %byte) unnamed_addr #0 {
start:
  %_3 = shl i32 %ch, 6
  %_6 = and i8 %byte, 63
  %_5 = zext i8 %_6 to i32
  %0 = or i32 %_3, %_5
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @_ZN4core3str11validations23next_code_point_reverse17hc491f0df07b56501E({ i8*, i8* }* align 8 %bytes) unnamed_addr #0 {
start:
  %ch = alloca i32, align 4
  %_4 = alloca i8*, align 8
  %0 = alloca { i32, i32 }, align 4
  %_5 = call align 1 i8* @"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5b81d39badd7234dE"({ i8*, i8* }* align 8 %bytes)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd3b31d9ea225b9aeE"(i8* align 1 %_5)
  store i8* %1, i8** %_4, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast i8** %_4 to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_7 = select i1 %4, i64 1, i64 0
  switch i64 %_7, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %val = load i8*, i8** %_4, align 8, !nonnull !1, !align !2, !noundef !1
  %_14 = load i8, i8* %val, align 1
  %_13 = icmp ult i8 %_14, -128
  br i1 %_13, label %bb7, label %bb8

bb5:                                              ; preds = %bb2
  %5 = call { i32, i32 } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hc207b9c953919c79E"()
  store { i32, i32 } %5, { i32, i32 }* %0, align 4
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb27

bb27:                                             ; preds = %bb7, %bb6
  br label %bb28

bb8:                                              ; preds = %bb3
  %back_byte = load i8, i8* %val, align 1
  %_21 = call align 1 i8* @"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5b81d39badd7234dE"({ i8*, i8* }* align 8 %bytes)
  br label %bb9

bb7:                                              ; preds = %bb3
  %next_byte = load i8, i8* %val, align 1
  %_15 = zext i8 %next_byte to i32
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_15, i32* %6, align 4
  %7 = bitcast { i32, i32 }* %0 to i32*
  store i32 1, i32* %7, align 4
  br label %bb27

bb28:                                             ; preds = %bb26, %bb27
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %9 = load i32, i32* %8, align 4, !range !9, !noundef !1
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = insertvalue { i32, i32 } undef, i32 %9, 0
  %13 = insertvalue { i32, i32 } %12, i32 %11, 1
  ret { i32, i32 } %13

bb9:                                              ; preds = %bb8
  %_20 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17hd14bed31f430a779E"(i8* align 1 %_21, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc179 to %"core::panic::location::Location"*))
  br label %bb10

bb10:                                             ; preds = %bb9
  %z = load i8, i8* %_20, align 1
  %_23 = call i32 @_ZN4core3str11validations15utf8_first_byte17hf56a5306dd65f0fdE(i8 %z, i32 2)
  br label %bb11

bb11:                                             ; preds = %bb10
  store i32 %_23, i32* %ch, align 4
  %_25 = call zeroext i1 @_ZN4core3str11validations17utf8_is_cont_byte17h617a110815da4b67E(i8 %z)
  br label %bb12

bb12:                                             ; preds = %bb11
  br i1 %_25, label %bb13, label %bb25

bb25:                                             ; preds = %bb24, %bb12
  %_48 = load i32, i32* %ch, align 4
  %_47 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h69d98f2debb238e9E(i32 %_48, i8 %back_byte)
  br label %bb26

bb13:                                             ; preds = %bb12
  %_29 = call align 1 i8* @"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5b81d39badd7234dE"({ i8*, i8* }* align 8 %bytes)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_28 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17hd14bed31f430a779E"(i8* align 1 %_29, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc181 to %"core::panic::location::Location"*))
  br label %bb15

bb15:                                             ; preds = %bb14
  %y = load i8, i8* %_28, align 1
  %_31 = call i32 @_ZN4core3str11validations15utf8_first_byte17hf56a5306dd65f0fdE(i8 %y, i32 3)
  br label %bb16

bb16:                                             ; preds = %bb15
  store i32 %_31, i32* %ch, align 4
  %_33 = call zeroext i1 @_ZN4core3str11validations17utf8_is_cont_byte17h617a110815da4b67E(i8 %y)
  br label %bb17

bb17:                                             ; preds = %bb16
  br i1 %_33, label %bb18, label %bb23

bb23:                                             ; preds = %bb22, %bb17
  %_45 = load i32, i32* %ch, align 4
  %_44 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h69d98f2debb238e9E(i32 %_45, i8 %z)
  br label %bb24

bb18:                                             ; preds = %bb17
  %_37 = call align 1 i8* @"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5b81d39badd7234dE"({ i8*, i8* }* align 8 %bytes)
  br label %bb19

bb19:                                             ; preds = %bb18
  %_36 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17hd14bed31f430a779E"(i8* align 1 %_37, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc183 to %"core::panic::location::Location"*))
  br label %bb20

bb20:                                             ; preds = %bb19
  %x = load i8, i8* %_36, align 1
  %_39 = call i32 @_ZN4core3str11validations15utf8_first_byte17hf56a5306dd65f0fdE(i8 %x, i32 4)
  br label %bb21

bb21:                                             ; preds = %bb20
  store i32 %_39, i32* %ch, align 4
  %_42 = load i32, i32* %ch, align 4
  %_41 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h69d98f2debb238e9E(i32 %_42, i8 %y)
  br label %bb22

bb22:                                             ; preds = %bb21
  store i32 %_41, i32* %ch, align 4
  br label %bb23

bb24:                                             ; preds = %bb23
  store i32 %_44, i32* %ch, align 4
  br label %bb25

bb26:                                             ; preds = %bb25
  store i32 %_47, i32* %ch, align 4
  %_50 = load i32, i32* %ch, align 4
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_50, i32* %14, align 4
  %15 = bitcast { i32, i32 }* %0 to i32*
  store i32 1, i32* %15, align 4
  br label %bb28
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$10trim_start17h39256db5dcdd50bcE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h967762657bf43bd2E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$10trim_start28_$u7b$$u7b$closure$u7d$$u7d$17h3d118e4039a06201E"(%"[closure@core::str::<impl str>::trim_start::{closure#0}]"* align 1 %_1, i32 %c) unnamed_addr #0 {
start:
  %0 = call zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$13is_whitespace17h805a43bfa5fb9e08E"(i32 %c)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3str21_$LT$impl$u20$str$GT$12char_indices17h27765a8ca6559bf4E"(%"core::str::iter::CharIndices"* sret(%"core::str::iter::CharIndices") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %1 = call { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h402f8f96e9620834E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %_2.0 = extractvalue { i8*, i8* } %1, 0
  %_2.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::str::iter::CharIndices"* %0 to i64*
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %0, i32 0, i32 1
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %3, i32 0, i32 0
  store i8* %_2.0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %3, i32 0, i32 1
  store i8* %_2.1, i8** %5, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$13get_unchecked17he0355aad649b1f30E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %i.0, i64 %i.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$13get_unchecked17hc0d26e5b9c672f93E"(i64 %i.0, i64 %i.1, [0 x i8]* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_3.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_3.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17hd3cd31a674b2f7c3E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %_4 = alloca i8*, align 8
  %1 = alloca i8, align 1
  %2 = icmp eq i64 %index, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 1, i8* %1, align 1
  br label %bb11

bb2:                                              ; preds = %start
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %6 = load [0 x i8]*, [0 x i8]** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %6, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  %_6.0 = extractvalue { [0 x i8]*, i64 } %10, 0
  %_6.1 = extractvalue { [0 x i8]*, i64 } %10, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %11 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h728aa7a432b29f84E"([0 x i8]* align 1 %_6.0, i64 %_6.1, i64 %index)
  store i8* %11, i8** %_4, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %12 = bitcast i8** %_4 to {}**
  %13 = load {}*, {}** %12, align 8
  %14 = icmp eq {}* %13, null
  %_9 = select i1 %14, i64 0, i64 1
  switch i64 %_9, label %bb6 [
    i64 0, label %bb7
    i64 1, label %bb5
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb7:                                              ; preds = %bb4
  %_11 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h7690410b98be9ed4E"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb8

bb5:                                              ; preds = %bb4
  %_15 = load i8*, i8** %_4, align 8, !nonnull !1, !align !2, !noundef !1
  %b = load i8, i8* %_15, align 1
  %15 = call zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h08c4c8cb2dbc9ebaE"(i8 %b)
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %1, align 1
  br label %bb9

bb9:                                              ; preds = %bb5
  br label %bb10

bb10:                                             ; preds = %bb8, %bb9
  br label %bb11

bb8:                                              ; preds = %bb7
  %17 = icmp eq i64 %index, %_11
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %1, align 1
  br label %bb10

bb11:                                             ; preds = %bb10, %bb1
  %19 = load i8, i8* %1, align 1, !range !4, !noundef !1
  %20 = trunc i8 %19 to i1
  ret i1 %20
}

; Function Attrs: uwtable
define { [0 x i8]*, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h967762657bf43bd2E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %_14 = alloca { i64, i64 }, align 8
  %_8 = alloca %"core::option::Option<(usize, usize)>", align 8
  %matcher = alloca %"core::str::pattern::CharPredicateSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>", align 8
  %i = alloca i64, align 8
  store i8 1, i8* %_18, align 1
  %1 = invoke i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h7690410b98be9ed4E"([0 x i8]* align 1 %self.0, i64 %self.1)
          to label %bb1 unwind label %cleanup

bb12:                                             ; preds = %bb9, %cleanup
  %2 = load i8, i8* %_18, align 1, !range !4, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb11, label %bb10

cleanup:                                          ; preds = %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb12

bb1:                                              ; preds = %start
  store i64 %1, i64* %i, align 8
  store i8 0, i8* %_18, align 1
  invoke void @"_ZN49_$LT$F$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h8f794fbc621f5d0cE"(%"core::str::pattern::CharPredicateSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* sret(%"core::str::pattern::CharPredicateSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>") %matcher, [0 x i8]* align 1 %self.0, i64 %self.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  invoke void @"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h174ad061645e97aaE"(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %_8, %"core::str::pattern::CharPredicateSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* align 8 %matcher)
          to label %bb3 unwind label %cleanup1

bb9:                                              ; preds = %cleanup1
  br label %bb12

cleanup1:                                         ; preds = %bb6, %bb5, %bb2
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb9

bb3:                                              ; preds = %bb2
  %14 = bitcast %"core::option::Option<(usize, usize)>"* %_8 to i64*
  %_10 = load i64, i64* %14, align 8, !range !8, !noundef !1
  %15 = icmp eq i64 %_10, 1
  br i1 %15, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
  %16 = bitcast %"core::option::Option<(usize, usize)>"* %_8 to %"core::option::Option<(usize, usize)>::Some"*
  %17 = getelementptr inbounds %"core::option::Option<(usize, usize)>::Some", %"core::option::Option<(usize, usize)>::Some"* %16, i32 0, i32 1
  %18 = bitcast { i64, i64 }* %17 to i64*
  %a = load i64, i64* %18, align 8
  store i64 %a, i64* %i, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %_15 = load i64, i64* %i, align 8
  %_16 = invoke i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h7690410b98be9ed4E"([0 x i8]* align 1 %self.0, i64 %self.1)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  %19 = bitcast { i64, i64 }* %_14 to i64*
  store i64 %_15, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_14, i32 0, i32 1
  store i64 %_16, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_14, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_14, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = invoke { [0 x i8]*, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$13get_unchecked17he0355aad649b1f30E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %22, i64 %24)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  %26 = extractvalue { [0 x i8]*, i64 } %25, 0
  %27 = extractvalue { [0 x i8]*, i64 } %25, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %28 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %26, 0
  %29 = insertvalue { [0 x i8]*, i64 } %28, i64 %27, 1
  ret { [0 x i8]*, i64 } %29

bb10:                                             ; preds = %bb11, %bb12
  %30 = bitcast { i8*, i32 }* %0 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %35 = insertvalue { i8*, i32 } %34, i32 %33, 1
  resume { i8*, i32 } %35

bb11:                                             ; preds = %bb12
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h7690410b98be9ed4E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !2, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  %_3.0 = extractvalue { [0 x i8]*, i64 } %8, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %_3.1
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h402f8f96e9620834E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { i8*, i8* }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hab3fef86bd7d93f1E"([0 x i8]* align 1 %_4.0, i64 %_4.1)
  %_2.0 = extractvalue { i8*, i8* } %10, 0
  %_2.1 = extractvalue { i8*, i8* } %10, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  store i8* %_2.0, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  store i8* %_2.1, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !nonnull !1, !noundef !1
  %15 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = insertvalue { i8*, i8* } undef, i8* %14, 0
  %18 = insertvalue { i8*, i8* } %17, i8* %16, 1
  ret { i8*, i8* } %18
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$8is_empty17h5b91e46fbfcc3d61E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h7690410b98be9ed4E"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = icmp eq i64 %_2, 0
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$13get_unchecked17hc0d26e5b9c672f93E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_6 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hecbba59a19c50bfcE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_6, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %len = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h97b72fa4253ba139E(i8* %2, i64 %len)
  %_12.0 = extractvalue { [0 x i8]*, i64 } %3, 0
  %_12.1 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_12.0, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %_12.1, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$13get_unchecked17h94b5277dd72bb81eE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %ptr = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hecbba59a19c50bfcE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h97b72fa4253ba139E(i8* %ptr, i64 %self)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_7.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h177be17aa6c8326cE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %_3 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17hd3cd31a674b2f7c3E"([0 x i8]* align 1 %slice.0, i64 %slice.1, i64 %self)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %1 = bitcast { i8*, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = bitcast { i8*, i64 }* %0 to {}**
  store {}* null, {}** %2, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %3 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$13get_unchecked17h94b5277dd72bb81eE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  %_8.0 = extractvalue { [0 x i8]*, i64 } %3, 0
  %_8.1 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 0
  store [0 x i8]* %_8.0, [0 x i8]** %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 1
  store i64 %_8.1, i64* %6, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !align !2
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = insertvalue { i8*, i64 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i64 } %11, i64 %10, 1
  ret { i8*, i64 } %12
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17he5af6119e2693bacE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %1 = call { i8*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h177be17aa6c8326cE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1)
  store { i8*, i64 } %1, { i8*, i64 }* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i8*, i64 }* %_4 to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_7 = select i1 %4, i64 0, i64 1
  switch i64 %_7, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb1
  call void @_ZN4core3str16slice_error_fail17h2805d168fae0f9a7E([0 x i8]* align 1 %slice.0, i64 %slice.1, i64 0, i64 %self, %"core::panic::location::Location"* align 8 %0) #13
  unreachable

bb4:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64 }* %_4 to { [0 x i8]*, i64 }*
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %5, i32 0, i32 0
  %s.0 = load [0 x i8]*, [0 x i8]** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %5, i32 0, i32 1
  %s.1 = load i64, i64* %7, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %s.0, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %s.1, 1
  ret { [0 x i8]*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h028d99b792d5ded5E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17he5af6119e2693bacE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3str7pattern8Searcher11next_reject17h921ad41d09da9bc2E(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* align 8 %self) unnamed_addr #0 {
start:
  %_7 = alloca { i64, i64 }, align 8
  %_2 = alloca %"core::str::pattern::SearchStep", align 8
  br label %bb1

bb1:                                              ; preds = %bb5, %start
  call void @"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h5a309ab58e6d597cE"(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %_2, %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"core::str::pattern::SearchStep"* %_2 to i64*
  %_4 = load i64, i64* %1, align 8, !range !10, !noundef !1
  switch i64 %_4, label %bb5 [
    i64 1, label %bb3
    i64 2, label %bb4
  ]

bb5:                                              ; preds = %bb2
  br label %bb1

bb3:                                              ; preds = %bb2
  %2 = bitcast %"core::str::pattern::SearchStep"* %_2 to %"core::str::pattern::SearchStep::Reject"*
  %3 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %2, i32 0, i32 1
  %a = load i64, i64* %3, align 8
  %4 = bitcast %"core::str::pattern::SearchStep"* %_2 to %"core::str::pattern::SearchStep::Reject"*
  %5 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %4, i32 0, i32 2
  %b = load i64, i64* %5, align 8
  %6 = bitcast { i64, i64 }* %_7 to i64*
  store i64 %a, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 1
  store i64 %b, i64* %7, align 8
  %8 = bitcast %"core::option::Option<(usize, usize)>"* %0 to %"core::option::Option<(usize, usize)>::Some"*
  %9 = getelementptr inbounds %"core::option::Option<(usize, usize)>::Some", %"core::option::Option<(usize, usize)>::Some"* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = bitcast %"core::option::Option<(usize, usize)>"* %0 to i64*
  store i64 1, i64* %16, align 8
  br label %bb6

bb4:                                              ; preds = %bb2
  %17 = bitcast %"core::option::Option<(usize, usize)>"* %0 to i64*
  store i64 0, i64* %17, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17hea44afb76cc3ef3dE([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %v.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %v.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !2, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char18from_u32_unchecked17hbb193954c347a126E(i32 %i) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char7convert18from_u32_unchecked17heeee804fded5cbd2E(i32 %i), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char7convert18from_u32_unchecked17heeee804fded5cbd2E(i32 %i) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  store i32 %i, i32* %0, align 4
  %1 = load i32, i32* %0, align 4, !range !11, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$13is_whitespace17h805a43bfa5fb9e08E"(i32 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i32 %self, 32
  br i1 %1, label %bb4, label %bb1

bb4:                                              ; preds = %bb2, %start
  store i8 1, i8* %0, align 1
  br label %bb9

bb1:                                              ; preds = %start
  %_2 = icmp ule i32 9, %self
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %_5 = icmp ugt i32 %self, 127
  br i1 %_5, label %bb6, label %bb5

bb2:                                              ; preds = %bb1
  %_3 = icmp ule i32 %self, 13
  br i1 %_3, label %bb4, label %bb3

bb5:                                              ; preds = %bb3
  store i8 0, i8* %0, align 1
  br label %bb7

bb6:                                              ; preds = %bb3
  %_7 = call zeroext i1 @_ZN4core7unicode12unicode_data11white_space6lookup17hf0a69307275f97fcE(i32 %self)
  br label %bb8

bb8:                                              ; preds = %bb6
  %2 = zext i1 %_7 to i8
  store i8 %2, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb8, %bb5
  br label %bb9

bb9:                                              ; preds = %bb7, %bb4
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8is_digit17h7f832e2eb4db98b4E"(i32 %self, i32 %radix) unnamed_addr #0 {
start:
  %_4 = alloca { i32, i32 }, align 4
  %0 = call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3367f3b9fcff8fdcE"(i32 %self, i32 %radix)
  store { i32, i32 } %0, { i32, i32 }* %_4, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h855210d863229906E"({ i32, i32 }* align 4 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3367f3b9fcff8fdcE"(i32 %self, i32 %radix) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %_13 = alloca %"core::fmt::Arguments", align 8
  %digit = alloca i32, align 4
  %1 = alloca { i32, i32 }, align 4
  %2 = sub i32 %self, 48
  store i32 %2, i32* %digit, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp ugt i32 %radix, 10
  br i1 %_7, label %bb2, label %bb10

bb10:                                             ; preds = %bb9, %bb1
  %_30 = load i32, i32* %digit, align 4
  %_29 = icmp ult i32 %_30, %radix
  br i1 %_29, label %bb11, label %bb12

bb2:                                              ; preds = %bb1
  %_10 = icmp ule i32 %radix, 36
  %_9 = xor i1 %_10, true
  br i1 %_9, label %bb3, label %bb5

bb5:                                              ; preds = %bb2
  %_21 = load i32, i32* %digit, align 4
  %_20 = icmp ult i32 %_21, 10
  br i1 %_20, label %bb6, label %bb7

bb3:                                              ; preds = %bb2
  call void @_ZN4core3fmt9Arguments6new_v117h5bcd16e8bb7029a9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_13, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc63 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc65 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_13, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc185 to %"core::panic::location::Location"*)) #13
  unreachable

bb7:                                              ; preds = %bb5
  %_25 = or i32 %self, 32
  %3 = sub i32 %_25, 97
  br label %bb8

bb6:                                              ; preds = %bb5
  %_22 = load i32, i32* %digit, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  store i32 %_22, i32* %4, align 4
  %5 = bitcast { i32, i32 }* %1 to i32*
  store i32 1, i32* %5, align 4
  br label %bb14

bb14:                                             ; preds = %bb13, %bb6
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !range !9, !noundef !1
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = insertvalue { i32, i32 } undef, i32 %7, 0
  %11 = insertvalue { i32, i32 } %10, i32 %9, 1
  ret { i32, i32 } %11

bb8:                                              ; preds = %bb7
  %12 = call i32 @llvm.uadd.sat.i32(i32 %3, i32 10)
  store i32 %12, i32* %0, align 4
  %13 = load i32, i32* %0, align 4
  br label %bb9

bb9:                                              ; preds = %bb8
  store i32 %13, i32* %digit, align 4
  br label %bb10

bb12:                                             ; preds = %bb10
  %14 = bitcast { i32, i32 }* %1 to i32*
  store i32 0, i32* %14, align 4
  br label %bb13

bb11:                                             ; preds = %bb10
  %_32 = load i32, i32* %digit, align 4
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  store i32 %_32, i32* %15, align 4
  %16 = bitcast { i32, i32 }* %1 to i32*
  store i32 1, i32* %16, align 4
  br label %bb13

bb13:                                             ; preds = %bb11, %bb12
  br label %bb14
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17h445316409d4db100E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h113de9f3436e46d8E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hbc1374b9fb08580cE(i64 %align), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !6, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17hacfa1cf10c8a80c1E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h0a7bab0d4f88e24dE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !6, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h609d9717e4350232E(i64 %_3), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hcc2caa6735e280d2E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17hb76f7d7554814b91E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he58450331b9dc315E"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h36ec57aa7f9a947bE"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h311f606d72248f77E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !8, !noundef !1
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hb5fe79a34634970bE"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc187 to %"core::panic::location::Location"*))
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !range !3, !noundef !1
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb9:                                              ; preds = %bb5
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h113de9f3436e46d8E(i64 %val, i64 1)
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
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17h995e91b8b9ac71e8E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h0a7bab0d4f88e24dE({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hff7c9b0a9047cda8E"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h728aa7a432b29f84E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %0 = call align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17hb812adfd179cca63E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h668a3053181cc8a9E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hab3fef86bd7d93f1E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h9c26dd5bc542020dE"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h711dc4ba6cd4c4cbE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hd7c60492bfaea8c5E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h97b72fa4253ba139E(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h9c26dd5bc542020dE"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h711dc4ba6cd4c4cbE"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h55e714a4d0c6d30aE"(i8* %ptr)
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
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hff7c9b0a9047cda8E"(i8* %ptr)
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

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17hd14bed31f430a779E"(i8* align 1 %0, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %3 = bitcast i8** %self to {}**
  %4 = load {}*, {}** %3, align 8
  %5 = icmp eq {}* %4, null
  %_2 = select i1 %5, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h445316409d4db100E() #13
          to label %unreachable unwind label %cleanup

bb3:                                              ; preds = %start
  %val = load i8*, i8** %self, align 8, !nonnull !1, !align !2, !noundef !1
  ret i8* %val

bb7:                                              ; preds = %cleanup
  %6 = bitcast i8** %self to {}**
  %7 = load {}*, {}** %6, align 8
  %8 = icmp eq {}* %7, null
  %_5 = select i1 %8, i64 0, i64 1
  %9 = icmp eq i64 %_5, 1
  br i1 %9, label %bb5, label %bb4

cleanup:                                          ; preds = %bb1
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb7

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb7
  br i1 true, label %bb6, label %bb4

bb4:                                              ; preds = %bb6, %bb5, %bb7
  %15 = bitcast { i8*, i32 }* %2 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb6:                                              ; preds = %bb5
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN4core6option15Option$LT$T$GT$3map17h17fa1fe1e7f28f86E"(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %_9 = alloca i8, align 1
  %_7 = alloca i32, align 4
  %2 = alloca i32, align 4
  %self = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %4, align 4
  store i8 1, i8* %_9, align 1
  %5 = bitcast { i32, i32 }* %self to i32*
  %6 = load i32, i32* %5, align 4, !range !9, !noundef !1
  %_3 = zext i32 %6 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %7 = bitcast i32* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  store i32 1114112, i32* %2, align 4
  br label %bb7

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %x = load i32, i32* %8, align 4
  store i8 0, i8* %_9, align 1
  store i32 %x, i32* %_7, align 4
  %9 = load i32, i32* %_7, align 4
  %_5 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h4690d53201cb3364E"(i32 %9), !range !11
  br label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_5, i32* %2, align 4
  br label %bb7

bb7:                                              ; preds = %bb4, %bb1
  %10 = load i8, i8* %_9, align 1, !range !4, !noundef !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %12 = load i32, i32* %2, align 4, !range !12, !noundef !1
  ret i32 %12

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN4core6option15Option$LT$T$GT$3map17h9b4b86c0bbdbc7beE"(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %_9 = alloca i8, align 1
  %_7 = alloca i32, align 4
  %2 = alloca i32, align 4
  %self = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %4, align 4
  store i8 1, i8* %_9, align 1
  %5 = bitcast { i32, i32 }* %self to i32*
  %6 = load i32, i32* %5, align 4, !range !9, !noundef !1
  %_3 = zext i32 %6 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %7 = bitcast i32* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  store i32 1114112, i32* %2, align 4
  br label %bb7

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %x = load i32, i32* %8, align 4
  store i8 0, i8* %_9, align 1
  store i32 %x, i32* %_7, align 4
  %9 = load i32, i32* %_7, align 4
  %_5 = call i32 @"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back28_$u7b$$u7b$closure$u7d$$u7d$17h51849e133248fe36E"(i32 %9), !range !11
  br label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_5, i32* %2, align 4
  br label %bb7

bb7:                                              ; preds = %bb4, %bb1
  %10 = load i8, i8* %_9, align 1, !range !4, !noundef !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %12 = load i32, i32* %2, align 4, !range !12, !noundef !1
  ret i32 %12

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h36ec57aa7f9a947bE"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %_3 = load i64, i64* %5, align 8, !range !8, !noundef !1
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
  %12 = load i8, i8* %_7, align 1, !range !4, !noundef !1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !range !8, !noundef !1
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h55f25ac5334843ffE"(i8* %0) unnamed_addr #0 {
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
  %9 = load i8, i8* %_7, align 1, !range !4, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h855210d863229906E"({ i32, i32 }* align 4 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast { i32, i32 }* %self to i32*
  %2 = load i32, i32* %1, align 4, !range !9, !noundef !1
  %_2 = zext i32 %2 to i64
  %3 = icmp eq i64 %_2, 1
  br i1 %3, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hba51f948ffc3132fE"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !3, !noundef !1
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
  %t.1 = load i64, i64* %10, align 8, !range !6, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !3, !noundef !1
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h445316409d4db100E() #13
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %16 = load i64, i64* %15, align 8, !range !3, !noundef !1
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
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h22bdb6e2031c0c12E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h2366a9e47db45f1fE"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7c13edb01625720eE"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h0cdec4dacfca704bE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfe6c16f04de84fd4E"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h4e224aa08c1d6676E"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h74c7a578a2024a80E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  store i8 1, i8* %_17, align 1
  %_3 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h668a3053181cc8a9E"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb1 unwind label %cleanup

bb12:                                             ; preds = %bb9, %cleanup
  %1 = load i8, i8* %_17, align 1, !range !4, !noundef !1
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
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hd13f6f7cbb80be8dE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, i64 %_3)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_7 = invoke i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h711dc4ba6cd4c4cbE"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb3 unwind label %cleanup1

bb9:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb6d0b13b0bef9d8E"(%"alloc::vec::Vec<u8>"* %v) #14
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
  %_9 = invoke i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hc25cb7ba6fb2cfa5E"(%"alloc::vec::Vec<u8>"* align 8 %v)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
  %_11 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h668a3053181cc8a9E"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  invoke void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17hfdd228b638348c89E"(i8* %_7, i8* %_9, i64 %_11)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  %_15 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h668a3053181cc8a9E"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17hcdba73dbfd8ceca7E"(%"alloc::vec::Vec<u8>"* align 8 %v, i64 %_15)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  ret void

abort:                                            ; preds = %bb9
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #15
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
define zeroext i1 @"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hed2a0afe1b1258e8E"(%"[closure@core::str::<impl str>::trim_start::{closure#0}]"* align 1 %self, i32 %c) unnamed_addr #0 {
start:
  %_4 = alloca i32, align 4
  store i32 %c, i32* %_4, align 4
  %0 = load i32, i32* %_4, align 4, !range !11, !noundef !1
  %1 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$10trim_start28_$u7b$$u7b$closure$u7d$$u7d$17h3d118e4039a06201E"(%"[closure@core::str::<impl str>::trim_start::{closure#0}]"* align 1 %self, i32 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hc7bd2f965307c8b1E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %_2 = alloca %"alloc::vec::Vec<u8>", align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h7bab08507b945664E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %_2, [0 x i8]* align 1 %_4.0, i64 %_4.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN5alloc6string6String19from_utf8_unchecked17h592417b57dd4ab93E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"alloc::vec::Vec<u8>"* %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hc25cb7ba6fb2cfa5E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17ha31c324520af71b2E"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81d13bacb653873eE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hd13f6f7cbb80be8dE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, i64 %capacity) unnamed_addr #0 {
start:
  %1 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h27002f7071fbbaddE"(i64 %capacity)
  %_3.0 = extractvalue { i8*, i64 } %1, 0
  %_3.1 = extractvalue { i8*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"alloc::vec::Vec<u8>"* %0 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_3.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_3.1, i64* %4, align 8
  %5 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %0, i32 0, i32 1
  store i64 0, i64* %5, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hc47a866e554668e0E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17ha31c324520af71b2E"({ i8*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81d13bacb653873eE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17hcdba73dbfd8ceca7E"(%"alloc::vec::Vec<u8>"* align 8 %self, i64 %new_len) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  store i64 %new_len, i64* %0, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h56532e3aeb275e27E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17hacfa1cf10c8a80c1E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h0a7bab0d4f88e24dE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h4cdcedb36de446f9E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17hacfa1cf10c8a80c1E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h0a7bab0d4f88e24dE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hb3cd773b8973fe4fE(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hacfa1cf10c8a80c1E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17h995e91b8b9ac71e8E({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !6, !noundef !1
  %8 = call i8* @_ZN5alloc5alloc5alloc17h4cdcedb36de446f9E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !6, !noundef !1
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h56532e3aeb275e27E(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h09f32b96e9f21734E"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h55f25ac5334843ffE"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf97ff49afba8a9a5E"(i8* %_16)
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
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h8f93d2a4cb37ef7bE"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6ef7fe125020c2f0E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc189 to %"core::panic::location::Location"*))
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
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h8f93d2a4cb37ef7bE"(i8* %_7, i64 0)
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
define internal void @_ZN5alloc5alloc7dealloc17h967bcd74bd548495E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hacfa1cf10c8a80c1E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h0a7bab0d4f88e24dE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h039b2418b8808fddE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h7c04705492e9d6a1E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h7c04705492e9d6a1E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @_ZN5alloc5slice4hack6to_vec17h19b6ea770ee1565cE(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5slice4hack6to_vec17h19b6ea770ee1565cE(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h74c7a578a2024a80E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h7bab08507b945664E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h039b2418b8808fddE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc6string6String19from_utf8_unchecked17h592417b57dd4ab93E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"alloc::vec::Vec<u8>"* %bytes) unnamed_addr #0 {
start:
  %_2 = alloca %"alloc::vec::Vec<u8>", align 8
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_2 to i8*
  %2 = bitcast %"alloc::vec::Vec<u8>"* %bytes to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  %3 = bitcast %"alloc::string::String"* %0 to %"alloc::vec::Vec<u8>"*
  %4 = bitcast %"alloc::vec::Vec<u8>"* %3 to i8*
  %5 = bitcast %"alloc::vec::Vec<u8>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hda22b9f1badffe79E(i64 %alloc_size) unnamed_addr #0 {
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
  %8 = load i64, i64* %7, align 8, !range !3, !noundef !1
  %9 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfe6c16f04de84fd4E"(i64 %6, i64 %8)
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
  %15 = load i64, i64* %14, align 8, !range !13, !noundef !1
  %16 = insertvalue { i64, i64 } undef, i64 %13, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hc48fed7befcb5632E"(i64 %capacity, i1 zeroext %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %result = alloca { i8*, i64 }, align 8
  %_15 = alloca { i64, i64 }, align 8
  %_10 = alloca { i64, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %_4 = alloca i8, align 1
  %2 = alloca { i8*, i64 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %init, align 1
  store i8 1, i8* %_37, align 1
  br label %bb4

bb32:                                             ; preds = %cleanup
  %4 = load i8, i8* %_37, align 1, !range !4, !noundef !1
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
  %11 = icmp eq i64 1, 0
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
  %13 = load i8, i8* %_4, align 1, !range !4, !noundef !1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb5, label %bb7

bb7:                                              ; preds = %bb3
  %15 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array17hb76f7d7554814b91E(i64 %capacity)
          to label %bb8 unwind label %cleanup

bb5:                                              ; preds = %bb3
  store i8 0, i8* %_37, align 1
  %16 = invoke { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hb2005d85d294165dE"()
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store { i8*, i64 } %16, { i8*, i64 }* %2, align 8
  br label %bb29

bb29:                                             ; preds = %bb28, %bb6
  %17 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !nonnull !1, !noundef !1
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { i8*, i64 } undef, i8* %18, 0
  %22 = insertvalue { i8*, i64 } %21, i64 %20, 1
  ret { i8*, i64 } %22

bb8:                                              ; preds = %bb7
  store { i64, i64 } %15, { i64, i64 }* %_10, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1
  %24 = load i64, i64* %23, align 8, !range !3, !noundef !1
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
  %layout.1 = load i64, i64* %27, align 8, !range !6, !noundef !1
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %layout.0, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %layout.1, i64* %29, align 8
  %_16 = invoke i64 @_ZN4core5alloc6layout6Layout4size17hacfa1cf10c8a80c1E({ i64, i64 }* align 8 %layout)
          to label %bb12 unwind label %cleanup

bb9:                                              ; preds = %bb8
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #13
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb23, %bb14, %bb9
  unreachable

bb12:                                             ; preds = %bb11
  %30 = invoke { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hda22b9f1badffe79E(i64 %_16)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  store { i64, i64 } %30, { i64, i64 }* %_15, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_15, i32 0, i32 1
  %32 = load i64, i64* %31, align 8, !range !13, !noundef !1
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
  %35 = load i8, i8* %init, align 1, !range !4, !noundef !1
  %36 = trunc i8 %35 to i1
  %_21 = zext i1 %36 to i64
  switch i64 %_21, label %bb18 [
    i64 0, label %bb19
    i64 1, label %bb17
  ]

bb14:                                             ; preds = %bb13
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #13
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb16
  unreachable

bb19:                                             ; preds = %bb16
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_23.0 = load i64, i64* %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_23.1 = load i64, i64* %38, align 8, !range !6, !noundef !1
  %39 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdb68348d7ceee7faE"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_23.0, i64 %_23.1)
          to label %bb20 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_25.0 = load i64, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_25.1 = load i64, i64* %41, align 8, !range !6, !noundef !1
  %42 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hfc91871b62caa483E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_25.0, i64 %_25.1)
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
  %ptr.0 = load i8*, i8** %46, align 8, !nonnull !1, !noundef !1
  %47 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 1
  %ptr.1 = load i64, i64* %47, align 8
  %_33 = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17he0951a68cd673b7cE"(i8* %ptr.0, i64 %ptr.1)
          to label %bb26 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_30.0 = load i64, i64* %48, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_30.1 = load i64, i64* %49, align 8, !range !6, !noundef !1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %_30.0, i64 %_30.1) #13
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_32 = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %_33)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_31 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hd9e5e9ba90a94e32E"(i8* %_32)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  %50 = bitcast { i8*, i64 }* %2 to i8**
  store i8* %_31, i8** %50, align 8
  %51 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %capacity, i64* %51, align 8
  %52 = bitcast { i8*, i64 }* %2 to %"alloc::alloc::Global"*
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hce6ef00af7329cedE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
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
  %4 = load i8, i8* %_2, align 1, !range !4, !noundef !1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17hb76f7d7554814b91E(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hba51f948ffc3132fE"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc191 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hf4121cd1ca8f3950E"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7c13edb01625720eE"(i8* %_11)
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
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h27002f7071fbbaddE"(i64 %capacity) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !4, !noundef !1
  %1 = trunc i8 %0 to i1
  %2 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hc48fed7befcb5632E"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i8*, i64 } %2, 0
  %4 = extractvalue { i8*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i8*, i64 } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64 } %5, i64 %4, 1
  ret { i8*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17ha31c324520af71b2E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17he7af176454bffc77E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hb2005d85d294165dE"() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i64 }, align 8
  %_2 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17hd961c209bc5d4ca0E"()
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
  %7 = bitcast { i8*, i64 }* %1 to i8**
  store i8* %_2, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = bitcast { i8*, i64 }* %1 to %"alloc::alloc::Global"*
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !nonnull !1, !noundef !1
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i8*, i64 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %13, 1
  ret { i8*, i64 } %15

bb3:                                              ; preds = %bb2
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h6ca7d63c95f49475E"(%"alloc::string::String"* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h13198dcd5fc961d2E"(%"alloc::string::String"* align 8 %self)
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
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h77da430cebdb3642E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hacfa1cf10c8a80c1E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !6, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h967bcd74bd548495E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hfc91871b62caa483E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hb3cd773b8973fe4fE(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdb68348d7ceee7faE"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hb3cd773b8973fe4fE(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h13198dcd5fc961d2E"(%"alloc::string::String"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  %0 = call { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd33615a1f548ff59E"(%"alloc::vec::Vec<u8>"* align 8 %_5)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17hea44afb76cc3ef3dE([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha11591f469b11b7aE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hc25cb7ba6fb2cfa5E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h8973cb3f99fba8b3E(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd33615a1f548ff59E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hc47a866e554668e0E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hd7c60492bfaea8c5E(i8* %_2, i64 %_4)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd3b31d9ea225b9aeE"(i8* align 1 %0) unnamed_addr #0 {
start:
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %5 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 8, i1 false)
  %6 = bitcast i8** %1 to {}**
  store {}* null, {}** %6, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !1, !align !2, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %7 = load i8*, i8** %1, align 8, !align !2
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h1a7f16176d1ca264E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_4 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hecbba59a19c50bfcE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_4, i64 %self
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17hb812adfd179cca63E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = icmp ult i64 %self, %slice.1
  br i1 %_3, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast i8** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i8** %0 to {}**
  store {}* null, {}** %2, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %_9 = call i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h1a7f16176d1ca264E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  store i8* %_9, i8** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %3 = load i8*, i8** %0, align 8, !align !2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h3585d6992ed7fd9cE"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hc7bd2f965307c8b1E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h18c6cae612a7ecfeE"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hce6ef00af7329cedE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !3, !noundef !1
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
  %layout.1 = load i64, i64* %11, align 8, !range !6, !noundef !1
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h77da430cebdb3642E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h311f606d72248f77E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !8, !noundef !1
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
  %14 = load i64, i64* %13, align 8, !range !8, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf97ff49afba8a9a5E"(i8* %0) unnamed_addr #0 {
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
define internal i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4last17hec1ddfffcb1cda4bE"(i8* %0, i8* %1) unnamed_addr #0 {
start:
  %self = alloca { i8*, i8* }, align 8
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 0
  store i8* %0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  store i8* %1, i8** %3, align 8
  %4 = call i32 @"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hc45f8aa8b3e459abE"({ i8*, i8* }* align 8 %self), !range !12
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %4
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20cd77259f5362fE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i32, i32 } @_ZN4core3str11validations15next_code_point17h65b49ec5db2ad8aaE({ i8*, i8* }* align 8 %self)
  %_2.0 = extractvalue { i32, i32 } %0, 0
  %_2.1 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i32 @"_ZN4core6option15Option$LT$T$GT$3map17h17fa1fe1e7f28f86E"(i32 %_2.0, i32 %_2.1), !range !12
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h4690d53201cb3364E"(i32 %ch) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char18from_u32_unchecked17hbb193954c347a126E(i32 %ch), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hc207b9c953919c79E"() unnamed_addr #0 {
start:
  %0 = alloca { i32, i32 }, align 4
  %1 = bitcast { i32, i32 }* %0 to i32*
  store i32 0, i32* %1, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %3 = load i32, i32* %2, align 4, !range !9, !noundef !1
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = insertvalue { i32, i32 } undef, i32 %3, 0
  %7 = insertvalue { i32, i32 } %6, i32 %5, 1
  ret { i32, i32 } %7
}

; Function Attrs: inlinehint uwtable
define internal { i64, i32 } @"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f50ac0892572ac2E"(%"core::str::iter::CharIndices"* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %_14 = alloca { i64, i32 }, align 8
  %_4 = alloca i32, align 4
  %4 = alloca { i64, i32 }, align 8
  %_3 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %self, i32 0, i32 1
  %5 = bitcast { i8*, i8* }* %_3 to i8**
  %start1.i1 = load i8*, i8** %5, align 8, !nonnull !1, !noundef !1
  %_5.i2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i1)
  %6 = icmp eq i64 1, 0
  br i1 %6, label %bb3.i6, label %bb8.i9

bb3.i6:                                           ; preds = %start
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_3, i32 0, i32 1
  %_9.i4 = load i8*, i8** %7, align 8
  %_8.i5 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd6ff404e9228653fE"(i8* %_9.i4)
  %_11.i13 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i1)
  %_10.i14 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h184916e71b5e70c0E"(i8* %_11.i13)
  %8 = sub i64 %_8.i5, %_10.i14
  store i64 %8, i64* %1, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit15"

bb8.i9:                                           ; preds = %start
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_3, i32 0, i32 1
  %_15.i7 = load i8*, i8** %9, align 8
  %_14.i8 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd6ff404e9228653fE"(i8* %_15.i7)
  %_17.i10 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i1)
  %_16.i11 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h184916e71b5e70c0E"(i8* %_17.i10)
  %10 = sub nuw i64 %_14.i8, %_16.i11
  store i64 %10, i64* %0, align 8
  %diff.i12 = load i64, i64* %0, align 8
  %11 = udiv exact i64 %diff.i12, 1
  store i64 %11, i64* %1, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit15"

"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit15": ; preds = %bb8.i9, %bb3.i6
  %12 = load i64, i64* %1, align 8
  br label %bb1

bb1:                                              ; preds = %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit15"
  %_5 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %self, i32 0, i32 1
  %13 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20cd77259f5362fE"({ i8*, i8* }* align 8 %_5), !range !12
  store i32 %13, i32* %_4, align 4
  br label %bb2

bb2:                                              ; preds = %bb1
  %14 = load i32, i32* %_4, align 4, !range !12, !noundef !1
  %15 = sub i32 %14, 1114112
  %16 = icmp eq i32 %15, 0
  %_6 = select i1 %16, i64 0, i64 1
  switch i64 %_6, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb5:                                              ; preds = %bb2
  %17 = bitcast { i64, i32 }* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 1114112, i32* %18, align 8
  br label %bb7

bb3:                                              ; preds = %bb2
  %ch = load i32, i32* %_4, align 4, !range !11, !noundef !1
  %19 = bitcast %"core::str::iter::CharIndices"* %self to i64*
  %index = load i64, i64* %19, align 8
  %_10 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %self, i32 0, i32 1
  %20 = bitcast { i8*, i8* }* %_10 to i8**
  %start1.i = load i8*, i8** %20, align 8, !nonnull !1, !noundef !1
  %_5.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i)
  %21 = icmp eq i64 1, 0
  br i1 %21, label %bb3.i, label %bb8.i

bb3.i:                                            ; preds = %bb3
  %22 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_10, i32 0, i32 1
  %_9.i = load i8*, i8** %22, align 8
  %_8.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd6ff404e9228653fE"(i8* %_9.i)
  %_11.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i)
  %_10.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h184916e71b5e70c0E"(i8* %_11.i)
  %23 = sub i64 %_8.i, %_10.i
  store i64 %23, i64* %3, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit"

bb8.i:                                            ; preds = %bb3
  %24 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_10, i32 0, i32 1
  %_15.i = load i8*, i8** %24, align 8
  %_14.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd6ff404e9228653fE"(i8* %_15.i)
  %_17.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i)
  %_16.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h184916e71b5e70c0E"(i8* %_17.i)
  %25 = sub nuw i64 %_14.i, %_16.i
  store i64 %25, i64* %2, align 8
  %diff.i = load i64, i64* %2, align 8
  %26 = udiv exact i64 %diff.i, 1
  store i64 %26, i64* %3, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit"

"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit": ; preds = %bb8.i, %bb3.i
  %27 = load i64, i64* %3, align 8
  br label %bb6

bb6:                                              ; preds = %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit"
  %_11 = sub i64 %12, %27
  %28 = bitcast %"core::str::iter::CharIndices"* %self to i64*
  %29 = bitcast %"core::str::iter::CharIndices"* %self to i64*
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, %_11
  store i64 %31, i64* %28, align 8
  %32 = bitcast { i64, i32 }* %_14 to i64*
  store i64 %index, i64* %32, align 8
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %_14, i32 0, i32 1
  store i32 %ch, i32* %33, align 8
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %_14, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %_14, i32 0, i32 1
  %37 = load i32, i32* %36, align 8, !range !11, !noundef !1
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 8, !range !12, !noundef !1
  %44 = insertvalue { i64, i32 } undef, i64 %41, 0
  %45 = insertvalue { i64, i32 } %44, i32 %43, 1
  ret { i64, i32 } %45
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9ca24ca4623527bE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81d13bacb653873eE"(i8* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 1, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_11 = load i8*, i8** %5, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h55e714a4d0c6d30aE"(i8* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %6 = bitcast { i8*, i8* }* %self to i8**
  %_15 = load i8*, i8** %6, align 8, !nonnull !1, !noundef !1
  %_14 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_16 = load i8*, i8** %7, align 8
  %_12 = icmp eq i8* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
  %old.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %_12.i)
  %9 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %9, align 8, !nonnull !1, !noundef !1
  %_15.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %_16.i)
  %10 = getelementptr inbounds i8, i8* %_15.i, i64 1
  store i8* %10, i8** %0, align 8
  %_3.i.i = load i8*, i8** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hff7c9b0a9047cda8E"(i8* %_3.i.i)
  %11 = bitcast { i8*, i8* }* %self to i8**
  store i8* %_13.i, i8** %11, align 8
  store i8* %old.i, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %13 = bitcast i8** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = bitcast i8** %2 to {}**
  store {}* null, {}** %14, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %15 = load i8*, i8** %2, align 8, !align !2
  ret i8* %15

bb13:                                             ; preds = %bb12
  store i8* %12, i8** %2, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define void @"_ZN95_$LT$core..str..pattern..MultiCharEqPattern$LT$C$GT$$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17ha566f42a0a2552a2E"(%"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* sret(%"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>") %0, [0 x i8]* align 1 %haystack.0, i64 %haystack.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_5 = alloca %"core::str::iter::CharIndices", align 8
  invoke void @"_ZN4core3str21_$LT$impl$u20$str$GT$12char_indices17h27765a8ca6559bf4E"(%"core::str::iter::CharIndices"* sret(%"core::str::iter::CharIndices") %_5, [0 x i8]* align 1 %haystack.0, i64 %haystack.1)
          to label %bb1 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb2

bb1:                                              ; preds = %start
  %7 = bitcast %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* %0 to %"[closure@core::str::<impl str>::trim_start::{closure#0}]"*
  %8 = bitcast %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* %0 to { [0 x i8]*, i64 }*
  %9 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %8, i32 0, i32 0
  store [0 x i8]* %haystack.0, [0 x i8]** %9, align 8
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %8, i32 0, i32 1
  store i64 %haystack.1, i64* %10, align 8
  %11 = getelementptr inbounds %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>", %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* %0, i32 0, i32 2
  %12 = bitcast %"core::str::iter::CharIndices"* %11 to i8*
  %13 = bitcast %"core::str::iter::CharIndices"* %_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  ret void

bb3:                                              ; preds = %bb2
  %14 = bitcast { i8*, i32 }* %1 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hc45f8aa8b3e459abE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i32, i32 } @_ZN4core3str11validations23next_code_point_reverse17hc491f0df07b56501E({ i8*, i8* }* align 8 %self)
  %_2.0 = extractvalue { i32, i32 } %0, 0
  %_2.1 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i32 @"_ZN4core6option15Option$LT$T$GT$3map17h9b4b86c0bbdbc7beE"(i32 %_2.0, i32 %_2.1), !range !12
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back28_$u7b$$u7b$closure$u7d$$u7d$17h51849e133248fe36E"(i32 %ch) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char18from_u32_unchecked17hbb193954c347a126E(i32 %ch), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h5a309ab58e6d597cE"(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %0, %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* align 8 %self) unnamed_addr #0 {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %_5 = alloca { i64, i32 }, align 8
  %s = getelementptr inbounds %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>", %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* %self, i32 0, i32 2
  %_4 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %s, i32 0, i32 1
  %5 = bitcast { i8*, i8* }* %_4 to i8**
  %start1.i1 = load i8*, i8** %5, align 8, !nonnull !1, !noundef !1
  %_5.i2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i1)
  %6 = icmp eq i64 1, 0
  br i1 %6, label %bb3.i6, label %bb8.i9

bb3.i6:                                           ; preds = %start
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 1
  %_9.i4 = load i8*, i8** %7, align 8
  %_8.i5 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd6ff404e9228653fE"(i8* %_9.i4)
  %_11.i13 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i1)
  %_10.i14 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h184916e71b5e70c0E"(i8* %_11.i13)
  %8 = sub i64 %_8.i5, %_10.i14
  store i64 %8, i64* %2, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit15"

bb8.i9:                                           ; preds = %start
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 1
  %_15.i7 = load i8*, i8** %9, align 8
  %_14.i8 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd6ff404e9228653fE"(i8* %_15.i7)
  %_17.i10 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i1)
  %_16.i11 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h184916e71b5e70c0E"(i8* %_17.i10)
  %10 = sub nuw i64 %_14.i8, %_16.i11
  store i64 %10, i64* %1, align 8
  %diff.i12 = load i64, i64* %1, align 8
  %11 = udiv exact i64 %diff.i12, 1
  store i64 %11, i64* %2, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit15"

"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit15": ; preds = %bb8.i9, %bb3.i6
  %12 = load i64, i64* %2, align 8
  br label %bb1

bb1:                                              ; preds = %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit15"
  %13 = call { i64, i32 } @"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f50ac0892572ac2E"(%"core::str::iter::CharIndices"* align 8 %s)
  store { i64, i32 } %13, { i64, i32 }* %_5, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %_5, i32 0, i32 1
  %15 = load i32, i32* %14, align 8, !range !12, !noundef !1
  %16 = sub i32 %15, 1114112
  %17 = icmp eq i32 %16, 0
  %_7 = select i1 %17, i64 0, i64 1
  %18 = icmp eq i64 %_7, 1
  br i1 %18, label %bb3, label %bb8

bb3:                                              ; preds = %bb2
  %19 = bitcast { i64, i32 }* %_5 to i64*
  %i = load i64, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %_5, i32 0, i32 1
  %c = load i32, i32* %20, align 8, !range !11, !noundef !1
  %_11 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %s, i32 0, i32 1
  %21 = bitcast { i8*, i8* }* %_11 to i8**
  %start1.i = load i8*, i8** %21, align 8, !nonnull !1, !noundef !1
  %_5.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i)
  %22 = icmp eq i64 1, 0
  br i1 %22, label %bb3.i, label %bb8.i

bb3.i:                                            ; preds = %bb3
  %23 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 1
  %_9.i = load i8*, i8** %23, align 8
  %_8.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd6ff404e9228653fE"(i8* %_9.i)
  %_11.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i)
  %_10.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h184916e71b5e70c0E"(i8* %_11.i)
  %24 = sub i64 %_8.i, %_10.i
  store i64 %24, i64* %4, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit"

bb8.i:                                            ; preds = %bb3
  %25 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 1
  %_15.i = load i8*, i8** %25, align 8
  %_14.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd6ff404e9228653fE"(i8* %_15.i)
  %_17.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE"(i8* %start1.i)
  %_16.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h184916e71b5e70c0E"(i8* %_17.i)
  %26 = sub nuw i64 %_14.i, %_16.i
  store i64 %26, i64* %3, align 8
  %diff.i = load i64, i64* %3, align 8
  %27 = udiv exact i64 %diff.i, 1
  store i64 %27, i64* %4, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit"

"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit": ; preds = %bb8.i, %bb3.i
  %28 = load i64, i64* %4, align 8
  br label %bb4

bb8:                                              ; preds = %bb2
  %29 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 2, i64* %29, align 8
  br label %bb10

bb10:                                             ; preds = %bb9, %bb8
  ret void

bb4:                                              ; preds = %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h76c8c9d9aa178875E.exit"
  %char_len = sub i64 %12, %28
  %_16 = bitcast %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* %self to %"[closure@core::str::<impl str>::trim_start::{closure#0}]"*
  %_15 = call zeroext i1 @"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hed2a0afe1b1258e8E"(%"[closure@core::str::<impl str>::trim_start::{closure#0}]"* align 1 %_16, i32 %c)
  br label %bb5

bb5:                                              ; preds = %bb4
  br i1 %_15, label %bb6, label %bb7

bb7:                                              ; preds = %bb5
  %_23 = add i64 %i, %char_len
  %30 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Reject"*
  %31 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %30, i32 0, i32 1
  store i64 %i, i64* %31, align 8
  %32 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Reject"*
  %33 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %32, i32 0, i32 2
  store i64 %_23, i64* %33, align 8
  %34 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 1, i64* %34, align 8
  br label %bb9

bb6:                                              ; preds = %bb5
  %_19 = add i64 %i, %char_len
  %35 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Match"*
  %36 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %35, i32 0, i32 1
  store i64 %i, i64* %36, align 8
  %37 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Match"*
  %38 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %37, i32 0, i32 2
  store i64 %_19, i64* %38, align 8
  %39 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 0, i64* %39, align 8
  br label %bb9

bb9:                                              ; preds = %bb6, %bb7
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define void @"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h174ad061645e97aaE"(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, %"core::str::pattern::CharPredicateSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"core::str::pattern::CharPredicateSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* %self to %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"*
  call void @_ZN4core3str7pattern8Searcher11next_reject17h921ad41d09da9bc2E(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, %"core::str::pattern::MultiCharEqSearcher<[closure@core::str::<impl str>::trim_start::{closure#0}]>"* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @opng_str2ulong(%"core::result::Result<u64, alloc::string::String>"* sret(%"core::result::Result<u64, alloc::string::String>") %0, [0 x i8]* align 1 %in_str.0, i64 %in_str.1, i1 zeroext %allow_multiplier) unnamed_addr #1 {
start:
  %_81 = alloca %"alloc::string::String", align 8
  %_70 = alloca %"alloc::string::String", align 8
  %_57 = alloca i64, align 8
  %_48 = alloca i64, align 8
  %_39 = alloca i64, align 8
  %_31 = alloca i32, align 4
  %multiplier = alloca i32, align 4
  %end_ptr = alloca { [0 x i8]*, i64 }, align 8
  %_25 = alloca %"alloc::string::String", align 8
  %_22 = alloca %"alloc::string::String", align 8
  %_19 = alloca %"alloc::string::String", align 8
  %_14 = alloca %"core::result::Result<u64, core::num::error::ParseIntError>", align 8
  %_8 = alloca { i8*, i8* }, align 8
  %_6 = alloca i32, align 4
  %out_val = alloca i64, align 8
  %1 = call { [0 x i8]*, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$10trim_start17h39256db5dcdd50bcE"([0 x i8]* align 1 %in_str.0, i64 %in_str.1)
  %trimmed_str.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %trimmed_str.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  store i64 0, i64* %out_val, align 8
  %2 = call { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h402f8f96e9620834E"([0 x i8]* align 1 %trimmed_str.0, i64 %trimmed_str.1)
  store { i8*, i8* } %2, { i8*, i8* }* %_8, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20cd77259f5362fE"({ i8*, i8* }* align 8 %_8), !range !12
  store i32 %3, i32* %_6, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = load i32, i32* %_6, align 4, !range !12, !noundef !1
  %5 = sub i32 %4, 1114112
  %6 = icmp eq i32 %5, 0
  %_10 = select i1 %6, i64 0, i64 1
  %7 = icmp eq i64 %_10, 1
  br i1 %7, label %bb4, label %bb14

bb4:                                              ; preds = %bb3
  %first_char = load i32, i32* %_6, align 4, !range !11, !noundef !1
  %_12 = call zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8is_digit17h7f832e2eb4db98b4E"(i32 %first_char, i32 10)
  br label %bb5

bb14:                                             ; preds = %bb3
  call void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17hb7be956587b277f5E"(%"alloc::string::String"* sret(%"alloc::string::String") %_25, [0 x i8]* align 1 bitcast (<{ [21 x i8] }>* @alloc212 to [0 x i8]*), i64 21)
  br label %bb15

bb15:                                             ; preds = %bb14
  %8 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to %"core::result::Result<u64, alloc::string::String>::Err"*
  %9 = getelementptr inbounds %"core::result::Result<u64, alloc::string::String>::Err", %"core::result::Result<u64, alloc::string::String>::Err"* %8, i32 0, i32 1
  %10 = bitcast %"alloc::string::String"* %9 to i8*
  %11 = bitcast %"alloc::string::String"* %_25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  %12 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to i64*
  store i64 1, i64* %12, align 8
  br label %bb46

bb46:                                             ; preds = %bb13, %bb45, %bb43, %bb37, %bb11, %bb15
  ret void

bb5:                                              ; preds = %bb4
  br i1 %_12, label %bb6, label %bb12

bb12:                                             ; preds = %bb5
  call void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17hb7be956587b277f5E"(%"alloc::string::String"* sret(%"alloc::string::String") %_22, [0 x i8]* align 1 bitcast (<{ [21 x i8] }>* @alloc212 to [0 x i8]*), i64 21)
  br label %bb13

bb6:                                              ; preds = %bb5
  call void @"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u64$GT$8from_str17h96bfc060aabca0a2E"(%"core::result::Result<u64, core::num::error::ParseIntError>"* sret(%"core::result::Result<u64, core::num::error::ParseIntError>") %_14, [0 x i8]* align 1 %trimmed_str.0, i64 %trimmed_str.1)
  br label %bb7

bb7:                                              ; preds = %bb6
  %13 = bitcast %"core::result::Result<u64, core::num::error::ParseIntError>"* %_14 to i8*
  %14 = load i8, i8* %13, align 8, !range !4, !noundef !1
  %15 = trunc i8 %14 to i1
  %_16 = zext i1 %15 to i64
  switch i64 %_16, label %bb9 [
    i64 0, label %bb10
    i64 1, label %bb8
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb10:                                             ; preds = %bb7
  %16 = bitcast %"core::result::Result<u64, core::num::error::ParseIntError>"* %_14 to %"core::result::Result<u64, core::num::error::ParseIntError>::Ok"*
  %17 = getelementptr inbounds %"core::result::Result<u64, core::num::error::ParseIntError>::Ok", %"core::result::Result<u64, core::num::error::ParseIntError>::Ok"* %16, i32 0, i32 1
  %val = load i64, i64* %17, align 8
  store i64 %val, i64* %out_val, align 8
  %18 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  store [0 x i8]* %trimmed_str.0, [0 x i8]** %18, align 8
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  store i64 %trimmed_str.1, i64* %19, align 8
  br i1 %allow_multiplier, label %bb16, label %bb40

bb8:                                              ; preds = %bb7
  call void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17hb7be956587b277f5E"(%"alloc::string::String"* sret(%"alloc::string::String") %_19, [0 x i8]* align 1 bitcast (<{ [21 x i8] }>* @alloc212 to [0 x i8]*), i64 21)
  br label %bb11

bb11:                                             ; preds = %bb8
  %20 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to %"core::result::Result<u64, alloc::string::String>::Err"*
  %21 = getelementptr inbounds %"core::result::Result<u64, alloc::string::String>::Err", %"core::result::Result<u64, alloc::string::String>::Err"* %20, i32 0, i32 1
  %22 = bitcast %"alloc::string::String"* %21 to i8*
  %23 = bitcast %"alloc::string::String"* %_19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 24, i1 false)
  %24 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to i64*
  store i64 1, i64* %24, align 8
  br label %bb46

bb40:                                             ; preds = %bb39, %bb33, %bb10
  %25 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  %_79.0 = load [0 x i8]*, [0 x i8]** %25, align 8, !nonnull !1, !align !2, !noundef !1
  %26 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  %_79.1 = load i64, i64* %26, align 8
  %27 = call { [0 x i8]*, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$10trim_start17h39256db5dcdd50bcE"([0 x i8]* align 1 %_79.0, i64 %_79.1)
  %_78.0 = extractvalue { [0 x i8]*, i64 } %27, 0
  %_78.1 = extractvalue { [0 x i8]*, i64 } %27, 1
  br label %bb41

bb16:                                             ; preds = %bb10
  %28 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  %_33.0 = load [0 x i8]*, [0 x i8]** %28, align 8, !nonnull !1, !align !2, !noundef !1
  %29 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  %_33.1 = load i64, i64* %29, align 8
  %30 = call { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h402f8f96e9620834E"([0 x i8]* align 1 %_33.0, i64 %_33.1)
  %_32.0 = extractvalue { i8*, i8* } %30, 0
  %_32.1 = extractvalue { i8*, i8* } %30, 1
  br label %bb17

bb17:                                             ; preds = %bb16
  %31 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4last17hec1ddfffcb1cda4bE"(i8* %_32.0, i8* %_32.1), !range !12
  store i32 %31, i32* %_31, align 4
  br label %bb18

bb18:                                             ; preds = %bb17
  %32 = load i32, i32* %_31, align 4, !range !12, !noundef !1
  %33 = sub i32 %32, 1114112
  %34 = icmp eq i32 %33, 0
  %_34 = select i1 %34, i64 0, i64 1
  %35 = icmp eq i64 %_34, 1
  br i1 %35, label %bb20, label %bb19

bb20:                                             ; preds = %bb18
  %36 = load i32, i32* %_31, align 4, !range !11, !noundef !1
  switch i32 %36, label %bb19 [
    i32 107, label %bb21
    i32 75, label %bb21
    i32 77, label %bb25
    i32 71, label %bb29
  ]

bb19:                                             ; preds = %bb20, %bb18
  store i32 1, i32* %multiplier, align 4
  br label %bb33

bb21:                                             ; preds = %bb20, %bb20
  %37 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  %_38.0 = load [0 x i8]*, [0 x i8]** %37, align 8, !nonnull !1, !align !2, !noundef !1
  %38 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  %_38.1 = load i64, i64* %38, align 8
  %39 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  %_42.0 = load [0 x i8]*, [0 x i8]** %39, align 8, !nonnull !1, !align !2, !noundef !1
  %40 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  %_42.1 = load i64, i64* %40, align 8
  %_41 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h7690410b98be9ed4E"([0 x i8]* align 1 %_42.0, i64 %_42.1)
  br label %bb22

bb25:                                             ; preds = %bb20
  %41 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  %_47.0 = load [0 x i8]*, [0 x i8]** %41, align 8, !nonnull !1, !align !2, !noundef !1
  %42 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  %_47.1 = load i64, i64* %42, align 8
  %43 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  %_51.0 = load [0 x i8]*, [0 x i8]** %43, align 8, !nonnull !1, !align !2, !noundef !1
  %44 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  %_51.1 = load i64, i64* %44, align 8
  %_50 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h7690410b98be9ed4E"([0 x i8]* align 1 %_51.0, i64 %_51.1)
  br label %bb26

bb29:                                             ; preds = %bb20
  %45 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  %_56.0 = load [0 x i8]*, [0 x i8]** %45, align 8, !nonnull !1, !align !2, !noundef !1
  %46 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  %_56.1 = load i64, i64* %46, align 8
  %47 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  %_60.0 = load [0 x i8]*, [0 x i8]** %47, align 8, !nonnull !1, !align !2, !noundef !1
  %48 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  %_60.1 = load i64, i64* %48, align 8
  %_59 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h7690410b98be9ed4E"([0 x i8]* align 1 %_60.0, i64 %_60.1)
  br label %bb30

bb33:                                             ; preds = %bb24, %bb28, %bb32, %bb19
  %_63 = load i32, i32* %multiplier, align 4
  %_62 = icmp sgt i32 %_63, 1
  br i1 %_62, label %bb34, label %bb40

bb30:                                             ; preds = %bb29
  %49 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_59, i64 1)
  %_61.0 = extractvalue { i64, i1 } %49, 0
  %_61.1 = extractvalue { i64, i1 } %49, 1
  %50 = call i1 @llvm.expect.i1(i1 %_61.1, i1 false)
  br i1 %50, label %panic, label %bb31

bb31:                                             ; preds = %bb30
  store i64 %_61.0, i64* %_57, align 8
  %51 = load i64, i64* %_57, align 8
  %52 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h028d99b792d5ded5E"([0 x i8]* align 1 %_56.0, i64 %_56.1, i64 %51, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc197 to %"core::panic::location::Location"*))
  %_55.0 = extractvalue { [0 x i8]*, i64 } %52, 0
  %_55.1 = extractvalue { [0 x i8]*, i64 } %52, 1
  br label %bb32

panic:                                            ; preds = %bb30
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc195 to %"core::panic::location::Location"*)) #13
  unreachable

bb32:                                             ; preds = %bb31
  %53 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  store [0 x i8]* %_55.0, [0 x i8]** %53, align 8
  %54 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  store i64 %_55.1, i64* %54, align 8
  store i32 1073741824, i32* %multiplier, align 4
  br label %bb33

bb26:                                             ; preds = %bb25
  %55 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_50, i64 1)
  %_52.0 = extractvalue { i64, i1 } %55, 0
  %_52.1 = extractvalue { i64, i1 } %55, 1
  %56 = call i1 @llvm.expect.i1(i1 %_52.1, i1 false)
  br i1 %56, label %panic1, label %bb27

bb27:                                             ; preds = %bb26
  store i64 %_52.0, i64* %_48, align 8
  %57 = load i64, i64* %_48, align 8
  %58 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h028d99b792d5ded5E"([0 x i8]* align 1 %_47.0, i64 %_47.1, i64 %57, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc201 to %"core::panic::location::Location"*))
  %_46.0 = extractvalue { [0 x i8]*, i64 } %58, 0
  %_46.1 = extractvalue { [0 x i8]*, i64 } %58, 1
  br label %bb28

panic1:                                           ; preds = %bb26
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc199 to %"core::panic::location::Location"*)) #13
  unreachable

bb28:                                             ; preds = %bb27
  %59 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  store [0 x i8]* %_46.0, [0 x i8]** %59, align 8
  %60 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  store i64 %_46.1, i64* %60, align 8
  store i32 1048576, i32* %multiplier, align 4
  br label %bb33

bb22:                                             ; preds = %bb21
  %61 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_41, i64 1)
  %_43.0 = extractvalue { i64, i1 } %61, 0
  %_43.1 = extractvalue { i64, i1 } %61, 1
  %62 = call i1 @llvm.expect.i1(i1 %_43.1, i1 false)
  br i1 %62, label %panic2, label %bb23

bb23:                                             ; preds = %bb22
  store i64 %_43.0, i64* %_39, align 8
  %63 = load i64, i64* %_39, align 8
  %64 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h028d99b792d5ded5E"([0 x i8]* align 1 %_38.0, i64 %_38.1, i64 %63, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc205 to %"core::panic::location::Location"*))
  %_37.0 = extractvalue { [0 x i8]*, i64 } %64, 0
  %_37.1 = extractvalue { [0 x i8]*, i64 } %64, 1
  br label %bb24

panic2:                                           ; preds = %bb22
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc203 to %"core::panic::location::Location"*)) #13
  unreachable

bb24:                                             ; preds = %bb23
  %65 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 0
  store [0 x i8]* %_37.0, [0 x i8]** %65, align 8
  %66 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %end_ptr, i32 0, i32 1
  store i64 %_37.1, i64* %66, align 8
  store i32 1024, i32* %multiplier, align 4
  br label %bb33

bb34:                                             ; preds = %bb33
  %_65 = load i64, i64* %out_val, align 8
  %_68 = load i32, i32* %multiplier, align 4
  %_67 = sext i32 %_68 to i64
  %_69 = icmp eq i64 %_67, 0
  %67 = call i1 @llvm.expect.i1(i1 %_69, i1 false)
  br i1 %67, label %panic3, label %bb35

bb35:                                             ; preds = %bb34
  %_66 = udiv i64 -1, %_67
  %_64 = icmp ugt i64 %_65, %_66
  br i1 %_64, label %bb36, label %bb38

panic3:                                           ; preds = %bb34
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([25 x i8]* @str.1 to [0 x i8]*), i64 25, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc207 to %"core::panic::location::Location"*)) #13
  unreachable

bb38:                                             ; preds = %bb35
  %_74 = load i32, i32* %multiplier, align 4
  %_73 = sext i32 %_74 to i64
  %68 = load i64, i64* %out_val, align 8
  %69 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %68, i64 %_73)
  %_75.0 = extractvalue { i64, i1 } %69, 0
  %_75.1 = extractvalue { i64, i1 } %69, 1
  %70 = call i1 @llvm.expect.i1(i1 %_75.1, i1 false)
  br i1 %70, label %panic4, label %bb39

bb36:                                             ; preds = %bb35
  call void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17hb7be956587b277f5E"(%"alloc::string::String"* sret(%"alloc::string::String") %_70, [0 x i8]* align 1 bitcast (<{ [15 x i8] }>* @alloc208 to [0 x i8]*), i64 15)
  br label %bb37

bb37:                                             ; preds = %bb36
  %71 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to %"core::result::Result<u64, alloc::string::String>::Err"*
  %72 = getelementptr inbounds %"core::result::Result<u64, alloc::string::String>::Err", %"core::result::Result<u64, alloc::string::String>::Err"* %71, i32 0, i32 1
  %73 = bitcast %"alloc::string::String"* %72 to i8*
  %74 = bitcast %"alloc::string::String"* %_70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 24, i1 false)
  %75 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to i64*
  store i64 1, i64* %75, align 8
  br label %bb46

bb39:                                             ; preds = %bb38
  store i64 %_75.0, i64* %out_val, align 8
  br label %bb40

panic4:                                           ; preds = %bb38
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc210 to %"core::panic::location::Location"*)) #13
  unreachable

bb41:                                             ; preds = %bb40
  %_76 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$8is_empty17h5b91e46fbfcc3d61E"([0 x i8]* align 1 %_78.0, i64 %_78.1)
  br label %bb42

bb42:                                             ; preds = %bb41
  br i1 %_76, label %bb43, label %bb44

bb44:                                             ; preds = %bb42
  call void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17hb7be956587b277f5E"(%"alloc::string::String"* sret(%"alloc::string::String") %_81, [0 x i8]* align 1 bitcast (<{ [21 x i8] }>* @alloc212 to [0 x i8]*), i64 21)
  br label %bb45

bb43:                                             ; preds = %bb42
  %_80 = load i64, i64* %out_val, align 8
  %76 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to %"core::result::Result<u64, alloc::string::String>::Ok"*
  %77 = getelementptr inbounds %"core::result::Result<u64, alloc::string::String>::Ok", %"core::result::Result<u64, alloc::string::String>::Ok"* %76, i32 0, i32 1
  store i64 %_80, i64* %77, align 8
  %78 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to i64*
  store i64 0, i64* %78, align 8
  br label %bb46

bb45:                                             ; preds = %bb44
  %79 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to %"core::result::Result<u64, alloc::string::String>::Err"*
  %80 = getelementptr inbounds %"core::result::Result<u64, alloc::string::String>::Err", %"core::result::Result<u64, alloc::string::String>::Err"* %79, i32 0, i32 1
  %81 = bitcast %"alloc::string::String"* %80 to i8*
  %82 = bitcast %"alloc::string::String"* %_81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 24, i1 false)
  %83 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to i64*
  store i64 1, i64* %83, align 8
  br label %bb46

bb13:                                             ; preds = %bb12
  %84 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to %"core::result::Result<u64, alloc::string::String>::Err"*
  %85 = getelementptr inbounds %"core::result::Result<u64, alloc::string::String>::Err", %"core::result::Result<u64, alloc::string::String>::Err"* %84, i32 0, i32 1
  %86 = bitcast %"alloc::string::String"* %85 to i8*
  %87 = bitcast %"alloc::string::String"* %_22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 24, i1 false)
  %88 = bitcast %"core::result::Result<u64, alloc::string::String>"* %0 to i64*
  store i64 1, i64* %88, align 8
  br label %bb46
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_27 = alloca [1 x { i8*, i64* }], align 8
  %_20 = alloca %"core::fmt::Arguments", align 8
  %e = alloca %"alloc::string::String", align 8
  %_14 = alloca [1 x { i8*, i64* }], align 8
  %_7 = alloca %"core::fmt::Arguments", align 8
  %val = alloca i64, align 8
  %_1 = alloca %"core::result::Result<u64, alloc::string::String>", align 8
  call void @opng_str2ulong(%"core::result::Result<u64, alloc::string::String>"* sret(%"core::result::Result<u64, alloc::string::String>") %_1, [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc213 to [0 x i8]*), i64 5, i1 zeroext true)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"core::result::Result<u64, alloc::string::String>"* %_1 to i64*
  %_4 = load i64, i64* %1, align 8, !range !8, !noundef !1
  switch i64 %_4, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %2 = bitcast %"core::result::Result<u64, alloc::string::String>"* %_1 to %"core::result::Result<u64, alloc::string::String>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<u64, alloc::string::String>::Ok", %"core::result::Result<u64, alloc::string::String>::Ok"* %2, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %val, align 8
  %5 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h7262c348838392f2E(i64* align 8 %val)
  %_15.0 = extractvalue { i8*, i64* } %5, 0
  %_15.1 = extractvalue { i8*, i64* } %5, 1
  br label %bb5

bb2:                                              ; preds = %bb1
  %6 = bitcast %"core::result::Result<u64, alloc::string::String>"* %_1 to %"core::result::Result<u64, alloc::string::String>::Err"*
  %7 = getelementptr inbounds %"core::result::Result<u64, alloc::string::String>::Err", %"core::result::Result<u64, alloc::string::String>::Err"* %6, i32 0, i32 1
  %8 = bitcast %"alloc::string::String"* %e to i8*
  %9 = bitcast %"alloc::string::String"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false)
  %10 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h7cae7a693063daf7E(%"alloc::string::String"* align 8 %e)
          to label %bb7 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4d6a192163028118E"(%"alloc::string::String"* %e) #14
          to label %bb12 unwind label %abort

cleanup:                                          ; preds = %bb8, %bb7, %bb2
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb10

bb7:                                              ; preds = %bb2
  %_28.0 = extractvalue { i8*, i64* } %10, 0
  %_28.1 = extractvalue { i8*, i64* } %10, 1
  %16 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_27, i64 0, i64 0
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 0
  store i8* %_28.0, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 1
  store i64* %_28.1, i64** %18, align 8
  %_24.0 = bitcast [1 x { i8*, i64* }]* %_27 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117h5bcd16e8bb7029a9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_20, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc80 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_24.0, i64 1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_20)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4d6a192163028118E"(%"alloc::string::String"* %e)
  br label %bb11

abort:                                            ; preds = %bb10
  %19 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #15
  unreachable

bb12:                                             ; preds = %bb10
  %20 = bitcast { i8*, i32 }* %0 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25

bb11:                                             ; preds = %bb6, %bb9
  ret void

bb5:                                              ; preds = %bb4
  %26 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_14, i64 0, i64 0
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %26, i32 0, i32 0
  store i8* %_15.0, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %26, i32 0, i32 1
  store i64* %_15.1, i64** %28, align 8
  %_11.0 = bitcast [1 x { i8*, i64* }]* %_14 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h5bcd16e8bb7029a9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_7, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc84 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_11.0, i64 1)
  br label %bb6

bb6:                                              ; preds = %bb5
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_7)
  br label %bb11
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb5d5637c14577644E"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #9

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core3str16slice_error_fail17h2805d168fae0f9a7E([0 x i8]* align 1, i64, i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core7unicode12unicode_data11white_space6lookup17hf0a69307275f97fcE(i32) unnamed_addr #1

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #10

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #10

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #10

; Function Attrs: noreturn uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() unnamed_addr #11

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #12

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare void @"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u64$GT$8from_str17h96bfc060aabca0a2E"(%"core::result::Result<u64, core::num::error::ParseIntError>"* sret(%"core::result::Result<u64, core::num::error::ParseIntError>"), [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #7

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nosync nounwind readnone willreturn }
attributes #9 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #11 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #12 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #13 = { noreturn }
attributes #14 = { noinline }
attributes #15 = { noinline noreturn nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i64 0, i64 -9223372036854775807}
!4 = !{i8 0, i8 2}
!5 = !{i64 8}
!6 = !{i64 1, i64 -9223372036854775807}
!7 = !{i64 1, i64 0}
!8 = !{i64 0, i64 2}
!9 = !{i32 0, i32 2}
!10 = !{i64 0, i64 3}
!11 = !{i32 0, i32 1114112}
!12 = !{i32 0, i32 1114113}
!13 = !{i64 0, i64 -9223372036854775806}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_str2ulong.rs.bc", hash: (1668653832, 2923695751, 2896489097, 2575583470, 3921509126))
^1 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb5d5637c14577644E") ; guid = 13531240843763559
^2 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17hcdba73dbfd8ceca7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 106405729699448933
^3 = gv: (name: "_ZN4core3str11validations15next_code_point17h65b49ec5db2ad8aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 81, calls: ((callee: ^203), (callee: ^183), (callee: ^200), (callee: ^23), (callee: ^123), (callee: ^55)), refs: (^208, ^87, ^153)))) ; guid = 189619545676782582
^4 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17he0951a68cd673b7cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^186), (callee: ^161))))) ; guid = 439377792795354611
^5 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^6 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hf6e79663f9d8d97dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 662871054161697290
^7 = gv: (name: "_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE") ; guid = 682884734678583306
^8 = gv: (name: "_ZN4core4char7convert18from_u32_unchecked17heeee804fded5cbd2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 700738112005816571
^9 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h36ec57aa7f9a947bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 821067095065778512
^10 = gv: (name: "_ZN4core5alloc6layout6Layout4size17hacfa1cf10c8a80c1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 834755069214340041
^11 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$12char_indices17h27765a8ca6559bf4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^72))))) ; guid = 868565256443059526
^12 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^13 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfe6c16f04de84fd4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^42))))) ; guid = 1138393139842467330
^14 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h18c6cae612a7ecfeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^91), (callee: ^16))))) ; guid = 1170699835363557956
^15 = gv: (name: "_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hed2a0afe1b1258e8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^68))))) ; guid = 1263138047409423484
^16 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h77da430cebdb3642E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^10), (callee: ^213), (callee: ^74))))) ; guid = 1270015036805813404
^17 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h967762657bf43bd2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^150), (callee: ^206), (callee: ^37), (callee: ^119)), refs: (^168)))) ; guid = 1368600464036814297
^18 = gv: (name: "alloc188", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1409079629487829050
^19 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^20 = gv: (name: "alloc153", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1624105879170905441
^21 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h1a7f16176d1ca264E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^152))))) ; guid = 1630979030524485738
^22 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h52ff3397e50dcac0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1960976484621337219
^23 = gv: (name: "_ZN4core3str11validations15utf8_first_byte17hf56a5306dd65f0fdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 2164393755243811106
^24 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h668a3053181cc8a9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 2286856993168986424
^25 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hba51f948ffc3132fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^105)), refs: (^168)))) ; guid = 2289696024175836749
^26 = gv: (name: "alloc185", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^120)))) ; guid = 2397232511928898647
^27 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2416468085053220404
^28 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h7cae7a693063daf7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^51)), refs: (^147)))) ; guid = 2534377118482144236
^29 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^30 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb6d0b13b0bef9d8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^109), (callee: ^146), (callee: ^212)), refs: (^168)))) ; guid = 2601500327887332336
^31 = gv: (name: "alloc190", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2779771780687573148
^32 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h2366a9e47db45f1fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 2792480604372573185
^33 = gv: (name: "_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hc45f8aa8b3e459abE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^141), (callee: ^159))))) ; guid = 2856366203798089111
^34 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4d6a192163028118E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^30))))) ; guid = 2865344571049859794
^35 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h22bdb6e2031c0c12E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 2930857709534716607
^36 = gv: (name: "_ZN5alloc5slice4hack6to_vec17h19b6ea770ee1565cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^99))))) ; guid = 3002533149029296711
^37 = gv: (name: "_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h174ad061645e97aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^56))))) ; guid = 3029360245174571335
^38 = gv: (name: "_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h028d99b792d5ded5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^100))))) ; guid = 3074565123805444711
^39 = gv: (name: "_ZN4core3str8converts19from_utf8_unchecked17hea44afb76cc3ef3dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 13))) ; guid = 3099684645778873283
^40 = gv: (name: "opng_str2ulong", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 256, calls: ((callee: ^64), (callee: ^72), (callee: ^131), (callee: ^201), (callee: ^96), (callee: ^196), (callee: ^193), (callee: ^150), (callee: ^38), (callee: ^121), (callee: ^43)), refs: (^157, ^207, ^82, ^128, ^108, ^41, ^58, ^67, ^204, ^27, ^84, ^61, ^93)))) ; guid = 3212144894920745388
^41 = gv: (name: "alloc199", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^144)))) ; guid = 3339403693476848328
^42 = gv: (name: "_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h4e224aa08c1d6676E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 3339802179090667052
^43 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$8is_empty17h5b91e46fbfcc3d61E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^150))))) ; guid = 3375816406938981649
^44 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h711dc4ba6cd4c4cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3387649748448412450
^45 = gv: (name: "_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h039b2418b8808fddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^88))))) ; guid = 3408268591906848669
^46 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hd7c60492bfaea8c5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^163))))) ; guid = 3602498155301230957
^47 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9bf170a35e98b142E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 3608131763908339604
^48 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h609d9717e4350232E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^139))))) ; guid = 3621692347504027416
^49 = gv: (name: "alloc189", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 3656441138164068169
^50 = gv: (name: "_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h3585d6992ed7fd9cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^194))))) ; guid = 3717950614315346838
^51 = gv: (name: "_ZN4core3fmt10ArgumentV13new17ha41e72521f87c4e7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 3803025191766906022
^52 = gv: (name: "alloc83", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4007508640782119155
^53 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf97ff49afba8a9a5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 4021818533556595290
^54 = gv: (name: "_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f50ac0892572ac2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 105, calls: ((callee: ^213), (callee: ^210), (callee: ^192), (callee: ^131))))) ; guid = 4100976992041181574
^55 = gv: (name: "_ZN4core3str11validations18utf8_acc_cont_byte17h69d98f2debb238e9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 4104715237923405694
^56 = gv: (name: "_ZN4core3str7pattern8Searcher11next_reject17h921ad41d09da9bc2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, calls: ((callee: ^191))))) ; guid = 4135014919237178550
^57 = gv: (name: "_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h4690d53201cb3364E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^209))))) ; guid = 4414458675164758740
^58 = gv: (name: "alloc205", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^144)))) ; guid = 4557807349303880231
^59 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_some17h855210d863229906E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 4622601460083479472
^60 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^61 = gv: (name: "alloc210", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^144)))) ; guid = 4674264632543861743
^62 = gv: (name: "_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h177be17aa6c8326cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^78), (callee: ^199))))) ; guid = 4879727342864890560
^63 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17h56532e3aeb275e27E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^10), (callee: ^156), (callee: ^19))))) ; guid = 5166354151587376026
^64 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$10trim_start17h39256db5dcdd50bcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^17))))) ; guid = 5203892223683682589
^65 = gv: (name: "alloc68", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^166)))) ; guid = 5467099099012622694
^66 = gv: (name: "llvm.uadd.sat.i32") ; guid = 5512586733557502133
^67 = gv: (name: "alloc203", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^144)))) ; guid = 5577536242542467478
^68 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$10trim_start28_$u7b$$u7b$closure$u7d$$u7d$17h3d118e4039a06201E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^81))))) ; guid = 5581305508698922106
^69 = gv: (name: "alloc79", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5677249537774702935
^70 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17hd961c209bc5d4ca0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^174), (callee: ^75))))) ; guid = 5745280119304205973
^71 = gv: (name: "_ZN4core3str16slice_error_fail17h2805d168fae0f9a7E") ; guid = 5788510974411133155
^72 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h402f8f96e9620834E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 30, calls: ((callee: ^188))))) ; guid = 5853079139844795706
^73 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h7262c348838392f2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^22)), refs: (^1)))) ; guid = 5895947371788972851
^74 = gv: (name: "_ZN5alloc5alloc7dealloc17h967bcd74bd548495E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^10), (callee: ^156), (callee: ^60))))) ; guid = 5919838564630598035
^75 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hf0039e1645d41683E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 6024598630688948867
^76 = gv: (name: "_ZN5alloc7raw_vec11alloc_guard17hda22b9f1badffe79E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 32, calls: ((callee: ^13))))) ; guid = 6069617319468985260
^77 = gv: (name: "_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back28_$u7b$$u7b$closure$u7d$$u7d$17h51849e133248fe36E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^209))))) ; guid = 6132458134196783005
^78 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17hd3cd31a674b2f7c3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 46, calls: ((callee: ^129), (callee: ^150), (callee: ^167))))) ; guid = 6138619483919080905
^79 = gv: (name: "_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h7bab08507b945664E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^45))))) ; guid = 6377029896358861586
^80 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^81 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$13is_whitespace17h805a43bfa5fb9e08E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 22, calls: ((callee: ^95))))) ; guid = 6385291786201231481
^82 = gv: (name: "alloc195", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^144)))) ; guid = 6416112985198887453
^83 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^84 = gv: (name: "alloc208", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6710371521985635641
^85 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^86 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hc48fed7befcb5632E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 127, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^177), (callee: ^94), (callee: ^10), (callee: ^7), (callee: ^76), (callee: ^130), (callee: ^205), (callee: ^4), (callee: ^211), (callee: ^213), (callee: ^90)), refs: (^168)))) ; guid = 6899575053365766688
^87 = gv: (name: "alloc175", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^125)))) ; guid = 6980907443982879071
^88 = gv: (name: "_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h7c04705492e9d6a1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^36))))) ; guid = 7503265573294127940
^89 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17he7af176454bffc77E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^213))))) ; guid = 7666297303319519209
^90 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hd9e5e9ba90a94e32E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^161))))) ; guid = 7741509775384508751
^91 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hce6ef00af7329cedE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^177), (callee: ^25), (callee: ^136), (callee: ^134)), refs: (^170)))) ; guid = 7769545932550784174
^92 = gv: (name: "alloc187", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^190)))) ; guid = 7777455600032265347
^93 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7914010168652333224
^94 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hb2005d85d294165dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^70)), refs: (^168)))) ; guid = 7957621871850167937
^95 = gv: (name: "_ZN4core7unicode12unicode_data11white_space6lookup17hf0a69307275f97fcE") ; guid = 8046025271277223570
^96 = gv: (name: "_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17hb7be956587b277f5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^50))))) ; guid = 8268829249042956866
^97 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h8f93d2a4cb37ef7bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^213), (callee: ^189), (callee: ^47))))) ; guid = 8476634024861183217
^98 = gv: (name: "alloc183", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^125)))) ; guid = 8487579005672454118
^99 = gv: (name: "_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h74c7a578a2024a80E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^24), (callee: ^187), (callee: ^44), (callee: ^30), (callee: ^171), (callee: ^151), (callee: ^2), (callee: ^212)), refs: (^168)))) ; guid = 8555662416129503949
^100 = gv: (name: "_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17he5af6119e2693bacE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^62), (callee: ^71))))) ; guid = 8631776307933125858
^101 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17hb812adfd179cca63E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^21))))) ; guid = 8834635358918251038
^102 = gv: (name: "alloc179", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^125)))) ; guid = 9121907075437504701
^103 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hbacaf0ea823d760dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 9124143249898329690
^104 = gv: (name: "_ZN5alloc6string6String19from_utf8_unchecked17h592417b57dd4ab93E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9))) ; guid = 9132655024379417008
^105 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h445316409d4db100E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 9183069867397996915
^106 = gv: (name: "alloc80", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^69, ^113)))) ; guid = 9256639925202670450
^107 = gv: (name: "alloc63", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^112)))) ; guid = 9300509581524390471
^108 = gv: (name: "alloc201", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^144)))) ; guid = 9313293786714525531
^109 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha11591f469b11b7aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^171), (callee: ^189))))) ; guid = 9355586300042648466
^110 = gv: (name: "_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$13get_unchecked17hc0d26e5b9c672f93E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 15, calls: ((callee: ^152), (callee: ^163))))) ; guid = 9375959397605410419
^111 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3367f3b9fcff8fdcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 54, calls: ((callee: ^169), (callee: ^185)), refs: (^184, ^107, ^26)))) ; guid = 9396550853048076975
^112 = gv: (name: "alloc62", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9608461674857509622
^113 = gv: (name: "alloc85", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9667990823584493004
^114 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd33615a1f548ff59E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^124), (callee: ^46))))) ; guid = 9691362735704702189
^115 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h311f606d72248f77E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 9808997068357551385
^116 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h55e714a4d0c6d30aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^126), (callee: ^138))))) ; guid = 9823392919186042285
^117 = gv: (name: "_ZN4core3str11validations17utf8_is_cont_byte17h617a110815da4b67E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 10161559610171485169
^118 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h9c26dd5bc542020dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^44), (callee: ^116), (callee: ^161))))) ; guid = 10234365483814410046
^119 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$13get_unchecked17he0355aad649b1f30E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^110))))) ; guid = 10240917527277243079
^120 = gv: (name: "alloc184", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10250877179671227511
^121 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^122 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^123 = gv: (name: "_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17hd14bed31f430a779E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^105)), refs: (^168)))) ; guid = 10303269731939894821
^124 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hc47a866e554668e0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^173), (callee: ^198))))) ; guid = 10420200828189097099
^125 = gv: (name: "alloc182", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10471030893956201354
^126 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h59c5a9851e10353bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 10499278328757234608
^127 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he58450331b9dc315E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 10576143319742260535
^128 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10717369745488910120
^129 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h728aa7a432b29f84E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^101))))) ; guid = 10765391145711891052
^130 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdb68348d7ceee7faE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^176))))) ; guid = 10824689781426745751
^131 = gv: (name: "_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20cd77259f5362fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^3), (callee: ^145))))) ; guid = 11132759604498653933
^132 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17he2c3cc61675157a7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 11222788362953667129
^133 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17hce86d8d7c901ed74E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 11231243220783781691
^134 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7c13edb01625720eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^178))))) ; guid = 11261954454854492941
^135 = gv: (name: "_ZN95_$LT$core..str..pattern..MultiCharEqPattern$LT$C$GT$$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17ha566f42a0a2552a2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 30, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^11)), refs: (^168)))) ; guid = 11263737144724888621
^136 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hf4121cd1ca8f3950E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^164), (callee: ^75))))) ; guid = 11318860664683390022
^137 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h35f6d2ae61219296E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 11352385604937689396
^138 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h87b9918d83980465E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 11401862864655614306
^139 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h138ba37ee1df388dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 11511339688416748349
^140 = gv: (name: "_ZN5alloc5alloc5alloc17h4cdcedb36de446f9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^10), (callee: ^156), (callee: ^122))))) ; guid = 11665983245791862620
^141 = gv: (name: "_ZN4core3str11validations23next_code_point_reverse17hc491f0df07b56501E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 88, calls: ((callee: ^175), (callee: ^183), (callee: ^200), (callee: ^123), (callee: ^23), (callee: ^117), (callee: ^55)), refs: (^102, ^154, ^98)))) ; guid = 11702082380532560464
^142 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h113de9f3436e46d8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^149))))) ; guid = 11743976615310970642
^143 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h09f32b96e9f21734E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^198), (callee: ^161))))) ; guid = 11837421019402227172
^144 = gv: (name: "alloc209", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12423539078442347218
^145 = gv: (name: "_ZN4core6option15Option$LT$T$GT$3map17h17fa1fe1e7f28f86E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, calls: ((callee: ^57))))) ; guid = 12469375477118579441
^146 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hecd0f4eba265749dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^14))))) ; guid = 12550609538947298929
^147 = gv: (name: "_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h6ca7d63c95f49475E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^195), (callee: ^179))))) ; guid = 12596596249401239031
^148 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h55f25ac5334843ffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 13227969540191521826
^149 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hbc1374b9fb08580cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 13319624565503646096
^150 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$3len17h7690410b98be9ed4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 15))) ; guid = 13336828354969501010
^151 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17hfdd228b638348c89E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^133))))) ; guid = 13344815321704617354
^152 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hecbba59a19c50bfcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 13411305731128205800
^153 = gv: (name: "alloc177", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^125)))) ; guid = 13498430491159079083
^154 = gv: (name: "alloc181", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^125)))) ; guid = 13677631937678161819
^155 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h27002f7071fbbaddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^86))))) ; guid = 13818404323700822403
^156 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h0a7bab0d4f88e24dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^48), (callee: ^162))))) ; guid = 13993816733538860852
^157 = gv: (name: "alloc212", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14023749312158957535
^158 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17h995e91b8b9ac71e8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^156), (callee: ^161))))) ; guid = 14044150957472554894
^159 = gv: (name: "_ZN4core6option15Option$LT$T$GT$3map17h9b4b86c0bbdbc7beE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, calls: ((callee: ^77))))) ; guid = 14057750199849937371
^160 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6ef7fe125020c2f0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^32))))) ; guid = 14069724166355220286
^161 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hff7c9b0a9047cda8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 14210448387651019510
^162 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17hcc2caa6735e280d2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 14239583403883685014
^163 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h97b72fa4253ba139E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^181), (callee: ^103))))) ; guid = 14511759444724779825
^164 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h20df31228795343fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^213), (callee: ^161))))) ; guid = 14512953700591640823
^165 = gv: (name: "alloc154", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^20)))) ; guid = 14555521799710932161
^166 = gv: (name: "alloc67", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14615261589797370526
^167 = gv: (name: "_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h08c4c8cb2dbc9ebaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 14666402899576343376
^168 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^169 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h5bcd16e8bb7029a9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^169), (callee: ^185)), refs: (^184, ^65, ^165)))) ; guid = 14824231385127805424
^170 = gv: (name: "alloc191", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 15047945437386206363
^171 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hc25cb7ba6fb2cfa5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^173), (callee: ^198))))) ; guid = 15059612093428809363
^172 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hb5fe79a34634970bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^35))))) ; guid = 15065201951391386251
^173 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17ha31c324520af71b2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^89))))) ; guid = 15092105459982098812
^174 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h684b47e2a1fcac61E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^161))))) ; guid = 15146821134133444908
^175 = gv: (name: "_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5b81d39badd7234dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 53, calls: ((callee: ^213), (callee: ^198), (callee: ^116))))) ; guid = 15312546106282907006
^176 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17hb3cd773b8973fe4fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^10), (callee: ^158), (callee: ^140), (callee: ^63), (callee: ^143), (callee: ^148), (callee: ^53), (callee: ^97), (callee: ^160)), refs: (^49)))) ; guid = 15516819732392492851
^177 = gv: (name: "_ZN4core5alloc6layout6Layout5array17hb76f7d7554814b91E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^127), (callee: ^9), (callee: ^115), (callee: ^172), (callee: ^142)), refs: (^92)))) ; guid = 15626704868430705063
^178 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h0cdec4dacfca704bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^89), (callee: ^161))))) ; guid = 15698704723380813210
^179 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^180 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 70, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^40), (callee: ^73), (callee: ^28), (callee: ^34), (callee: ^169), (callee: ^202), (callee: ^212)), refs: (^168, ^197, ^106, ^182)))) ; guid = 15822663052811949562
^181 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h8920f6c125aa6412E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 15846454503727374140
^182 = gv: (name: "alloc84", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^113, ^52)))) ; guid = 15884518547689613363
^183 = gv: (name: "_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd3b31d9ea225b9aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19))) ; guid = 15986077564923200331
^184 = gv: (name: "alloc65", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15987828065824019628
^185 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^186 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9b65e6ff01be1fd3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 16191691766172017133
^187 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hd13f6f7cbb80be8dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^155))))) ; guid = 16256218674656379026
^188 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hab3fef86bd7d93f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^118))))) ; guid = 16303399313981229278
^189 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h8973cb3f99fba8b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^6))))) ; guid = 16360560422149861968
^190 = gv: (name: "alloc186", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16431867269885110519
^191 = gv: (name: "_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h5a309ab58e6d597cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 104, calls: ((callee: ^213), (callee: ^210), (callee: ^192), (callee: ^54), (callee: ^15))))) ; guid = 16444581454883636437
^192 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h184916e71b5e70c0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 16447403657810253620
^193 = gv: (name: "_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4last17hec1ddfffcb1cda4bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8, calls: ((callee: ^33))))) ; guid = 16473919193494552992
^194 = gv: (name: "_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hc7bd2f965307c8b1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^79), (callee: ^104))))) ; guid = 16620068758789597951
^195 = gv: (name: "_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h13198dcd5fc961d2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^114), (callee: ^39))))) ; guid = 16729677165427926057
^196 = gv: (name: "_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u64$GT$8from_str17h96bfc060aabca0a2E") ; guid = 16858989422479247539
^197 = gv: (name: "alloc213", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16927290591093785832
^198 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81d13bacb653873eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^137), (callee: ^132))))) ; guid = 17168988673770395880
^199 = gv: (name: "_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$13get_unchecked17h94b5277dd72bb81eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^152), (callee: ^163))))) ; guid = 17511509115967573463
^200 = gv: (name: "_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hc207b9c953919c79E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 17642708858680785499
^201 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$8is_digit17h7f832e2eb4db98b4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^111), (callee: ^59))))) ; guid = 17658896644676805212
^202 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^203 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9ca24ca4623527bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^213), (callee: ^198), (callee: ^116), (callee: ^161))))) ; guid = 17754718312266836833
^204 = gv: (name: "alloc207", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^144)))) ; guid = 17796137192846395775
^205 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hfc91871b62caa483E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^176))))) ; guid = 17831034370485732385
^206 = gv: (name: "_ZN49_$LT$F$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h8f794fbc621f5d0cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^135))))) ; guid = 17902160395141021222
^207 = gv: (name: "alloc197", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^144)))) ; guid = 17911377424571724751
^208 = gv: (name: "alloc173", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^125)))) ; guid = 17958647043526426791
^209 = gv: (name: "_ZN4core4char18from_u32_unchecked17hbb193954c347a126E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^8))))) ; guid = 18109345416761918519
^210 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hd6ff404e9228653fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 18272379340991790051
^211 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^212 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^213 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc7a0be5f50df919cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 18439010791688372140
^214 = blockcount: 720
