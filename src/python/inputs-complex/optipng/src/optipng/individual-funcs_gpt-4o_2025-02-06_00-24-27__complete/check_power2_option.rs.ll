; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_power2_option.rs.bc'
source_filename = "check_power2_option.e6ffb4a9-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ops::range::RangeInclusive<i32>" = type { i32, i32, i8, [3 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<u64, core::num::error::ParseIntError>" = type { i8, [15 x i8] }
%"core::result::Result<u64, core::num::error::ParseIntError>::Ok" = type { [1 x i64], i64 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc11 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc12 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc11, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc31 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc32 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc31, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc50 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc51 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc50, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc5 = private unnamed_addr constant <{ [28 x i8] }> <{ [28 x i8] c"Invalid argument for option " }>, align 1
@alloc7 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c": " }>, align 1
@alloc25 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [28 x i8] }>, <{ [28 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [8 x i8] c"\1C\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\02\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc58 = private unnamed_addr constant <{ [101 x i8] }> <{ [101 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_power2_option.rs" }>, align 1
@alloc53 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [101 x i8] }>, <{ [101 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [16 x i8] c"e\00\00\00\00\00\00\00\1C\00\00\00\17\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc55 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [101 x i8] }>, <{ [101 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [16 x i8] c"e\00\00\00\00\00\00\00\1C\00\00\00\16\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc57 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [101 x i8] }>, <{ [101 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [16 x i8] c"e\00\00\00\00\00\00\00\1D\00\00\00\17\00\00\00" }>, align 8
@alloc59 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [101 x i8] }>, <{ [101 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [16 x i8] c"e\00\00\00\00\00\00\00 \00\00\00\10\00\00\00" }>, align 8
@str.2 = internal constant [35 x i8] c"attempt to shift left with overflow"
@alloc60 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"--power" }>, align 1
@alloc61 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"16" }>, align 1
@alloc23 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Result: " }>, align 1
@alloc24 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [8 x i8] }>, <{ [8 x i8] }>* @alloc23, i32 0, i32 0, i32 0), [8 x i8] c"\08\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$9spec_next17h875a4463980e9481E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self) unnamed_addr #0 {
start:
  %_7 = alloca i32, align 4
  %0 = alloca { i32, i32 }, align 4
  %_2 = call zeroext i1 @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17hfc43145ac02dab25E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_5 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %_6 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 1
  %is_iterating = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h4989cb3cca03e84aE"(i32* align 4 %_5, i32* align 4 %_6)
  br label %bb4

bb2:                                              ; preds = %bb1
  %1 = bitcast { i32, i32 }* %0 to i32*
  store i32 0, i32* %1, align 4
  br label %bb12

bb12:                                             ; preds = %bb11, %bb2
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %3 = load i32, i32* %2, align 4, !range !1, !noundef !2
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = insertvalue { i32, i32 } undef, i32 %3, 0
  %7 = insertvalue { i32, i32 } %6, i32 %5, 1
  ret { i32, i32 } %7

bb4:                                              ; preds = %bb3
  br i1 %is_iterating, label %bb5, label %bb9

bb9:                                              ; preds = %bb4
  %8 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 2
  store i8 1, i8* %8, align 4
  %_15 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %9 = call i32 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17h74ef888840f3a3d1E"(i32* align 4 %_15)
  store i32 %9, i32* %_7, align 4
  br label %bb10

bb5:                                              ; preds = %bb4
  %_11 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %_10 = call i32 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17h74ef888840f3a3d1E"(i32* align 4 %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %n = call i32 @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hf46b1b068ea05e91E"(i32 %_10, i64 1)
  br label %bb7

bb7:                                              ; preds = %bb6
  %_13 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %10 = call i32 @_ZN4core3mem7replace17heb218b373758e44eE(i32* align 4 %_13, i32 %n)
  store i32 %10, i32* %_7, align 4
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %_7, align 4
  store i32 %12, i32* %11, align 4
  %13 = bitcast { i32, i32 }* %0 to i32*
  store i32 1, i32* %13, align 4
  br label %bb12

