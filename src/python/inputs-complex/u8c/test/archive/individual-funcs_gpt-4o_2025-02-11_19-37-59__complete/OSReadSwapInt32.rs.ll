; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/OSReadSwapInt32.rs.bc'
source_filename = "OSReadSwapInt32.2cef8445-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::fmt::rt::v1::Argument" = type { i64, %"core::fmt::rt::v1::FormatSpec" }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }
%OSUnalignedU32 = type <{ i32 }>
%"core::mem::manually_drop::ManuallyDrop<OSUnalignedU32>" = type { %OSUnalignedU32 }
%"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>" = type { [4 x i8] }

@alloc16 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc17 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc16, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\B9\04\00\00\0D\00\00\00" }>, align 8
@alloc5 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Swapped int32: " }>, align 1
@alloc7 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [8 x i8] c"\0F\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{ [16 x i8], [8 x i8], [8 x i8], [8 x i8], [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", [8 x i8] undef, [8 x i8] c"\02\00\00\00\00\00\00\00", [8 x i8] undef, [9 x i8] c" \00\00\00\04\00\00\00\03", [7 x i8] undef }>, align 8

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17hf72796fc68d427f2E(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17h329c6767b25a1039E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hd5a56b2ed36f0757E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hd5a56b2ed36f0757E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define internal void @_ZN4core3fmt9Arguments16new_v1_formatted17hdeac272faaa71bd0E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1, [0 x %"core::fmt::rt::v1::Argument"]* align 8 %fmt.0, i64 %fmt.1) unnamed_addr #0 {
start:
  %_6 = alloca { i64*, i64 }, align 8
  %1 = bitcast { i64*, i64 }* %_6 to { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }*
  %2 = getelementptr inbounds { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }, { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }* %1, i32 0, i32 0
  store [0 x %"core::fmt::rt::v1::Argument"]* %fmt.0, [0 x %"core::fmt::rt::v1::Argument"]** %2, align 8
  %3 = getelementptr inbounds { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }, { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }* %1, i32 0, i32 1
  store i64 %fmt.1, i64* %3, align 8
  %4 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %5 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %4, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %5, align 8
  %6 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %4, i32 0, i32 1
  store i64 %pieces.1, i64* %6, align 8
  %7 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %8 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_6, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8, !align !3
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_6, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %7, i32 0, i32 0
  store i64* %9, i64** %12, align 8
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %7, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %15 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %14, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %15, align 8
  %16 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %14, i32 0, i32 1
  store i64 %args.1, i64* %16, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define i32 @_ZN4core3ptr14read_unaligned17hf38ae59d3e063f37E(%OSUnalignedU32* %src) unnamed_addr #0 {
start:
  %0 = alloca %OSUnalignedU32, align 1
  %1 = alloca i32, align 4
  %slot.i = alloca %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU32>", align 1
  %2 = alloca %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>", align 1
  %3 = alloca i32, align 4
  %_3.i = alloca %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU32>", align 1
  %4 = alloca %OSUnalignedU32, align 1
  %5 = alloca i32, align 4
  %self.i = alloca %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>", align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %_10 = alloca %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>", align 1
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>", align 1
  %8 = alloca %OSUnalignedU32, align 1
  %9 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>"* %2 to {}*
  %10 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>"* %2 to i32*
  %11 = load i32, i32* %10, align 1
  store i32 %11, i32* %7, align 4
  %12 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>"* %tmp to i8*
  %13 = bitcast i32* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 4 %13, i64 4, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = bitcast %OSUnalignedU32* %src to i8*
  %14 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>"* %tmp to %OSUnalignedU32*
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = bitcast %OSUnalignedU32* %14 to i8*
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hf72796fc68d427f2E(i8* %_4, i8* %_6, i64 4)
  br label %bb4

