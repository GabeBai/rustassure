; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/isalpha.rs.bc'
source_filename = "isalpha.29ef5995-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc11 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc12 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc11, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc15 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc16 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc5 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Is '" }>, align 1
@alloc7 = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"' an alphabetic character? " }>, align 1
@alloc8 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [8 x i8] c"\04\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [27 x i8] }>, <{ [27 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\1B\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc8, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h948fbfff664941bfE(i8* align 1 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hf62fafefc289388eE(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hfb57b2e4af27da7aE(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8ab90c6b29f6c215E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h0c4b92990e8cd236E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8ab90c6b29f6c215E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hf62fafefc289388eE(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i8*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i8* %x to %"core::fmt::Opaque"*
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
define internal void @_ZN4core3fmt9Arguments6new_v117hdcf07642b2350005E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !3, !noundef !1
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
  %11 = load i64*, i64** %10, align 8, !align !4
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
  call void @_ZN4core3fmt9Arguments6new_v117hdcf07642b2350005E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc12 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc14 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char7convert17char_try_from_u3217heebcb6513f9217dfE(i32 %i) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  %_4 = xor i32 %i, 55296
  %2 = sub i32 %_4, 2048
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = icmp uge i32 %2, 1112064
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  store i32 %i, i32* %0, align 4
  %_7 = load i32, i32* %0, align 4, !range !5, !noundef !1
  br label %bb4

bb2:                                              ; preds = %bb1
  %3 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 4, i1 false)
  store i32 1114112, i32* %1, align 4
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %4 = load i32, i32* %1, align 4, !range !6, !noundef !1
  ret i32 %4

bb4:                                              ; preds = %bb3
  store i32 %_7, i32* %1, align 4
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char7convert8from_u3217hf7d7b699a85a9abcE(i32 %i) unnamed_addr #0 {
start:
  %_2 = alloca i32, align 4
  %0 = alloca i32, align 4
  %1 = call i32 @_ZN4core4char7convert17char_try_from_u3217heebcb6513f9217dfE(i32 %i), !range !6
  store i32 %1, i32* %_2, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %2 = load i32, i32* %_2, align 4, !range !6, !noundef !1
  %3 = sub i32 %2, 1114112
  %4 = icmp eq i32 %3, 0
  %_4 = select i1 %4, i64 1, i64 0
  switch i64 %_4, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %c = load i32, i32* %_2, align 4, !range !5, !noundef !1
  store i32 %c, i32* %0, align 4
  br label %bb5

bb2:                                              ; preds = %bb1
  %5 = bitcast i32* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  store i32 1114112, i32* %0, align 4
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %6 = load i32, i32* %0, align 4, !range !6, !noundef !1
  ret i32 %6
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$13is_alphabetic17he4303da467645c70E"(i32 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_4 = icmp ule i32 97, %self
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  %_2 = icmp ule i32 65, %self
  br i1 %_2, label %bb3, label %bb4

bb1:                                              ; preds = %start
  %_5 = icmp ule i32 %self, 122
  br i1 %_5, label %bb5, label %bb2

bb5:                                              ; preds = %bb3, %bb1
  store i8 1, i8* %0, align 1
  br label %bb10

bb4:                                              ; preds = %bb3, %bb2
  %_7 = icmp ugt i32 %self, 127
  br i1 %_7, label %bb7, label %bb6

bb3:                                              ; preds = %bb2
  %_3 = icmp ule i32 %self, 90
  br i1 %_3, label %bb5, label %bb4

bb10:                                             ; preds = %bb8, %bb5
  %1 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %2 = trunc i8 %1 to i1
  ret i1 %2

bb6:                                              ; preds = %bb4
  store i8 0, i8* %0, align 1
  br label %bb8

bb7:                                              ; preds = %bb4
  %_9 = call zeroext i1 @_ZN4core7unicode12unicode_data10alphabetic6lookup17h74d57cde59b2468fE(i32 %self)
  br label %bb9

