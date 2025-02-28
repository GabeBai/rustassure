; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_initialize.rs.bc'
source_filename = "opng_initialize.636ff733-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%OpngSummary = type <{ i32, i32, i32, i32 }>
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%OpngOptions = type <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %"core::option::Option<alloc::string::String>", %"core::option::Option<alloc::string::String>", %"core::option::Option<alloc::string::String>", i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>
%"core::option::Option<alloc::string::String>" = type { {}*, [2 x i64] }
%"core::option::Option<alloc::string::String>::Some" = type { %"alloc::string::String" }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"alloc::alloc::Global" = type {}
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%OpngUi = type <{ i64*, i64*, i64*, i64* }>
%OpngEngine = type <{ i32 }>
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc142 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc143 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc144 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc145 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc144, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17had37e25b53807404E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17ha8bf093a9c9782a4E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17had277611bb67c82bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h5bd63be821332c8dE"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17haadfdc26764206beE"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h2c155eef3a8dc617E"()
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
define void @_ZN4core10intrinsics11write_bytes17h7d9dc2c1dc51844eE(%OpngSummary* %dst, i8 %val, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 16, %count
  %1 = bitcast %OpngSummary* %dst to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hdcb291de027d31d1E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !3, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h81b923534759d617E(i64 %_3), !range !4
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h4fe2862012805200E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !3, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h135427b0481ab0ddE"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h81b923534759d617E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !4, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h40cce6241c095cb9E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hec70c97a896dc067E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h6f6eb774a7b77032E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1aa4f5ab4c61824eE"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hff88675dfca72feaE"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hff88675dfca72feaE"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb769ed5f0288e3bdE"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hece0777c09419d48E"({ i8*, i64 }* %1) #10
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
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hece0777c09419d48E"({ i8*, i64 }* %7)
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
define void @"_ZN4core3ptr49drop_in_place$LT$opng_initialize..OpngOptions$GT$17hc60c6d8cbc9826afE"(%OpngOptions* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_6 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_5 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_4 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_3 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_2 = alloca %"core::option::Option<alloc::string::String>", align 8
  %1 = getelementptr inbounds %OpngOptions, %OpngOptions* %_1, i32 0, i32 10
  %2 = bitcast %"core::option::Option<alloc::string::String>"* %_7 to i8*
  %3 = bitcast %"core::option::Option<alloc::string::String>"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 1 %3, i64 24, i1 false)
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h7b2adba2be83bcb3E"(%"core::option::Option<alloc::string::String>"* %_7)
          to label %bb7 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %4 = getelementptr inbounds %OpngOptions, %OpngOptions* %_1, i32 0, i32 11
  %5 = bitcast %"core::option::Option<alloc::string::String>"* %_3 to i8*
  %6 = bitcast %"core::option::Option<alloc::string::String>"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %6, i64 24, i1 false)
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h7b2adba2be83bcb3E"(%"core::option::Option<alloc::string::String>"* %_3) #10
          to label %bb4 unwind label %abort

cleanup:                                          ; preds = %start
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb3

bb7:                                              ; preds = %start
  %12 = getelementptr inbounds %OpngOptions, %OpngOptions* %_1, i32 0, i32 11
  %13 = bitcast %"core::option::Option<alloc::string::String>"* %_6 to i8*
  %14 = bitcast %"core::option::Option<alloc::string::String>"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 1 %14, i64 24, i1 false)
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h7b2adba2be83bcb3E"(%"core::option::Option<alloc::string::String>"* %_6)
          to label %bb6 unwind label %cleanup1

abort:                                            ; preds = %bb2, %bb3
  %15 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb4:                                              ; preds = %bb3
  br label %bb2

bb2:                                              ; preds = %cleanup1, %bb4
  %16 = getelementptr inbounds %OpngOptions, %OpngOptions* %_1, i32 0, i32 12
  %17 = bitcast %"core::option::Option<alloc::string::String>"* %_2 to i8*
  %18 = bitcast %"core::option::Option<alloc::string::String>"* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 1 %18, i64 24, i1 false)
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h7b2adba2be83bcb3E"(%"core::option::Option<alloc::string::String>"* %_2) #10
          to label %bb1 unwind label %abort

cleanup1:                                         ; preds = %bb7
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %bb2

