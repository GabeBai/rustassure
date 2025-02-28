; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_get_protocol.rs.bc'
source_filename = "url_get_protocol.83ce7f41-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::str::pattern::StrSearcher" = type { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, %"core::str::pattern::StrSearcherImpl" }
%"core::str::pattern::StrSearcherImpl" = type { i64, [8 x i64] }
%"core::option::Option<(usize, usize)>" = type { i64, [2 x i64] }
%"core::str::pattern::TwoWaySearcher" = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%"core::str::pattern::SearchStep" = type { i64, [2 x i64] }
%"core::option::Option<(usize, usize)>::Some" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::str::pattern::StrSearcherImpl::TwoWay" = type { [1 x i64], %"core::str::pattern::TwoWaySearcher" }
%"core::str::pattern::SearchStep::Match" = type { [1 x i64], i64, i64 }
%"core::str::pattern::StrSearcherImpl::Empty" = type { [1 x i64], %"core::str::pattern::EmptyNeedle" }
%"core::str::pattern::EmptyNeedle" = type { i64, i64, i8, i8, i8, [5 x i8] }
%"core::str::pattern::SearchStep::Reject" = type { [1 x i64], i64, i64 }
%"core::option::Option<alloc::string::String>" = type { {}*, [2 x i64] }
%"core::option::Option<alloc::string::String>::Some" = type { %"alloc::string::String" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc38 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc39 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc38, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc29 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc126 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc127 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc126, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc128 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc129 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc128, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc134 = private unnamed_addr constant <{ [83 x i8] }> <{ [83 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/str/validations.rs" }>, align 1
@alloc131 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc134, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\001\00\00\00$\00\00\00" }>, align 8
@alloc133 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc134, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\008\00\00\00(\00\00\00" }>, align 8
@alloc135 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc134, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\00@\00\00\00,\00\00\00" }>, align 8
@alloc150 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/str/pattern.rs" }>, align 1
@alloc137 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc150, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\8C\05\00\00\14\00\00\00" }>, align 8
@alloc139 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc150, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\8C\05\00\00!\00\00\00" }>, align 8
@alloc141 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc150, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\98\05\00\00\14\00\00\00" }>, align 8
@alloc143 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc150, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\98\05\00\00!\00\00\00" }>, align 8
@alloc144 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc145 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc144, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc146 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc147 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc146, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc148 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc149 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc148, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc151 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc150, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\1C\04\00\00\17\00\00\00" }>, align 8
@alloc152 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"://" }>, align 1
@alloc153 = private unnamed_addr constant <{ [84 x i8] }> <{ [84 x i8] c"inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_get_protocol.rs" }>, align 1
@alloc154 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [84 x i8] }>, <{ [84 x i8] }>* @alloc153, i32 0, i32 0, i32 0), [16 x i8] c"T\00\00\00\00\00\00\00\08\00\00\00\0E\00\00\00" }>, align 8
@alloc155 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c"https://example.com" }>, align 1
@alloc31 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Scheme: " }>, align 1
@alloc33 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc32 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [8 x i8] }>, <{ [8 x i8] }>* @alloc31, i32 0, i32 0, i32 0), [8 x i8] c"\08\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc33, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc26 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"No scheme found\0A" }>, align 1
@alloc27 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [16 x i8] }>, <{ [16 x i8] }>* @alloc26, i32 0, i32 0, i32 0), [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h886b0927bf0945d2E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h58c7ec3e3fb4f58aE"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb8f5ab5fc15e2556E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h4e50df6addbf7f18E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17he6e48c5d03ba5cfaE"(i64 %kind.0, i64 %kind.1) unnamed_addr #0 {
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
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h144ca93bf9ad4618E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd9bb79eface4d4daE"()
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
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h50a3fbcfa81ac9f6E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf90644d014ebbf17E"()
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
define internal void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17h5d643067dee67acdE"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hed7b9c2deac856d2E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hd0ac4cb26fa74576E"(i64 %start1, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = add nuw i64 %start1, %n
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$18backward_unchecked17ha05cc10fea6f2e19E"(i64 %start1, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = sub nuw i64 %start1, %n
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17h90fc3c6509d609e2E(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3Ord3max17hf1550410193896c3E(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h3343ca6199386e94E"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !3

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
  %_7 = load i8, i8* %_3, align 1, !range !3, !noundef !1
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !4, !noundef !1
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
  %14 = load i8, i8* %_8, align 1, !range !4, !noundef !1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !4, !noundef !1
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
define i64 @_ZN4core3cmp3max17h2f0b45b0822afaeaE(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3cmp3Ord3max17hf1550410193896c3E(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h3343ca6199386e94E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
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
  %1 = load i8, i8* %0, align 1, !range !3, !noundef !1
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
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hb8a068448f6f298aE"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h291871dd82d9c93cE(%"alloc::string::String"* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h1bbd9f3cb453d167E(%"alloc::string::String"* align 8 %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17he8123228eef44aebE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h1bbd9f3cb453d167E(%"alloc::string::String"* align 8 %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !5, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !5, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117he000e86d0eccc619E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %11 = load i64*, i64** %10, align 8, !align !6
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
  call void @_ZN4core3fmt9Arguments6new_v117he000e86d0eccc619E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc39 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc29 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc127 to %"core::panic::location::Location"*)) #13
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd27ba79bd4a9e727E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !7, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h9d2682ed72595bbcE(i64 %_3), !range !8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hd597d2885fbe8179E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !7, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h6d29e457efc6e8a8E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17hbf992ca5af52d18bE(i64* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !4, !noundef !1
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb5, label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb6

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  invoke void @_ZN4core3ptr5write17h8cf2f156127d1505E(i64* %dest, i64 %src)
          to label %bb2 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1
  br label %bb6

cleanup1:                                         ; preds = %bb1
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  ret i64 %result

bb4:                                              ; preds = %bb5, %bb6
  %13 = bitcast { i8*, i32 }* %0 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h390d3366e9c336a4E"(i8 %self) unnamed_addr #0 {
start:
  %0 = icmp sge i8 %self, -64
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he8d3c3474acc1c7fE"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %32 = load i64, i64* %31, align 8, !range !9, !noundef !1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h9d2682ed72595bbcE(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !8, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hd3365e2dd0792592E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17ha245b99576115e6dE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h5c43b7706cbfb65aE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h72d853eb53e905acE({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h2915de8843090f83E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h806feebb13c5dc2aE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5d71b23781080e08E"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hbd7234ff034b695bE"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hbd7234ff034b695bE"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdd802c7b50ae2257E"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h475d8e9cec4847d7E"({ i8*, i64 }* %1) #14
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
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h475d8e9cec4847d7E"({ i8*, i64 }* %7)
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

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17hbf992ca5af52d18bE(i64* %src) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %1 = bitcast i64* %0 to {}*
  %2 = load i64, i64* %0, align 8
  store i64 %2, i64* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast i64* %tmp to i8*
  %4 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %_6 = load i64, i64* %tmp, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64 %_6
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h475d8e9cec4847d7E"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h98d3a30dbc4b9207E"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h8cf2f156127d1505E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hba5b31b7a2fce1e7E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb8f5ab5fc15e2556E"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17haf756a00cd31be5cE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h403452eabe6a009dE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h4e50df6addbf7f18E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h58c7ec3e3fb4f58aE"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hcc1f514c676fcb70E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h21a5ae8681a9336aE"() unnamed_addr #0 {
start:
  %_1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h68100614649d61c0E"()
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h4e50df6addbf7f18E"(i8* %_1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hed81419ee736489aE"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha371079dad3ec6d0E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2de0e5d15891c659E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hed81419ee736489aE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h72d853eb53e905acE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata14from_raw_parts17h9b9e50e16e9e5d54E({}* %data_address) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2de0e5d15891c659E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h806feebb13c5dc2aE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i64 @_ZN4core3ptr8metadata8metadata17h9b13defae054f949E([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5585d1bf1d41d2e9E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb8f5ab5fc15e2556E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hde582be0daadc952E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha371079dad3ec6d0E"(i8* %ptr)
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
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb8f5ab5fc15e2556E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h403452eabe6a009dE"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hcc1f514c676fcb70E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb8f5ab5fc15e2556E"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9cc592d44d632e4bE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h96bbbe1a601f3faaE"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb8f5ab5fc15e2556E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h96bbbe1a601f3faaE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hcc1f514c676fcb70E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h68100614649d61c0E"() unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 1, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb8f5ab5fc15e2556E"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17ha612d4ab90003e40E"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hcc1f514c676fcb70E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h2915de8843090f83E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5585d1bf1d41d2e9E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h254908209d5846acE"(i8* %self, i8* %other) unnamed_addr #0 {
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
define void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17h8584fa592a72282eE"(i8* %self, i8* %dest, i64 %count) unnamed_addr #0 {
start:
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h90fc3c6509d609e2E(i8* %self, i8* %dest, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h5c43b7706cbfb65aE"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hbf033b533ee96613E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h9b9e50e16e9e5d54E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h254908209d5846acE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h08305dfad4e5a803E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3ptr8metadata8metadata17h9b13defae054f949E([0 x i8]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hcb984566085dd7ebE"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @_ZN4core3str11validations15next_code_point17h588ca6074c7e6bedE({ i8*, i8* }* align 8 %bytes) unnamed_addr #0 {
start:
  %ch = alloca i32, align 4
  %_4 = alloca i8*, align 8
  %0 = alloca { i32, i32 }, align 4
  %_5 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0e0f71c44d85c21E"({ i8*, i8* }* align 8 %bytes)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha4b4a8e888b6b828E"(i8* align 1 %_5)
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
  %val = load i8*, i8** %_4, align 8, !nonnull !1, !align !5, !noundef !1
  %x = load i8, i8* %val, align 1
  %_11 = icmp ult i8 %x, -128
  br i1 %_11, label %bb7, label %bb8

bb5:                                              ; preds = %bb2
  %5 = call { i32, i32 } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h8a1ed755f65531abE"()
  store { i32, i32 } %5, { i32, i32 }* %0, align 4
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb7, %bb6
  br label %bb24

bb8:                                              ; preds = %bb3
  %init = call i32 @_ZN4core3str11validations15utf8_first_byte17h990d394514ed14a1E(i8 %x, i32 2)
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
  %9 = load i32, i32* %8, align 4, !range !10, !noundef !1
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = insertvalue { i32, i32 } undef, i32 %9, 0
  %13 = insertvalue { i32, i32 } %12, i32 %11, 1
  ret { i32, i32 } %13

bb9:                                              ; preds = %bb8
  %_19 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0e0f71c44d85c21E"({ i8*, i8* }* align 8 %bytes)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_18 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h39ce0e17f01ad8e4E"(i8* align 1 %_19, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc131 to %"core::panic::location::Location"*))
  br label %bb11

bb11:                                             ; preds = %bb10
  %y = load i8, i8* %_18, align 1
  %14 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h8ab76b1086e622eaE(i32 %init, i8 %y)
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
  %_28 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0e0f71c44d85c21E"({ i8*, i8* }* align 8 %bytes)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_27 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h39ce0e17f01ad8e4E"(i8* align 1 %_28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc133 to %"core::panic::location::Location"*))
  br label %bb15

bb15:                                             ; preds = %bb14
  %z = load i8, i8* %_27, align 1
  %_32 = and i8 %y, 63
  %_31 = zext i8 %_32 to i32
  %y_z = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h8ab76b1086e622eaE(i32 %_31, i8 %z)
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
  %_42 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0e0f71c44d85c21E"({ i8*, i8* }* align 8 %bytes)
  br label %bb18

bb18:                                             ; preds = %bb17
  %_41 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h39ce0e17f01ad8e4E"(i8* align 1 %_42, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc135 to %"core::panic::location::Location"*))
  br label %bb19

bb19:                                             ; preds = %bb18
  %w = load i8, i8* %_41, align 1
  %_45 = and i32 %init, 7
  %_44 = shl i32 %_45, 18
  %_47 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h8ab76b1086e622eaE(i32 %y_z, i8 %w)
  br label %bb20

bb20:                                             ; preds = %bb19
  %18 = or i32 %_44, %_47
  store i32 %18, i32* %ch, align 4
  br label %bb21
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3str11validations15utf8_first_byte17h990d394514ed14a1E(i8 %byte, i32 %width) unnamed_addr #0 {
start:
  %0 = trunc i32 %width to i8
  %1 = and i8 %0, 7
  %_5 = lshr i8 127, %1
  %_3 = and i8 %byte, %_5
  %2 = zext i8 %_3 to i32
  ret i32 %2
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h8ab76b1086e622eaE(i32 %ch, i8 %byte) unnamed_addr #0 {
start:
  %_3 = shl i32 %ch, 6
  %_6 = and i8 %byte, 63
  %_5 = zext i8 %_6 to i32
  %0 = or i32 %_3, %_5
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h2a06368a124fb710E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
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
  %6 = load [0 x i8]*, [0 x i8]** %5, align 8, !nonnull !1, !align !5, !noundef !1
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %6, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  %_6.0 = extractvalue { [0 x i8]*, i64 } %10, 0
  %_6.1 = extractvalue { [0 x i8]*, i64 } %10, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %11 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h27c67051ae5c6d02E"([0 x i8]* align 1 %_6.0, i64 %_6.1, i64 %index)
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
  %_11 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h8226b0ab5572460aE"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb8

bb5:                                              ; preds = %bb4
  %_15 = load i8*, i8** %_4, align 8, !nonnull !1, !align !5, !noundef !1
  %b = load i8, i8* %_15, align 1
  %15 = call zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h390d3366e9c336a4E"(i8 %b)
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
define internal i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h8226b0ab5572460aE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !5, !noundef !1
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
define { i64, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$4find17hc90e14672992fc12E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %pat.0, i64 %pat.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_5 = alloca %"core::str::pattern::StrSearcher", align 8
  %_3 = alloca %"core::option::Option<(usize, usize)>", align 8
  call void @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h1e4e1a8889c812b6E"(%"core::str::pattern::StrSearcher"* sret(%"core::str::pattern::StrSearcher") %_5, [0 x i8]* align 1 %pat.0, i64 %pat.1, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hffbc86c170f05de8E"(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %_3, %"core::str::pattern::StrSearcher"* align 8 %_5)
          to label %bb2 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  br label %bb6

cleanup:                                          ; preds = %bb2, %bb1
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %6 = invoke { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$3map17h01145641856c3364E"(%"core::option::Option<(usize, usize)>"* %_3)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %7 = extractvalue { i64, i64 } %6, 0
  %8 = extractvalue { i64, i64 } %6, 1
  br label %bb4

bb6:                                              ; preds = %bb5
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb4:                                              ; preds = %bb3
  %15 = insertvalue { i64, i64 } undef, i64 %7, 0
  %16 = insertvalue { i64, i64 } %15, i64 %8, 1
  ret { i64, i64 } %16
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4ce97b14b082ad27E"(i64 %_2.0, i64 %_2.1) unnamed_addr #0 {
start:
  ret i64 %_2.0
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h556ee28749b9cca2E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { i8*, i8* }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !5, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17he78f809e9013ffffE"([0 x i8]* align 1 %_4.0, i64 %_4.1)
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
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$13get_unchecked17hd24a2c1a427274a8E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %ptr = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hcb984566085dd7ebE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17ha245b99576115e6dE(i8* %ptr, i64 %self)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_7.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h0d7ba3af5db248edE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %_3 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h2a06368a124fb710E"([0 x i8]* align 1 %slice.0, i64 %slice.1, i64 %self)
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
  %3 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$13get_unchecked17hd24a2c1a427274a8E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
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
  %8 = load i8*, i8** %7, align 8, !align !5
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = insertvalue { i8*, i64 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i64 } %11, i64 %10, 1
  ret { i8*, i64 } %12
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17h12bbfc94df0efdebE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %1 = call { i8*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h0d7ba3af5db248edE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1)
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
  %s.0 = load [0 x i8]*, [0 x i8]** %6, align 8, !nonnull !1, !align !5, !noundef !1
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %5, i32 0, i32 1
  %s.1 = load i64, i64* %7, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %s.0, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %s.1, 1
  ret { [0 x i8]*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$13get_unchecked17haf14df11f789d2f5E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_6 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hcb984566085dd7ebE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_6, i64 %self
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_10 = call i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h08305dfad4e5a803E"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %len = sub i64 %_10, %self
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17ha245b99576115e6dE(i8* %2, i64 %len)
  %_13.0 = extractvalue { [0 x i8]*, i64 } %3, 0
  %_13.1 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_13.0, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %_13.1, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hb70f9ecbc37c4e85E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %_3 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h2a06368a124fb710E"([0 x i8]* align 1 %slice.0, i64 %slice.1, i64 %self)
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
  %3 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$13get_unchecked17haf14df11f789d2f5E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
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
  %8 = load i8*, i8** %7, align 8, !align !5
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = insertvalue { i8*, i64 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i64 } %11, i64 %10, 1
  ret { i8*, i64 } %12
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9025e5dbec7a2b5cE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_9 = alloca { i8*, i64 }, align 8
  %_5 = alloca { i64, i64 }, align 8
  %_7 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h8226b0ab5572460aE"([0 x i8]* align 1 %slice.0, i64 %slice.1)
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
  %5 = call { i8*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hb70f9ecbc37c4e85E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1)
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
  %s.0 = load [0 x i8]*, [0 x i8]** %10, align 8, !nonnull !1, !align !5, !noundef !1
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %s.1 = load i64, i64* %11, align 8
  %12 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %s.0, 0
  %13 = insertvalue { [0 x i8]*, i64 } %12, i64 %s.1, 1
  ret { [0 x i8]*, i64 } %13
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h258046d90deeadd0E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9025e5dbec7a2b5cE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h9e078ca2a77e7b7eE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17h12bbfc94df0efdebE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN4core3str7pattern14TwoWaySearcher16byteset_contains17h040e0ba6d250dbb5E(%"core::str::pattern::TwoWaySearcher"* align 8 %self, i8 %byte) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 3
  %_5 = load i64, i64* %0, align 8
  %_7 = and i8 %byte, 63
  %_6 = zext i8 %_7 to i64
  %1 = and i64 %_6, 63
  %_4 = lshr i64 %_5, %1
  %_3 = and i64 %_4, 1
  %2 = icmp ne i64 %_3, 0
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3str7pattern14TwoWaySearcher4next17h6fb5013b2bc0c0beE(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %0, %"core::str::pattern::TwoWaySearcher"* align 8 %self, [0 x i8]* align 1 %haystack.0, i64 %haystack.1, [0 x i8]* align 1 %needle.0, i64 %needle.1, i1 zeroext %long_period) unnamed_addr #0 {
start:
  %_76 = alloca { i64, i64 }, align 8
  %iter3 = alloca { i64, i64 }, align 8
  %_72 = alloca { i64, i64 }, align 8
  %start2 = alloca i64, align 8
  %_46 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_41 = alloca { i64, i64 }, align 8
  %start1 = alloca i64, align 8
  %_21 = alloca i8, align 1
  %_10 = alloca i8*, align 8
  %1 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %old_pos = load i64, i64* %1, align 8
  %needle_last = sub i64 %needle.1, 1
  br label %bb1

bb1:                                              ; preds = %bb55, %start
  %2 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_13 = load i64, i64* %2, align 8
  %_12 = add i64 %_13, %needle_last
  %3 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h27c67051ae5c6d02E"([0 x i8]* align 1 %haystack.0, i64 %haystack.1, i64 %_12)
  store i8* %3, i8** %_10, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast i8** %_10 to {}**
  %5 = load {}*, {}** %4, align 8
  %6 = icmp eq {}* %5, null
  %_15 = select i1 %6, i64 0, i64 1
  switch i64 %_15, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %7 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  store i64 %haystack.1, i64* %7, align 8
  %8 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_20 = load i64, i64* %8, align 8
  call void @"_ZN89_$LT$core..str..pattern..RejectAndMatch$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$9rejecting17h69e77977f53ee965E"(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %0, i64 %old_pos, i64 %_20)
  br label %bb6

bb5:                                              ; preds = %bb2
  %_108 = load i8*, i8** %_10, align 8, !nonnull !1, !align !5, !noundef !1
  %b = load i8, i8* %_108, align 1
  %_22 = call zeroext i1 @"_ZN89_$LT$core..str..pattern..RejectAndMatch$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$16use_early_reject17h484b07402000c03cE"()
  br label %bb10

bb10:                                             ; preds = %bb5
  br i1 %_22, label %bb8, label %bb7

bb7:                                              ; preds = %bb10
  store i8 0, i8* %_21, align 1
  br label %bb9

bb8:                                              ; preds = %bb10
  %9 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_25 = load i64, i64* %9, align 8
  %_23 = icmp ne i64 %old_pos, %_25
  %10 = zext i1 %_23 to i8
  store i8 %10, i8* %_21, align 1
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %11 = load i8, i8* %_21, align 1, !range !4, !noundef !1
  %12 = trunc i8 %11 to i1
  br i1 %12, label %bb11, label %bb13

bb13:                                             ; preds = %bb9
  %_29 = call zeroext i1 @_ZN4core3str7pattern14TwoWaySearcher16byteset_contains17h040e0ba6d250dbb5E(%"core::str::pattern::TwoWaySearcher"* align 8 %self, i8 %b)
  br label %bb14

bb11:                                             ; preds = %bb9
  %13 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_27 = load i64, i64* %13, align 8
  call void @"_ZN89_$LT$core..str..pattern..RejectAndMatch$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$9rejecting17h69e77977f53ee965E"(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %0, i64 %old_pos, i64 %_27)
  br label %bb12

bb12:                                             ; preds = %bb11
  br label %bb56

bb56:                                             ; preds = %bb6, %bb53, %bb12
  ret void

bb14:                                             ; preds = %bb13
  %_28 = xor i1 %_29, true
  br i1 %_28, label %bb15, label %bb18

bb18:                                             ; preds = %bb14
  br i1 %long_period, label %bb19, label %bb20

bb15:                                             ; preds = %bb14
  %14 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %15 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %needle.1
  store i64 %17, i64* %14, align 8
  %_34 = xor i1 %long_period, true
  br i1 %_34, label %bb16, label %bb17

bb17:                                             ; preds = %bb16, %bb15
  br label %bb55

bb16:                                             ; preds = %bb15
  %18 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  store i64 0, i64* %18, align 8
  br label %bb17

bb55:                                             ; preds = %bb54, %bb17
  br label %bb1

bb20:                                             ; preds = %bb18
  %19 = bitcast %"core::str::pattern::TwoWaySearcher"* %self to i64*
  %_38 = load i64, i64* %19, align 8
  %20 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  %_39 = load i64, i64* %20, align 8
  %21 = call i64 @_ZN4core3cmp3max17h2f0b45b0822afaeaE(i64 %_38, i64 %_39)
  store i64 %21, i64* %start1, align 8
  br label %bb21

bb19:                                             ; preds = %bb18
  %22 = bitcast %"core::str::pattern::TwoWaySearcher"* %self to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %start1, align 8
  br label %bb22

bb22:                                             ; preds = %bb21, %bb19
  %_42 = load i64, i64* %start1, align 8
  %24 = bitcast { i64, i64 }* %_41 to i64*
  store i64 %_42, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_41, i32 0, i32 1
  store i64 %needle.1, i64* %25, align 8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_41, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_41, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc8d0b5b4dcc112ceE"(i64 %27, i64 %29)
  %_40.0 = extractvalue { i64, i64 } %30, 0
  %_40.1 = extractvalue { i64, i64 } %30, 1
  br label %bb23

bb21:                                             ; preds = %bb20
  br label %bb22

bb23:                                             ; preds = %bb22
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0
  store i64 %_40.0, i64* %31, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1
  store i64 %_40.1, i64* %32, align 8
  br label %bb24

bb24:                                             ; preds = %bb34, %bb23
  %33 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbf5af099270f87b3E"({ i64, i64 }* align 8 %iter)
  store { i64, i64 } %33, { i64, i64 }* %_46, align 8
  br label %bb25

bb25:                                             ; preds = %bb24
  %34 = bitcast { i64, i64 }* %_46 to i64*
  %_49 = load i64, i64* %34, align 8, !range !9, !noundef !1
  switch i64 %_49, label %bb27 [
    i64 0, label %bb28
    i64 1, label %bb26
  ]

bb27:                                             ; preds = %bb25
  unreachable

bb28:                                             ; preds = %bb25
  br i1 %long_period, label %bb35, label %bb36

bb26:                                             ; preds = %bb25
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_46, i32 0, i32 1
  %i = load i64, i64* %35, align 8
  %_55 = icmp ult i64 %i, %needle.1
  %36 = call i1 @llvm.expect.i1(i1 %_55, i1 true)
  br i1 %36, label %bb29, label %panic

bb29:                                             ; preds = %bb26
  %37 = getelementptr inbounds [0 x i8], [0 x i8]* %needle.0, i64 0, i64 %i
  %_52 = load i8, i8* %37, align 1
  %38 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_58 = load i64, i64* %38, align 8
  %_57 = add i64 %_58, %i
  %_61 = icmp ult i64 %_57, %haystack.1
  %39 = call i1 @llvm.expect.i1(i1 %_61, i1 true)
  br i1 %39, label %bb30, label %panic4

panic:                                            ; preds = %bb26
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %i, i64 %needle.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc137 to %"core::panic::location::Location"*)) #13
  unreachable

bb30:                                             ; preds = %bb29
  %40 = getelementptr inbounds [0 x i8], [0 x i8]* %haystack.0, i64 0, i64 %_57
  %_56 = load i8, i8* %40, align 1
  %_51 = icmp ne i8 %_52, %_56
  br i1 %_51, label %bb31, label %bb34

panic4:                                           ; preds = %bb29
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_57, i64 %haystack.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc139 to %"core::panic::location::Location"*)) #13
  unreachable

bb34:                                             ; preds = %bb30
  br label %bb24

bb31:                                             ; preds = %bb30
  %41 = bitcast %"core::str::pattern::TwoWaySearcher"* %self to i64*
  %_65 = load i64, i64* %41, align 8
  %_63 = sub i64 %i, %_65
  %_62 = add i64 %_63, 1
  %42 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %43 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %_62
  store i64 %45, i64* %42, align 8
  %_66 = xor i1 %long_period, true
  br i1 %_66, label %bb32, label %bb33

bb33:                                             ; preds = %bb32, %bb31
  br label %bb54

bb32:                                             ; preds = %bb31
  %46 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  store i64 0, i64* %46, align 8
  br label %bb33

bb54:                                             ; preds = %bb49, %bb33
  br label %bb55

bb36:                                             ; preds = %bb28
  %47 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %start2, align 8
  br label %bb37

bb35:                                             ; preds = %bb28
  store i64 0, i64* %start2, align 8
  br label %bb37

bb37:                                             ; preds = %bb35, %bb36
  %_73 = load i64, i64* %start2, align 8
  %49 = bitcast %"core::str::pattern::TwoWaySearcher"* %self to i64*
  %_74 = load i64, i64* %49, align 8
  %50 = bitcast { i64, i64 }* %_72 to i64*
  store i64 %_73, i64* %50, align 8
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_72, i32 0, i32 1
  store i64 %_74, i64* %51, align 8
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_72, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_72, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17hb61f22830d427a1fE(i64 %53, i64 %55)
  %_71.0 = extractvalue { i64, i64 } %56, 0
  %_71.1 = extractvalue { i64, i64 } %56, 1
  br label %bb38

bb38:                                             ; preds = %bb37
  %57 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h27b40042a7984331E"(i64 %_71.0, i64 %_71.1)
  %_70.0 = extractvalue { i64, i64 } %57, 0
  %_70.1 = extractvalue { i64, i64 } %57, 1
  br label %bb39

bb39:                                             ; preds = %bb38
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter3, i32 0, i32 0
  store i64 %_70.0, i64* %58, align 8
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter3, i32 0, i32 1
  store i64 %_70.1, i64* %59, align 8
  br label %bb40

bb40:                                             ; preds = %bb50, %bb39
  %60 = call { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd716b0eae4e3e960E"({ i64, i64 }* align 8 %iter3)
  store { i64, i64 } %60, { i64, i64 }* %_76, align 8
  br label %bb41

bb41:                                             ; preds = %bb40
  %61 = bitcast { i64, i64 }* %_76 to i64*
  %_79 = load i64, i64* %61, align 8, !range !9, !noundef !1
  switch i64 %_79, label %bb43 [
    i64 0, label %bb44
    i64 1, label %bb42
  ]

bb43:                                             ; preds = %bb41
  unreachable

bb44:                                             ; preds = %bb41
  %62 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %match_pos = load i64, i64* %62, align 8
  %63 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %64 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %needle.1
  store i64 %66, i64* %63, align 8
  %_101 = xor i1 %long_period, true
  br i1 %_101, label %bb51, label %bb52

bb42:                                             ; preds = %bb41
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_76, i32 0, i32 1
  %i5 = load i64, i64* %67, align 8
  %_85 = icmp ult i64 %i5, %needle.1
  %68 = call i1 @llvm.expect.i1(i1 %_85, i1 true)
  br i1 %68, label %bb45, label %panic6

bb45:                                             ; preds = %bb42
  %69 = getelementptr inbounds [0 x i8], [0 x i8]* %needle.0, i64 0, i64 %i5
  %_82 = load i8, i8* %69, align 1
  %70 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_88 = load i64, i64* %70, align 8
  %_87 = add i64 %_88, %i5
  %_91 = icmp ult i64 %_87, %haystack.1
  %71 = call i1 @llvm.expect.i1(i1 %_91, i1 true)
  br i1 %71, label %bb46, label %panic7

panic6:                                           ; preds = %bb42
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %i5, i64 %needle.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc141 to %"core::panic::location::Location"*)) #13
  unreachable

bb46:                                             ; preds = %bb45
  %72 = getelementptr inbounds [0 x i8], [0 x i8]* %haystack.0, i64 0, i64 %_87
  %_86 = load i8, i8* %72, align 1
  %_81 = icmp ne i8 %_82, %_86
  br i1 %_81, label %bb47, label %bb50

panic7:                                           ; preds = %bb45
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_87, i64 %haystack.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc143 to %"core::panic::location::Location"*)) #13
  unreachable

bb50:                                             ; preds = %bb46
  br label %bb40

bb47:                                             ; preds = %bb46
  %73 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 2
  %_92 = load i64, i64* %73, align 8
  %74 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %75 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %_92
  store i64 %77, i64* %74, align 8
  %_93 = xor i1 %long_period, true
  br i1 %_93, label %bb48, label %bb49

bb49:                                             ; preds = %bb48, %bb47
  br label %bb54

bb48:                                             ; preds = %bb47
  %78 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 2
  %_97 = load i64, i64* %78, align 8
  %79 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  %80 = sub i64 %needle.1, %_97
  store i64 %80, i64* %79, align 8
  br label %bb49

bb52:                                             ; preds = %bb51, %bb44
  %_104 = add i64 %match_pos, %needle.1
  call void @"_ZN89_$LT$core..str..pattern..RejectAndMatch$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$8matching17h8ff0ec080b2395f2E"(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %0, i64 %match_pos, i64 %_104)
  br label %bb53

bb51:                                             ; preds = %bb44
  %81 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  store i64 0, i64* %81, align 8
  br label %bb52

bb53:                                             ; preds = %bb52
  br label %bb56

bb6:                                              ; preds = %bb3
  br label %bb56
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3str7pattern14TwoWaySearcher4next17hda4b60ca71ae26a7E(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, %"core::str::pattern::TwoWaySearcher"* align 8 %self, [0 x i8]* align 1 %haystack.0, i64 %haystack.1, [0 x i8]* align 1 %needle.0, i64 %needle.1, i1 zeroext %long_period) unnamed_addr #0 {
start:
  %_76 = alloca { i64, i64 }, align 8
  %iter3 = alloca { i64, i64 }, align 8
  %_72 = alloca { i64, i64 }, align 8
  %start2 = alloca i64, align 8
  %_46 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_41 = alloca { i64, i64 }, align 8
  %start1 = alloca i64, align 8
  %_21 = alloca i8, align 1
  %_10 = alloca i8*, align 8
  %1 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %old_pos = load i64, i64* %1, align 8
  %needle_last = sub i64 %needle.1, 1
  br label %bb1

bb1:                                              ; preds = %bb55, %start
  %2 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_13 = load i64, i64* %2, align 8
  %_12 = add i64 %_13, %needle_last
  %3 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h27c67051ae5c6d02E"([0 x i8]* align 1 %haystack.0, i64 %haystack.1, i64 %_12)
  store i8* %3, i8** %_10, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast i8** %_10 to {}**
  %5 = load {}*, {}** %4, align 8
  %6 = icmp eq {}* %5, null
  %_15 = select i1 %6, i64 0, i64 1
  switch i64 %_15, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %7 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  store i64 %haystack.1, i64* %7, align 8
  %8 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_20 = load i64, i64* %8, align 8
  call void @"_ZN84_$LT$core..str..pattern..MatchOnly$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$9rejecting17ha9d70949cbb0741eE"(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, i64 %old_pos, i64 %_20)
  br label %bb6

bb5:                                              ; preds = %bb2
  %_108 = load i8*, i8** %_10, align 8, !nonnull !1, !align !5, !noundef !1
  %b = load i8, i8* %_108, align 1
  %_22 = call zeroext i1 @"_ZN84_$LT$core..str..pattern..MatchOnly$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$16use_early_reject17hef9eee968ba92f37E"()
  br label %bb10

bb10:                                             ; preds = %bb5
  br i1 %_22, label %bb8, label %bb7

bb7:                                              ; preds = %bb10
  store i8 0, i8* %_21, align 1
  br label %bb9

bb8:                                              ; preds = %bb10
  %9 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_25 = load i64, i64* %9, align 8
  %_23 = icmp ne i64 %old_pos, %_25
  %10 = zext i1 %_23 to i8
  store i8 %10, i8* %_21, align 1
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %11 = load i8, i8* %_21, align 1, !range !4, !noundef !1
  %12 = trunc i8 %11 to i1
  br i1 %12, label %bb11, label %bb13

bb13:                                             ; preds = %bb9
  %_29 = call zeroext i1 @_ZN4core3str7pattern14TwoWaySearcher16byteset_contains17h040e0ba6d250dbb5E(%"core::str::pattern::TwoWaySearcher"* align 8 %self, i8 %b)
  br label %bb14

bb11:                                             ; preds = %bb9
  %13 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_27 = load i64, i64* %13, align 8
  call void @"_ZN84_$LT$core..str..pattern..MatchOnly$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$9rejecting17ha9d70949cbb0741eE"(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, i64 %old_pos, i64 %_27)
  br label %bb12

bb12:                                             ; preds = %bb11
  br label %bb56

bb56:                                             ; preds = %bb6, %bb53, %bb12
  ret void

bb14:                                             ; preds = %bb13
  %_28 = xor i1 %_29, true
  br i1 %_28, label %bb15, label %bb18

bb18:                                             ; preds = %bb14
  br i1 %long_period, label %bb19, label %bb20

bb15:                                             ; preds = %bb14
  %14 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %15 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %needle.1
  store i64 %17, i64* %14, align 8
  %_34 = xor i1 %long_period, true
  br i1 %_34, label %bb16, label %bb17

bb17:                                             ; preds = %bb16, %bb15
  br label %bb55

bb16:                                             ; preds = %bb15
  %18 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  store i64 0, i64* %18, align 8
  br label %bb17

bb55:                                             ; preds = %bb54, %bb17
  br label %bb1

bb20:                                             ; preds = %bb18
  %19 = bitcast %"core::str::pattern::TwoWaySearcher"* %self to i64*
  %_38 = load i64, i64* %19, align 8
  %20 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  %_39 = load i64, i64* %20, align 8
  %21 = call i64 @_ZN4core3cmp3max17h2f0b45b0822afaeaE(i64 %_38, i64 %_39)
  store i64 %21, i64* %start1, align 8
  br label %bb21

bb19:                                             ; preds = %bb18
  %22 = bitcast %"core::str::pattern::TwoWaySearcher"* %self to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %start1, align 8
  br label %bb22

bb22:                                             ; preds = %bb21, %bb19
  %_42 = load i64, i64* %start1, align 8
  %24 = bitcast { i64, i64 }* %_41 to i64*
  store i64 %_42, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_41, i32 0, i32 1
  store i64 %needle.1, i64* %25, align 8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_41, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_41, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc8d0b5b4dcc112ceE"(i64 %27, i64 %29)
  %_40.0 = extractvalue { i64, i64 } %30, 0
  %_40.1 = extractvalue { i64, i64 } %30, 1
  br label %bb23

bb21:                                             ; preds = %bb20
  br label %bb22

bb23:                                             ; preds = %bb22
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0
  store i64 %_40.0, i64* %31, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1
  store i64 %_40.1, i64* %32, align 8
  br label %bb24

bb24:                                             ; preds = %bb34, %bb23
  %33 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbf5af099270f87b3E"({ i64, i64 }* align 8 %iter)
  store { i64, i64 } %33, { i64, i64 }* %_46, align 8
  br label %bb25

bb25:                                             ; preds = %bb24
  %34 = bitcast { i64, i64 }* %_46 to i64*
  %_49 = load i64, i64* %34, align 8, !range !9, !noundef !1
  switch i64 %_49, label %bb27 [
    i64 0, label %bb28
    i64 1, label %bb26
  ]

bb27:                                             ; preds = %bb25
  unreachable

bb28:                                             ; preds = %bb25
  br i1 %long_period, label %bb35, label %bb36

bb26:                                             ; preds = %bb25
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_46, i32 0, i32 1
  %i = load i64, i64* %35, align 8
  %_55 = icmp ult i64 %i, %needle.1
  %36 = call i1 @llvm.expect.i1(i1 %_55, i1 true)
  br i1 %36, label %bb29, label %panic

bb29:                                             ; preds = %bb26
  %37 = getelementptr inbounds [0 x i8], [0 x i8]* %needle.0, i64 0, i64 %i
  %_52 = load i8, i8* %37, align 1
  %38 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_58 = load i64, i64* %38, align 8
  %_57 = add i64 %_58, %i
  %_61 = icmp ult i64 %_57, %haystack.1
  %39 = call i1 @llvm.expect.i1(i1 %_61, i1 true)
  br i1 %39, label %bb30, label %panic4

panic:                                            ; preds = %bb26
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %i, i64 %needle.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc137 to %"core::panic::location::Location"*)) #13
  unreachable

