; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_destroy_image_info.rs.bc'
source_filename = "opng_destroy_image_info.eced8b00-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%PngColor8 = type { i8, i8, i8, i8, i8 }
%PngColor16 = type <{ i8, i16, i16, i16, i16 }>
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%PngColor = type { i8, i8, i8 }
%PngUnknownChunk = type <{ [5 x i8], %"alloc::vec::Vec<u8>", i64, i8 }>
%"alloc::vec::Vec<u16>" = type { { i16*, i64 }, i64 }
%OpngImage = type <{ i32, i32, i32, i32, i32, i32, i32, %"alloc::vec::Vec<alloc::vec::Vec<u8>>", %"alloc::vec::Vec<PngColor>", i32, i8*, %PngColor16, %"alloc::vec::Vec<u16>", i8*, %PngColor8, %"alloc::vec::Vec<u8>", i32, i8*, %PngColor16, %"alloc::vec::Vec<PngUnknownChunk>", i32 }>
%"alloc::vec::Vec<alloc::vec::Vec<u8>>" = type { { i64*, i64 }, i64 }
%"alloc::vec::Vec<PngColor>" = type { { i8*, i64 }, i64 }
%"alloc::vec::Vec<PngUnknownChunk>" = type { { i8*, i64 }, i64 }
%"core::ptr::metadata::PtrRepr<[u16]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrRepr<[PngColor]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrRepr<[PngUnknownChunk]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[alloc::vec::Vec<u8>]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc229 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc230 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc229, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@anon.fb7107aad5b1427bba4f0e30585f27c1.0 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@anon.fb7107aad5b1427bba4f0e30585f27c1.1 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@anon.fb7107aad5b1427bba4f0e30585f27c1.2 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@alloc231 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc232 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc231, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h62f29eef092459fcE"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9a6f52952adfa0dfE"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb13f014654d90d8bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h62481c9e5cb9a194E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4f2960699860de18E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h62a310fa017f7ba2E"()
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
define internal i8 @"_ZN45_$LT$u8$u20$as$u20$core..default..Default$GT$7default17hf767ca7b54e650a8E"() unnamed_addr #0 {
start:
  ret i8 0
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h029252792235c5c5E"() unnamed_addr #0 {
start:
  ret i32 0
}

; Function Attrs: inlinehint uwtable
define internal i16 @"_ZN46_$LT$u16$u20$as$u20$core..default..Default$GT$7default17h5a290940b075862bE"() unnamed_addr #0 {
start:
  ret i16 0
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h0e7eef2eb4527215E"() unnamed_addr #0 {
start:
  ret i32 0
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd3c0ba62c1f98476E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !3, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h27e534c057cb1c78E(i64 %_3), !range !4
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hb06ca2d0da0c84a3E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !3, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h5012255a20033e5eE"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %32 = load i64, i64* %31, align 8, !range !6, !noundef !1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h27e534c057cb1c78E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !4, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h1d7491e78bf01b8cE(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor8$GT$$GT$$GT$17h24e357413ed82db6E"(i8** %_1) unnamed_addr #1 {
start:
  %0 = bitcast i8** %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %4 = bitcast i8** %_1 to %PngColor8**
  call void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor8$GT$$GT$17ha2e4e977ab20cdceE"(%PngColor8** %4)
  br label %bb1
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor16$GT$$GT$$GT$17h6c126ad9e51b1454E"(i8** %_1) unnamed_addr #1 {
start:
  %0 = bitcast i8** %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %4 = bitcast i8** %_1 to %PngColor16**
  call void @"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor16$GT$$GT$17h7171ba8a0edc29b4E"(%PngColor16** %4)
  br label %bb1
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h3fa28cf7bb4427bbE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h702cbfd053c6e41aE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x %"alloc::vec::Vec<u8>"]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4b3a0347aa310ff1E(%"alloc::vec::Vec<u8>"* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast %"alloc::vec::Vec<u8>"* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x %"alloc::vec::Vec<u8>"]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h6b938a674088c989E({}* %0, i64 %len)
  %2 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %1, 0
  %3 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } undef, [0 x %"alloc::vec::Vec<u8>"]* %2, 0
  %5 = insertvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %4, i64 %3, 1
  ret { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i16]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h83b17874d4c8d1fdE(i16* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i16* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i16]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h14af4bb7c002e0a3E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i16]*, i64 } %1, 0
  %3 = extractvalue { [0 x i16]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i16]*, i64 } undef, [0 x i16]* %2, 0
  %5 = insertvalue { [0 x i16]*, i64 } %4, i64 %3, 1
  ret { [0 x i16]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x %PngColor]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h8b6d94c304c54ddeE(%PngColor* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast %PngColor* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x %PngColor]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h196284875beef18fE({}* %0, i64 %len)
  %2 = extractvalue { [0 x %PngColor]*, i64 } %1, 0
  %3 = extractvalue { [0 x %PngColor]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x %PngColor]*, i64 } undef, [0 x %PngColor]* %2, 0
  %5 = insertvalue { [0 x %PngColor]*, i64 } %4, i64 %3, 1
  ret { [0 x %PngColor]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x %PngUnknownChunk]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hec555da77fc019e5E(%PngUnknownChunk* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast %PngUnknownChunk* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x %PngUnknownChunk]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h32cef09b8cf2118dE({}* %0, i64 %len)
  %2 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %1, 0
  %3 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x %PngUnknownChunk]*, i64 } undef, [0 x %PngUnknownChunk]* %2, 0
  %5 = insertvalue { [0 x %PngUnknownChunk]*, i64 } %4, i64 %3, 1
  ret { [0 x %PngUnknownChunk]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h118787a1454129b1E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3dda022c8b52e6cbE"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2127b2db5024cccE"({ i8*, i64 }* %1) #10
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
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2127b2db5024cccE"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
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
define void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h95486d4bb9cde702E"(%"alloc::vec::Vec<u16>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf3ebdf7763b0b3c4E"(%"alloc::vec::Vec<u16>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u16>"* %_1 to { i16*, i64 }*
  invoke void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u16$GT$$GT$17he1031437b2a64ea5E"({ i16*, i64 }* %1) #10
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
  %7 = bitcast %"alloc::vec::Vec<u16>"* %_1 to { i16*, i64 }*
  call void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u16$GT$$GT$17he1031437b2a64ea5E"({ i16*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
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
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2127b2db5024cccE"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf85a767ee731c966E"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u16$GT$$GT$17he1031437b2a64ea5E"({ i16*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52786e30a3e22b6dE"({ i16*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr55drop_in_place$LT$opng_destroy_image_info..OpngImage$GT$17h2115ef767b5adb87E"(%OpngImage* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_17 = alloca %"alloc::vec::Vec<alloc::vec::Vec<u8>>", align 8
  %_16 = alloca %"alloc::vec::Vec<PngColor>", align 8
  %_15 = alloca i8*, align 8
  %_14 = alloca %"alloc::vec::Vec<u16>", align 8
  %_13 = alloca i8*, align 8
  %_12 = alloca %"alloc::vec::Vec<u8>", align 8
  %_11 = alloca i8*, align 8
  %_10 = alloca %"alloc::vec::Vec<PngUnknownChunk>", align 8
  %_9 = alloca %"alloc::vec::Vec<alloc::vec::Vec<u8>>", align 8
  %_8 = alloca %"alloc::vec::Vec<PngColor>", align 8
  %_7 = alloca i8*, align 8
  %_6 = alloca %"alloc::vec::Vec<u16>", align 8
  %_5 = alloca i8*, align 8
  %_4 = alloca %"alloc::vec::Vec<u8>", align 8
  %_3 = alloca i8*, align 8
  %_2 = alloca %"alloc::vec::Vec<PngUnknownChunk>", align 8
  %1 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 7
  %2 = bitcast %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %_17 to i8*
  %3 = bitcast %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 1 %3, i64 24, i1 false)
  invoke void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h1b53ea356365f3dcE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %_17)
          to label %bb22 unwind label %cleanup

bb8:                                              ; preds = %cleanup
  %4 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 8
  %5 = bitcast %"alloc::vec::Vec<PngColor>"* %_8 to i8*
  %6 = bitcast %"alloc::vec::Vec<PngColor>"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %6, i64 24, i1 false)
  invoke void @"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$opng_destroy_image_info..PngColor$GT$$GT$17h41d7bc9614d513c0E"(%"alloc::vec::Vec<PngColor>"* %_8) #10
          to label %bb14 unwind label %abort

cleanup:                                          ; preds = %start
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb8

bb22:                                             ; preds = %start
  %12 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 8
  %13 = bitcast %"alloc::vec::Vec<PngColor>"* %_16 to i8*
  %14 = bitcast %"alloc::vec::Vec<PngColor>"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 1 %14, i64 24, i1 false)
  invoke void @"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$opng_destroy_image_info..PngColor$GT$$GT$17h41d7bc9614d513c0E"(%"alloc::vec::Vec<PngColor>"* %_16)
          to label %bb21 unwind label %cleanup1

abort:                                            ; preds = %bb2, %bb3, %bb4, %bb5, %bb6, %bb7, %bb8
  %15 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb14:                                             ; preds = %bb8
  br label %bb7

bb7:                                              ; preds = %cleanup1, %bb14
  %16 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 10
  %17 = load i8*, i8** %16, align 1, !align !7
  store i8* %17, i8** %_7, align 8
  invoke void @"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor16$GT$$GT$$GT$17h6c126ad9e51b1454E"(i8** %_7) #10
          to label %bb13 unwind label %abort

cleanup1:                                         ; preds = %bb22
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %bb7

bb21:                                             ; preds = %bb22
  %23 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 10
  %24 = load i8*, i8** %23, align 1, !align !7
  store i8* %24, i8** %_15, align 8
  invoke void @"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor16$GT$$GT$$GT$17h6c126ad9e51b1454E"(i8** %_15)
          to label %bb20 unwind label %cleanup2

bb13:                                             ; preds = %bb7
  br label %bb6

bb6:                                              ; preds = %cleanup2, %bb13
  %25 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 12
  %26 = bitcast %"alloc::vec::Vec<u16>"* %_6 to i8*
  %27 = bitcast %"alloc::vec::Vec<u16>"* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 1 %27, i64 24, i1 false)
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h95486d4bb9cde702E"(%"alloc::vec::Vec<u16>"* %_6) #10
          to label %bb12 unwind label %abort

cleanup2:                                         ; preds = %bb21
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  %30 = extractvalue { i8*, i32 } %28, 1
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %bb6

bb20:                                             ; preds = %bb21
  %33 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 12
  %34 = bitcast %"alloc::vec::Vec<u16>"* %_14 to i8*
  %35 = bitcast %"alloc::vec::Vec<u16>"* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 1 %35, i64 24, i1 false)
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h95486d4bb9cde702E"(%"alloc::vec::Vec<u16>"* %_14)
          to label %bb19 unwind label %cleanup3

bb12:                                             ; preds = %bb6
  br label %bb5

bb5:                                              ; preds = %cleanup3, %bb12
  %36 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 13
  %37 = load i8*, i8** %36, align 1, !align !7
  store i8* %37, i8** %_5, align 8
  invoke void @"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor8$GT$$GT$$GT$17h24e357413ed82db6E"(i8** %_5) #10
          to label %bb11 unwind label %abort

cleanup3:                                         ; preds = %bb20
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  %40 = extractvalue { i8*, i32 } %38, 1
  %41 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %bb5

bb19:                                             ; preds = %bb20
  %43 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 13
  %44 = load i8*, i8** %43, align 1, !align !7
  store i8* %44, i8** %_13, align 8
  invoke void @"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor8$GT$$GT$$GT$17h24e357413ed82db6E"(i8** %_13)
          to label %bb18 unwind label %cleanup4

bb11:                                             ; preds = %bb5
  br label %bb4

bb4:                                              ; preds = %cleanup4, %bb11
  %45 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 15
  %46 = bitcast %"alloc::vec::Vec<u8>"* %_4 to i8*
  %47 = bitcast %"alloc::vec::Vec<u8>"* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 1 %47, i64 24, i1 false)
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h118787a1454129b1E"(%"alloc::vec::Vec<u8>"* %_4) #10
          to label %bb10 unwind label %abort

cleanup4:                                         ; preds = %bb19
  %48 = landingpad { i8*, i32 }
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  %50 = extractvalue { i8*, i32 } %48, 1
  %51 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %bb4

bb18:                                             ; preds = %bb19
  %53 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 15
  %54 = bitcast %"alloc::vec::Vec<u8>"* %_12 to i8*
  %55 = bitcast %"alloc::vec::Vec<u8>"* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 1 %55, i64 24, i1 false)
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h118787a1454129b1E"(%"alloc::vec::Vec<u8>"* %_12)
          to label %bb17 unwind label %cleanup5

bb10:                                             ; preds = %bb4
  br label %bb3

bb3:                                              ; preds = %cleanup5, %bb10
  %56 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 17
  %57 = load i8*, i8** %56, align 1, !align !7
  store i8* %57, i8** %_3, align 8
  invoke void @"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor16$GT$$GT$$GT$17h6c126ad9e51b1454E"(i8** %_3) #10
          to label %bb9 unwind label %abort

