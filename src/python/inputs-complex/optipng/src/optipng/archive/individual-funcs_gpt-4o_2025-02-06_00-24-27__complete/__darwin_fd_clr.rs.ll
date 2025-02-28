; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_fd_clr.rs.bc'
source_filename = "__darwin_fd_clr.6d93f239-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%FdSet = type <{ [32 x i32] }>

@alloc13 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc14 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc13, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc16 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc17 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc18 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc17, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc41 = private unnamed_addr constant <{ [97 x i8] }> <{ [97 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_fd_clr.rs" }>, align 1
@alloc20 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0C\00\00\00!\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc22 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0C\00\00\00\11\00\00\00" }>, align 8
@str.1 = internal constant [25 x i8] c"attempt to divide by zero"
@alloc24 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0D\00\00\00\1F\00\00\00" }>, align 8
@alloc26 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0D\00\00\00\0F\00\00\00" }>, align 8
@str.2 = internal constant [57 x i8] c"attempt to calculate the remainder with a divisor of zero"
@alloc28 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0E\00\00\00 \00\00\00" }>, align 8
@str.3 = internal constant [35 x i8] c"attempt to shift left with overflow"
@alloc30 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0E\00\00\00\05\00\00\00" }>, align 8
@alloc32 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\1B\00\00\00!\00\00\00" }>, align 8
@alloc34 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\1B\00\00\00\11\00\00\00" }>, align 8
@alloc36 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\1C\00\00\00\1F\00\00\00" }>, align 8
@alloc38 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\1C\00\00\00\0F\00\00\00" }>, align 8
@alloc40 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\1D\00\00\00\17\00\00\00" }>, align 8
@alloc42 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\1D\00\00\000\00\00\00" }>, align 8
@alloc6 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"File descriptor " }>, align 1
@alloc8 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c" is cleared: " }>, align 1
@alloc9 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc7 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [16 x i8] }>, <{ [16 x i8] }>* @alloc6, i32 0, i32 0, i32 0), [8 x i8] c"\10\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [13 x i8] }>, <{ [13 x i8] }>* @alloc8, i32 0, i32 0, i32 0), [8 x i8] c"\0D\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h231ad1da607e2d77E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hc583cf98499137a9E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hff29a3b6e5f89401E(i8* align 1 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h4e78e9974f8f2c32E(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h4e78e9974f8f2c32E(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hc583cf98499137a9E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define internal void @_ZN4core3fmt9Arguments6new_v117h68690c8582e38bc9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h68690c8582e38bc9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc14 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc16 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc18 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: uwtable
define void @fd_clr(i32 %fd, %FdSet* align 1 %fd_set) unnamed_addr #1 {
start:
  %_4 = sext i32 %fd to i64
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 4, i64 8)
  %_8.0 = extractvalue { i64, i1 } %0, 0
  %_8.1 = extractvalue { i64, i1 } %0, 1
  %1 = call i1 @llvm.expect.i1(i1 %_8.1, i1 false)
  br i1 %1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_9 = icmp eq i64 %_8.0, 0
  %2 = call i1 @llvm.expect.i1(i1 %_9, i1 false)
  br i1 %2, label %panic1, label %bb3

panic:                                            ; preds = %bb1
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc20 to %"core::panic::location::Location"*)) #7
  unreachable

bb3:                                              ; preds = %bb2
  %index = udiv i64 %_4, %_8.0
  %_11 = sext i32 %fd to i64
  br label %bb4

panic1:                                           ; preds = %bb2
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([25 x i8]* @str.1 to [0 x i8]*), i64 25, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc22 to %"core::panic::location::Location"*)) #7
  unreachable

bb4:                                              ; preds = %bb3
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 4, i64 8)
  %_15.0 = extractvalue { i64, i1 } %3, 0
  %_15.1 = extractvalue { i64, i1 } %3, 1
  %4 = call i1 @llvm.expect.i1(i1 %_15.1, i1 false)
  br i1 %4, label %panic2, label %bb5

bb5:                                              ; preds = %bb4
  %_16 = icmp eq i64 %_15.0, 0
  %5 = call i1 @llvm.expect.i1(i1 %_16, i1 false)
  br i1 %5, label %panic3, label %bb6

panic2:                                           ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc24 to %"core::panic::location::Location"*)) #7
  unreachable

