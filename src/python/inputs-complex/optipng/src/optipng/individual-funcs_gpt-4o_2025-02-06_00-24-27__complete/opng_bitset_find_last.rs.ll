; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_find_last.rs.bc'
source_filename = "opng_bitset_find_last.c88b7fe2-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ops::range::RangeInclusive<i32>" = type { i32, i32, i8, [3 x i8] }
%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>" = type { %"core::ops::range::RangeInclusive<i32>" }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc22 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc23 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc24 = private unnamed_addr constant <{ [103 x i8] }> <{ [103 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_find_last.rs" }>, align 1
@alloc25 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\0B\00\00\00\13\00\00\00" }>, align 8
@str.0 = internal constant [35 x i8] c"attempt to shift left with overflow"

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$14spec_next_back17hc0a1865f0f8a974dE"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self) unnamed_addr #0 {
start:
  %_7 = alloca i32, align 4
  %0 = alloca { i32, i32 }, align 4
  %_2 = call zeroext i1 @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17h74cd1448d358501cE"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_5 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %_6 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 1
  %is_iterating = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h68e794f450495c46E"(i32* align 4 %_5, i32* align 4 %_6)
  br label %bb4

bb2:                                              ; preds = %bb1
  %1 = bitcast { i32, i32 }* %0 to i32*
  store i32 0, i32* %1, align 4
  br label %bb12

bb12:                                             ; preds = %bb11, %bb2
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %3 = load i32, i32* %2, align 4, !range !1, !noundef !2
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = insertvalue { i32, i32 } undef, i32 %3, 0
  %7 = insertvalue { i32, i32 } %6, i32 %5, 1
  ret { i32, i32 } %7

bb4:                                              ; preds = %bb3
  br i1 %is_iterating, label %bb5, label %bb9

bb9:                                              ; preds = %bb4
  %8 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 2
  store i8 1, i8* %8, align 4
  %_15 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 1
  %9 = call i32 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17hef9139670961df4cE"(i32* align 4 %_15)
  store i32 %9, i32* %_7, align 4
  br label %bb10

bb5:                                              ; preds = %bb4
  %_11 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 1
  %_10 = call i32 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17hef9139670961df4cE"(i32* align 4 %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %n = call i32 @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$18backward_unchecked17h60f2618a128bcbbcE"(i32 %_10, i64 1)
  br label %bb7

bb7:                                              ; preds = %bb6
  %_13 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 1
  %10 = call i32 @_ZN4core3mem7replace17h0e437496dde21df5E(i32* align 4 %_13, i32 %n)
  store i32 %10, i32* %_7, align 4
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %_7, align 4
  store i32 %12, i32* %11, align 4
  %13 = bitcast { i32, i32 }* %0 to i32*
  store i32 1, i32* %13, align 4
  br label %bb12

bb10:                                             ; preds = %bb9
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$18backward_unchecked17h60f2618a128bcbbcE"(i32 %start1, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %_4 = trunc i64 %n to i32
  %1 = sub nsw i32 %start1, %_4
  store i32 %1, i32* %0, align 4
  %2 = load i32, i32* %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %2
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h68d7722b9b4f436bE"(i32* align 4 %self, i32* align 4 %other) unnamed_addr #0 {
start:
  %_3 = load i32, i32* %self, align 4
  %_4 = load i32, i32* %other, align 4
  %0 = icmp sle i32 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h68e794f450495c46E"(i32* align 4 %self, i32* align 4 %other) unnamed_addr #0 {