cleanup5:                                         ; preds = %bb18
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  %60 = extractvalue { i8*, i32 } %58, 1
  %61 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %bb3

bb17:                                             ; preds = %bb18
  %63 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 17
  %64 = load i8*, i8** %63, align 1, !align !7
  store i8* %64, i8** %_11, align 8
  invoke void @"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor16$GT$$GT$$GT$17h6c126ad9e51b1454E"(i8** %_11)
          to label %bb16 unwind label %cleanup6

bb9:                                              ; preds = %bb3
  br label %bb2

bb2:                                              ; preds = %cleanup6, %bb9
  %65 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 19
  %66 = bitcast %"alloc::vec::Vec<PngUnknownChunk>"* %_2 to i8*
  %67 = bitcast %"alloc::vec::Vec<PngUnknownChunk>"* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 1 %67, i64 24, i1 false)
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$opng_destroy_image_info..PngUnknownChunk$GT$$GT$17hf414dd6f92954120E"(%"alloc::vec::Vec<PngUnknownChunk>"* %_2) #10
          to label %bb1 unwind label %abort

cleanup6:                                         ; preds = %bb17
  %68 = landingpad { i8*, i32 }
          cleanup
  %69 = extractvalue { i8*, i32 } %68, 0
  %70 = extractvalue { i8*, i32 } %68, 1
  %71 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %bb2

bb16:                                             ; preds = %bb17
  %73 = getelementptr inbounds %OpngImage, %OpngImage* %_1, i32 0, i32 19
  %74 = bitcast %"alloc::vec::Vec<PngUnknownChunk>"* %_10 to i8*
  %75 = bitcast %"alloc::vec::Vec<PngUnknownChunk>"* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 1 %75, i64 24, i1 false)
  call void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$opng_destroy_image_info..PngUnknownChunk$GT$$GT$17hf414dd6f92954120E"(%"alloc::vec::Vec<PngUnknownChunk>"* %_10)
  br label %bb15

bb1:                                              ; preds = %bb2
  %76 = bitcast { i8*, i32 }* %0 to i8**
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = insertvalue { i8*, i32 } undef, i8* %77, 0
  %81 = insertvalue { i8*, i32 } %80, i32 %79, 1
  resume { i8*, i32 } %81

bb15:                                             ; preds = %bb16
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr56drop_in_place$LT$$u5b$alloc..vec..Vec$LT$u8$GT$$u5d$$GT$17h35ec4ad24a0e3df8E"([0 x %"alloc::vec::Vec<u8>"]* %_1.0, i64 %_1.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca %"alloc::vec::Vec<u8>"*, align 8
  %_4 = alloca i64, align 8
  br i1 false, label %bb7, label %bb12

bb7:                                              ; preds = %start
  store i64 0, i64* %_4, align 8
  br label %bb6

bb12:                                             ; preds = %start
  %1 = bitcast [0 x %"alloc::vec::Vec<u8>"]* %_1.0 to %"alloc::vec::Vec<u8>"*
  store %"alloc::vec::Vec<u8>"* %1, %"alloc::vec::Vec<u8>"** %_9, align 8
  %2 = load %"alloc::vec::Vec<u8>"*, %"alloc::vec::Vec<u8>"** %_9, align 8
  %_10 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %2, i64 %_1.1
  br label %bb11

bb11:                                             ; preds = %bb10, %bb12
  %3 = load %"alloc::vec::Vec<u8>"*, %"alloc::vec::Vec<u8>"** %_9, align 8
  %_14 = icmp eq %"alloc::vec::Vec<u8>"* %3, %_10
  br i1 %_14, label %bb1, label %bb10

bb10:                                             ; preds = %bb11
  %_13 = load %"alloc::vec::Vec<u8>"*, %"alloc::vec::Vec<u8>"** %_9, align 8
  %4 = load %"alloc::vec::Vec<u8>"*, %"alloc::vec::Vec<u8>"** %_9, align 8
  %5 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %4, i64 1
  store %"alloc::vec::Vec<u8>"* %5, %"alloc::vec::Vec<u8>"** %_9, align 8
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h118787a1454129b1E"(%"alloc::vec::Vec<u8>"* %_13)
          to label %bb11 unwind label %cleanup

bb1:                                              ; preds = %bb6, %bb11
  ret void

bb9:                                              ; preds = %bb8, %cleanup
  %6 = load %"alloc::vec::Vec<u8>"*, %"alloc::vec::Vec<u8>"** %_9, align 8
  %_12 = icmp eq %"alloc::vec::Vec<u8>"* %6, %_10
  br i1 %_12, label %bb2, label %bb8

cleanup:                                          ; preds = %bb10
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb9

bb8:                                              ; preds = %bb9
  %_11 = load %"alloc::vec::Vec<u8>"*, %"alloc::vec::Vec<u8>"** %_9, align 8
  %12 = load %"alloc::vec::Vec<u8>"*, %"alloc::vec::Vec<u8>"** %_9, align 8
  %13 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %12, i64 1
  store %"alloc::vec::Vec<u8>"* %13, %"alloc::vec::Vec<u8>"** %_9, align 8
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h118787a1454129b1E"(%"alloc::vec::Vec<u8>"* %_11) #10
          to label %bb9 unwind label %abort

bb2:                                              ; preds = %bb4, %bb9
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

abort:                                            ; preds = %bb3, %bb8
  %20 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb6:                                              ; preds = %bb5, %bb7
  %21 = load i64, i64* %_4, align 8
  %_8 = icmp eq i64 %21, %_1.1
  br i1 %_8, label %bb1, label %bb5

bb5:                                              ; preds = %bb6
  %22 = load i64, i64* %_4, align 8
  %_7 = getelementptr inbounds [0 x %"alloc::vec::Vec<u8>"], [0 x %"alloc::vec::Vec<u8>"]* %_1.0, i64 0, i64 %22
  %23 = load i64, i64* %_4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %_4, align 8
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h118787a1454129b1E"(%"alloc::vec::Vec<u8>"* %_7)
          to label %bb6 unwind label %cleanup1

bb4:                                              ; preds = %bb3, %cleanup1
  %25 = load i64, i64* %_4, align 8
  %_6 = icmp eq i64 %25, %_1.1
  br i1 %_6, label %bb2, label %bb3

cleanup1:                                         ; preds = %bb5
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = extractvalue { i8*, i32 } %26, 1
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %bb4

bb3:                                              ; preds = %bb4
  %31 = load i64, i64* %_4, align 8
  %_5 = getelementptr inbounds [0 x %"alloc::vec::Vec<u8>"], [0 x %"alloc::vec::Vec<u8>"]* %_1.0, i64 0, i64 %31
  %32 = load i64, i64* %_4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %_4, align 8
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h118787a1454129b1E"(%"alloc::vec::Vec<u8>"* %_5) #10
          to label %bb4 unwind label %abort
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr61drop_in_place$LT$opng_destroy_image_info..PngUnknownChunk$GT$17h69bd93c748c6cfdeE"(%PngUnknownChunk* %_1) unnamed_addr #1 {
start:
  %_3 = alloca %"alloc::vec::Vec<u8>", align 8
  %_2 = alloca %"alloc::vec::Vec<u8>", align 8
  %0 = getelementptr inbounds %PngUnknownChunk, %PngUnknownChunk* %_1, i32 0, i32 1
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_3 to i8*
  %2 = bitcast %"alloc::vec::Vec<u8>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 1 %2, i64 24, i1 false)
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h118787a1454129b1E"(%"alloc::vec::Vec<u8>"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h1b53ea356365f3dcE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h07ff339bfde4dde7E"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %_1 to { i64*, i64 }*
  invoke void @"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h8c94402b950241bfE"({ i64*, i64 }* %1) #10
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
  %7 = bitcast %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %_1 to { i64*, i64 }*
  call void @"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h8c94402b950241bfE"({ i64*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
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
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h25fc2eda9d21a889E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h29bf188838f2ee7fE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h62481c9e5cb9a194E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h2cc790c670edd9b5E"(i16* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h48168700ed6ef172E"(i16* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h62481c9e5cb9a194E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5acd063efa5fbec4E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h03a52559339b8816E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h62481c9e5cb9a194E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5d0524c97bc4c06bE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hc9eeb04b4bb5d2bbE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h62481c9e5cb9a194E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17ha0e0acfaa0743acfE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5fa6908d26fcb396E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h62481c9e5cb9a194E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hae9b200055edd035E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h4f4ca3a6c2d8b503E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h62481c9e5cb9a194E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17he077bab768efdccaE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h07839e21262a2199E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h62481c9e5cb9a194E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define %PngUnknownChunk* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h0ab5985a8c5851b6E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call %PngUnknownChunk* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb631b834b97093a6E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %PngUnknownChunk* %0
}

; Function Attrs: inlinehint uwtable
define %"alloc::vec::Vec<u8>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h0ca0b0033c6cd648E"(i64* %self) unnamed_addr #0 {
start:
  %0 = call %"alloc::vec::Vec<u8>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5d98a129c2b70571E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::vec::Vec<u8>"* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9a6f52952adfa0dfE"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc9bdd225ff920bfeE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i16* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hadb343f758bc6cc8E"(i16* %self) unnamed_addr #0 {
start:
  %0 = call i16* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h95d0fdeec1b7c01eE"(i16* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i16* %0
}

; Function Attrs: inlinehint uwtable
define %PngColor* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hfd14fee88d0f3803E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call %PngColor* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h10c842441d244f95E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %PngColor* %0
}

; Function Attrs: inlinehint uwtable
define align 1 %PngColor16* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hd4a9618a6f741c78E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 1 %PngColor16* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h9bc2d6720a13ed94E"(i8** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %PngColor16* %0
}

