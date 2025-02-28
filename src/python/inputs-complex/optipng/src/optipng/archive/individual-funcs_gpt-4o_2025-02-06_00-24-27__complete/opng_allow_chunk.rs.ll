; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_allow_chunk.rs.bc'
source_filename = "opng_allow_chunk.074a395c-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%OpngOptions = type { i8, i8 }

@alloc17 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc18 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc17, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc20 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc21 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc22 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc21, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@_ZN16opng_allow_chunk8SIG_DSIG17hd21af69db6edd851E = internal constant <{ [4 x i8] }> <{ [4 x i8] c"dSIG" }>, align 1
@alloc12 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"Allow chunk: " }>, align 1
@alloc14 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc13 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [13 x i8] }>, <{ [13 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [8 x i8] c"\0D\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hca6fd5307431c170E(i8* align 1 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8b82c1a4a32f1d9dE(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8b82c1a4a32f1d9dE(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define internal void @_ZN4core3fmt9Arguments6new_v117h87395097eecd58d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h87395097eecd58d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc18 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc20 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc22 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hdf2b54e57880051dE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h6c0dff4588e722b2E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h03bbdec454497d72E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h03bbdec454497d72E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define [4 x i8]* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h4780eeff72123849E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to [4 x i8]*
  ret [4 x i8]* %0
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h6c0dff4588e722b2E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: uwtable
define align 1 i8* @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17h473a1617138c048eE"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %_2 = icmp eq i64 %slice.1, 4
  br i1 %_2, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast i8** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i8** %0 to {}**
  store {}* null, {}** %2, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %_6 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6aedc9e2c19c03dfE"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %ptr = bitcast i8* %_6 to [4 x i8]*
  %3 = bitcast i8** %0 to [4 x i8]**
  store [4 x i8]* %ptr, [4 x i8]** %3, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %4 = load i8*, i8** %0, align 8, !align !2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17hc8fa74f496816f03E"([4 x i8]* align 1 %self, [4 x i8]* align 1 %other) unnamed_addr #0 {
start:
  %0 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h95cc9e63dd08b53aE"([4 x i8]* align 1 %self, [4 x i8]* align 1 %other)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h75f35714aa7fbb1bE"([0 x i8]* align 1 %self.0, i64 %self.1, [4 x i8]* align 1 %other) unnamed_addr #0 {
start:
  %b = alloca i8*, align 8
  %0 = alloca i8, align 1
  %1 = call align 1 i8* @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17hbccbb186ed03ad86E"([0 x i8]* align 1 %self.0, i64 %self.1)
  store i8* %1, i8** %b, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast i8** %b to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_5 = select i1 %4, i64 1, i64 0
  switch i64 %_5, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %5 = bitcast i8** %b to [4 x i8]**
  %b1 = load [4 x i8]*, [4 x i8]** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17hc8fa74f496816f03E"([4 x i8]* align 1 %b1, [4 x i8]* align 1 %other)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb2
  %8 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %9 = trunc i8 %8 to i1
  ret i1 %9

bb5:                                              ; preds = %bb4
  br label %bb6
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5array8equality96_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$RF$$u5b$B$u5d$$GT$2eq17h1a8cbee80779c761E"({ [0 x i8]*, i64 }* align 8 %self, [4 x i8]* align 1 %other) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_5.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !2, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_5.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h75f35714aa7fbb1bE"([0 x i8]* align 1 %_5.0, i64 %_5.1, [4 x i8]* align 1 %other)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6aedc9e2c19c03dfE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hb67cac53f7ba17b5E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hdf2b54e57880051dE(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: uwtable
define align 1 i8* @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17hbccbb186ed03ad86E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call align 1 i8* @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17h473a1617138c048eE"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h95cc9e63dd08b53aE"([4 x i8]* align 1 %a, [4 x i8]* align 1 %b) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %_6.0 = bitcast [4 x i8]* %b to [0 x i8]*
  %_5 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6aedc9e2c19c03dfE"([0 x i8]* align 1 %_6.0, i64 4)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call [4 x i8]* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h4780eeff72123849E"(i8* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast [4 x i8]* %a to i32*
  %2 = load i32, i32* %1, align 1
  %3 = bitcast [4 x i8]* %_4 to i32*
  %4 = load i32, i32* %3, align 1
  %5 = icmp eq i32 %2, %4
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  %7 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %8 = trunc i8 %7 to i1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i1 %8
}

; Function Attrs: uwtable
define zeroext i1 @opng_is_image_chunk([0 x i8]* align 1 %chunk_type.0, i64 %chunk_type.1) unnamed_addr #1 {
start:
  ret i1 false
}

; Function Attrs: uwtable
define zeroext i1 @opng_is_apng_chunk([0 x i8]* align 1 %chunk_type.0, i64 %chunk_type.1) unnamed_addr #1 {
start:
  ret i1 false
}

; Function Attrs: uwtable
define zeroext i1 @opng_allow_chunk(i8* %chunk_type, %OpngOptions* align 1 %options) unnamed_addr #1 {
start:
  %_12 = alloca i8, align 1
  %chunk_slice = alloca { [0 x i8]*, i64 }, align 8
  %0 = alloca i8, align 1
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hb67cac53f7ba17b5E(i8* %chunk_type, i64 4)
  store { [0 x i8]*, i64 } %1, { [0 x i8]*, i64 }* %chunk_slice, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %chunk_slice, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !1, !align !2, !noundef !1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %chunk_slice, i32 0, i32 1
  %_6.1 = load i64, i64* %3, align 8
  %_5 = call zeroext i1 @opng_is_image_chunk([0 x i8]* align 1 %_6.0, i64 %_6.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_5, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %4 = bitcast %OpngOptions* %options to i8*
  %5 = load i8, i8* %4, align 1, !range !3, !noundef !1
  %_7 = trunc i8 %5 to i1
  br i1 %_7, label %bb5, label %bb6

bb3:                                              ; preds = %bb2
  store i8 1, i8* %0, align 1
  br label %bb16

bb16:                                             ; preds = %bb14, %bb15, %bb8, %bb5, %bb3
  %6 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %7 = trunc i8 %6 to i1
  ret i1 %7

bb6:                                              ; preds = %bb4
  %_8 = call zeroext i1 @"_ZN4core5array8equality96_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$RF$$u5b$B$u5d$$GT$2eq17h1a8cbee80779c761E"({ [0 x i8]*, i64 }* align 8 %chunk_slice, [4 x i8]* align 1 getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @_ZN16opng_allow_chunk8SIG_DSIG17hd21af69db6edd851E, i32 0, i32 0))
  br label %bb7

bb5:                                              ; preds = %bb4
  store i8 0, i8* %0, align 1
  br label %bb16

bb7:                                              ; preds = %bb6
  br i1 %_8, label %bb8, label %bb9

bb9:                                              ; preds = %bb7
  %8 = getelementptr inbounds %OpngOptions, %OpngOptions* %options, i32 0, i32 1
  %9 = load i8, i8* %8, align 1, !range !3, !noundef !1
  %_13 = trunc i8 %9 to i1
  br i1 %_13, label %bb11, label %bb10

bb8:                                              ; preds = %bb7
  store i8 0, i8* %0, align 1
  br label %bb16

bb10:                                             ; preds = %bb9
  store i8 0, i8* %_12, align 1
  br label %bb12

bb11:                                             ; preds = %bb9
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %chunk_slice, i32 0, i32 0
  %_15.0 = load [0 x i8]*, [0 x i8]** %10, align 8, !nonnull !1, !align !2, !noundef !1
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %chunk_slice, i32 0, i32 1
  %_15.1 = load i64, i64* %11, align 8
  %_14 = call zeroext i1 @opng_is_apng_chunk([0 x i8]* align 1 %_15.0, i64 %_15.1)
  br label %bb13

bb13:                                             ; preds = %bb11
  %12 = zext i1 %_14 to i8
  store i8 %12, i8* %_12, align 1
  br label %bb12

bb12:                                             ; preds = %bb13, %bb10
  %13 = load i8, i8* %_12, align 1, !range !3, !noundef !1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb14, label %bb15

bb15:                                             ; preds = %bb12
  store i8 1, i8* %0, align 1
  br label %bb16

bb14:                                             ; preds = %bb12
  store i8 0, i8* %0, align 1
  br label %bb16
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_17 = alloca [1 x { i8*, i64* }], align 8
  %_10 = alloca %"core::fmt::Arguments", align 8
  %allow = alloca i8, align 1
  %chunk_type = alloca [4 x i8], align 1
  %options = alloca %OpngOptions, align 1
  %0 = bitcast %OpngOptions* %options to i8*
  store i8 0, i8* %0, align 1
  %1 = getelementptr inbounds %OpngOptions, %OpngOptions* %options, i32 0, i32 1
  store i8 0, i8* %1, align 1
  %2 = getelementptr inbounds [4 x i8], [4 x i8]* %chunk_type, i64 0, i64 0
  store i8 100, i8* %2, align 1
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %chunk_type, i64 0, i64 1
  store i8 83, i8* %3, align 1
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %chunk_type, i64 0, i64 2
  store i8 73, i8* %4, align 1
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %chunk_type, i64 0, i64 3
  store i8 71, i8* %5, align 1
  %_5.0 = bitcast [4 x i8]* %chunk_type to [0 x i8]*
  %_4 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6aedc9e2c19c03dfE"([0 x i8]* align 1 %_5.0, i64 4)
  br label %bb1

bb1:                                              ; preds = %start
  %6 = call zeroext i1 @opng_allow_chunk(i8* %_4, %OpngOptions* align 1 %options)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %allow, align 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hca6fd5307431c170E(i8* align 1 %allow)
  %_18.0 = extractvalue { i8*, i64* } %8, 0
  %_18.1 = extractvalue { i8*, i64* } %8, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %9 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_17, i64 0, i64 0
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 0
  store i8* %_18.0, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 1
  store i64* %_18.1, i64** %11, align 8
  %_14.0 = bitcast [1 x { i8*, i64* }]* %_17 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h87395097eecd58d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_10, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc13 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_14.0, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_10)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E"(i8* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

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

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_allow_chunk.rs.bc", hash: (3855660845, 545268123, 1867414743, 997190355, 921921475))
^1 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1314932744892631918
^2 = gv: (name: "_ZN4core5array8equality96_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$RF$$u5b$B$u5d$$GT$2eq17h1a8cbee80779c761E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^19))))) ; guid = 1710260823386643390
^3 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 2674900755613465100
^4 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2681412714404973480
^5 = gv: (name: "opng_is_image_chunk", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 3379244466440532886
^6 = gv: (name: "_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17hc8fa74f496816f03E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^14))))) ; guid = 4053115195580020830
^7 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h8b82c1a4a32f1d9dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 4201743236255488779
^8 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4439172117249040623
^9 = gv: (name: "_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17h473a1617138c048eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^26))))) ; guid = 4775623959688023111
^10 = gv: (name: "_ZN16opng_allow_chunk8SIG_DSIG17hd21af69db6edd851E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5319345720095665831
^11 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hca6fd5307431c170E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^7)), refs: (^20)))) ; guid = 5835671304231761295
^12 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17hdf2b54e57880051dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^15), (callee: ^30))))) ; guid = 6541867659149520917
^13 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^14 = gv: (name: "_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h95cc9e63dd08b53aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^26), (callee: ^16))))) ; guid = 7555230068844455314
^15 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h6c0dff4588e722b2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 8197833143797958587
^16 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h4780eeff72123849E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 8907096922542832058
^17 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hb67cac53f7ba17b5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^12))))) ; guid = 9278994323804774588
^18 = gv: (name: "_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17hbccbb186ed03ad86E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^9))))) ; guid = 10067989281160269619
^19 = gv: (name: "_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h75f35714aa7fbb1bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23, calls: ((callee: ^18), (callee: ^6))))) ; guid = 10074792791471191217
^20 = gv: (name: "_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E") ; guid = 10816395040579614328
^21 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8, ^29)))) ; guid = 11190228089522501120
^22 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11365992775341605569
^23 = gv: (name: "opng_allow_chunk", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^17), (callee: ^5), (callee: ^2), (callee: ^32)), refs: (^10)))) ; guid = 11414751473794556801
^24 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4)))) ; guid = 14493562764538381304
^25 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h87395097eecd58d9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^25), (callee: ^28)), refs: (^22, ^24, ^3)))) ; guid = 14654625655521025045
^26 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6aedc9e2c19c03dfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 15812948028746885319
^27 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, calls: ((callee: ^26), (callee: ^23), (callee: ^11), (callee: ^25), (callee: ^31)), refs: (^21)))) ; guid = 15822663052811949562
^28 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^29 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16176731732353671082
^30 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h03bbdec454497d72E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 17160213123070279351
^31 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^32 = gv: (name: "opng_is_apng_chunk", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 18424710062439210172
^33 = blockcount: 68
