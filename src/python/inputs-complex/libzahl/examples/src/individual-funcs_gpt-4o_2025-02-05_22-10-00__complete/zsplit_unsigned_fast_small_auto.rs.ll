; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsplit_unsigned_fast_small_auto.rs.bc'
source_filename = "zsplit_unsigned_fast_small_auto.8e7e62c1-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ptr::metadata::PtrRepr<[u64]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"alloc::vec::Vec<u64>" = type { { i64*, i64 }, i64 }
%Zahl = type <{ i32, i32, i64, i64, %"alloc::vec::Vec<u64>" }>
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc46 = private unnamed_addr constant <{ [105 x i8] }> <{ [105 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsplit_unsigned_fast_small_auto.rs" }>, align 1
@alloc21 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\15\00\00\00\0C\00\00\00" }>, align 8
@str.0 = internal constant [35 x i8] c"attempt to shift left with overflow"
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc23 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\18\00\00\00\18\00\00\00" }>, align 8
@str.2 = internal constant [36 x i8] c"attempt to shift right with overflow"
@alloc25 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\18\00\00\00\05\00\00\00" }>, align 8
@alloc27 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\1A\00\00\00\1C\00\00\00" }>, align 8
@alloc29 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\1A\00\00\00\09\00\00\00" }>, align 8
@alloc31 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\1B\00\00\00\1C\00\00\00" }>, align 8
@alloc33 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\1B\00\00\00\09\00\00\00" }>, align 8
@str.3 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc35 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\1C\00\00\00\11\00\00\00" }>, align 8
@alloc37 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\1D\00\00\00\1E\00\00\00" }>, align 8
@alloc39 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\1D\00\00\00\1D\00\00\00" }>, align 8
@alloc41 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\1D\00\00\00\09\00\00\00" }>, align 8
@alloc43 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00!\00\00\00\17\00\00\00" }>, align 8
@alloc45 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00!\00\00\00\05\00\00\00" }>, align 8
@alloc47 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [105 x i8] }>, <{ [105 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"i\00\00\00\00\00\00\00\22\00\00\00\08\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h260823c631d39585E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hea18b3c77fe9bb11E"(i64* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hb82831215fa834d5E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i64]*, i64 } %0, 0
  %2 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %1, 0
  %4 = insertvalue { [0 x i64]*, i64 } %3, i64 %2, 1
  ret { [0 x i64]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hd61e33d47292198dE(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i64* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h0e6b80d6e91be20cE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h5d981558b1cbc348E"(i64* %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0af80b92d8b62492E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hde5a887015b40045E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h30637fb285034dd1E"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2b9100bce15a4d13E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hde5a887015b40045E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hb82831215fa834d5E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u64]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { [0 x i64]*, i64 }*
  %10 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i64]*, [0 x i64]** %10, align 8
  %12 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %11, 0
  %15 = insertvalue { [0 x i64]*, i64 } %14, i64 %13, 1
  ret { [0 x i64]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h0e6b80d6e91be20cE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u64]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { [0 x i64]*, i64 }*
  %10 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i64]*, [0 x i64]** %10, align 8
  %12 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %11, 0
  %15 = insertvalue { [0 x i64]*, i64 } %14, i64 %13, 1
  ret { [0 x i64]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2b9100bce15a4d13E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0af80b92d8b62492E"(i64* %self) unnamed_addr #0 {
start:
  ret i64* %self
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hea18b3c77fe9bb11E"(i64* %self) unnamed_addr #0 {
start:
  %0 = bitcast i64* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hcf37c8669256b0d2E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h260823c631d39585E(i64* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h9aa60e3f2bbfeb62E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hd61e33d47292198dE(i64* %data, i64 %len)
  %_7.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_7.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hbf6e376bfc3f395fE"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hde96526173158de9E"(i64 %index, [0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6775bc1965e2a388E"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = call align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf517f4648b2af7d8E"(i64 %index, [0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %_4
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h9d687619c718fd95E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17ha4fe866b1118bf8dE"({ i64*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h30637fb285034dd1E"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hc8f0c9dba1e5a26aE"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17ha4fe866b1118bf8dE"({ i64*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h30637fb285034dd1E"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17ha4fe866b1118bf8dE"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64*, i64 }* %self to i64**
  %_2 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  %1 = call i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h5d981558b1cbc348E"(i64* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h95752dd805da8e27E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hc8f0c9dba1e5a26aE"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hcf37c8669256b0d2E(i64* %_2, i64 %_4)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17ha216a31be75e3486E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h9d687619c718fd95E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_7 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h9aa60e3f2bbfeb62E(i64* %_5, i64 %_7)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %3 = insertvalue { [0 x i64]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hde96526173158de9E"(i64 %self, [0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_5 = icmp ult i64 %self, %slice.1
  %1 = call i1 @llvm.expect.i1(i1 %_5, i1 true)
  br i1 %1, label %bb1, label %panic

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds [0 x i64], [0 x i64]* %slice.0, i64 0, i64 %self
  ret i64* %2

panic:                                            ; preds = %start
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #7
  unreachable
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf517f4648b2af7d8E"(i64 %self, [0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_7 = icmp ult i64 %self, %slice.1
  %1 = call i1 @llvm.expect.i1(i1 %_7, i1 true)
  br i1 %1, label %bb1, label %panic

bb1:                                              ; preds = %start
  %_4 = getelementptr inbounds [0 x i64], [0 x i64]* %slice.0, i64 0, i64 %self
  ret i64* %_4

panic:                                            ; preds = %start
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #7
  unreachable
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd9d04c3da9c69780E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  store i8 1, i8* %_8, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h95752dd805da8e27E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_8, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_5.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_8, align 1
  %10 = invoke align 8 i64* @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hbf6e376bfc3f395fE"([0 x i64]* align 8 %_5.0, i64 %_5.1, i64 %index, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret i64* %10

bb3:                                              ; preds = %bb4, %bb5
  %11 = bitcast { i8*, i32 }* %1 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfadcc3003f412bd5E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  store i8 1, i8* %_10, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17ha216a31be75e3486E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_10, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_7.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_7.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_10, align 1
  %_4 = invoke align 8 i64* @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6775bc1965e2a388E"([0 x i64]* align 8 %_7.0, i64 %_7.1, i64 %index, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret i64* %_4

bb3:                                              ; preds = %bb4, %bb5
  %10 = bitcast { i8*, i32 }* %1 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define void @zsplit_unsigned_fast_small_auto([1 x %Zahl]* align 1 %high, [1 x %Zahl]* align 1 %low, [1 x %Zahl]* align 1 %a, i64 %n) unnamed_addr #0 {
start:
  %_33 = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 1, i64* %mask, align 8
  %0 = and i64 %n, -64
  %_9.1 = icmp ne i64 %0, 0
  %1 = and i64 %n, 63
  %_9.0 = shl i64 1, %1
  %2 = call i1 @llvm.expect.i1(i1 %_9.1, i1 false)
  br i1 %2, label %panic, label %bb1

bb1:                                              ; preds = %start
  %3 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_9.0, i64 1)
  %_10.0 = extractvalue { i64, i1 } %3, 0
  %_10.1 = extractvalue { i64, i1 } %3, 1
  %4 = call i1 @llvm.expect.i1(i1 %_10.1, i1 false)
  br i1 %4, label %panic1, label %bb2

panic:                                            ; preds = %start
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.0 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc21 to %"core::panic::location::Location"*)) #7
  unreachable

bb2:                                              ; preds = %bb1
  store i64 %_10.0, i64* %mask, align 8
  %5 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %6 = bitcast %Zahl* %5 to i32*
  store i32 1, i32* %6, align 1
  %7 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %8 = getelementptr inbounds %Zahl, %Zahl* %7, i32 0, i32 2
  store i64 1, i64* %8, align 1
  %9 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_15 = getelementptr inbounds %Zahl, %Zahl* %9, i32 0, i32 4
  %_14 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd9d04c3da9c69780E"(%"alloc::vec::Vec<u64>"* align 8 %_15, i64 0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc23 to %"core::panic::location::Location"*))
  br label %bb3

panic1:                                           ; preds = %bb1
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc21 to %"core::panic::location::Location"*)) #7
  unreachable

bb3:                                              ; preds = %bb2
  %_13 = load i64, i64* %_14, align 8
  %10 = and i64 %n, -64
  %_18.1 = icmp ne i64 %10, 0
  %11 = and i64 %n, 63
  %_18.0 = lshr i64 %_13, %11
  %12 = call i1 @llvm.expect.i1(i1 %_18.1, i1 false)
  br i1 %12, label %panic2, label %bb4

bb4:                                              ; preds = %bb3
  %13 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %_20 = getelementptr inbounds %Zahl, %Zahl* %13, i32 0, i32 4
  %_19 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfadcc3003f412bd5E"(%"alloc::vec::Vec<u64>"* align 8 %_20, i64 0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc25 to %"core::panic::location::Location"*))
  br label %bb5

panic2:                                           ; preds = %bb3
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([36 x i8]* @str.2 to [0 x i8]*), i64 36, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc23 to %"core::panic::location::Location"*)) #7
  unreachable

bb5:                                              ; preds = %bb4
  store i64 %_18.0, i64* %_19, align 8
  %14 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %15 = getelementptr inbounds %Zahl, %Zahl* %14, i32 0, i32 2
  %_22 = load i64, i64* %15, align 1
  %16 = icmp eq i64 %_22, 2
  br i1 %16, label %bb6, label %bb19

bb6:                                              ; preds = %bb5
  %17 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_26 = getelementptr inbounds %Zahl, %Zahl* %17, i32 0, i32 4
  %_25 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd9d04c3da9c69780E"(%"alloc::vec::Vec<u64>"* align 8 %_26, i64 1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc27 to %"core::panic::location::Location"*))
  br label %bb7

bb19:                                             ; preds = %bb18, %bb5
  %18 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %19 = bitcast %Zahl* %18 to i32*
  store i32 1, i32* %19, align 1
  %20 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %21 = getelementptr inbounds %Zahl, %Zahl* %20, i32 0, i32 2
  store i64 1, i64* %21, align 1
  %22 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_59 = getelementptr inbounds %Zahl, %Zahl* %22, i32 0, i32 4
  %_58 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd9d04c3da9c69780E"(%"alloc::vec::Vec<u64>"* align 8 %_59, i64 0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc43 to %"core::panic::location::Location"*))
  br label %bb20

bb7:                                              ; preds = %bb6
  %_24 = load i64, i64* %_25, align 8
  %23 = and i64 %n, -64
  %_29.1 = icmp ne i64 %23, 0
  %24 = and i64 %n, 63
  %_29.0 = lshr i64 %_24, %24
  %25 = call i1 @llvm.expect.i1(i1 %_29.1, i1 false)
  br i1 %25, label %panic3, label %bb8

bb8:                                              ; preds = %bb7
  %26 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %_31 = getelementptr inbounds %Zahl, %Zahl* %26, i32 0, i32 4
  %_30 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfadcc3003f412bd5E"(%"alloc::vec::Vec<u64>"* align 8 %_31, i64 1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc29 to %"core::panic::location::Location"*))
  br label %bb9

panic3:                                           ; preds = %bb7
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([36 x i8]* @str.2 to [0 x i8]*), i64 36, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc27 to %"core::panic::location::Location"*)) #7
  unreachable