bb9:                                              ; preds = %bb7
  %3 = zext i1 %_9 to i8
  store i8 %3, i8* %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb9, %bb6
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char8from_u3217had2dabefcb946464E(i32 %i) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char7convert8from_u3217hf7d7b699a85a9abcE(i32 %i), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: uwtable
define zeroext i1 @is_alpha(i32 %c) unnamed_addr #1 {
start:
  %_2 = alloca i32, align 4
  %0 = alloca i8, align 1
  %1 = call i32 @_ZN4core4char8from_u3217had2dabefcb946464E(i32 %c), !range !6
  store i32 %1, i32* %_2, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %2 = load i32, i32* %_2, align 4, !range !6, !noundef !1
  %3 = sub i32 %2, 1114112
  %4 = icmp eq i32 %3, 0
  %_5 = select i1 %4, i64 0, i64 1
  %5 = icmp eq i64 %_5, 1
  br i1 %5, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %character = load i32, i32* %_2, align 4, !range !5, !noundef !1
  %6 = call zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$13is_alphabetic17he4303da467645c70E"(i32 %character)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb4

bb3:                                              ; preds = %bb1
  store i8 0, i8* %0, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %8 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_19 = alloca i8, align 1
  %_14 = alloca i32, align 4
  %_10 = alloca [2 x { i8*, i64* }], align 8
  %_3 = alloca %"core::fmt::Arguments", align 8
  store i32 65, i32* %_14, align 4
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hfb57b2e4af27da7aE(i32* align 4 %_14)
  %_11.0 = extractvalue { i8*, i64* } %0, 0
  %_11.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call zeroext i1 @is_alpha(i32 65)
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %_19, align 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h948fbfff664941bfE(i8* align 1 %_19)
  %_16.0 = extractvalue { i8*, i64* } %3, 0
  %_16.1 = extractvalue { i8*, i64* } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_10, i64 0, i64 0
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %4, i32 0, i32 0
  store i8* %_11.0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %4, i32 0, i32 1
  store i64* %_11.1, i64** %6, align 8
  %7 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_10, i64 0, i64 1
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %7, i32 0, i32 0
  store i8* %_16.0, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %7, i32 0, i32 1
  store i64* %_16.1, i64** %9, align 8
  %_7.0 = bitcast [2 x { i8*, i64* }]* %_10 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hdcf07642b2350005E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_3, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc6 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_7.0, i64 2)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_3)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E"(i8* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h0c4b92990e8cd236E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core7unicode12unicode_data10alphabetic6lookup17h74d57cde59b2468fE(i32) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}
!5 = !{i32 0, i32 1114112}
!6 = !{i32 0, i32 1114113}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/isalpha.rs.bc", hash: (589943742, 1795256265, 1019577184, 420154935, 2066481283))
^1 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1995721692383551462
^2 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h8ab90c6b29f6c215E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2760645017374849872
^3 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3206311528571517339
^4 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3710681944269092522
^5 = gv: (name: "_ZN4core7unicode12unicode_data10alphabetic6lookup17h74d57cde59b2468fE") ; guid = 4875245619965987230
^6 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6111253833556068934
^7 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^8 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$13is_alphabetic17he4303da467645c70E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, calls: ((callee: ^5))))) ; guid = 7443097209404961223
^9 = gv: (name: "_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h0c4b92990e8cd236E") ; guid = 8462113626476478650
^10 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^14)))) ; guid = 8663801026291175857
^11 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hf62fafefc289388eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 8914234382774762669
^12 = gv: (name: "_ZN4core4char8from_u3217had2dabefcb946464E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^24))))) ; guid = 9160325001926621020
^13 = gv: (name: "_ZN4core3fmt9Arguments6new_v117hdcf07642b2350005E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^13), (callee: ^20)), refs: (^16, ^10, ^26)))) ; guid = 9283412820100958076
^14 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9887670855702130672
^15 = gv: (name: "_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E") ; guid = 10816395040579614328
^16 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12112421257803463153
^17 = gv: (name: "is_alpha", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21, calls: ((callee: ^12), (callee: ^8))))) ; guid = 12711443753354033311
^18 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h948fbfff664941bfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^11)), refs: (^15)))) ; guid = 13378271451608622208
^19 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, calls: ((callee: ^25), (callee: ^17), (callee: ^18), (callee: ^13), (callee: ^23)), refs: (^21)))) ; guid = 15822663052811949562
^20 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^21 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6, ^3, ^1)))) ; guid = 17324850381387879575
^22 = gv: (name: "_ZN4core4char7convert17char_try_from_u3217heebcb6513f9217dfE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 17404651622030917729
^23 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^24 = gv: (name: "_ZN4core4char7convert8from_u3217hf7d7b699a85a9abcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^22))))) ; guid = 17873186594387705557
^25 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hfb57b2e4af27da7aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^2)), refs: (^9)))) ; guid = 18009949261349439453
^26 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4)))) ; guid = 18285298015530289828
^27 = blockcount: 53