bb6:                                              ; preds = %bb7
  %24 = getelementptr inbounds %OpngOptions, %OpngOptions* %_1, i32 0, i32 12
  %25 = bitcast %"core::option::Option<alloc::string::String>"* %_5 to i8*
  %26 = bitcast %"core::option::Option<alloc::string::String>"* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 1 %26, i64 24, i1 false)
  call void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h7b2adba2be83bcb3E"(%"core::option::Option<alloc::string::String>"* %_5)
  br label %bb5

bb1:                                              ; preds = %bb2
  %27 = bitcast { i8*, i32 }* %0 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %32 = insertvalue { i8*, i32 } %31, i32 %30, 1
  resume { i8*, i32 } %32

bb5:                                              ; preds = %bb6
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hece0777c09419d48E"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8284634d2924f8b7E"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5cdbbd25b3dafd59E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5edbb6df693df16fE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h5bd63be821332c8dE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17ha8bf093a9c9782a4E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9f8e3037088847baE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h7b2adba2be83bcb3E"(%"core::option::Option<alloc::string::String>"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"core::option::Option<alloc::string::String>"* %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %4 = bitcast %"core::option::Option<alloc::string::String>"* %_1 to %"core::option::Option<alloc::string::String>::Some"*
  %5 = bitcast %"core::option::Option<alloc::string::String>::Some"* %4 to %"alloc::string::String"*
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1aa4f5ab4c61824eE"(%"alloc::string::String"* %5)
  br label %bb1
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h0bd4b3abba287faaE"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f04c720bdba34d5E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17he5763b88bd73efcfE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h0bd4b3abba287faaE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h6f6eb774a7b77032E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17he5763b88bd73efcfE({}* %data_address) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17had277611bb67c82bE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5edbb6df693df16fE"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9f8e3037088847baE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17had277611bb67c82bE"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9f8e3037088847baE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17hb1ef03c3fa5f6f17E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9ad64bf2a68b1a01E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h4fe2862012805200E(i64 %align), !range !3
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
define internal i64 @_ZN4core5alloc6layout6Layout4size17h01aeeb0ec35c93f1E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h71e0b43916e6613eE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !3, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hdcb291de027d31d1E(i64 %_3), !range !4
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h40cce6241c095cb9E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h7aa0b13e46736a33E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h135427b0481ab0ddE"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h387b0d379aa13502E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h1cb260df8671a380E"(i64 %_4.0, i64 %_4.1)
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17haadfdc26764206beE"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc143 to %"core::panic::location::Location"*))
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
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9ad64bf2a68b1a01E(i64 %val, i64 1)
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
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h387b0d379aa13502E"(i64 %0, i64 %1) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_none17h195fd02eaa463ce0E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_2 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hc363886fda7c87fbE"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_2, true
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_none17h2936583a78e6318aE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_2 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hf50aecb792e8c696E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_2, true
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_none17h540868e93b73779aE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_2 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h4ba85c90b6933104E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_2, true
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h4ba85c90b6933104E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast i64** %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_2, 1
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %0, align 1, !range !5, !noundef !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hc363886fda7c87fbE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast i64** %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_2, 1
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %0, align 1, !range !5, !noundef !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hf50aecb792e8c696E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast i64** %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_2, 1
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %0, align 1, !range !5, !noundef !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h88f2f4018d43bd33E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  invoke void @_ZN4core4hint21unreachable_unchecked17hb1ef03c3fa5f6f17E() #12
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
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h2c155eef3a8dc617E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6d8a4d0c81b53bbeE"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17had37e25b53807404E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hea57af3831e838f8E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h23af3d352dbe4a8fE"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f04c720bdba34d5E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17h8bde7d8168d907c9E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h01aeeb0ec35c93f1E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h71e0b43916e6613eE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #13
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4608ec8f4dae234dE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
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
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h7aa0b13e46736a33E(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h88f2f4018d43bd33E"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc145 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5cdbbd25b3dafd59E"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6d8a4d0c81b53bbeE"(i8* %_11)
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
define i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h23af3d352dbe4a8fE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17ha8bf093a9c9782a4E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd5c08a7a3fb167e2E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h01aeeb0ec35c93f1E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9f8e3037088847baE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !3, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h8bde7d8168d907c9E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h514a4be0ff0cc265E"(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %0, %"core::option::Option<alloc::string::String>"* align 8 %self) unnamed_addr #0 {
start:
  %_4 = alloca %"alloc::string::String", align 8
  %1 = bitcast %"core::option::Option<alloc::string::String>"* %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %4 = bitcast %"core::option::Option<alloc::string::String>"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false)
  %5 = bitcast %"core::option::Option<alloc::string::String>"* %0 to {}**
  store {}* null, {}** %5, align 8
  br label %bb5