bb9:                                              ; preds = %bb8
  store i64 %_29.0, i64* %_30, align 8
  %27 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %_36 = getelementptr inbounds %Zahl, %Zahl* %27, i32 0, i32 4
  %_35 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd9d04c3da9c69780E"(%"alloc::vec::Vec<u64>"* align 8 %_36, i64 1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc31 to %"core::panic::location::Location"*))
  br label %bb10

bb10:                                             ; preds = %bb9
  %_34 = load i64, i64* %_35, align 8
  %28 = icmp eq i64 %_34, 0
  br i1 %28, label %bb12, label %bb11

bb12:                                             ; preds = %bb10
  store i64 0, i64* %_33, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  store i64 1, i64* %_33, align 8
  br label %bb13

bb13:                                             ; preds = %bb11, %bb12
  %29 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %30 = getelementptr inbounds %Zahl, %Zahl* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 1
  %32 = load i64, i64* %_33, align 8
  %33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %32)
  %_39.0 = extractvalue { i64, i1 } %33, 0
  %_39.1 = extractvalue { i64, i1 } %33, 1
  %34 = call i1 @llvm.expect.i1(i1 %_39.1, i1 false)
  br i1 %34, label %panic4, label %bb14

bb14:                                             ; preds = %bb13
  %35 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %36 = getelementptr inbounds %Zahl, %Zahl* %35, i32 0, i32 2
  store i64 %_39.0, i64* %36, align 1
  %37 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %n)
  %_42.0 = extractvalue { i64, i1 } %37, 0
  %_42.1 = extractvalue { i64, i1 } %37, 1
  %38 = call i1 @llvm.expect.i1(i1 %_42.1, i1 false)
  br i1 %38, label %panic5, label %bb15

