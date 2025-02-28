; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_find_next.rs.bc'
source_filename = "opng_bitset_find_next.4e168d89-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ops::range::RangeInclusive<i32>" = type { i32, i32, i8, [3 x i8] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc25 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc26 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc29 = private unnamed_addr constant <{ [103 x i8] }> <{ [103 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_find_next.rs" }>, align 1
@alloc28 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc29, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\0A\00\00\00\0E\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc30 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc29, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\0B\00\00\00\13\00\00\00" }>, align 8
@str.1 = internal constant [35 x i8] c"attempt to shift left with overflow"

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$9spec_next17heefc257522075003E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self) unnamed_addr #0 {
start:
  %_7 = alloca i32, align 4
  %0 = alloca { i32, i32 }, align 4
  %_2 = call zeroext i1 @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17hd4af5ef1ce9d410cE"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_5 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %_6 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 1
  %is_iterating = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h8f2e374a3bd416fbE"(i32* align 4 %_5, i32* align 4 %_6)
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
  %_15 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %9 = call i32 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17h654f066e15b0aa0cE"(i32* align 4 %_15)
  store i32 %9, i32* %_7, align 4
  br label %bb10

bb5:                                              ; preds = %bb4
  %_11 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %_10 = call i32 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17h654f066e15b0aa0cE"(i32* align 4 %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %n = call i32 @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17he4a1a60f535ddf60E"(i32 %_10, i64 1)
  br label %bb7

bb7:                                              ; preds = %bb6
  %_13 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %10 = call i32 @_ZN4core3mem7replace17h47e0a3635e684330E(i32* align 4 %_13, i32 %n)
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
define internal i32 @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17he4a1a60f535ddf60E"(i32 %start1, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %_4 = trunc i64 %n to i32
  %1 = add nsw i32 %start1, %_4
  store i32 %1, i32* %0, align 4
  %2 = load i32, i32* %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %2
}

; Function Attrs: inlinehint uwtable
define i32 @_ZN4core3cmp3Ord3max17h343c2fe196b1b8daE(i32 %0, i32 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_3 = alloca i8, align 1
  %3 = alloca i32, align 4
  %other = alloca i32, align 4
  %self = alloca i32, align 4
  store i32 %0, i32* %self, align 4
  store i32 %1, i32* %other, align 4
  store i8 1, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  %4 = invoke i8 @"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h82108db54d3c6d42E"(i32* align 4 %self, i32* align 4 %other)
          to label %bb1 unwind label %cleanup, !range !3

bb8:                                              ; preds = %cleanup
  br label %bb13

cleanup:                                          ; preds = %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb8

bb1:                                              ; preds = %start
  store i8 %4, i8* %_3, align 1
  %_7 = load i8, i8* %_3, align 1, !range !3, !noundef !2
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !4, !noundef !2
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, i8* %_8, align 1
  %12 = load i32, i32* %other, align 4
  store i32 %12, i32* %3, align 4
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_9, align 1
  %13 = load i32, i32* %self, align 4
  store i32 %13, i32* %3, align 4
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %14 = load i8, i8* %_8, align 1, !range !4, !noundef !2
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !4, !noundef !2
  %17 = trunc i8 %16 to i1
  br i1 %17, label %bb11, label %bb7

bb10:                                             ; preds = %bb5
  br label %bb6

bb9:                                              ; preds = %bb12, %bb13
  %18 = bitcast { i8*, i32 }* %2 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb12:                                             ; preds = %bb13
  br label %bb9

bb7:                                              ; preds = %bb11, %bb6
  %24 = load i32, i32* %3, align 4
  ret i32 %24

bb11:                                             ; preds = %bb6
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h82108db54d3c6d42E"(i32* align 4 %self, i32* align 4 %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_4 = load i32, i32* %self, align 4
  %_5 = load i32, i32* %other, align 4
  %_3 = icmp slt i32 %_4, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = load i32, i32* %self, align 4
  %_8 = load i32, i32* %other, align 4
  %_6 = icmp eq i32 %_7, %_8
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 -1, i8* %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %1 = load i8, i8* %0, align 1, !range !3, !noundef !2
  ret i8 %1

bb4:                                              ; preds = %bb2
  store i8 1, i8* %0, align 1
  br label %bb5

bb3:                                              ; preds = %bb2
  store i8 0, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  br label %bb6
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h2664a0cc24ecfe60E"(i32* align 4 %self, i32* align 4 %other) unnamed_addr #0 {
start:
  %_3 = load i32, i32* %self, align 4
  %_4 = load i32, i32* %other, align 4
  %0 = icmp sle i32 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h8f2e374a3bd416fbE"(i32* align 4 %self, i32* align 4 %other) unnamed_addr #0 {
start:
  %_3 = load i32, i32* %self, align 4
  %_4 = load i32, i32* %other, align 4
  %0 = icmp slt i32 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i32 @_ZN4core3mem7replace17h47e0a3635e684330E(i32* align 4 %dest, i32 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i32 @_ZN4core3ptr4read17h145c8fdda816f30eE(i32* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !4, !noundef !2
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
  invoke void @_ZN4core3ptr5write17h10f5ec12f2adb5aaE(i32* %dest, i32 %src)
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
define void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h06b7d9a7e7538adbE"(%"core::ops::range::RangeInclusive<i32>"* sret(%"core::ops::range::RangeInclusive<i32>") %0, i32 %start1, i32 %end) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17hd4af5ef1ce9d410cE"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 2
  %2 = load i8, i8* %1, align 4, !range !4, !noundef !2
  %_2 = trunc i8 %2 to i1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i32*
  %_6 = getelementptr inbounds %"core::ops::range::RangeInclusive<i32>", %"core::ops::range::RangeInclusive<i32>"* %self, i32 0, i32 1
  %_4 = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h2664a0cc24ecfe60E"(i32* align 4 %_5, i32* align 4 %_6)
  br label %bb4

bb1:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb4, %bb1
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb4:                                              ; preds = %bb2
  %_3 = xor i1 %_4, true
  %5 = zext i1 %_3 to i8
  store i8 %5, i8* %0, align 1
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define i32 @_ZN4core3ptr4read17h145c8fdda816f30eE(i32* %src) unnamed_addr #0 {
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
define void @_ZN4core3ptr5write17h10f5ec12f2adb5aaE(i32* %dst, i32 %0) unnamed_addr #0 {
start:
  %src = alloca i32, align 4
  store i32 %0, i32* %src, align 4
  %1 = bitcast i32* %dst to i8*
  %2 = bitcast i32* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 4, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h44767c9efa92a6c7E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self) unnamed_addr #0 {
start:
  %0 = call { i32, i32 } @"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$9spec_next17heefc257522075003E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %self)
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i32, i32 } undef, i32 %1, 0
  %4 = insertvalue { i32, i32 } %3, i32 %2, 1
  ret { i32, i32 } %4
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17h654f066e15b0aa0cE"(i32* align 4 %self) unnamed_addr #0 {
start:
  %0 = load i32, i32* %self, align 4
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd5e0c746fcb69f2eE"(%"core::ops::range::RangeInclusive<i32>"* sret(%"core::ops::range::RangeInclusive<i32>") %0, %"core::ops::range::RangeInclusive<i32>"* %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::ops::range::RangeInclusive<i32>"* %0 to i8*
  %2 = bitcast %"core::ops::range::RangeInclusive<i32>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  ret void
}

; Function Attrs: uwtable
define i32 @opng_bitset_find_next(i32 %set, i32 %elt) unnamed_addr #1 {
start:
  %_10 = alloca { i32, i32 }, align 4
  %iter = alloca %"core::ops::range::RangeInclusive<i32>", align 4
  %_4 = alloca %"core::ops::range::RangeInclusive<i32>", align 4
  %_3 = alloca %"core::ops::range::RangeInclusive<i32>", align 4
  %0 = alloca i32, align 4
  %_6 = call i32 @_ZN4core3cmp3Ord3max17h343c2fe196b1b8daE(i32 %elt, i32 -1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_6, i32 1)
  %_8.0 = extractvalue { i32, i1 } %1, 0
  %_8.1 = extractvalue { i32, i1 } %1, 1
  %2 = call i1 @llvm.expect.i1(i1 %_8.1, i1 false)
  br i1 %2, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h06b7d9a7e7538adbE"(%"core::ops::range::RangeInclusive<i32>"* sret(%"core::ops::range::RangeInclusive<i32>") %_4, i32 %_8.0, i32 31)
  br label %bb3

panic:                                            ; preds = %bb1
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc28 to %"core::panic::location::Location"*)) #6
  unreachable