bb10:                                             ; preds = %bb9
  br label %bb11
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h377806c6f6dd97a0E"({ [0 x i8]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !2, !align !3, !noundef !2
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hf46b1b068ea05e91E"(i32 %start1, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %_4 = trunc i64 %n to i32
  %1 = add nsw i32 %start1, %_4
  store i32 %1, i32* %0, align 4
  %2 = load i32, i32* %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %2
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h5a8f0b196396ac49E"(i32* align 4 %self, i32* align 4 %other) unnamed_addr #0 {
start:
  %_3 = load i32, i32* %self, align 4
  %_4 = load i32, i32* %other, align 4
  %0 = icmp sle i32 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h4989cb3cca03e84aE"(i32* align 4 %self, i32* align 4 %other) unnamed_addr #0 {
start:
  %_3 = load i32, i32* %self, align 4
  %_4 = load i32, i32* %other, align 4
  %0 = icmp slt i32 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h0e7cfcefc0054caeE(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h915c99bca69d41f8E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hf9c0f12bb25962d1E({ [0 x i8]*, i64 }* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h742a61c413affbdcE({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h377806c6f6dd97a0E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h742a61c413affbdcE({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !2, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast { [0 x i8]*, i64 }* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !2, !align !3, !noundef !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !2, !align !3, !noundef !2
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h915c99bca69d41f8E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !2, !align !3, !noundef !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !2, !align !3, !noundef !2
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hc805ad351f58c537E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !4, !noundef !2
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
  call void @_ZN4core3fmt9Arguments6new_v117hc805ad351f58c537E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc12 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc14 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc32 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: inlinehint uwtable
define i32 @_ZN4core3mem7replace17heb218b373758e44eE(i32* align 4 %dest, i32 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i32 @_ZN4core3ptr4read17hb640365f33979f8bE(i32* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !4, !noundef !2
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
  invoke void @_ZN4core3ptr5write17hf9f9260c611ba9efE(i32* %dest, i32 %src)
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
  ret i32 %result

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
define void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h9defc3dc18a1a77cE"(%"core::ops::range::RangeInclusive<i32>"* sret(%"core::ops::range::RangeInclusive<i32>") %0, i32 %start1, i32 %end) unnamed_addr #0 {
start:
  %1 = bitcast %"core::ops::range::RangeInclusive<i32>"* %0 to i32*
  store i32 %start1, i32* %1, align 4
  %2 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %0, i32 0, i32 1
  store i32 %end, i32* %2, align 4
  %3 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %0, i32 0, i32 2
  store i8 0, i8* %3, align 4
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17hfc43145ac02dab25E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 2
  %2 = load i8, i8* %1, align 4, !range !4, !noundef !2
  %_2 = trunc i8 %2 to i1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %_6 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 1
  %_4 = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h5a8f0b196396ac49E"(i32* align 4 %_5, i32* align 4 %_6)
  br label %bb4

bb1:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb4, %bb1
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb4:                                              ; preds = %bb2
  %_3 = xor i1 %_4, true
  %5 = zext i1 %_3 to i8
  store i8 %5, i8* %0, align 1
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define i32 @_ZN4core3ptr4read17hb640365f33979f8bE(i32* %src) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %1 = bitcast i32* %0 to {}*
  %2 = load i32, i32* %0, align 4
  store i32 %2, i32* %tmp, align 4
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast i32* %tmp to i8*
  %4 = bitcast i32* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 4, i1 false)
  %_6 = load i32, i32* %tmp, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i32 %_6
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hf9f9260c611ba9efE(i32* %dst, i32 %0) unnamed_addr #0 {
start:
  %src = alloca i32, align 4
  store i32 %0, i32* %src, align 4
  %1 = bitcast i32* %dst to i8*
  %2 = bitcast i32* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 4, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h3b8749536445df63E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self) unnamed_addr #0 {
start:
  %0 = call { i32, i32 } @"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$9spec_next17h875a4463980e9481E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self)
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i32, i32 } undef, i32 %1, 0
  %4 = insertvalue { i32, i32 } %3, i32 %2, 1
  ret { i32, i32 } %4
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17h74ef888840f3a3d1E"(i32* align 4 %self) unnamed_addr #0 {
start:
  %0 = load i32, i32* %self, align 4
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcdf571578da0c855E"(%"core::ops::range::RangeInclusive<i32>"* sret(%"core::ops::range::RangeInclusive<i32>") %0, %"core::ops::range::RangeInclusive<i32>"* %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::ops::range::RangeInclusive<i32>"* %0 to i8*
  %2 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @opng_str2ulong(i64* align 8 %value, [0 x i8]* align 1 %opt_arg.0, i64 %opt_arg.1, i32 %base) unnamed_addr #1 {
start:
  %_4 = alloca %"core::result::Result<u64, core::num::error::ParseIntError>", align 8
  %0 = alloca i8, align 1
  call void @"_ZN4core3num21_$LT$impl$u20$u64$GT$14from_str_radix17h4e0111ffe2774998E"(%"core::result::Result<u64, core::num::error::ParseIntError>"* sret(%"core::result::Result<u64, core::num::error::ParseIntError>") %_4, [0 x i8]* align 1 %opt_arg.0, i64 %opt_arg.1, i32 %base)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"core::result::Result<u64, core::num::error::ParseIntError>"* %_4 to i8*
  %2 = load i8, i8* %1, align 8, !range !4, !noundef !2
  %3 = trunc i8 %2 to i1
  %_7 = zext i1 %3 to i64
  switch i64 %_7, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %4 = bitcast %"core::result::Result<u64, core::num::error::ParseIntError>"* %_4 to %"core::result::Result<u64, core::num::error::ParseIntError>::Ok"*
  %5 = getelementptr inbounds %"core::result::Result<u64, core::num::error::ParseIntError>::Ok", %"core::result::Result<u64, core::num::error::ParseIntError>::Ok"* %4, i32 0, i32 1
  %v = load i64, i64* %5, align 8
  store i64 %v, i64* %value, align 8
  store i8 1, i8* %0, align 1
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %6 = load i8, i8* %0, align 1, !range !4, !noundef !2
  %7 = trunc i8 %6 to i1
  ret i1 %7
}

; Function Attrs: uwtable
define void @err_option_arg([0 x i8]* align 1 %0, i64 %1, [0 x i8]* align 1 %2, i64 %3) unnamed_addr #1 {
start:
  %_11 = alloca [2 x { i8*, i64* }], align 8
  %_4 = alloca %"core::fmt::Arguments", align 8
  %opt_arg = alloca { [0 x i8]*, i64 }, align 8
  %opt = alloca { [0 x i8]*, i64 }, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %opt, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %opt, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %opt_arg, i32 0, i32 0
  store [0 x i8]* %2, [0 x i8]** %6, align 8
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %opt_arg, i32 0, i32 1
  store i64 %3, i64* %7, align 8
  %8 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hf9c0f12bb25962d1E({ [0 x i8]*, i64 }* align 8 %opt)
  %_12.0 = extractvalue { i8*, i64* } %8, 0
  %_12.1 = extractvalue { i8*, i64* } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hf9c0f12bb25962d1E({ [0 x i8]*, i64 }* align 8 %opt_arg)
  %_15.0 = extractvalue { i8*, i64* } %9, 0
  %_15.1 = extractvalue { i8*, i64* } %9, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 0
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 0
  store i8* %_12.0, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 1
  store i64* %_12.1, i64** %12, align 8
  %13 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 1
  %14 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 0
  store i8* %_15.0, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 1
  store i64* %_15.1, i64** %15, align 8
  %_8.0 = bitcast [2 x { i8*, i64* }]* %_11 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hc805ad351f58c537E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_4, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc6 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_8.0, i64 2)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"* %_4)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: uwtable
define i32 @check_power2_option([0 x i8]* align 1 %opt.0, i64 %opt.1, [0 x i8]* align 1 %opt_arg.0, i64 %opt_arg.1, i32 %0, i32 %1) unnamed_addr #1 {
start:
  %_30 = alloca { i32, i32 }, align 4
  %iter = alloca %"core::ops::range::RangeInclusive<i32>", align 4
  %_26 = alloca %"core::ops::range::RangeInclusive<i32>", align 4
  %_25 = alloca %"core::ops::range::RangeInclusive<i32>", align 4
  %value = alloca i64, align 8
  %2 = alloca i32, align 4
  %highest = alloca i32, align 4
  %lowest = alloca i32, align 4
  store i32 %0, i32* %lowest, align 4
  store i32 %1, i32* %highest, align 4
  store i64 0, i64* %value, align 8
  %_6 = call zeroext i1 @opng_str2ulong(i64* align 8 %value, [0 x i8]* align 1 %opt_arg.0, i64 %opt_arg.1, i32 10)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_6, label %bb2, label %bb21

bb21:                                             ; preds = %bb16, %bb1
  call void @err_option_arg([0 x i8]* align 1 %opt.0, i64 %opt.1, [0 x i8]* align 1 %opt_arg.0, i64 %opt_arg.1)
  br label %bb22

bb2:                                              ; preds = %bb1
  %_11 = load i32, i32* %lowest, align 4
  %_10 = icmp slt i32 %_11, 0
  br i1 %_10, label %bb3, label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %_13 = load i32, i32* %highest, align 4
  br label %bb5

bb3:                                              ; preds = %bb2
  store i32 0, i32* %lowest, align 4
  br label %bb4

bb5:                                              ; preds = %bb4
  %_16 = trunc i64 8 to i32
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 8, i32 %_16)
  %_18.0 = extractvalue { i32, i1 } %3, 0
  %_18.1 = extractvalue { i32, i1 } %3, 1
  %4 = call i1 @llvm.expect.i1(i1 %_18.1, i1 false)
  br i1 %4, label %panic, label %bb6

bb6:                                              ; preds = %bb5
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_18.0, i32 2)
  %_19.0 = extractvalue { i32, i1 } %5, 0
  %_19.1 = extractvalue { i32, i1 } %5, 1
  %6 = call i1 @llvm.expect.i1(i1 %_19.1, i1 false)
  br i1 %6, label %panic1, label %bb7

panic:                                            ; preds = %bb5
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc53 to %"core::panic::location::Location"*)) #7
  unreachable

