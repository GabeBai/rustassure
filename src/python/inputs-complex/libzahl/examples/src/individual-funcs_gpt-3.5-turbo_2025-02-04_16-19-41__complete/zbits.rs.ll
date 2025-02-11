; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbits.rs.bc'
source_filename = "zbits.35f2acf2-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::ptr::metadata::PtrComponents<u64>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u64>" = type { [1 x i64] }
%Zahl = type <{ i32, i32, i64, i64, i64* }>

@alloc18 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc19 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc18, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc21 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc22 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc23 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc32 = private unnamed_addr constant <{ [86 x i8] }> <{ [86 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbits.rs" }>, align 1
@alloc25 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc32, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\007\00\00\00)\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc27 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc32, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00:\00\00\00\0A\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc29 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc32, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00;\00\00\00)\00\00\00" }>, align 8
@alloc31 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc32, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00;\00\00\00\05\00\00\00" }>, align 8
@alloc33 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc32, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\008\00\00\00\09\00\00\00" }>, align 8
@alloc12 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"Number of bits: " }>, align 1
@alloc14 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc13 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [16 x i8] }>, <{ [16 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [8 x i8] c"\10\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17he36532930d94e142E(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hcd328bcb7b1facceE(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hcd328bcb7b1facceE(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define internal void @_ZN4core3fmt9Arguments6new_v117hf2259a8ff9bf84dbE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117hf2259a8ff9bf84dbE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc19 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc21 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc23 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr13read_volatile17h0f5c9573b673794bE(i64* %src) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = load volatile i64, i64* %src, align 8
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17he5b1fcdc7855f8c9E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u64>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u64>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u64>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u64>", %"core::ptr::metadata::PtrComponents<u64>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u64>"* %_3 to %"core::ptr::metadata::PtrComponents<u64>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u64>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u64>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u64>"* %_3 to i64**
  %6 = load i64*, i64** %5, align 8
  ret i64* %6
}

; Function Attrs: uwtable
define i64 @zbits([1 x %Zahl]* align 1 %a) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %rc = alloca i64, align 8
  %3 = alloca i64, align 8
  %_3 = call i32 @zzero([1 x %Zahl]* align 1 %a)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i32 %_3, 0
  br i1 %4, label %bb3, label %bb2

bb3:                                              ; preds = %bb8, %bb1
  %5 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %6 = getelementptr inbounds %Zahl, %Zahl* %5, i32 0, i32 4
  %_7 = load i64*, i64** %6, align 1
  %7 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %8 = getelementptr inbounds %Zahl, %Zahl* %7, i32 0, i32 2
  %_11 = load i64, i64* %8, align 1
  %9 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %_11, i64 1)
  %_13.0 = extractvalue { i64, i1 } %9, 0
  %_13.1 = extractvalue { i64, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_13.1, i1 false)
  br i1 %10, label %panic, label %bb4

bb2:                                              ; preds = %bb1
  store i64 1, i64* %3, align 8
  br label %bb18

bb18:                                             ; preds = %bb17, %bb2
  %11 = load i64, i64* %3, align 8
  ret i64 %11

bb4:                                              ; preds = %bb3
  %12 = getelementptr inbounds i64, i64* %_7, i64 %_13.0
  store i64* %12, i64** %0, align 8
  %_3.i6 = load i64*, i64** %0, align 8
  br label %bb5

panic:                                            ; preds = %bb3
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc25 to %"core::panic::location::Location"*)) #7
  unreachable

bb5:                                              ; preds = %bb4
  %13 = call i64 @_ZN4core3ptr13read_volatile17h0f5c9573b673794bE(i64* %_3.i6)
  br label %bb6

bb6:                                              ; preds = %bb5
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %bb7, label %bb9

bb7:                                              ; preds = %bb6
  %15 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %16 = getelementptr inbounds %Zahl, %Zahl* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 1
  %18 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 1)
  %_15.0 = extractvalue { i64, i1 } %18, 0
  %_15.1 = extractvalue { i64, i1 } %18, 1
  %19 = call i1 @llvm.expect.i1(i1 %_15.1, i1 false)
  br i1 %19, label %panic5, label %bb8

