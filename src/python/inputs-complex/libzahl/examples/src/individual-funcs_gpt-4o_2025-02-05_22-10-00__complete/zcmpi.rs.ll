; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zcmpi.rs.bc'
source_filename = "zcmpi.331b038c-cgu.0"
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

@alloc46 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zcmpi.rs" }>, align 1
@alloc25 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\17\00\00\00*\00\00\00" }>, align 8
@alloc27 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00'\00\00\00+\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc29 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00'\00\00\00 \00\00\00" }>, align 8
@alloc31 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00(\00\00\00\0D\00\00\00" }>, align 8
@alloc33 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00-\00\00\00\15\00\00\00" }>, align 8
@str.1 = internal constant [31 x i8] c"attempt to negate with overflow"
@alloc35 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00.\00\00\00\13\00\00\00" }>, align 8
@alloc37 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00.\00\00\00:\00\00\00" }>, align 8
@alloc39 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\003\00\00\00+\00\00\00" }>, align 8
@alloc41 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\003\00\00\00 \00\00\00" }>, align 8
@alloc43 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\004\00\00\00\0D\00\00\00" }>, align 8
@alloc45 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00:\00\00\00\13\00\00\00" }>, align 8
@alloc47 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00:\00\00\00:\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h98f78422ad9f7f37E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0f4e9c508de69429E"(i64* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17ha5236d8834939960E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i64]*, i64 } %0, 0
  %2 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %1, 0
  %4 = insertvalue { [0 x i64]*, i64 } %3, i64 %2, 1
  ret { [0 x i64]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h21610ae2d410bbd3E"(i64* %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf6931c6477e5fab8E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h41347737656ccf2cE"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h781276b4fd583347E"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2e6fa2539a9ff6e5E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h41347737656ccf2cE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17ha5236d8834939960E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2e6fa2539a9ff6e5E({}* %data_address) unnamed_addr #0 {
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
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf6931c6477e5fab8E"(i64* %self) unnamed_addr #0 {
start:
  ret i64* %self
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0f4e9c508de69429E"(i64* %self) unnamed_addr #0 {
start:
  %0 = bitcast i64* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hccf060deaec40411E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h98f78422ad9f7f37E(i64* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h541cf1136116ef45E"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h97395ff44b6f6d52E"(i64 %index, [0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17ha63486658885d16aE"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hbbec3106ea918c8dE"({ i64*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h781276b4fd583347E"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hbbec3106ea918c8dE"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64*, i64 }* %self to i64**
  %_2 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  %1 = call i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h21610ae2d410bbd3E"(i64* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h81ad44ed0083a7a4E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17ha63486658885d16aE"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hccf060deaec40411E(i64* %_2, i64 %_4)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h97395ff44b6f6d52E"(i64 %self, [0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
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
define align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haed936cb7f568f0bE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  store i8 1, i8* %_8, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h81ad44ed0083a7a4E"(%"alloc::vec::Vec<u64>"* align 8 %self)
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
  %10 = invoke align 8 i64* @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h541cf1136116ef45E"([0 x i64]* align 8 %_5.0, i64 %_5.1, i64 %index, %"core::panic::location::Location"* align 8 %0)
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

; Function Attrs: uwtable
define i32 @zsignum([1 x %Zahl]* align 1 %a) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %1 = bitcast %Zahl* %0 to i32*
  %2 = load i32, i32* %1, align 1
  ret i32 %2
}

; Function Attrs: uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %a) unnamed_addr #1 {
start:
  %_4 = alloca i8, align 1
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %2 = getelementptr inbounds %Zahl, %Zahl* %1, i32 0, i32 2
  %_2 = load i64, i64* %2, align 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %4 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %5 = getelementptr inbounds %Zahl, %Zahl* %4, i32 0, i32 2
  %_5 = load i64, i64* %5, align 1
  %6 = icmp eq i64 %_5, 1
  br i1 %6, label %bb5, label %bb4

bb5:                                              ; preds = %bb2
  %7 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_10 = getelementptr inbounds %Zahl, %Zahl* %7, i32 0, i32 4
  %_9 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haed936cb7f568f0bE"(%"alloc::vec::Vec<u64>"* align 8 %_10, i64 0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc25 to %"core::panic::location::Location"*))
  br label %bb7

bb4:                                              ; preds = %bb2
  store i8 0, i8* %_4, align 1
  br label %bb6

bb6:                                              ; preds = %bb7, %bb4
  %8 = load i8, i8* %_4, align 1, !range !1, !noundef !2
  %9 = trunc i8 %8 to i1
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %0, align 1
  br label %bb3

bb7:                                              ; preds = %bb5
  %_8 = load i64, i64* %_9, align 8
  %_7 = icmp eq i64 %_8, 0
  %11 = zext i1 %_7 to i8
  store i8 %11, i8* %_4, align 1
  br label %bb6

bb3:                                              ; preds = %bb6, %bb1
  %12 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %13 = trunc i8 %12 to i1
  ret i1 %13
}

; Function Attrs: uwtable
define i32 @zcmpi([1 x %Zahl]* align 1 %a, i64 %b) unnamed_addr #1 {
start:
  %_52 = alloca i8, align 1
  %_14 = alloca i8, align 1
  %0 = alloca i32, align 4
  %1 = icmp eq i64 %b, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %2 = call i32 @zsignum([1 x %Zahl]* align 1 %a)
  store i32 %2, i32* %0, align 4
  br label %bb49

bb2:                                              ; preds = %start
  %_5 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %a)
  br label %bb3

bb3:                                              ; preds = %bb2
  br i1 %_5, label %bb4, label %bb7

bb7:                                              ; preds = %bb3
  %_9 = icmp slt i64 %b, 0
  br i1 %_9, label %bb8, label %bb9

bb4:                                              ; preds = %bb3
  %_7 = icmp slt i64 %b, 0
  br i1 %_7, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  store i32 -1, i32* %0, align 4
  br label %bb49

bb5:                                              ; preds = %bb4
  store i32 1, i32* %0, align 4
  br label %bb49

bb49:                                             ; preds = %bb47, %bb48, %bb44, %bb41, %bb31, %bb28, %bb29, %bb25, %bb21, %bb11, %bb5, %bb6, %bb1
  %3 = load i32, i32* %0, align 4
  ret i32 %3

bb9:                                              ; preds = %bb7
  %_50 = call i32 @zsignum([1 x %Zahl]* align 1 %a)
  br label %bb30

bb8:                                              ; preds = %bb7
  %_12 = call i32 @zsignum([1 x %Zahl]* align 1 %a)
  br label %bb10

bb10:                                             ; preds = %bb8
  %_11 = icmp sgt i32 %_12, 0
  br i1 %_11, label %bb11, label %bb12

bb12:                                             ; preds = %bb19, %bb10
  %4 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %5 = getelementptr inbounds %Zahl, %Zahl* %4, i32 0, i32 2
  %_16 = load i64, i64* %5, align 1
  %_15 = icmp ugt i64 %_16, 0
  br i1 %_15, label %bb14, label %bb13

bb11:                                             ; preds = %bb10
  store i32 1, i32* %0, align 4
  br label %bb49

bb13:                                             ; preds = %bb12
  store i8 0, i8* %_14, align 1
  br label %bb15

bb14:                                             ; preds = %bb12
  %6 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_21 = getelementptr inbounds %Zahl, %Zahl* %6, i32 0, i32 4
  %7 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %8 = getelementptr inbounds %Zahl, %Zahl* %7, i32 0, i32 2
  %_24 = load i64, i64* %8, align 1
  %9 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_24, i64 1)
  %_26.0 = extractvalue { i64, i1 } %9, 0
  %_26.1 = extractvalue { i64, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_26.1, i1 false)
  br i1 %10, label %panic, label %bb16

bb16:                                             ; preds = %bb14
  %_20 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haed936cb7f568f0bE"(%"alloc::vec::Vec<u64>"* align 8 %_21, i64 %_26.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc29 to %"core::panic::location::Location"*))
  br label %bb17

panic:                                            ; preds = %bb14
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc27 to %"core::panic::location::Location"*)) #7
  unreachable

