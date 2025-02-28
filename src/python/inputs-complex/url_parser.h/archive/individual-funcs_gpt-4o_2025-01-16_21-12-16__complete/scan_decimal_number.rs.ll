; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/scan_decimal_number.rs.bc'
source_filename = "scan_decimal_number.92e80403-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%UrlKeyValue = type <{ %"alloc::string::String", %"alloc::string::String" }>
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc26 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc27 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc26, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc54 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc172 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc173 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc172, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc195 = private unnamed_addr constant <{ [83 x i8] }> <{ [83 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/str/validations.rs" }>, align 1
@alloc192 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\001\00\00\00$\00\00\00" }>, align 8
@alloc194 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\008\00\00\00(\00\00\00" }>, align 8
@alloc196 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\00@\00\00\00,\00\00\00" }>, align 8
@alloc21 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"to_digit: radix is too high (maximum 36)" }>, align 1
@alloc22 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [40 x i8] }>, <{ [40 x i8] }>* @alloc21, i32 0, i32 0, i32 0), [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@alloc197 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/char/methods.rs" }>, align 1
@alloc198 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc197, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00]\01\00\00\0D\00\00\00" }>, align 8
@alloc199 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc200 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc199, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc201 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc202 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc201, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc203 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc204 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc203, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc205 = private unnamed_addr constant <{ [87 x i8] }> <{ [87 x i8] c"inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/scan_decimal_number.rs" }>, align 1
@alloc206 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc205, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1B\00\00\00\12\00\00\00" }>, align 8
@alloc49 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc33 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc54 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc49, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc207 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"example" }>, align 1
@alloc208 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"value" }>, align 1
@alloc40 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Key: " }>, align 1
@alloc42 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c", Value: " }>, align 1
@alloc41 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [5 x i8] }>, <{ [5 x i8] }>* @alloc40, i32 0, i32 0, i32 0), [8 x i8] c"\05\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [9 x i8] }>, <{ [9 x i8] }>* @alloc42, i32 0, i32 0, i32 0), [8 x i8] c"\09\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc49, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc209 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"123abc" }>, align 1
@alloc51 = private unnamed_addr constant <{ [24 x i8] }> <{ [24 x i8] c"No decimal number found\0A" }>, align 1
@alloc52 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [24 x i8] }>, <{ [24 x i8] }>* @alloc51, i32 0, i32 0, i32 0), [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@alloc47 = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"Remaining string: " }>, align 1
@alloc48 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [18 x i8] }>, <{ [18 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [8 x i8] c"\12\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc49, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc210 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"IPv6Char" }>, align 1
@alloc211 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Userinfo" }>, align 1
@alloc212 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Fragment" }>, align 1
@alloc213 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Query" }>, align 1
@alloc214 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"HexDigit" }>, align 1
@alloc215 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"PCharSlash" }>, align 1
@alloc216 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"SubDelim" }>, align 1
@alloc217 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"GenDelim" }>, align 1
@alloc218 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"Unreserved" }>, align 1
@alloc219 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"Scheme" }>, align 1

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hb6617be023de2811E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h45956c0085844446E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1dc7cc4945d52f3aE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hf68fecfbd8e3a1bdE"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h05808169e1f06f58E"(i64 %kind.0, i64 %kind.1) unnamed_addr #0 {
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

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h17fb2cb7ff5de1b3E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h9ab754c276ea52ddE"()
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
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb59323f8bd36bdbE"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h1ba7063a8b3aab9eE"()
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

; Function Attrs: uwtable
define zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he01218273f40ba18E"({ [0 x i8]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !3, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17h2f46118455324907E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17ha4c261c1242e5f73E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17h250ea3722603913cE(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h3c0b91f1f1ae4b12E"({ [0 x i8]*, i64 }* align 8 %self, { [0 x i8]*, i64 }* align 8 %other) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_5.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !3, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_5.1 = load i64, i64* %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !1, !align !3, !noundef !1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 1
  %_6.1 = load i64, i64* %3, align 8
  %4 = call zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h9bd96951f448860aE"([0 x i8]* align 1 %_5.0, i64 %_5.1, [0 x i8]* align 1 %_6.0, i64 %_6.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h43d2bbcd6c21171fE"({ [0 x i8]*, i64 }* align 8 %self, { [0 x i8]*, i64 }* align 8 %other) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_5.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !3, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_5.1 = load i64, i64* %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !1, !align !3, !noundef !1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 1
  %_6.1 = load i64, i64* %3, align 8
  %4 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2ne17he2926a88e711a9efE"([0 x i8]* align 1 %_5.0, i64 %_5.1, [0 x i8]* align 1 %_6.0, i64 %_6.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h6046b6c12af7d22cE(%"alloc::string::String"* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hdc8832ea1e942a42E(%"alloc::string::String"* align 8 %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h8b90d24d292991d3E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h938eaec054993102E({ [0 x i8]*, i64 }* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h67ed0c2f17802984E({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he01218273f40ba18E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h67ed0c2f17802984E({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast { [0 x i8]*, i64 }* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !3, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !3, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h7922613b08512729E(i16* align 2 %x, i1 (i16*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i16*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i16* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !3, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !3, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hdc8832ea1e942a42E(%"alloc::string::String"* align 8 %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !3, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !3, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17ha1b6381733d4f01eE(i16* align 2 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h7922613b08512729E(i16* align 2 %x, i1 (i16*, %"core::fmt::Formatter"*)* @"_ZN66_$LT$scan_decimal_number..Category$u20$as$u20$core..fmt..Debug$GT$3fmt17hd111d243badac8bbE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h2f13ed9e523f0d5aE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h2f13ed9e523f0d5aE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc27 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc54 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc173 to %"core::panic::location::Location"*)) #13
  unreachable
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem11size_of_val17hd7330bd3bbcd2fa1E([0 x i8]* align 1 %val.0, i64 %val.1) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = mul nsw i64 %val.1, 1
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd2ae06f903b83501E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !6, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hb5d9b3eb5b74d89bE(i64 %_3), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17ha7a8d3080860890fE(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !6, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h889e9bc7af6b2db5E"(i8 %self) unnamed_addr #0 {
start:
  %0 = icmp sge i8 %self, -64
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hd5f7c80505cbf877E"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hb5d9b3eb5b74d89bE(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !7, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hbc273a8ff1582e3cE(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hcd154d9b52765125E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hc8799500d40f1865E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17ha251302340449489E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17ha29754e6b53de1ddE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hef811ada0e7da951E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde7703adba9c3c85E"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5ad0dae79e3e8b27E"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5ad0dae79e3e8b27E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb4c35e21e9947446E"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf26357eb88f68f2eE"({ i8*, i64 }* %1) #14
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
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf26357eb88f68f2eE"({ i8*, i64 }* %7)
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
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf26357eb88f68f2eE"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6288a74462189d6cE"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$scan_decimal_number..UrlKeyValue$GT$17h9350f24e124aa4cbE"(%UrlKeyValue* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_5 = alloca %"alloc::string::String", align 8
  %_4 = alloca %"alloc::string::String", align 8
  %_3 = alloca %"alloc::string::String", align 8
  %_2 = alloca %"alloc::string::String", align 8
  %1 = bitcast %UrlKeyValue* %_1 to %"alloc::string::String"*
  %2 = bitcast %"alloc::string::String"* %_5 to i8*
  %3 = bitcast %"alloc::string::String"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 1 %3, i64 24, i1 false)
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde7703adba9c3c85E"(%"alloc::string::String"* %_5)
          to label %bb4 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  %4 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %_1, i32 0, i32 1
  %5 = bitcast %"alloc::string::String"* %_2 to i8*
  %6 = bitcast %"alloc::string::String"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %6, i64 24, i1 false)
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde7703adba9c3c85E"(%"alloc::string::String"* %_2) #14
          to label %bb1 unwind label %abort

cleanup:                                          ; preds = %start
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb2

bb4:                                              ; preds = %start
  %12 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %_1, i32 0, i32 1
  %13 = bitcast %"alloc::string::String"* %_4 to i8*
  %14 = bitcast %"alloc::string::String"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 1 %14, i64 24, i1 false)
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde7703adba9c3c85E"(%"alloc::string::String"* %_4)
  br label %bb3

abort:                                            ; preds = %bb2
  %15 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #15
  unreachable

bb1:                                              ; preds = %bb2
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21