panic4:                                           ; preds = %bb13
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc33 to %"core::panic::location::Location"*)) #7
  unreachable

bb15:                                             ; preds = %bb14
  %39 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_47 = getelementptr inbounds %Zahl, %Zahl* %39, i32 0, i32 4
  %_46 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd9d04c3da9c69780E"(%"alloc::vec::Vec<u64>"* align 8 %_47, i64 1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc37 to %"core::panic::location::Location"*))
  br label %bb16

panic5:                                           ; preds = %bb14
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc35 to %"core::panic::location::Location"*)) #7
  unreachable

bb16:                                             ; preds = %bb15
  %_45 = load i64, i64* %_46, align 8
  %_49 = load i64, i64* %mask, align 8
  %_44 = and i64 %_45, %_49
  %40 = and i64 %_42.0, -64
  %_51.1 = icmp ne i64 %40, 0
  %41 = and i64 %_42.0, 63
  %_51.0 = shl i64 %_44, %41
  %42 = call i1 @llvm.expect.i1(i1 %_51.1, i1 false)
  br i1 %42, label %panic6, label %bb17

bb17:                                             ; preds = %bb16
  %43 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %_53 = getelementptr inbounds %Zahl, %Zahl* %43, i32 0, i32 4
  %_52 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfadcc3003f412bd5E"(%"alloc::vec::Vec<u64>"* align 8 %_53, i64 0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc41 to %"core::panic::location::Location"*))
  br label %bb18