bb7:                                              ; preds = %bb6
  %_12 = icmp sgt i32 %_13, %_19.0
  br i1 %_12, label %bb8, label %bb12

panic1:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc55 to %"core::panic::location::Location"*)) #7
  unreachable

bb12:                                             ; preds = %bb11, %bb7
  %_27 = load i32, i32* %lowest, align 4
  %_28 = load i32, i32* %highest, align 4
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h9defc3dc18a1a77cE"(%"core::ops::range::RangeInclusive<i32>"* sret(%"core::ops::range::RangeInclusive<i32>") %_26, i32 %_27, i32 %_28)
  br label %bb13

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb8
  %_21 = trunc i64 8 to i32
  %7 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 8, i32 %_21)
  %_23.0 = extractvalue { i32, i1 } %7, 0
  %_23.1 = extractvalue { i32, i1 } %7, 1
  %8 = call i1 @llvm.expect.i1(i1 %_23.1, i1 false)
  br i1 %8, label %panic2, label %bb10

bb10:                                             ; preds = %bb9
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_23.0, i32 2)
  %_24.0 = extractvalue { i32, i1 } %9, 0
  %_24.1 = extractvalue { i32, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_24.1, i1 false)
  br i1 %10, label %panic3, label %bb11

panic2:                                           ; preds = %bb9
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc57 to %"core::panic::location::Location"*)) #7
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_24.0, i32* %highest, align 4
  br label %bb12