bb17:                                             ; preds = %bb16
  %_19 = load i64, i64* %_20, align 8
  %_18 = icmp eq i64 %_19, 0
  %11 = zext i1 %_18 to i8
  store i8 %11, i8* %_14, align 1
  br label %bb15

bb15:                                             ; preds = %bb17, %bb13
  %12 = load i8, i8* %_14, align 1, !range !1, !noundef !2
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb18, label %bb20

bb20:                                             ; preds = %bb15
  %14 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %15 = getelementptr inbounds %Zahl, %Zahl* %14, i32 0, i32 2
  %_30 = load i64, i64* %15, align 1
  %_29 = icmp ugt i64 %_30, 1
  br i1 %_29, label %bb21, label %bb22

bb18:                                             ; preds = %bb15
  %16 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %17 = getelementptr inbounds %Zahl, %Zahl* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 1
  %19 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %18, i64 1)
  %_28.0 = extractvalue { i64, i1 } %19, 0
  %_28.1 = extractvalue { i64, i1 } %19, 1
  %20 = call i1 @llvm.expect.i1(i1 %_28.1, i1 false)
  br i1 %20, label %panic1, label %bb19

bb19:                                             ; preds = %bb18
  %21 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %22 = getelementptr inbounds %Zahl, %Zahl* %21, i32 0, i32 2
  store i64 %_28.0, i64* %22, align 1
  br label %bb12