bb30:                                             ; preds = %bb29
  %40 = getelementptr inbounds [0 x i8], [0 x i8]* %haystack.0, i64 0, i64 %_57
  %_56 = load i8, i8* %40, align 1
  %_51 = icmp ne i8 %_52, %_56
  br i1 %_51, label %bb31, label %bb34

panic4:                                           ; preds = %bb29
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_57, i64 %haystack.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc139 to %"core::panic::location::Location"*)) #13
  unreachable

bb34:                                             ; preds = %bb30
  br label %bb24

bb31:                                             ; preds = %bb30
  %41 = bitcast %"core::str::pattern::TwoWaySearcher"* %self to i64*
  %_65 = load i64, i64* %41, align 8
  %_63 = sub i64 %i, %_65
  %_62 = add i64 %_63, 1
  %42 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %43 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %_62
  store i64 %45, i64* %42, align 8
  %_66 = xor i1 %long_period, true
  br i1 %_66, label %bb32, label %bb33

bb33:                                             ; preds = %bb32, %bb31
  br label %bb54

bb32:                                             ; preds = %bb31
  %46 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  store i64 0, i64* %46, align 8
  br label %bb33

bb54:                                             ; preds = %bb49, %bb33
  br label %bb55

bb36:                                             ; preds = %bb28
  %47 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %start2, align 8
  br label %bb37