; Function Attrs: inlinehint uwtable
define align 1 %PngColor8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17he1b26eb90784842eE"(i8** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 1 %PngColor8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h8178ce986a94f183E"(i8** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %PngColor8* %0
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr71drop_in_place$LT$$u5b$opng_destroy_image_info..PngUnknownChunk$u5d$$GT$17hd11ab9b7a6dab5a1E"([0 x %PngUnknownChunk]* %_1.0, i64 %_1.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca %PngUnknownChunk*, align 8
  %_4 = alloca i64, align 8
  br i1 false, label %bb7, label %bb12

bb7:                                              ; preds = %start
  store i64 0, i64* %_4, align 8
  br label %bb6

bb12:                                             ; preds = %start
  %1 = bitcast [0 x %PngUnknownChunk]* %_1.0 to %PngUnknownChunk*
  store %PngUnknownChunk* %1, %PngUnknownChunk** %_9, align 8
  %2 = load %PngUnknownChunk*, %PngUnknownChunk** %_9, align 8
  %_10 = getelementptr inbounds %PngUnknownChunk, %PngUnknownChunk* %2, i64 %_1.1
  br label %bb11

bb11:                                             ; preds = %bb10, %bb12
  %3 = load %PngUnknownChunk*, %PngUnknownChunk** %_9, align 8
  %_14 = icmp eq %PngUnknownChunk* %3, %_10
  br i1 %_14, label %bb1, label %bb10

bb10:                                             ; preds = %bb11
  %_13 = load %PngUnknownChunk*, %PngUnknownChunk** %_9, align 8
  %4 = load %PngUnknownChunk*, %PngUnknownChunk** %_9, align 8
  %5 = getelementptr inbounds %PngUnknownChunk, %PngUnknownChunk* %4, i64 1
  store %PngUnknownChunk* %5, %PngUnknownChunk** %_9, align 8
  invoke void @"_ZN4core3ptr61drop_in_place$LT$opng_destroy_image_info..PngUnknownChunk$GT$17h69bd93c748c6cfdeE"(%PngUnknownChunk* %_13)
          to label %bb11 unwind label %cleanup

bb1:                                              ; preds = %bb6, %bb11
  ret void

bb9:                                              ; preds = %bb8, %cleanup
  %6 = load %PngUnknownChunk*, %PngUnknownChunk** %_9, align 8
  %_12 = icmp eq %PngUnknownChunk* %6, %_10
  br i1 %_12, label %bb2, label %bb8

cleanup:                                          ; preds = %bb10
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb9

bb8:                                              ; preds = %bb9
  %_11 = load %PngUnknownChunk*, %PngUnknownChunk** %_9, align 8
  %12 = load %PngUnknownChunk*, %PngUnknownChunk** %_9, align 8
  %13 = getelementptr inbounds %PngUnknownChunk, %PngUnknownChunk* %12, i64 1
  store %PngUnknownChunk* %13, %PngUnknownChunk** %_9, align 8
  invoke void @"_ZN4core3ptr61drop_in_place$LT$opng_destroy_image_info..PngUnknownChunk$GT$17h69bd93c748c6cfdeE"(%PngUnknownChunk* %_11) #10
          to label %bb9 unwind label %abort

bb2:                                              ; preds = %bb4, %bb9
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

abort:                                            ; preds = %bb3, %bb8
  %20 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb6:                                              ; preds = %bb5, %bb7
  %21 = load i64, i64* %_4, align 8
  %_8 = icmp eq i64 %21, %_1.1
  br i1 %_8, label %bb1, label %bb5

bb5:                                              ; preds = %bb6
  %22 = load i64, i64* %_4, align 8
  %_7 = getelementptr inbounds [0 x %PngUnknownChunk], [0 x %PngUnknownChunk]* %_1.0, i64 0, i64 %22
  %23 = load i64, i64* %_4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %_4, align 8
  invoke void @"_ZN4core3ptr61drop_in_place$LT$opng_destroy_image_info..PngUnknownChunk$GT$17h69bd93c748c6cfdeE"(%PngUnknownChunk* %_7)
          to label %bb6 unwind label %cleanup1

bb4:                                              ; preds = %bb3, %cleanup1
  %25 = load i64, i64* %_4, align 8
  %_6 = icmp eq i64 %25, %_1.1
  br i1 %_6, label %bb2, label %bb3

cleanup1:                                         ; preds = %bb5
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = extractvalue { i8*, i32 } %26, 1
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %bb4

bb3:                                              ; preds = %bb4
  %31 = load i64, i64* %_4, align 8
  %_5 = getelementptr inbounds [0 x %PngUnknownChunk], [0 x %PngUnknownChunk]* %_1.0, i64 0, i64 %31
  %32 = load i64, i64* %_4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %_4, align 8
  invoke void @"_ZN4core3ptr61drop_in_place$LT$opng_destroy_image_info..PngUnknownChunk$GT$17h69bd93c748c6cfdeE"(%PngUnknownChunk* %_5) #10
          to label %bb4 unwind label %abort
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h8c94402b950241bfE"({ i64*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6239dc9580b897aE"({ i64*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$opng_destroy_image_info..PngColor$GT$$GT$17h41d7bc9614d513c0E"(%"alloc::vec::Vec<PngColor>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacd11ac97e34fe47E"(%"alloc::vec::Vec<PngColor>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<PngColor>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..raw_vec..RawVec$LT$opng_destroy_image_info..PngColor$GT$$GT$17h69ed3ffeb59a5616E"({ i8*, i64 }* %1) #10
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
  %7 = bitcast %"alloc::vec::Vec<PngColor>"* %_1 to { i8*, i64 }*
  call void @"_ZN4core3ptr84drop_in_place$LT$alloc..raw_vec..RawVec$LT$opng_destroy_image_info..PngColor$GT$$GT$17h69ed3ffeb59a5616E"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hb4d474cd58647806E"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h3b1fabdc2bb73b9aE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h5359c5abeb74db7dE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hb4d474cd58647806E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h74aaeb9b6cb822d3E"(%"alloc::vec::Vec<u8>"* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h5359c5abeb74db7dE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hb4d474cd58647806E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hb3b186cfa7fc9fcdE"(%PngUnknownChunk* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast %PngUnknownChunk* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h5359c5abeb74db7dE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hb4d474cd58647806E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he8d1a0a97d8f24edE"(i16* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i16* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h5359c5abeb74db7dE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hb4d474cd58647806E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hefebb5c54173a5fdE"(%PngColor* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast %PngColor* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h5359c5abeb74db7dE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hb4d474cd58647806E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor8$GT$$GT$17ha2e4e977ab20cdceE"(%PngColor8** %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  br label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast %PngColor8** %_1 to i8**
  %2 = load i8*, i8** %1, align 8, !nonnull !1, !noundef !1
  call void @_ZN5alloc5alloc8box_free17had18188fea3a19baE(i8* %2)
  br label %bb1

bb4:                                              ; No predecessors!
  %3 = bitcast %PngColor8** %_1 to i8**
  %4 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17had18188fea3a19baE(i8* %4) #10
          to label %bb2 unwind label %abort

abort:                                            ; preds = %bb4
  %5 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb2:                                              ; preds = %bb4
  %6 = bitcast { i8*, i32 }* %0 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor16$GT$$GT$17h7171ba8a0edc29b4E"(%PngColor16** %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  br label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast %PngColor16** %_1 to i8**
  %2 = load i8*, i8** %1, align 8, !nonnull !1, !noundef !1
  call void @_ZN5alloc5alloc8box_free17he174dd5cef50148eE(i8* %2)
  br label %bb1

bb4:                                              ; No predecessors!
  %3 = bitcast %PngColor16** %_1 to i8**
  %4 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17he174dd5cef50148eE(i8* %4) #10
          to label %bb2 unwind label %abort

abort:                                            ; preds = %bb4
  %5 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb2:                                              ; preds = %bb4
  %6 = bitcast { i8*, i32 }* %0 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr84drop_in_place$LT$alloc..raw_vec..RawVec$LT$opng_destroy_image_info..PngColor$GT$$GT$17h69ed3ffeb59a5616E"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9829f7d078170e06E"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$opng_destroy_image_info..PngUnknownChunk$GT$$GT$17hf414dd6f92954120E"(%"alloc::vec::Vec<PngUnknownChunk>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3767a1c997d9d81E"(%"alloc::vec::Vec<PngUnknownChunk>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<PngUnknownChunk>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..raw_vec..RawVec$LT$opng_destroy_image_info..PngUnknownChunk$GT$$GT$17hfbc42122608d87fbE"({ i8*, i64 }* %1) #10
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
  %7 = bitcast %"alloc::vec::Vec<PngUnknownChunk>"* %_1 to { i8*, i64 }*
  call void @"_ZN4core3ptr91drop_in_place$LT$alloc..raw_vec..RawVec$LT$opng_destroy_image_info..PngUnknownChunk$GT$$GT$17hfbc42122608d87fbE"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
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
define { [0 x i16]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h14af4bb7c002e0a3E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u16]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u16]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u16]>"* %_3 to { [0 x i16]*, i64 }*
  %10 = getelementptr inbounds { [0 x i16]*, i64 }, { [0 x i16]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i16]*, [0 x i16]** %10, align 8
  %12 = getelementptr inbounds { [0 x i16]*, i64 }, { [0 x i16]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i16]*, i64 } undef, [0 x i16]* %11, 0
  %15 = insertvalue { [0 x i16]*, i64 } %14, i64 %13, 1
  ret { [0 x i16]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define { [0 x %PngColor]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h196284875beef18fE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[PngColor]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[PngColor]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[PngColor]>"* %_3 to { [0 x %PngColor]*, i64 }*
  %10 = getelementptr inbounds { [0 x %PngColor]*, i64 }, { [0 x %PngColor]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x %PngColor]*, [0 x %PngColor]** %10, align 8
  %12 = getelementptr inbounds { [0 x %PngColor]*, i64 }, { [0 x %PngColor]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x %PngColor]*, i64 } undef, [0 x %PngColor]* %11, 0
  %15 = insertvalue { [0 x %PngColor]*, i64 } %14, i64 %13, 1
  ret { [0 x %PngColor]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define { [0 x %PngUnknownChunk]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h32cef09b8cf2118dE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[PngUnknownChunk]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[PngUnknownChunk]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[PngUnknownChunk]>"* %_3 to { [0 x %PngUnknownChunk]*, i64 }*
  %10 = getelementptr inbounds { [0 x %PngUnknownChunk]*, i64 }, { [0 x %PngUnknownChunk]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x %PngUnknownChunk]*, [0 x %PngUnknownChunk]** %10, align 8
  %12 = getelementptr inbounds { [0 x %PngUnknownChunk]*, i64 }, { [0 x %PngUnknownChunk]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x %PngUnknownChunk]*, i64 } undef, [0 x %PngUnknownChunk]* %11, 0
  %15 = insertvalue { [0 x %PngUnknownChunk]*, i64 } %14, i64 %13, 1
  ret { [0 x %PngUnknownChunk]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h5359c5abeb74db7dE({}* %data_address) unnamed_addr #0 {
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
define { [0 x %"alloc::vec::Vec<u8>"]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h6b938a674088c989E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[alloc::vec::Vec<u8>]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[alloc::vec::Vec<u8>]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[alloc::vec::Vec<u8>]>"* %_3 to { [0 x %"alloc::vec::Vec<u8>"]*, i64 }*
  %10 = getelementptr inbounds { [0 x %"alloc::vec::Vec<u8>"]*, i64 }, { [0 x %"alloc::vec::Vec<u8>"]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x %"alloc::vec::Vec<u8>"]*, [0 x %"alloc::vec::Vec<u8>"]** %10, align 8
  %12 = getelementptr inbounds { [0 x %"alloc::vec::Vec<u8>"]*, i64 }, { [0 x %"alloc::vec::Vec<u8>"]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } undef, [0 x %"alloc::vec::Vec<u8>"]* %11, 0
  %15 = insertvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %14, i64 %13, 1
  ret { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h702cbfd053c6e41aE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb13f014654d90d8bE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h03a52559339b8816E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call %PngUnknownChunk* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb631b834b97093a6E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %PngUnknownChunk* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb13f014654d90d8bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h07839e21262a2199E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call %PngColor16* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdc75469196c27b68E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %PngColor16* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb13f014654d90d8bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h29bf188838f2ee7fE"(i64* %self) unnamed_addr #0 {
start:
  %_3 = call %"alloc::vec::Vec<u8>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5d98a129c2b70571E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb13f014654d90d8bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h48168700ed6ef172E"(i16* %self) unnamed_addr #0 {
start:
  %_3 = call i16* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h95d0fdeec1b7c01eE"(i16* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast i16* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb13f014654d90d8bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h4f4ca3a6c2d8b503E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call %PngColor8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2410c0479fcaff8bE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %PngColor8* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb13f014654d90d8bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5fa6908d26fcb396E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc9bdd225ff920bfeE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb13f014654d90d8bE"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hc9eeb04b4bb5d2bbE"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call %PngColor* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h10c842441d244f95E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %PngColor* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb13f014654d90d8bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define %PngColor* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h10c842441d244f95E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to %PngColor*
  ret %PngColor* %_2
}

; Function Attrs: inlinehint uwtable
define %PngColor8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2410c0479fcaff8bE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to %PngColor8*
  ret %PngColor8* %_2
}

; Function Attrs: inlinehint uwtable
define %"alloc::vec::Vec<u8>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5d98a129c2b70571E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"alloc::vec::Vec<u8>"*
  ret %"alloc::vec::Vec<u8>"* %_2
}

; Function Attrs: inlinehint uwtable
define i16* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h95d0fdeec1b7c01eE"(i16* %self) unnamed_addr #0 {
start:
  ret i16* %self
}

; Function Attrs: inlinehint uwtable
define %PngUnknownChunk* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb631b834b97093a6E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to %PngUnknownChunk*
  ret %PngUnknownChunk* %_2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc9bdd225ff920bfeE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define %PngColor16* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdc75469196c27b68E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to %PngColor16*
  ret %PngColor16* %_2
}

; Function Attrs: inlinehint uwtable
define align 1 %PngColor8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h8178ce986a94f183E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %PngColor8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2410c0479fcaff8bE"(i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %PngColor8* %_2
}

; Function Attrs: inlinehint uwtable
define align 1 %PngColor16* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h9bc2d6720a13ed94E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %PngColor16* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdc75469196c27b68E"(i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %PngColor16* %_2
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr91drop_in_place$LT$alloc..raw_vec..RawVec$LT$opng_destroy_image_info..PngUnknownChunk$GT$$GT$17hfbc42122608d87fbE"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06cf10b90211b259E"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17h43a174fb5bc559b7E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h0864a72908a635fbE(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hb06ca2d0da0c84a3E(i64 %align), !range !3
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h7cb54df0d7d43db8E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17hd0839c396f1c07c2E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !3, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd3c0ba62c1f98476E(i64 %_3), !range !4
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h1d7491e78bf01b8cE(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h40e06b7d70acf385E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h5012255a20033e5eE"(i64 2, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h0104524deb25630dE"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3186ae740dd6ba22E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !6, !noundef !1
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4f2960699860de18E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc230 to %"core::panic::location::Location"*))
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
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h0864a72908a635fbE(i64 %val, i64 2)
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
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h52f2b8fc5dcc762cE(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h5012255a20033e5eE"(i64 3, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h0104524deb25630dE"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3186ae740dd6ba22E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !6, !noundef !1
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4f2960699860de18E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc230 to %"core::panic::location::Location"*))
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
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h0864a72908a635fbE(i64 %val, i64 1)
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
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha05d4f0fb987104bE(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h5012255a20033e5eE"(i64 38, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h0104524deb25630dE"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3186ae740dd6ba22E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !6, !noundef !1
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4f2960699860de18E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc230 to %"core::panic::location::Location"*))
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
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h0864a72908a635fbE(i64 %val, i64 1)
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
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha1665d3dc46eb4b9E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h5012255a20033e5eE"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h0104524deb25630dE"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3186ae740dd6ba22E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !6, !noundef !1
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4f2960699860de18E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc230 to %"core::panic::location::Location"*))
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
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h0864a72908a635fbE(i64 %val, i64 1)
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
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17hea9f52019bfe2100E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h5012255a20033e5eE"(i64 24, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h0104524deb25630dE"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3186ae740dd6ba22E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !6, !noundef !1
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4f2960699860de18E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc230 to %"core::panic::location::Location"*))
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
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h0864a72908a635fbE(i64 %val, i64 8)
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
define { [0 x i16]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h2d86b9be3d4c8dcfE(i16* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i16]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h83b17874d4c8d1fdE(i16* %data, i64 %len)
  %_7.0 = extractvalue { [0 x i16]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i16]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i16]*, i64 } undef, [0 x i16]* %_7.0, 0
  %2 = insertvalue { [0 x i16]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x i16]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x %"alloc::vec::Vec<u8>"]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h32825c6a78d2e1f9E(%"alloc::vec::Vec<u8>"* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x %"alloc::vec::Vec<u8>"]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4b3a0347aa310ff1E(%"alloc::vec::Vec<u8>"* %data, i64 %len)
  %_7.0 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } undef, [0 x %"alloc::vec::Vec<u8>"]* %_7.0, 0
  %2 = insertvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x %PngUnknownChunk]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h9825d22e47c03daaE(%PngUnknownChunk* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x %PngUnknownChunk]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hec555da77fc019e5E(%PngUnknownChunk* %data, i64 %len)
  %_7.0 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x %PngUnknownChunk]*, i64 } undef, [0 x %PngUnknownChunk]* %_7.0, 0
  %2 = insertvalue { [0 x %PngUnknownChunk]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x %PngUnknownChunk]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17ha54d81800b7d2e29E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h3fa28cf7bb4427bbE(i8* %data, i64 %len)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_7.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x %PngColor]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17he6cbb0cb901242edE(%PngColor* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x %PngColor]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h8b6d94c304c54ddeE(%PngColor* %data, i64 %len)
  %_7.0 = extractvalue { [0 x %PngColor]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x %PngColor]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x %PngColor]*, i64 } undef, [0 x %PngColor]* %_7.0, 0
  %2 = insertvalue { [0 x %PngColor]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x %PngColor]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h0104524deb25630dE"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %_3 = load i64, i64* %5, align 8, !range !6, !noundef !1
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
  %15 = load i64, i64* %14, align 8, !range !6, !noundef !1
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hfebd514f30df6fbbE"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %t.1 = load i64, i64* %10, align 8, !range !3, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !2, !noundef !1
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h43a174fb5bc559b7E() #12
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
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h62a310fa017f7ba2E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he9d3b569c482fe77E"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h62f29eef092459fcE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h27f9d02323b19618E"(%"alloc::vec::Vec<u16>"* sret(%"alloc::vec::Vec<u16>") %0) unnamed_addr #0 {
start:
  %_1.0 = load i16*, i16** getelementptr inbounds ({ i16*, i64 }, { i16*, i64 }* bitcast (<{ [16 x i8] }>* @anon.fb7107aad5b1427bba4f0e30585f27c1.0 to { i16*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !noundef !1
  %_1.1 = load i64, i64* getelementptr inbounds ({ i16*, i64 }, { i16*, i64 }* bitcast (<{ [16 x i8] }>* @anon.fb7107aad5b1427bba4f0e30585f27c1.0 to { i16*, i64 }*), i32 0, i32 1), align 8
  %1 = bitcast %"alloc::vec::Vec<u16>"* %0 to { i16*, i64 }*
  %2 = getelementptr inbounds { i16*, i64 }, { i16*, i64 }* %1, i32 0, i32 0
  store i16* %_1.0, i16** %2, align 8
  %3 = getelementptr inbounds { i16*, i64 }, { i16*, i64 }* %1, i32 0, i32 1
  store i64 %_1.1, i64* %3, align 8
  %4 = getelementptr inbounds %"alloc::vec::Vec<u16>", %"alloc::vec::Vec<u16>"* %0, i32 0, i32 1
  store i64 0, i64* %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h41fe3e17bedfc1d7E"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* sret(%"alloc::vec::Vec<alloc::vec::Vec<u8>>") %0) unnamed_addr #0 {
start:
  %_1.0 = load i64*, i64** getelementptr inbounds ({ i64*, i64 }, { i64*, i64 }* bitcast (<{ [16 x i8] }>* @anon.fb7107aad5b1427bba4f0e30585f27c1.1 to { i64*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !noundef !1
  %_1.1 = load i64, i64* getelementptr inbounds ({ i64*, i64 }, { i64*, i64 }* bitcast (<{ [16 x i8] }>* @anon.fb7107aad5b1427bba4f0e30585f27c1.1 to { i64*, i64 }*), i32 0, i32 1), align 8
  %1 = bitcast %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %0 to { i64*, i64 }*
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 0
  store i64* %_1.0, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 1
  store i64 %_1.1, i64* %3, align 8
  %4 = getelementptr inbounds %"alloc::vec::Vec<alloc::vec::Vec<u8>>", %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %0, i32 0, i32 1
  store i64 0, i64* %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h46cf40c7af046e49E"(%"alloc::vec::Vec<PngColor>"* sret(%"alloc::vec::Vec<PngColor>") %0) unnamed_addr #0 {
start:
  %_1.0 = load i8*, i8** getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* bitcast (<{ [16 x i8] }>* @anon.fb7107aad5b1427bba4f0e30585f27c1.2 to { i8*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !noundef !1
  %_1.1 = load i64, i64* getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* bitcast (<{ [16 x i8] }>* @anon.fb7107aad5b1427bba4f0e30585f27c1.2 to { i8*, i64 }*), i32 0, i32 1), align 8
  %1 = bitcast %"alloc::vec::Vec<PngColor>"* %0 to { i8*, i64 }*
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  store i8* %_1.0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  store i64 %_1.1, i64* %3, align 8
  %4 = getelementptr inbounds %"alloc::vec::Vec<PngColor>", %"alloc::vec::Vec<PngColor>"* %0, i32 0, i32 1
  store i64 0, i64* %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hb2aaddd70f3fc99cE"(%"alloc::vec::Vec<PngUnknownChunk>"* sret(%"alloc::vec::Vec<PngUnknownChunk>") %0) unnamed_addr #0 {
start:
  %_1.0 = load i8*, i8** getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* bitcast (<{ [16 x i8] }>* @anon.fb7107aad5b1427bba4f0e30585f27c1.2 to { i8*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !noundef !1
  %_1.1 = load i64, i64* getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* bitcast (<{ [16 x i8] }>* @anon.fb7107aad5b1427bba4f0e30585f27c1.2 to { i8*, i64 }*), i32 0, i32 1), align 8
  %1 = bitcast %"alloc::vec::Vec<PngUnknownChunk>"* %0 to { i8*, i64 }*
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  store i8* %_1.0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  store i64 %_1.1, i64* %3, align 8
  %4 = getelementptr inbounds %"alloc::vec::Vec<PngUnknownChunk>", %"alloc::vec::Vec<PngUnknownChunk>"* %0, i32 0, i32 1
  store i64 0, i64* %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hc66a54048118be9eE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0) unnamed_addr #0 {
start:
  %_1.0 = load i8*, i8** getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* bitcast (<{ [16 x i8] }>* @anon.fb7107aad5b1427bba4f0e30585f27c1.2 to { i8*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !noundef !1
  %_1.1 = load i64, i64* getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* bitcast (<{ [16 x i8] }>* @anon.fb7107aad5b1427bba4f0e30585f27c1.2 to { i8*, i64 }*), i32 0, i32 1), align 8
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
define %PngColor* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h0df160c98b978d43E"(%"alloc::vec::Vec<PngColor>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<PngColor>"* %self to { i8*, i64 }*
  %ptr = call %PngColor* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h818b3dc3e3a97423E"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hefebb5c54173a5fdE"(%PngColor* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret %PngColor* %ptr
}

; Function Attrs: inlinehint uwtable
define i16* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h476b1c0e2598f6d7E"(%"alloc::vec::Vec<u16>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u16>"* %self to { i16*, i64 }*
  %ptr = call i16* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h113575125bcaa693E"({ i16*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he8d1a0a97d8f24edE"(i16* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i16* %ptr
}

; Function Attrs: inlinehint uwtable
define %PngUnknownChunk* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h50cc4f8fdcc37132E"(%"alloc::vec::Vec<PngUnknownChunk>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<PngUnknownChunk>"* %self to { i8*, i64 }*
  %ptr = call %PngUnknownChunk* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h6cc045db639062dbE"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hb3b186cfa7fc9fcdE"(%PngUnknownChunk* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret %PngUnknownChunk* %ptr
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h6cd64aaae82ee978E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h5020729aea1cd35aE"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h3b1fabdc2bb73b9aE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define %"alloc::vec::Vec<u8>"* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hece650624b7dcb3bE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %self to { i64*, i64 }*
  %ptr = call %"alloc::vec::Vec<u8>"* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17he84acfd70ec13214E"({ i64*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h74aaeb9b6cb822d3E"(%"alloc::vec::Vec<u8>"* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret %"alloc::vec::Vec<u8>"* %ptr
}

; Function Attrs: inlinehint uwtable
define { [0 x i16]*, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17h4ca9a7525cee6972E"(%"alloc::vec::Vec<u16>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x i16]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h1bf8e51dd59cbd7fE"(%"alloc::vec::Vec<u16>"* align 8 %self)
  %_3.0 = extractvalue { [0 x i16]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i16]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i16]*, i64 } undef, [0 x i16]* %_3.0, 0
  %2 = insertvalue { [0 x i16]*, i64 } %1, i64 %_3.1, 1
  ret { [0 x i16]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17h5d42ac0fcddc06dbE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h24ab81d560d56e76E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_3.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_3.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x %PngColor]*, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17hb7c8e9740e8e5c48E"(%"alloc::vec::Vec<PngColor>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x %PngColor]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h940c8620be07283eE"(%"alloc::vec::Vec<PngColor>"* align 8 %self)
  %_3.0 = extractvalue { [0 x %PngColor]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x %PngColor]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x %PngColor]*, i64 } undef, [0 x %PngColor]* %_3.0, 0
  %2 = insertvalue { [0 x %PngColor]*, i64 } %1, i64 %_3.1, 1
  ret { [0 x %PngColor]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x %PngUnknownChunk]*, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17heaaef7158f58d81aE"(%"alloc::vec::Vec<PngUnknownChunk>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x %PngUnknownChunk]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hc1e15c0509c1818cE"(%"alloc::vec::Vec<PngUnknownChunk>"* align 8 %self)
  %_3.0 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x %PngUnknownChunk]*, i64 } undef, [0 x %PngUnknownChunk]* %_3.0, 0
  %2 = insertvalue { [0 x %PngUnknownChunk]*, i64 } %1, i64 %_3.1, 1
  ret { [0 x %PngUnknownChunk]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x %"alloc::vec::Vec<u8>"]*, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17hf1964805c81cdbf6E"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x %"alloc::vec::Vec<u8>"]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h70901b9dc135450dE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self)
  %_3.0 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } undef, [0 x %"alloc::vec::Vec<u8>"]* %_3.0, 0
  %2 = insertvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %1, i64 %_3.1, 1
  ret { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hd2bc93f03369ff57E"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<alloc::vec::Vec<u8>>", %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h20db134a3d75ea0fE"(%"alloc::vec::Vec<PngUnknownChunk>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x %PngUnknownChunk]*, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17heaaef7158f58d81aE"(%"alloc::vec::Vec<PngUnknownChunk>"* align 8 %self)
  %_3.0 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds %"alloc::vec::Vec<PngUnknownChunk>", %"alloc::vec::Vec<PngUnknownChunk>"* %self, i32 0, i32 1
  store i64 0, i64* %1, align 8
  call void @"_ZN4core3ptr71drop_in_place$LT$$u5b$opng_destroy_image_info..PngUnknownChunk$u5d$$GT$17hd11ab9b7a6dab5a1E"([0 x %PngUnknownChunk]* %_3.0, i64 %_3.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h25ac8fdaf882cfb3E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17h5d42ac0fcddc06dbE"(%"alloc::vec::Vec<u8>"* align 8 %self)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  store i64 0, i64* %1, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h66754413b3bafcf5E"(%"alloc::vec::Vec<PngColor>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x %PngColor]*, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17hb7c8e9740e8e5c48E"(%"alloc::vec::Vec<PngColor>"* align 8 %self)
  %_3.0 = extractvalue { [0 x %PngColor]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x %PngColor]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds %"alloc::vec::Vec<PngColor>", %"alloc::vec::Vec<PngColor>"* %self, i32 0, i32 1
  store i64 0, i64* %1, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h9a45dda61d35f92fE"(%"alloc::vec::Vec<u16>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x i16]*, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17h4ca9a7525cee6972E"(%"alloc::vec::Vec<u16>"* align 8 %self)
  %_3.0 = extractvalue { [0 x i16]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i16]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds %"alloc::vec::Vec<u16>", %"alloc::vec::Vec<u16>"* %self, i32 0, i32 1
  store i64 0, i64* %1, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17hc59efcb452d4438bE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x %"alloc::vec::Vec<u8>"]*, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17hf1964805c81cdbf6E"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self)
  %_3.0 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds %"alloc::vec::Vec<alloc::vec::Vec<u8>>", %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %self, i32 0, i32 1
  store i64 0, i64* %1, align 8
  call void @"_ZN4core3ptr56drop_in_place$LT$$u5b$alloc..vec..Vec$LT$u8$GT$$u5d$$GT$17h35ec4ad24a0e3df8E"([0 x %"alloc::vec::Vec<u8>"]* %_3.0, i64 %_3.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8is_empty17h9213b525428a69bdE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self) unnamed_addr #1 {
