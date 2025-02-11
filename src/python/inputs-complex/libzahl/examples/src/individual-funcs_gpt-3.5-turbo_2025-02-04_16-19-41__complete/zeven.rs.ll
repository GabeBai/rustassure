; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zeven.rs.bc'
source_filename = "zeven.b985fc2e-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%Zahl = type <{ i32, i32, i64, i64, i64* }>

@alloc24 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc25 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc20 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc54 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc55 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc12 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Even\0A" }>, align 1
@alloc13 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [5 x i8] }>, <{ [5 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@alloc17 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c"Not even\0A" }>, align 1
@alloc18 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [9 x i8] }>, <{ [9 x i8] }>* @alloc17, i32 0, i32 0, i32 0), [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@alloc56 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Zahl" }>, align 1
@alloc57 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"sign" }>, align 1
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i32**)* @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hfd42265c7b008942E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i32**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h552d10aaa49086e3E" to i8*) }>, align 8
@alloc61 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c"padding__" }>, align 1
@alloc62 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"used" }>, align 1
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17he809c928800294bcE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8e65836be85dd4d2E" to i8*) }>, align 8
@alloc66 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"alloced" }>, align 1
@alloc67 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"chars" }>, align 1
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64***)* @"_ZN4core3ptr40drop_in_place$LT$$RF$$BP$mut$u20$u64$GT$17h8f162ecfb25a2c80E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64***, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hce6dd6b154d6d412E" to i8*) }>, align 8

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h552d10aaa49086e3E"(i32** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_6 = load i32*, i32** %self, align 8, !nonnull !1, !align !2, !noundef !1
  %0 = call zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h877e75cb8bdbbe6eE"(i32* align 4 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8e65836be85dd4d2E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_6 = load i64*, i64** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %0 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h82dd6d90d2bc7f47E"(i64* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hce6dd6b154d6d412E"(i64*** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_6 = load i64**, i64*** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %0 = call zeroext i1 @"_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fb1804519e88326E"(i64** align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h877e75cb8bdbbe6eE"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %_3 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E(%"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_7 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E(%"core::fmt::Formatter"* align 8 %f)
  br label %bb5

bb2:                                              ; preds = %bb1
  %1 = call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h7a5e9cbb7827bfc6E"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f)
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb11

bb11:                                             ; preds = %bb10, %bb3
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb5:                                              ; preds = %bb4
  br i1 %_7, label %bb6, label %bb8

bb8:                                              ; preds = %bb5
  %5 = call zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f)
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  br label %bb9

bb6:                                              ; preds = %bb5
  %7 = call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h73d7b5c940bc6831E"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h82dd6d90d2bc7f47E"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %_3 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E(%"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_7 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E(%"core::fmt::Formatter"* align 8 %f)
  br label %bb5

bb2:                                              ; preds = %bb1
  %1 = call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb11

bb11:                                             ; preds = %bb10, %bb3
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb5:                                              ; preds = %bb4
  br i1 %_7, label %bb6, label %bb8

bb8:                                              ; preds = %bb5
  %5 = call zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  br label %bb9

bb6:                                              ; preds = %bb5
  %7 = call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h7674e64ca45d71f3E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #1 {
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
  %11 = load i64*, i64** %10, align 8, !align !3
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
  call void @_ZN4core3fmt9Arguments6new_v117h7674e64ca45d71f3E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc25 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc20 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc55 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hfd42265c7b008942E"(i32** %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17he809c928800294bcE"(i64** %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr40drop_in_place$LT$$RF$$BP$mut$u20$u64$GT$17h8f162ecfb25a2c80E"(i64*** %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hcb89269e5cacff75E"({}* %self) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to {}**
  store {}* %self, {}** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h78ab83a22f207292E"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = bitcast [0 x i64]* %self.0 to i64*
  ret i64* %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fb1804519e88326E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = call zeroext i1 @"_ZN52_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h307775dbb9115015E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN52_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h307775dbb9115015E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_5 = alloca i64*, align 8
  %_6 = load i64*, i64** %self, align 8
  store i64* %_6, i64** %_5, align 8
  %0 = call zeroext i1 @"_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h523a94550b5d4794E"(i64** align 8 %_5, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h523a94550b5d4794E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_5 = load i64*, i64** %self, align 8
  %_4 = bitcast i64* %_5 to {}*
  %_3 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hcb89269e5cacff75E"({}* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hde7a97c2cc87755fE(i64 %_3, %"core::fmt::Formatter"* align 8 %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @zeven([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %_8 = alloca i64, align 8
  %1 = alloca i8, align 1
  %2 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %3 = bitcast %Zahl* %2 to i32*
  %_2 = load i32, i32* %3, align 1
  %4 = icmp eq i32 %_2, 0
  br i1 %4, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 1, i8* %1, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %5 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %6 = getelementptr inbounds %Zahl, %Zahl* %5, i32 0, i32 4
  %_11 = load i64*, i64** %6, align 1
  store i64* %_11, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb2
  %_9 = load i64, i64* %_3.i, align 8
  store i64 %_9, i64* %_8, align 8
  %_7 = load i64, i64* %_8, align 8
  %_6 = xor i64 %_7, -1
  %_5 = and i64 %_6, 1
  %_4 = icmp ne i64 %_5, 0
  %7 = zext i1 %_4 to i8
  store i8 %7, i8* %1, align 1
  br label %bb3

bb3:                                              ; preds = %bb4, %bb1
  %8 = load i8, i8* %1, align 1, !range !4, !noundef !1
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: uwtable
define void @main() unnamed_addr #0 {
start:
  %_20 = alloca %"core::fmt::Arguments", align 8
  %_12 = alloca %"core::fmt::Arguments", align 8
  %_7 = alloca %Zahl, align 1
  %zt = alloca [1 x %Zahl], align 1
  %zahl = alloca %Zahl, align 1
  %chars = alloca [1 x i64], align 8
  %0 = getelementptr inbounds [1 x i64], [1 x i64]* %chars, i64 0, i64 0
  store i64 10, i64* %0, align 8
  %_4.0 = bitcast [1 x i64]* %chars to [0 x i64]*
  %_3 = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h78ab83a22f207292E"([0 x i64]* align 8 %_4.0, i64 1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %Zahl* %zahl to i32*
  store i32 0, i32* %1, align 1
  %2 = getelementptr inbounds %Zahl, %Zahl* %zahl, i32 0, i32 1
  store i32 0, i32* %2, align 1
  %3 = getelementptr inbounds %Zahl, %Zahl* %zahl, i32 0, i32 2
  store i64 1, i64* %3, align 1
  %4 = getelementptr inbounds %Zahl, %Zahl* %zahl, i32 0, i32 3
  store i64 1, i64* %4, align 1
  %5 = getelementptr inbounds %Zahl, %Zahl* %zahl, i32 0, i32 4
  store i64* %_3, i64** %5, align 1
  %6 = bitcast %Zahl* %_7 to i8*
  %7 = bitcast %Zahl* %zahl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 32, i1 false)
  %8 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %zt, i64 0, i64 0
  %9 = bitcast %Zahl* %8 to i8*
  %10 = bitcast %Zahl* %_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 32, i1 false)
  %_8 = call zeroext i1 @zeven([1 x %Zahl]* align 1 %zt)
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb5

bb5:                                              ; preds = %bb2
  call void @_ZN4core3fmt9Arguments6new_v117h7674e64ca45d71f3E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_20, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc18 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc20 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb6

bb3:                                              ; preds = %bb2
  call void @_ZN4core3fmt9Arguments6new_v117h7674e64ca45d71f3E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_12, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc13 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc20 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_12)
  br label %bb7

bb7:                                              ; preds = %bb6, %bb4
  ret void

bb6:                                              ; preds = %bb5
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_20)
  br label %bb7
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN48_$LT$zeven..Zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17hbf49e89ca1e61dc8E"(%Zahl* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %__self_0_4 = alloca i64**, align 8
  %__self_0_3 = alloca i64*, align 8
  %__self_0_2 = alloca i64*, align 8
  %__self_0_1 = alloca i32*, align 8
  %__self_0_0 = alloca i32*, align 8
  %0 = bitcast %Zahl* %self to i32*
  store i32* %0, i32** %__self_0_0, align 8
  %1 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 1
  store i32* %1, i32** %__self_0_1, align 8
  %2 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  store i64* %2, i64** %__self_0_2, align 8
  %3 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 3
  store i64* %3, i64** %__self_0_3, align 8
  %4 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 4
  store i64** %4, i64*** %__self_0_4, align 8
  %_13.0 = bitcast i32** %__self_0_0 to {}*
  %_18.0 = bitcast i32** %__self_0_1 to {}*
  %_23.0 = bitcast i64** %__self_0_2 to {}*
  %_28.0 = bitcast i64** %__self_0_3 to {}*
  %_33.0 = bitcast i64*** %__self_0_4 to {}*
  %5 = call zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17h87b108015e0bbfdeE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc56 to [0 x i8]*), i64 4, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc57 to [0 x i8]*), i64 4, {}* align 1 %_13.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [9 x i8] }>* @alloc61 to [0 x i8]*), i64 9, {}* align 1 %_18.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc62 to [0 x i8]*), i64 4, {}* align 1 %_23.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc66 to [0 x i8]*), i64 7, {}* align 1 %_28.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc67 to [0 x i8]*), i64 5, {}* align 1 %_33.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*))
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %5
}

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E(%"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h7a5e9cbb7827bfc6E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E(%"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h73d7b5c940bc6831E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hde7a97c2cc87755fE(i64, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17h87b108015e0bbfdeE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8) unnamed_addr #0

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 4}
!3 = !{i64 8}
!4 = !{i8 0, i8 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zeven.rs.bc", hash: (3655686806, 2790422984, 2037474444, 4041880954, 1333950035))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h7674e64ca45d71f3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^2), (callee: ^43)), refs: (^40, ^18, ^19)))) ; guid = 642377575228888008
^3 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^4 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9, ^22)))) ; guid = 1520950689299650359
^5 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1552763070643251920
^6 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h78ab83a22f207292E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 1620397448080794770
^7 = gv: (name: "_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E") ; guid = 1967081855160219432
^8 = gv: (name: "alloc56", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1981253684026479228
^9 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hce6dd6b154d6d412E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^31))))) ; guid = 3287224875069390563
^10 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hcb89269e5cacff75E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 4538075971554541466
^11 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 4740697308544001330
^12 = gv: (name: "_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17he809c928800294bcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 4936327380573476556
^13 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h552d10aaa49086e3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^29))))) ; guid = 5448905476017571776
^14 = gv: (name: "_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E") ; guid = 5691937269951177933
^15 = gv: (name: "_ZN52_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h307775dbb9115015E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^42))))) ; guid = 5913721554001862748
^16 = gv: (name: "alloc61", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6178386792954728599
^17 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^18 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^5)))) ; guid = 6660164333522398758
^19 = gv: (name: "alloc55", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^38)))) ; guid = 7439739162149417249
^20 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7736665886477873884
^21 = gv: (name: "alloc62", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7807919274719738873
^22 = gv: (name: "_ZN4core3ptr40drop_in_place$LT$$RF$$BP$mut$u20$u64$GT$17h8f162ecfb25a2c80E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 8115460455396709550
^23 = gv: (name: "_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h82dd6d90d2bc7f47E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^7), (callee: ^14), (callee: ^33), (callee: ^3), (callee: ^48))))) ; guid = 8439015814192882610
^24 = gv: (name: "_ZN4core3fmt17pointer_fmt_inner17hde7a97c2cc87755fE") ; guid = 8603763538316848196
^25 = gv: (name: "alloc57", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8986575398116950273
^26 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hfd42265c7b008942E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 9543646245339911052
^27 = gv: (name: "_ZN48_$LT$zeven..Zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17hbf49e89ca1e61dc8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23, calls: ((callee: ^45)), refs: (^4, ^32, ^35, ^47, ^21, ^16, ^36, ^25, ^8)))) ; guid = 10135183284663001614
^28 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8e65836be85dd4d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^23))))) ; guid = 10321983615381994764
^29 = gv: (name: "_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h877e75cb8bdbbe6eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^7), (callee: ^14), (callee: ^34), (callee: ^39), (callee: ^37))))) ; guid = 10454768240643748114
^30 = gv: (name: "zeven", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 11374502905011557409
^31 = gv: (name: "_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fb1804519e88326E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^15))))) ; guid = 11632210133258102620
^32 = gv: (name: "alloc67", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11690931341246119774
^33 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E") ; guid = 11743839634310749277
^34 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h7a5e9cbb7827bfc6E") ; guid = 11841554529459563407
^35 = gv: (name: "alloc66", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11842668759706407343
^36 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^13, ^26)))) ; guid = 12211052152355932767
^37 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h73d7b5c940bc6831E") ; guid = 12218248418932013088
^38 = gv: (name: "alloc54", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13009156899596786991
^39 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^40 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13519138671894701564
^41 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^6), (callee: ^30), (callee: ^2), (callee: ^46)), refs: (^40, ^11, ^49)))) ; guid = 15822663052811949562
^42 = gv: (name: "_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h523a94550b5d4794E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^10), (callee: ^24))))) ; guid = 15967877808317320035
^43 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^44 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16224584561840101240
^45 = gv: (name: "_ZN4core3fmt9Formatter26debug_struct_field5_finish17h87b108015e0bbfdeE") ; guid = 16521166769891023571
^46 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^47 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^28, ^12)))) ; guid = 18059493392647148032
^48 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE") ; guid = 18145797040138870230
^49 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^20)))) ; guid = 18367216959675497078
^50 = blockcount: 65