panic1:                                           ; preds = %bb18
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc31 to %"core::panic::location::Location"*)) #7
  unreachable

bb22:                                             ; preds = %bb20
  %_34 = sext i64 %b to i128
  %_36 = icmp eq i128 %_34, -170141183460469231731687303715884105728
  %23 = call i1 @llvm.expect.i1(i1 %_36, i1 false)
  br i1 %23, label %panic2, label %bb23

bb21:                                             ; preds = %bb20
  store i32 -1, i32* %0, align 4
  br label %bb49

bb23:                                             ; preds = %bb22
  %_33 = sub i128 0, %_34
  %b_neg = trunc i128 %_33 to i64
  %24 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_40 = getelementptr inbounds %Zahl, %Zahl* %24, i32 0, i32 4
  %_39 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haed936cb7f568f0bE"(%"alloc::vec::Vec<u64>"* align 8 %_40, i64 0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc35 to %"core::panic::location::Location"*))
  br label %bb24

panic2:                                           ; preds = %bb22
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([31 x i8]* @str.1 to [0 x i8]*), i64 31, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc33 to %"core::panic::location::Location"*)) #7
  unreachable

bb24:                                             ; preds = %bb23
  %_38 = load i64, i64* %_39, align 8
  %_37 = icmp ugt i64 %_38, %b_neg
  br i1 %_37, label %bb25, label %bb26

bb26:                                             ; preds = %bb24
  %25 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_46 = getelementptr inbounds %Zahl, %Zahl* %25, i32 0, i32 4
  %_45 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haed936cb7f568f0bE"(%"alloc::vec::Vec<u64>"* align 8 %_46, i64 0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc37 to %"core::panic::location::Location"*))
  br label %bb27

bb25:                                             ; preds = %bb24
  store i32 -1, i32* %0, align 4
  br label %bb49

bb27:                                             ; preds = %bb26
  %_44 = load i64, i64* %_45, align 8
  %_43 = icmp ult i64 %_44, %b_neg
  br i1 %_43, label %bb28, label %bb29

bb29:                                             ; preds = %bb27
  store i32 0, i32* %0, align 4
  br label %bb49

bb28:                                             ; preds = %bb27
  store i32 1, i32* %0, align 4
  br label %bb49

bb30:                                             ; preds = %bb9
  %_49 = icmp slt i32 %_50, 0
  br i1 %_49, label %bb31, label %bb32

bb32:                                             ; preds = %bb39, %bb30
  %26 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %27 = getelementptr inbounds %Zahl, %Zahl* %26, i32 0, i32 2
  %_54 = load i64, i64* %27, align 1
  %_53 = icmp ugt i64 %_54, 0
  br i1 %_53, label %bb34, label %bb33

bb31:                                             ; preds = %bb30
  store i32 -1, i32* %0, align 4
  br label %bb49

bb33:                                             ; preds = %bb32
  store i8 0, i8* %_52, align 1
  br label %bb35

bb34:                                             ; preds = %bb32
  %28 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_59 = getelementptr inbounds %Zahl, %Zahl* %28, i32 0, i32 4
  %29 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %30 = getelementptr inbounds %Zahl, %Zahl* %29, i32 0, i32 2
  %_62 = load i64, i64* %30, align 1
  %31 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_62, i64 1)
  %_64.0 = extractvalue { i64, i1 } %31, 0
  %_64.1 = extractvalue { i64, i1 } %31, 1
  %32 = call i1 @llvm.expect.i1(i1 %_64.1, i1 false)
  br i1 %32, label %panic3, label %bb36

bb36:                                             ; preds = %bb34
  %_58 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haed936cb7f568f0bE"(%"alloc::vec::Vec<u64>"* align 8 %_59, i64 %_64.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc41 to %"core::panic::location::Location"*))
  br label %bb37

panic3:                                           ; preds = %bb34
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc39 to %"core::panic::location::Location"*)) #7
  unreachable

bb37:                                             ; preds = %bb36
  %_57 = load i64, i64* %_58, align 8
  %_56 = icmp eq i64 %_57, 0
  %33 = zext i1 %_56 to i8
  store i8 %33, i8* %_52, align 1
  br label %bb35

bb35:                                             ; preds = %bb37, %bb33
  %34 = load i8, i8* %_52, align 1, !range !1, !noundef !2
  %35 = trunc i8 %34 to i1
  br i1 %35, label %bb38, label %bb40

bb40:                                             ; preds = %bb35
  %36 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %37 = getelementptr inbounds %Zahl, %Zahl* %36, i32 0, i32 2
  %_68 = load i64, i64* %37, align 1
  %_67 = icmp ugt i64 %_68, 1
  br i1 %_67, label %bb41, label %bb42

