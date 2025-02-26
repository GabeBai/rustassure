; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8fold.rs.bc'
source_filename = "u8fold.f879e7f0-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ops::range::RangeInclusive<i32>" = type { i32, i32, i8, [3 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc15 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc16 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc18 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc19 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc20 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc6 = private unnamed_addr constant <{ [9 x i8], [3 x i8] }> <{ [9 x i8] c"\00\04\01\00'\04\01\00\00", [3 x i8] undef }>, align 4
@alloc21 = private unnamed_addr constant <{ [77 x i8] }> <{ [77 x i8] c"inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8fold.rs" }>, align 1
@alloc22 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc21, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00\0F\00\00\00\09\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc10 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c"Folded code point: " }>, align 1
@alloc12 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc11 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [19 x i8] }>, <{ [19 x i8] }>* @alloc10, i32 0, i32 0, i32 0), [8 x i8] c"\13\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: uwtable
define { i64, i8* } @"_ZN100_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$11start_bound17h8e2937eb5372a679E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i8* }, align 8
  %_3 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %1 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %2 = bitcast i8** %1 to i32**
  store i32* %_3, i32** %2, align 8
  %3 = bitcast { i64, i8* }* %0 to i64*
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !range !1, !noundef !2
  %6 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = insertvalue { i64, i8* } undef, i64 %5, 0
  %9 = insertvalue { i64, i8* } %8, i8* %7, 1
  ret { i64, i8* } %9
}

; Function Attrs: uwtable
define { i64, i8* } @"_ZN100_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$9end_bound17hee8d4acbd49c36dcE"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i8* }, align 8
  %1 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 2
  %2 = load i8, i8* %1, align 4, !range !3, !noundef !2
  %_2 = trunc i8 %2 to i1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_6 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 1
  %3 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %4 = bitcast i8** %3 to i32**
  store i32* %_6, i32** %4, align 8
  %5 = bitcast { i64, i8* }* %0 to i64*
  store i64 0, i64* %5, align 8
  br label %bb3

bb1:                                              ; preds = %start
  %_4 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 1
  %6 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %7 = bitcast i8** %6 to i32**
  store i32* %_4, i32** %7, align 8
  %8 = bitcast { i64, i8* }* %0 to i64*
  store i64 1, i64* %8, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %9 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !range !1, !noundef !2
  %11 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = insertvalue { i64, i8* } undef, i64 %10, 0
  %14 = insertvalue { i64, i8* } %13, i8* %12, 1
  ret { i64, i8* } %14
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h6cba752d87461a27E"(i32* align 4 %self, i32* align 4 %other) unnamed_addr #1 {
start:
  %_3 = load i32, i32* %self, align 4
  %_4 = load i32, i32* %other, align 4
  %0 = icmp sle i32 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h1d915314e8899ff8E"(i32* align 4 %self, i32* align 4 %other) unnamed_addr #1 {
start:
  %_3 = load i32, i32* %self, align 4
  %_4 = load i32, i32* %other, align 4
  %0 = icmp slt i32 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls70_$LT$impl$u20$core..cmp..PartialOrd$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2le17hb4639f7d998cbfbaE"(i32** align 8 %self, i32** align 8 %other) unnamed_addr #1 {
start:
  %_5 = load i32*, i32** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %_6 = load i32*, i32** %other, align 8, !nonnull !2, !align !4, !noundef !2
  %0 = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h6cba752d87461a27E"(i32* align 4 %_5, i32* align 4 %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls70_$LT$impl$u20$core..cmp..PartialOrd$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2lt17h324c80a05d22e15bE"(i32** align 8 %self, i32** align 8 %other) unnamed_addr #1 {