bb35:                                             ; preds = %bb28
  store i64 0, i64* %start2, align 8
  br label %bb37

bb37:                                             ; preds = %bb35, %bb36
  %_73 = load i64, i64* %start2, align 8
  %49 = bitcast %"core::str::pattern::TwoWaySearcher"* %self to i64*
  %_74 = load i64, i64* %49, align 8
  %50 = bitcast { i64, i64 }* %_72 to i64*
  store i64 %_73, i64* %50, align 8
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_72, i32 0, i32 1
  store i64 %_74, i64* %51, align 8
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_72, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_72, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17hb61f22830d427a1fE(i64 %53, i64 %55)
  %_71.0 = extractvalue { i64, i64 } %56, 0
  %_71.1 = extractvalue { i64, i64 } %56, 1
  br label %bb38

bb38:                                             ; preds = %bb37
  %57 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h27b40042a7984331E"(i64 %_71.0, i64 %_71.1)
  %_70.0 = extractvalue { i64, i64 } %57, 0
  %_70.1 = extractvalue { i64, i64 } %57, 1
  br label %bb39

bb39:                                             ; preds = %bb38
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter3, i32 0, i32 0
  store i64 %_70.0, i64* %58, align 8
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter3, i32 0, i32 1
  store i64 %_70.1, i64* %59, align 8
  br label %bb40

bb40:                                             ; preds = %bb50, %bb39
  %60 = call { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd716b0eae4e3e960E"({ i64, i64 }* align 8 %iter3)
  store { i64, i64 } %60, { i64, i64 }* %_76, align 8
  br label %bb41

bb41:                                             ; preds = %bb40
  %61 = bitcast { i64, i64 }* %_76 to i64*
  %_79 = load i64, i64* %61, align 8, !range !9, !noundef !1
  switch i64 %_79, label %bb43 [
    i64 0, label %bb44
    i64 1, label %bb42
  ]

bb43:                                             ; preds = %bb41
  unreachable

bb44:                                             ; preds = %bb41
  %62 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %match_pos = load i64, i64* %62, align 8
  %63 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %64 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %needle.1
  store i64 %66, i64* %63, align 8
  %_101 = xor i1 %long_period, true
  br i1 %_101, label %bb51, label %bb52

bb42:                                             ; preds = %bb41
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_76, i32 0, i32 1
  %i5 = load i64, i64* %67, align 8
  %_85 = icmp ult i64 %i5, %needle.1
  %68 = call i1 @llvm.expect.i1(i1 %_85, i1 true)
  br i1 %68, label %bb45, label %panic6

bb45:                                             ; preds = %bb42
  %69 = getelementptr inbounds [0 x i8], [0 x i8]* %needle.0, i64 0, i64 %i5
  %_82 = load i8, i8* %69, align 1
  %70 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %_88 = load i64, i64* %70, align 8
  %_87 = add i64 %_88, %i5
  %_91 = icmp ult i64 %_87, %haystack.1
  %71 = call i1 @llvm.expect.i1(i1 %_91, i1 true)
  br i1 %71, label %bb46, label %panic7

panic6:                                           ; preds = %bb42
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %i5, i64 %needle.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc141 to %"core::panic::location::Location"*)) #13
  unreachable