bb3:                                              ; preds = %bb4
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h182bb235571bb4b7E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1dc7cc4945d52f3aE"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h6b1c5de38f7e5827E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h518c6b013a84cd01E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hf68fecfbd8e3a1bdE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h45956c0085844446E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6d98eb60081b0aa9E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h156f397dbfb4fd51E"() unnamed_addr #0 {
start:
  %_1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h3f12cb880f2430a3E"()
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hf68fecfbd8e3a1bdE"(i8* %_1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h6e23b19a8544443eE"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcff97966d90a6a96E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hbeb3f224f87468b3E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h6e23b19a8544443eE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17ha251302340449489E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata14from_raw_parts17hfdf06b3d7c1a8b76E({}* %data_address) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hbeb3f224f87468b3E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hef811ada0e7da951E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i64 @_ZN4core3ptr8metadata8metadata17hf9f871d37d2dc9e3E([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %ptr.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1dc7cc4945d52f3aE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h45c6139d3f39fc73E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h1551d32b4753a5eeE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcff97966d90a6a96E"(i8* %ptr)
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
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1dc7cc4945d52f3aE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h518c6b013a84cd01E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6d98eb60081b0aa9E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1dc7cc4945d52f3aE"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd915333085b034e3E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6e015a3eb20c1813E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1dc7cc4945d52f3aE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6d98eb60081b0aa9E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6e015a3eb20c1813E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h3f12cb880f2430a3E"() unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 1, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1dc7cc4945d52f3aE"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h6406d3000a75010cE"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6d98eb60081b0aa9E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17ha29754e6b53de1ddE(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h45c6139d3f39fc73E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17ha0c6382c15f0de69E"(i8* %self, i8* %other) unnamed_addr #0 {
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
define void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17ha18d6174fc369df3E"(i8* %self, i8* %dest, i64 %count) unnamed_addr #0 {
start:
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h250ea3722603913cE(i8* %self, i8* %dest, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hc8799500d40f1865E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h271956006aa3a830E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hfdf06b3d7c1a8b76E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17ha0c6382c15f0de69E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hf66b3fccf1471465E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3ptr8metadata8metadata17hf9f871d37d2dc9e3E([0 x i8]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h95262e6934815f31E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @_ZN4core3str11validations15next_code_point17hb3e349d9bda5eaf8E({ i8*, i8* }* align 8 %bytes) unnamed_addr #0 {
start:
  %ch = alloca i32, align 4
  %_4 = alloca i8*, align 8
  %0 = alloca { i32, i32 }, align 4
  %_5 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6a7d74509c1b0971E"({ i8*, i8* }* align 8 %bytes)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h65df38314f419983E"(i8* align 1 %_5)
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
  %val = load i8*, i8** %_4, align 8, !nonnull !1, !align !3, !noundef !1
  %x = load i8, i8* %val, align 1
  %_11 = icmp ult i8 %x, -128
  br i1 %_11, label %bb7, label %bb8

bb5:                                              ; preds = %bb2
  %5 = call { i32, i32 } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h9a110798c4d40877E"()
  store { i32, i32 } %5, { i32, i32 }* %0, align 4
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb7, %bb6
  br label %bb24

bb8:                                              ; preds = %bb3
  %init = call i32 @_ZN4core3str11validations15utf8_first_byte17hd794e68c40d9e992E(i8 %x, i32 2)
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
  %_19 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6a7d74509c1b0971E"({ i8*, i8* }* align 8 %bytes)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_18 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h55ba812eddf420a4E"(i8* align 1 %_19, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc192 to %"core::panic::location::Location"*))
  br label %bb11

bb11:                                             ; preds = %bb10
  %y = load i8, i8* %_18, align 1
  %14 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h4c1b77e83b53dc50E(i32 %init, i8 %y)
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
  %_28 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6a7d74509c1b0971E"({ i8*, i8* }* align 8 %bytes)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_27 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h55ba812eddf420a4E"(i8* align 1 %_28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc194 to %"core::panic::location::Location"*))
  br label %bb15

bb15:                                             ; preds = %bb14
  %z = load i8, i8* %_27, align 1
  %_32 = and i8 %y, 63
  %_31 = zext i8 %_32 to i32
  %y_z = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h4c1b77e83b53dc50E(i32 %_31, i8 %z)
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
  %_42 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6a7d74509c1b0971E"({ i8*, i8* }* align 8 %bytes)
  br label %bb18

bb18:                                             ; preds = %bb17
  %_41 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h55ba812eddf420a4E"(i8* align 1 %_42, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc196 to %"core::panic::location::Location"*))
  br label %bb19

bb19:                                             ; preds = %bb18
  %w = load i8, i8* %_41, align 1
  %_45 = and i32 %init, 7
  %_44 = shl i32 %_45, 18
  %_47 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h4c1b77e83b53dc50E(i32 %y_z, i8 %w)
  br label %bb20

bb20:                                             ; preds = %bb19
  %18 = or i32 %_44, %_47
  store i32 %18, i32* %ch, align 4
  br label %bb21
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3str11validations15utf8_first_byte17hd794e68c40d9e992E(i8 %byte, i32 %width) unnamed_addr #0 {
start:
  %0 = trunc i32 %width to i8
  %1 = and i8 %0, 7
  %_5 = lshr i8 127, %1
  %_3 = and i8 %byte, %_5
  %2 = zext i8 %_3 to i32
  ret i32 %2
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h4c1b77e83b53dc50E(i32 %ch, i8 %byte) unnamed_addr #0 {
start:
  %_3 = shl i32 %ch, 6
  %_6 = and i8 %byte, 63
  %_5 = zext i8 %_6 to i32
  %0 = or i32 %_3, %_5
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h2a0f8edb0dff3c6dE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
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
  %6 = load [0 x i8]*, [0 x i8]** %5, align 8, !nonnull !1, !align !3, !noundef !1
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %6, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  %_6.0 = extractvalue { [0 x i8]*, i64 } %10, 0
  %_6.1 = extractvalue { [0 x i8]*, i64 } %10, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %11 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17he40324d766db32ecE"([0 x i8]* align 1 %_6.0, i64 %_6.1, i64 %index)
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
  %_11 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h4348fecee9c60e6aE"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb8

bb5:                                              ; preds = %bb4
  %_15 = load i8*, i8** %_4, align 8, !nonnull !1, !align !3, !noundef !1
  %b = load i8, i8* %_15, align 1
  %15 = call zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h889e9bc7af6b2db5E"(i8 %b)
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

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h4348fecee9c60e6aE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !3, !noundef !1
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
define internal { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h394013b36031c38aE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { i8*, i8* }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !3, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h38d5e23960ce16a5E"([0 x i8]* align 1 %_4.0, i64 %_4.1)
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
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$13get_unchecked17heef07973501c1239E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_6 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h95262e6934815f31E"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_6, i64 %self
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_10 = call i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hf66b3fccf1471465E"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %len = sub i64 %_10, %self
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hcd154d9b52765125E(i8* %2, i64 %len)
  %_13.0 = extractvalue { [0 x i8]*, i64 } %3, 0
  %_13.1 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_13.0, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %_13.1, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h77470bb6f0517cceE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %_3 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h2a0f8edb0dff3c6dE"([0 x i8]* align 1 %slice.0, i64 %slice.1, i64 %self)
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
  %3 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$13get_unchecked17heef07973501c1239E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
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
  %8 = load i8*, i8** %7, align 8, !align !3
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = insertvalue { i8*, i64 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i64 } %11, i64 %10, 1
  ret { i8*, i64 } %12
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h1b94b5338e9ca580E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_9 = alloca { i8*, i64 }, align 8
  %_5 = alloca { i64, i64 }, align 8
  %_7 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h4348fecee9c60e6aE"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %_5 to i64*
  store i64 %self, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  store i64 %_7, i64* %2, align 8
  %3 = bitcast { i64, i64 }* %_5 to i64*
  %start1 = load i64, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %end = load i64, i64* %4, align 8
  %5 = call { i8*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h77470bb6f0517cceE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1)
  store { i8*, i64 } %5, { i8*, i64 }* %_9, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = bitcast { i8*, i64 }* %_9 to {}**
  %7 = load {}*, {}** %6, align 8
  %8 = icmp eq {}* %7, null
  %_12 = select i1 %8, i64 0, i64 1
  switch i64 %_12, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  call void @_ZN4core3str16slice_error_fail17h2805d168fae0f9a7E([0 x i8]* align 1 %slice.0, i64 %slice.1, i64 %start1, i64 %end, %"core::panic::location::Location"* align 8 %0) #13
  unreachable

bb5:                                              ; preds = %bb2
  %9 = bitcast { i8*, i64 }* %_9 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %s.0 = load [0 x i8]*, [0 x i8]** %10, align 8, !nonnull !1, !align !3, !noundef !1
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %s.1 = load i64, i64* %11, align 8
  %12 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %s.0, 0
  %13 = insertvalue { [0 x i8]*, i64 } %12, i64 %s.1, 1
  ret { [0 x i8]*, i64 } %13
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17he14d6bf66a1c3b7bE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %_7 = alloca { [0 x i8]*, i64 }, align 8
  %_4 = alloca { [0 x i8]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !3, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  store { [0 x i8]*, i64 } %9, { [0 x i8]*, i64 }* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %other.0, [0 x i8]** %10, align 8
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %other.1, i64* %11, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %13 = load [0 x i8]*, [0 x i8]** %12, align 8, !nonnull !1, !align !3, !noundef !1
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %13, 0
  %17 = insertvalue { [0 x i8]*, i64 } %16, i64 %15, 1
  store { [0 x i8]*, i64 } %17, { [0 x i8]*, i64 }* %_7, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %18 = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h3c0b91f1f1ae4b12E"({ [0 x i8]*, i64 }* align 8 %_4, { [0 x i8]*, i64 }* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i1 %18
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2ne17he2926a88e711a9efE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #0 {
start:
  %_3 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17he14d6bf66a1c3b7bE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_3, true
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h921c378ae171101cE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h1b94b5338e9ca580E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h03cb51d69f73736dE([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %v.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %v.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !3, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char18from_u32_unchecked17hc5a68dbad1a124e2E(i32 %i) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char7convert18from_u32_unchecked17hf3c7bbec8263c4bcE(i32 %i), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char7convert18from_u32_unchecked17hf3c7bbec8263c4bcE(i32 %i) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  store i32 %i, i32* %0, align 4
  %1 = load i32, i32* %0, align 4, !range !10, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8is_digit17h4e076d682321c6e8E"(i32 %self, i32 %radix) unnamed_addr #0 {
start:
  %_4 = alloca { i32, i32 }, align 4
  %0 = call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h8e61ef41b4ee4e8dE"(i32 %self, i32 %radix)
  store { i32, i32 } %0, { i32, i32 }* %_4, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h7914027c4b0a323fE"({ i32, i32 }* align 4 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h8e61ef41b4ee4e8dE"(i32 %self, i32 %radix) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h2f13ed9e523f0d5aE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_13, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc22 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc54 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_13, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc198 to %"core::panic::location::Location"*)) #13
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
define internal void @_ZN4core4hint21unreachable_unchecked17h80713b621bbe07f1E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h7b0a1508849f6ec6E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17ha7a8d3080860890fE(i64 %align), !range !6
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
define internal i64 @_ZN4core5alloc6layout6Layout4size17h46bb8575f9eee996E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17hb6687eda85d518e0E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !6, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd2ae06f903b83501E(i64 %_3), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hbc273a8ff1582e3cE(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h1000a69815f66ac7E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hd5f7c80505cbf877E"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h31a7ca3a3579de23E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2b5526712582794eE"(i64 %_4.0, i64 %_4.1)
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h17fb2cb7ff5de1b3E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc200 to %"core::panic::location::Location"*))
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
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h7b0a1508849f6ec6E(i64 %val, i64 1)
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
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17hcef667d4fe556e0eE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17hb6687eda85d518e0E({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1dc7cc4945d52f3aE"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17he40324d766db32ecE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %0 = call align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h4118804f29b3fb7aE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h360183b72cc86d98E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
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
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h38d5e23960ce16a5E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h59adc9592afaec50E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd70a2ac8653e90beE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h9bd96951f448860aE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = call zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h7df1d0b19c558fcdE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hdf18b1ad8fb5cec9E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hcd154d9b52765125E(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h59adc9592afaec50E"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd70a2ac8653e90beE"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h271956006aa3a830E"(i8* %ptr)
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
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1dc7cc4945d52f3aE"(i8* %ptr)
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
define align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h55ba812eddf420a4E"(i8* align 1 %0, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  invoke void @_ZN4core4hint21unreachable_unchecked17h80713b621bbe07f1E() #13
          to label %unreachable unwind label %cleanup

bb3:                                              ; preds = %start
  %val = load i8*, i8** %self, align 8, !nonnull !1, !align !3, !noundef !1
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
define i32 @"_ZN4core6option15Option$LT$T$GT$3map17h9fef4d7d127de8b2E"(i32 %0, i32 %1) unnamed_addr #0 {
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
  %_5 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hb9ceaab85633c498E"(i32 %9), !range !10
  br label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_5, i32* %2, align 4
  br label %bb7

bb7:                                              ; preds = %bb4, %bb1
  %10 = load i8, i8* %_9, align 1, !range !4, !noundef !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %12 = load i32, i32* %2, align 4, !range !11, !noundef !1
  ret i32 %12

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h31a7ca3a3579de23E"(i64 %0, i64 %1) unnamed_addr #0 {
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
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hf321a7265d7ee5aaE"(i8* %0) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h7914027c4b0a323fE"({ i32, i32 }* align 4 %self) unnamed_addr #0 {
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
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h045302627187444bE"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %t.1 = load i64, i64* %10, align 8, !range !6, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !2, !noundef !1
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h80713b621bbe07f1E() #13
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

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h1ba7063a8b3aab9eE"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h9ab754c276ea52ddE"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h3329d79eb26d3d0eE"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hb6617be023de2811E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcebb70687f9a3cdaE"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h05808169e1f06f58E"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hefe548c008a86ef3E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  store i8 1, i8* %_17, align 1
  %_3 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h360183b72cc86d98E"([0 x i8]* align 1 %s.0, i64 %s.1)
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
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17ha7d7199fd0974785E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, i64 %_3)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_7 = invoke i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd70a2ac8653e90beE"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb3 unwind label %cleanup1

bb9:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5ad0dae79e3e8b27E"(%"alloc::vec::Vec<u8>"* %v) #14
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
  %_9 = invoke i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hc7cf1d75d9881aeaE"(%"alloc::vec::Vec<u8>"* align 8 %v)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
  %_11 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h360183b72cc86d98E"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  invoke void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17ha18d6174fc369df3E"(i8* %_7, i8* %_9, i64 %_11)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  %_15 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h360183b72cc86d98E"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17he16fc352046133a2E"(%"alloc::vec::Vec<u8>"* align 8 %v, i64 %_15)
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
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hca7d757d2f9aa999E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %_2 = alloca %"alloc::vec::Vec<u8>", align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !3, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h662945db3ffce512E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %_2, [0 x i8]* align 1 %_4.0, i64 %_4.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN5alloc6string6String19from_utf8_unchecked17h7229b4e482a836e1E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"alloc::vec::Vec<u8>"* %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hc7cf1d75d9881aeaE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h01a2ffdb39befca7E"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcff97966d90a6a96E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17ha7d7199fd0974785E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, i64 %capacity) unnamed_addr #0 {
start:
  %1 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17hab684267d1663a1dE"(i64 %capacity)
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
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hd866c16fcf49e331E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h01a2ffdb39befca7E"({ i8*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcff97966d90a6a96E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17he16fc352046133a2E"(%"alloc::vec::Vec<u8>"* align 8 %self, i64 %new_len) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  store i64 %new_len, i64* %0, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h642ba17981732790E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h46bb8575f9eee996E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17hb6687eda85d518e0E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17ha6384badcb7e4f6dE(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h46bb8575f9eee996E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17hb6687eda85d518e0E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h2a0bb29183e6ecf4E(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h46bb8575f9eee996E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17hcef667d4fe556e0eE({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !6, !noundef !1
  %8 = call i8* @_ZN5alloc5alloc5alloc17ha6384badcb7e4f6dE(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !6, !noundef !1
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h642ba17981732790E(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h1551d32b4753a5eeE"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hf321a7265d7ee5aaE"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd7f36d5843ff48d0E"(i8* %_16)
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
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h6406d3000a75010cE"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb59323f8bd36bdbE"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc202 to %"core::panic::location::Location"*))
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
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h6406d3000a75010cE"(i8* %_7, i64 0)
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
define internal void @_ZN5alloc5alloc7dealloc17h0e56ebe862d46593E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h46bb8575f9eee996E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17hb6687eda85d518e0E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17haa8ff9c56c4baaa6E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h5d6b3ddfb3341616E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h5d6b3ddfb3341616E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @_ZN5alloc5slice4hack6to_vec17ha9d667da10c7245aE(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5slice4hack6to_vec17ha9d667da10c7245aE(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hefe548c008a86ef3E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h662945db3ffce512E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17haa8ff9c56c4baaa6E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc6string6String19from_utf8_unchecked17h7229b4e482a836e1E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"alloc::vec::Vec<u8>"* %bytes) unnamed_addr #0 {
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
define internal { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hd7cb5c4254858cc0E(i64 %alloc_size) unnamed_addr #0 {
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
  %9 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcebb70687f9a3cdaE"(i64 %6, i64 %8)
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
  %15 = load i64, i64* %14, align 8, !range !12, !noundef !1
  %16 = insertvalue { i64, i64 } undef, i64 %13, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hd89d99d0cc6cb20dE"(i64 %capacity, i1 zeroext %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %15 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h1000a69815f66ac7E(i64 %capacity)
          to label %bb8 unwind label %cleanup

bb5:                                              ; preds = %bb3
  store i8 0, i8* %_37, align 1
  %16 = invoke { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17ha194a95130e11597E"()
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
  %24 = load i64, i64* %23, align 8, !range !2, !noundef !1
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
  %_16 = invoke i64 @_ZN4core5alloc6layout6Layout4size17h46bb8575f9eee996E({ i64, i64 }* align 8 %layout)
          to label %bb12 unwind label %cleanup

bb9:                                              ; preds = %bb8
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #13
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb23, %bb14, %bb9
  unreachable

bb12:                                             ; preds = %bb11
  %30 = invoke { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hd7cb5c4254858cc0E(i64 %_16)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  store { i64, i64 } %30, { i64, i64 }* %_15, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_15, i32 0, i32 1
  %32 = load i64, i64* %31, align 8, !range !12, !noundef !1
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
  %39 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hc31f9029b85ee454E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_23.0, i64 %_23.1)
          to label %bb20 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_25.0 = load i64, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_25.1 = load i64, i64* %41, align 8, !range !6, !noundef !1
  %42 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17he84f57737b3d98bfE"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_25.0, i64 %_25.1)
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
  %_33 = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd915333085b034e3E"(i8* %ptr.0, i64 %ptr.1)
          to label %bb26 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_30.0 = load i64, i64* %48, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_30.1 = load i64, i64* %49, align 8, !range !6, !noundef !1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %_30.0, i64 %_30.1) #13
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_32 = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6d98eb60081b0aa9E"(i8* %_33)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_31 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h182bb235571bb4b7E"(i8* %_32)
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h567d580b7caaa2ecE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
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
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h1000a69815f66ac7E(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h045302627187444bE"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc204 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h6b1c5de38f7e5827E"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h3329d79eb26d3d0eE"(i8* %_11)
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
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17hab684267d1663a1dE"(i64 %capacity) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !4, !noundef !1
  %1 = trunc i8 %0 to i1
  %2 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hd89d99d0cc6cb20dE"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i8*, i64 } %2, 0
  %4 = extractvalue { i8*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i8*, i64 } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64 } %5, i64 %4, 1
  ret { i8*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h01a2ffdb39befca7E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h45956c0085844446E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17ha194a95130e11597E"() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i64 }, align 8
  %_2 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h156f397dbfb4fd51E"()
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
define internal zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h8b90d24d292991d3E"(%"alloc::string::String"* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h517605cae19b0882E"(%"alloc::string::String"* align 8 %self)
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
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17ha4feb0d9c1677f8eE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h46bb8575f9eee996E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6d98eb60081b0aa9E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !6, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h0e56ebe862d46593E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17he84f57737b3d98bfE"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h2a0bb29183e6ecf4E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hc31f9029b85ee454E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h2a0bb29183e6ecf4E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h517605cae19b0882E"(%"alloc::string::String"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  %0 = call { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h81277ee35b715628E"(%"alloc::vec::Vec<u8>"* align 8 %_5)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h03cb51d69f73736dE([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb4c35e21e9947446E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hc7cf1d75d9881aeaE"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17ha29754e6b53de1ddE(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h81277ee35b715628E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hd866c16fcf49e331E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hdf18b1ad8fb5cec9E(i8* %_2, i64 %_4)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h7df1d0b19c558fcdE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %_3 = icmp ne i64 %self.1, %other.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %size = call i64 @_ZN4core3mem11size_of_val17hd7330bd3bbcd2fa1E([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6, %bb1
  %1 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %2 = trunc i8 %1 to i1
  ret i1 %2

bb3:                                              ; preds = %bb2
  %_12 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd70a2ac8653e90beE"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_15 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd70a2ac8653e90beE"([0 x i8]* align 1 %other.0, i64 %other.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_10 = call i32 @memcmp(i8* %_12, i8* %_15, i64 %size)
  br label %bb6

bb6:                                              ; preds = %bb5
  %3 = icmp eq i32 %_10, 0
  %4 = zext i1 %3 to i8
  store i8 %4, i8* %0, align 1
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h65df38314f419983E"(i8* align 1 %0) unnamed_addr #0 {
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
  %v = load i8*, i8** %self, align 8, !nonnull !1, !align !3, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %7 = load i8*, i8** %1, align 8, !align !3
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hd4470402ea10a5b7E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_4 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h95262e6934815f31E"([0 x i8]* %slice.0, i64 %slice.1)
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
define align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h4118804f29b3fb7aE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
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
  %_9 = call i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hd4470402ea10a5b7E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  store i8* %_9, i8** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %3 = load i8*, i8** %0, align 8, !align !3
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17ha4c261c1242e5f73E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hca7d757d2f9aa999E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6288a74462189d6cE"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h567d580b7caaa2ecE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
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
  %layout.1 = load i64, i64* %11, align 8, !range !6, !noundef !1
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17ha4feb0d9c1677f8eE"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2b5526712582794eE"(i64 %0, i64 %1) unnamed_addr #0 {
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
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd7f36d5843ff48d0E"(i8* %0) unnamed_addr #0 {
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
define internal i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf07a6cbc6ba0789cE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i32, i32 } @_ZN4core3str11validations15next_code_point17hb3e349d9bda5eaf8E({ i8*, i8* }* align 8 %self)
  %_2.0 = extractvalue { i32, i32 } %0, 0
  %_2.1 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i32 @"_ZN4core6option15Option$LT$T$GT$3map17h9fef4d7d127de8b2E"(i32 %_2.0, i32 %_2.1), !range !11
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hb9ceaab85633c498E"(i32 %ch) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char18from_u32_unchecked17hc5a68dbad1a124e2E(i32 %ch), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h9a110798c4d40877E"() unnamed_addr #0 {
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
define align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6a7d74509c1b0971E"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6d98eb60081b0aa9E"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcff97966d90a6a96E"(i8* %_5)
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
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h271956006aa3a830E"(i8* %_11)
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
  %_14 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6d98eb60081b0aa9E"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_16 = load i8*, i8** %7, align 8
  %_12 = icmp eq i8* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
  %old.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6d98eb60081b0aa9E"(i8* %_12.i)
  %9 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %9, align 8, !nonnull !1, !noundef !1
  %_15.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6d98eb60081b0aa9E"(i8* %_16.i)
  %10 = getelementptr inbounds i8, i8* %_15.i, i64 1
  store i8* %10, i8** %0, align 8
  %_3.i.i = load i8*, i8** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1dc7cc4945d52f3aE"(i8* %_3.i.i)
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
  %15 = load i8*, i8** %2, align 8, !align !3
  ret i8* %15

bb13:                                             ; preds = %bb12
  store i8* %12, i8** %2, align 8
  br label %bb14
}

; Function Attrs: uwtable
define { i8*, i64 } @scan_decimal_number([0 x i8]* align 1 %0, i64 %1) unnamed_addr #1 {
start:
  %_15 = alloca i64, align 8
  %_5 = alloca { i8*, i8* }, align 8
  %_3 = alloca i32, align 4
  %p = alloca { [0 x i8]*, i64 }, align 8
  %2 = alloca { i8*, i64 }, align 8
  %start1 = alloca { [0 x i8]*, i64 }, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %start1, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %start1, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %start1, i32 0, i32 0
  %6 = load [0 x i8]*, [0 x i8]** %5, align 8, !nonnull !1, !align !3, !noundef !1
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %start1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 0
  store [0 x i8]* %6, [0 x i8]** %9, align 8
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  br label %bb1

bb1:                                              ; preds = %bb7, %start
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %11, align 8, !nonnull !1, !align !3, !noundef !1
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 1
  %_6.1 = load i64, i64* %12, align 8
  %13 = call { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h394013b36031c38aE"([0 x i8]* align 1 %_6.0, i64 %_6.1)
  store { i8*, i8* } %13, { i8*, i8* }* %_5, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %14 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf07a6cbc6ba0789cE"({ i8*, i8* }* align 8 %_5), !range !11
  store i32 %14, i32* %_3, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  %15 = load i32, i32* %_3, align 4, !range !11, !noundef !1
  %16 = sub i32 %15, 1114112
  %17 = icmp eq i32 %16, 0
  %_7 = select i1 %17, i64 0, i64 1
  %18 = icmp eq i64 %_7, 1
  br i1 %18, label %bb4, label %bb8

bb4:                                              ; preds = %bb3
  %c = load i32, i32* %_3, align 4, !range !10, !noundef !1
  %_9 = call zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8is_digit17h4e076d682321c6e8E"(i32 %c, i32 10)
  br label %bb5

bb8:                                              ; preds = %bb5, %bb3
  %_16 = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h43d2bbcd6c21171fE"({ [0 x i8]*, i64 }* align 8 %p, { [0 x i8]*, i64 }* align 8 %start1)
  br label %bb9

bb5:                                              ; preds = %bb4
  br i1 %_9, label %bb6, label %bb8

bb6:                                              ; preds = %bb5
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 0
  %_14.0 = load [0 x i8]*, [0 x i8]** %19, align 8, !nonnull !1, !align !3, !noundef !1
  %20 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 1
  %_14.1 = load i64, i64* %20, align 8
  store i64 1, i64* %_15, align 8
  %21 = load i64, i64* %_15, align 8
  %22 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h921c378ae171101cE"([0 x i8]* align 1 %_14.0, i64 %_14.1, i64 %21, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc206 to %"core::panic::location::Location"*))
  %_13.0 = extractvalue { [0 x i8]*, i64 } %22, 0
  %_13.1 = extractvalue { [0 x i8]*, i64 } %22, 1
  br label %bb7

bb7:                                              ; preds = %bb6
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 0
  store [0 x i8]* %_13.0, [0 x i8]** %23, align 8
  %24 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 1
  store i64 %_13.1, i64* %24, align 8
  br label %bb1

bb9:                                              ; preds = %bb8
  br i1 %_16, label %bb10, label %bb11

bb11:                                             ; preds = %bb9
  %25 = bitcast { i8*, i64 }* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 16, i1 false)
  %26 = bitcast { i8*, i64 }* %2 to {}**
  store {}* null, {}** %26, align 8
  br label %bb12

bb10:                                             ; preds = %bb9
  %27 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 0
  %_19.0 = load [0 x i8]*, [0 x i8]** %27, align 8, !nonnull !1, !align !3, !noundef !1
  %28 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 1
  %_19.1 = load i64, i64* %28, align 8
  %29 = bitcast { i8*, i64 }* %2 to { [0 x i8]*, i64 }*
  %30 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %29, i32 0, i32 0
  store [0 x i8]* %_19.0, [0 x i8]** %30, align 8
  %31 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %29, i32 0, i32 1
  store i64 %_19.1, i64* %31, align 8
  br label %bb12

bb12:                                             ; preds = %bb10, %bb11
  %32 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8, !align !3
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = insertvalue { i8*, i64 } undef, i8* %33, 0
  %37 = insertvalue { i8*, i64 } %36, i64 %35, 1
  ret { i8*, i64 } %37
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_54 = alloca %"core::fmt::Arguments", align 8
  %_49 = alloca [1 x { i8*, i64* }], align 8
  %_42 = alloca %"core::fmt::Arguments", align 8
  %rest = alloca { [0 x i8]*, i64 }, align 8
  %_37 = alloca { i8*, i64 }, align 8
  %_29 = alloca [2 x { i8*, i64* }], align 8
  %_22 = alloca %"core::fmt::Arguments", align 8
  %_18 = alloca %"alloc::string::String", align 8
  %_15 = alloca %"alloc::string::String", align 8
  %url_kv = alloca %UrlKeyValue, align 1
  %_10 = alloca [1 x { i8*, i64* }], align 8
  %_3 = alloca %"core::fmt::Arguments", align 8
  %category = alloca i16, align 2
  store i16 64, i16* %category, align 2
  %1 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17ha1b6381733d4f01eE(i16* align 2 %category)
  %_11.0 = extractvalue { i8*, i64* } %1, 0
  %_11.1 = extractvalue { i8*, i64* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_10, i64 0, i64 0
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  store i8* %_11.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  store i64* %_11.1, i64** %4, align 8
  %_7.0 = bitcast [1 x { i8*, i64* }]* %_10 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h2f13ed9e523f0d5aE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_3, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc33 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_7.0, i64 1)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17h2f46118455324907E"(%"alloc::string::String"* sret(%"alloc::string::String") %_15, [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc207 to [0 x i8]*), i64 7)
  br label %bb4

bb4:                                              ; preds = %bb3
  invoke void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17h2f46118455324907E"(%"alloc::string::String"* sret(%"alloc::string::String") %_18, [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc208 to [0 x i8]*), i64 5)
          to label %bb5 unwind label %cleanup

bb19:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde7703adba9c3c85E"(%"alloc::string::String"* %_15) #14
          to label %bb20 unwind label %abort

cleanup:                                          ; preds = %bb4
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb19

bb5:                                              ; preds = %bb4
  %10 = bitcast %UrlKeyValue* %url_kv to %"alloc::string::String"*
  %11 = bitcast %"alloc::string::String"* %10 to i8*
  %12 = bitcast %"alloc::string::String"* %_15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 8 %12, i64 24, i1 false)
  %13 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %url_kv, i32 0, i32 1
  %14 = bitcast %"alloc::string::String"* %13 to i8*
  %15 = bitcast %"alloc::string::String"* %_18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 8 %15, i64 24, i1 false)
  %_32 = bitcast %UrlKeyValue* %url_kv to %"alloc::string::String"*
  %16 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h6046b6c12af7d22cE(%"alloc::string::String"* align 8 %_32)
          to label %bb6 unwind label %cleanup1

abort:                                            ; preds = %bb18, %bb19
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #15
  unreachable

bb20:                                             ; preds = %bb18, %bb19
  %18 = bitcast { i8*, i32 }* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb18:                                             ; preds = %cleanup1
  invoke void @"_ZN4core3ptr53drop_in_place$LT$scan_decimal_number..UrlKeyValue$GT$17h9350f24e124aa4cbE"(%UrlKeyValue* %url_kv) #14
          to label %bb20 unwind label %abort

cleanup1:                                         ; preds = %bb13, %bb12, %bb15, %bb14, %bb11, %bb9, %bb8, %bb7, %bb6, %bb5
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  %26 = extractvalue { i8*, i32 } %24, 1
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %bb18

bb6:                                              ; preds = %bb5
  %_30.0 = extractvalue { i8*, i64* } %16, 0
  %_30.1 = extractvalue { i8*, i64* } %16, 1
  %_35 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %url_kv, i32 0, i32 1
  %29 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h6046b6c12af7d22cE(%"alloc::string::String"* align 8 %_35)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  %_33.0 = extractvalue { i8*, i64* } %29, 0
  %_33.1 = extractvalue { i8*, i64* } %29, 1
  %30 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_29, i64 0, i64 0
  %31 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %30, i32 0, i32 0
  store i8* %_30.0, i8** %31, align 8
  %32 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %30, i32 0, i32 1
  store i64* %_30.1, i64** %32, align 8
  %33 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_29, i64 0, i64 1
  %34 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %33, i32 0, i32 0
  store i8* %_33.0, i8** %34, align 8
  %35 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %33, i32 0, i32 1
  store i64* %_33.1, i64** %35, align 8
  %_26.0 = bitcast [2 x { i8*, i64* }]* %_29 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117h2f13ed9e523f0d5aE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_22, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc41 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_26.0, i64 2)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_22)
          to label %bb9 unwind label %cleanup1

bb9:                                              ; preds = %bb8
  %36 = invoke { i8*, i64 } @scan_decimal_number([0 x i8]* align 1 bitcast (<{ [6 x i8] }>* @alloc209 to [0 x i8]*), i64 6)
          to label %bb10 unwind label %cleanup1

bb10:                                             ; preds = %bb9
  store { i8*, i64 } %36, { i8*, i64 }* %_37, align 8
  %37 = bitcast { i8*, i64 }* %_37 to {}**
  %38 = load {}*, {}** %37, align 8
  %39 = icmp eq {}* %38, null
  %_39 = select i1 %39, i64 0, i64 1
  %40 = icmp eq i64 %_39, 1
  br i1 %40, label %bb11, label %bb14

bb11:                                             ; preds = %bb10
  %41 = bitcast { i8*, i64 }* %_37 to { [0 x i8]*, i64 }*
  %42 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %41, i32 0, i32 0
  %43 = load [0 x i8]*, [0 x i8]** %42, align 8, !nonnull !1, !align !3, !noundef !1
  %44 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %rest, i32 0, i32 0
  store [0 x i8]* %43, [0 x i8]** %46, align 8
  %47 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %rest, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h938eaec054993102E({ [0 x i8]*, i64 }* align 8 %rest)
          to label %bb12 unwind label %cleanup1

bb14:                                             ; preds = %bb10
  invoke void @_ZN4core3fmt9Arguments6new_v117h2f13ed9e523f0d5aE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_54, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc52 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc54 to [0 x { i8*, i64* }]*), i64 0)
          to label %bb15 unwind label %cleanup1

bb15:                                             ; preds = %bb14
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_54)
          to label %bb22 unwind label %cleanup1

bb22:                                             ; preds = %bb15
  br label %bb16

bb16:                                             ; preds = %bb21, %bb22
  call void @"_ZN4core3ptr53drop_in_place$LT$scan_decimal_number..UrlKeyValue$GT$17h9350f24e124aa4cbE"(%UrlKeyValue* %url_kv)
  br label %bb17

bb12:                                             ; preds = %bb11
  %_50.0 = extractvalue { i8*, i64* } %48, 0
  %_50.1 = extractvalue { i8*, i64* } %48, 1
  %49 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_49, i64 0, i64 0
  %50 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %49, i32 0, i32 0
  store i8* %_50.0, i8** %50, align 8
  %51 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %49, i32 0, i32 1
  store i64* %_50.1, i64** %51, align 8
  %_46.0 = bitcast [1 x { i8*, i64* }]* %_49 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117h2f13ed9e523f0d5aE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_42, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc48 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_46.0, i64 1)
          to label %bb13 unwind label %cleanup1

bb13:                                             ; preds = %bb12
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_42)
          to label %bb21 unwind label %cleanup1

bb21:                                             ; preds = %bb13
  br label %bb16

bb17:                                             ; preds = %bb16
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN66_$LT$scan_decimal_number..Category$u20$as$u20$core..fmt..Debug$GT$3fmt17hd111d243badac8bbE"(i16* align 2 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i16, i16* %self, align 2, !range !13, !noundef !1
  %_3 = zext i16 %1 to i64
  switch i64 %_3, label %bb2 [
    i64 1, label %bb3
    i64 2, label %bb4
    i64 4, label %bb5
    i64 8, label %bb6
    i64 16, label %bb7
    i64 32, label %bb8
    i64 64, label %bb9
    i64 128, label %bb10
    i64 256, label %bb11
    i64 512, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [6 x i8] }>* @alloc219 to [0 x i8]*), i64 6)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb12

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc218 to [0 x i8]*), i64 10)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb12

bb5:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc217 to [0 x i8]*), i64 8)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb12

bb6:                                              ; preds = %start
  %8 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc216 to [0 x i8]*), i64 8)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %0, align 1
  br label %bb12

