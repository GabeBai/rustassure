; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_pz.rs.bc'
source_filename = "zsplit_pz.fe84a2d0-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"[closure@inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_pz.rs:51:18: 51:21]" = type {}
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h2fdbcbfbb47fc2c5E"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h7a5a7e68cb8ecd92E"(%Zahl* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast %Zahl* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hf28d7009ca8c2bcfE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h2fdbcbfbb47fc2c5E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17h29bdbfc69464a51bE({}* %data_address) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hf28d7009ca8c2bcfE({}* %data_address) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he67393129b37a27cE"(%Zahl* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to %Zahl**
  store %Zahl* %ptr, %Zahl** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4c94a91d65d08f0eE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to %Zahl*
  ret %Zahl* %_2
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h80d138e2113f9eb1E"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h95ed1174759f516bE"(%Zahl* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast %Zahl* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h29bdbfc69464a51bE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h80d138e2113f9eb1E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1fb291125af2606eE"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h3a62c34a7a5beb21E"([0 x %Zahl]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha071ab936483d130E"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x %Zahl]* %self.0 to %Zahl*
  ret %Zahl* %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h3a62c34a7a5beb21E"([0 x %Zahl]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca %Zahl*, align 8
  %1 = alloca i8*, align 8
  %end = alloca %Zahl*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha071ab936483d130E"([0 x %Zahl]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h95ed1174759f516bE"(%Zahl* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 32, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %_11 = bitcast %Zahl* %ptr to i8*
  %4 = getelementptr i8, i8* %_11, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds %Zahl, %Zahl* %ptr, i64 %slice.1
  store %Zahl* %6, %Zahl** %0, align 8
  %7 = load %Zahl*, %Zahl** %0, align 8
  store %Zahl* %7, %Zahl** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he67393129b37a27cE"(%Zahl* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  %8 = bitcast i8* %5 to %Zahl*
  store %Zahl* %8, %Zahl** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load %Zahl*, %Zahl** %end, align 8
  %9 = bitcast { i8*, i8* }* %2 to i8**
  store i8* %_18, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %11 = bitcast i8** %10 to %Zahl**
  store %Zahl* %_21, %Zahl** %11, align 8
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !nonnull !2, !noundef !2
  %14 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = insertvalue { i8*, i8* } undef, i8* %13, 0
  %17 = insertvalue { i8*, i8* } %16, i8* %15, 1
  ret { i8*, i8* } %17
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hf71f5ab39eefc1cbE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8*, align 8
  %_3 = alloca i8*, align 8
  %1 = alloca i8, align 1
  %f = alloca %"[closure@inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_pz.rs:51:18: 51:21]", align 1
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %2 = invoke align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb02be85669091faE"({ i8*, i8* }* align 8 %self)
          to label %bb2 unwind label %cleanup

bb9:                                              ; preds = %cleanup
  br label %bb10

cleanup:                                          ; preds = %bb3, %bb1
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb9

bb2:                                              ; preds = %bb1
  store i8* %2, i8** %_3, align 8
  %8 = bitcast i8** %_3 to {}**
  %9 = load {}*, {}** %8, align 8
  %10 = icmp eq {}* %9, null
  %_5 = select i1 %10, i64 0, i64 1
  %11 = icmp eq i64 %_5, 1
  br i1 %11, label %bb3, label %bb7

bb3:                                              ; preds = %bb2
  %12 = bitcast i8** %_3 to %Zahl**
  %x = load %Zahl*, %Zahl** %12, align 8, !nonnull !2, !align !3, !noundef !2
  %13 = bitcast i8** %_10 to %Zahl**
  store %Zahl* %x, %Zahl** %13, align 8
  %14 = load i8*, i8** %_10, align 8, !nonnull !2, !align !3, !noundef !2
  %15 = bitcast i8* %14 to %Zahl*
  %_8 = invoke zeroext i1 @"_ZN9zsplit_pz5zzero28_$u7b$$u7b$closure$u7d$$u7d$17h9043e91ba90f7ba2E"(%"[closure@inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_pz.rs:51:18: 51:21]"* align 1 %f, %Zahl* align 1 %15)
          to label %bb4 unwind label %cleanup

bb7:                                              ; preds = %bb2
  store i8 1, i8* %1, align 1
  br label %bb8

bb8:                                              ; preds = %bb5, %bb7
  %16 = load i8, i8* %1, align 1, !range !1, !noundef !2
  %17 = trunc i8 %16 to i1
  ret i1 %17

bb4:                                              ; preds = %bb3
  %_7 = xor i1 %_8, true
  br i1 %_7, label %bb5, label %bb6

bb10:                                             ; preds = %bb9
  %18 = bitcast { i8*, i32 }* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb6:                                              ; preds = %bb4
  br label %bb1

bb5:                                              ; preds = %bb4
  store i8 0, i8* %1, align 1
  br label %bb8
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb02be85669091faE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca %Zahl*, align 8
  %1 = alloca %Zahl*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !2, !noundef !2
  %_5 = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4c94a91d65d08f0eE"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h7a5a7e68cb8ecd92E"(%Zahl* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 32, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %6 = bitcast i8** %5 to %Zahl**
  %_11 = load %Zahl*, %Zahl** %6, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h95ed1174759f516bE"(%Zahl* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %7 = bitcast { i8*, i8* }* %self to i8**
  %_15 = load i8*, i8** %7, align 8, !nonnull !2, !noundef !2
  %_14 = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4c94a91d65d08f0eE"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %8 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %9 = bitcast i8** %8 to %Zahl**
  %_16 = load %Zahl*, %Zahl** %9, align 8
  %_12 = icmp eq %Zahl* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %10 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %10, align 8, !nonnull !2, !noundef !2
  %old.i = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4c94a91d65d08f0eE"(i8* %_12.i)
  %11 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %11, align 8, !nonnull !2, !noundef !2
  %_15.i = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4c94a91d65d08f0eE"(i8* %_16.i)
  %12 = getelementptr inbounds %Zahl, %Zahl* %_15.i, i64 1
  store %Zahl* %12, %Zahl** %0, align 8
  %_3.i.i = load %Zahl*, %Zahl** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he67393129b37a27cE"(%Zahl* %_3.i.i)
  %13 = bitcast { i8*, i8* }* %self to i8**
  store i8* %_13.i, i8** %13, align 8
  store %Zahl* %old.i, %Zahl** %1, align 8
  %14 = load %Zahl*, %Zahl** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %15 = bitcast i8** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = bitcast i8** %2 to {}**
  store {}* null, {}** %16, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %17 = load i8*, i8** %2, align 8, !align !3
  ret i8* %17

bb13:                                             ; preds = %bb12
  %18 = bitcast i8** %2 to %Zahl**
  store %Zahl* %14, %Zahl** %18, align 8
  br label %bb14
}

; Function Attrs: uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %a) unnamed_addr #1 {
start:
  %_3 = alloca { i8*, i8* }, align 8
  %_4.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %0 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1fb291125af2606eE"([0 x %Zahl]* align 1 %_4.0, i64 1)
  store { i8*, i8* } %0, { i8*, i8* }* %_3, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call zeroext i1 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hf71f5ab39eefc1cbE"({ i8*, i8* }* align 8 %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN9zsplit_pz5zzero28_$u7b$$u7b$closure$u7d$$u7d$17h9043e91ba90f7ba2E"(%"[closure@inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_pz.rs:51:18: 51:21]"* align 1 %_1, %Zahl* align 1 %z) unnamed_addr #0 {
start:
  %0 = bitcast %Zahl* %z to i32*
  %_3 = load i32, i32* %0, align 1
  %1 = icmp eq i32 %_3, 0
  ret i1 %1
}

; Function Attrs: uwtable
define void @zsplit([1 x %Zahl]* align 1 %high, [1 x %Zahl]* align 1 %low, [1 x %Zahl]* align 1 %a, i64 %delim) unnamed_addr #1 {
start:
  %_5 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %a)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_5, label %bb2, label %bb3

bb3:                                              ; preds = %bb2, %bb1
  ret void

bb2:                                              ; preds = %bb1
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %1 = bitcast %Zahl* %0 to i32*
  store i32 0, i32* %1, align 1
  %2 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %3 = bitcast %Zahl* %2 to i32*
  store i32 0, i32* %3, align 1
  br label %bb3
}