start:
  %_5 = load i32*, i32** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %_6 = load i32*, i32** %other, align 8, !nonnull !2, !align !4, !noundef !2
  %0 = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h1d915314e8899ff8E"(i32* align 4 %_5, i32* align 4 %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h93a2d9ed38aa4670E(i32* align 4 %x) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h049aecdc0d3dfe7aE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h049aecdc0d3dfe7aE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #1 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i32*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !2, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i32* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !2, !align !5, !noundef !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !2, !align !5, !noundef !2
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h3224e7d11927ac94E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #1 {
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
  %2 = load i8, i8* %_3, align 1, !range !3, !noundef !2
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
  call void @_ZN4core3fmt9Arguments6new_v117h3224e7d11927ac94E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc16 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc18 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc20 to %"core::panic::location::Location"*)) #6
  unreachable
}

; Function Attrs: uwtable
define zeroext i1 @_ZN4core3ops5range11RangeBounds8contains17h65ff938864637623E(%"core::ops::range::RangeInclusive<i32>"* align 4 %self, i32* align 4 %0) unnamed_addr #0 {
start:
  %_26 = alloca i32*, align 8
  %_22 = alloca i32*, align 8
  %_16 = alloca { i64, i8* }, align 8
  %_15 = alloca i8, align 1
  %_14 = alloca i32*, align 8
  %start2 = alloca i32*, align 8
  %_10 = alloca i32*, align 8
  %start1 = alloca i32*, align 8
  %_4 = alloca { i64, i8* }, align 8
  %_3 = alloca i8, align 1
  %1 = alloca i8, align 1
  %item = alloca i32*, align 8
  store i32* %0, i32** %item, align 8
  %2 = call { i64, i8* } @"_ZN100_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$11start_bound17h8e2937eb5372a679E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self)
  store { i64, i8* } %2, { i64, i8* }* %_4, align 8
  br label %bb4

bb4:                                              ; preds = %start
  %3 = bitcast { i64, i8* }* %_4 to i64*
  %_6 = load i64, i64* %3, align 8, !range !1, !noundef !2
  switch i64 %_6, label %bb6 [
    i64 0, label %bb7
    i64 1, label %bb9
    i64 2, label %bb5
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb7:                                              ; preds = %bb4
  %4 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %_4, i32 0, i32 1
  %5 = bitcast i8** %4 to i32**
  %6 = load i32*, i32** %5, align 8, !nonnull !2, !align !4, !noundef !2
  store i32* %6, i32** %start1, align 8
  %7 = load i32*, i32** %item, align 8, !nonnull !2, !align !4, !noundef !2
  store i32* %7, i32** %_10, align 8
  %8 = call zeroext i1 @"_ZN4core3cmp5impls70_$LT$impl$u20$core..cmp..PartialOrd$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2le17hb4639f7d998cbfbaE"(i32** align 8 %start1, i32** align 8 %_10)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %_3, align 1
  br label %bb8

bb9:                                              ; preds = %bb4
  %10 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %_4, i32 0, i32 1
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8, !nonnull !2, !align !4, !noundef !2
  store i32* %12, i32** %start2, align 8
  %13 = load i32*, i32** %item, align 8, !nonnull !2, !align !4, !noundef !2
  store i32* %13, i32** %_14, align 8
  %14 = call zeroext i1 @"_ZN4core3cmp5impls70_$LT$impl$u20$core..cmp..PartialOrd$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2lt17h324c80a05d22e15bE"(i32** align 8 %start2, i32** align 8 %_14)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %_3, align 1
  br label %bb10

bb5:                                              ; preds = %bb4
  store i8 1, i8* %_3, align 1
  br label %bb11

bb11:                                             ; preds = %bb8, %bb10, %bb5
  %16 = load i8, i8* %_3, align 1, !range !3, !noundef !2
  %17 = trunc i8 %16 to i1
  br i1 %17, label %bb2, label %bb1

bb10:                                             ; preds = %bb9
  br label %bb11

bb8:                                              ; preds = %bb7
  br label %bb11

bb1:                                              ; preds = %bb11
  store i8 0, i8* %1, align 1
  br label %bb3

bb2:                                              ; preds = %bb11
  %18 = call { i64, i8* } @"_ZN100_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$9end_bound17hee8d4acbd49c36dcE"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self)
  store { i64, i8* } %18, { i64, i8* }* %_16, align 8
  br label %bb12