start:
  %_2 = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hd2bc93f03369ff57E"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = icmp eq i64 %_2, 0
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17h44e557a23fc17d77E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h7cb54df0d7d43db8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17hd0839c396f1c07c2E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #13
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17had18188fea3a19baE(i8* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca i8*, align 8
  store i8* %0, i8** %ptr, align 8
  %_5 = invoke align 1 %PngColor8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17he1b26eb90784842eE"(i8** align 8 %ptr)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb10

bb1:                                              ; preds = %start
  store i64 5, i64* %2, align 8
  %size = load i64, i64* %2, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_9 = invoke align 1 %PngColor8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17he1b26eb90784842eE"(i8** align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64 1, i64* %1, align 8
  %align = load i64, i64* %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h0864a72908a635fbE(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  %_17 = load i8*, i8** %ptr, align 8, !nonnull !1, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hae9b200055edd035E"(i8* %_17)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h62f29eef092459fcE"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc4b7055a99b46941E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %10 = bitcast { i8*, i32 }* %3 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17he174dd5cef50148eE(i8* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca i8*, align 8
  store i8* %0, i8** %ptr, align 8
  %_5 = invoke align 1 %PngColor16* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hd4a9618a6f741c78E"(i8** align 8 %ptr)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb10

bb1:                                              ; preds = %start
  store i64 9, i64* %2, align 8
  %size = load i64, i64* %2, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_9 = invoke align 1 %PngColor16* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hd4a9618a6f741c78E"(i8** align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64 1, i64* %1, align 8
  %align = load i64, i64* %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h0864a72908a635fbE(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  %_17 = load i8*, i8** %ptr, align 8, !nonnull !1, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17he077bab768efdccaE"(i8* %_17)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h62f29eef092459fcE"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc4b7055a99b46941E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %10 = bitcast { i8*, i32 }* %3 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h1f0408a179cacad1E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_9 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 3, 0
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
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h52f2b8fc5dcc762cE(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hfebd514f30df6fbbE"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc232 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5d0524c97bc4c06bE"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he9d3b569c482fe77E"(i8* %_11)
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2856865d439a5957E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
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
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha1665d3dc46eb4b9E(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hfebd514f30df6fbbE"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc232 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17ha0e0acfaa0743acfE"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he9d3b569c482fe77E"(i8* %_11)
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h7249d9b550b685caE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_9 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 38, 0
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
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha05d4f0fb987104bE(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hfebd514f30df6fbbE"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc232 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5acd063efa5fbec4E"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he9d3b569c482fe77E"(i8* %_11)
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h86b41d7c48a490c6E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i16*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_9 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 2, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i16*, i64 }, { i16*, i64 }* %self, i32 0, i32 1
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
  %6 = getelementptr inbounds { i16*, i64 }, { i16*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h40e06b7d70acf385E(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hfebd514f30df6fbbE"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc232 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i16*, i64 }* %self to i16**
  %_12 = load i16*, i16** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h2cc790c670edd9b5E"(i16* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he9d3b569c482fe77E"(i8* %_11)
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hd321121685a4e774E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i64*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_9 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 24, 0
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
  %4 = load i8, i8* %_2, align 1, !range !5, !noundef !1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17hea9f52019bfe2100E(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hfebd514f30df6fbbE"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc232 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i64*, i64 }* %self to i64**
  %_12 = load i64*, i64** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h25fc2eda9d21a889E"(i64* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he9d3b569c482fe77E"(i8* %_11)
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
define i16* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h113575125bcaa693E"({ i16*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i16*, i64 }* %self to i16**
  %_2 = load i16*, i16** %0, align 8, !nonnull !1, !noundef !1
  %1 = call i16* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hadb343f758bc6cc8E"(i16* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i16* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h5020729aea1cd35aE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9a6f52952adfa0dfE"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define %PngUnknownChunk* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h6cc045db639062dbE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = call %PngUnknownChunk* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h0ab5985a8c5851b6E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %PngUnknownChunk* %1
}

; Function Attrs: inlinehint uwtable
define %PngColor* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h818b3dc3e3a97423E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = call %PngColor* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hfd14fee88d0f3803E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %PngColor* %1
}

; Function Attrs: inlinehint uwtable
define %"alloc::vec::Vec<u8>"* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17he84acfd70ec13214E"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64*, i64 }* %self to i64**
  %_2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  %1 = call %"alloc::vec::Vec<u8>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h0ca0b0033c6cd648E"(i64* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::vec::Vec<u8>"* %1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc4b7055a99b46941E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h7cb54df0d7d43db8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc9bdd225ff920bfeE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !3, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h44e557a23fc17d77E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: uwtable
define void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h11d97cec18506531E"(%"alloc::vec::Vec<PngUnknownChunk>"* sret(%"alloc::vec::Vec<PngUnknownChunk>") %0) unnamed_addr #1 {
start:
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hb2aaddd70f3fc99cE"(%"alloc::vec::Vec<PngUnknownChunk>"* sret(%"alloc::vec::Vec<PngUnknownChunk>") %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h2bfcb03117ca7c77E"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* sret(%"alloc::vec::Vec<alloc::vec::Vec<u8>>") %0) unnamed_addr #1 {
start:
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h41fe3e17bedfc1d7E"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* sret(%"alloc::vec::Vec<alloc::vec::Vec<u8>>") %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h3639de4dd59308b2E"(%"alloc::vec::Vec<PngColor>"* sret(%"alloc::vec::Vec<PngColor>") %0) unnamed_addr #1 {
start:
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h46cf40c7af046e49E"(%"alloc::vec::Vec<PngColor>"* sret(%"alloc::vec::Vec<PngColor>") %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h8230a9388c6528daE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0) unnamed_addr #1 {
start:
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hc66a54048118be9eE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17had8dbd5d2d2106f8E"(%"alloc::vec::Vec<u16>"* sret(%"alloc::vec::Vec<u16>") %0) unnamed_addr #1 {
start:
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h27f9d02323b19618E"(%"alloc::vec::Vec<u16>"* sret(%"alloc::vec::Vec<u16>") %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h07ff339bfde4dde7E"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call %"alloc::vec::Vec<u8>"* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hece650624b7dcb3bE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<alloc::vec::Vec<u8>>", %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x %"alloc::vec::Vec<u8>"]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4b3a0347aa310ff1E(%"alloc::vec::Vec<u8>"* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @"_ZN4core3ptr56drop_in_place$LT$$u5b$alloc..vec..Vec$LT$u8$GT$$u5d$$GT$17h35ec4ad24a0e3df8E"([0 x %"alloc::vec::Vec<u8>"]* %_2.0, i64 %_2.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3dda022c8b52e6cbE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h6cd64aaae82ee978E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h3fa28cf7bb4427bbE(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3767a1c997d9d81E"(%"alloc::vec::Vec<PngUnknownChunk>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call %PngUnknownChunk* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h50cc4f8fdcc37132E"(%"alloc::vec::Vec<PngUnknownChunk>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<PngUnknownChunk>", %"alloc::vec::Vec<PngUnknownChunk>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x %PngUnknownChunk]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hec555da77fc019e5E(%PngUnknownChunk* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @"_ZN4core3ptr71drop_in_place$LT$$u5b$opng_destroy_image_info..PngUnknownChunk$u5d$$GT$17hd11ab9b7a6dab5a1E"([0 x %PngUnknownChunk]* %_2.0, i64 %_2.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacd11ac97e34fe47E"(%"alloc::vec::Vec<PngColor>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call %PngColor* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h0df160c98b978d43E"(%"alloc::vec::Vec<PngColor>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<PngColor>", %"alloc::vec::Vec<PngColor>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x %PngColor]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h8b6d94c304c54ddeE(%PngColor* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x %PngColor]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x %PngColor]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf3ebdf7763b0b3c4E"(%"alloc::vec::Vec<u16>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i16* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h476b1c0e2598f6d7E"(%"alloc::vec::Vec<u16>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u16>", %"alloc::vec::Vec<u16>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i16]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h83b17874d4c8d1fdE(i16* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i16]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i16]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hbb3f8fcb42f7b70aE"() unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i8** %0 to {}**
  store {}* null, {}** %2, align 8
  %3 = load i8*, i8** %0, align 8, !align !7
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hc2f41b01bbadfe9eE"() unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i8** %0 to {}**
  store {}* null, {}** %2, align 8
  %3 = load i8*, i8** %0, align 8, !align !7
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i16]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h1bf8e51dd59cbd7fE"(%"alloc::vec::Vec<u16>"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = call i16* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h476b1c0e2598f6d7E"(%"alloc::vec::Vec<u16>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u16>", %"alloc::vec::Vec<u16>"* %self, i32 0, i32 1
  %_7 = load i64, i64* %0, align 8
  %1 = call { [0 x i16]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h2d86b9be3d4c8dcfE(i16* %_5, i64 %_7)
  %_4.0 = extractvalue { [0 x i16]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i16]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i16]*, i64 } undef, [0 x i16]* %_4.0, 0
  %3 = insertvalue { [0 x i16]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i16]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h24ab81d560d56e76E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h6cd64aaae82ee978E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_7 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17ha54d81800b7d2e29E(i8* %_5, i64 %_7)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x %"alloc::vec::Vec<u8>"]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h70901b9dc135450dE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = call %"alloc::vec::Vec<u8>"* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hece650624b7dcb3bE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<alloc::vec::Vec<u8>>", %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %self, i32 0, i32 1
  %_7 = load i64, i64* %0, align 8
  %1 = call { [0 x %"alloc::vec::Vec<u8>"]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h32825c6a78d2e1f9E(%"alloc::vec::Vec<u8>"* %_5, i64 %_7)
  %_4.0 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } undef, [0 x %"alloc::vec::Vec<u8>"]* %_4.0, 0
  %3 = insertvalue { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x %"alloc::vec::Vec<u8>"]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x %PngColor]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h940c8620be07283eE"(%"alloc::vec::Vec<PngColor>"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = call %PngColor* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h0df160c98b978d43E"(%"alloc::vec::Vec<PngColor>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<PngColor>", %"alloc::vec::Vec<PngColor>"* %self, i32 0, i32 1
  %_7 = load i64, i64* %0, align 8
  %1 = call { [0 x %PngColor]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17he6cbb0cb901242edE(%PngColor* %_5, i64 %_7)
  %_4.0 = extractvalue { [0 x %PngColor]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x %PngColor]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x %PngColor]*, i64 } undef, [0 x %PngColor]* %_4.0, 0
  %3 = insertvalue { [0 x %PngColor]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x %PngColor]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x %PngUnknownChunk]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hc1e15c0509c1818cE"(%"alloc::vec::Vec<PngUnknownChunk>"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = call %PngUnknownChunk* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h50cc4f8fdcc37132E"(%"alloc::vec::Vec<PngUnknownChunk>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<PngUnknownChunk>", %"alloc::vec::Vec<PngUnknownChunk>"* %self, i32 0, i32 1
  %_7 = load i64, i64* %0, align 8
  %1 = call { [0 x %PngUnknownChunk]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h9825d22e47c03daaE(%PngUnknownChunk* %_5, i64 %_7)
  %_4.0 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x %PngUnknownChunk]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x %PngUnknownChunk]*, i64 } undef, [0 x %PngUnknownChunk]* %_4.0, 0
  %3 = insertvalue { [0 x %PngUnknownChunk]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x %PngUnknownChunk]*, i64 } %3
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06cf10b90211b259E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h7249d9b550b685caE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
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
  %layout.1 = load i64, i64* %11, align 8, !range !3, !noundef !1
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc4b7055a99b46941E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52786e30a3e22b6dE"({ i16*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h86b41d7c48a490c6E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i16*, i64 }* align 8 %self)
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
  %layout.1 = load i64, i64* %11, align 8, !range !3, !noundef !1
  %_7 = bitcast { i16*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc4b7055a99b46941E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9829f7d078170e06E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h1f0408a179cacad1E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
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
  %layout.1 = load i64, i64* %11, align 8, !range !3, !noundef !1
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc4b7055a99b46941E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6239dc9580b897aE"({ i64*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hd321121685a4e774E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i64*, i64 }* align 8 %self)
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
  %layout.1 = load i64, i64* %11, align 8, !range !3, !noundef !1
  %_7 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc4b7055a99b46941E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf85a767ee731c966E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2856865d439a5957E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
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
  %layout.1 = load i64, i64* %11, align 8, !range !3, !noundef !1
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc4b7055a99b46941E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3186ae740dd6ba22E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !6, !noundef !1
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
  %14 = load i64, i64* %13, align 8, !range !6, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: uwtable
define void @destroy_image_info(%OpngImage* align 1 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_14 = alloca %OpngImage, align 1
  %_3 = getelementptr inbounds %OpngImage, %OpngImage* %self, i32 0, i32 7
  %_2 = call zeroext i1 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8is_empty17h9213b525428a69bdE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb9, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = getelementptr inbounds %OpngImage, %OpngImage* %self, i32 0, i32 7
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17hc59efcb452d4438bE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* align 8 %_5)
  br label %bb3

bb9:                                              ; preds = %bb11, %bb1
  ret void

bb3:                                              ; preds = %bb2
  %_7 = getelementptr inbounds %OpngImage, %OpngImage* %self, i32 0, i32 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h66754413b3bafcf5E"(%"alloc::vec::Vec<PngColor>"* align 8 %_7)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_9 = getelementptr inbounds %OpngImage, %OpngImage* %self, i32 0, i32 15
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h25ac8fdaf882cfb3E"(%"alloc::vec::Vec<u8>"* align 8 %_9)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_11 = getelementptr inbounds %OpngImage, %OpngImage* %self, i32 0, i32 12
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h9a45dda61d35f92fE"(%"alloc::vec::Vec<u16>"* align 8 %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_13 = getelementptr inbounds %OpngImage, %OpngImage* %self, i32 0, i32 19
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h20db134a3d75ea0fE"(%"alloc::vec::Vec<PngUnknownChunk>"* align 8 %_13)
  br label %bb7

bb7:                                              ; preds = %bb6
  call void @"_ZN77_$LT$opng_destroy_image_info..OpngImage$u20$as$u20$core..default..Default$GT$7default17hfa2b2fa7bf674638E"(%OpngImage* sret(%OpngImage) %_14)
  br label %bb8

bb8:                                              ; preds = %bb7
  invoke void @"_ZN4core3ptr55drop_in_place$LT$opng_destroy_image_info..OpngImage$GT$17h2115ef767b5adb87E"(%OpngImage* %self)
          to label %bb11 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %1 = bitcast %OpngImage* %self to i8*
  %2 = bitcast %OpngImage* %_14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 207, i1 false)
  %3 = bitcast { i8*, i32 }* %0 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1
  resume { i8*, i32 } %8

cleanup:                                          ; preds = %bb8
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb10

bb11:                                             ; preds = %bb8
  %14 = bitcast %OpngImage* %self to i8*
  %15 = bitcast %OpngImage* %_14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 %15, i64 207, i1 false)
  br label %bb9
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %image = alloca %OpngImage, align 1
  call void @"_ZN77_$LT$opng_destroy_image_info..OpngImage$u20$as$u20$core..default..Default$GT$7default17hfa2b2fa7bf674638E"(%OpngImage* sret(%OpngImage) %image)
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @destroy_image_info(%OpngImage* align 1 %image)
          to label %bb2 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr55drop_in_place$LT$opng_destroy_image_info..OpngImage$GT$17h2115ef767b5adb87E"(%OpngImage* %image) #10
          to label %bb5 unwind label %abort

cleanup:                                          ; preds = %bb1
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  call void @"_ZN4core3ptr55drop_in_place$LT$opng_destroy_image_info..OpngImage$GT$17h2115ef767b5adb87E"(%OpngImage* %image)
  br label %bb3

abort:                                            ; preds = %bb4
  %6 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb5:                                              ; preds = %bb4
  %7 = bitcast { i8*, i32 }* %0 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = insertvalue { i8*, i32 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i32 } %11, i32 %10, 1
  resume { i8*, i32 } %12

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN78_$LT$opng_destroy_image_info..PngColor16$u20$as$u20$core..default..Default$GT$7default17h2e6ab4c713dd1ff2E"(%PngColor16* sret(%PngColor16) %0) unnamed_addr #0 {
start:
  %_1 = call i8 @"_ZN45_$LT$u8$u20$as$u20$core..default..Default$GT$7default17hf767ca7b54e650a8E"()
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = call i16 @"_ZN46_$LT$u16$u20$as$u20$core..default..Default$GT$7default17h5a290940b075862bE"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = call i16 @"_ZN46_$LT$u16$u20$as$u20$core..default..Default$GT$7default17h5a290940b075862bE"()
  br label %bb3

bb3:                                              ; preds = %bb2
  %_4 = call i16 @"_ZN46_$LT$u16$u20$as$u20$core..default..Default$GT$7default17h5a290940b075862bE"()
  br label %bb4

bb4:                                              ; preds = %bb3
  %_5 = call i16 @"_ZN46_$LT$u16$u20$as$u20$core..default..Default$GT$7default17h5a290940b075862bE"()
  br label %bb5

bb5:                                              ; preds = %bb4
  %1 = bitcast %PngColor16* %0 to i8*
  store i8 %_1, i8* %1, align 1
  %2 = getelementptr inbounds %PngColor16, %PngColor16* %0, i32 0, i32 1
  store i16 %_2, i16* %2, align 1
  %3 = getelementptr inbounds %PngColor16, %PngColor16* %0, i32 0, i32 2
  store i16 %_3, i16* %3, align 1
  %4 = getelementptr inbounds %PngColor16, %PngColor16* %0, i32 0, i32 3
  store i16 %_4, i16* %4, align 1
  %5 = getelementptr inbounds %PngColor16, %PngColor16* %0, i32 0, i32 4
  store i16 %_5, i16* %5, align 1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i40 @"_ZN77_$LT$opng_destroy_image_info..PngColor8$u20$as$u20$core..default..Default$GT$7default17h4c09a7f7d7e699baE"() unnamed_addr #0 {
start:
  %0 = alloca %PngColor8, align 1
  %_1 = call i8 @"_ZN45_$LT$u8$u20$as$u20$core..default..Default$GT$7default17hf767ca7b54e650a8E"()
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = call i8 @"_ZN45_$LT$u8$u20$as$u20$core..default..Default$GT$7default17hf767ca7b54e650a8E"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = call i8 @"_ZN45_$LT$u8$u20$as$u20$core..default..Default$GT$7default17hf767ca7b54e650a8E"()
  br label %bb3

bb3:                                              ; preds = %bb2
  %_4 = call i8 @"_ZN45_$LT$u8$u20$as$u20$core..default..Default$GT$7default17hf767ca7b54e650a8E"()
  br label %bb4

bb4:                                              ; preds = %bb3
  %_5 = call i8 @"_ZN45_$LT$u8$u20$as$u20$core..default..Default$GT$7default17hf767ca7b54e650a8E"()
  br label %bb5

bb5:                                              ; preds = %bb4
  %1 = bitcast %PngColor8* %0 to i8*
  store i8 %_1, i8* %1, align 1
  %2 = getelementptr inbounds %PngColor8, %PngColor8* %0, i32 0, i32 1
  store i8 %_2, i8* %2, align 1
  %3 = getelementptr inbounds %PngColor8, %PngColor8* %0, i32 0, i32 2
  store i8 %_3, i8* %3, align 1
  %4 = getelementptr inbounds %PngColor8, %PngColor8* %0, i32 0, i32 3
  store i8 %_4, i8* %4, align 1
  %5 = getelementptr inbounds %PngColor8, %PngColor8* %0, i32 0, i32 4
  store i8 %_5, i8* %5, align 1
  %6 = bitcast %PngColor8* %0 to i40*
  %7 = load i40, i40* %6, align 1
  ret i40 %7
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN77_$LT$opng_destroy_image_info..OpngImage$u20$as$u20$core..default..Default$GT$7default17hfa2b2fa7bf674638E"(%OpngImage* sret(%OpngImage) %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i40, align 8
  %2 = alloca { i8*, i32 }, align 8
  %_20 = alloca %"alloc::vec::Vec<PngUnknownChunk>", align 8
  %_19 = alloca %PngColor16, align 1
  %_18 = alloca i8*, align 8
  %_16 = alloca %"alloc::vec::Vec<u8>", align 8
  %_15 = alloca %PngColor8, align 1
  %_14 = alloca i8*, align 8
  %_13 = alloca %"alloc::vec::Vec<u16>", align 8
  %_12 = alloca %PngColor16, align 1
  %_11 = alloca i8*, align 8
  %_9 = alloca %"alloc::vec::Vec<PngColor>", align 8
  %_8 = alloca %"alloc::vec::Vec<alloc::vec::Vec<u8>>", align 8
  %_1 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h0e7eef2eb4527215E"()
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h0e7eef2eb4527215E"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h029252792235c5c5E"()
  br label %bb3

bb3:                                              ; preds = %bb2
  %_4 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h029252792235c5c5E"()
  br label %bb4

bb4:                                              ; preds = %bb3
  %_5 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h029252792235c5c5E"()
  br label %bb5

bb5:                                              ; preds = %bb4
  %_6 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h029252792235c5c5E"()
  br label %bb6

bb6:                                              ; preds = %bb5
  %_7 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h029252792235c5c5E"()
  br label %bb7

bb7:                                              ; preds = %bb6
  call void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h2bfcb03117ca7c77E"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* sret(%"alloc::vec::Vec<alloc::vec::Vec<u8>>") %_8)
  br label %bb8

bb8:                                              ; preds = %bb7
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h3639de4dd59308b2E"(%"alloc::vec::Vec<PngColor>"* sret(%"alloc::vec::Vec<PngColor>") %_9)
          to label %bb9 unwind label %cleanup

bb29:                                             ; preds = %bb28, %cleanup
  invoke void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h1b53ea356365f3dcE"(%"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %_8) #10
          to label %bb30 unwind label %abort

cleanup:                                          ; preds = %bb8
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb29

bb9:                                              ; preds = %bb8
  %_10 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h029252792235c5c5E"()
          to label %bb10 unwind label %cleanup1

bb28:                                             ; preds = %bb27, %cleanup1
  invoke void @"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$opng_destroy_image_info..PngColor$GT$$GT$17h41d7bc9614d513c0E"(%"alloc::vec::Vec<PngColor>"* %_9) #10
          to label %bb29 unwind label %abort

cleanup1:                                         ; preds = %bb10, %bb9
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb28

bb10:                                             ; preds = %bb9
  %13 = invoke align 1 i8* @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hc2f41b01bbadfe9eE"()
          to label %bb11 unwind label %cleanup1

bb11:                                             ; preds = %bb10
  store i8* %13, i8** %_11, align 8
  invoke void @"_ZN78_$LT$opng_destroy_image_info..PngColor16$u20$as$u20$core..default..Default$GT$7default17h2e6ab4c713dd1ff2E"(%PngColor16* sret(%PngColor16) %_12)
          to label %bb12 unwind label %cleanup2

bb27:                                             ; preds = %bb26, %cleanup2
  invoke void @"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor16$GT$$GT$$GT$17h6c126ad9e51b1454E"(i8** %_11) #10
          to label %bb28 unwind label %abort

cleanup2:                                         ; preds = %bb12, %bb11
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb27

bb12:                                             ; preds = %bb11
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17had8dbd5d2d2106f8E"(%"alloc::vec::Vec<u16>"* sret(%"alloc::vec::Vec<u16>") %_13)
          to label %bb13 unwind label %cleanup2

bb13:                                             ; preds = %bb12
  %19 = invoke align 1 i8* @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hbb3f8fcb42f7b70aE"()
          to label %bb14 unwind label %cleanup3

bb26:                                             ; preds = %bb25, %cleanup3
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h95486d4bb9cde702E"(%"alloc::vec::Vec<u16>"* %_13) #10
          to label %bb27 unwind label %abort

cleanup3:                                         ; preds = %bb13
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  %22 = extractvalue { i8*, i32 } %20, 1
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %bb26

bb14:                                             ; preds = %bb13
  store i8* %19, i8** %_14, align 8
  %25 = invoke i40 @"_ZN77_$LT$opng_destroy_image_info..PngColor8$u20$as$u20$core..default..Default$GT$7default17h4c09a7f7d7e699baE"()
          to label %bb15 unwind label %cleanup4

bb25:                                             ; preds = %bb24, %cleanup4
  invoke void @"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor8$GT$$GT$$GT$17h24e357413ed82db6E"(i8** %_14) #10
          to label %bb26 unwind label %abort

cleanup4:                                         ; preds = %bb15, %bb14
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = extractvalue { i8*, i32 } %26, 1
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %bb25

bb15:                                             ; preds = %bb14
  store i40 %25, i40* %1, align 8
  %31 = bitcast %PngColor8* %_15 to i8*
  %32 = bitcast i40* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 8 %32, i64 5, i1 false)
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h8230a9388c6528daE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %_16)
          to label %bb16 unwind label %cleanup4

bb16:                                             ; preds = %bb15
  %_17 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h029252792235c5c5E"()
          to label %bb17 unwind label %cleanup5

bb24:                                             ; preds = %bb23, %cleanup5
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h118787a1454129b1E"(%"alloc::vec::Vec<u8>"* %_16) #10
          to label %bb25 unwind label %abort

cleanup5:                                         ; preds = %bb17, %bb16
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  %35 = extractvalue { i8*, i32 } %33, 1
  %36 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %bb24

bb17:                                             ; preds = %bb16
  %38 = invoke align 1 i8* @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hc2f41b01bbadfe9eE"()
          to label %bb18 unwind label %cleanup5

bb18:                                             ; preds = %bb17
  store i8* %38, i8** %_18, align 8
  invoke void @"_ZN78_$LT$opng_destroy_image_info..PngColor16$u20$as$u20$core..default..Default$GT$7default17h2e6ab4c713dd1ff2E"(%PngColor16* sret(%PngColor16) %_19)
          to label %bb19 unwind label %cleanup6

bb23:                                             ; preds = %bb22, %cleanup6
  invoke void @"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor16$GT$$GT$$GT$17h6c126ad9e51b1454E"(i8** %_18) #10
          to label %bb24 unwind label %abort

cleanup6:                                         ; preds = %bb19, %bb18
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  %41 = extractvalue { i8*, i32 } %39, 1
  %42 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %bb23

bb19:                                             ; preds = %bb18
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h11d97cec18506531E"(%"alloc::vec::Vec<PngUnknownChunk>"* sret(%"alloc::vec::Vec<PngUnknownChunk>") %_20)
          to label %bb20 unwind label %cleanup6

bb20:                                             ; preds = %bb19
  %_21 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h029252792235c5c5E"()
          to label %bb21 unwind label %cleanup7

bb22:                                             ; preds = %cleanup7
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$opng_destroy_image_info..PngUnknownChunk$GT$$GT$17hf414dd6f92954120E"(%"alloc::vec::Vec<PngUnknownChunk>"* %_20) #10
          to label %bb23 unwind label %abort

cleanup7:                                         ; preds = %bb20
  %44 = landingpad { i8*, i32 }
          cleanup
  %45 = extractvalue { i8*, i32 } %44, 0
  %46 = extractvalue { i8*, i32 } %44, 1
  %47 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %bb22

bb21:                                             ; preds = %bb20
  %49 = bitcast %OpngImage* %0 to i32*
  store i32 %_1, i32* %49, align 1
  %50 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 1
  store i32 %_2, i32* %50, align 1
  %51 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 2
  store i32 %_3, i32* %51, align 1
  %52 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 3
  store i32 %_4, i32* %52, align 1
  %53 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 4
  store i32 %_5, i32* %53, align 1
  %54 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 5
  store i32 %_6, i32* %54, align 1
  %55 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 6
  store i32 %_7, i32* %55, align 1
  %56 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 7
  %57 = bitcast %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %56 to i8*
  %58 = bitcast %"alloc::vec::Vec<alloc::vec::Vec<u8>>"* %_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %57, i8* align 8 %58, i64 24, i1 false)
  %59 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 8
  %60 = bitcast %"alloc::vec::Vec<PngColor>"* %59 to i8*
  %61 = bitcast %"alloc::vec::Vec<PngColor>"* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %60, i8* align 8 %61, i64 24, i1 false)
  %62 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 9
  store i32 %_10, i32* %62, align 1
  %63 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 10
  %64 = load i8*, i8** %_11, align 8, !align !7
  store i8* %64, i8** %63, align 1
  %65 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 11
  %66 = bitcast %PngColor16* %65 to i8*
  %67 = bitcast %PngColor16* %_12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %66, i8* align 1 %67, i64 9, i1 false)
  %68 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 12
  %69 = bitcast %"alloc::vec::Vec<u16>"* %68 to i8*
  %70 = bitcast %"alloc::vec::Vec<u16>"* %_13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 8 %70, i64 24, i1 false)
  %71 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 13
  %72 = load i8*, i8** %_14, align 8, !align !7
  store i8* %72, i8** %71, align 1
  %73 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 14
  %74 = bitcast %PngColor8* %73 to i8*
  %75 = bitcast %PngColor8* %_15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %75, i64 5, i1 false)
  %76 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 15
  %77 = bitcast %"alloc::vec::Vec<u8>"* %76 to i8*
  %78 = bitcast %"alloc::vec::Vec<u8>"* %_16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 8 %78, i64 24, i1 false)
  %79 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 16
  store i32 %_17, i32* %79, align 1
  %80 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 17
  %81 = load i8*, i8** %_18, align 8, !align !7
  store i8* %81, i8** %80, align 1
  %82 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 18
  %83 = bitcast %PngColor16* %82 to i8*
  %84 = bitcast %PngColor16* %_19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %83, i8* align 1 %84, i64 9, i1 false)
  %85 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 19
  %86 = bitcast %"alloc::vec::Vec<PngUnknownChunk>"* %85 to i8*
  %87 = bitcast %"alloc::vec::Vec<PngUnknownChunk>"* %_20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %86, i8* align 8 %87, i64 24, i1 false)
  %88 = getelementptr inbounds %OpngImage, %OpngImage* %0, i32 0, i32 20
  store i32 %_21, i32* %88, align 1
  ret void