; Function Attrs: uwtable
define void @zsplit_pz([1 x %Zahl]* align 1 %high, [1 x %Zahl]* align 1 %low, [1 x %Zahl]* align 1 %a, i64 %delim) unnamed_addr #1 {
start:
  %_5 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %a)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_5, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  call void @zsplit([1 x %Zahl]* align 1 %high, [1 x %Zahl]* align 1 %low, [1 x %Zahl]* align 1 %a, i64 %delim)
  br label %bb4

bb2:                                              ; preds = %bb1
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %1 = bitcast %Zahl* %0 to i32*
  store i32 0, i32* %1, align 1
  %2 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %3 = bitcast %Zahl* %2 to i32*
  store i32 0, i32* %3, align 1
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 1}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_pz.rs.bc", hash: (4028256040, 786023612, 992547989, 441083244, 1740282176))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h3a62c34a7a5beb21E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^3), (callee: ^9), (callee: ^16))))) ; guid = 2625139295055022674
^3 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha071ab936483d130E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 4768538565770170936
^4 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^14), (callee: ^13))))) ; guid = 5436943481773832288
^5 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h7a5a7e68cb8ecd92E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^18), (callee: ^15))))) ; guid = 6323690430955495016
^6 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^7 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^8 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h80d138e2113f9eb1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 7268791640686126529
^9 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h95ed1174759f516bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^11), (callee: ^8))))) ; guid = 8159639773442474117
^10 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb02be85669091faE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 59, calls: ((callee: ^21), (callee: ^5), (callee: ^9), (callee: ^16))))) ; guid = 8374302631771357724
^11 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h29bdbfc69464a51bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 8806912603144090314
^12 = gv: (name: "zsplit_pz", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^4), (callee: ^19))))) ; guid = 9812446036412579092
^13 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hf71f5ab39eefc1cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^10), (callee: ^17)), refs: (^20)))) ; guid = 10001280786423829605
^14 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1fb291125af2606eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^2))))) ; guid = 10706172354679322020
^15 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h2fdbcbfbb47fc2c5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 11660289028007754666
^16 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he67393129b37a27cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 12052259127746319593
^17 = gv: (name: "_ZN9zsplit_pz5zzero28_$u7b$$u7b$closure$u7d$$u7d$17h9043e91ba90f7ba2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 12391649742351796396
^18 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hf28d7009ca8c2bcfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 12826388920813620519
^19 = gv: (name: "zsplit", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^4))))) ; guid = 13045663909046670679
^20 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^21 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4c94a91d65d08f0eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 17798429077153499972
^22 = blockcount: 68