bb9:                                              ; preds = %bb6
  %20 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %21 = getelementptr inbounds %Zahl, %Zahl* %20, i32 0, i32 2
  %_17 = load i64, i64* %21, align 1
  %22 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_17, i64 8)
  %_19.0 = extractvalue { i64, i1 } %22, 0
  %_19.1 = extractvalue { i64, i1 } %22, 1
  %23 = call i1 @llvm.expect.i1(i1 %_19.1, i1 false)
  br i1 %23, label %panic1, label %bb10

bb10:                                             ; preds = %bb9
  br label %bb11

panic1:                                           ; preds = %bb9
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc27 to %"core::panic::location::Location"*)) #7
  unreachable

bb11:                                             ; preds = %bb10
  %24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_19.0, i64 8)
  %_21.0 = extractvalue { i64, i1 } %24, 0
  %_21.1 = extractvalue { i64, i1 } %24, 1
  %25 = call i1 @llvm.expect.i1(i1 %_21.1, i1 false)
  br i1 %25, label %panic2, label %bb12

bb12:                                             ; preds = %bb11
  store i64 %_21.0, i64* %rc, align 8
  %26 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %27 = getelementptr inbounds %Zahl, %Zahl* %26, i32 0, i32 4
  %_26 = load i64*, i64** %27, align 1
  %28 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %29 = getelementptr inbounds %Zahl, %Zahl* %28, i32 0, i32 2
  %_30 = load i64, i64* %29, align 1
  %30 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %_30, i64 1)
  %_32.0 = extractvalue { i64, i1 } %30, 0
  %_32.1 = extractvalue { i64, i1 } %30, 1
  %31 = call i1 @llvm.expect.i1(i1 %_32.1, i1 false)
  br i1 %31, label %panic3, label %bb13

panic2:                                           ; preds = %bb11
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc27 to %"core::panic::location::Location"*)) #7
  unreachable

bb13:                                             ; preds = %bb12
  %32 = getelementptr inbounds i64, i64* %_26, i64 %_32.0
  store i64* %32, i64** %1, align 8
  %_3.i = load i64*, i64** %1, align 8
  br label %bb14

panic3:                                           ; preds = %bb12
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc29 to %"core::panic::location::Location"*)) #7
  unreachable

bb14:                                             ; preds = %bb13
  %33 = call i64 @_ZN4core3ptr13read_volatile17h0f5c9573b673794bE(i64* %_3.i)
  br label %bb15

bb15:                                             ; preds = %bb14
  %34 = call i64 @llvm.ctlz.i64(i64 %33, i1 false)
  store i64 %34, i64* %2, align 8
  %_2.i = load i64, i64* %2, align 8
  %35 = trunc i64 %_2.i to i32
  br label %bb16

bb16:                                             ; preds = %bb15
  %_22 = zext i32 %35 to i64
  %36 = load i64, i64* %rc, align 8
  %37 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %36, i64 %_22)
  %_33.0 = extractvalue { i64, i1 } %37, 0
  %_33.1 = extractvalue { i64, i1 } %37, 1
  %38 = call i1 @llvm.expect.i1(i1 %_33.1, i1 false)
  br i1 %38, label %panic4, label %bb17

bb17:                                             ; preds = %bb16
  store i64 %_33.0, i64* %rc, align 8
  %39 = load i64, i64* %rc, align 8
  store i64 %39, i64* %3, align 8
  br label %bb18

panic4:                                           ; preds = %bb16
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc31 to %"core::panic::location::Location"*)) #7
  unreachable

bb8:                                              ; preds = %bb7
  %40 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %41 = getelementptr inbounds %Zahl, %Zahl* %40, i32 0, i32 2
  store i64 %_15.0, i64* %41, align 1
  br label %bb3