bb12:                                             ; preds = %bb2
  %19 = bitcast { i64, i8* }* %_16 to i64*
  %_18 = load i64, i64* %19, align 8, !range !1, !noundef !2
  switch i64 %_18, label %bb14 [
    i64 0, label %bb15
    i64 1, label %bb17
    i64 2, label %bb13
  ]

bb14:                                             ; preds = %bb12
  unreachable

bb15:                                             ; preds = %bb12
  %20 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %_16, i32 0, i32 1
  %21 = bitcast i8** %20 to i32**
  %end3 = load i32*, i32** %21, align 8, !nonnull !2, !align !4, !noundef !2
  store i32* %end3, i32** %_22, align 8
  %22 = call zeroext i1 @"_ZN4core3cmp5impls70_$LT$impl$u20$core..cmp..PartialOrd$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2le17hb4639f7d998cbfbaE"(i32** align 8 %item, i32** align 8 %_22)
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %_15, align 1
  br label %bb16

bb17:                                             ; preds = %bb12
  %24 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %_16, i32 0, i32 1
  %25 = bitcast i8** %24 to i32**
  %end = load i32*, i32** %25, align 8, !nonnull !2, !align !4, !noundef !2
  store i32* %end, i32** %_26, align 8
  %26 = call zeroext i1 @"_ZN4core3cmp5impls70_$LT$impl$u20$core..cmp..PartialOrd$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2lt17h324c80a05d22e15bE"(i32** align 8 %item, i32** align 8 %_26)
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %_15, align 1
  br label %bb18

bb13:                                             ; preds = %bb12
  store i8 1, i8* %_15, align 1
  br label %bb19

bb19:                                             ; preds = %bb16, %bb18, %bb13
  %28 = load i8, i8* %_15, align 1, !range !3, !noundef !2
  %29 = trunc i8 %28 to i1
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %1, align 1
  br label %bb3

bb18:                                             ; preds = %bb17
  br label %bb19

bb16:                                             ; preds = %bb15
  br label %bb19

bb3:                                              ; preds = %bb19, %bb1
  %31 = load i8, i8* %1, align 1, !range !3, !noundef !2
  %32 = trunc i8 %31 to i1
  ret i1 %32
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8contains17h38bf19865df8ecf0E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self, i32* align 4 %item) unnamed_addr #0 {
start:
  %0 = call zeroext i1 @_ZN4core3ops5range11RangeBounds8contains17h65ff938864637623E(%"core::ops::range::RangeInclusive<i32>"* align 4 %self, i32* align 4 %item)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define i32 @fold_search(i32 %cp) unnamed_addr #0 {
start:
  ret i32 %cp
}

; Function Attrs: uwtable
define i32 @u8fold(i32 %cp1) unnamed_addr #0 {
start:
  %cp = alloca i32, align 4
  store i32 %cp1, i32* %cp, align 4
  %_2 = call zeroext i1 @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8contains17h38bf19865df8ecf0E"(%"core::ops::range::RangeInclusive<i32>"* align 4 bitcast (<{ [9 x i8], [3 x i8] }>* @alloc6 to %"core::ops::range::RangeInclusive<i32>"*), i32* align 4 %cp)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %_8 = load i32, i32* %cp, align 4
  %_7 = icmp sle i32 %_8, 65535
  br i1 %_7, label %bb5, label %bb7

bb2:                                              ; preds = %bb1
  %0 = load i32, i32* %cp, align 4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 40)
  %_6.0 = extractvalue { i32, i1 } %1, 0
  %_6.1 = extractvalue { i32, i1 } %1, 1
  %2 = call i1 @llvm.expect.i1(i1 %_6.1, i1 false)
  br i1 %2, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  store i32 %_6.0, i32* %cp, align 4
  br label %bb4

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc22 to %"core::panic::location::Location"*)) #6
  unreachable

bb7:                                              ; preds = %bb6, %bb4
  %3 = load i32, i32* %cp, align 4
  ret i32 %3