start:
  %_3 = load i32, i32* %self, align 4
  %_4 = load i32, i32* %other, align 4
  %0 = icmp slt i32 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i32 @_ZN4core3mem7replace17h0e437496dde21df5E(i32* align 4 %dest, i32 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i32 @_ZN4core3ptr4read17hd5ea984d996ff272E(i32* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !3, !noundef !2
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb5, label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb6

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  invoke void @_ZN4core3ptr5write17h7155c2be3f95b7bcE(i32* %dest, i32 %src)
          to label %bb2 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1
  br label %bb6

cleanup1:                                         ; preds = %bb1
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  ret i32 %result

bb4:                                              ; preds = %bb5, %bb6
  %13 = bitcast { i8*, i32 }* %0 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hed8544138521858eE"(%"core::ops::range::RangeInclusive<i32>"* sret(%"core::ops::range::RangeInclusive<i32>") %0, i32 %start1, i32 %end) unnamed_addr #0 {
start:
  %1 = bitcast %"core::ops::range::RangeInclusive<i32>"* %0 to i32*
  store i32 %start1, i32* %1, align 4
  %2 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %0, i32 0, i32 1
  store i32 %end, i32* %2, align 4
  %3 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %0, i32 0, i32 2
  store i8 0, i8* %3, align 4
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17h74cd1448d358501cE"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 2
  %2 = load i8, i8* %1, align 4, !range !3, !noundef !2
  %_2 = trunc i8 %2 to i1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %_6 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 1
  %_4 = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h68d7722b9b4f436bE"(i32* align 4 %_5, i32* align 4 %_6)
  br label %bb4

bb1:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb4, %bb1
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb4:                                              ; preds = %bb2
  %_3 = xor i1 %_4, true
  %5 = zext i1 %_3 to i8
  store i8 %5, i8* %0, align 1
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define i32 @_ZN4core3ptr4read17hd5ea984d996ff272E(i32* %src) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %1 = bitcast i32* %0 to {}*
  %2 = load i32, i32* %0, align 4
  store i32 %2, i32* %tmp, align 4
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast i32* %tmp to i8*
  %4 = bitcast i32* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 4, i1 false)
  %_6 = load i32, i32* %tmp, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i32 %_6
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h7155c2be3f95b7bcE(i32* %dst, i32 %0) unnamed_addr #0 {
start:
  %src = alloca i32, align 4
  store i32 %0, i32* %src, align 4
  %1 = bitcast i32* %dst to i8*
  %2 = bitcast i32* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 4, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN4core4iter5range125_$LT$impl$u20$core..iter..traits..double_ended..DoubleEndedIterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9next_back17h2296f0483a6492d4E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self) unnamed_addr #0 {