panic6:                                           ; preds = %bb16
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.0 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc39 to %"core::panic::location::Location"*)) #7
  unreachable

bb18:                                             ; preds = %bb17
  %44 = load i64, i64* %_52, align 8
  %45 = or i64 %44, %_51.0
  store i64 %45, i64* %_52, align 8
  br label %bb19

bb20:                                             ; preds = %bb19
  %_57 = load i64, i64* %_58, align 8
  %_61 = load i64, i64* %mask, align 8
  %46 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %_63 = getelementptr inbounds %Zahl, %Zahl* %46, i32 0, i32 4
  %_62 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfadcc3003f412bd5E"(%"alloc::vec::Vec<u64>"* align 8 %_63, i64 0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc45 to %"core::panic::location::Location"*))
  br label %bb21

bb21:                                             ; preds = %bb20
  %47 = and i64 %_57, %_61
  store i64 %47, i64* %_62, align 8
  %48 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %_67 = getelementptr inbounds %Zahl, %Zahl* %48, i32 0, i32 4
  %_66 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd9d04c3da9c69780E"(%"alloc::vec::Vec<u64>"* align 8 %_67, i64 0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc47 to %"core::panic::location::Location"*))
  br label %bb22

bb22:                                             ; preds = %bb21
  %_65 = load i64, i64* %_66, align 8
  %49 = icmp eq i64 %_65, 0
  br i1 %49, label %bb23, label %bb24

