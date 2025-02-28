; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/isxdigit.rs.bc'
source_filename = "isxdigit.859678f3-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc9 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc10 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc7 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc23 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc24 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc23, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc4 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"to_digit: radix is too high (maximum 36)" }>, align 1
@alloc5 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [40 x i8] }>, <{ [40 x i8] }>* @alloc4, i32 0, i32 0, i32 0), [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@alloc25 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/char/methods.rs" }>, align 1
@alloc26 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00]\01\00\00\0D\00\00\00" }>, align 8
@alloc19 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"'" }>, align 1
@alloc17 = private unnamed_addr constant <{ [26 x i8] }> <{ [26 x i8] c"' is a hexadecimal digit.\0A" }>, align 1
@alloc16 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [26 x i8] }>, <{ [26 x i8] }>* @alloc17, i32 0, i32 0, i32 0), [8 x i8] c"\1A\00\00\00\00\00\00\00" }>, align 8
@alloc21 = private unnamed_addr constant <{ [30 x i8] }> <{ [30 x i8] c"' is not a hexadecimal digit.\0A" }>, align 1
@alloc20 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [30 x i8] }>, <{ [30 x i8] }>* @alloc21, i32 0, i32 0, i32 0), [8 x i8] c"\1E\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h549bddcfedf4a749E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h2cd9040e31b8fbb4E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h0c4b92990e8cd236E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h2cd9040e31b8fbb4E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define internal void @_ZN4core3fmt9Arguments6new_v117h9ada9541561a92f1E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h9ada9541561a92f1E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc10 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc7 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc24 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8is_digit17h93eca0d775f8b72dE"(i32 %self, i32 %radix) unnamed_addr #0 {
start:
  %_4 = alloca { i32, i32 }, align 4
  %0 = call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h8c69ff59c9d99ad1E"(i32 %self, i32 %radix)
  store { i32, i32 } %0, { i32, i32 }* %_4, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h0842b2cfea50fd5dE"({ i32, i32 }* align 4 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h8c69ff59c9d99ad1E"(i32 %self, i32 %radix) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h9ada9541561a92f1E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_13, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc5 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc7 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_13, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc26 to %"core::panic::location::Location"*)) #5
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
  %7 = load i32, i32* %6, align 4, !range !5, !noundef !1
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

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h0842b2cfea50fd5dE"({ i32, i32 }* align 4 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast { i32, i32 }* %self to i32*
  %2 = load i32, i32* %1, align 4, !range !5, !noundef !1
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
  %4 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

; Function Attrs: uwtable
define zeroext i1 @isxdigit(i32 %c) unnamed_addr #1 {
start:
  %0 = call zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8is_digit17h93eca0d775f8b72dE"(i32 %c, i32 16)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_24 = alloca [1 x { i8*, i64* }], align 8
  %_17 = alloca %"core::fmt::Arguments", align 8
  %_12 = alloca [1 x { i8*, i64* }], align 8
  %_5 = alloca %"core::fmt::Arguments", align 8
  %c = alloca i32, align 4
  store i32 65, i32* %c, align 4
  %_3 = load i32, i32* %c, align 4, !range !6, !noundef !1
  %_2 = call zeroext i1 @isxdigit(i32 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb5

bb5:                                              ; preds = %bb1
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h549bddcfedf4a749E(i32* align 4 %c)
  %_25.0 = extractvalue { i8*, i64* } %0, 0
  %_25.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb6

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h549bddcfedf4a749E(i32* align 4 %c)
  %_13.0 = extractvalue { i8*, i64* } %1, 0
  %_13.1 = extractvalue { i8*, i64* } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %2 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_12, i64 0, i64 0
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  store i8* %_13.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  store i64* %_13.1, i64** %4, align 8
  %_9.0 = bitcast [1 x { i8*, i64* }]* %_12 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h9ada9541561a92f1E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_5, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc16 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_9.0, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_5)
  br label %bb8

bb8:                                              ; preds = %bb7, %bb4
  ret void

bb6:                                              ; preds = %bb5
  %5 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_24, i64 0, i64 0
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 0
  store i8* %_25.0, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 1
  store i64* %_25.1, i64** %7, align 8
  %_21.0 = bitcast [1 x { i8*, i64* }]* %_24 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h9ada9541561a92f1E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_17, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc20 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_21.0, i64 1)
  br label %bb7

bb7:                                              ; preds = %bb6
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_17)
  br label %bb8
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h0c4b92990e8cd236E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}
!5 = !{i32 0, i32 2}
!6 = !{i32 0, i32 1114112}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/isxdigit.rs.bc", hash: (3274645242, 3680739888, 1768230403, 940279769, 3507568450))
^1 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 213821310537908196
^2 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^17, ^10)))) ; guid = 1568499386044666905
^3 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$8is_digit17h93eca0d775f8b72dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^11), (callee: ^16))))) ; guid = 1861344353095021260
^4 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2921516081347905148
^5 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h9ada9541561a92f1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^5), (callee: ^23)), refs: (^1, ^21, ^27)))) ; guid = 3829081010456893778
^6 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 3908725638254280705
^7 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4232934731049968834
^8 = gv: (name: "llvm.uadd.sat.i32") ; guid = 5512586733557502133
^9 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^10 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7412729556637615457
^11 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h8c69ff59c9d99ad1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 54, calls: ((callee: ^5), (callee: ^23)), refs: (^1, ^6, ^20)))) ; guid = 8232409114544019746
^12 = gv: (name: "_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h0c4b92990e8cd236E") ; guid = 8462113626476478650
^13 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h2cd9040e31b8fbb4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 8925502389187624627
^14 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^17, ^7)))) ; guid = 9471150562148768128
^15 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10138224257717093969
^16 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_some17h0842b2cfea50fd5dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 11289899027259569672
^17 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11731154989720895562
^18 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13116511339237845328
^19 = gv: (name: "isxdigit", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^3))))) ; guid = 14334237634860282639
^20 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 14850748707543158377
^21 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4)))) ; guid = 15239126030133886143
^22 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, calls: ((callee: ^19), (callee: ^24), (callee: ^5), (callee: ^26)), refs: (^2, ^14)))) ; guid = 15822663052811949562
^23 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^24 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h549bddcfedf4a749E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^13)), refs: (^12)))) ; guid = 16508552379928310704
^25 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17163018422244401056
^26 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^27 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 17932562428506959158
^28 = blockcount: 45
