; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/OSReadSwapInt64.rs.bc'
source_filename = "OSReadSwapInt64.beaf9e7d-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%OSUnalignedU64 = type <{ i64 }>
%"core::mem::manually_drop::ManuallyDrop<OSUnalignedU64>" = type { %OSUnalignedU64 }
%"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>" = type { [8 x i8] }

@alloc10 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc11 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc10, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc13 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc14 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc15 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc16 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc17 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc16, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\B9\04\00\00\0D\00\00\00" }>, align 8
@alloc5 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Swapped value: " }>, align 1
@alloc7 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [8 x i8] c"\0F\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17ha0fa0bfcb631d34bE(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hb5272ddb11430e6cE(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h9f024167ed99ace6E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb5d5637c14577644E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h9f024167ed99ace6E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i64*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i64* %x to %"core::fmt::Opaque"*
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
define internal void @_ZN4core3fmt9Arguments6new_v117h2320913fdf8d217bE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h2320913fdf8d217bE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc11 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc13 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc15 to %"core::panic::location::Location"*)) #6
  unreachable
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr14read_unaligned17hdeca521c5648df26E(%OSUnalignedU64* %src) unnamed_addr #0 {
start:
  %0 = alloca %OSUnalignedU64, align 1
  %1 = alloca i64, align 8
  %slot.i = alloca %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU64>", align 1
  %2 = alloca %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>", align 1
  %3 = alloca i64, align 8
  %_3.i = alloca %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU64>", align 1
  %4 = alloca %OSUnalignedU64, align 1
  %5 = alloca i64, align 8
  %self.i = alloca %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>", align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %_10 = alloca %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>", align 1
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>", align 1
  %8 = alloca %OSUnalignedU64, align 1
  %9 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>"* %2 to {}*
  %10 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>"* %2 to i64*
  %11 = load i64, i64* %10, align 1
  store i64 %11, i64* %7, align 8
  %12 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>"* %tmp to i8*
  %13 = bitcast i64* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 8 %13, i64 8, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = bitcast %OSUnalignedU64* %src to i8*
  %14 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>"* %tmp to %OSUnalignedU64*
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = bitcast %OSUnalignedU64* %14 to i8*
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN4core10intrinsics19copy_nonoverlapping17ha0fa0bfcb631d34bE(i8* %_4, i8* %_6, i64 8)
  br label %bb4