bb5:                                              ; preds = %bb4
  %_10 = load i32, i32* %cp, align 4
  %_9 = call i32 @fold_search(i32 %_10)
  br label %bb6

bb6:                                              ; preds = %bb5
  store i32 %_9, i32* %cp, align 4
  br label %bb7
}

; Function Attrs: uwtable
define void @main() unnamed_addr #0 {
start:
  %_12 = alloca [1 x { i8*, i64* }], align 8
  %_5 = alloca %"core::fmt::Arguments", align 8
  %folded_code_point = alloca i32, align 4
  %0 = call i32 @u8fold(i32 66560)
  store i32 %0, i32* %folded_code_point, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h93a2d9ed38aa4670E(i32* align 4 %folded_code_point)
  %_13.0 = extractvalue { i8*, i64* } %1, 0
  %_13.1 = extractvalue { i8*, i64* } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_12, i64 0, i64 0
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  store i8* %_13.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  store i64* %_13.1, i64** %4, align 8
  %_9.0 = bitcast [1 x { i8*, i64* }]* %_12 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h3224e7d11927ac94E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_5, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc11 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_9.0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_5)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #0

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i64 0, i64 3}
!2 = !{}
!3 = !{i8 0, i8 2}
!4 = !{i64 4}
!5 = !{i64 1}
!6 = !{i64 8}

^0 = module: (path: "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8fold.rs.bc", hash: (3756782097, 4081087146, 1946797408, 1372359519, 4089614567))
^1 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^2 = gv: (name: "fold_search", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 3902676908160392013
^3 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5883820465464328874
^4 = gv: (name: "_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8contains17h38bf19865df8ecf0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^20))))) ; guid = 6078283979375014352
^5 = gv: (name: "_ZN100_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$9end_bound17hee8d4acbd49c36dcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26))) ; guid = 6498214695260240434
^6 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^7 = gv: (name: "_ZN100_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$11start_bound17h8e2937eb5372a679E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 7582752599779757661
^8 = gv: (name: "_ZN4core3cmp5impls70_$LT$impl$u20$core..cmp..PartialOrd$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2lt17h324c80a05d22e15bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^17))))) ; guid = 7638444670988587419
^9 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7708285622418610298
^10 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^19)))) ; guid = 7747451495547263387
^11 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9999917481837882287
^12 = gv: (name: "u8fold", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^4), (callee: ^13), (callee: ^2)), refs: (^31, ^14, ^11)))) ; guid = 10042233320129525643
^13 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^14 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 10409241955990665603
^15 = gv: (name: "llvm.sadd.with.overflow.i32") ; guid = 10553262824061260096
^16 = gv: (name: "_ZN4core3cmp5impls70_$LT$impl$u20$core..cmp..PartialOrd$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2le17hb4639f7d998cbfbaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^24))))) ; guid = 10611710428957779402
^17 = gv: (name: "_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h1d915314e8899ff8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 10920262759327502616
^18 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h93a2d9ed38aa4670E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^28)), refs: (^25)))) ; guid = 10967823451018959539
^19 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11318891164457248319
^20 = gv: (name: "_ZN4core3ops5range11RangeBounds8contains17h65ff938864637623E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 84, calls: ((callee: ^7), (callee: ^16), (callee: ^8), (callee: ^5))))) ; guid = 11658042689478312867
^21 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11685078879433071630
^22 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 11759844903867533453
^23 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^33, ^21)))) ; guid = 12579105566979269113
^24 = gv: (name: "_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h6cba752d87461a27E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 12923673217001476908
^25 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^26 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13496595419614167374
^27 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h3224e7d11927ac94E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^27), (callee: ^30)), refs: (^26, ^22, ^10)))) ; guid = 14467483621036316040
^28 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h049aecdc0d3dfe7aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 15763423244477868945
^29 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21, calls: ((callee: ^12), (callee: ^18), (callee: ^27), (callee: ^32)), refs: (^23)))) ; guid = 15822663052811949562
^30 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^31 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16313125498044281806
^32 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^33 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17947229466713907099
^34 = blockcount: 60