bb3:                                              ; preds = %bb2
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd5e0c746fcb69f2eE"(%"core::ops::range::RangeInclusive<i32>"* sret(%"core::ops::range::RangeInclusive<i32>") %_3, %"core::ops::range::RangeInclusive<i32>"* %_4)
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = bitcast %"core::ops::range::RangeInclusive<i32>"* %iter to i8*
  %4 = bitcast %"core::ops::range::RangeInclusive<i32>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb10, %bb4
  %5 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h44767c9efa92a6c7E"(%"core::ops::range::RangeInclusive<i32>"* align 4 %iter)
  store { i32, i32 } %5, { i32, i32 }* %_10, align 4
  br label %bb6

bb6:                                              ; preds = %bb5
  %6 = bitcast { i32, i32 }* %_10 to i32*
  %7 = load i32, i32* %6, align 4, !range !1, !noundef !2
  %_13 = zext i32 %7 to i64
  switch i64 %_13, label %bb8 [
    i64 0, label %bb9
    i64 1, label %bb7
  ]

bb8:                                              ; preds = %bb6
  unreachable

bb9:                                              ; preds = %bb6
  store i32 -1, i32* %0, align 4
  br label %bb12

bb7:                                              ; preds = %bb6
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_10, i32 0, i32 1
  %i = load i32, i32* %8, align 4
  %9 = and i32 %i, -32
  %_19.1 = icmp ne i32 %9, 0
  %10 = and i32 %i, 31
  %_19.0 = shl i32 1, %10
  %11 = call i1 @llvm.expect.i1(i1 %_19.1, i1 false)
  br i1 %11, label %panic1, label %bb10