start:
  %0 = call { i32, i32 } @"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$14spec_next_back17hc0a1865f0f8a974dE"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self)
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i32, i32 } undef, i32 %1, 0
  %4 = insertvalue { i32, i32 } %3, i32 %2, 1
  ret { i32, i32 } %4
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator3rev17h6fd7800c0b18a4cbE(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* sret(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>") %0, %"core::ops::range::RangeInclusive<i32>"* %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::ops::range::RangeInclusive<i32>", align 4
  %1 = bitcast %"core::ops::range::RangeInclusive<i32>"* %_2 to i8*
  %2 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  call void @"_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h8705fdbff1b601e1E"(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* sret(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>") %0, %"core::ops::range::RangeInclusive<i32>"* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h8705fdbff1b601e1E"(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* sret(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>") %0, %"core::ops::range::RangeInclusive<i32>"* %iter) unnamed_addr #1 {
start:
  %_2 = alloca %"core::ops::range::RangeInclusive<i32>", align 4
  %1 = bitcast %"core::ops::range::RangeInclusive<i32>"* %_2 to i8*
  %2 = bitcast %"core::ops::range::RangeInclusive<i32>"* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = bitcast %"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* %0 to %"core::ops::range::RangeInclusive<i32>"*
  %4 = bitcast %"core::ops::range::RangeInclusive<i32>"* %3 to i8*
  %5 = bitcast %"core::ops::range::RangeInclusive<i32>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 12, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17hef9139670961df4cE"(i32* align 4 %self) unnamed_addr #0 {
start:
  %0 = load i32, i32* %self, align 4
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9a32c6bb2f4b13b5E"(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* sret(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>") %0, %"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* %0 to i8*
  %2 = bitcast %"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62be2a0cd73d7b29E"(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* align 4 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* %self to %"core::ops::range::RangeInclusive<i32>"*
  %0 = call { i32, i32 } @"_ZN4core4iter5range125_$LT$impl$u20$core..iter..traits..double_ended..DoubleEndedIterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9next_back17h2296f0483a6492d4E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %_2)
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i32, i32 } undef, i32 %1, 0
  %4 = insertvalue { i32, i32 } %3, i32 %2, 1
  ret { i32, i32 } %4
}

; Function Attrs: uwtable
define i32 @opng_bitset_find_last(i32 %set) unnamed_addr #1 {
start:
  %_6 = alloca { i32, i32 }, align 4
  %iter = alloca %"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>", align 4
  %_4 = alloca %"core::ops::range::RangeInclusive<i32>", align 4
  %_3 = alloca %"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>", align 4
  %_2 = alloca %"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>", align 4
  %0 = alloca i32, align 4
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hed8544138521858eE"(%"core::ops::range::RangeInclusive<i32>"* sret(%"core::ops::range::RangeInclusive<i32>") %_4, i32 0, i32 31)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core4iter6traits8iterator8Iterator3rev17h6fd7800c0b18a4cbE(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* sret(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>") %_3, %"core::ops::range::RangeInclusive<i32>"* %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9a32c6bb2f4b13b5E"(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* sret(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>") %_2, %"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  %1 = bitcast %"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* %iter to i8*
  %2 = bitcast %"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb9, %bb3
  %3 = call { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62be2a0cd73d7b29E"(%"core::iter::adapters::rev::Rev<core::ops::range::RangeInclusive<i32>>"* align 4 %iter)
  store { i32, i32 } %3, { i32, i32 }* %_6, align 4
  br label %bb5

bb5:                                              ; preds = %bb4
  %4 = bitcast { i32, i32 }* %_6 to i32*
  %5 = load i32, i32* %4, align 4, !range !1, !noundef !2
  %_9 = zext i32 %5 to i64
  switch i64 %_9, label %bb7 [
    i64 0, label %bb8
    i64 1, label %bb6
  ]

bb7:                                              ; preds = %bb5
  unreachable

bb8:                                              ; preds = %bb5
  store i32 -1, i32* %0, align 4
  br label %bb11

bb6:                                              ; preds = %bb5
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_6, i32 0, i32 1
  %i = load i32, i32* %6, align 4
  %7 = and i32 %i, -32
  %_15.1 = icmp ne i32 %7, 0
  %8 = and i32 %i, 31
  %_15.0 = shl i32 1, %8
  %9 = call i1 @llvm.expect.i1(i1 %_15.1, i1 false)
  br i1 %9, label %panic, label %bb9

bb9:                                              ; preds = %bb6
  %_11 = and i32 %set, %_15.0
  %10 = icmp eq i32 %_11, 0
  br i1 %10, label %bb4, label %bb10

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.0 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc25 to %"core::panic::location::Location"*)) #5
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %i, i32* %0, align 4
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %11 = load i32, i32* %0, align 4
  ret i32 %11
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 0, i32 2}
!2 = !{}
!3 = !{i8 0, i8 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_find_last.rs.bc", hash: (557056235, 3388798452, 3786517835, 1573072507, 372488050))
^1 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^17)))) ; guid = 21882751682653197
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator3rev17h6fd7800c0b18a4cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^18))))) ; guid = 2084944785956175901
^4 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9a32c6bb2f4b13b5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 2214057397446006463
^5 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^6 = gv: (name: "_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17hef9139670961df4cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 3636375639796335126
^7 = gv: (name: "_ZN4core3ptr4read17hd5ea984d996ff272E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 4194376050677157834
^8 = gv: (name: "_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$18backward_unchecked17h60f2618a128bcbbcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7))) ; guid = 4328597189541405871
^9 = gv: (name: "_ZN4core4iter5range125_$LT$impl$u20$core..iter..traits..double_ended..DoubleEndedIterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9next_back17h2296f0483a6492d4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^24))))) ; guid = 5308467138208504695
^10 = gv: (name: "opng_bitset_find_last", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^11), (callee: ^3), (callee: ^4), (callee: ^21), (callee: ^14)), refs: (^25, ^20)))) ; guid = 6228934197555467344
^11 = gv: (name: "_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hed8544138521858eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 8120518922531600985
^12 = gv: (name: "_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h68e794f450495c46E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 8125357131242956896
^13 = gv: (name: "_ZN4core3ptr5write17h7155c2be3f95b7bcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 9432088175533807866
^14 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^15 = gv: (name: "_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17h74cd1448d358501cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^23))))) ; guid = 11474416947241240441
^16 = gv: (name: "_ZN4core3mem7replace17h0e437496dde21df5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^7), (callee: ^13)), refs: (^22)))) ; guid = 12528143936629871278
^17 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12741575887512256053
^18 = gv: (name: "_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h8705fdbff1b601e1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 13373719214179510818
^19 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13933227564516204759
^20 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14166764309241672150
^21 = gv: (name: "_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62be2a0cd73d7b29E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^9))))) ; guid = 14348376339739439016
^22 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^23 = gv: (name: "_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h68d7722b9b4f436bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 16094340922730860384
^24 = gv: (name: "_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$14spec_next_back17hc0a1865f0f8a974dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^15), (callee: ^12), (callee: ^6), (callee: ^8), (callee: ^16))))) ; guid = 17115752958971074397
^25 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^19)))) ; guid = 17343941927660428061
^26 = blockcount: 59