abort:                                            ; preds = %bb22, %bb23, %bb24, %bb25, %bb26, %bb27, %bb28, %bb29
  %89 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb30:                                             ; preds = %bb29
  %90 = bitcast { i8*, i32 }* %2 to i8**
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = insertvalue { i8*, i32 } undef, i8* %91, 0
  %95 = insertvalue { i8*, i32 } %94, i32 %93, 1
  resume { i8*, i32 } %95
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #9

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #10 = { noinline }
attributes #11 = { noinline noreturn nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 0, i64 -9223372036854775807}
!3 = !{i64 1, i64 -9223372036854775807}
!4 = !{i64 1, i64 0}
!5 = !{i8 0, i8 2}
!6 = !{i64 0, i64 2}
!7 = !{i64 1}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_destroy_image_info.rs.bc", hash: (151496639, 3075862498, 2415778067, 873427364, 2230672339))
^1 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2410c0479fcaff8bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 58641095604441349
^2 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h0df160c98b978d43E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^103), (callee: ^119))))) ; guid = 103192410663759377
^3 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h43a174fb5bc559b7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 438152757260783119
^4 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^5 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h48168700ed6ef172E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^36), (callee: ^42))))) ; guid = 640053713511194865
^6 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he8d1a0a97d8f24edE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^166), (callee: ^109))))) ; guid = 665356342410430927
^7 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5fa6908d26fcb396E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^18), (callee: ^42))))) ; guid = 922623848414876141
^8 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h14af4bb7c002e0a3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1067891839468034233
^9 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17he077bab768efdccaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^108), (callee: ^84))))) ; guid = 1341829405839744866
^10 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17he84acfd70ec13214E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^16))))) ; guid = 1412066111209226192
^11 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3186ae740dd6ba22E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 1412821066153506586
^12 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17he1b26eb90784842eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^79))))) ; guid = 1609699186980207269
^13 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2856865d439a5957E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^106), (callee: ^140), (callee: ^125), (callee: ^126)), refs: (^138)))) ; guid = 1695967308980018588
^14 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5acd063efa5fbec4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^34), (callee: ^84))))) ; guid = 1717055490217185836
^15 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h20db134a3d75ea0fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^95), (callee: ^44))))) ; guid = 1743117144649488438
^16 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h0ca0b0033c6cd648E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^157))))) ; guid = 1777183333769537853
^17 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9a6f52952adfa0dfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^18))))) ; guid = 1871618114381969115
^18 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc9bdd225ff920bfeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 1985149202524275191
^19 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h62f29eef092459fcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^17), (callee: ^42))))) ; guid = 2317614931000045803
^20 = gv: (name: "alloc231", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2478128617554311807
^21 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h83b17874d4c8d1fdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^8))))) ; guid = 2482775717746120853
^22 = gv: (name: "_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hbb3f8fcb42f7b70aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 2511280908467788363
^23 = gv: (name: "_ZN77_$LT$opng_destroy_image_info..OpngImage$u20$as$u20$core..default..Default$GT$7default17hfa2b2fa7bf674638E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 193, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^131), (callee: ^164), (callee: ^158), (callee: ^28), (callee: ^68), (callee: ^122), (callee: ^52), (callee: ^124), (callee: ^72), (callee: ^93), (callee: ^22), (callee: ^170), (callee: ^37), (callee: ^111), (callee: ^78), (callee: ^69), (callee: ^136), (callee: ^31), (callee: ^174)), refs: (^145)))) ; guid = 2574237762102588745
^24 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^25 = gv: (name: "_ZN45_$LT$u8$u20$as$u20$core..default..Default$GT$7default17hf767ca7b54e650a8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 2704159894352116361
^26 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h8b6d94c304c54ddeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^80))))) ; guid = 2888069995094366629
^27 = gv: (name: "_ZN46_$LT$u16$u20$as$u20$core..default..Default$GT$7default17h5a290940b075862bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 3138549681103621105
^28 = gv: (name: "_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h3639de4dd59308b2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^96))))) ; guid = 3145581025900170738
^29 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hc9eeb04b4bb5d2bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^159), (callee: ^42))))) ; guid = 3163515005832313841
^30 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h74aaeb9b6cb822d3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^166), (callee: ^109))))) ; guid = 3165446744444268826
^31 = gv: (name: "_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$opng_destroy_image_info..PngUnknownChunk$GT$$GT$17hf414dd6f92954120E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^76), (callee: ^85), (callee: ^174)), refs: (^145)))) ; guid = 3225189302293762703
^32 = gv: (name: "_ZN4core3ptr55drop_in_place$LT$opng_destroy_image_info..OpngImage$GT$17h2115ef767b5adb87E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 160, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^68), (callee: ^122), (callee: ^174), (callee: ^72), (callee: ^170), (callee: ^111), (callee: ^69), (callee: ^31)), refs: (^145)))) ; guid = 3280527278440632053
^33 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h29bf188838f2ee7fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^157), (callee: ^42))))) ; guid = 3321045603198783446
^34 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h03a52559339b8816E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^110), (callee: ^42))))) ; guid = 3426656164851968416
^35 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd3c0ba62c1f98476E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^107))))) ; guid = 3546946430472414354
^36 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h95d0fdeec1b7c01eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 3588558500116443161
^37 = gv: (name: "_ZN77_$LT$opng_destroy_image_info..PngColor8$u20$as$u20$core..default..Default$GT$7default17h4c09a7f7d7e699baE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, calls: ((callee: ^25))))) ; guid = 3649180559889072878
^38 = gv: (name: "_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h24ab81d560d56e76E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^55), (callee: ^71))))) ; guid = 3653599300161015791
^39 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hd4a9618a6f741c78E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^117))))) ; guid = 3784280437217775693
^40 = gv: (name: "_ZN5alloc3vec12Vec$LT$T$GT$3new17hc66a54048118be9eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, refs: (^63)))) ; guid = 4048026989994461729
^41 = gv: (name: "_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor16$GT$$GT$17h7171ba8a0edc29b4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^121), (callee: ^174)), refs: (^145)))) ; guid = 4141090788955958530
^42 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb13f014654d90d8bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 4173824314242369715
^43 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17hb7c8e9740e8e5c48E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^92))))) ; guid = 4205292368713628917
^44 = gv: (name: "_ZN4core3ptr71drop_in_place$LT$$u5b$opng_destroy_image_info..PngUnknownChunk$u5d$$GT$17hd11ab9b7a6dab5a1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 72, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^75), (callee: ^174)), refs: (^145)))) ; guid = 4254085969504055518
^45 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h86b41d7c48a490c6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^134), (callee: ^140), (callee: ^155), (callee: ^126)), refs: (^138)))) ; guid = 4412593126674273320
^46 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5d0524c97bc4c06bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^29), (callee: ^84))))) ; guid = 4488716472215512232
^47 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^48 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h62a310fa017f7ba2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 4658512982805735334
^49 = gv: (name: "anon.fb7107aad5b1427bba4f0e30585f27c1.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4877994256396453182
^50 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hece650624b7dcb3bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^10), (callee: ^30))))) ; guid = 5133703979595060790
^51 = gv: (name: "anon.fb7107aad5b1427bba4f0e30585f27c1.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5247424126476366678
^52 = gv: (name: "_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hc2f41b01bbadfe9eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 5250372592706960924
^53 = gv: (name: "_ZN4core5alloc6layout6Layout5align17hd0839c396f1c07c2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^35), (callee: ^54))))) ; guid = 5257763379989388952
^54 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h1d7491e78bf01b8cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 5384597649469482347
^55 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h6cd64aaae82ee978E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^139), (callee: ^144))))) ; guid = 5483810924540837758
^56 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hd321121685a4e774E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^168), (callee: ^140), (callee: ^98), (callee: ^126)), refs: (^138)))) ; guid = 5517409967102682663
^57 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h7cb54df0d7d43db8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 5632069624264746163
^58 = gv: (name: "_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u16$GT$$GT$17he1031437b2a64ea5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^66))))) ; guid = 5783516672020481637
^59 = gv: (name: "_ZN4core5slice3raw18from_raw_parts_mut17h32825c6a78d2e1f9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^83))))) ; guid = 5966021754849775094
^60 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hd2bc93f03369ff57E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 6082175955567011304
^61 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9829f7d078170e06E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^101), (callee: ^133))))) ; guid = 6121945877396096683
^62 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h6b938a674088c989E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 6145875291756032613
^63 = gv: (name: "anon.fb7107aad5b1427bba4f0e30585f27c1.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6176181286250868864
^64 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h0104524deb25630dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 6191279301444950527
^65 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hae9b200055edd035E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^160), (callee: ^84))))) ; guid = 6226629791934748802
^66 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52786e30a3e22b6dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^45), (callee: ^133))))) ; guid = 6381409912164399577
^67 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^68 = gv: (name: "_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h1b53ea356365f3dcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^169), (callee: ^128), (callee: ^174)), refs: (^145)))) ; guid = 6523795859529973127
^69 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h118787a1454129b1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^172), (callee: ^104), (callee: ^174)), refs: (^145)))) ; guid = 6546003098401668894
^70 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^71 = gv: (name: "_ZN4core5slice3raw18from_raw_parts_mut17ha54d81800b7d2e29E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^100))))) ; guid = 6767853953123649032
^72 = gv: (name: "_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor16$GT$$GT$$GT$17h6c126ad9e51b1454E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^41))))) ; guid = 6806319835246433381
^73 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^74 = gv: (name: "_ZN4core5slice3raw18from_raw_parts_mut17h2d86b9be3d4c8dcfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^21))))) ; guid = 6847586408317044211
^75 = gv: (name: "_ZN4core3ptr61drop_in_place$LT$opng_destroy_image_info..PngUnknownChunk$GT$17h69bd93c748c6cfdeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^69))))) ; guid = 6903813338729560098
^76 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3767a1c997d9d81E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^86), (callee: ^142), (callee: ^44))))) ; guid = 7138606683067027820
^77 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h702cbfd053c6e41aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 7150385385656219758
^78 = gv: (name: "_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h8230a9388c6528daE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^40))))) ; guid = 7361740710368616996
^79 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h8178ce986a94f183E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^1))))) ; guid = 7474799036531752553
^80 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h196284875beef18fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 7512086814718000064
^81 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdc75469196c27b68E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 7687064008428116224
^82 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17hc59efcb452d4438bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^141), (callee: ^132))))) ; guid = 7695529493742255826
^83 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h4b3a0347aa310ff1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^62))))) ; guid = 8339838075050813026
^84 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h62481c9e5cb9a194E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 8617807247445067592
^85 = gv: (name: "_ZN4core3ptr91drop_in_place$LT$alloc..raw_vec..RawVec$LT$opng_destroy_image_info..PngUnknownChunk$GT$$GT$17hfbc42122608d87fbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^99))))) ; guid = 8766776595785403173
^86 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h50cc4f8fdcc37132E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^171), (callee: ^156))))) ; guid = 8872747124799045829
^87 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h0864a72908a635fbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^94))))) ; guid = 8981869532173980061
^88 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hadb343f758bc6cc8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^36))))) ; guid = 9105268443193110067
^89 = gv: (name: "_ZN5alloc3vec12Vec$LT$T$GT$3new17hb2aaddd70f3fc99cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, refs: (^63)))) ; guid = 9312164550011902727
^90 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17h5d42ac0fcddc06dbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^38))))) ; guid = 9365842161705598978
^91 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17h4ca9a7525cee6972E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^143))))) ; guid = 9415669434787814577
^92 = gv: (name: "_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h940c8620be07283eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^2), (callee: ^167))))) ; guid = 9473197834312888078
^93 = gv: (name: "_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17had8dbd5d2d2106f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^151))))) ; guid = 9495000127429108266
^94 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hb06ca2d0da0c84a3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 9552456801406606193
^95 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17heaaef7158f58d81aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^116))))) ; guid = 9655628380980723574
^96 = gv: (name: "_ZN5alloc3vec12Vec$LT$T$GT$3new17h46cf40c7af046e49E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, refs: (^63)))) ; guid = 9809888839582418566
^97 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h7249d9b550b685caE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^127), (callee: ^140), (callee: ^14), (callee: ^126)), refs: (^138)))) ; guid = 9834852312672572108
^98 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h25fc2eda9d21a889E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^33), (callee: ^84))))) ; guid = 9844078176990153819
^99 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06cf10b90211b259E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^97), (callee: ^133))))) ; guid = 9865152408246082710
^100 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h3fa28cf7bb4427bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^77))))) ; guid = 9977108258270804953
^101 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h1f0408a179cacad1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^146), (callee: ^140), (callee: ^46), (callee: ^126)), refs: (^138)))) ; guid = 10026681791054690318
^102 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h5012255a20033e5eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 10057309218555606755
^103 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h818b3dc3e3a97423E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^105))))) ; guid = 10066200606929148842
^104 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2127b2db5024cccE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^173))))) ; guid = 10229285924732617623
^105 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hfd14fee88d0f3803E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^159))))) ; guid = 10262617872891320707
^106 = gv: (name: "_ZN4core5alloc6layout6Layout5array17ha1665d3dc46eb4b9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^102), (callee: ^64), (callee: ^11), (callee: ^161), (callee: ^87)), refs: (^123)))) ; guid = 10322180518016700125
^107 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h27e534c057cb1c78E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 10473830452579942047
^108 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h07839e21262a2199E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^81), (callee: ^42))))) ; guid = 10550049341381689476
^109 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hb4d474cd58647806E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 10759410130683867367
^110 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb631b834b97093a6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 10958845685476848821
^111 = gv: (name: "_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor8$GT$$GT$$GT$17h24e357413ed82db6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^130))))) ; guid = 11106494334986211230
^112 = gv: (name: "_ZN5alloc5alloc8box_free17had18188fea3a19baE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^12), (callee: ^87), (callee: ^65), (callee: ^19), (callee: ^133)), refs: (^145)))) ; guid = 11312707002455196249
^113 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf3ebdf7763b0b3c4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^129), (callee: ^21))))) ; guid = 11374325986570987736
^114 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$8is_empty17h9213b525428a69bdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^60))))) ; guid = 11450066205291570513
^115 = gv: (name: "_ZN4core5slice3raw18from_raw_parts_mut17h9825d22e47c03daaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^142))))) ; guid = 11813435223394300982
^116 = gv: (name: "_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hc1e15c0509c1818cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^86), (callee: ^115))))) ; guid = 11869396242301551546
^117 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h9bc2d6720a13ed94E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^81))))) ; guid = 11876464079390673500
^118 = gv: (name: "_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h70901b9dc135450dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^50), (callee: ^59))))) ; guid = 12008907601951022730
^119 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hefebb5c54173a5fdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^166), (callee: ^109))))) ; guid = 12067047846859436484
^120 = gv: (name: "alloc229", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12424081595889266955
^121 = gv: (name: "_ZN5alloc5alloc8box_free17he174dd5cef50148eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^39), (callee: ^87), (callee: ^9), (callee: ^19), (callee: ^133)), refs: (^145)))) ; guid = 12555580033578679043
^122 = gv: (name: "_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$opng_destroy_image_info..PngColor$GT$$GT$17h41d7bc9614d513c0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^175), (callee: ^154), (callee: ^174)), refs: (^145)))) ; guid = 12624032193097724410
^123 = gv: (name: "alloc230", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^120)))) ; guid = 12690174415016548564
^124 = gv: (name: "_ZN78_$LT$opng_destroy_image_info..PngColor16$u20$as$u20$core..default..Default$GT$7default17h2e6ab4c713dd1ff2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 21, calls: ((callee: ^25), (callee: ^27))))) ; guid = 12747435801644391602
^125 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17ha0e0acfaa0743acfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^7), (callee: ^84))))) ; guid = 12819837112965011000
^126 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he9d3b569c482fe77E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^19))))) ; guid = 12862603364693353715
^127 = gv: (name: "_ZN4core5alloc6layout6Layout5array17ha05d4f0fb987104bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^102), (callee: ^64), (callee: ^11), (callee: ^161), (callee: ^87)), refs: (^123)))) ; guid = 12867676305156714490
^128 = gv: (name: "_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h8c94402b950241bfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^152))))) ; guid = 12999994260674204373
^129 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h476b1c0e2598f6d7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^148), (callee: ^6))))) ; guid = 13170623425161070570
^130 = gv: (name: "_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$opng_destroy_image_info..PngColor8$GT$$GT$17ha2e4e977ab20cdceE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^112), (callee: ^174)), refs: (^145)))) ; guid = 13244900847098152564
^131 = gv: (name: "_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h0e7eef2eb4527215E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13328738896792016408
^132 = gv: (name: "_ZN4core3ptr56drop_in_place$LT$$u5b$alloc..vec..Vec$LT$u8$GT$$u5d$$GT$17h35ec4ad24a0e3df8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 72, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^69), (callee: ^174)), refs: (^145)))) ; guid = 13393512764936225170
^133 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc4b7055a99b46941E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^57), (callee: ^18), (callee: ^137))))) ; guid = 13701800618303323439
^134 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h40e06b7d70acf385E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^102), (callee: ^64), (callee: ^11), (callee: ^161), (callee: ^87)), refs: (^123)))) ; guid = 13776103029260550401
^135 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h9a45dda61d35f92fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^91))))) ; guid = 13860278331427737598
^136 = gv: (name: "_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h11d97cec18506531E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^89))))) ; guid = 14036927832526232336
^137 = gv: (name: "_ZN5alloc5alloc7dealloc17h44e557a23fc17d77E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^57), (callee: ^53), (callee: ^47))))) ; guid = 14054107149687022824
^138 = gv: (name: "alloc232", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^20)))) ; guid = 14092734945907815640
^139 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h5020729aea1cd35aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^17))))) ; guid = 14273341369287706022
^140 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hfebd514f30df6fbbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^3)), refs: (^145)))) ; guid = 14277155328706817471
^141 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17hf1964805c81cdbf6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^118))))) ; guid = 14419377588940061269
^142 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17hec555da77fc019e5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^163))))) ; guid = 14547446879659595441
^143 = gv: (name: "_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h1bf8e51dd59cbd7fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^129), (callee: ^74))))) ; guid = 14743624342708412407
^144 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h3b1fabdc2bb73b9aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^166), (callee: ^109))))) ; guid = 14779708553805555165
^145 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^146 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h52f2b8fc5dcc762cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^102), (callee: ^64), (callee: ^11), (callee: ^161), (callee: ^87)), refs: (^123)))) ; guid = 14846100165798332759
^147 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h25ac8fdaf882cfb3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^90))))) ; guid = 15011547975525611542
^148 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h113575125bcaa693E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^88))))) ; guid = 15042716113161082243
^149 = gv: (name: "_ZN5alloc3vec12Vec$LT$T$GT$3new17h41fe3e17bedfc1d7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, refs: (^49)))) ; guid = 15297292721453845697
^150 = gv: (name: "destroy_image_info", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^114), (callee: ^82), (callee: ^165), (callee: ^147), (callee: ^135), (callee: ^15), (callee: ^23), (callee: ^32)), refs: (^145)))) ; guid = 15334839969016615400
^151 = gv: (name: "_ZN5alloc3vec12Vec$LT$T$GT$3new17h27f9d02323b19618E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, refs: (^51)))) ; guid = 15470401157720460858
^152 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6239dc9580b897aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^56), (callee: ^133))))) ; guid = 15567032008601592370
^153 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 27, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^23), (callee: ^150), (callee: ^32), (callee: ^174)), refs: (^145)))) ; guid = 15822663052811949562
^154 = gv: (name: "_ZN4core3ptr84drop_in_place$LT$alloc..raw_vec..RawVec$LT$opng_destroy_image_info..PngColor$GT$$GT$17h69ed3ffeb59a5616E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^61))))) ; guid = 15842574761420852158
^155 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h2cc790c670edd9b5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^5), (callee: ^84))))) ; guid = 15925982835182228664
^156 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hb3b186cfa7fc9fcdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^166), (callee: ^109))))) ; guid = 15995845865859033840
^157 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5d98a129c2b70571E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 16031958720293448698
^158 = gv: (name: "_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h2bfcb03117ca7c77E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^149))))) ; guid = 16138317728818671337
^159 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h10c842441d244f95E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 16496397161411115627
^160 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h4f4ca3a6c2d8b503E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^1), (callee: ^42))))) ; guid = 16670900672173842401
^161 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4f2960699860de18E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^48))))) ; guid = 16753078387728572266
^162 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h0ab5985a8c5851b6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^110))))) ; guid = 17115714032171776275
^163 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h32cef09b8cf2118dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 17137961050154727966
^164 = gv: (name: "_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h029252792235c5c5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 17297272351584505386
^165 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h66754413b3bafcf5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^43))))) ; guid = 17372205455120850236
^166 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h5359c5abeb74db7dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 17439258385021405103
^167 = gv: (name: "_ZN4core5slice3raw18from_raw_parts_mut17he6cbb0cb901242edE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^26))))) ; guid = 17455880950416763914
^168 = gv: (name: "_ZN4core5alloc6layout6Layout5array17hea9f52019bfe2100E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^102), (callee: ^64), (callee: ^11), (callee: ^161), (callee: ^87)), refs: (^123)))) ; guid = 17492343008830873200
^169 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h07ff339bfde4dde7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^50), (callee: ^83), (callee: ^132))))) ; guid = 17515833407740337411
^170 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h95486d4bb9cde702E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^113), (callee: ^58), (callee: ^174)), refs: (^145)))) ; guid = 17557976511553033944
^171 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h6cc045db639062dbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^162))))) ; guid = 18091752061728527756
^172 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3dda022c8b52e6cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^55), (callee: ^100))))) ; guid = 18223507661267519115
^173 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf85a767ee731c966E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^13), (callee: ^133))))) ; guid = 18362703746742177837
^174 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^175 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacd11ac97e34fe47E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^2), (callee: ^26))))) ; guid = 18439015790785991825
^176 = blockcount: 666