bb23:                                             ; preds = %bb22
  %50 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %51 = bitcast %Zahl* %50 to i32*
  store i32 0, i32* %51, align 1
  br label %bb24

bb24:                                             ; preds = %bb23, %bb22
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsplit_unsigned_fast_small_auto.rs.bc", hash: (3107786221, 1523825372, 2132759260, 2406456935, 1357641887))
^1 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 535048580079597882
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0af80b92d8b62492E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 696452167802002202
^4 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^5 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1736608941140683658
^6 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^7 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h260823c631d39585E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^46), (callee: ^39))))) ; guid = 2850361568494002279
^8 = gv: (name: "alloc43", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 3271081828312938632
^9 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hcf37c8669256b0d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^7))))) ; guid = 3703936821211973159
^10 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6775bc1965e2a388E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^34))))) ; guid = 3791352860354526440
^11 = gv: (name: "_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfadcc3003f412bd5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^27), (callee: ^10)), refs: (^41)))) ; guid = 3825677929138174866
^12 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hbf6e376bfc3f395fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^29))))) ; guid = 4507389943359862256
^13 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4928757872469037205
^14 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 5047405234398800938
^15 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 5348093042678992990
^16 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h2b9100bce15a4d13E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 5568874397774321387
^17 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17ha4fe866b1118bf8dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^51))))) ; guid = 6359659821113890545
^18 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^19 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hde5a887015b40045E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 6719050611134973392
^20 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 6885419480706334914
^21 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 6961465883004929745
^22 = gv: (name: "_ZN4core5slice3raw18from_raw_parts_mut17h9aa60e3f2bbfeb62E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^36))))) ; guid = 7226326774783187588
^23 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h0e6b80d6e91be20cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 7562129300840125712
^24 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h30637fb285034dd1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^16), (callee: ^19))))) ; guid = 7666292864325850613
^25 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 7836429571227214324
^26 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 8345641456527290034
^27 = gv: (name: "_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17ha216a31be75e3486E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^49), (callee: ^22))))) ; guid = 8906948873468960381
^28 = gv: (name: "str.3", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8955231047678122231
^29 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hde96526173158de9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^50))))) ; guid = 9256806128263220433
^30 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 9410544235535023299
^31 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 9788714278417900665
^32 = gv: (name: "zsplit_unsigned_fast_small_auto", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 151, calls: ((callee: ^33), (callee: ^44), (callee: ^11)), refs: (^47, ^13, ^35, ^5, ^15, ^1, ^30, ^8, ^26, ^20, ^42, ^28, ^25, ^38, ^21, ^48, ^31, ^14)))) ; guid = 9967062138583482442
^33 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^34 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf517f4648b2af7d8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^50))))) ; guid = 10666689929129831198
^35 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 11036610744749850580
^36 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17hd61e33d47292198dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^23))))) ; guid = 11273883461136805210
^37 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hc8f0c9dba1e5a26aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^17), (callee: ^24))))) ; guid = 11288940516175711272
^38 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 11650597759051529995
^39 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hb82831215fa834d5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 11777546133854836775
^40 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^41 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^42 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 14902122996673996381
^43 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15691031831904026695
^44 = gv: (name: "_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd9d04c3da9c69780E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^45), (callee: ^12)), refs: (^41)))) ; guid = 16317518956911618405
^45 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h95752dd805da8e27E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^37), (callee: ^9))))) ; guid = 17211876194096201145
^46 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hea18b3c77fe9bb11E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 17738760514875650868
^47 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 17965748936312574117
^48 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43)))) ; guid = 18068983323952210039
^49 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h9d687619c718fd95E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^17), (callee: ^24))))) ; guid = 18080030888823485533
^50 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^51 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h5d981558b1cbc348E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^3))))) ; guid = 18257342922903117119
^52 = blockcount: 94