bb6:                                              ; preds = %bb5
  %bit = urem i64 %_11, %_15.0
  %6 = and i64 %bit, -32
  %_20.1 = icmp ne i64 %6, 0
  %7 = trunc i64 %bit to i32
  %8 = and i32 %7, 31
  %_20.0 = shl i32 1, %8
  %9 = call i1 @llvm.expect.i1(i1 %_20.1, i1 false)
  br i1 %9, label %panic4, label %bb7

panic3:                                           ; preds = %bb5
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([57 x i8]* @str.2 to [0 x i8]*), i64 57, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc26 to %"core::panic::location::Location"*)) #7
  unreachable

bb7:                                              ; preds = %bb6
  %_17 = xor i32 %_20.0, -1
  %_23 = icmp ult i64 %index, 32
  %10 = call i1 @llvm.expect.i1(i1 %_23, i1 true)
  br i1 %10, label %bb8, label %panic5

panic4:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.3 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc28 to %"core::panic::location::Location"*)) #7
  unreachable

bb8:                                              ; preds = %bb7
  %11 = bitcast %FdSet* %fd_set to [32 x i32]*
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %index
  %13 = bitcast %FdSet* %fd_set to [32 x i32]*
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %index
  %15 = load i32, i32* %14, align 1
  %16 = and i32 %15, %_17
  store i32 %16, i32* %12, align 1
  ret void

panic5:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %index, i64 32, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc30 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_39 = alloca [2 x { i8*, i64* }], align 8
  %_32 = alloca %"core::fmt::Arguments", align 8
  %is_cleared = alloca i8, align 1
  %fd = alloca i32, align 4
  %_2 = alloca [32 x i32], align 4
  %fd_set = alloca %FdSet, align 1
  %0 = getelementptr inbounds [32 x i32], [32 x i32]* %_2, i64 0, i64 0
  %1 = bitcast i32* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 128, i1 false)
  %2 = bitcast %FdSet* %fd_set to [32 x i32]*
  %3 = bitcast [32 x i32]* %2 to i8*
  %4 = bitcast [32 x i32]* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 4 %4, i64 128, i1 false)
  store i32 5, i32* %fd, align 4
  %_5 = load i32, i32* %fd, align 4
  call void @fd_clr(i32 %_5, %FdSet* align 1 %fd_set)
  br label %bb1

bb1:                                              ; preds = %start
  %_10 = load i32, i32* %fd, align 4
  %_9 = sext i32 %_10 to i64
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 4, i64 8)
  %_13.0 = extractvalue { i64, i1 } %5, 0
  %_13.1 = extractvalue { i64, i1 } %5, 1
  %6 = call i1 @llvm.expect.i1(i1 %_13.1, i1 false)
  br i1 %6, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %_14 = icmp eq i64 %_13.0, 0
  %7 = call i1 @llvm.expect.i1(i1 %_14, i1 false)
  br i1 %7, label %panic1, label %bb4

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc32 to %"core::panic::location::Location"*)) #7
  unreachable

bb4:                                              ; preds = %bb3
  %index = udiv i64 %_9, %_13.0
  %_17 = load i32, i32* %fd, align 4
  %_16 = sext i32 %_17 to i64
  br label %bb5

panic1:                                           ; preds = %bb3
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([25 x i8]* @str.1 to [0 x i8]*), i64 25, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc34 to %"core::panic::location::Location"*)) #7
  unreachable

bb5:                                              ; preds = %bb4
  %8 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 4, i64 8)
  %_20.0 = extractvalue { i64, i1 } %8, 0
  %_20.1 = extractvalue { i64, i1 } %8, 1
  %9 = call i1 @llvm.expect.i1(i1 %_20.1, i1 false)
  br i1 %9, label %panic2, label %bb6

bb6:                                              ; preds = %bb5
  %_21 = icmp eq i64 %_20.0, 0
  %10 = call i1 @llvm.expect.i1(i1 %_21, i1 false)
  br i1 %10, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc36 to %"core::panic::location::Location"*)) #7
  unreachable

bb7:                                              ; preds = %bb6
  %bit = urem i64 %_16, %_20.0
  %_27 = icmp ult i64 %index, 32
  %11 = call i1 @llvm.expect.i1(i1 %_27, i1 true)
  br i1 %11, label %bb8, label %panic4

panic3:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([57 x i8]* @str.2 to [0 x i8]*), i64 57, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc38 to %"core::panic::location::Location"*)) #7
  unreachable

