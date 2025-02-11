; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_libc_rand48.rs.bc'
source_filename = "zrand_libc_rand48.2df4aa53-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::sync::atomic::AtomicU64" = type { i64 }
%"core::result::Result<core::time::Duration, std::time::SystemTimeError>" = type { i64, [2 x i64] }
%"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Ok" = type { [1 x i64], { i64, i32 } }
%"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Err" = type { [1 x i64], { i64, i32 } }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }

@alloc30 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc31 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc30, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc28 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc54 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc55 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc45 = private unnamed_addr constant <{ [49 x i8] }> <{ [49 x i8] c"there is no such thing as an acquire-release load" }>, align 1
@alloc46 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc45, i32 0, i32 0, i32 0), [8 x i8] c"1\00\00\00\00\00\00\00" }>, align 8
@alloc62 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/sync/atomic.rs" }>, align 1
@alloc57 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc62, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\BF\0B\00\00\17\00\00\00" }>, align 8
@alloc50 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"there is no such thing as a release load" }>, align 1
@alloc51 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [40 x i8] }>, <{ [40 x i8] }>* @alloc50, i32 0, i32 0, i32 0), [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@alloc59 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc62, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\BE\0B\00\00\18\00\00\00" }>, align 8
@alloc20 = private unnamed_addr constant <{ [50 x i8] }> <{ [50 x i8] c"there is no such thing as an acquire-release store" }>, align 1
@alloc21 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [50 x i8] }>, <{ [50 x i8] }>* @alloc20, i32 0, i32 0, i32 0), [8 x i8] c"2\00\00\00\00\00\00\00" }>, align 8
@alloc61 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc62, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\B0\0B\00\00\17\00\00\00" }>, align 8
@alloc25 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"there is no such thing as an acquire store" }>, align 1
@alloc26 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [42 x i8] }>, <{ [42 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@alloc63 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc62, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\AF\0B\00\00\18\00\00\00" }>, align 8
@alloc81 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ({ i64, i32 }*)* @"_ZN4core3ptr47drop_in_place$LT$std..time..SystemTimeError$GT$17ha6b4656294d8198cE" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i64, i32 }*, %"core::fmt::Formatter"*)* @"_ZN63_$LT$std..time..SystemTimeError$u20$as$u20$core..fmt..Debug$GT$3fmt17h113db2fe539475d6E" to i8*) }>, align 8
@anon.4bfd37fd4eb75dffac3cf165cefae285.0 = private unnamed_addr constant <{ [16 x i8] }> zeroinitializer, align 8
@alloc87 = private unnamed_addr constant <{ [91 x i8] }> <{ [91 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_libc_rand48.rs" }>, align 1
@alloc86 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc87, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\00\0E\00\00\00[\00\00\00" }>, align 8
@_ZN17zrand_libc_rand4817zrand_libc_rand486INITED17hff6a8a6d6e150d8fE = internal global <{ [1 x i8] }> zeroinitializer, align 1
@_ZN17zrand_libc_rand484rand4SEED17haac5e8a306950d2aE = internal global <{ [8 x i8] }> zeroinitializer, align 8
@alloc88 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc87, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\00)\00\00\00\10\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN109_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h2da08b8e7a6aac82E"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7e02d99cf6413f73E"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hf1f2f93dfa5836a1E"(i8* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 1, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_11 = load i8*, i8** %5, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hf1f2f93dfa5836a1E"(i8* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %6 = bitcast { i8*, i8* }* %self to i8**
  %_15 = load i8*, i8** %6, align 8, !nonnull !1, !noundef !1
  %_14 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7e02d99cf6413f73E"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_17 = load i8*, i8** %7, align 8
  %_12 = icmp eq i8* %_14, %_17
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_11.i = load i8*, i8** %8, align 8
  %9 = getelementptr inbounds i8, i8* %_11.i, i64 -1
  store i8* %9, i8** %0, align 8
  %_3.i1.i = load i8*, i8** %0, align 8
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  store i8* %_3.i1.i, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %1, align 8
  %13 = load i8*, i8** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %14 = bitcast i8** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 8, i1 false)
  %15 = bitcast i8** %2 to {}**
  store {}* null, {}** %15, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %16 = load i8*, i8** %2, align 8, !align !2
  ret i8* %16

bb13:                                             ; preds = %bb12
  store i8* %13, i8** %2, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hd5092f698fd99720E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117hd5092f698fd99720E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc31 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc28 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc55 to %"core::panic::location::Location"*)) #8
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr47drop_in_place$LT$std..time..SystemTimeError$GT$17ha6b4656294d8198cE"({ i64, i32 }* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h5639f99b7a632cffE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hf1f2f93dfa5836a1E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h8b46e43f233e9257E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h5639f99b7a632cffE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h8b46e43f233e9257E({}* %data_address) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf2302b6b624a73a8E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7e02d99cf6413f73E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @_ZN4core4iter6traits8iterator8Iterator3rev17he5770d491cca2296E(i8* %self.0, i8* %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h370a59e29e364425E"(i8* %self.0, i8* %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: uwtable
define { i8*, i8* } @"_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h370a59e29e364425E"(i8* %iter.0, i8* %iter.1) unnamed_addr #1 {
start:
  %0 = alloca { i8*, i8* }, align 8
  %1 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %0, i32 0, i32 0
  store i8* %iter.0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %0, i32 0, i32 1
  store i8* %iter.1, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %0, i32 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = insertvalue { i8*, i8* } undef, i8* %4, 0
  %8 = insertvalue { i8*, i8* } %7, i8* %6, 1
  ret { i8*, i8* } %8
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core4sync6atomic11atomic_load17hf1c05f07015bd29aE(i64* %dst, i8 %0) unnamed_addr #0 {
start:
  %_16 = alloca %"core::fmt::Arguments", align 8
  %_8 = alloca %"core::fmt::Arguments", align 8
  %1 = alloca i64, align 8
  %order = alloca i8, align 1
  store i8 %0, i8* %order, align 1
  %2 = load i8, i8* %order, align 1, !range !5, !noundef !1
  %_3 = zext i8 %2 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb9
    i64 2, label %bb5
    i64 3, label %bb1
    i64 4, label %bb7
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %3 = load atomic i64, i64* %dst monotonic, align 8
  store i64 %3, i64* %1, align 8
  br label %bb4

bb9:                                              ; preds = %start
  call void @_ZN4core3fmt9Arguments6new_v117hd5092f698fd99720E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_8, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc51 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc28 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb10

bb5:                                              ; preds = %start
  %4 = load atomic i64, i64* %dst acquire, align 8
  store i64 %4, i64* %1, align 8
  br label %bb6

bb1:                                              ; preds = %start
  call void @_ZN4core3fmt9Arguments6new_v117hd5092f698fd99720E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc46 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc28 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb11

bb7:                                              ; preds = %start
  %5 = load atomic i64, i64* %dst seq_cst, align 8
  store i64 %5, i64* %1, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb12

bb12:                                             ; preds = %bb4, %bb6, %bb8
  %6 = load i64, i64* %1, align 8
  ret i64 %6

bb11:                                             ; preds = %bb1
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc57 to %"core::panic::location::Location"*)) #8
  unreachable

