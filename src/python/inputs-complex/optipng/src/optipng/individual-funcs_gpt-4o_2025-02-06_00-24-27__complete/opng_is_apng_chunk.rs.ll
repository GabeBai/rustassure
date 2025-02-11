; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_is_apng_chunk.rs.bc'
source_filename = "opng_is_apng_chunk.8c581b87-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }

@_ZN18opng_is_apng_chunk8SIG_ACTL17h7a6eb307fc0ce6a9E = internal constant <{ [4 x i8] }> <{ [4 x i8] c"acTL" }>, align 1
@_ZN18opng_is_apng_chunk8SIG_FCTL17h0f5072668cfc594dE = internal constant <{ [4 x i8] }> <{ [4 x i8] c"fcTL" }>, align 1
@_ZN18opng_is_apng_chunk8SIG_FDAT17h0f8f4f6dd6807ca6E = internal constant <{ [4 x i8] }> <{ [4 x i8] c"fdAT" }>, align 1
@alloc22 = private unnamed_addr constant <{ [100 x i8] }> <{ [100 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_is_apng_chunk.rs" }>, align 1
@alloc19 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [100 x i8] }>, <{ [100 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [16 x i8] c"d\00\00\00\00\00\00\00\0A\00\00\00\09\00\00\00" }>, align 8
@alloc21 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [100 x i8] }>, <{ [100 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [16 x i8] c"d\00\00\00\00\00\00\00\0B\00\00\00\09\00\00\00" }>, align 8
@alloc23 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [100 x i8] }>, <{ [100 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [16 x i8] c"d\00\00\00\00\00\00\00\0C\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h1a5776257ae9e96cE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %_5 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hbd1d8cf9e92bbc53E"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_5, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h9ee5031f51eeb25dE(i8* %2, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf8ddb10eae3e0f70E"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ugt i64 %self.0, %self.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) #4
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h1a5776257ae9e96cE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
  %_17.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_17.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #4
  unreachable

bb5:                                              ; preds = %bb4
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_17.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_17.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h4913c597d6367854E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %_3 to i64*
  store i64 0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %self, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf8ddb10eae3e0f70E"(i64 %4, i64 %6, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0)
  %8 = extractvalue { [0 x i8]*, i64 } %7, 0
  %9 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %8, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  ret { [0 x i8]*, i64 } %11
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h9ee5031f51eeb25dE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hc8e47f0e0ef54562E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h0337e44e2a7ee802E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h0337e44e2a7ee802E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define [4 x i8]* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h1fd82b31f1dfa840E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to [4 x i8]*
  ret [4 x i8]* %0
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hc8e47f0e0ef54562E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hbd1d8cf9e92bbc53E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: uwtable
define align 1 i8* @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17ha624e48d2432c84bE"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #1 {
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
  %_6 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hca5a5f18287422e3E"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %ptr = bitcast i8* %_6 to [4 x i8]*
  %3 = bitcast i8** %0 to [4 x i8]**
  store [4 x i8]* %ptr, [4 x i8]** %3, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %4 = load i8*, i8** %0, align 8, !align !1
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h42400f3008090790E"([4 x i8]* align 1 %self, [4 x i8]* align 1 %other) unnamed_addr #0 {
start:
  %0 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0448b63c01edbb84E"([4 x i8]* align 1 %self, [4 x i8]* align 1 %other)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h6861f66bc1465f92E"([0 x i8]* align 1 %self.0, i64 %self.1, [4 x i8]* align 1 %other) unnamed_addr #0 {
start:
  %b = alloca i8*, align 8
  %0 = alloca i8, align 1
  %1 = call align 1 i8* @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17haf0870f7e840e7d4E"([0 x i8]* align 1 %self.0, i64 %self.1)
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
  %b1 = load [4 x i8]*, [4 x i8]** %5, align 8, !nonnull !2, !align !1, !noundef !2
  %6 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h42400f3008090790E"([4 x i8]* align 1 %b1, [4 x i8]* align 1 %other)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb2
  %8 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %9 = trunc i8 %8 to i1
  ret i1 %9

bb5:                                              ; preds = %bb4
  br label %bb6
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hca5a5f18287422e3E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h7e02a2691646430dE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h4913c597d6367854E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define align 1 i8* @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17haf0870f7e840e7d4E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call align 1 i8* @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17ha624e48d2432c84bE"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0448b63c01edbb84E"([4 x i8]* align 1 %a, [4 x i8]* align 1 %b) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %_6.0 = bitcast [4 x i8]* %b to [0 x i8]*
  %_5 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hca5a5f18287422e3E"([0 x i8]* align 1 %_6.0, i64 4)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call [4 x i8]* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h1fd82b31f1dfa840E"(i8* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast [4 x i8]* %a to i32*
  %2 = load i32, i32* %1, align 1
  %3 = bitcast [4 x i8]* %_4 to i32*
  %4 = load i32, i32* %3, align 1
  %5 = icmp eq i32 %2, %4
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  %7 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %8 = trunc i8 %7 to i1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i1 %8
}

; Function Attrs: uwtable
define i32 @opng_is_apng_chunk([0 x i8]* align 1 %chunk_type.0, i64 %chunk_type.1) unnamed_addr #1 {
start:
  %_26 = alloca i64, align 8
  %_19 = alloca i64, align 8
  %_12 = alloca i64, align 8
  %_7 = alloca i8, align 1
  %_6 = alloca i8, align 1
  %_2 = alloca i8, align 1
  %0 = alloca i32, align 4
  %_3 = icmp uge i64 %chunk_type.1, 4
  br i1 %_3, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %start
  store i64 4, i64* %_12, align 8
  %1 = load i64, i64* %_12, align 8
  %2 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h7e02a2691646430dE"([0 x i8]* align 1 %chunk_type.0, i64 %chunk_type.1, i64 %1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc19 to %"core::panic::location::Location"*))
  %_10.0 = extractvalue { [0 x i8]*, i64 } %2, 0
  %_10.1 = extractvalue { [0 x i8]*, i64 } %2, 1
  br label %bb10

bb10:                                             ; preds = %bb2
  %_8 = call zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h6861f66bc1465f92E"([0 x i8]* align 1 %_10.0, i64 %_10.1, [4 x i8]* align 1 getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @_ZN18opng_is_apng_chunk8SIG_ACTL17h7a6eb307fc0ce6a9E, i32 0, i32 0))
  br label %bb11

bb11:                                             ; preds = %bb10
  br i1 %_8, label %bb7, label %bb8

bb8:                                              ; preds = %bb11
  store i64 4, i64* %_19, align 8
  %3 = load i64, i64* %_19, align 8
  %4 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h7e02a2691646430dE"([0 x i8]* align 1 %chunk_type.0, i64 %chunk_type.1, i64 %3, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc21 to %"core::panic::location::Location"*))
  %_17.0 = extractvalue { [0 x i8]*, i64 } %4, 0
  %_17.1 = extractvalue { [0 x i8]*, i64 } %4, 1
  br label %bb12

bb7:                                              ; preds = %bb11
  store i8 1, i8* %_7, align 1
  br label %bb9

bb9:                                              ; preds = %bb13, %bb7
  %5 = load i8, i8* %_7, align 1, !range !3, !noundef !2
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb4, label %bb5

bb12:                                             ; preds = %bb8
  %_15 = call zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h6861f66bc1465f92E"([0 x i8]* align 1 %_17.0, i64 %_17.1, [4 x i8]* align 1 getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @_ZN18opng_is_apng_chunk8SIG_FCTL17h0f5072668cfc594dE, i32 0, i32 0))
  br label %bb13

bb13:                                             ; preds = %bb12
  %7 = zext i1 %_15 to i8
  store i8 %7, i8* %_7, align 1
  br label %bb9

bb5:                                              ; preds = %bb9
  store i64 4, i64* %_26, align 8
  %8 = load i64, i64* %_26, align 8
  %9 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h7e02a2691646430dE"([0 x i8]* align 1 %chunk_type.0, i64 %chunk_type.1, i64 %8, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc23 to %"core::panic::location::Location"*))
  %_24.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_24.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb14

bb4:                                              ; preds = %bb9
  store i8 1, i8* %_6, align 1
  br label %bb6

bb6:                                              ; preds = %bb15, %bb4
  %10 = load i8, i8* %_6, align 1, !range !3, !noundef !2
  %11 = trunc i8 %10 to i1
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %_2, align 1
  br label %bb3

bb14:                                             ; preds = %bb5
  %_22 = call zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h6861f66bc1465f92E"([0 x i8]* align 1 %_24.0, i64 %_24.1, [4 x i8]* align 1 getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @_ZN18opng_is_apng_chunk8SIG_FDAT17h0f8f4f6dd6807ca6E, i32 0, i32 0))
  br label %bb15

bb15:                                             ; preds = %bb14
  %13 = zext i1 %_22 to i8
  store i8 %13, i8* %_6, align 1
  br label %bb6

bb3:                                              ; preds = %bb6, %bb1
  %14 = load i8, i8* %_2, align 1, !range !3, !noundef !2
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb16, label %bb17

bb17:                                             ; preds = %bb3
  store i32 0, i32* %0, align 4
  br label %bb18

bb16:                                             ; preds = %bb3
  store i32 1, i32* %0, align 4
  br label %bb18

bb18:                                             ; preds = %bb16, %bb17
  %16 = load i32, i32* %0, align 4
  ret i32 %16
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i64 1}
!2 = !{}
!3 = !{i8 0, i8 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_is_apng_chunk.rs.bc", hash: (2371166056, 390284336, 4253810393, 298441619, 4258639773))
^1 = gv: (name: "_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0448b63c01edbb84E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^16), (callee: ^18))))) ; guid = 339596203497475574
^2 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hbd1d8cf9e92bbc53E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 567513319441425378
^3 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h1a5776257ae9e96cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^2), (callee: ^4))))) ; guid = 2460122803159001939
^4 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h9ee5031f51eeb25dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^6), (callee: ^20))))) ; guid = 3222050425441976410
^5 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 3587277439197762089
^6 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hc8e47f0e0ef54562E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 4119128418193506775
^7 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 4163587623825023293
^8 = gv: (name: "_ZN18opng_is_apng_chunk8SIG_FDAT17h0f8f4f6dd6807ca6E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4445563655570761569
^9 = gv: (name: "_ZN18opng_is_apng_chunk8SIG_ACTL17h7a6eb307fc0ce6a9E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5413754780328634046
^10 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^11 = gv: (name: "_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17ha624e48d2432c84bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^16))))) ; guid = 6766571636561342992
^12 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9603630783425761292
^13 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 9688794955702066040
^14 = gv: (name: "_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h6861f66bc1465f92E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23, calls: ((callee: ^17), (callee: ^21))))) ; guid = 11050034850087299198
^15 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h7e02a2691646430dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^24))))) ; guid = 11133508339420984510
^16 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hca5a5f18287422e3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 12874347563094979721
^17 = gv: (name: "_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17haf0870f7e840e7d4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^11))))) ; guid = 13555939230247842843
^18 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h1fd82b31f1dfa840E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 13592300270364857358
^19 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf8ddb10eae3e0f70E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^23), (callee: ^3), (callee: ^25))))) ; guid = 13886531961028546639
^20 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h0337e44e2a7ee802E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 13958578568456763309
^21 = gv: (name: "_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h42400f3008090790E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^1))))) ; guid = 14287832494409049456
^22 = gv: (name: "_ZN18opng_is_apng_chunk8SIG_FCTL17h0f5072668cfc594dE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14393873285853458046
^23 = gv: (name: "_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E") ; guid = 16237673211549674151
^24 = gv: (name: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h4913c597d6367854E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^19))))) ; guid = 17460045091521341536
^25 = gv: (name: "_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E") ; guid = 17978184489729322003
^26 = gv: (name: "opng_is_apng_chunk", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 63, calls: ((callee: ^15), (callee: ^14)), refs: (^7, ^9, ^5, ^22, ^13, ^8)))) ; guid = 18424710062439210172
^27 = blockcount: 61