bb8:                                              ; preds = %bb7
  %12 = bitcast %FdSet* %fd_set to [32 x i32]*
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %index
  %_24 = load i32, i32* %13, align 1
  %14 = and i64 %bit, -32
  %_30.1 = icmp ne i64 %14, 0
  %15 = trunc i64 %bit to i32
  %16 = and i32 %15, 31
  %_30.0 = shl i32 1, %16
  %17 = call i1 @llvm.expect.i1(i1 %_30.1, i1 false)
  br i1 %17, label %panic5, label %bb9

panic4:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %index, i64 32, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc40 to %"core::panic::location::Location"*)) #7
  unreachable

bb9:                                              ; preds = %bb8
  %_23 = and i32 %_24, %_30.0
  %18 = icmp eq i32 %_23, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %is_cleared, align 1
  %20 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h231ad1da607e2d77E(i32* align 4 %fd)
  %_40.0 = extractvalue { i8*, i64* } %20, 0
  %_40.1 = extractvalue { i8*, i64* } %20, 1
  br label %bb10

panic5:                                           ; preds = %bb8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.3 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc42 to %"core::panic::location::Location"*)) #7
  unreachable

bb10:                                             ; preds = %bb9
  %21 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hff29a3b6e5f89401E(i8* align 1 %is_cleared)
  %_43.0 = extractvalue { i8*, i64* } %21, 0
  %_43.1 = extractvalue { i8*, i64* } %21, 1
  br label %bb11

bb11:                                             ; preds = %bb10
  %22 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_39, i64 0, i64 0
  %23 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %22, i32 0, i32 0
  store i8* %_40.0, i8** %23, align 8
  %24 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %22, i32 0, i32 1
  store i64* %_40.1, i64** %24, align 8
  %25 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_39, i64 0, i64 1
  %26 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %25, i32 0, i32 0
  store i8* %_43.0, i8** %26, align 8
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %25, i32 0, i32 1
  store i64* %_43.1, i64** %27, align 8
  %_36.0 = bitcast [2 x { i8*, i64* }]* %_39 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h68690c8582e38bc9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_32, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc7 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_36.0, i64 2)
  br label %bb12

bb12:                                             ; preds = %bb11
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_32)
  br label %bb13

bb13:                                             ; preds = %bb12
  ret void
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E"(i8* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_fd_clr.rs.bc", hash: (2546101397, 1650479482, 3868912500, 1082965192, 2599155834))
^1 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 225133619061990620
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11)))) ; guid = 1613597677415509350
^4 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h231ad1da607e2d77E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^32)), refs: (^30)))) ; guid = 1798105102386333676
^5 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 1993658064695793368
^6 = gv: (name: "str.3", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2294537720248901531
^7 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^8 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3843619275068449999
^9 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 4387485408437875425
^10 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h68690c8582e38bc9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^10), (callee: ^37)), refs: (^8, ^21, ^3)))) ; guid = 5693211208978133959
^11 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5745621766054989161
^12 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^13 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 6769008279442684006
^14 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^15 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6970535691999526429
^16 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7382662576906997502
^17 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hff29a3b6e5f89401E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^39)), refs: (^27)))) ; guid = 9271742288819453384
^18 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9374055020235695087
^19 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10012064469556017196
^20 = gv: (name: "alloc32", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 10132968301506892546
^21 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 10162172602845746685
^22 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^23 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 10426263769444883397
^24 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 10468332561234608854
^25 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10711046919872456336
^26 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 10815317178043875360
^27 = gv: (name: "_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E") ; guid = 10816395040579614328
^28 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25, ^35, ^1)))) ; guid = 11626767348200026825
^29 = gv: (name: "alloc42", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 12445502881491637694
^30 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^31 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13693307629954653889
^32 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hc583cf98499137a9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 13859004967491655236
^33 = gv: (name: "fd_clr", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 53, calls: ((callee: ^22), (callee: ^42)), refs: (^13, ^31, ^24, ^16, ^34, ^9, ^19, ^23, ^6, ^41)))) ; guid = 15066670872887588036
^34 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 15193452458611082901
^35 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15400319136975954541
^36 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 94, calls: ((callee: ^33), (callee: ^22), (callee: ^42), (callee: ^4), (callee: ^17), (callee: ^10), (callee: ^40)), refs: (^20, ^31, ^26, ^16, ^5, ^43, ^19, ^38, ^29, ^6, ^28)))) ; guid = 15822663052811949562
^37 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^38 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 17120288789743358593
^39 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h4e78e9974f8f2c32E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 17248742383147200518
^40 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^41 = gv: (name: "alloc30", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 17915678448346230790
^42 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^43 = gv: (name: "alloc38", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 18408020549731500392
^44 = blockcount: 52
