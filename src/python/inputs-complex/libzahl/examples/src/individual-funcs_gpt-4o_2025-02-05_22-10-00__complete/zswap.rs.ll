; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zswap.rs.bc'
source_filename = "zswap.4091db2c-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }

@alloc99 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Prime" }>, align 1
@alloc100 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"ProbablyPrime" }>, align 1
@alloc101 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"NonPrime" }>, align 1
@alloc102 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"LibcRand48Random" }>, align 1
@alloc103 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"LibcRandomRandom" }>, align 1
@alloc104 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"LibcRandRandom" }>, align 1
@alloc105 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"FastestRandom" }>, align 1
@alloc106 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"DefaultRandom" }>, align 1
@alloc107 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"SecureRandom" }>, align 1
@alloc108 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"FastRandom" }>, align 1
@alloc109 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"ModUniform" }>, align 1
@alloc110 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"Uniform" }>, align 1
@alloc111 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"QuasiUniform" }>, align 1
@alloc112 = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"ZErrorInvalidRadix" }>, align 1
@alloc113 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"ZErrorNegative" }>, align 1
@alloc114 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"ZErrorDiv0" }>, align 1
@alloc115 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"ZError0Div0" }>, align 1
@alloc116 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"ZError0Pow0" }>, align 1
@alloc117 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"ZErrorErrnoSet" }>, align 1

; Function Attrs: alwaysinline uwtable
define void @zswap([1 x %Zahl]* align 1 %a_, [1 x %Zahl]* align 1 %b_) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %t = alloca i64, align 8
  %a = bitcast [1 x %Zahl]* %a_ to i64*
  %b = bitcast [1 x %Zahl]* %b_ to i64*
  store i64* %a, i64** %0, align 8
  %_3.i15 = load i64*, i64** %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_10 = load i64, i64* %_3.i15, align 8
  store i64 %_10, i64* %t, align 8
  store i64* %b, i64** %1, align 8
  %_3.i14 = load i64*, i64** %1, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_13 = load i64, i64* %_3.i14, align 8
  store i64* %a, i64** %2, align 8
  %_3.i13 = load i64*, i64** %2, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  store i64 %_13, i64* %_3.i13, align 8
  %_18 = load i64, i64* %t, align 8
  store i64* %b, i64** %3, align 8
  %_3.i12 = load i64*, i64** %3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  store i64 %_18, i64* %_3.i12, align 8
  %16 = getelementptr inbounds i64, i64* %b, i64 1
  store i64* %16, i64** %4, align 8
  %_3.i11 = load i64*, i64** %4, align 8
  br label %bb5

bb5:                                              ; preds = %bb4
  %_21 = load i64, i64* %_3.i11, align 8
  store i64 %_21, i64* %t, align 8
  %17 = getelementptr inbounds i64, i64* %a, i64 1
  store i64* %17, i64** %5, align 8
  %_3.i10 = load i64*, i64** %5, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  %_24 = load i64, i64* %_3.i10, align 8
  %18 = getelementptr inbounds i64, i64* %b, i64 1
  store i64* %18, i64** %6, align 8
  %_3.i9 = load i64*, i64** %6, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  store i64 %_24, i64* %_3.i9, align 8
  %_29 = load i64, i64* %t, align 8
  %19 = getelementptr inbounds i64, i64* %a, i64 1
  store i64* %19, i64** %7, align 8
  %_3.i8 = load i64*, i64** %7, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  store i64 %_29, i64* %_3.i8, align 8
  %20 = getelementptr inbounds i64, i64* %a, i64 2
  store i64* %20, i64** %8, align 8
  %_3.i7 = load i64*, i64** %8, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  %_32 = load i64, i64* %_3.i7, align 8
  store i64 %_32, i64* %t, align 8
  %21 = getelementptr inbounds i64, i64* %b, i64 2
  store i64* %21, i64** %9, align 8
  %_3.i6 = load i64*, i64** %9, align 8
  br label %bb10