bb10:                                             ; preds = %bb7
  %_15 = and i32 %set, %_19.0
  %12 = icmp eq i32 %_15, 0
  br i1 %12, label %bb5, label %bb11

panic1:                                           ; preds = %bb7
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.1 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc30 to %"core::panic::location::Location"*)) #6
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %i, i32* %0, align 4
  br label %bb12

bb12:                                             ; preds = %bb11, %bb9
  %13 = load i32, i32* %0, align 4
  ret i32 %13
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 0, i32 2}
!2 = !{}
!3 = !{i8 -1, i8 2}
!4 = !{i8 0, i8 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_bitset_find_next.rs.bc", hash: (1612226703, 2308184938, 3743149310, 419966151, 3337076801))
^1 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^5)))) ; guid = 172716524153291130
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h06b7d9a7e7538adbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 773186830425282901
^4 = gv: (name: "_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2le17h2664a0cc24ecfe60E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 1891948170943843533
^5 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2118903567952671452
^6 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^26)))) ; guid = 2224102451914797931
^7 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^8 = gv: (name: "opng_bitset_find_next", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 49, calls: ((callee: ^16), (callee: ^3), (callee: ^14), (callee: ^22), (callee: ^13)), refs: (^6, ^21, ^11, ^19)))) ; guid = 2663474429021157276
^9 = gv: (name: "_ZN4core3mem7replace17h47e0a3635e684330E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^27), (callee: ^17)), refs: (^25)))) ; guid = 3477259305445017096
^10 = gv: (name: "_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h8f2e374a3bd416fbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 6917752231731709539
^11 = gv: (name: "alloc30", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^26)))) ; guid = 7198974182442615021
^12 = gv: (name: "_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h82108db54d3c6d42E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 8990716878231172501
^13 = gv: (name: "_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h44767c9efa92a6c7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^24))))) ; guid = 9931282997955358563
^14 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^15 = gv: (name: "llvm.sadd.with.overflow.i32") ; guid = 10553262824061260096
^16 = gv: (name: "_ZN4core3cmp3Ord3max17h343c2fe196b1b8daE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^12)), refs: (^25)))) ; guid = 10620631366076653726
^17 = gv: (name: "_ZN4core3ptr5write17h10f5ec12f2adb5aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 11473619937549163398
^18 = gv: (name: "_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17he4a1a60f535ddf60E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7))) ; guid = 11519510460885276463
^19 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11704978252771475628
^20 = gv: (name: "_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17hd4af5ef1ce9d410cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^4))))) ; guid = 12035211940492648436
^21 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12206277373718213517
^22 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd5e0c746fcb69f2eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 12963680377154918518
^23 = gv: (name: "_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17h654f066e15b0aa0cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 13286115353987474990
^24 = gv: (name: "_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$9spec_next17heefc257522075003E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^20), (callee: ^10), (callee: ^23), (callee: ^18), (callee: ^9))))) ; guid = 13680401676707338967
^25 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^26 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15848985068988192867
^27 = gv: (name: "_ZN4core3ptr4read17h145c8fdda816f30eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 16082150626955935528
^28 = blockcount: 78