bb3:                                              ; preds = %start
  %6 = bitcast %"core::option::Option<alloc::string::String>"* %self to %"core::option::Option<alloc::string::String>::Some"*
  %x = bitcast %"core::option::Option<alloc::string::String>::Some"* %6 to %"alloc::string::String"*
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17hbad99c7f0b99428bE"(%"alloc::string::String"* sret(%"alloc::string::String") %_4, %"alloc::string::String"* align 8 %x)
  br label %bb4

bb4:                                              ; preds = %bb3
  %7 = bitcast %"core::option::Option<alloc::string::String>"* %0 to %"core::option::Option<alloc::string::String>::Some"*
  %8 = bitcast %"core::option::Option<alloc::string::String>::Some"* %7 to %"alloc::string::String"*
  %9 = bitcast %"alloc::string::String"* %8 to i8*
  %10 = bitcast %"alloc::string::String"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 24, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb4, %bb1
  ret void
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb769ed5f0288e3bdE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hea57af3831e838f8E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hec70c97a896dc067E(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8284634d2924f8b7E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4608ec8f4dae234dE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
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
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd5c08a7a3fb167e2E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h1cb260df8671a380E"(i64 %0, i64 %1) unnamed_addr #0 {
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
define i32 @opng_initialize(%OpngOptions* align 1 %init_options, %OpngUi* align 1 %init_ui) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %engine = alloca %OpngEngine, align 1
  %summary = alloca %OpngSummary, align 1
  %options = alloca %OpngOptions, align 1
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %usr_panic = alloca i64*, align 8
  %usr_progress = alloca i64*, align 8
  %usr_print_cntrl = alloca i64*, align 8
  %usr_printf = alloca i64*, align 8
  %1 = alloca i32, align 4
  %2 = bitcast %OpngUi* %init_ui to i64**
  %3 = load i64*, i64** %2, align 1
  store i64* %3, i64** %usr_printf, align 8
  %4 = getelementptr inbounds %OpngUi, %OpngUi* %init_ui, i32 0, i32 1
  %5 = load i64*, i64** %4, align 1
  store i64* %5, i64** %usr_print_cntrl, align 8
  %6 = getelementptr inbounds %OpngUi, %OpngUi* %init_ui, i32 0, i32 2
  %7 = load i64*, i64** %6, align 1
  store i64* %7, i64** %usr_progress, align 8
  %8 = getelementptr inbounds %OpngUi, %OpngUi* %init_ui, i32 0, i32 3
  %9 = load i64*, i64** %8, align 1
  store i64* %9, i64** %usr_panic, align 8
  %_10 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_none17h195fd02eaa463ce0E"(i64** align 8 %usr_printf)
  br label %bb10

bb10:                                             ; preds = %start
  br i1 %_10, label %bb7, label %bb8

bb8:                                              ; preds = %bb10
  %_12 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_none17h540868e93b73779aE"(i64** align 8 %usr_print_cntrl)
  br label %bb11

bb7:                                              ; preds = %bb10
  store i8 1, i8* %_9, align 1
  br label %bb9

bb9:                                              ; preds = %bb11, %bb7
  %10 = load i8, i8* %_9, align 1, !range !5, !noundef !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb4, label %bb5

bb11:                                             ; preds = %bb8
  %12 = zext i1 %_12 to i8
  store i8 %12, i8* %_9, align 1
  br label %bb9

bb5:                                              ; preds = %bb9
  %_14 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_none17h2936583a78e6318aE"(i64** align 8 %usr_progress)
  br label %bb12

bb4:                                              ; preds = %bb9
  store i8 1, i8* %_8, align 1
  br label %bb6

bb6:                                              ; preds = %bb12, %bb4
  %13 = load i8, i8* %_8, align 1, !range !5, !noundef !1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb1, label %bb2

bb12:                                             ; preds = %bb5
  %15 = zext i1 %_14 to i8
  store i8 %15, i8* %_8, align 1
  br label %bb6

bb2:                                              ; preds = %bb6
  %_16 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_none17h195fd02eaa463ce0E"(i64** align 8 %usr_panic)
  br label %bb13

bb1:                                              ; preds = %bb6
  store i8 1, i8* %_7, align 1
  br label %bb3

bb3:                                              ; preds = %bb13, %bb1
  %16 = load i8, i8* %_7, align 1, !range !5, !noundef !1
  %17 = trunc i8 %16 to i1
  br i1 %17, label %bb14, label %bb15

bb13:                                             ; preds = %bb2
  %18 = zext i1 %_16 to i8
  store i8 %18, i8* %_7, align 1
  br label %bb3

bb15:                                             ; preds = %bb3
  call void @"_ZN67_$LT$opng_initialize..OpngOptions$u20$as$u20$core..clone..Clone$GT$5clone17h6efacfa260ec8d85E"(%OpngOptions* sret(%OpngOptions) %options, %OpngOptions* align 1 %init_options)
  br label %bb16

bb14:                                             ; preds = %bb3
  store i32 -1, i32* %1, align 4
  br label %bb20

bb20:                                             ; preds = %bb19, %bb14
  %19 = load i32, i32* %1, align 4
  ret i32 %19

bb16:                                             ; preds = %bb15
  %20 = getelementptr inbounds %OpngOptions, %OpngOptions* %options, i32 0, i32 18
  %_20 = load i32, i32* %20, align 1
  %21 = icmp eq i32 %_20, 0
  br i1 %21, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  %22 = getelementptr inbounds %OpngOptions, %OpngOptions* %options, i32 0, i32 14
  store i32 1, i32* %22, align 1
  %23 = getelementptr inbounds %OpngOptions, %OpngOptions* %options, i32 0, i32 15
  store i32 1, i32* %23, align 1
  %24 = getelementptr inbounds %OpngOptions, %OpngOptions* %options, i32 0, i32 16
  store i32 1, i32* %24, align 1
  %25 = getelementptr inbounds %OpngOptions, %OpngOptions* %options, i32 0, i32 17
  store i32 1, i32* %25, align 1
  br label %bb18

bb18:                                             ; preds = %bb17, %bb16
  %26 = bitcast %OpngSummary* %summary to i32*
  store i32 0, i32* %26, align 1
  %27 = getelementptr inbounds %OpngSummary, %OpngSummary* %summary, i32 0, i32 1
  store i32 0, i32* %27, align 1
  %28 = getelementptr inbounds %OpngSummary, %OpngSummary* %summary, i32 0, i32 2
  store i32 0, i32* %28, align 1
  %29 = getelementptr inbounds %OpngSummary, %OpngSummary* %summary, i32 0, i32 3
  store i32 0, i32* %29, align 1
  %30 = bitcast %OpngEngine* %engine to i32*
  store i32 0, i32* %30, align 1
  invoke void @_ZN4core10intrinsics11write_bytes17h7d9dc2c1dc51844eE(%OpngSummary* %summary, i8 0, i64 1)
          to label %bb19 unwind label %cleanup

bb21:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr49drop_in_place$LT$opng_initialize..OpngOptions$GT$17hc60c6d8cbc9826afE"(%OpngOptions* %options) #10
          to label %bb22 unwind label %abort

cleanup:                                          ; preds = %bb18
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  %33 = extractvalue { i8*, i32 } %31, 1
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %bb21

bb19:                                             ; preds = %bb18
  %36 = bitcast %OpngEngine* %engine to i32*
  store i32 1, i32* %36, align 1
  store i32 0, i32* %1, align 4
  call void @"_ZN4core3ptr49drop_in_place$LT$opng_initialize..OpngOptions$GT$17hc60c6d8cbc9826afE"(%OpngOptions* %options)
  br label %bb20

abort:                                            ; preds = %bb21
  %37 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb22:                                             ; preds = %bb21
  %38 = bitcast { i8*, i32 }* %0 to i8**
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = insertvalue { i8*, i32 } undef, i8* %39, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN67_$LT$opng_initialize..OpngOptions$u20$as$u20$core..clone..Clone$GT$5clone17h6efacfa260ec8d85E"(%OpngOptions* sret(%OpngOptions) %0, %OpngOptions* align 1 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_52 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_50 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_48 = alloca %"core::option::Option<alloc::string::String>", align 8
  %__self_0_0 = bitcast %OpngOptions* %self to i32*
  %__self_0_1 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 1
  %__self_0_2 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 2
  %__self_0_3 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 3
  %__self_0_4 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 4
  %__self_0_5 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 5
  %__self_0_6 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 6
  %__self_0_7 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 7
  %__self_0_8 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 8
  %__self_0_9 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 9
  %__self_0_10 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 10
  %__self_0_11 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 11
  %__self_0_12 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 12
  %__self_0_13 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 13
  %__self_0_14 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 14
  %__self_0_15 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 15
  %__self_0_16 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 16
  %__self_0_17 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 17
  %__self_0_18 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 18
  %__self_0_19 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 19
  %__self_0_20 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 20
  %__self_0_21 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 21
  %__self_0_22 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 22
  %__self_0_23 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 23
  %__self_0_24 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 24
  %__self_0_25 = getelementptr inbounds %OpngOptions, %OpngOptions* %self, i32 0, i32 25
  %_28 = load i32, i32* %__self_0_0, align 4
  %_30 = load i32, i32* %__self_0_1, align 4
  %_32 = load i32, i32* %__self_0_2, align 4
  %_34 = load i32, i32* %__self_0_3, align 4
  %_36 = load i32, i32* %__self_0_4, align 4
  %_38 = load i32, i32* %__self_0_5, align 4
  %_40 = load i32, i32* %__self_0_6, align 4
  %_42 = load i32, i32* %__self_0_7, align 4
  %_44 = load i32, i32* %__self_0_8, align 4
  %_46 = load i32, i32* %__self_0_9, align 4
  call void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h514a4be0ff0cc265E"(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %_48, %"core::option::Option<alloc::string::String>"* align 8 %__self_0_10)
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h514a4be0ff0cc265E"(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %_50, %"core::option::Option<alloc::string::String>"* align 8 %__self_0_11)
          to label %bb2 unwind label %cleanup

bb5:                                              ; preds = %bb4, %cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h7b2adba2be83bcb3E"(%"core::option::Option<alloc::string::String>"* %_48) #10
          to label %bb6 unwind label %abort

cleanup:                                          ; preds = %bb1
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  invoke void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h514a4be0ff0cc265E"(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %_52, %"core::option::Option<alloc::string::String>"* align 8 %__self_0_12)
          to label %bb3 unwind label %cleanup1

bb4:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h7b2adba2be83bcb3E"(%"core::option::Option<alloc::string::String>"* %_50) #10
          to label %bb5 unwind label %abort

cleanup1:                                         ; preds = %bb2
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb4

bb3:                                              ; preds = %bb2
  %_54 = load i32, i32* %__self_0_13, align 4
  %_56 = load i32, i32* %__self_0_14, align 4
  %_58 = load i32, i32* %__self_0_15, align 4
  %_60 = load i32, i32* %__self_0_16, align 4
  %_62 = load i32, i32* %__self_0_17, align 4
  %_64 = load i32, i32* %__self_0_18, align 4
  %_66 = load i32, i32* %__self_0_19, align 4
  %_68 = load i32, i32* %__self_0_20, align 4
  %_70 = load i32, i32* %__self_0_21, align 4
  %_72 = load i32, i32* %__self_0_22, align 4
  %_74 = load i32, i32* %__self_0_23, align 4
  %_76 = load i32, i32* %__self_0_24, align 4
  %_78 = load i32, i32* %__self_0_25, align 4
  %12 = bitcast %OpngOptions* %0 to i32*
  store i32 %_28, i32* %12, align 1
  %13 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 1
  store i32 %_30, i32* %13, align 1
  %14 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 2
  store i32 %_32, i32* %14, align 1
  %15 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 3
  store i32 %_34, i32* %15, align 1
  %16 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 4
  store i32 %_36, i32* %16, align 1
  %17 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 5
  store i32 %_38, i32* %17, align 1
  %18 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 6
  store i32 %_40, i32* %18, align 1
  %19 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 7
  store i32 %_42, i32* %19, align 1
  %20 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 8
  store i32 %_44, i32* %20, align 1
  %21 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 9
  store i32 %_46, i32* %21, align 1
  %22 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 10
  %23 = bitcast %"core::option::Option<alloc::string::String>"* %22 to i8*
  %24 = bitcast %"core::option::Option<alloc::string::String>"* %_48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 8 %24, i64 24, i1 false)
  %25 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 11
  %26 = bitcast %"core::option::Option<alloc::string::String>"* %25 to i8*
  %27 = bitcast %"core::option::Option<alloc::string::String>"* %_50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 8 %27, i64 24, i1 false)
  %28 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 12
  %29 = bitcast %"core::option::Option<alloc::string::String>"* %28 to i8*
  %30 = bitcast %"core::option::Option<alloc::string::String>"* %_52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 8 %30, i64 24, i1 false)
  %31 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 13
  store i32 %_54, i32* %31, align 1
  %32 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 14
  store i32 %_56, i32* %32, align 1
  %33 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 15
  store i32 %_58, i32* %33, align 1
  %34 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 16
  store i32 %_60, i32* %34, align 1
  %35 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 17
  store i32 %_62, i32* %35, align 1
  %36 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 18
  store i32 %_64, i32* %36, align 1
  %37 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 19
  store i32 %_66, i32* %37, align 1
  %38 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 20
  store i32 %_68, i32* %38, align 1
  %39 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 21
  store i32 %_70, i32* %39, align 1
  %40 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 22
  store i32 %_72, i32* %40, align 1
  %41 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 23
  store i32 %_74, i32* %41, align 1
  %42 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 24
  store i32 %_76, i32* %42, align 1
  %43 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 25
  store i32 %_78, i32* %43, align 1
  ret void