bb10:                                             ; preds = %bb9
  %_35 = load i64, i64* %_3.i6, align 8
  %22 = getelementptr inbounds i64, i64* %a, i64 2
  store i64* %22, i64** %10, align 8
  %_3.i5 = load i64*, i64** %10, align 8
  br label %bb11

bb11:                                             ; preds = %bb10
  store i64 %_35, i64* %_3.i5, align 8
  %_40 = load i64, i64* %t, align 8
  %23 = getelementptr inbounds i64, i64* %b, i64 2
  store i64* %23, i64** %11, align 8
  %_3.i4 = load i64*, i64** %11, align 8
  br label %bb12

bb12:                                             ; preds = %bb11
  store i64 %_40, i64* %_3.i4, align 8
  %24 = getelementptr inbounds i64, i64* %b, i64 3
  store i64* %24, i64** %12, align 8
  %_3.i3 = load i64*, i64** %12, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  %_43 = load i64, i64* %_3.i3, align 8
  store i64 %_43, i64* %t, align 8
  %25 = getelementptr inbounds i64, i64* %a, i64 3
  store i64* %25, i64** %13, align 8
  %_3.i2 = load i64*, i64** %13, align 8
  br label %bb14

bb14:                                             ; preds = %bb13
  %_46 = load i64, i64* %_3.i2, align 8
  %26 = getelementptr inbounds i64, i64* %b, i64 3
  store i64* %26, i64** %14, align 8
  %_3.i1 = load i64*, i64** %14, align 8
  br label %bb15

bb15:                                             ; preds = %bb14
  store i64 %_46, i64* %_3.i1, align 8
  %_51 = load i64, i64* %t, align 8
  %27 = getelementptr inbounds i64, i64* %a, i64 3
  store i64* %27, i64** %15, align 8
  %_3.i = load i64*, i64** %15, align 8
  br label %bb16

bb16:                                             ; preds = %bb15
  store i64 %_51, i64* %_3.i, align 8
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN54_$LT$zswap..ZPrimality$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd3a71b65913d4afE"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !1, !noundef !2
  %_3 = zext i8 %1 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc101 to [0 x i8]*), i64 8)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb5

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc100 to [0 x i8]*), i64 13)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb5

bb1:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc99 to [0 x i8]*), i64 5)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb1, %bb4, %bb3
  %8 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN52_$LT$zswap..ZRandDev$u20$as$u20$core..fmt..Debug$GT$3fmt17h9c8d4987a9374663E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !4, !noundef !2
  %_3 = zext i8 %1 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
    i64 2, label %bb5
    i64 3, label %bb6
    i64 4, label %bb7
    i64 5, label %bb8
    i64 6, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc108 to [0 x i8]*), i64 10)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb9

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc107 to [0 x i8]*), i64 12)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb9

bb5:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc106 to [0 x i8]*), i64 13)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb9

bb6:                                              ; preds = %start
  %8 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc105 to [0 x i8]*), i64 13)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %0, align 1
  br label %bb9

bb7:                                              ; preds = %start
  %10 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [14 x i8] }>* @alloc104 to [0 x i8]*), i64 14)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb9

bb8:                                              ; preds = %start
  %12 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc103 to [0 x i8]*), i64 16)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %0, align 1
  br label %bb9

bb1:                                              ; preds = %start
  %14 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc102 to [0 x i8]*), i64 16)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %0, align 1
  br label %bb9

bb9:                                              ; preds = %bb1, %bb8, %bb7, %bb6, %bb5, %bb4, %bb3
  %16 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %17 = trunc i8 %16 to i1
  ret i1 %17
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN53_$LT$zswap..ZRandDist$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd4138af1ae20ab6E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !1, !noundef !2
  %_3 = zext i8 %1 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc111 to [0 x i8]*), i64 12)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb5

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc110 to [0 x i8]*), i64 7)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb5

