; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_warning.rs.bc'
source_filename = "opng_warning.0c9736f2-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%png_struct = type {}
%OpngProcessStruct = type <{ i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>

@alloc18 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc19 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc18, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc21 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc22 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc23 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@_ZN12opng_warning8READ_PTR17h89bef20db152b8a4E = internal global <{ [8 x i8] }> zeroinitializer, align 8
@alloc13 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c"Warning: " }>, align 1
@alloc15 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc14 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [9 x i8] }>, <{ [9 x i8] }>* @alloc13, i32 0, i32 0, i32 0), [8 x i8] c"\09\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@_ZN12opng_warning7PROCESS17h70d4d49e9b4bcbebE = internal global <{ [108 x i8] }> zeroinitializer, align 1

; Function Attrs: uwtable
define zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4456b9678482f545E"({ [0 x i8]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !2, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hf5d046d1a9e107f1E({ [0 x i8]*, i64 }* align 8 %x) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h812fd92bd7777a1aE({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4456b9678482f545E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h812fd92bd7777a1aE({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f) unnamed_addr #1 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast { [0 x i8]*, i64 }* %x to %"core::fmt::Opaque"*
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
define internal void @_ZN4core3fmt9Arguments6new_v117h7ff20a3026bdcd5eE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #1 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h7ff20a3026bdcd5eE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc19 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc21 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc23 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: inlinehint uwtable
define %png_struct* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2fb9b4aca98b6426E"(i8* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i8* %self to %png_struct*
  ret %png_struct* %_2
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc4f8f43e410a06bE"(i8** align 8 %self, i8** align 8 %other) unnamed_addr #1 {
start:
  %_11 = alloca { i64*, i64* }, align 8
  %_10 = alloca i8, align 1
  %0 = alloca i8, align 1
  %1 = bitcast i8** %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %__self_tag = select i1 %3, i64 0, i64 1
  %4 = bitcast i8** %other to {}**
  %5 = load {}*, {}** %4, align 8
  %6 = icmp eq {}* %5, null
  %__arg1_tag = select i1 %6, i64 0, i64 1
  %_7 = icmp eq i64 %__self_tag, %__arg1_tag
  br i1 %_7, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %7 = bitcast { i64*, i64* }* %_11 to i8***
  store i8** %self, i8*** %7, align 8
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_11, i32 0, i32 1
  %9 = bitcast i64** %8 to i8***
  store i8** %other, i8*** %9, align 8
  %10 = bitcast { i64*, i64* }* %_11 to i8***
  %_20 = load i8**, i8*** %10, align 8, !nonnull !1, !align !4, !noundef !1
  %11 = bitcast i8** %_20 to {}**
  %12 = load {}*, {}** %11, align 8
  %13 = icmp eq {}* %12, null
  %_15 = select i1 %13, i64 0, i64 1
  %14 = icmp eq i64 %_15, 1
  br i1 %14, label %bb5, label %bb4

bb5:                                              ; preds = %bb2
  %15 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_11, i32 0, i32 1
  %16 = bitcast i64** %15 to i8***
  %_21 = load i8**, i8*** %16, align 8, !nonnull !1, !align !4, !noundef !1
  %17 = bitcast i8** %_21 to {}**
  %18 = load {}*, {}** %17, align 8
  %19 = icmp eq {}* %18, null
  %_14 = select i1 %19, i64 0, i64 1
  %20 = icmp eq i64 %_14, 1
  br i1 %20, label %bb6, label %bb4

bb4:                                              ; preds = %bb5, %bb2
  store i8 1, i8* %_10, align 1
  br label %bb8

bb6:                                              ; preds = %bb5
  %21 = bitcast { i64*, i64* }* %_11 to i8***
  %_22 = load i8**, i8*** %21, align 8, !nonnull !1, !align !4, !noundef !1
  %22 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_11, i32 0, i32 1
  %23 = bitcast i64** %22 to i8***
  %_23 = load i8**, i8*** %23, align 8, !nonnull !1, !align !4, !noundef !1
  %24 = call zeroext i1 @"_ZN78_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h86411dcbb87ca0d2E"(i8** align 8 %_22, i8** align 8 %_23)
  %25 = zext i1 %24 to i8
  store i8 %25, i8* %_10, align 1
  br label %bb7

bb8:                                              ; preds = %bb7, %bb4
  %26 = load i8, i8* %_10, align 1, !range !3, !noundef !1
  %27 = trunc i8 %26 to i1
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %0, align 1
  br label %bb3

bb7:                                              ; preds = %bb6
  br label %bb8