abort:                                            ; preds = %bb4, %bb5
  %44 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb6:                                              ; preds = %bb5
  %45 = bitcast { i8*, i32 }* %1 to i8**
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = insertvalue { i8*, i32 } undef, i8* %46, 0
  %50 = insertvalue { i8*, i32 } %49, i32 %48, 1
  resume { i8*, i32 } %50
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

; Function Attrs: uwtable
declare void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17hbad99c7f0b99428bE"(%"alloc::string::String"* sret(%"alloc::string::String"), %"alloc::string::String"* align 8) unnamed_addr #1

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

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_initialize.rs.bc", hash: (1900760833, 495407442, 3133103992, 1204793381, 484939223))
^1 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_none17h540868e93b73779aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^21))))) ; guid = 214942530495110214
^2 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f04c720bdba34d5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^52), (callee: ^47))))) ; guid = 519972133587035095
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "_ZN4core10intrinsics11write_bytes17h7d9dc2c1dc51844eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 1276418709264091652
^5 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hdcb291de027d31d1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^15))))) ; guid = 1349362628736769594
^6 = gv: (name: "alloc144", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1883972939905822422
^7 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_some17hc363886fda7c87fbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 2474593263911679091
^8 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17ha8bf093a9c9782a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^51))))) ; guid = 2551065611988417241
^9 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h2c155eef3a8dc617E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 2560437102438420895
^10 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^11 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h1cb260df8671a380E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 2618547690906073877
^12 = gv: (name: "_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h7b2adba2be83bcb3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^33))))) ; guid = 3301516796838646595
^13 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5edbb6df693df16fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^51), (callee: ^26))))) ; guid = 3811424455114337728
^14 = gv: (name: "alloc142", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4415003250804749355
^15 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h81b923534759d617E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 4436589031590774760
^16 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^17 = gv: (name: "opng_initialize", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 111, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^53), (callee: ^1), (callee: ^28), (callee: ^29), (callee: ^4), (callee: ^39), (callee: ^63)), refs: (^49)))) ; guid = 5015417950893549749
^18 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h23af3d352dbe4a8fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^8))))) ; guid = 5458229881959892793
^19 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8284634d2924f8b7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^59), (callee: ^37))))) ; guid = 5714070773998893082
^20 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h40cce6241c095cb9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 5775535655449280257
^21 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_some17h4ba85c90b6933104E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 5977864244131639394
^22 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^23 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^24 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^25 = gv: (name: "_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17hbad99c7f0b99428bE") ; guid = 6849033659003797866
^26 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17had277611bb67c82bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 7142640488469020116
^27 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h01aeeb0ec35c93f1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 7331183666143282402
^28 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_none17h2936583a78e6318aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^50))))) ; guid = 8006015529141980443
^29 = gv: (name: "_ZN67_$LT$opng_initialize..OpngOptions$u20$as$u20$core..clone..Clone$GT$5clone17h6efacfa260ec8d85E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 144, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^61), (callee: ^12), (callee: ^63)), refs: (^49)))) ; guid = 8014034217547219424
^30 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h88f2f4018d43bd33E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^36)), refs: (^49)))) ; guid = 8798632133493200736
^31 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h7aa0b13e46736a33E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^42), (callee: ^58), (callee: ^11), (callee: ^32), (callee: ^60)), refs: (^48)))) ; guid = 9065072989478449624
^32 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17haadfdc26764206beE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^9))))) ; guid = 9986492793651899182
^33 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1aa4f5ab4c61824eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^56))))) ; guid = 9987629444487248805
^34 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h4fe2862012805200E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 10749601522027168604
^35 = gv: (name: "_ZN5alloc5alloc7dealloc17h8bde7d8168d907c9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^27), (callee: ^40), (callee: ^16))))) ; guid = 10847359916064798775
^36 = gv: (name: "_ZN4core4hint21unreachable_unchecked17hb1ef03c3fa5f6f17E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 10895714454218739472
^37 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd5c08a7a3fb167e2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^27), (callee: ^51), (callee: ^35))))) ; guid = 11461612656798608924
^38 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17hec70c97a896dc067E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^44))))) ; guid = 11954229063567667014
^39 = gv: (name: "_ZN4core3ptr49drop_in_place$LT$opng_initialize..OpngOptions$GT$17hc60c6d8cbc9826afE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^12), (callee: ^63)), refs: (^49)))) ; guid = 12060031773240037213
^40 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h71e0b43916e6613eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^5), (callee: ^20))))) ; guid = 12634745522902446409
^41 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6d8a4d0c81b53bbeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^46))))) ; guid = 12824586802085452829
^42 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h135427b0481ab0ddE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 13648398358597796542
^43 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb769ed5f0288e3bdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^54), (callee: ^38))))) ; guid = 13695213717306372155
^44 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h6f6eb774a7b77032E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 13740787286786399538
^45 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h5bd63be821332c8dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 13940337259750349637
^46 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17had37e25b53807404E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^8), (callee: ^26))))) ; guid = 14127951602249403621
^47 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h0bd4b3abba287faaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 14138740343830393376
^48 = gv: (name: "alloc143", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^14)))) ; guid = 14732768432341008321
^49 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^50 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_some17hf50aecb792e8c696E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 14887690448314501327
^51 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9f8e3037088847baE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15069667622049586362
^52 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17he5763b88bd73efcfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 15512122352036285409
^53 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_none17h195fd02eaa463ce0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^7))))) ; guid = 16239979577339913939
^54 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hea57af3831e838f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^18), (callee: ^2))))) ; guid = 16372012953705994732
^55 = gv: (name: "alloc145", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 16748495335657108840
^56 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hff88675dfca72feaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^43), (callee: ^62), (callee: ^63)), refs: (^49)))) ; guid = 16946541839383277663
^57 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5cdbbd25b3dafd59E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^13), (callee: ^45))))) ; guid = 17041410603651792488
^58 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h387b0d379aa13502E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 17182130504578012616
^59 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4608ec8f4dae234dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^31), (callee: ^30), (callee: ^57), (callee: ^41)), refs: (^55)))) ; guid = 17339759069410420031
^60 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9ad64bf2a68b1a01E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^34))))) ; guid = 17348649148430473036
^61 = gv: (name: "_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h514a4be0ff0cc265E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23, calls: ((callee: ^25))))) ; guid = 17436863876396027103
^62 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hece0777c09419d48E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^19))))) ; guid = 18361114280256928463
^63 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^64 = blockcount: 209