bb1:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc109 to [0 x i8]*), i64 10)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb1, %bb4, %bb3
  %8 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$zswap..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17h229ceba264119cc4E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !5, !noundef !2
  %_3 = zext i8 %1 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
    i64 2, label %bb5
    i64 3, label %bb6
    i64 4, label %bb7
    i64 5, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [14 x i8] }>* @alloc117 to [0 x i8]*), i64 14)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb8

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [11 x i8] }>* @alloc116 to [0 x i8]*), i64 11)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb8

bb5:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [11 x i8] }>* @alloc115 to [0 x i8]*), i64 11)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb8

bb6:                                              ; preds = %start
  %8 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc114 to [0 x i8]*), i64 10)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %0, align 1
  br label %bb8

bb7:                                              ; preds = %start
  %10 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [14 x i8] }>* @alloc113 to [0 x i8]*), i64 14)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb8

bb1:                                              ; preds = %start
  %12 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [18 x i8] }>* @alloc112 to [0 x i8]*), i64 18)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb1, %bb7, %bb6, %bb5, %bb4, %bb3
  %14 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %15 = trunc i8 %14 to i1
  ret i1 %15
}

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64) unnamed_addr #1

attributes #0 = { alwaysinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 3}
!2 = !{}
!3 = !{i8 0, i8 2}
!4 = !{i8 0, i8 7}
!5 = !{i8 0, i8 6}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zswap.rs.bc", hash: (2775027320, 2928086568, 815611484, 3027250681, 4266273969))
^1 = gv: (name: "alloc115", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 651315045108031542
^2 = gv: (name: "alloc111", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1124613846238232600
^3 = gv: (name: "_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE") ; guid = 1902152299201211586
^4 = gv: (name: "alloc109", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2720675214817730240
^5 = gv: (name: "alloc112", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2750426103277400102
^6 = gv: (name: "zswap", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 104, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 1, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0)))) ; guid = 2886179080304911898
^7 = gv: (name: "alloc102", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3727570377662929670
^8 = gv: (name: "alloc110", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3831153505197481916
^9 = gv: (name: "_ZN54_$LT$zswap..ZPrimality$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd3a71b65913d4afE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^3)), refs: (^13, ^12, ^10)))) ; guid = 6111988758728420532
^10 = gv: (name: "alloc99", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6693360665693395234
^11 = gv: (name: "_ZN52_$LT$zswap..ZRandDev$u20$as$u20$core..fmt..Debug$GT$3fmt17h9c8d4987a9374663E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, calls: ((callee: ^3)), refs: (^19, ^14, ^22, ^23, ^15, ^18, ^7)))) ; guid = 7189914631050650674
^12 = gv: (name: "alloc100", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9092331418386335017
^13 = gv: (name: "alloc101", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9674338540791133122
^14 = gv: (name: "alloc107", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10449075970229121968
^15 = gv: (name: "alloc104", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10999266021608413944
^16 = gv: (name: "alloc114", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11230024478287682604
^17 = gv: (name: "_ZN53_$LT$zswap..ZRandDist$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd4138af1ae20ab6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^3)), refs: (^2, ^8, ^4)))) ; guid = 11667018806591309996
^18 = gv: (name: "alloc103", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11844075808837252614
^19 = gv: (name: "alloc108", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13139361607752747363
^20 = gv: (name: "alloc117", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13573343987466982476
^21 = gv: (name: "_ZN50_$LT$zswap..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17h229ceba264119cc4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, calls: ((callee: ^3)), refs: (^20, ^25, ^1, ^16, ^24, ^5)))) ; guid = 14258625226967450370
^22 = gv: (name: "alloc106", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15177698478035857263
^23 = gv: (name: "alloc105", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17621953587292509081
^24 = gv: (name: "alloc113", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17827655794392880973
^25 = gv: (name: "alloc116", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17905469393971641558
^26 = blockcount: 48