bb46:                                             ; preds = %bb45
  %72 = getelementptr inbounds [0 x i8], [0 x i8]* %haystack.0, i64 0, i64 %_87
  %_86 = load i8, i8* %72, align 1
  %_81 = icmp ne i8 %_82, %_86
  br i1 %_81, label %bb47, label %bb50

panic7:                                           ; preds = %bb45
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_87, i64 %haystack.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc143 to %"core::panic::location::Location"*)) #13
  unreachable

bb50:                                             ; preds = %bb46
  br label %bb40

bb47:                                             ; preds = %bb46
  %73 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 2
  %_92 = load i64, i64* %73, align 8
  %74 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %75 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %_92
  store i64 %77, i64* %74, align 8
  %_93 = xor i1 %long_period, true
  br i1 %_93, label %bb48, label %bb49

bb49:                                             ; preds = %bb48, %bb47
  br label %bb54

bb48:                                             ; preds = %bb47
  %78 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 2
  %_97 = load i64, i64* %78, align 8
  %79 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  %80 = sub i64 %needle.1, %_97
  store i64 %80, i64* %79, align 8
  br label %bb49

bb52:                                             ; preds = %bb51, %bb44
  %_104 = add i64 %match_pos, %needle.1
  call void @"_ZN84_$LT$core..str..pattern..MatchOnly$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$8matching17h66e0ea0def5e21b7E"(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, i64 %match_pos, i64 %_104)
  br label %bb53

bb51:                                             ; preds = %bb44
  %81 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %self, i32 0, i32 6
  store i64 0, i64* %81, align 8
  br label %bb52

bb53:                                             ; preds = %bb52
  br label %bb56

