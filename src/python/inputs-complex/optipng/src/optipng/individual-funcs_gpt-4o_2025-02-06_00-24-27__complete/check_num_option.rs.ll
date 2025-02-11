; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_num_option.rs.bc'
source_filename = "check_num_option.ef03d1d2-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>" = type { i8, [7 x i8] }
%"core::result::Result<u32, core::num::error::ParseIntError>" = type { i8, [7 x i8] }
%"core::result::Result<u32, core::num::error::ParseIntError>::Ok" = type { [1 x i32], i32 }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Continue" = type { [1 x i32], i32 }
%"core::result::Result<u32, core::num::error::ParseIntError>::Err" = type { [1 x i8], i8 }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Break" = type { [1 x i8], i8 }

@alloc18 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc19 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc18, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc21 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc36 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc37 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc36, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc38 = private unnamed_addr constant <{ [98 x i8] }> <{ [98 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_num_option.rs" }>, align 1
@alloc39 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [98 x i8] }>, <{ [98 x i8] }>* @alloc38, i32 0, i32 0, i32 0), [16 x i8] c"b\00\00\00\00\00\00\00\07\00\00\00\0E\00\00\00" }>, align 8
@alloc12 = private unnamed_addr constant <{ [35 x i8] }> <{ [35 x i8] c"Error: Invalid option argument for " }>, align 1
@alloc14 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c": " }>, align 1
@alloc30 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc13 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [35 x i8] }>, <{ [35 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [8 x i8] c"#\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [8 x i8] c"\02\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc30, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc40 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"example_option" }>, align 1
@alloc41 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"12345" }>, align 1
@alloc28 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Result: " }>, align 1
@alloc29 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [8 x i8] }>, <{ [8 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [8 x i8] c"\08\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc30, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i8 @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h560719702f0a19ccE"(i8 %0, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 {
start:
  %2 = alloca i8, align 1
  %residual = alloca i8, align 1
  store i8 %0, i8* %residual, align 1
  %e = load i8, i8* %residual, align 1, !range !1, !noundef !2
  %_3 = call i8 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h8a4dc630965ce9e1E"(i8 %e), !range !1
  br label %bb1

bb1:                                              ; preds = %start
  store i8 %_3, i8* %2, align 1
  %3 = load i8, i8* %2, align 1, !range !3, !noundef !2
  ret i8 %3
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h08c08fdf9d1390bbE"({ [0 x i8]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !2, !align !4, !noundef !2
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h2e7e8d30a605ef17E({ [0 x i8]*, i64 }* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h7ef4f67b861538deE({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h08c08fdf9d1390bbE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hff89987dde210487E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hb2c8fbacdacaf00cE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h7ef4f67b861538deE({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !2, !align !4, !noundef !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !2, !align !4, !noundef !2
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hb2c8fbacdacaf00cE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !2, !align !4, !noundef !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !2, !align !4, !noundef !2
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hc9e758eac6ced664E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !5, !noundef !2
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
  call void @_ZN4core3fmt9Arguments6new_v117hc9e758eac6ced664E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc19 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc21 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc37 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h58b6949b46912ec1E"(i8* align 1 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !3, !noundef !2
  %2 = sub i8 %1, 5
  %3 = icmp eq i8 %2, 0
  %_2 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_2, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %0, align 1, !range !5, !noundef !2
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17hdf3409d147a323adE"(i8* align 1 %self) unnamed_addr #0 {
start:
  %_2 = call zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h58b6949b46912ec1E"(i8* align 1 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_2, true
  ret i1 %0
}

; Function Attrs: uwtable
define i8 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h8a4dc630965ce9e1E"(i8 %t) unnamed_addr #1 {
start:
  ret i8 %t
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h148e1d5947e5b534E"(i64 %0) unnamed_addr #0 {
start:
  %_6 = alloca i8, align 1
  %1 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>", align 4
  %2 = alloca i64, align 8
  %self = alloca %"core::result::Result<u32, core::num::error::ParseIntError>", align 4
  store i64 %0, i64* %2, align 8
  %3 = bitcast %"core::result::Result<u32, core::num::error::ParseIntError>"* %self to i8*
  %4 = bitcast i64* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::result::Result<u32, core::num::error::ParseIntError>"* %self to i8*
  %6 = load i8, i8* %5, align 4, !range !5, !noundef !2
  %7 = trunc i8 %6 to i1
  %_2 = zext i1 %7 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = bitcast %"core::result::Result<u32, core::num::error::ParseIntError>"* %self to %"core::result::Result<u32, core::num::error::ParseIntError>::Ok"*
  %9 = getelementptr inbounds %"core::result::Result<u32, core::num::error::ParseIntError>::Ok", %"core::result::Result<u32, core::num::error::ParseIntError>::Ok"* %8, i32 0, i32 1
  %v = load i32, i32* %9, align 4
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>"* %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Continue"*
  %11 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Continue"* %10, i32 0, i32 1
  store i32 %v, i32* %11, align 4
  %12 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>"* %1 to i8*
  store i8 0, i8* %12, align 4
  br label %bb4

bb1:                                              ; preds = %start
  %13 = bitcast %"core::result::Result<u32, core::num::error::ParseIntError>"* %self to %"core::result::Result<u32, core::num::error::ParseIntError>::Err"*
  %14 = getelementptr inbounds %"core::result::Result<u32, core::num::error::ParseIntError>::Err", %"core::result::Result<u32, core::num::error::ParseIntError>::Err"* %13, i32 0, i32 1
  %e = load i8, i8* %14, align 1, !range !1, !noundef !2
  store i8 %e, i8* %_6, align 1
  %15 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>"* %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Break"*
  %16 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Break"* %15, i32 0, i32 1
  %17 = load i8, i8* %_6, align 1, !range !1, !noundef !2
  store i8 %17, i8* %16, align 1
  %18 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>"* %1 to i8*
  store i8 1, i8* %18, align 4
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %19 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>"* %1 to i64*
  %20 = load i64, i64* %19, align 4
  ret i64 %20
}

; Function Attrs: uwtable
define i8 @opng_str2ulong(i32* align 4 %value, [0 x i8]* align 1 %opt_arg.0, i64 %opt_arg.1) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = alloca i64, align 8
  %_5 = alloca %"core::result::Result<u32, core::num::error::ParseIntError>", align 4
  %_4 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>", align 4
  %2 = alloca i8, align 1
  %3 = call i64 @"_ZN4core3num21_$LT$impl$u20$u32$GT$14from_str_radix17h81c3fb49c98e1281E"([0 x i8]* align 1 %opt_arg.0, i64 %opt_arg.1, i32 10)
  store i64 %3, i64* %1, align 8
  %4 = bitcast %"core::result::Result<u32, core::num::error::ParseIntError>"* %_5 to i8*
  %5 = bitcast i64* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 8 %5, i64 8, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %6 = bitcast %"core::result::Result<u32, core::num::error::ParseIntError>"* %_5 to i64*
  %7 = load i64, i64* %6, align 4
  %8 = call i64 @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h148e1d5947e5b534E"(i64 %7)
  store i64 %8, i64* %0, align 8
  %9 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>"* %_4 to i8*
  %10 = bitcast i64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 8 %10, i64 8, i1 false)
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>"* %_4 to i8*
  %12 = load i8, i8* %11, align 4, !range !5, !noundef !2
  %13 = trunc i8 %12 to i1
  %_7 = zext i1 %13 to i64
  switch i64 %_7, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %14 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>"* %_4 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Continue"*
  %15 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Continue"* %14, i32 0, i32 1
  %val = load i32, i32* %15, align 4
  store i32 %val, i32* %value, align 4
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 1, i1 false)
  store i8 5, i8* %2, align 1
  br label %bb6

bb5:                                              ; preds = %bb2
  %16 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>"* %_4 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Break"*
  %17 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::num::error::ParseIntError>, u32>::Break"* %16, i32 0, i32 1
  %residual = load i8, i8* %17, align 1, !range !1, !noundef !2
  %18 = call i8 @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h560719702f0a19ccE"(i8 %residual, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc39 to %"core::panic::location::Location"*)), !range !3
  store i8 %18, i8* %2, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb3
  %19 = load i8, i8* %2, align 1, !range !3, !noundef !2
  ret i8 %19
}

; Function Attrs: uwtable
define i32 @check_num_option([0 x i8]* align 1 %opt.0, i64 %opt.1, [0 x i8]* align 1 %opt_arg.0, i64 %opt_arg.1, i32 %lowest, i32 %highest) unnamed_addr #1 {
start:
  %_11 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_6 = alloca i8, align 1
  %value = alloca i32, align 4
  store i32 0, i32* %value, align 4
  %0 = call i8 @opng_str2ulong(i32* align 4 %value, [0 x i8]* align 1 %opt_arg.0, i64 %opt_arg.1), !range !3
  store i8 %0, i8* %_11, align 1
  br label %bb10

bb10:                                             ; preds = %start
  %_9 = call zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17hdf3409d147a323adE"(i8* align 1 %_11)
  br label %bb11

bb11:                                             ; preds = %bb10
  br i1 %_9, label %bb7, label %bb8

bb8:                                              ; preds = %bb11
  %_16 = load i32, i32* %value, align 4
  %_15 = icmp ugt i32 %_16, 2147483647
  %1 = zext i1 %_15 to i8
  store i8 %1, i8* %_8, align 1
  br label %bb9

bb7:                                              ; preds = %bb11
  store i8 1, i8* %_8, align 1
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %2 = load i8, i8* %_8, align 1, !range !5, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb5

bb5:                                              ; preds = %bb9
  %_20 = load i32, i32* %value, align 4
  %_18 = icmp slt i32 %_20, %lowest
  %4 = zext i1 %_18 to i8
  store i8 %4, i8* %_7, align 1
  br label %bb6

bb4:                                              ; preds = %bb9
  store i8 1, i8* %_7, align 1
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %5 = load i8, i8* %_7, align 1, !range !5, !noundef !2
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb1, label %bb2

bb2:                                              ; preds = %bb6
  %_24 = load i32, i32* %value, align 4
  %_22 = icmp sgt i32 %_24, %highest
  %7 = zext i1 %_22 to i8
  store i8 %7, i8* %_6, align 1
  br label %bb3

bb1:                                              ; preds = %bb6
  store i8 1, i8* %_6, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %8 = load i8, i8* %_6, align 1, !range !5, !noundef !2
  %9 = trunc i8 %8 to i1
  br i1 %9, label %bb12, label %bb13

bb13:                                             ; preds = %bb12, %bb3
  %_29 = load i32, i32* %value, align 4
  ret i32 %_29

bb12:                                             ; preds = %bb3
  call void @err_option_arg([0 x i8]* align 1 %opt.0, i64 %opt.1, [0 x i8]* align 1 %opt_arg.0, i64 %opt_arg.1)
  br label %bb13
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
  %8 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h2e7e8d30a605ef17E({ [0 x i8]*, i64 }* align 8 %opt)
  %_12.0 = extractvalue { i8*, i64* } %8, 0
  %_12.1 = extractvalue { i8*, i64* } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h2e7e8d30a605ef17E({ [0 x i8]*, i64 }* align 8 %opt_arg)
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
  call void @_ZN4core3fmt9Arguments6new_v117hc9e758eac6ced664E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_4, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc13 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_8.0, i64 2)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"* %_4)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_18 = alloca [1 x { i8*, i64* }], align 8
  %_11 = alloca %"core::fmt::Arguments", align 8
  %result = alloca i32, align 4
  %0 = call i32 @check_num_option([0 x i8]* align 1 bitcast (<{ [14 x i8] }>* @alloc40 to [0 x i8]*), i64 14, [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc41 to [0 x i8]*), i64 5, i32 0, i32 100000)
  store i32 %0, i32* %result, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hff89987dde210487E(i32* align 4 %result)
  %_19.0 = extractvalue { i8*, i64* } %1, 0
  %_19.1 = extractvalue { i8*, i64* } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_18, i64 0, i64 0
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  store i8* %_19.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  store i64* %_19.1, i64** %4, align 8
  %_15.0 = bitcast [1 x { i8*, i64* }]* %_18 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hc9e758eac6ced664E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_11, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc29 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_15.0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_11)
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
declare i64 @"_ZN4core3num21_$LT$impl$u20$u32$GT$14from_str_radix17h81c3fb49c98e1281E"([0 x i8]* align 1, i64, i32) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 5}
!2 = !{}
!3 = !{i8 0, i8 6}
!4 = !{i64 1}
!5 = !{i8 0, i8 2}
!6 = !{i64 8}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_num_option.rs.bc", hash: (2314904687, 2553493632, 521827165, 517623322, 3461725856))
^1 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hb2c8fbacdacaf00cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 125934351638708760
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "_ZN4core3num21_$LT$impl$u20$u32$GT$14from_str_radix17h81c3fb49c98e1281E") ; guid = 848674272230988221
^4 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 979983231823316144
^5 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^24, ^21)))) ; guid = 2016300070356949060
^6 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h8a4dc630965ce9e1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 3000124044253495271
^7 = gv: (name: "opng_str2ulong", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^3), (callee: ^9), (callee: ^10)), refs: (^34)))) ; guid = 3212144894920745388
^8 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^37)))) ; guid = 3217406921382472211
^9 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h148e1d5947e5b534E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37))) ; guid = 3306495788809978543
^10 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h560719702f0a19ccE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^6))))) ; guid = 3728402652195658115
^11 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h2e7e8d30a605ef17E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^13)), refs: (^27)))) ; guid = 4177526389097621784
^12 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6is_err17hdf3409d147a323adE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^28))))) ; guid = 5395695964590320874
^13 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h7ef4f67b861538deE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 5546173828742288594
^14 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4, ^17, ^24)))) ; guid = 6173241024045916361
^15 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6443630041102269427
^16 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^17 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6749133431282642285
^18 = gv: (name: "alloc38", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7761217547221031843
^19 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hff89987dde210487E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^1)), refs: (^29)))) ; guid = 7941304452057436091
^20 = gv: (name: "check_num_option", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 46, calls: ((callee: ^7), (callee: ^12), (callee: ^30))))) ; guid = 8194099374075499730
^21 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8986037871335470842
^22 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9448780353297233958
^23 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10504693582255236297
^24 = gv: (name: "alloc30", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10598084798464810934
^25 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^26)))) ; guid = 11280123503211777143
^26 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11636371691601209751
^27 = gv: (name: "_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h08c08fdf9d1390bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^31))))) ; guid = 12710378350081415381
^28 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h58b6949b46912ec1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 12863464157883105021
^29 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^30 = gv: (name: "err_option_arg", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, calls: ((callee: ^11), (callee: ^35), (callee: ^38)), refs: (^14)))) ; guid = 15425667605701219326
^31 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^32 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21, calls: ((callee: ^20), (callee: ^19), (callee: ^35), (callee: ^36)), refs: (^23, ^15, ^5)))) ; guid = 15822663052811949562
^33 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^34 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 17534706696724165943
^35 = gv: (name: "_ZN4core3fmt9Arguments6new_v117hc9e758eac6ced664E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^35), (callee: ^33)), refs: (^22, ^8, ^25)))) ; guid = 17650269327398414698
^36 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^37 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17788586022299232126
^38 = gv: (name: "_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE") ; guid = 17906690583868548313
^39 = blockcount: 64