bb6:                                              ; preds = %bb5
  br label %bb12

bb10:                                             ; preds = %bb9
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_8, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc59 to %"core::panic::location::Location"*)) #8
  unreachable

bb4:                                              ; preds = %bb3
  br label %bb12
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4sync6atomic12atomic_store17h9e133ebc251d5216E(i64* %dst, i64 %val, i8 %0) unnamed_addr #0 {
start:
  %_20 = alloca %"core::fmt::Arguments", align 8
  %_12 = alloca %"core::fmt::Arguments", align 8
  %order = alloca i8, align 1
  store i8 %0, i8* %order, align 1
  %1 = load i8, i8* %order, align 1, !range !5, !noundef !1
  %_4 = zext i8 %1 to i64
  switch i64 %_4, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb5
    i64 2, label %bb9
    i64 3, label %bb1
    i64 4, label %bb7
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store atomic i64 %val, i64* %dst monotonic, align 8
  br label %bb4

bb5:                                              ; preds = %start
  store atomic i64 %val, i64* %dst release, align 8
  br label %bb6

bb9:                                              ; preds = %start
  call void @_ZN4core3fmt9Arguments6new_v117hd5092f698fd99720E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_12, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc26 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc28 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb10

bb1:                                              ; preds = %start
  call void @_ZN4core3fmt9Arguments6new_v117hd5092f698fd99720E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_20, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc21 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc28 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb11

bb7:                                              ; preds = %start
  store atomic i64 %val, i64* %dst seq_cst, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb12

bb12:                                             ; preds = %bb4, %bb6, %bb8
  ret void

bb11:                                             ; preds = %bb1
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_20, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc61 to %"core::panic::location::Location"*)) #8
  unreachable