bb4:                                              ; preds = %bb3
  %15 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>"* %_10 to i8*
  %16 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>"* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %16, i64 8, i1 false)
  %17 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>"* %_10 to i64*
  %18 = load i64, i64* %17, align 1
  store i64 %18, i64* %5, align 8
  %19 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>"* %self.i to i8*
  %20 = bitcast i64* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU64>"* %self.i to %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU64>"*
  %22 = bitcast %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU64>"* %_3.i to i8*
  %23 = bitcast %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU64>"* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %23, i64 8, i1 false)
  %24 = bitcast %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU64>"* %_3.i to i64*
  %25 = load i64, i64* %24, align 1
  store i64 %25, i64* %1, align 8
  %26 = bitcast %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU64>"* %slot.i to i8*
  %27 = bitcast i64* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 8 %27, i64 8, i1 false)
  %28 = bitcast %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU64>"* %slot.i to %OSUnalignedU64*
  %29 = bitcast %OSUnalignedU64* %0 to i8*
  %30 = bitcast %OSUnalignedU64* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %30, i64 8, i1 false)
  %31 = bitcast %OSUnalignedU64* %0 to i64*
  %32 = load i64, i64* %31, align 1
  store i64 %32, i64* %3, align 8
  %33 = bitcast %OSUnalignedU64* %4 to i8*
  %34 = bitcast i64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = bitcast %OSUnalignedU64* %4 to i64*
  %36 = load i64, i64* %35, align 1
  store i64 %36, i64* %6, align 8
  %37 = bitcast %OSUnalignedU64* %8 to i8*
  %38 = bitcast i64* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 8 %38, i64 8, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb4
  %39 = bitcast %OSUnalignedU64* %8 to i64*
  %40 = load i64, i64* %39, align 1
  ret i64 %40
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hfb714538d8f0edf6E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: uwtable
define i64 @os_read_swap_int64(i8* %base, i64 %offset) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %unaligned_val = alloca %OSUnalignedU64, align 1
  %3 = getelementptr inbounds i8, i8* %base, i64 %offset
  store i8* %3, i8** %0, align 8
  %4 = load i8*, i8** %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %ptr = bitcast i8* %4 to %OSUnalignedU64*
  %5 = call i64 @_ZN4core3ptr14read_unaligned17hdeca521c5648df26E(%OSUnalignedU64* %ptr)
  store i64 %5, i64* %2, align 8
  %6 = bitcast %OSUnalignedU64* %unaligned_val to i8*
  %7 = bitcast i64* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 8 %7, i64 8, i1 false)
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = bitcast %OSUnalignedU64* %unaligned_val to i64*
  %_9 = load i64, i64* %8, align 1
  %9 = call i64 @llvm.bswap.i64(i64 %_9)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64 %10
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_14 = alloca [1 x { i8*, i64* }], align 8
  %_7 = alloca %"core::fmt::Arguments", align 8
  %result = alloca i64, align 8
  %data = alloca [8 x i8], align 1
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %data, i64 0, i64 0
  store i8 1, i8* %0, align 1
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %data, i64 0, i64 1
  store i8 2, i8* %1, align 1
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %data, i64 0, i64 2
  store i8 3, i8* %2, align 1
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %data, i64 0, i64 3
  store i8 4, i8* %3, align 1
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %data, i64 0, i64 4
  store i8 5, i8* %4, align 1
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %data, i64 0, i64 5
  store i8 6, i8* %5, align 1
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %data, i64 0, i64 6
  store i8 7, i8* %6, align 1
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %data, i64 0, i64 7
  store i8 8, i8* %7, align 1
  %_4.0 = bitcast [8 x i8]* %data to [0 x i8]*
  %_3 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hfb714538d8f0edf6E"([0 x i8]* align 1 %_4.0, i64 8)
  br label %bb1

bb1:                                              ; preds = %start
  %8 = call i64 @os_read_swap_int64(i8* %_3, i64 0)
  store i64 %8, i64* %result, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %9 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hb5272ddb11430e6cE(i64* align 8 %result)
  %_15.0 = extractvalue { i8*, i64* } %9, 0
  %_15.1 = extractvalue { i8*, i64* } %9, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %10 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_14, i64 0, i64 0
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 0
  store i8* %_15.0, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 1
  store i64* %_15.1, i64** %12, align 8
  %_11.0 = bitcast [1 x { i8*, i64* }]* %_14 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h2320913fdf8d217bE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_7, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc6 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_11.0, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_7)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb5d5637c14577644E"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/OSReadSwapInt64.rs.bc", hash: (1242397152, 330175823, 376149318, 2984440754, 3086667001))
^1 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb5d5637c14577644E") ; guid = 13531240843763559
^2 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 446216576754839225
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 744583502989732846
^5 = gv: (name: "llvm.bswap.i64") ; guid = 1049797340822038457
^6 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hb5272ddb11430e6cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^17)), refs: (^1)))) ; guid = 1138600663006427677
^7 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4, ^9)))) ; guid = 1408598819686509643
^8 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^2)))) ; guid = 1423706869492258881
^9 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4520207348061264066
^10 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 6532718643806015472
^11 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^12 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6781771793331884519
^13 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h2320913fdf8d217bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^13), (callee: ^22)), refs: (^16, ^15, ^10)))) ; guid = 9373101503208328290
^14 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17ha0fa0bfcb631d34bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 10675309015838204502
^15 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^23)))) ; guid = 12052479405798284973
^16 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14083291568028189132
^17 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h9f024167ed99ace6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 14249916208319871963
^18 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hfb714538d8f0edf6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 14415386481962060771
^19 = gv: (name: "os_read_swap_int64", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^21))))) ; guid = 15464990397328030823
^20 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^18), (callee: ^19), (callee: ^6), (callee: ^13), (callee: ^24)), refs: (^7)))) ; guid = 15822663052811949562
^21 = gv: (name: "_ZN4core3ptr14read_unaligned17hdeca521c5648df26E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 68, calls: ((callee: ^14))))) ; guid = 16006233189569169576
^22 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^23 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16810714305475411767
^24 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^25 = blockcount: 30