panic3:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc57 to %"core::panic::location::Location"*)) #7
  unreachable

bb13:                                             ; preds = %bb12
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcdf571578da0c855E"(%"core::ops::range::RangeInclusive<i32>"* sret(%"core::ops::range::RangeInclusive<i32>") %_25, %"core::ops::range::RangeInclusive<i32>"* %_26)
  br label %bb14

bb14:                                             ; preds = %bb13
  %11 = bitcast %"core::ops::range::RangeInclusive<i32>"* %iter to i8*
  %12 = bitcast %"core::ops::range::RangeInclusive<i32>"* %_25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb19, %bb14
  %13 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h3b8749536445df63E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %iter)
  store { i32, i32 } %13, { i32, i32 }* %_30, align 4
  br label %bb16

bb16:                                             ; preds = %bb15
  %14 = bitcast { i32, i32 }* %_30 to i32*
  %15 = load i32, i32* %14, align 4, !range !1, !noundef !2
  %_33 = zext i32 %15 to i64
  switch i64 %_33, label %bb18 [
    i64 0, label %bb21
    i64 1, label %bb17
  ]

bb18:                                             ; preds = %bb16
  unreachable

bb17:                                             ; preds = %bb16
  %16 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_30, i32 0, i32 1
  %result = load i32, i32* %16, align 4
  %17 = and i32 %result, -64
  %_38.1 = icmp ne i32 %17, 0
  %18 = zext i32 %result to i64
  %19 = and i64 %18, 63
  %_38.0 = shl i64 1, %19
  %20 = call i1 @llvm.expect.i1(i1 %_38.1, i1 false)
  br i1 %20, label %panic4, label %bb19