bb10:                                             ; preds = %bb9
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc63 to %"core::panic::location::Location"*)) #8
  unreachable

bb6:                                              ; preds = %bb5
  br label %bb12

bb4:                                              ; preds = %bb3
  br label %bb12
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4sync6atomic9AtomicU644load17h8c02699ebc6565daE(%"core::sync::atomic::AtomicU64"* align 8 %self, i8 %order) unnamed_addr #0 {
start:
  %_5 = bitcast %"core::sync::atomic::AtomicU64"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i64 @_ZN4core4sync6atomic11atomic_load17hf1c05f07015bd29aE(i64* %_5, i8 %order)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core4sync6atomic9AtomicU645store17h649ffddb99deed2aE(%"core::sync::atomic::AtomicU64"* align 8 %self, i64 %val, i8 %order) unnamed_addr #0 {
start:
  %_6 = bitcast %"core::sync::atomic::AtomicU64"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core4sync6atomic12atomic_store17h9e133ebc251d5216E(i64* %_6, i64 %val, i8 %order)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4time8Duration7as_secs17h1f730e09af52a43fE({ i64, i32 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i32 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hcdffc2c45b6c9448E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h20b69475fc046932E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h9fa8c857cd349191E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h02440c0fb9bdfacaE"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h02440c0fb9bdfacaE"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hcdffc2c45b6c9448E"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hf1f2f93dfa5836a1E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 1, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %4 = getelementptr i8, i8* %ptr, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %_3.i = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %5 = getelementptr inbounds i8, i8* %ptr, i64 %slice.1
  store i8* %5, i8** %0, align 8
  %_3.i1 = load i8*, i8** %0, align 8
  store i8* %_3.i1, i8** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf2302b6b624a73a8E"(i8* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  store i8* %_3.i, i8** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_20 = load i8*, i8** %end, align 8
  %6 = bitcast { i8*, i8* }* %2 to i8**
  store i8* %_18, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  store i8* %_20, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = insertvalue { i8*, i8* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i8* } %12, i8* %11, 1
  ret { i8*, i8* } %13
}

; Function Attrs: inlinehint uwtable
define { i64, i32 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13b2005a54539bb1E"(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %e = alloca { i64, i32 }, align 8
  %2 = bitcast %"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* %self to i64*
  %_2 = load i64, i64* %2, align 8, !range !6, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* %self to %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Ok"*
  %4 = getelementptr inbounds %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Ok", %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Ok"* %3, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  %t.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  %t.1 = load i32, i32* %6, align 8
  %7 = insertvalue { i64, i32 } undef, i64 %t.0, 0
  %8 = insertvalue { i64, i32 } %7, i32 %t.1, 1
  ret { i64, i32 } %8

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* %self to %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Err", %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %e, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %e, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %_7.0 = bitcast { i64, i32 }* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 bitcast (<{ [43 x i8] }>* @alloc81 to [0 x i8]*), i64 43, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*), %"core::panic::location::Location"* align 8 %0) #8
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  %19 = extractvalue { i8*, i32 } %17, 1
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb4
  %22 = bitcast { i8*, i32 }* %1 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = insertvalue { i8*, i32 } undef, i8* %23, 0
  %27 = insertvalue { i8*, i32 } %26, i32 %25, 1
  resume { i8*, i32 } %27
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9190c9b104a37708E"(i8* %self.0, i8* %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i8*, i8* } undef, i8* %self.0, 0
  %1 = insertvalue { i8*, i8* } %0, i8* %self.1, 1
  ret { i8*, i8* } %1
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd44f2f0672603c6cE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 1 i8* @"_ZN109_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h2da08b8e7a6aac82E"({ i8*, i8* }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: uwtable
define void @zrand_libc_rand48([0 x i8]* align 1 %out.0, i64 %out.1, {}* align 1 %_statep) unnamed_addr #1 {
start:
  %_28 = alloca i8*, align 8
  %iter = alloca { i8*, i8* }, align 8
  %_19 = alloca { i64, i64 }, align 8
  %_17 = alloca %"core::result::Result<core::time::Duration, std::time::SystemTimeError>", align 8
  %_16 = alloca { i64, i32 }, align 8
  %0 = load i8, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @_ZN17zrand_libc_rand4817zrand_libc_rand486INITED17hff6a8a6d6e150d8fE, i32 0, i32 0, i32 0), align 1, !range !3, !noundef !1
  %_6 = trunc i8 %0 to i1
  %_5 = xor i1 %_6, true
  br i1 %_5, label %bb1, label %bb7

bb7:                                              ; preds = %bb6, %start
  %1 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h9fa8c857cd349191E"([0 x i8]* align 1 %out.0, i64 %out.1)
  %_25.0 = extractvalue { i8*, i8* } %1, 0
  %_25.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb8

bb1:                                              ; preds = %start
  store i8 1, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @_ZN17zrand_libc_rand4817zrand_libc_rand486INITED17hff6a8a6d6e150d8fE, i32 0, i32 0, i32 0), align 1
  %_11 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h20b69475fc046932E"([0 x i8]* align 1 %out.0, i64 %out.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_10 = ptrtoint i8* %_11 to i64
  %2 = call { i64, i64 } @_ZN3std4time10SystemTime3now17ha1d98092ef1de20bE()
  store { i64, i64 } %2, { i64, i64 }* %_19, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (<{ [16 x i8] }>* @anon.4bfd37fd4eb75dffac3cf165cefae285.0 to { i64, i64 }*), i32 0, i32 0), align 8
  %4 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (<{ [16 x i8] }>* @anon.4bfd37fd4eb75dffac3cf165cefae285.0 to { i64, i64 }*), i32 0, i32 1), align 8
  call void @_ZN3std4time10SystemTime14duration_since17ha18cd56976c36353E(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* sret(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>") %_17, { i64, i64 }* align 8 %_19, i64 %3, i64 %4)
  br label %bb4

bb4:                                              ; preds = %bb3
  %5 = call { i64, i32 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13b2005a54539bb1E"(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* %_17, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc86 to %"core::panic::location::Location"*))
  store { i64, i32 } %5, { i64, i32 }* %_16, align 8
  br label %bb5

bb5:                                              ; preds = %bb4
  %_14 = call i64 @_ZN4core4time8Duration7as_secs17h1f730e09af52a43fE({ i64, i32 }* align 8 %_16)
  br label %bb6

bb6:                                              ; preds = %bb5
  %seed = or i64 %_10, %_14
  call void @srand(i64 %seed)
  br label %bb7

bb8:                                              ; preds = %bb7
  %6 = call { i8*, i8* } @_ZN4core4iter6traits8iterator8Iterator3rev17he5770d491cca2296E(i8* %_25.0, i8* %_25.1)
  %_24.0 = extractvalue { i8*, i8* } %6, 0
  %_24.1 = extractvalue { i8*, i8* } %6, 1
  br label %bb9

bb9:                                              ; preds = %bb8
  %7 = call { i8*, i8* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9190c9b104a37708E"(i8* %_24.0, i8* %_24.1)
  %_23.0 = extractvalue { i8*, i8* } %7, 0
  %_23.1 = extractvalue { i8*, i8* } %7, 1
  br label %bb10

bb10:                                             ; preds = %bb9
  %8 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 0
  store i8* %_23.0, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 1
  store i8* %_23.1, i8** %9, align 8
  br label %bb11

bb11:                                             ; preds = %bb18, %bb10
  %10 = call align 1 i8* @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd44f2f0672603c6cE"({ i8*, i8* }* align 8 %iter)
  store i8* %10, i8** %_28, align 8
  br label %bb12

bb12:                                             ; preds = %bb11
  %11 = bitcast i8** %_28 to {}**
  %12 = load {}*, {}** %11, align 8
  %13 = icmp eq {}* %12, null
  %_31 = select i1 %13, i64 0, i64 1
  switch i64 %_31, label %bb14 [
    i64 0, label %bb15
    i64 1, label %bb13
  ]

bb14:                                             ; preds = %bb12
  unreachable

bb15:                                             ; preds = %bb12
  ret void

bb13:                                             ; preds = %bb12
  %byte = load i8*, i8** %_28, align 8, !nonnull !1, !align !2, !noundef !1
  %_34 = call i64 @lrand48()
  br label %bb16

bb16:                                             ; preds = %bb13
  %_33 = and i64 %_34, 15
  %_36 = call i64 @lrand48()
  br label %bb17

bb17:                                             ; preds = %bb16
  %_35 = and i64 %_36, 15
  %_40.0 = shl i64 %_33, 4
  br label %bb18

bb18:                                             ; preds = %bb17
  %_37 = or i64 %_40.0, %_35
  %14 = trunc i64 %_37 to i8
  store i8 %14, i8* %byte, align 1
  br label %bb11
}

; Function Attrs: uwtable
define void @srand(i64 %seed) unnamed_addr #1 {
start:
  %_6 = alloca i8, align 1
  store i8 4, i8* %_6, align 1
  %0 = load i8, i8* %_6, align 1, !range !5, !noundef !1
  call void @_ZN4core4sync6atomic9AtomicU645store17h649ffddb99deed2aE(%"core::sync::atomic::AtomicU64"* align 8 bitcast (<{ [8 x i8] }>* @_ZN17zrand_libc_rand484rand4SEED17haac5e8a306950d2aE to %"core::sync::atomic::AtomicU64"*), i64 %seed, i8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define i64 @lrand48() unnamed_addr #1 {
start:
  %_14 = alloca i8, align 1
  %_4 = alloca i8, align 1
  %seed = alloca i64, align 8
  store i8 4, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !5, !noundef !1
  %1 = call i64 @_ZN4core4sync6atomic9AtomicU644load17h8c02699ebc6565daE(%"core::sync::atomic::AtomicU64"* align 8 bitcast (<{ [8 x i8] }>* @_ZN17zrand_libc_rand484rand4SEED17haac5e8a306950d2aE to %"core::sync::atomic::AtomicU64"*), i8 %0)
  store i64 %1, i64* %seed, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = load i64, i64* %seed, align 8
  %2 = mul i64 25214903917, %_7
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 11)
  %_8.0 = extractvalue { i64, i1 } %3, 0
  %_8.1 = extractvalue { i64, i1 } %3, 1
  %4 = call i1 @llvm.expect.i1(i1 %_8.1, i1 false)
  br i1 %4, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %5 = and i64 %_8.0, 281474976710655
  store i64 %5, i64* %seed, align 8
  %_13 = load i64, i64* %seed, align 8
  store i8 4, i8* %_14, align 1
  %6 = load i8, i8* %_14, align 1, !range !5, !noundef !1
  call void @_ZN4core4sync6atomic9AtomicU645store17h649ffddb99deed2aE(%"core::sync::atomic::AtomicU64"* align 8 bitcast (<{ [8 x i8] }>* @_ZN17zrand_libc_rand484rand4SEED17haac5e8a306950d2aE to %"core::sync::atomic::AtomicU64"*), i64 %_13, i8 %6)
  br label %bb4

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc88 to %"core::panic::location::Location"*)) #8
  unreachable

bb4:                                              ; preds = %bb3
  %_16 = load i64, i64* %seed, align 8
  %_17.0 = lshr i64 %_16, 16
  br label %bb5

bb5:                                              ; preds = %bb4
  %7 = and i64 %_17.0, 4294967295
  ret i64 %7
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN63_$LT$std..time..SystemTimeError$u20$as$u20$core..fmt..Debug$GT$3fmt17h113db2fe539475d6E"({ i64, i32 }* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: uwtable
declare { i64, i64 } @_ZN3std4time10SystemTime3now17ha1d98092ef1de20bE() unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std4time10SystemTime14duration_since17ha18cd56976c36353E(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* sret(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>"), { i64, i64 }* align 8, i64, i64) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #7

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}
!5 = !{i8 0, i8 5}
!6 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_libc_rand48.rs.bc", hash: (3573875931, 3742449461, 1460121422, 2119118804, 2914163692))
^1 = gv: (name: "zrand_libc_rand48", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 68, calls: ((callee: ^64), (callee: ^17), (callee: ^55), (callee: ^52), (callee: ^25), (callee: ^62), (callee: ^59), (callee: ^7), (callee: ^11), (callee: ^39), (callee: ^26)), refs: (^63, ^18, readonly ^13)))) ; guid = 533692156919765950
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hcdffc2c45b6c9448E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 985597279683805855
^4 = gv: (name: "alloc50", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1105409406157433226
^5 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^50)))) ; guid = 1111997601951586660
^6 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1634046694376358597
^7 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator3rev17he5770d491cca2296E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^31))))) ; guid = 2145436359978547487
^8 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^9 = gv: (name: "alloc54", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2929322469761561517
^10 = gv: (name: "_ZN4core4sync6atomic9AtomicU645store17h649ffddb99deed2aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^35))))) ; guid = 3181418645565987266
^11 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9190c9b104a37708E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 3412230431877597521
^12 = gv: (name: "alloc63", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 3595526034442492326
^13 = gv: (name: "anon.4bfd37fd4eb75dffac3cf165cefae285.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3660680384482138456
^14 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4128278279126664786
^15 = gv: (name: "_ZN17zrand_libc_rand484rand4SEED17haac5e8a306950d2aE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 4286059811183795727
^16 = gv: (name: "_ZN109_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h2da08b8e7a6aac82E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 53, calls: ((callee: ^19), (callee: ^37))))) ; guid = 5250624928852012640
^17 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h20b69475fc046932E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 5621620697684743205
^18 = gv: (name: "_ZN17zrand_libc_rand4817zrand_libc_rand486INITED17hff6a8a6d6e150d8fE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 5816372822026860714
^19 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7e02d99cf6413f73E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 6213092901072939283
^20 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^21 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^22 = gv: (name: "alloc59", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 7713717969204438276
^23 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 7883745296103593892
^24 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf2302b6b624a73a8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 8101548882362905915
^25 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13b2005a54539bb1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^34)), refs: (^49, ^44, ^48)))) ; guid = 8103412262087596174
^26 = gv: (name: "lrand48", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 30, calls: ((callee: ^54), (callee: ^10), (callee: ^32)), refs: (^15, ^33, ^46)))) ; guid = 8103457505813936450
^27 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8257327727206775223
^28 = gv: (name: "_ZN63_$LT$std..time..SystemTimeError$u20$as$u20$core..fmt..Debug$GT$3fmt17h113db2fe539475d6E") ; guid = 8499767664155574914
^29 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h5639f99b7a632cffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 8675054916437162654
^30 = gv: (name: "alloc55", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 9353405762615136327
^31 = gv: (name: "_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h370a59e29e364425E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 10191631173127975733
^32 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^33 = gv: (name: "alloc88", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^60)))) ; guid = 10473478854606283064
^34 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^35 = gv: (name: "_ZN4core4sync6atomic12atomic_store17h9e133ebc251d5216E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, calls: ((callee: ^57), (callee: ^56)), refs: (^27, ^40, ^23, ^38, ^12)))) ; guid = 11065282035186403053
^36 = gv: (name: "alloc62", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11107055197434406778
^37 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hf1f2f93dfa5836a1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^43), (callee: ^29))))) ; guid = 11885220537860607946
^38 = gv: (name: "alloc61", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 12915390927557314117
^39 = gv: (name: "_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd44f2f0672603c6cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^16))))) ; guid = 12985458918711920103
^40 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^14)))) ; guid = 13304936916516979469
^41 = gv: (name: "_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h02440c0fb9bdfacaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^3), (callee: ^37), (callee: ^24))))) ; guid = 13758388285196483626
^42 = gv: (name: "alloc57", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 13849566969935917308
^43 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h8b46e43f233e9257E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 14051816585072648691
^44 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^58, ^28)))) ; guid = 14309247977883394776
^45 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^46 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14711506285889297295
^47 = gv: (name: "_ZN4core4sync6atomic11atomic_load17hf1c05f07015bd29aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, calls: ((callee: ^57), (callee: ^56)), refs: (^27, ^51, ^5, ^42, ^22)))) ; guid = 14729472437447652547
^48 = gv: (name: "alloc81", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14797426143375176813
^49 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^50 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15197446957347556754
^51 = gv: (name: "alloc51", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4)))) ; guid = 15311502001860890412
^52 = gv: (name: "_ZN3std4time10SystemTime14duration_since17ha18cd56976c36353E") ; guid = 15321110977167584432
^53 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^61)))) ; guid = 15437972378092565516
^54 = gv: (name: "_ZN4core4sync6atomic9AtomicU644load17h8c02699ebc6565daE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^47))))) ; guid = 15468187571064167395
^55 = gv: (name: "_ZN3std4time10SystemTime3now17ha1d98092ef1de20bE") ; guid = 15523886518197810360
^56 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^57 = gv: (name: "_ZN4core3fmt9Arguments6new_v117hd5092f698fd99720E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^57), (callee: ^56)), refs: (^27, ^53, ^30)))) ; guid = 16305128801114009746
^58 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$std..time..SystemTimeError$GT$17ha6b4656294d8198cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 16315337959217895323
^59 = gv: (name: "srand", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^10)), refs: (^15)))) ; guid = 16361127236386863736
^60 = gv: (name: "alloc87", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16441842365642051160
^61 = gv: (name: "alloc30", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16857635210819711362
^62 = gv: (name: "_ZN4core4time8Duration7as_secs17h1f730e09af52a43fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 17571874328253824607
^63 = gv: (name: "alloc86", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^60)))) ; guid = 17878135930759832924
^64 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h9fa8c857cd349191E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^41))))) ; guid = 18354489491640712769
^65 = blockcount: 121