bb6:                                              ; preds = %bb3
  br label %bb56
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h5c85131873f94dd5E([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %v.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %v.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !5, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char18from_u32_unchecked17h227be113e793e951E(i32 %i) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char7convert18from_u32_unchecked17hcf10f52e16a17010E(i32 %i), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char7convert18from_u32_unchecked17hcf10f52e16a17010E(i32 %i) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  store i32 %i, i32* %0, align 4
  %1 = load i32, i32* %0, align 4, !range !11, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8len_utf817hcd9603e012d9d059E"(i32 %self) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core4char7methods8len_utf817h2d6f69810bd5eee6E(i32 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4char7methods8len_utf817h2d6f69810bd5eee6E(i32 %code) unnamed_addr #0 {
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
define internal void @_ZN4core4hint21unreachable_unchecked17h319670cc13d161a9E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbf5af099270f87b3E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h7b07c48746aa2e98E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range116_$LT$impl$u20$core..iter..traits..double_ended..DoubleEndedIterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9next_back17hdc18aee0210c2f24E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$14spec_next_back17hff1080df0cd2ad45E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17hb61f22830d427a1fE(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h25be32ae265d064dE"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h25be32ae265d064dE"(i64 %iter.0, i64 %iter.1) unnamed_addr #1 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %iter.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %iter.1, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17habd35df94e908616E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hd597d2885fbe8179E(i64 %align), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !7, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h08de4c6bf57f4434E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h6a2526ff054d9d07E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !7, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd27ba79bd4a9e727E(i64 %_3), !range !8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hd3365e2dd0792592E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h55f6c1d4aa317452E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he8d3c3474acc1c7fE"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h4d994c95f66c97c1E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h99cd1f602436de1cE"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !9, !noundef !1
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h50a3fbcfa81ac9f6E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc145 to %"core::panic::location::Location"*))
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
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17habd35df94e908616E(i64 %val, i64 1)
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
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17hfa34366ea0f97244E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h6a2526ff054d9d07E({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb8f5ab5fc15e2556E"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h84ce6ae29faa8ef5E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h27c67051ae5c6d02E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %0 = call align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h85a6947df98cc139E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hbbbd0ff2bd27fb32E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
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
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17he78f809e9013ffffE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hf507687e421c4127E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd7f4313411f6c6f4E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hc5184dc0603c209eE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17ha245b99576115e6dE(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hf507687e421c4127E"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd7f4313411f6c6f4E"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hbf033b533ee96613E"(i8* %ptr)
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
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb8f5ab5fc15e2556E"(i8* %ptr)
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
define align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h39ce0e17f01ad8e4E"(i8* align 1 %0, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  invoke void @_ZN4core4hint21unreachable_unchecked17h319670cc13d161a9E() #13
          to label %unreachable unwind label %cleanup

bb3:                                              ; preds = %start
  %val = load i8*, i8** %self, align 8, !nonnull !1, !align !5, !noundef !1
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
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$3map17h01145641856c3364E"(%"core::option::Option<(usize, usize)>"* %self) unnamed_addr #0 {
start:
  %_9 = alloca i8, align 1
  %_7 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  store i8 1, i8* %_9, align 1
  %1 = bitcast %"core::option::Option<(usize, usize)>"* %self to i64*
  %_3 = load i64, i64* %1, align 8, !range !9, !noundef !1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %2 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %2, align 8
  br label %bb7

bb3:                                              ; preds = %start
  %3 = bitcast %"core::option::Option<(usize, usize)>"* %self to %"core::option::Option<(usize, usize)>::Some"*
  %4 = getelementptr inbounds %"core::option::Option<(usize, usize)>::Some", %"core::option::Option<(usize, usize)>::Some"* %3, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %x.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %x.1 = load i64, i64* %6, align 8
  store i8 0, i8* %_9, align 1
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 0
  store i64 %x.0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 1
  store i64 %x.1, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %_5 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4ce97b14b082ad27E"(i64 %10, i64 %12)
  br label %bb4

bb4:                                              ; preds = %bb3
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_5, i64* %13, align 8
  %14 = bitcast { i64, i64 }* %0 to i64*
  store i64 1, i64* %14, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb1
  %15 = load i8, i8* %_9, align 1, !range !4, !noundef !1
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %18 = load i64, i64* %17, align 8, !range !9, !noundef !1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { i64, i64 } undef, i64 %18, 0
  %22 = insertvalue { i64, i64 } %21, i64 %20, 1
  ret { i64, i64 } %22

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN4core6option15Option$LT$T$GT$3map17hf2a6cff21a5aae9dE"(i32 %0, i32 %1) unnamed_addr #0 {
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
  %6 = load i32, i32* %5, align 4, !range !10, !noundef !1
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
  %_5 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hc36f75e9028db155E"(i32 %9), !range !11
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
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h4d994c95f66c97c1E"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %_3 = load i64, i64* %5, align 8, !range !9, !noundef !1
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
  %15 = load i64, i64* %14, align 8, !range !9, !noundef !1
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hb29bfaa274263b31E"(i8* %0) unnamed_addr #0 {
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
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hf033b3acea2efd80E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %t.1 = load i64, i64* %10, align 8, !range !7, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !2, !noundef !1
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h319670cc13d161a9E() #13
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
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd9bb79eface4d4daE"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf90644d014ebbf17E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h41bb9709ae44dfabE"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h886b0927bf0945d2E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h737c5c6487a42b0eE"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17he6e48c5d03ba5cfaE"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h132e9a3845518badE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  store i8 1, i8* %_17, align 1
  %_3 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hbbbd0ff2bd27fb32E"([0 x i8]* align 1 %s.0, i64 %s.1)
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
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h490b0e92eac45657E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, i64 %_3)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_7 = invoke i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd7f4313411f6c6f4E"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb3 unwind label %cleanup1

bb9:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hbd7234ff034b695bE"(%"alloc::vec::Vec<u8>"* %v) #14
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
  %_9 = invoke i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h51296cc5c7342746E"(%"alloc::vec::Vec<u8>"* align 8 %v)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
  %_11 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hbbbd0ff2bd27fb32E"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  invoke void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17h8584fa592a72282eE"(i8* %_7, i8* %_9, i64 %_11)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  %_15 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hbbbd0ff2bd27fb32E"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h6a048ce260f066ccE"(%"alloc::vec::Vec<u8>"* align 8 %v, i64 %_15)
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
define internal void @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h1e4e1a8889c812b6E"(%"core::str::pattern::StrSearcher"* sret(%"core::str::pattern::StrSearcher") %0, [0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %haystack.0, i64 %haystack.1) unnamed_addr #0 {
start:
  call void @_ZN4core3str7pattern11StrSearcher3new17h977462c61d704e55E(%"core::str::pattern::StrSearcher"* sret(%"core::str::pattern::StrSearcher") %0, [0 x i8]* align 1 %haystack.0, i64 %haystack.1, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h10801d7212e7a19fE"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %_2 = alloca %"alloc::vec::Vec<u8>", align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !5, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h0c616ee68c30ac9fE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %_2, [0 x i8]* align 1 %_4.0, i64 %_4.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN5alloc6string6String19from_utf8_unchecked17h86e56c807369fa30E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"alloc::vec::Vec<u8>"* %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h51296cc5c7342746E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h95d787dd8fe080d1E"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha371079dad3ec6d0E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h490b0e92eac45657E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, i64 %capacity) unnamed_addr #0 {
start:
  %1 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17hcb07aa05e460b512E"(i64 %capacity)
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
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h6636f91c2ea23939E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h95d787dd8fe080d1E"({ i8*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha371079dad3ec6d0E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h6a048ce260f066ccE"(%"alloc::vec::Vec<u8>"* align 8 %self, i64 %new_len) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  store i64 %new_len, i64* %0, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17ha8c1b03536adfc0cE(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h08de4c6bf57f4434E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h6a2526ff054d9d07E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h4480279951e21259E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h08de4c6bf57f4434E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h6a2526ff054d9d07E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hbe122b31f8492f5eE(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h08de4c6bf57f4434E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17hfa34366ea0f97244E({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !7, !noundef !1
  %8 = call i8* @_ZN5alloc5alloc5alloc17h4480279951e21259E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !7, !noundef !1
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17ha8c1b03536adfc0cE(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hde582be0daadc952E"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hb29bfaa274263b31E"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3f0e46ed0e6095c6E"(i8* %_16)
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
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17ha612d4ab90003e40E"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h144ca93bf9ad4618E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc147 to %"core::panic::location::Location"*))
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
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17ha612d4ab90003e40E"(i8* %_7, i64 0)
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
define internal void @_ZN5alloc5alloc7dealloc17h5a94ee8b212558e7E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h08de4c6bf57f4434E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h6a2526ff054d9d07E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h400dab5303ea7d33E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17hf4c499a666cfbd49E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17hf4c499a666cfbd49E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @_ZN5alloc5slice4hack6to_vec17hde0b6bc3b2dbcadbE(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5slice4hack6to_vec17hde0b6bc3b2dbcadbE(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h132e9a3845518badE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h0c616ee68c30ac9fE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h400dab5303ea7d33E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc6string6String19from_utf8_unchecked17h86e56c807369fa30E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"alloc::vec::Vec<u8>"* %bytes) unnamed_addr #0 {
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
define internal { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hcc486fabff26fa69E(i64 %alloc_size) unnamed_addr #0 {
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
  %9 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h737c5c6487a42b0eE"(i64 %6, i64 %8)
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
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h4f40d99aa617ae4bE"(i64 %capacity, i1 zeroext %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %15 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h55f6c1d4aa317452E(i64 %capacity)
          to label %bb8 unwind label %cleanup

bb5:                                              ; preds = %bb3
  store i8 0, i8* %_37, align 1
  %16 = invoke { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h93ff311977394185E"()
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
  %layout.1 = load i64, i64* %27, align 8, !range !7, !noundef !1
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %layout.0, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %layout.1, i64* %29, align 8
  %_16 = invoke i64 @_ZN4core5alloc6layout6Layout4size17h08de4c6bf57f4434E({ i64, i64 }* align 8 %layout)
          to label %bb12 unwind label %cleanup

bb9:                                              ; preds = %bb8
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #13
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb23, %bb14, %bb9
  unreachable

bb12:                                             ; preds = %bb11
  %30 = invoke { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hcc486fabff26fa69E(i64 %_16)
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
  %_23.1 = load i64, i64* %38, align 8, !range !7, !noundef !1
  %39 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h3fca4aaaaa371606E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_23.0, i64 %_23.1)
          to label %bb20 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_25.0 = load i64, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_25.1 = load i64, i64* %41, align 8, !range !7, !noundef !1
  %42 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h0472809c04f8b0a6E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_25.0, i64 %_25.1)
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
  %_33 = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9cc592d44d632e4bE"(i8* %ptr.0, i64 %ptr.1)
          to label %bb26 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_30.0 = load i64, i64* %48, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_30.1 = load i64, i64* %49, align 8, !range !7, !noundef !1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %_30.0, i64 %_30.1) #13
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_32 = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hcc1f514c676fcb70E"(i8* %_33)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_31 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hba5b31b7a2fce1e7E"(i8* %_32)
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he3124457e767ed5cE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
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
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h55f6c1d4aa317452E(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hf033b3acea2efd80E"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc149 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17haf756a00cd31be5cE"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h41bb9709ae44dfabE"(i8* %_11)
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
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17hcb07aa05e460b512E"(i64 %capacity) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !4, !noundef !1
  %1 = trunc i8 %0 to i1
  %2 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h4f40d99aa617ae4bE"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i8*, i64 } %2, 0
  %4 = extractvalue { i8*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i8*, i64 } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64 } %5, i64 %4, 1
  ret { i8*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h95d787dd8fe080d1E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h58c7ec3e3fb4f58aE"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h93ff311977394185E"() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i64 }, align 8
  %_2 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h21a5ae8681a9336aE"()
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
define internal zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17he8123228eef44aebE"(%"alloc::string::String"* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb80a983e60218c28E"(%"alloc::string::String"* align 8 %self)
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
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h27b40042a7984331E"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc8d0b5b4dcc112ceE"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97daa747568dc322E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h08de4c6bf57f4434E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hcc1f514c676fcb70E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !7, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h5a94ee8b212558e7E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h0472809c04f8b0a6E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hbe122b31f8492f5eE(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h3fca4aaaaa371606E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hbe122b31f8492f5eE(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb80a983e60218c28E"(%"alloc::string::String"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  %0 = call { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8bfbed0c49b1afdbE"(%"alloc::vec::Vec<u8>"* align 8 %_5)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h5c85131873f94dd5E([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdd802c7b50ae2257E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h51296cc5c7342746E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h2915de8843090f83E(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8bfbed0c49b1afdbE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h6636f91c2ea23939E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hc5184dc0603c209eE(i8* %_2, i64 %_4)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha4b4a8e888b6b828E"(i8* align 1 %0) unnamed_addr #0 {
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
  %v = load i8*, i8** %self, align 8, !nonnull !1, !align !5, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %7 = load i8*, i8** %1, align 8, !align !5
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h73758ea062519e3fE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_4 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hcb984566085dd7ebE"([0 x i8]* %slice.0, i64 %slice.1)
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
define align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h85a6947df98cc139E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
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
  %_9 = call i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h73758ea062519e3fE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  store i8* %_9, i8** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %3 = load i8*, i8** %0, align 8, !align !5
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hed7b9c2deac856d2E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h10801d7212e7a19fE"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h98d3a30dbc4b9207E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he3124457e767ed5cE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
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
  %layout.1 = load i64, i64* %11, align 8, !range !7, !noundef !1
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97daa747568dc322E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3f0e46ed0e6095c6E"(i8* %0) unnamed_addr #0 {
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
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h99cd1f602436de1cE"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !9, !noundef !1
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
  %14 = load i64, i64* %13, align 8, !range !9, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hffbc86c170f05de8E"(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, %"core::str::pattern::StrSearcher"* align 8 %self) unnamed_addr #0 {
start:
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %2 = alloca { [0 x i8]*, i64 }, align 8
  %3 = alloca { [0 x i8]*, i64 }, align 8
  %4 = alloca { [0 x i8]*, i64 }, align 8
  %_8 = alloca { i64, i64 }, align 8
  %_3 = alloca %"core::str::pattern::SearchStep", align 8
  %5 = getelementptr inbounds %"core::str::pattern::StrSearcher", %"core::str::pattern::StrSearcher"* %self, i32 0, i32 2
  %6 = bitcast %"core::str::pattern::StrSearcherImpl"* %5 to i64*
  %_2 = load i64, i64* %6, align 8, !range !9, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  br label %bb4

bb1:                                              ; preds = %start
  %7 = getelementptr inbounds %"core::str::pattern::StrSearcher", %"core::str::pattern::StrSearcher"* %self, i32 0, i32 2
  %8 = bitcast %"core::str::pattern::StrSearcherImpl"* %7 to %"core::str::pattern::StrSearcherImpl::TwoWay"*
  %searcher = getelementptr inbounds %"core::str::pattern::StrSearcherImpl::TwoWay", %"core::str::pattern::StrSearcherImpl::TwoWay"* %8, i32 0, i32 1
  %9 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %searcher, i32 0, i32 6
  %_13 = load i64, i64* %9, align 8
  %is_long = icmp eq i64 %_13, -1
  br i1 %is_long, label %bb10, label %bb14

bb14:                                             ; preds = %bb1
  %10 = bitcast %"core::str::pattern::StrSearcher"* %self to { [0 x i8]*, i64 }*
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 0
  %_31.0 = load [0 x i8]*, [0 x i8]** %11, align 8, !nonnull !1, !align !5, !noundef !1
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 1
  %_31.1 = load i64, i64* %12, align 8
  %13 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 0
  store [0 x i8]* %_31.0, [0 x i8]** %13, align 8
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 1
  store i64 %_31.1, i64* %14, align 8
  %15 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 0
  %16 = load [0 x i8]*, [0 x i8]** %15, align 8, !nonnull !1, !align !5, !noundef !1
  %17 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %16, 0
  %20 = insertvalue { [0 x i8]*, i64 } %19, i64 %18, 1
  %_24.0 = extractvalue { [0 x i8]*, i64 } %20, 0
  %_24.1 = extractvalue { [0 x i8]*, i64 } %20, 1
  br label %bb15

bb10:                                             ; preds = %bb1
  %21 = bitcast %"core::str::pattern::StrSearcher"* %self to { [0 x i8]*, i64 }*
  %22 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %21, i32 0, i32 0
  %_29.0 = load [0 x i8]*, [0 x i8]** %22, align 8, !nonnull !1, !align !5, !noundef !1
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %21, i32 0, i32 1
  %_29.1 = load i64, i64* %23, align 8
  %24 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %_29.0, [0 x i8]** %24, align 8
  %25 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %_29.1, i64* %25, align 8
  %26 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %27 = load [0 x i8]*, [0 x i8]** %26, align 8, !nonnull !1, !align !5, !noundef !1
  %28 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %27, 0
  %31 = insertvalue { [0 x i8]*, i64 } %30, i64 %29, 1
  %_17.0 = extractvalue { [0 x i8]*, i64 } %31, 0
  %_17.1 = extractvalue { [0 x i8]*, i64 } %31, 1
  br label %bb11

bb11:                                             ; preds = %bb10
  %32 = getelementptr inbounds %"core::str::pattern::StrSearcher", %"core::str::pattern::StrSearcher"* %self, i32 0, i32 1
  %33 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %32, i32 0, i32 0
  %_30.0 = load [0 x i8]*, [0 x i8]** %33, align 8, !nonnull !1, !align !5, !noundef !1
  %34 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %32, i32 0, i32 1
  %_30.1 = load i64, i64* %34, align 8
  %35 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  store [0 x i8]* %_30.0, [0 x i8]** %35, align 8
  %36 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  store i64 %_30.1, i64* %36, align 8
  %37 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  %38 = load [0 x i8]*, [0 x i8]** %37, align 8, !nonnull !1, !align !5, !noundef !1
  %39 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %38, 0
  %42 = insertvalue { [0 x i8]*, i64 } %41, i64 %40, 1
  %_20.0 = extractvalue { [0 x i8]*, i64 } %42, 0
  %_20.1 = extractvalue { [0 x i8]*, i64 } %42, 1
  br label %bb12

bb12:                                             ; preds = %bb11
  call void @_ZN4core3str7pattern14TwoWaySearcher4next17hda4b60ca71ae26a7E(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, %"core::str::pattern::TwoWaySearcher"* align 8 %searcher, [0 x i8]* align 1 %_17.0, i64 %_17.1, [0 x i8]* align 1 %_20.0, i64 %_20.1, i1 zeroext true)
  br label %bb13

bb13:                                             ; preds = %bb12
  br label %bb18

bb18:                                             ; preds = %bb17, %bb13
  br label %bb20

bb15:                                             ; preds = %bb14
  %43 = getelementptr inbounds %"core::str::pattern::StrSearcher", %"core::str::pattern::StrSearcher"* %self, i32 0, i32 1
  %44 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 0
  %_32.0 = load [0 x i8]*, [0 x i8]** %44, align 8, !nonnull !1, !align !5, !noundef !1
  %45 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 1
  %_32.1 = load i64, i64* %45, align 8
  %46 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 0
  store [0 x i8]* %_32.0, [0 x i8]** %46, align 8
  %47 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 1
  store i64 %_32.1, i64* %47, align 8
  %48 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 0
  %49 = load [0 x i8]*, [0 x i8]** %48, align 8, !nonnull !1, !align !5, !noundef !1
  %50 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %49, 0
  %53 = insertvalue { [0 x i8]*, i64 } %52, i64 %51, 1
  %_27.0 = extractvalue { [0 x i8]*, i64 } %53, 0
  %_27.1 = extractvalue { [0 x i8]*, i64 } %53, 1
  br label %bb16

bb16:                                             ; preds = %bb15
  call void @_ZN4core3str7pattern14TwoWaySearcher4next17hda4b60ca71ae26a7E(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, %"core::str::pattern::TwoWaySearcher"* align 8 %searcher, [0 x i8]* align 1 %_24.0, i64 %_24.1, [0 x i8]* align 1 %_27.0, i64 %_27.1, i1 zeroext false)
  br label %bb17

bb17:                                             ; preds = %bb16
  br label %bb18

bb20:                                             ; preds = %bb19, %bb18
  ret void

bb4:                                              ; preds = %bb6, %bb3
  call void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hfabe300cd1bf9f45E"(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %_3, %"core::str::pattern::StrSearcher"* align 8 %self)
  br label %bb5

bb5:                                              ; preds = %bb4
  %54 = bitcast %"core::str::pattern::SearchStep"* %_3 to i64*
  %_5 = load i64, i64* %54, align 8, !range !14, !noundef !1
  switch i64 %_5, label %bb7 [
    i64 0, label %bb8
    i64 1, label %bb6
    i64 2, label %bb9
  ]

bb7:                                              ; preds = %bb5
  unreachable

bb8:                                              ; preds = %bb5
  %55 = bitcast %"core::str::pattern::SearchStep"* %_3 to %"core::str::pattern::SearchStep::Match"*
  %56 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %55, i32 0, i32 1
  %a = load i64, i64* %56, align 8
  %57 = bitcast %"core::str::pattern::SearchStep"* %_3 to %"core::str::pattern::SearchStep::Match"*
  %58 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %57, i32 0, i32 2
  %b = load i64, i64* %58, align 8
  %59 = bitcast { i64, i64 }* %_8 to i64*
  store i64 %a, i64* %59, align 8
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_8, i32 0, i32 1
  store i64 %b, i64* %60, align 8
  %61 = bitcast %"core::option::Option<(usize, usize)>"* %0 to %"core::option::Option<(usize, usize)>::Some"*
  %62 = getelementptr inbounds %"core::option::Option<(usize, usize)>::Some", %"core::option::Option<(usize, usize)>::Some"* %61, i32 0, i32 1
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_8, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = bitcast %"core::option::Option<(usize, usize)>"* %0 to i64*
  store i64 1, i64* %69, align 8
  br label %bb19

bb6:                                              ; preds = %bb5
  br label %bb4

bb9:                                              ; preds = %bb5
  %70 = bitcast %"core::option::Option<(usize, usize)>"* %0 to i64*
  store i64 0, i64* %70, align 8
  br label %bb19

bb19:                                             ; preds = %bb9, %bb8
  br label %bb20
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hfabe300cd1bf9f45E"(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %0, %"core::str::pattern::StrSearcher"* align 8 %self) unnamed_addr #0 {
start:
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %2 = alloca { [0 x i8]*, i64 }, align 8
  %otherwise = alloca %"core::str::pattern::SearchStep", align 8
  %b = alloca i64, align 8
  %_32 = alloca %"core::str::pattern::SearchStep", align 8
  %_14 = alloca i64, align 8
  %_10 = alloca { i8*, i8* }, align 8
  %_8 = alloca i32, align 4
  %3 = getelementptr inbounds %"core::str::pattern::StrSearcher", %"core::str::pattern::StrSearcher"* %self, i32 0, i32 2
  %4 = bitcast %"core::str::pattern::StrSearcherImpl"* %3 to i64*
  %_2 = load i64, i64* %4, align 8, !range !9, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %5 = getelementptr inbounds %"core::str::pattern::StrSearcher", %"core::str::pattern::StrSearcher"* %self, i32 0, i32 2
  %6 = bitcast %"core::str::pattern::StrSearcherImpl"* %5 to %"core::str::pattern::StrSearcherImpl::Empty"*
  %searcher1 = getelementptr inbounds %"core::str::pattern::StrSearcherImpl::Empty", %"core::str::pattern::StrSearcherImpl::Empty"* %6, i32 0, i32 1
  %7 = getelementptr inbounds %"core::str::pattern::EmptyNeedle", %"core::str::pattern::EmptyNeedle"* %searcher1, i32 0, i32 4
  %8 = load i8, i8* %7, align 2, !range !4, !noundef !1
  %_4 = trunc i8 %8 to i1
  br i1 %_4, label %bb4, label %bb5

bb1:                                              ; preds = %start
  %9 = getelementptr inbounds %"core::str::pattern::StrSearcher", %"core::str::pattern::StrSearcher"* %self, i32 0, i32 2
  %10 = bitcast %"core::str::pattern::StrSearcherImpl"* %9 to %"core::str::pattern::StrSearcherImpl::TwoWay"*
  %searcher = getelementptr inbounds %"core::str::pattern::StrSearcherImpl::TwoWay", %"core::str::pattern::StrSearcherImpl::TwoWay"* %10, i32 0, i32 1
  %11 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %searcher, i32 0, i32 4
  %_27 = load i64, i64* %11, align 8
  %12 = bitcast %"core::str::pattern::StrSearcher"* %self to { [0 x i8]*, i64 }*
  %13 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %12, i32 0, i32 0
  %_54.0 = load [0 x i8]*, [0 x i8]** %13, align 8, !nonnull !1, !align !5, !noundef !1
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %12, i32 0, i32 1
  %_54.1 = load i64, i64* %14, align 8
  %_28 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h8226b0ab5572460aE"([0 x i8]* align 1 %_54.0, i64 %_54.1)
  br label %bb16

bb16:                                             ; preds = %bb1
  %_26 = icmp eq i64 %_27, %_28
  br i1 %_26, label %bb17, label %bb18

bb18:                                             ; preds = %bb16
  %15 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %searcher, i32 0, i32 6
  %_31 = load i64, i64* %15, align 8
  %is_long = icmp eq i64 %_31, -1
  %16 = bitcast %"core::str::pattern::StrSearcher"* %self to { [0 x i8]*, i64 }*
  %17 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %16, i32 0, i32 0
  %_56.0 = load [0 x i8]*, [0 x i8]** %17, align 8, !nonnull !1, !align !5, !noundef !1
  %18 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %16, i32 0, i32 1
  %_56.1 = load i64, i64* %18, align 8
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %_56.0, [0 x i8]** %19, align 8
  %20 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %_56.1, i64* %20, align 8
  %21 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %22 = load [0 x i8]*, [0 x i8]** %21, align 8, !nonnull !1, !align !5, !noundef !1
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %22, 0
  %26 = insertvalue { [0 x i8]*, i64 } %25, i64 %24, 1
  %_35.0 = extractvalue { [0 x i8]*, i64 } %26, 0
  %_35.1 = extractvalue { [0 x i8]*, i64 } %26, 1
  br label %bb19

bb17:                                             ; preds = %bb16
  %27 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 2, i64* %27, align 8
  br label %bb30

bb30:                                             ; preds = %bb15, %bb4, %bb29, %bb17
  ret void

bb19:                                             ; preds = %bb18
  %28 = getelementptr inbounds %"core::str::pattern::StrSearcher", %"core::str::pattern::StrSearcher"* %self, i32 0, i32 1
  %29 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 0
  %_57.0 = load [0 x i8]*, [0 x i8]** %29, align 8, !nonnull !1, !align !5, !noundef !1
  %30 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 1
  %_57.1 = load i64, i64* %30, align 8
  %31 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  store [0 x i8]* %_57.0, [0 x i8]** %31, align 8
  %32 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  store i64 %_57.1, i64* %32, align 8
  %33 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  %34 = load [0 x i8]*, [0 x i8]** %33, align 8, !nonnull !1, !align !5, !noundef !1
  %35 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %34, 0
  %38 = insertvalue { [0 x i8]*, i64 } %37, i64 %36, 1
  %_38.0 = extractvalue { [0 x i8]*, i64 } %38, 0
  %_38.1 = extractvalue { [0 x i8]*, i64 } %38, 1
  br label %bb20

bb20:                                             ; preds = %bb19
  call void @_ZN4core3str7pattern14TwoWaySearcher4next17h6fb5013b2bc0c0beE(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %_32, %"core::str::pattern::TwoWaySearcher"* align 8 %searcher, [0 x i8]* align 1 %_35.0, i64 %_35.1, [0 x i8]* align 1 %_38.0, i64 %_38.1, i1 zeroext %is_long)
  br label %bb21

bb21:                                             ; preds = %bb20
  %39 = bitcast %"core::str::pattern::SearchStep"* %_32 to i64*
  %_41 = load i64, i64* %39, align 8, !range !14, !noundef !1
  %40 = icmp eq i64 %_41, 1
  br i1 %40, label %bb23, label %bb22

bb23:                                             ; preds = %bb21
  %41 = bitcast %"core::str::pattern::SearchStep"* %_32 to %"core::str::pattern::SearchStep::Reject"*
  %42 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %41, i32 0, i32 1
  %a = load i64, i64* %42, align 8
  %43 = bitcast %"core::str::pattern::SearchStep"* %_32 to %"core::str::pattern::SearchStep::Reject"*
  %44 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %b, align 8
  br label %bb24

bb22:                                             ; preds = %bb21
  %46 = bitcast %"core::str::pattern::SearchStep"* %otherwise to i8*
  %47 = bitcast %"core::str::pattern::SearchStep"* %_32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 24, i1 false)
  %48 = bitcast %"core::str::pattern::SearchStep"* %0 to i8*
  %49 = bitcast %"core::str::pattern::SearchStep"* %otherwise to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 24, i1 false)
  br label %bb29

bb29:                                             ; preds = %bb28, %bb22
  br label %bb30

bb24:                                             ; preds = %bb26, %bb23
  %50 = bitcast %"core::str::pattern::StrSearcher"* %self to { [0 x i8]*, i64 }*
  %51 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %50, i32 0, i32 0
  %_58.0 = load [0 x i8]*, [0 x i8]** %51, align 8, !nonnull !1, !align !5, !noundef !1
  %52 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %50, i32 0, i32 1
  %_58.1 = load i64, i64* %52, align 8
  %_47 = load i64, i64* %b, align 8
  %_45 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h2a06368a124fb710E"([0 x i8]* align 1 %_58.0, i64 %_58.1, i64 %_47)
  br label %bb25

bb25:                                             ; preds = %bb24
  %_44 = xor i1 %_45, true
  br i1 %_44, label %bb26, label %bb27

bb27:                                             ; preds = %bb25
  %_49 = load i64, i64* %b, align 8
  %53 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %searcher, i32 0, i32 4
  %_50 = load i64, i64* %53, align 8
  %_48 = call i64 @_ZN4core3cmp3max17h2f0b45b0822afaeaE(i64 %_49, i64 %_50)
  br label %bb28

bb26:                                             ; preds = %bb25
  %54 = load i64, i64* %b, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %b, align 8
  br label %bb24

bb28:                                             ; preds = %bb27
  %56 = getelementptr inbounds %"core::str::pattern::TwoWaySearcher", %"core::str::pattern::TwoWaySearcher"* %searcher, i32 0, i32 4
  store i64 %_48, i64* %56, align 8
  %_52 = load i64, i64* %b, align 8
  %57 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Reject"*
  %58 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %57, i32 0, i32 1
  store i64 %a, i64* %58, align 8
  %59 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Reject"*
  %60 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %59, i32 0, i32 2
  store i64 %_52, i64* %60, align 8
  %61 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 1, i64* %61, align 8
  br label %bb29

bb5:                                              ; preds = %bb3
  %62 = getelementptr inbounds %"core::str::pattern::EmptyNeedle", %"core::str::pattern::EmptyNeedle"* %searcher1, i32 0, i32 2
  %63 = load i8, i8* %62, align 8, !range !4, !noundef !1
  %is_match = trunc i8 %63 to i1
  %64 = getelementptr inbounds %"core::str::pattern::EmptyNeedle", %"core::str::pattern::EmptyNeedle"* %searcher1, i32 0, i32 2
  %65 = load i8, i8* %64, align 8, !range !4, !noundef !1
  %_6 = trunc i8 %65 to i1
  %66 = getelementptr inbounds %"core::str::pattern::EmptyNeedle", %"core::str::pattern::EmptyNeedle"* %searcher1, i32 0, i32 2
  %67 = xor i1 %_6, true
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %66, align 8
  %69 = bitcast %"core::str::pattern::EmptyNeedle"* %searcher1 to i64*
  %pos = load i64, i64* %69, align 8
  %70 = bitcast %"core::str::pattern::StrSearcher"* %self to { [0 x i8]*, i64 }*
  %71 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %70, i32 0, i32 0
  %_55.0 = load [0 x i8]*, [0 x i8]** %71, align 8, !nonnull !1, !align !5, !noundef !1
  %72 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %70, i32 0, i32 1
  %_55.1 = load i64, i64* %72, align 8
  store i64 %pos, i64* %_14, align 8
  %73 = load i64, i64* %_14, align 8
  %74 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h258046d90deeadd0E"([0 x i8]* align 1 %_55.0, i64 %_55.1, i64 %73, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc151 to %"core::panic::location::Location"*))
  %_12.0 = extractvalue { [0 x i8]*, i64 } %74, 0
  %_12.1 = extractvalue { [0 x i8]*, i64 } %74, 1
  br label %bb6

bb4:                                              ; preds = %bb3
  %75 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 2, i64* %75, align 8
  br label %bb30

bb6:                                              ; preds = %bb5
  %76 = call { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h556ee28749b9cca2E"([0 x i8]* align 1 %_12.0, i64 %_12.1)
  store { i8*, i8* } %76, { i8*, i8* }* %_10, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  %77 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd9f077521ed5e70eE"({ i8*, i8* }* align 8 %_10), !range !12
  store i32 %77, i32* %_8, align 4
  br label %bb8

bb8:                                              ; preds = %bb7
  br i1 %is_match, label %bb11, label %bb12

bb12:                                             ; preds = %bb8
  %78 = load i32, i32* %_8, align 4, !range !12, !noundef !1
  %79 = sub i32 %78, 1114112
  %80 = icmp eq i32 %79, 0
  %_16 = select i1 %80, i64 0, i64 1
  switch i64 %_16, label %bb10 [
    i64 0, label %bb13
    i64 1, label %bb9
  ]

bb11:                                             ; preds = %bb8
  %81 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Match"*
  %82 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %81, i32 0, i32 1
  store i64 %pos, i64* %82, align 8
  %83 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Match"*
  %84 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %83, i32 0, i32 2
  store i64 %pos, i64* %84, align 8
  %85 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 0, i64* %85, align 8
  br label %bb15

bb15:                                             ; preds = %bb14, %bb13, %bb11
  br label %bb30

bb10:                                             ; preds = %bb12
  unreachable

bb13:                                             ; preds = %bb12
  %86 = getelementptr inbounds %"core::str::pattern::EmptyNeedle", %"core::str::pattern::EmptyNeedle"* %searcher1, i32 0, i32 4
  store i8 1, i8* %86, align 2
  %87 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 2, i64* %87, align 8
  br label %bb15

bb9:                                              ; preds = %bb12
  %ch = load i32, i32* %_8, align 4, !range !11, !noundef !1
  %_21 = call i64 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8len_utf817hcd9603e012d9d059E"(i32 %ch)
  br label %bb14

bb14:                                             ; preds = %bb9
  %88 = bitcast %"core::str::pattern::EmptyNeedle"* %searcher1 to i64*
  %89 = bitcast %"core::str::pattern::EmptyNeedle"* %searcher1 to i64*
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, %_21
  store i64 %91, i64* %88, align 8
  %92 = bitcast %"core::str::pattern::EmptyNeedle"* %searcher1 to i64*
  %_24 = load i64, i64* %92, align 8
  %93 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Reject"*
  %94 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %93, i32 0, i32 1
  store i64 %pos, i64* %94, align 8
  %95 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Reject"*
  %96 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %95, i32 0, i32 2
  store i64 %_24, i64* %96, align 8
  %97 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 1, i64* %97, align 8
  br label %bb15
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd9f077521ed5e70eE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i32, i32 } @_ZN4core3str11validations15next_code_point17h588ca6074c7e6bedE({ i8*, i8* }* align 8 %self)
  %_2.0 = extractvalue { i32, i32 } %0, 0
  %_2.1 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i32 @"_ZN4core6option15Option$LT$T$GT$3map17hf2a6cff21a5aae9dE"(i32 %_2.0, i32 %_2.1), !range !12
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hc36f75e9028db155E"(i32 %ch) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char18from_u32_unchecked17h227be113e793e951E(i32 %ch), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h8a1ed755f65531abE"() unnamed_addr #0 {
start:
  %0 = alloca { i32, i32 }, align 4
  %1 = bitcast { i32, i32 }* %0 to i32*
  store i32 0, i32* %1, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %3 = load i32, i32* %2, align 4, !range !10, !noundef !1
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = insertvalue { i32, i32 } undef, i32 %3, 0
  %7 = insertvalue { i32, i32 } %6, i32 %5, 1
  ret { i32, i32 } %7
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN84_$LT$core..str..pattern..MatchOnly$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$16use_early_reject17hef9eee968ba92f37E"() unnamed_addr #0 {
start:
  ret i1 false
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN84_$LT$core..str..pattern..MatchOnly$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$8matching17h66e0ea0def5e21b7E"(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, i64 %a, i64 %b) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %_3 to i64*
  store i64 %a, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %b, i64* %2, align 8
  %3 = bitcast %"core::option::Option<(usize, usize)>"* %0 to %"core::option::Option<(usize, usize)>::Some"*
  %4 = getelementptr inbounds %"core::option::Option<(usize, usize)>::Some", %"core::option::Option<(usize, usize)>::Some"* %3, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %6, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = bitcast %"core::option::Option<(usize, usize)>"* %0 to i64*
  store i64 1, i64* %11, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN84_$LT$core..str..pattern..MatchOnly$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$9rejecting17ha9d70949cbb0741eE"(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, i64 %_a, i64 %_b) unnamed_addr #0 {
start:
  %1 = bitcast %"core::option::Option<(usize, usize)>"* %0 to i64*
  store i64 0, i64* %1, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$14spec_next_back17hff1080df0cd2ad45E"({ i64, i64 }* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hb8a068448f6f298aE"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %2 = bitcast { i64, i64 }* %1 to i64*
  store i64 0, i64* %2, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h84ce6ae29faa8ef5E"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_5 = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$18backward_unchecked17ha05cc10fea6f2e19E"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb9

bb9:                                              ; preds = %bb4
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %_5, i64* %3, align 8
  %_9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_8 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h84ce6ae29faa8ef5E"(i64* align 8 %_9)
  br label %bb5

bb8:                                              ; No predecessors!
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %_5, i64* %4, align 8
  %5 = bitcast { i8*, i32 }* %0 to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb5:                                              ; preds = %bb9
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 %_8, i64* %11, align 8
  %12 = bitcast { i64, i64 }* %1 to i64*
  store i64 1, i64* %12, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %14 = load i64, i64* %13, align 8, !range !9, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h7b07c48746aa2e98E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hb8a068448f6f298aE"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h84ce6ae29faa8ef5E"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hd0ac4cb26fa74576E"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17h6d29e457efc6e8a8E(i64* align 8 %_10, i64 %n)
  br label %bb5

bb5:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_8, i64* %2, align 8
  %3 = bitcast { i64, i64 }* %0 to i64*
  store i64 1, i64* %3, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !range !9, !noundef !1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i64, i64 } undef, i64 %5, 0
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1
  ret { i64, i64 } %9
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN89_$LT$core..str..pattern..RejectAndMatch$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$16use_early_reject17h484b07402000c03cE"() unnamed_addr #0 {
start:
  ret i1 true
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN89_$LT$core..str..pattern..RejectAndMatch$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$8matching17h8ff0ec080b2395f2E"(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %0, i64 %a, i64 %b) unnamed_addr #0 {
start:
  %1 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Match"*
  %2 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %1, i32 0, i32 1
  store i64 %a, i64* %2, align 8
  %3 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Match"*
  %4 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %3, i32 0, i32 2
  store i64 %b, i64* %4, align 8
  %5 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 0, i64* %5, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN89_$LT$core..str..pattern..RejectAndMatch$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$9rejecting17h69e77977f53ee965E"(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %0, i64 %a, i64 %b) unnamed_addr #0 {
start:
  %1 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Reject"*
  %2 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %1, i32 0, i32 1
  store i64 %a, i64* %2, align 8
  %3 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Reject"*
  %4 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %3, i32 0, i32 2
  store i64 %b, i64* %4, align 8
  %5 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 1, i64* %5, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0e0f71c44d85c21E"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hcc1f514c676fcb70E"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha371079dad3ec6d0E"(i8* %_5)
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
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hbf033b533ee96613E"(i8* %_11)
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
  %_14 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hcc1f514c676fcb70E"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_16 = load i8*, i8** %7, align 8
  %_12 = icmp eq i8* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
  %old.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hcc1f514c676fcb70E"(i8* %_12.i)
  %9 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %9, align 8, !nonnull !1, !noundef !1
  %_15.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hcc1f514c676fcb70E"(i8* %_16.i)
  %10 = getelementptr inbounds i8, i8* %_15.i, i64 1
  store i8* %10, i8** %0, align 8
  %_3.i.i = load i8*, i8** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb8f5ab5fc15e2556E"(i8* %_3.i.i)
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
  %15 = load i8*, i8** %2, align 8, !align !5
  ret i8* %15

bb13:                                             ; preds = %bb12
  store i8* %12, i8** %2, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd716b0eae4e3e960E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN4core4iter5range116_$LT$impl$u20$core..iter..traits..double_ended..DoubleEndedIterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9next_back17hdc18aee0210c2f24E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: uwtable
define void @url_get_scheme(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %0, [0 x i8]* align 1 %url.0, i64 %url.1) unnamed_addr #1 {
start:
  %_10 = alloca i64, align 8
  %_6 = alloca %"alloc::string::String", align 8
  %_2 = alloca { i64, i64 }, align 8
  %1 = call { i64, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$4find17hc90e14672992fc12E"([0 x i8]* align 1 %url.0, i64 %url.1, [0 x i8]* align 1 bitcast (<{ [3 x i8] }>* @alloc152 to [0 x i8]*), i64 3)
  store { i64, i64 } %1, { i64, i64 }* %_2, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i64, i64 }* %_2 to i64*
  %_4 = load i64, i64* %2, align 8, !range !9, !noundef !1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb5

bb2:                                              ; preds = %bb1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %pos = load i64, i64* %4, align 8
  store i64 %pos, i64* %_10, align 8
  %5 = load i64, i64* %_10, align 8
  %6 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h9e078ca2a77e7b7eE"([0 x i8]* align 1 %url.0, i64 %url.1, i64 %5, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc154 to %"core::panic::location::Location"*))
  %_8.0 = extractvalue { [0 x i8]*, i64 } %6, 0
  %_8.1 = extractvalue { [0 x i8]*, i64 } %6, 1
  br label %bb3

bb5:                                              ; preds = %bb1
  %7 = bitcast %"core::option::Option<alloc::string::String>"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = bitcast %"core::option::Option<alloc::string::String>"* %0 to {}**
  store {}* null, {}** %8, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void

bb3:                                              ; preds = %bb2
  call void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17h5d643067dee67acdE"(%"alloc::string::String"* sret(%"alloc::string::String") %_6, [0 x i8]* align 1 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = bitcast %"core::option::Option<alloc::string::String>"* %0 to %"core::option::Option<alloc::string::String>::Some"*
  %10 = bitcast %"core::option::Option<alloc::string::String>::Some"* %9 to %"alloc::string::String"*
  %11 = bitcast %"alloc::string::String"* %10 to i8*
  %12 = bitcast %"alloc::string::String"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  br label %bb6
}

; Function Attrs: uwtable
define void @url_get_protocol(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %0, [0 x i8]* align 1 %url.0, i64 %url.1) unnamed_addr #1 {
start:
  call void @url_get_scheme(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %0, [0 x i8]* align 1 %url.0, i64 %url.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_19 = alloca %"core::fmt::Arguments", align 8
  %_14 = alloca [1 x { i8*, i64* }], align 8
  %_7 = alloca %"core::fmt::Arguments", align 8
  %scheme = alloca %"alloc::string::String", align 8
  %_2 = alloca %"core::option::Option<alloc::string::String>", align 8
  call void @url_get_protocol(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %_2, [0 x i8]* align 1 bitcast (<{ [19 x i8] }>* @alloc155 to [0 x i8]*), i64 19)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"core::option::Option<alloc::string::String>"* %_2 to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_4 = select i1 %3, i64 0, i64 1
  switch i64 %_4, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb1
  call void @_ZN4core3fmt9Arguments6new_v117he000e86d0eccc619E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_19, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc27 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc29 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb8

bb4:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<alloc::string::String>"* %_2 to %"core::option::Option<alloc::string::String>::Some"*
  %5 = bitcast %"core::option::Option<alloc::string::String>::Some"* %4 to %"alloc::string::String"*
  %6 = bitcast %"alloc::string::String"* %scheme to i8*
  %7 = bitcast %"alloc::string::String"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false)
  %8 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h291871dd82d9c93cE(%"alloc::string::String"* align 8 %scheme)
          to label %bb5 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5d71b23781080e08E"(%"alloc::string::String"* %scheme) #14
          to label %bb11 unwind label %abort

cleanup:                                          ; preds = %bb6, %bb5, %bb4
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb10

bb5:                                              ; preds = %bb4
  %_15.0 = extractvalue { i8*, i64* } %8, 0
  %_15.1 = extractvalue { i8*, i64* } %8, 1
  %14 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_14, i64 0, i64 0
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %14, i32 0, i32 0
  store i8* %_15.0, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %14, i32 0, i32 1
  store i64* %_15.1, i64** %16, align 8
  %_11.0 = bitcast [1 x { i8*, i64* }]* %_14 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117he000e86d0eccc619E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_7, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc32 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_11.0, i64 1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_7)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5d71b23781080e08E"(%"alloc::string::String"* %scheme)
  br label %bb9

abort:                                            ; preds = %bb10
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #15
  unreachable

bb11:                                             ; preds = %bb10
  %18 = bitcast { i8*, i32 }* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb9:                                              ; preds = %bb8, %bb7
  ret void

bb8:                                              ; preds = %bb2
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_19)
  br label %bb9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #8

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core3str16slice_error_fail17h2805d168fae0f9a7E([0 x i8]* align 1, i64, i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: uwtable
declare void @_ZN4core3str7pattern11StrSearcher3new17h977462c61d704e55E(%"core::str::pattern::StrSearcher"* sret(%"core::str::pattern::StrSearcher"), [0 x i8]* align 1, i64, [0 x i8]* align 1, i64) unnamed_addr #1

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
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
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
!3 = !{i8 -1, i8 2}
!4 = !{i8 0, i8 2}
!5 = !{i64 1}
!6 = !{i64 8}
!7 = !{i64 1, i64 -9223372036854775807}
!8 = !{i64 1, i64 0}
!9 = !{i64 0, i64 2}
!10 = !{i32 0, i32 2}
!11 = !{i32 0, i32 1114112}
!12 = !{i32 0, i32 1114113}
!13 = !{i64 0, i64 -9223372036854775806}
!14 = !{i64 0, i64 3}

^0 = module: (path: "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_get_protocol.rs.bc", hash: (1434276405, 3267492818, 3129886943, 3876048867, 4184709044))
^1 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17h8584fa592a72282eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^167))))) ; guid = 165024698586981575
^2 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h556ee28749b9cca2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 30, calls: ((callee: ^155))))) ; guid = 266090841715880386
^3 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17ha245b99576115e6dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^188), (callee: ^36))))) ; guid = 272181460765553291
^4 = gv: (name: "_ZN5alloc6string6String19from_utf8_unchecked17h86e56c807369fa30E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9))) ; guid = 476232595834204601
^5 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h3fca4aaaaa371606E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^127))))) ; guid = 504434382739920738
^6 = gv: (name: "_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h9e078ca2a77e7b7eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^162))))) ; guid = 548122676814130558
^7 = gv: (name: "_ZN4core3cmp3max17h2f0b45b0822afaeaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^63))))) ; guid = 548802926772785929
^8 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^9 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 666527991602922515
^10 = gv: (name: "_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE") ; guid = 682884734678583306
^11 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h27c67051ae5c6d02E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^78))))) ; guid = 816440338225207900
^12 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hed81419ee736489aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 937717707018084069
^13 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0e0f71c44d85c21E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^88), (callee: ^110), (callee: ^158), (callee: ^133))))) ; guid = 976995246245268561
^14 = gv: (name: "_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9025e5dbec7a2b5cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31, calls: ((callee: ^172), (callee: ^40), (callee: ^59))))) ; guid = 1139620665347349342
^15 = gv: (name: "_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha4b4a8e888b6b828E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19))) ; guid = 1197155956330009442
^16 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$14spec_next_back17hff1080df0cd2ad45E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^196), (callee: ^19), (callee: ^143)), refs: (^168)))) ; guid = 1225634987801551425
^17 = gv: (name: "_ZN5alloc5alloc5alloc17h4480279951e21259E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^122), (callee: ^48), (callee: ^112))))) ; guid = 1229325478903022973
^18 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1335159613555845344
^19 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h84ce6ae29faa8ef5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 1364834256853538231
^20 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^21 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hbbbd0ff2bd27fb32E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 1715531706266334542
^22 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h08305dfad4e5a803E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^107))))) ; guid = 1940710174973553863
^23 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h6636f91c2ea23939E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^98), (callee: ^110))))) ; guid = 1986310949314728747
^24 = gv: (name: "_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd716b0eae4e3e960E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^44))))) ; guid = 2016163742256906049
^25 = gv: (name: "_ZN4core3ptr5write17h8cf2f156127d1505E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 2133111323181780081
^26 = gv: (name: "_ZN4core6option15Option$LT$T$GT$3map17h01145641856c3364E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, calls: ((callee: ^92))))) ; guid = 2172082139649231354
^27 = gv: (name: "_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd9f077521ed5e70eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^64), (callee: ^50))))) ; guid = 2173630037707966139
^28 = gv: (name: "_ZN4core3mem7replace17h6d29e457efc6e8a8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^70), (callee: ^25)), refs: (^168)))) ; guid = 2445619459777677358
^29 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^30 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h1bbd9f3cb453d167E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2600311344252730846
^31 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he3124457e767ed5cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^174), (callee: ^82), (callee: ^65), (callee: ^39)), refs: (^116)))) ; guid = 2668554765761601248
^32 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3f0e46ed0e6095c6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2716590222889657111
^33 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17ha612d4ab90003e40E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^88), (callee: ^34), (callee: ^77))))) ; guid = 2749030701871201551
^34 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h2915de8843090f83E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^101))))) ; guid = 2837884600567008682
^35 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h737c5c6487a42b0eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^43))))) ; guid = 2852907034221112550
^36 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h72d853eb53e905acE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2944946111319924971
^37 = gv: (name: "alloc32", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^90, ^9)))) ; guid = 3047306752981305074
^38 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5d71b23781080e08E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^42))))) ; guid = 3088872803545927671
^39 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h41bb9709ae44dfabE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^134))))) ; guid = 3131810746826192276
^40 = gv: (name: "_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hb70f9ecbc37c4e85E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^68), (callee: ^132))))) ; guid = 3164134203131097366
^41 = gv: (name: "alloc133", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^49)))) ; guid = 3213118833644795904
^42 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hbd7234ff034b695bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^137), (callee: ^189), (callee: ^212)), refs: (^168)))) ; guid = 3375930598865753790
^43 = gv: (name: "_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17he6e48c5d03ba5cfaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 3559856668264068691
^44 = gv: (name: "_ZN4core4iter5range116_$LT$impl$u20$core..iter..traits..double_ended..DoubleEndedIterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9next_back17hdc18aee0210c2f24E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^16))))) ; guid = 3601740388768791391
^45 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17hfa34366ea0f97244E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^48), (callee: ^133))))) ; guid = 3755564917224078353
^46 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17hf507687e421c4127E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^171), (callee: ^158), (callee: ^133))))) ; guid = 3880196002034528228
^47 = gv: (name: "_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h1e4e1a8889c812b6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^150))))) ; guid = 3995460380405977455
^48 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h6a2526ff054d9d07E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^187), (callee: ^190))))) ; guid = 4020860109644264560
^49 = gv: (name: "alloc134", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4251770258680585883
^50 = gv: (name: "_ZN4core6option15Option$LT$T$GT$3map17hf2a6cff21a5aae9dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, calls: ((callee: ^89))))) ; guid = 4367444074393592106
^51 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h6a048ce260f066ccE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 4434188451205638416
^52 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^53 = gv: (name: "_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$13get_unchecked17hd24a2c1a427274a8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^213), (callee: ^3))))) ; guid = 5204132235408794880
^54 = gv: (name: "_ZN4core3str7pattern14TwoWaySearcher16byteset_contains17h040e0ba6d250dbb5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9))) ; guid = 5311060119952996323
^55 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h7b07c48746aa2e98E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^196), (callee: ^19), (callee: ^61), (callee: ^28))))) ; guid = 5324017026325145944
^56 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h51296cc5c7342746E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^98), (callee: ^110))))) ; guid = 5345066164585364609
^57 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he8d3c3474acc1c7fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 5502226507612569409
^58 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hba5b31b7a2fce1e7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^133))))) ; guid = 5743062465067572306
^59 = gv: (name: "_ZN4core3str16slice_error_fail17h2805d168fae0f9a7E") ; guid = 5788510974411133155
^60 = gv: (name: "_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hfabe300cd1bf9f45E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 203, calls: ((callee: ^172), (callee: ^163), (callee: ^68), (callee: ^7), (callee: ^156), (callee: ^2), (callee: ^27), (callee: ^166)), refs: (^115)))) ; guid = 5840979670650235329
^61 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hd0ac4cb26fa74576E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 5958925762942251008
^62 = gv: (name: "_ZN4core3str8converts19from_utf8_unchecked17h5c85131873f94dd5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 13))) ; guid = 6020062775684590972
^63 = gv: (name: "_ZN4core3cmp3Ord3max17hf1550410193896c3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^203)), refs: (^168)))) ; guid = 6215349263733373573
^64 = gv: (name: "_ZN4core3str11validations15next_code_point17h588ca6074c7e6bedE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 81, calls: ((callee: ^13), (callee: ^15), (callee: ^178), (callee: ^105), (callee: ^120), (callee: ^198)), refs: (^84, ^41, ^72)))) ; guid = 6313215925023168587
^65 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17haf756a00cd31be5cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^129), (callee: ^136))))) ; guid = 6322382704877959501
^66 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^67 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17hb29bfaa274263b31E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 6439965219863326974
^68 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h2a06368a124fb710E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 46, calls: ((callee: ^11), (callee: ^172), (callee: ^130))))) ; guid = 6501684150407925828
^69 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^148)))) ; guid = 6524141665061161757
^70 = gv: (name: "_ZN4core3ptr4read17hbf992ca5af52d18bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 6547101617789417530
^71 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^72 = gv: (name: "alloc135", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^49)))) ; guid = 6578541983723572455
^73 = gv: (name: "_ZN4core3fmt9Arguments6new_v117he000e86d0eccc619E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^73), (callee: ^182)), refs: (^160, ^69, ^108)))) ; guid = 6619207421136974484
^74 = gv: (name: "alloc153", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6680062060299434841
^75 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^76 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc8d0b5b4dcc112ceE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 6869707918388254241
^77 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5585d1bf1d41d2e9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 6908310943189468425
^78 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h85a6947df98cc139E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^86))))) ; guid = 6933086843537205292
^79 = gv: (name: "_ZN89_$LT$core..str..pattern..RejectAndMatch$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$8matching17h8ff0ec080b2395f2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9))) ; guid = 7278079135863986979
^80 = gv: (name: "_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h400dab5303ea7d33E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^145))))) ; guid = 7393701692285717915
^81 = gv: (name: "_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hed7b9c2deac856d2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^157))))) ; guid = 7712642279394153963
^82 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hf033b3acea2efd80E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^154)), refs: (^168)))) ; guid = 7786909778125863343
^83 = gv: (name: "_ZN84_$LT$core..str..pattern..MatchOnly$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$16use_early_reject17hef9eee968ba92f37E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 7886913481720536107
^84 = gv: (name: "alloc131", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^49)))) ; guid = 7985143113543506511
^85 = gv: (name: "_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb80a983e60218c28E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^138), (callee: ^62))))) ; guid = 8024560231271719100
^86 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h73758ea062519e3fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^213))))) ; guid = 8095930937073396743
^87 = gv: (name: "_ZN4core4char7convert18from_u32_unchecked17hcf10f52e16a17010E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 8333822474488195247
^88 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hcc1f514c676fcb70E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 8347345497264334554
^89 = gv: (name: "_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hc36f75e9028db155E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^117))))) ; guid = 8360959743035570095
^90 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8515920336591021375
^91 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h490b0e92eac45657E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^106))))) ; guid = 8546835831807115348
^92 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4ce97b14b082ad27E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 8557936450862685531
^93 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$4find17hc90e14672992fc12E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^47), (callee: ^202), (callee: ^26)), refs: (^168)))) ; guid = 8591357321076846209
^94 = gv: (name: "alloc144", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8847474614580900950
^95 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h2de0e5d15891c659E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 8937550244022368001
^96 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h98d3a30dbc4b9207E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^31), (callee: ^176))))) ; guid = 8962756676430273081
^97 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h254908209d5846acE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 8978619254514048151
^98 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h95d787dd8fe080d1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^164))))) ; guid = 8978743593352521258
^99 = gv: (name: "alloc143", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^211)))) ; guid = 9093508778752741330
^100 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h27b40042a7984331E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 9139970828457283531
^101 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h806feebb13c5dc2aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 9261240422434269965
^102 = gv: (name: "alloc146", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9334632910302848267
^103 = gv: (name: "_ZN84_$LT$core..str..pattern..MatchOnly$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$8matching17h66e0ea0def5e21b7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 9471044452415120846
^104 = gv: (name: "alloc129", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^142)))) ; guid = 9525325125019683390
^105 = gv: (name: "_ZN4core3str11validations15utf8_first_byte17h990d394514ed14a1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 9594199315938832824
^106 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17hcb07aa05e460b512E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^144))))) ; guid = 9813819296822999770
^107 = gv: (name: "_ZN4core3ptr8metadata8metadata17h9b13defae054f949E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 9896269382098101381
^108 = gv: (name: "alloc127", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^194)))) ; guid = 9933374436184998010
^109 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h291871dd82d9c93cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^30)), refs: (^111)))) ; guid = 10091468194342578384
^110 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha371079dad3ec6d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^95), (callee: ^12))))) ; guid = 10098145082543391944
^111 = gv: (name: "_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17he8123228eef44aebE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^85), (callee: ^177))))) ; guid = 10134880883499946305
^112 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^113 = gv: (name: "url_get_scheme", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, calls: ((callee: ^93), (callee: ^6), (callee: ^195)), refs: (^159, ^125)))) ; guid = 10463094298517325485
^114 = gv: (name: "_ZN5alloc5slice4hack6to_vec17hde0b6bc3b2dbcadbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^124))))) ; guid = 10540353326766389434
^115 = gv: (name: "alloc151", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^211)))) ; guid = 10602406688518300262
^116 = gv: (name: "alloc149", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^173)))) ; guid = 10653322413328866734
^117 = gv: (name: "_ZN4core4char18from_u32_unchecked17h227be113e793e951E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^87))))) ; guid = 10788089510101289281
^118 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator3rev17hb61f22830d427a1fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^186))))) ; guid = 10849738474581337198
^119 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h96bbbe1a601f3faaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 10886588043624410445
^120 = gv: (name: "_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h39ce0e17f01ad8e4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^154)), refs: (^168)))) ; guid = 10896549156056567895
^121 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h50a3fbcfa81ac9f6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^191))))) ; guid = 11006031997403199324
^122 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h08de4c6bf57f4434E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 11067313525839291871
^123 = gv: (name: "alloc145", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^94)))) ; guid = 11116056272858999816
^124 = gv: (name: "_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h132e9a3845518badE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^21), (callee: ^91), (callee: ^171), (callee: ^42), (callee: ^56), (callee: ^1), (callee: ^51), (callee: ^212)), refs: (^168)))) ; guid = 11154348461011463735
^125 = gv: (name: "alloc154", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^74)))) ; guid = 11174443634011812301
^126 = gv: (name: "alloc155", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11228467741495852310
^127 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17hbe122b31f8492f5eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^122), (callee: ^45), (callee: ^17), (callee: ^170), (callee: ^209), (callee: ^67), (callee: ^32), (callee: ^33), (callee: ^180)), refs: (^197)))) ; guid = 11452859190524679995
^128 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h4d994c95f66c97c1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 11456891894186927452
^129 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h403452eabe6a009dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^88), (callee: ^133))))) ; guid = 11476975625927594263
^130 = gv: (name: "_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h390d3366e9c336a4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 11516717957984532364
^131 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hd597d2885fbe8179E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 11595140059106019779
^132 = gv: (name: "_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$13get_unchecked17haf14df11f789d2f5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 17, calls: ((callee: ^213), (callee: ^22), (callee: ^3))))) ; guid = 11633931385065637219
^133 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb8f5ab5fc15e2556E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 11648878113419905954
^134 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h886b0927bf0945d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^164), (callee: ^133))))) ; guid = 11708384626199865573
^135 = gv: (name: "_ZN5alloc7raw_vec11alloc_guard17hcc486fabff26fa69E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 32, calls: ((callee: ^35))))) ; guid = 11994720892326396911
^136 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h4e50df6addbf7f18E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 12060427492890287938
^137 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdd802c7b50ae2257E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^56), (callee: ^34))))) ; guid = 12184855508656358137
^138 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8bfbed0c49b1afdbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^23), (callee: ^141))))) ; guid = 12234694160067268423
^139 = gv: (name: "_ZN4core4char7methods8len_utf817h2d6f69810bd5eee6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 19))) ; guid = 12295420861001217100
^140 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h9b9e50e16e9e5d54E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 12333912936361573994
^141 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hc5184dc0603c209eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^3))))) ; guid = 12480070649435722021
^142 = gv: (name: "alloc128", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12518944404702305464
^143 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$18backward_unchecked17ha05cc10fea6f2e19E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 12586566818124215853
^144 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h4f40d99aa617ae4bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 127, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^174), (callee: ^165), (callee: ^122), (callee: ^10), (callee: ^135), (callee: ^5), (callee: ^146), (callee: ^183), (callee: ^210), (callee: ^88), (callee: ^58)), refs: (^168)))) ; guid = 12669368374999701461
^145 = gv: (name: "_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17hf4c499a666cfbd49E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^114))))) ; guid = 12675291510803940269
^146 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h0472809c04f8b0a6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^127))))) ; guid = 12810719908597031526
^147 = gv: (name: "_ZN5alloc5alloc7dealloc17h5a94ee8b212558e7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^122), (callee: ^48), (callee: ^52))))) ; guid = 13020024000248121956
^148 = gv: (name: "alloc38", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13141603962149800974
^149 = gv: (name: "alloc141", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^211)))) ; guid = 13186826676027546876
^150 = gv: (name: "_ZN4core3str7pattern11StrSearcher3new17h977462c61d704e55E") ; guid = 13272236993291856316
^151 = gv: (name: "alloc139", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^211)))) ; guid = 13477230077705792552
^152 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h68100614649d61c0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^133))))) ; guid = 13654304622300321153
^153 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17habd35df94e908616E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^131))))) ; guid = 13660650756979503712
^154 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h319670cc13d161a9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 13681392985918875325
^155 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17he78f809e9013ffffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^46))))) ; guid = 13719262526924132920
^156 = gv: (name: "_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h258046d90deeadd0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^14))))) ; guid = 13758406836944102451
^157 = gv: (name: "_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h10801d7212e7a19fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^205), (callee: ^4))))) ; guid = 13814431590302850012
^158 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hbf033b533ee96613E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^140), (callee: ^97))))) ; guid = 13865681723855538629
^159 = gv: (name: "alloc152", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13965916297497871203
^160 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14021614691691032061
^161 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h21a5ae8681a9336aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^152), (callee: ^136))))) ; guid = 14425039913122528697
^162 = gv: (name: "_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17h12bbfc94df0efdebE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^175), (callee: ^59))))) ; guid = 14559799363480596840
^163 = gv: (name: "_ZN4core3str7pattern14TwoWaySearcher4next17h6fb5013b2bc0c0beE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 239, calls: ((callee: ^11), (callee: ^192), (callee: ^206), (callee: ^54), (callee: ^7), (callee: ^76), (callee: ^169), (callee: ^207), (callee: ^118), (callee: ^100), (callee: ^24), (callee: ^79)), refs: (^208, ^151, ^149, ^99)))) ; guid = 14572219731967966045
^164 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h58c7ec3e3fb4f58aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^88))))) ; guid = 14599790782074263335
^165 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h93ff311977394185E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^161)), refs: (^168)))) ; guid = 14628155050472516378
^166 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$8len_utf817hcd9603e012d9d059E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^139))))) ; guid = 14651015957732317022
^167 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17h90fc3c6509d609e2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 14799606094291501475
^168 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^169 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbf5af099270f87b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^55))))) ; guid = 14817759687863407068
^170 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17ha8c1b03536adfc0cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^122), (callee: ^48), (callee: ^20))))) ; guid = 14832485848050512446
^171 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd7f4313411f6c6f4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 15032300002561294817
^172 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$3len17h8226b0ab5572460aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 15))) ; guid = 15057920323556979468
^173 = gv: (name: "alloc148", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15219223204378785596
^174 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h55f6c1d4aa317452E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^57), (callee: ^128), (callee: ^181), (callee: ^121), (callee: ^153)), refs: (^123)))) ; guid = 15238931450095667382
^175 = gv: (name: "_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h0d7ba3af5db248edE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^68), (callee: ^53))))) ; guid = 15520706308456616995
^176 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97daa747568dc322E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^122), (callee: ^88), (callee: ^147))))) ; guid = 15705697940845096609
^177 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^178 = gv: (name: "_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h8a1ed755f65531abE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 15813228319779642594
^179 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^201), (callee: ^73), (callee: ^109), (callee: ^38), (callee: ^199), (callee: ^212)), refs: (^168, ^126, ^160, ^200, ^37)))) ; guid = 15822663052811949562
^180 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h144ca93bf9ad4618E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^193))))) ; guid = 15829828898019145607
^181 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h99cd1f602436de1cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 15908513981806057538
^182 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^183 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9cc592d44d632e4bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^119), (callee: ^133))))) ; guid = 16197727942172729196
^184 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h9d2682ed72595bbcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 16206666682636972798
^185 = gv: (name: "_ZN4core3str7pattern14TwoWaySearcher4next17hda4b60ca71ae26a7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 239, calls: ((callee: ^11), (callee: ^204), (callee: ^83), (callee: ^54), (callee: ^7), (callee: ^76), (callee: ^169), (callee: ^207), (callee: ^118), (callee: ^100), (callee: ^24), (callee: ^103)), refs: (^208, ^151, ^149, ^99)))) ; guid = 16216298965508603371
^186 = gv: (name: "_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h25be32ae265d064dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 16261476180312716922
^187 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd27ba79bd4a9e727E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^184))))) ; guid = 16502263451127210624
^188 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h5c43b7706cbfb65aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 16516319092140555276
^189 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h475d8e9cec4847d7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^96))))) ; guid = 16555441034694634277
^190 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17hd3365e2dd0792592E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 16722504290022540520
^191 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf90644d014ebbf17E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 16876326218453357049
^192 = gv: (name: "_ZN89_$LT$core..str..pattern..RejectAndMatch$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$9rejecting17h69e77977f53ee965E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9))) ; guid = 17074107161209366607
^193 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd9bb79eface4d4daE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 17090466661935929125
^194 = gv: (name: "alloc126", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17208158923873870239
^195 = gv: (name: "_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17h5d643067dee67acdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^81))))) ; guid = 17365519316740546697
^196 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hb8a068448f6f298aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 17383778634971825484
^197 = gv: (name: "alloc147", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^102)))) ; guid = 17615645099107182304
^198 = gv: (name: "_ZN4core3str11validations18utf8_acc_cont_byte17h8ab76b1086e622eaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 17679128022279078982
^199 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^200 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 17721665129835069580
^201 = gv: (name: "url_get_protocol", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^113))))) ; guid = 17808346955329775747
^202 = gv: (name: "_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hffbc86c170f05de8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 133, calls: ((callee: ^185), (callee: ^60))))) ; guid = 17959884716557015743
^203 = gv: (name: "_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h3343ca6199386e94E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 18012464287219159527
^204 = gv: (name: "_ZN84_$LT$core..str..pattern..MatchOnly$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$9rejecting17ha9d70949cbb0741eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 18042139181194245824
^205 = gv: (name: "_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h0c616ee68c30ac9fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^80))))) ; guid = 18087022471279675323
^206 = gv: (name: "_ZN89_$LT$core..str..pattern..RejectAndMatch$u20$as$u20$core..str..pattern..TwoWayStrategy$GT$16use_early_reject17h484b07402000c03cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 18094917748755092448
^207 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^208 = gv: (name: "alloc137", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^211)))) ; guid = 18258505447767227129
^209 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hde582be0daadc952E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^110), (callee: ^133))))) ; guid = 18269654565217505624
^210 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^211 = gv: (name: "alloc150", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18361694280540402557
^212 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^213 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hcb984566085dd7ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 18424806212712901432
^214 = blockcount: 804