bb19:                                             ; preds = %bb17
  %_39 = load i64, i64* %value, align 8
  %_35 = icmp eq i64 %_38.0, %_39
  br i1 %_35, label %bb20, label %bb15

panic4:                                           ; preds = %bb17
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.2 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc59 to %"core::panic::location::Location"*)) #7
  unreachable

bb20:                                             ; preds = %bb19
  store i32 %result, i32* %2, align 4
  br label %bb23

bb23:                                             ; preds = %bb22, %bb20
  %21 = load i32, i32* %2, align 4
  ret i32 %21

bb22:                                             ; preds = %bb21
  store i32 -1, i32* %2, align 4
  br label %bb23
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_14 = alloca [1 x { i8*, i64* }], align 8
  %_7 = alloca %"core::fmt::Arguments", align 8
  %result = alloca i32, align 4
  %0 = call i32 @check_power2_option([0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc60 to [0 x i8]*), i64 7, [0 x i8]* align 1 bitcast (<{ [2 x i8] }>* @alloc61 to [0 x i8]*), i64 2, i32 0, i32 10)
  store i32 %0, i32* %result, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h0e7cfcefc0054caeE(i32* align 4 %result)
  %_15.0 = extractvalue { i8*, i64* } %1, 0
  %_15.1 = extractvalue { i8*, i64* } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_14, i64 0, i64 0
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  store i8* %_15.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  store i64* %_15.1, i64** %4, align 8
  %_11.0 = bitcast [1 x { i8*, i64* }]* %_14 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hc805ad351f58c537E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_7, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc24 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_11.0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_7)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