bb7:                                              ; preds = %start
  %10 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc215 to [0 x i8]*), i64 10)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb12

bb8:                                              ; preds = %start
  %12 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc214 to [0 x i8]*), i64 8)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %0, align 1
  br label %bb12

bb9:                                              ; preds = %start
  %14 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc213 to [0 x i8]*), i64 5)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %0, align 1
  br label %bb12

bb10:                                             ; preds = %start
  %16 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc212 to [0 x i8]*), i64 8)
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %0, align 1
  br label %bb12

bb11:                                             ; preds = %start
  %18 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc211 to [0 x i8]*), i64 8)
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %0, align 1
  br label %bb12

bb1:                                              ; preds = %start
  %20 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc210 to [0 x i8]*), i64 8)
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %0, align 1
  br label %bb12

bb12:                                             ; preds = %bb1, %bb11, %bb10, %bb9, %bb8, %bb7, %bb6, %bb5, %bb4, %bb3
  %22 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %23 = trunc i8 %22 to i1
  ret i1 %23
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #8

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core3str16slice_error_fail17h2805d168fae0f9a7E([0 x i8]* align 1, i64, i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #9

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
declare i32 @memcmp(i8*, i8*, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #9 = { inaccessiblememonly nofree nosync nounwind willreturn }
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
!2 = !{i64 0, i64 -9223372036854775807}
!3 = !{i64 1}
!4 = !{i8 0, i8 2}
!5 = !{i64 8}
!6 = !{i64 1, i64 -9223372036854775807}
!7 = !{i64 1, i64 0}
!8 = !{i64 0, i64 2}
!9 = !{i32 0, i32 2}
!10 = !{i32 0, i32 1114112}
!11 = !{i32 0, i32 1114113}
!12 = !{i64 0, i64 -9223372036854775806}
!13 = !{i16 1, i16 513}

^0 = module: (path: "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/scan_decimal_number.rs.bc", hash: (2340125432, 1391683982, 3410990661, 4003416584, 3698181899))
^1 = gv: (name: "_ZN4core3str8converts19from_utf8_unchecked17h03cb51d69f73736dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 13))) ; guid = 226230789010554307
^2 = gv: (name: "alloc195", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 337522690804378654
^3 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$8is_digit17h4e076d682321c6e8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^12), (callee: ^136))))) ; guid = 425016969395540273
^4 = gv: (name: "alloc219", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 458008679753168906
^5 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h360183b72cc86d98E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 468753403361224922
^6 = gv: (name: "_ZN5alloc7raw_vec11alloc_guard17hd7cb5c4254858cc0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 32, calls: ((callee: ^109))))) ; guid = 473175601109306732
^7 = gv: (name: "_ZN4core3str11validations15next_code_point17hb3e349d9bda5eaf8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 81, calls: ((callee: ^144), (callee: ^92), (callee: ^93), (callee: ^120), (callee: ^97), (callee: ^112)), refs: (^61, ^37, ^58)))) ; guid = 485776760299453138
^8 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^9 = gv: (name: "_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE") ; guid = 682884734678583306
^10 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h518c6b013a84cd01E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^59), (callee: ^147))))) ; guid = 877183852255280136
^11 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17hab684267d1663a1dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^162))))) ; guid = 921569355801430707
^12 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h8e61ef41b4ee4e8dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 54, calls: ((callee: ^187), (callee: ^178)), refs: (^30, ^40, ^186)))) ; guid = 1040588009416854518
^13 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h31a7ca3a3579de23E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 1116042180908904581
^14 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h6046b6c12af7d22cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^45)), refs: (^181)))) ; guid = 1155681552455833457
^15 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6e015a3eb20c1813E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1189263227001592922
^16 = gv: (name: "alloc211", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1362309939542938018
^17 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^18 = gv: (name: "alloc49", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1857176637672476223
^19 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h394013b36031c38aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 30, calls: ((callee: ^102))))) ; guid = 1864636287731303362
^20 = gv: (name: "_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE") ; guid = 1902152299201211586
^21 = gv: (name: "_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17ha4c261c1242e5f73E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^96))))) ; guid = 2037387955012035044
^22 = gv: (name: "_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h7df1d0b19c558fcdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^52), (callee: ^145), (callee: ^150))))) ; guid = 2052685221079740552
^23 = gv: (name: "_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h05808169e1f06f58E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 2204756374918348277
^24 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h01a2ffdb39befca7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^182))))) ; guid = 2299030213720928592
^25 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h9ab754c276ea52ddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 2389459576450737712
^26 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd7f36d5843ff48d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2395039695249953765
^27 = gv: (name: "alloc201", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2428042145696729752
^28 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17he40324d766db32ecE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^167))))) ; guid = 2434215417936347247
^29 = gv: (name: "_ZN66_$LT$scan_decimal_number..Category$u20$as$u20$core..fmt..Debug$GT$3fmt17hd111d243badac8bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 48, calls: ((callee: ^20)), refs: (^4, ^139, ^74, ^41, ^164, ^34, ^73, ^70, ^16, ^168)))) ; guid = 2563286290575934808
^30 = gv: (name: "alloc54", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2569467512057536232
^31 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^32 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5ad0dae79e3e8b27E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^195), (callee: ^36), (callee: ^201)), refs: (^161)))) ; guid = 2707716173795309235
^33 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^57)))) ; guid = 2765458722961659437
^34 = gv: (name: "alloc214", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2827961178005388712
^35 = gv: (name: "alloc200", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 2939722812937553332
^36 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf26357eb88f68f2eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^157))))) ; guid = 2993587172044590625
^37 = gv: (name: "alloc194", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^2)))) ; guid = 3063836970422131286
^38 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hf68fecfbd8e3a1bdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 3103363992927983284
^39 = gv: (name: "alloc173", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^175)))) ; guid = 3261073418978264745
^40 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^151)))) ; guid = 3318443584091793088
^41 = gv: (name: "alloc216", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3471159239326126686
^42 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h1551d32b4753a5eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^137), (callee: ^147))))) ; guid = 3530488957359419608
^43 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h7922613b08512729E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 3705554431383046426
^44 = gv: (name: "alloc199", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3853918385009801856
^45 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hdc8832ea1e942a42E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 3897898511879566972
^46 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h271956006aa3a830E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^77), (callee: ^199))))) ; guid = 3927633798971691814
^47 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h81277ee35b715628E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^106), (callee: ^133))))) ; guid = 4042526619613593872
^48 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h17fb2cb7ff5de1b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^25))))) ; guid = 4072538531838890744
^49 = gv: (name: "alloc42", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4176099404079901488
^50 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h1000a69815f66ac7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^69), (callee: ^13), (callee: ^126), (callee: ^48), (callee: ^115)), refs: (^35)))) ; guid = 4380116104765502530
^51 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h2a0f8edb0dff3c6dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 46, calls: ((callee: ^28), (callee: ^148), (callee: ^124))))) ; guid = 4468022566091000105
^52 = gv: (name: "_ZN4core3mem11size_of_val17hd7330bd3bbcd2fa1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 4547512248683890710
^53 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17h250ea3722603913cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 4566842702276370364
^54 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^55 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17ha29754e6b53de1ddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^128))))) ; guid = 4732323392354293529
^56 = gv: (name: "alloc203", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4796812049851512166
^57 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4836843136684646908
^58 = gv: (name: "alloc196", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^2)))) ; guid = 4913650732151230355
^59 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6d98eb60081b0aa9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5136990027842548227
^60 = gv: (name: "alloc209", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5160073119291508109
^61 = gv: (name: "alloc192", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^2)))) ; guid = 5160907396748158429
^62 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h45c6139d3f39fc73E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 5173326653105424389
^63 = gv: (name: "alloc52", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^85)))) ; guid = 5296247696518038384
^64 = gv: (name: "_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$13get_unchecked17heef07973501c1239E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 17, calls: ((callee: ^155), (callee: ^171), (callee: ^123))))) ; guid = 5329498512674746237
^65 = gv: (name: "llvm.uadd.sat.i32") ; guid = 5512586733557502133
^66 = gv: (name: "_ZN4core4char18from_u32_unchecked17hc5a68dbad1a124e2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^103))))) ; guid = 5733619833807885569
^67 = gv: (name: "_ZN4core3str16slice_error_fail17h2805d168fae0f9a7E") ; guid = 5788510974411133155
^68 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hb6617be023de2811E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^182), (callee: ^147))))) ; guid = 5817842079136631899
^69 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hd5f7c80505cbf877E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 5874765809008573550
^70 = gv: (name: "alloc212", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5997204650447659918
^71 = gv: (name: "_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17haa8ff9c56c4baaa6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^84))))) ; guid = 6104279138660493833
^72 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^73 = gv: (name: "alloc213", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6391617002184470767
^74 = gv: (name: "alloc217", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6517502380906817485
^75 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^76 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde7703adba9c3c85E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^32))))) ; guid = 6610897573556841526
^77 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hfdf06b3d7c1a8b76E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 6611730354822906291
^78 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h59adc9592afaec50E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^145), (callee: ^46), (callee: ^147))))) ; guid = 6695506694582624879
^79 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h938eaec054993102E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^89)), refs: (^170)))) ; guid = 6782643389833430954
^80 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h6406d3000a75010cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^59), (callee: ^55), (callee: ^62))))) ; guid = 6788772167675852003
^81 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^82 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h6b1c5de38f7e5827E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^10), (callee: ^38))))) ; guid = 6852563681690408879
^83 = gv: (name: "_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h662945db3ffce512E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^71))))) ; guid = 7038459291103167784
^84 = gv: (name: "_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h5d6b3ddfb3341616E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^143))))) ; guid = 7042076642834220656
^85 = gv: (name: "alloc51", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7346139783670108577
^86 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h80713b621bbe07f1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 7426891866511091272
^87 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hb5d9b3eb5b74d89bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 7428873329876409751
^88 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hc31f9029b85ee454E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^108))))) ; guid = 7479952915503094105
^89 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h67ed0c2f17802984E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 7521350350011720953
^90 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17he84f57737b3d98bfE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^108))))) ; guid = 7546425100653970773
^91 = gv: (name: "scan_decimal_number", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 79, calls: ((callee: ^19), (callee: ^101), (callee: ^3), (callee: ^183), (callee: ^113)), refs: (^152)))) ; guid = 7553685843126878470
^92 = gv: (name: "_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h65df38314f419983E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19))) ; guid = 7599096554849042666
^93 = gv: (name: "_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h9a110798c4d40877E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 7734024799772491033
^94 = gv: (name: "_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h9bd96951f448860aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^22))))) ; guid = 8111962506215226757
^95 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17ha18d6174fc369df3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^53))))) ; guid = 8138384080823974527
^96 = gv: (name: "_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hca7d757d2f9aa999E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^83), (callee: ^125))))) ; guid = 8198815716245203320
^97 = gv: (name: "_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h55ba812eddf420a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^86)), refs: (^161)))) ; guid = 8254870925580171082
^98 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h3329d79eb26d3d0eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^68))))) ; guid = 8273270175071457285
^99 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17ha251302340449489E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 8331526734138433633
^100 = gv: (name: "_ZN4core3fmt10ArgumentV19new_debug17ha1b6381733d4f01eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^43)), refs: (^29)))) ; guid = 8596931990895098780
^101 = gv: (name: "_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf07a6cbc6ba0789cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^7), (callee: ^130))))) ; guid = 8663655448728140060
^102 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h38d5e23960ce16a5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^78))))) ; guid = 8734140607782644577
^103 = gv: (name: "_ZN4core4char7convert18from_u32_unchecked17hf3c7bbec8263c4bcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 8825625471619211222
^104 = gv: (name: "_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h77470bb6f0517cceE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^51), (callee: ^64))))) ; guid = 8840392898406920546
^105 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17ha4feb0d9c1677f8eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^146), (callee: ^59), (callee: ^132))))) ; guid = 9009980009418345455
^106 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hd866c16fcf49e331E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^24), (callee: ^137))))) ; guid = 9061199114522098675
^107 = gv: (name: "_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h517605cae19b0882E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^47), (callee: ^1))))) ; guid = 9232876925882349980
^108 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17h2a0bb29183e6ecf4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^146), (callee: ^131), (callee: ^197), (callee: ^141), (callee: ^42), (callee: ^159), (callee: ^26), (callee: ^80), (callee: ^190)), refs: (^163)))) ; guid = 9277786574942627041
^109 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcebb70687f9a3cdaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^23))))) ; guid = 9356382776706146465
^110 = gv: (name: "_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hefe548c008a86ef3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^5), (callee: ^191), (callee: ^145), (callee: ^32), (callee: ^111), (callee: ^95), (callee: ^140), (callee: ^201)), refs: (^161)))) ; guid = 9448905116376168844
^111 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hc7cf1d75d9881aeaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^24), (callee: ^137))))) ; guid = 9477375702006106180
^112 = gv: (name: "_ZN4core3str11validations18utf8_acc_cont_byte17h4c1b77e83b53dc50E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 9514493765911303917
^113 = gv: (name: "_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h921c378ae171101cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^165))))) ; guid = 9549359143785795802
^114 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h3f12cb880f2430a3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^147))))) ; guid = 10088000421505593388
^115 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h7b0a1508849f6ec6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^138))))) ; guid = 10123348755742811927
^116 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hc8799500d40f1865E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 10134920140179610538
^117 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17ha194a95130e11597E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^129)), refs: (^161)))) ; guid = 10217419974554884442
^118 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hd4470402ea10a5b7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^155))))) ; guid = 10240832289799042076
^119 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^120 = gv: (name: "_ZN4core3str11validations15utf8_first_byte17hd794e68c40d9e992E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 10315071690633297706
^121 = gv: (name: "_ZN4core5alloc6layout6Layout5align17hb6687eda85d518e0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^194), (callee: ^135))))) ; guid = 10585740663010494672
^122 = gv: (name: "alloc197", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10846249776443954574
^123 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17hcd154d9b52765125E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^116), (callee: ^99))))) ; guid = 10899177879160907686
^124 = gv: (name: "_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h889e9bc7af6b2db5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 10965623883613470359
^125 = gv: (name: "_ZN5alloc6string6String19from_utf8_unchecked17h7229b4e482a836e1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9))) ; guid = 11145735165093244606
^126 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2b5526712582794eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 11150198915791314350
^127 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^30, ^18)))) ; guid = 11235623163343414394
^128 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hef811ada0e7da951E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 11465499190600284879
^129 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h156f397dbfb4fd51E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^114), (callee: ^38))))) ; guid = 11561699277920078040
^130 = gv: (name: "_ZN4core6option15Option$LT$T$GT$3map17h9fef4d7d127de8b2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, calls: ((callee: ^189))))) ; guid = 11612871226583365281
^131 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17hcef667d4fe556e0eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^121), (callee: ^147))))) ; guid = 11662600464976645110
^132 = gv: (name: "_ZN5alloc5alloc7dealloc17h0e56ebe862d46593E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^146), (callee: ^121), (callee: ^54))))) ; guid = 11857573070091956004
^133 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hdf18b1ad8fb5cec9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^123))))) ; guid = 11920832423892087994
^134 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h045302627187444bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^86)), refs: (^161)))) ; guid = 11945062628941553132
^135 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17hbc273a8ff1582e3cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 12043905951607345088
^136 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_some17h7914027c4b0a323fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 12050132486196076302
^137 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcff97966d90a6a96E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^153), (callee: ^179))))) ; guid = 12099130876109045007
^138 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17ha7a8d3080860890fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 12151163290837619126
^139 = gv: (name: "alloc218", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12175849098317995582
^140 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17he16fc352046133a2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 12315802569924461130
^141 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17h642ba17981732790E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^146), (callee: ^121), (callee: ^17))))) ; guid = 12353735135840860995
^142 = gv: (name: "_ZN4core3ptr8metadata8metadata17hf9f871d37d2dc9e3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 12637447659010794536
^143 = gv: (name: "_ZN5alloc5slice4hack6to_vec17ha9d667da10c7245aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^110))))) ; guid = 12750503715391382861
^144 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6a7d74509c1b0971E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^59), (callee: ^137), (callee: ^46), (callee: ^147))))) ; guid = 13182358439152876809
^145 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd70a2ac8653e90beE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 13217988944992454889
^146 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h46bb8575f9eee996E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 13429724641695888479
^147 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1dc7cc4945d52f3aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 13485956475012025490
^148 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$3len17h4348fecee9c60e6aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 15))) ; guid = 13538992293448452161
^149 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$scan_decimal_number..UrlKeyValue$GT$17h9350f24e124aa4cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^76), (callee: ^201)), refs: (^161)))) ; guid = 13704602260013570972
^150 = gv: (name: "memcmp") ; guid = 13767193220660627266
^151 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13776810506411871032
^152 = gv: (name: "alloc206", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^154)))) ; guid = 13781831149373149458
^153 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hbeb3f224f87468b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 13922982467801818235
^154 = gv: (name: "alloc205", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14118038803761108654
^155 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h95262e6934815f31E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 14336310344772161405
^156 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h567d580b7caaa2ecE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^50), (callee: ^134), (callee: ^82), (callee: ^98)), refs: (^185)))) ; guid = 14479771752595646912
^157 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6288a74462189d6cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^156), (callee: ^105))))) ; guid = 14573167342958642285
^158 = gv: (name: "_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17h2f46118455324907E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^21))))) ; guid = 14597535543983870884
^159 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17hf321a7265d7ee5aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 14613130357041526557
^160 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd915333085b034e3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^15), (callee: ^147))))) ; guid = 14700303498675383943
^161 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^162 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hd89d99d0cc6cb20dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 127, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^50), (callee: ^117), (callee: ^146), (callee: ^9), (callee: ^6), (callee: ^88), (callee: ^90), (callee: ^160), (callee: ^200), (callee: ^59), (callee: ^198)), refs: (^161)))) ; guid = 14868277289534117122
^163 = gv: (name: "alloc202", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^27)))) ; guid = 14892513856534296935
^164 = gv: (name: "alloc215", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15284251477698004167
^165 = gv: (name: "_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h1b94b5338e9ca580E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31, calls: ((callee: ^148), (callee: ^104), (callee: ^67))))) ; guid = 15314427185437306832
^166 = gv: (name: "alloc207", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15504440841616084370
^167 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h4118804f29b3fb7aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^118))))) ; guid = 15520835162149402339
^168 = gv: (name: "alloc210", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15571205081085942142
^169 = gv: (name: "alloc48", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18, ^177)))) ; guid = 15574248909916519943
^170 = gv: (name: "_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he01218273f40ba18E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^173))))) ; guid = 15649491877157182882
^171 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hf66b3fccf1471465E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^142))))) ; guid = 15722313263840311865
^172 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h1ba7063a8b3aab9eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15783386009457535336
^173 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^174 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15802901591090369438
^175 = gv: (name: "alloc172", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15808921121046914608
^176 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 124, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^100), (callee: ^187), (callee: ^192), (callee: ^158), (callee: ^76), (callee: ^14), (callee: ^201), (callee: ^149), (callee: ^91), (callee: ^79)), refs: (^161, ^127, ^166, ^180, ^196, ^60, ^30, ^63, ^169)))) ; guid = 15822663052811949562
^177 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16035675724167205711
^178 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^179 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h6e23b19a8544443eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 16140890381836031499
^180 = gv: (name: "alloc208", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16150028271318479361
^181 = gv: (name: "_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h8b90d24d292991d3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^107), (callee: ^173))))) ; guid = 16249915649423780361
^182 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h45956c0085844446E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^59))))) ; guid = 16740959814756155727
^183 = gv: (name: "_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h43d2bbcd6c21171fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^193))))) ; guid = 16755171273421501140
^184 = gv: (name: "_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h3c0b91f1f1ae4b12E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^94))))) ; guid = 16775482639157920570
^185 = gv: (name: "alloc204", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^56)))) ; guid = 16856319610204231107
^186 = gv: (name: "alloc198", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^122)))) ; guid = 16974054174668559563
^187 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h2f13ed9e523f0d5aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^187), (callee: ^178)), refs: (^30, ^33, ^39)))) ; guid = 17065199766815046448
^188 = gv: (name: "_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17he14d6bf66a1c3b7bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31, calls: ((callee: ^184))))) ; guid = 17108633200783007351
^189 = gv: (name: "_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hb9ceaab85633c498E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^66))))) ; guid = 17322631270009710642
^190 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb59323f8bd36bdbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^172))))) ; guid = 17578809533342212305
^191 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17ha7d7199fd0974785E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^11))))) ; guid = 17643914810544813869
^192 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^193 = gv: (name: "_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2ne17he2926a88e711a9efE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^188))))) ; guid = 17781774505578740083
^194 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd2ae06f903b83501E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^87))))) ; guid = 17883237702764939252
^195 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb4c35e21e9947446E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^111), (callee: ^55))))) ; guid = 17983673876687508985
^196 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18, ^174, ^49)))) ; guid = 18124248360244249310
^197 = gv: (name: "_ZN5alloc5alloc5alloc17ha6384badcb7e4f6dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^146), (callee: ^121), (callee: ^119))))) ; guid = 18183348662073021665
^198 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h182bb235571bb4b7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^147))))) ; guid = 18269268661210930817
^199 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17ha0c6382c15f0de69E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 18285123942736957438
^200 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^201 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^202 = blockcount: 595