panic5:                                           ; preds = %bb7
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc33 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: uwtable
define i32 @zzero([1 x %Zahl]* align 1 %a) unnamed_addr #1 {
start:
  ret i32 0
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %_15 = alloca [1 x { i8*, i64* }], align 8
  %_8 = alloca %"core::fmt::Arguments", align 8
  %bits = alloca i64, align 8
  %_2 = alloca %Zahl, align 1
  %a = alloca [1 x %Zahl], align 1
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17he5b1fcdc7855f8c9E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %Zahl* %_2 to i32*
  store i32 0, i32* %4, align 1
  %5 = getelementptr inbounds %Zahl, %Zahl* %_2, i32 0, i32 1
  store i32 0, i32* %5, align 1
  %6 = getelementptr inbounds %Zahl, %Zahl* %_2, i32 0, i32 2
  store i64 0, i64* %6, align 1
  %7 = getelementptr inbounds %Zahl, %Zahl* %_2, i32 0, i32 3
  store i64 0, i64* %7, align 1
  %8 = getelementptr inbounds %Zahl, %Zahl* %_2, i32 0, i32 4
  store i64* %3, i64** %8, align 1
  %9 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %10 = bitcast %Zahl* %9 to i8*
  %11 = bitcast %Zahl* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %11, i64 32, i1 false)
  %12 = call i64 @zbits([1 x %Zahl]* align 1 %a)
  store i64 %12, i64* %bits, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %13 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17he36532930d94e142E(i64* align 8 %bits)
  %_16.0 = extractvalue { i8*, i64* } %13, 0
  %_16.1 = extractvalue { i8*, i64* } %13, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %14 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_15, i64 0, i64 0
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %14, i32 0, i32 0
  store i8* %_16.0, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %14, i32 0, i32 1
  store i64* %_16.1, i64** %16, align 8
  %_12.0 = bitcast [1 x { i8*, i64* }]* %_15 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hf2259a8ff9bf84dbE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_8, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc13 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_12.0, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_8)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #4

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbits.rs.bc", hash: (2162842926, 10594135, 2501513981, 2128708352, 1047642475))
^1 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hcd328bcb7b1facceE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 113911924473870683
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^19)))) ; guid = 671886932990407227
^4 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 881698078103577356
^5 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^6 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^7 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2008647049208409352
^8 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17he36532930d94e142E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^1)), refs: (^6)))) ; guid = 2521363288536879182
^9 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^10 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^19)))) ; guid = 2658384492868855153
^11 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3282960536795266989
^12 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^19)))) ; guid = 5029363025106950824
^13 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5436943481773832288
^14 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^24)))) ; guid = 6063328074089834869
^15 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^16 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^17 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^34)))) ; guid = 7248621475295351322
^18 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7437102124921884775
^19 = gv: (name: "alloc32", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7745096984711768828
^20 = gv: (name: "_ZN4core3fmt9Arguments6new_v117hf2259a8ff9bf84dbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^20), (callee: ^32)), refs: (^4, ^17, ^14)))) ; guid = 8060876325772423041
^21 = gv: (name: "_ZN4core3ptr13read_volatile17h0f5c9573b673794bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 9152830809946510590
^22 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^23 = gv: (name: "zbits", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 104, calls: ((callee: ^13), (callee: ^22), (callee: ^21)), refs: (^10, ^25, ^3, ^7, ^27, ^26, ^12)))) ; guid = 10528502499225088932
^24 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12416392928880824944
^25 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13231960580225423348
^26 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^19)))) ; guid = 13597763453839358602
^27 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^19)))) ; guid = 14151626646887327448
^28 = gv: (name: "llvm.ssub.with.overflow.i64") ; guid = 15061848300821580795
^29 = gv: (name: "llvm.ctlz.i64") ; guid = 15146615656485281006
^30 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11, ^18)))) ; guid = 15737983046055299964
^31 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^33), (callee: ^23), (callee: ^8), (callee: ^20), (callee: ^35)), refs: (^30)))) ; guid = 15822663052811949562
^32 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^33 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17he5b1fcdc7855f8c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 16751030251316428737
^34 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16981355617362367721
^35 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^36 = blockcount: 47