bb38:                                             ; preds = %bb35
  %38 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %39 = getelementptr inbounds %Zahl, %Zahl* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 1
  %41 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %40, i64 1)
  %_66.0 = extractvalue { i64, i1 } %41, 0
  %_66.1 = extractvalue { i64, i1 } %41, 1
  %42 = call i1 @llvm.expect.i1(i1 %_66.1, i1 false)
  br i1 %42, label %panic4, label %bb39

bb39:                                             ; preds = %bb38
  %43 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %44 = getelementptr inbounds %Zahl, %Zahl* %43, i32 0, i32 2
  store i64 %_66.0, i64* %44, align 1
  br label %bb32

panic4:                                           ; preds = %bb38
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc43 to %"core::panic::location::Location"*)) #7
  unreachable

bb42:                                             ; preds = %bb40
  %45 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_75 = getelementptr inbounds %Zahl, %Zahl* %45, i32 0, i32 4
  %_74 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haed936cb7f568f0bE"(%"alloc::vec::Vec<u64>"* align 8 %_75, i64 0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc45 to %"core::panic::location::Location"*))
  br label %bb43

bb41:                                             ; preds = %bb40
  store i32 1, i32* %0, align 4
  br label %bb49

bb43:                                             ; preds = %bb42
  %_73 = load i64, i64* %_74, align 8
  %_72 = icmp ult i64 %_73, %b
  br i1 %_72, label %bb44, label %bb45

bb45:                                             ; preds = %bb43
  %46 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_81 = getelementptr inbounds %Zahl, %Zahl* %46, i32 0, i32 4
  %_80 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haed936cb7f568f0bE"(%"alloc::vec::Vec<u64>"* align 8 %_81, i64 0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc47 to %"core::panic::location::Location"*))
  br label %bb46

bb44:                                             ; preds = %bb43
  store i32 -1, i32* %0, align 4
  br label %bb49

bb46:                                             ; preds = %bb45
  %_79 = load i64, i64* %_80, align 8
  %_78 = icmp ugt i64 %_79, %b
  br i1 %_78, label %bb47, label %bb48

bb48:                                             ; preds = %bb46
  store i32 0, i32* %0, align 4
  br label %bb49

bb47:                                             ; preds = %bb46
  store i32 1, i32* %0, align 4
  br label %bb49
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zcmpi.rs.bc", hash: (1973981085, 2507341357, 2704613666, 1779737735, 4227093452))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^3 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 2335118927127065779
^4 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^5 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 3716657408348378639
^6 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h41347737656ccf2cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 4043717261674555202
^7 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h2e6fa2539a9ff6e5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 4744943535567102962
^8 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h781276b4fd583347E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^7), (callee: ^6))))) ; guid = 4765896239917822200
^9 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hccf060deaec40411E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^39))))) ; guid = 5349638254086432222
^10 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, calls: ((callee: ^20)), refs: (^36)))) ; guid = 5436943481773832288
^11 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 6352479216858237361
^12 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^13 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h21610ae2d410bbd3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^22))))) ; guid = 6704182183927794065
^14 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 6934443669289190908
^15 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 7123435850071580612
^16 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 7568186931517829610
^17 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17ha5236d8834939960E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 9345613259613573437
^18 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^19 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10563505327347829530
^20 = gv: (name: "_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haed936cb7f568f0bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^30), (callee: ^35)), refs: (^31)))) ; guid = 10574985969579310406
^21 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10827703766087354777
^22 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf6931c6477e5fab8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 10982310523040587772
^23 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17ha63486658885d16aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^24), (callee: ^8))))) ; guid = 11350155401636477708
^24 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hbbec3106ea918c8dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^13))))) ; guid = 12510402106880240683
^25 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12611694231626422057
^26 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 13130941047087249414
^27 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0f4e9c508de69429E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 13747587581793911961
^28 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h97395ff44b6f6d52E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^38))))) ; guid = 13912772846994288172
^29 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 13949003943136923790
^30 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h81ad44ed0083a7a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^23), (callee: ^9))))) ; guid = 14190198952133152551
^31 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^32 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 14971687187764213548
^33 = gv: (name: "zsignum", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 15352537659571043505
^34 = gv: (name: "zcmpi", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 181, calls: ((callee: ^33), (callee: ^10), (callee: ^20), (callee: ^18)), refs: (^16, ^14, ^19, ^11, ^32, ^15, ^21, ^40, ^5, ^3, ^37, ^29, ^26)))) ; guid = 15574910005708637489
^35 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h541cf1136116ef45E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^28))))) ; guid = 16025136180804530670
^36 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 16677264339839058434
^37 = gv: (name: "alloc43", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 18133863193659399367
^38 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^39 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h98f78422ad9f7f37E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^27), (callee: ^17))))) ; guid = 18304540314228910430
^40 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 18347075358080792281
^41 = blockcount: 101