declare void @"_ZN4core3num21_$LT$impl$u20$u64$GT$14from_str_radix17h4e0111ffe2774998E"(%"core::result::Result<u64, core::num::error::ParseIntError>"* sret(%"core::result::Result<u64, core::num::error::ParseIntError>"), [0 x i8]* align 1, i64, i32) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #5

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 0, i32 2}
!2 = !{}
!3 = !{i64 1}
!4 = !{i8 0, i8 2}
!5 = !{i64 8}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_power2_option.rs.bc", hash: (3105759032, 1174983121, 558000360, 1449953136, 3479815988))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1008196860341430177
^3 = gv: (name: "alloc53", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 1212316994457974841
^4 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h0e7cfcefc0054caeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^33)), refs: (^37)))) ; guid = 1449589022540663601
^5 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 1453865129938064201
^6 = gv: (name: "_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hf46b1b068ea05e91E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7))) ; guid = 1949660611436065137
^7 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2023520201396134149
^8 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^9 = gv: (name: "alloc58", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2780609449572862754
^10 = gv: (name: "opng_str2ulong", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21, calls: ((callee: ^55))))) ; guid = 3212144894920745388
^11 = gv: (name: "_ZN4core3mem7replace17heb218b373758e44eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^58), (callee: ^51)), refs: (^40)))) ; guid = 3941527535946411967
^12 = gv: (name: "_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h4989cb3cca03e84aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 4561979695669734446
^13 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hf9c0f12bb25962d1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^56)), refs: (^19)))) ; guid = 5740649246271581887
^14 = gv: (name: "_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17h74ef888840f3a3d1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 6189231439317764093
^15 = gv: (name: "check_power2_option", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 96, calls: ((callee: ^10), (callee: ^43), (callee: ^30), (callee: ^49), (callee: ^48), (callee: ^57)), refs: (^3, ^16, ^42, ^50, ^54, ^26, ^18)))) ; guid = 6517698405364577573
^16 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6530685373075669806
^17 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^18 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7209650141945261915
^19 = gv: (name: "_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h377806c6f6dd97a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^44))))) ; guid = 7594794716587620958
^20 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25, ^32, ^29)))) ; guid = 7595426229945842710
^21 = gv: (name: "alloc60", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7804704686458881048
^22 = gv: (name: "alloc32", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^28)))) ; guid = 8193398402661219125
^23 = gv: (name: "llvm.smul.with.overflow.i32") ; guid = 8885377767807808301
^24 = gv: (name: "alloc61", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9145159357999888051
^25 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9247485567099307718
^26 = gv: (name: "alloc59", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 9249804855331198482
^27 = gv: (name: "alloc50", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9474373902072150188
^28 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9871009915979288160
^29 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10002438912583547765
^30 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^31 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29, ^2)))) ; guid = 11133588336463189048
^32 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11186070934003783993
^33 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h915c99bca69d41f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 12339786851929603278
^34 = gv: (name: "llvm.ssub.with.overflow.i32") ; guid = 12482542225321408869
^35 = gv: (name: "_ZN4core3fmt9Arguments6new_v117hc805ad351f58c537E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^35), (callee: ^47)), refs: (^41, ^5, ^22)))) ; guid = 12732074204409607431
^36 = gv: (name: "alloc51", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^27)))) ; guid = 12840457442591535029
^37 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^38 = gv: (name: "_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$9spec_next17h875a4463980e9481E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^45), (callee: ^12), (callee: ^14), (callee: ^6), (callee: ^11))))) ; guid = 13682231896915259100
^39 = gv: (name: "_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h5a8f0b196396ac49E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 13737250221476144602
^40 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^41 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15090364709000213729
^42 = gv: (name: "alloc55", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 15322795467875854599
^43 = gv: (name: "err_option_arg", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, calls: ((callee: ^13), (callee: ^35), (callee: ^53)), refs: (^20)))) ; guid = 15425667605701219326
^44 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^45 = gv: (name: "_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17hfc43145ac02dab25E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^39))))) ; guid = 15798457373373670259
^46 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21, calls: ((callee: ^15), (callee: ^4), (callee: ^35), (callee: ^52)), refs: (^24, ^21, ^31)))) ; guid = 15822663052811949562
^47 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^48 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcdf571578da0c855E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 16077185434658557234
^49 = gv: (name: "_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h9defc3dc18a1a77cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 16722138530661332597
^50 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16793927011211169029
^51 = gv: (name: "_ZN4core3ptr5write17hf9f9260c611ba9efE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 17252573843541417292
^52 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^53 = gv: (name: "_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE") ; guid = 17906690583868548313
^54 = gv: (name: "alloc57", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 17921221613761282700
^55 = gv: (name: "_ZN4core3num21_$LT$impl$u20$u64$GT$14from_str_radix17h4e0111ffe2774998E") ; guid = 18173643254717151472
^56 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h742a61c413affbdcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 18226644542470935725
^57 = gv: (name: "_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h3b8749536445df63E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^38))))) ; guid = 18246774850846295404
^58 = gv: (name: "_ZN4core3ptr4read17hb640365f33979f8bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 18271425406832007974
^59 = blockcount: 105