bb3:                                              ; preds = %bb8, %bb1
  %29 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %30 = trunc i8 %29 to i1
  ret i1 %30
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN78_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h86411dcbb87ca0d2E"(i8** align 8 %self, i8** align 8 %other) unnamed_addr #1 {
start:
  %_4 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  %_3 = call %png_struct* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2fb9b4aca98b6426E"(i8* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = load i8*, i8** %other, align 8, !nonnull !1, !noundef !1
  %_5 = call %png_struct* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2fb9b4aca98b6426E"(i8* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = icmp eq %png_struct* %_3, %_5
  ret i1 %0
}

; Function Attrs: uwtable
define void @opng_warning(i8* %png_ptr, [0 x i8]* align 1 %msg.0, i64 %msg.1) unnamed_addr #0 {
start:
  %_5 = alloca i8*, align 8
  store i8* %png_ptr, i8** %_5, align 8
  %_3 = call zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc4f8f43e410a06bE"(i8** align 8 %_5, i8** align 8 bitcast (<{ [8 x i8] }>* @_ZN12opng_warning8READ_PTR17h89bef20db152b8a4E to i8**))
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb2, %bb1
  call void @opng_print_warning([0 x i8]* align 1 %msg.0, i64 %msg.1)
  br label %bb4

bb2:                                              ; preds = %bb1
  %0 = load i32, i32* getelementptr inbounds (%OpngProcessStruct, %OpngProcessStruct* bitcast (<{ [108 x i8] }>* @_ZN12opng_warning7PROCESS17h70d4d49e9b4bcbebE to %OpngProcessStruct*), i32 0, i32 0), align 1
  %1 = or i32 %0, 8448
  store i32 %1, i32* getelementptr inbounds (%OpngProcessStruct, %OpngProcessStruct* bitcast (<{ [108 x i8] }>* @_ZN12opng_warning7PROCESS17h70d4d49e9b4bcbebE to %OpngProcessStruct*), i32 0, i32 0), align 1
  br label %bb3

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: uwtable
define void @opng_print_warning([0 x i8]* align 1 %0, i64 %1) unnamed_addr #0 {
start:
  %_10 = alloca [1 x { i8*, i64* }], align 8
  %_3 = alloca %"core::fmt::Arguments", align 8
  %msg = alloca { [0 x i8]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %msg, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %msg, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hf5d046d1a9e107f1E({ [0 x i8]*, i64 }* align 8 %msg)
  %_11.0 = extractvalue { i8*, i64* } %4, 0
  %_11.1 = extractvalue { i8*, i64* } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_10, i64 0, i64 0
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 0
  store i8* %_11.0, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 1
  store i64* %_11.1, i64** %7, align 8
  %_7.0 = bitcast [1 x { i8*, i64* }]* %_10 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h7ff20a3026bdcd5eE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_3, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc14 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_7.0, i64 1)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #0

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_warning.rs.bc", hash: (3260636055, 3502728976, 938494255, 996764843, 996742457))
^1 = gv: (name: "_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc4f8f43e410a06bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 57, calls: ((callee: ^2))))) ; guid = 8627518864409768
^2 = gv: (name: "_ZN78_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h86411dcbb87ca0d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^9))))) ; guid = 1551582515927502972
^3 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hf5d046d1a9e107f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^5)), refs: (^13)))) ; guid = 2353473280318777717
^4 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2356036916843713135
^5 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h812fd92bd7777a1aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 5473112778730954893
^6 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^7 = gv: (name: "_ZN12opng_warning8READ_PTR17h89bef20db152b8a4E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 7511203927320202571
^8 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^20, ^10)))) ; guid = 8870310861550453675
^9 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2fb9b4aca98b6426E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 10205071929071833943
^10 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10284925219567481247
^11 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h7ff20a3026bdcd5eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^11), (callee: ^15)), refs: (^4, ^23, ^12)))) ; guid = 10835537104627571113
^12 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 12847508395973353179
^13 = gv: (name: "_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4456b9678482f545E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^14))))) ; guid = 14073036547151044933
^14 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^15 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^16 = gv: (name: "opng_warning", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^1), (callee: ^17)), refs: (^7, ^19)))) ; guid = 16122626966632963432
^17 = gv: (name: "opng_print_warning", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^3), (callee: ^11), (callee: ^21)), refs: (^8)))) ; guid = 16366266564449251195
^18 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16808486985394168424
^19 = gv: (name: "_ZN12opng_warning7PROCESS17h70d4d49e9b4bcbebE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 17394369337979270558
^20 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17590145469454511070
^21 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^22 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18147913100768265841
^23 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^22)))) ; guid = 18200725268011624127
^24 = blockcount: 36