bb4:                                              ; preds = %bb3
  %15 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>"* %_10 to i8*
  %16 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>"* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %16, i64 4, i1 false)
  %17 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>"* %_10 to i32*
  %18 = load i32, i32* %17, align 1
  store i32 %18, i32* %5, align 4
  %19 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>"* %self.i to i8*
  %20 = bitcast i32* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = bitcast %"core::mem::maybe_uninit::MaybeUninit<OSUnalignedU32>"* %self.i to %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU32>"*
  %22 = bitcast %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU32>"* %_3.i to i8*
  %23 = bitcast %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU32>"* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %23, i64 4, i1 false)
  %24 = bitcast %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU32>"* %_3.i to i32*
  %25 = load i32, i32* %24, align 1
  store i32 %25, i32* %1, align 4
  %26 = bitcast %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU32>"* %slot.i to i8*
  %27 = bitcast i32* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = bitcast %"core::mem::manually_drop::ManuallyDrop<OSUnalignedU32>"* %slot.i to %OSUnalignedU32*
  %29 = bitcast %OSUnalignedU32* %0 to i8*
  %30 = bitcast %OSUnalignedU32* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %30, i64 4, i1 false)
  %31 = bitcast %OSUnalignedU32* %0 to i32*
  %32 = load i32, i32* %31, align 1
  store i32 %32, i32* %3, align 4
  %33 = bitcast %OSUnalignedU32* %4 to i8*
  %34 = bitcast i32* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = bitcast %OSUnalignedU32* %4 to i32*
  %36 = load i32, i32* %35, align 1
  store i32 %36, i32* %6, align 4
  %37 = bitcast %OSUnalignedU32* %8 to i8*
  %38 = bitcast i32* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 4 %38, i64 4, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb4
  %39 = bitcast %OSUnalignedU32* %8 to i32*
  %40 = load i32, i32* %39, align 1
  ret i32 %40
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hafc9828d9407e790E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: uwtable
define i32 @os_read_swap_int32(i8* %base, i64 %offset) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %unaligned_val = alloca %OSUnalignedU32, align 1
  %3 = getelementptr inbounds i8, i8* %base, i64 %offset
  store i8* %3, i8** %0, align 8
  %4 = load i8*, i8** %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %ptr = bitcast i8* %4 to %OSUnalignedU32*
  %5 = call i32 @_ZN4core3ptr14read_unaligned17hf38ae59d3e063f37E(%OSUnalignedU32* %ptr)
  store i32 %5, i32* %2, align 4
  %6 = bitcast %OSUnalignedU32* %unaligned_val to i8*
  %7 = bitcast i32* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 4 %7, i64 4, i1 false)
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = bitcast %OSUnalignedU32* %unaligned_val to i32*
  %_9 = load i32, i32* %8, align 1
  %9 = call i32 @llvm.bswap.i32(i32 %_9)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i32 %10
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_14 = alloca [1 x { i8*, i64* }], align 8
  %_7 = alloca %"core::fmt::Arguments", align 8
  %result = alloca i32, align 4
  %data = alloca [4 x i8], align 1
  %0 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 0
  store i8 18, i8* %0, align 1
  %1 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 1
  store i8 52, i8* %1, align 1
  %2 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 2
  store i8 86, i8* %2, align 1
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 3
  store i8 120, i8* %3, align 1
  %_4.0 = bitcast [4 x i8]* %data to [0 x i8]*
  %_3 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hafc9828d9407e790E"([0 x i8]* align 1 %_4.0, i64 4)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call i32 @os_read_swap_int32(i8* %_3, i64 0)
  store i32 %4, i32* %result, align 4
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17h329c6767b25a1039E(i32* align 4 %result)
  %_15.0 = extractvalue { i8*, i64* } %5, 0
  %_15.1 = extractvalue { i8*, i64* } %5, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_14, i64 0, i64 0
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 0
  store i8* %_15.0, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 1
  store i64* %_15.1, i64** %8, align 8
  %_11.0 = bitcast [1 x { i8*, i64* }]* %_14 to [0 x { i8*, i64* }]*
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core3fmt9Arguments16new_v1_formatted17hdeac272faaa71bd0E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_7, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc6 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_11.0, i64 1, [0 x %"core::fmt::rt::v1::Argument"]* align 8 bitcast (<{ [16 x i8], [8 x i8], [8 x i8], [8 x i8], [9 x i8], [7 x i8] }>* @alloc14 to [0 x %"core::fmt::rt::v1::Argument"]*), i64 1)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_7)
  br label %bb6

bb6:                                              ; preds = %bb5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i64 8}

^0 = module: (path: "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/OSReadSwapInt32.rs.bc", hash: (2422037630, 418903084, 3391795206, 2812995206, 3152206830))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hd5a56b2ed36f0757E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1802585484436255194
^3 = gv: (name: "llvm.bswap.i32") ; guid = 2706216642482500884
^4 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17hf72796fc68d427f2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 2761347412020605678
^5 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3138640408727556781
^6 = gv: (name: "os_read_swap_int32", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^17))))) ; guid = 3735994594931237016
^7 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6531098798428537960
^8 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E") ; guid = 8401561645110503840
^9 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9147625725221543521
^10 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14539596038284925891
^11 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 14741225294446286824
^12 = gv: (name: "_ZN4core3fmt10ArgumentV113new_upper_hex17h329c6767b25a1039E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^2)), refs: (^8)))) ; guid = 15066907458241476457
^13 = gv: (name: "_ZN4core3fmt9Arguments16new_v1_formatted17hdeac272faaa71bd0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26))) ; guid = 15797309256717015337
^14 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34, calls: ((callee: ^16), (callee: ^6), (callee: ^12), (callee: ^13), (callee: ^18)), refs: (^9, ^15)))) ; guid = 15822663052811949562
^15 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^5, ^7)))) ; guid = 15829600909227849921
^16 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hafc9828d9407e790E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 15980384162834336855
^17 = gv: (name: "_ZN4core3ptr14read_unaligned17hf38ae59d3e063f37E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 68, calls: ((callee: ^4))))) ; guid = 17658690824984618684
^18 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^19 = blockcount: 25
