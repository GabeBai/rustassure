; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub_positive_assign.rs.bc'
source_filename = "zsub_positive_assign.3573f3e7-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }

@alloc91 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Prime" }>, align 1
@alloc92 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"ProbablyPrime" }>, align 1
@alloc93 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"NonPrime" }>, align 1
@alloc94 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"LibcRand48Random" }>, align 1
@alloc95 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"LibcRandomRandom" }>, align 1
@alloc96 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"LibcRandRandom" }>, align 1
@alloc97 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"FastestRandom" }>, align 1
@alloc98 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"DefaultRandom" }>, align 1
@alloc99 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"SecureRandom" }>, align 1
@alloc100 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"FastRandom" }>, align 1
@alloc101 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"ModUniform" }>, align 1
@alloc102 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"Uniform" }>, align 1
@alloc103 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"QuasiUniform" }>, align 1
@alloc104 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"InvalidRadix" }>, align 1
@alloc105 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Negative" }>, align 1
@alloc106 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"DivZero" }>, align 1
@alloc107 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"ZeroDivZero" }>, align 1
@alloc108 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"ZeroPowZero" }>, align 1
@alloc109 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"ErrnoSet" }>, align 1

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h9cbb267012d5e776E"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x %Zahl]* %self.0 to %Zahl*
  ret %Zahl* %0
}

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h3bbe024daf28648cE"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x %Zahl]* %self.0 to %Zahl*
  ret %Zahl* %0
}

; Function Attrs: uwtable
define void @zsub_positive_assign([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  %_5.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_4 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h9cbb267012d5e776E"([0 x %Zahl]* align 1 %_5.0, i64 1)
  br label %bb1

bb1:                                              ; preds = %start
  %_8.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_7 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h3bbe024daf28648cE"([0 x %Zahl]* align 1 %_8.0, i64 1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %1 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  %_10 = load i64, i64* %1, align 1
  call void @zsub_impl(%Zahl* %_4, %Zahl* %_7, i64 %_10)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN69_$LT$zsub_positive_assign..ZPrimality$u20$as$u20$core..fmt..Debug$GT$3fmt17h8016c99bdb17d4a3E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
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
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc93 to [0 x i8]*), i64 8)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb5

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc92 to [0 x i8]*), i64 13)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb5

bb1:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc91 to [0 x i8]*), i64 5)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb1, %bb4, %bb3
  %8 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN67_$LT$zsub_positive_assign..ZRandDev$u20$as$u20$core..fmt..Debug$GT$3fmt17h093029ea9774c860E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
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
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc100 to [0 x i8]*), i64 10)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb9

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc99 to [0 x i8]*), i64 12)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb9

bb5:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc98 to [0 x i8]*), i64 13)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb9

bb6:                                              ; preds = %start
  %8 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc97 to [0 x i8]*), i64 13)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %0, align 1
  br label %bb9

bb7:                                              ; preds = %start
  %10 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [14 x i8] }>* @alloc96 to [0 x i8]*), i64 14)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb9

bb8:                                              ; preds = %start
  %12 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc95 to [0 x i8]*), i64 16)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %0, align 1
  br label %bb9

bb1:                                              ; preds = %start
  %14 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc94 to [0 x i8]*), i64 16)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %0, align 1
  br label %bb9

bb9:                                              ; preds = %bb1, %bb8, %bb7, %bb6, %bb5, %bb4, %bb3
  %16 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %17 = trunc i8 %16 to i1
  ret i1 %17
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN68_$LT$zsub_positive_assign..ZRandDist$u20$as$u20$core..fmt..Debug$GT$3fmt17h73ce04f9ddbdbc16E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
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
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc103 to [0 x i8]*), i64 12)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb5

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc102 to [0 x i8]*), i64 7)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb5

bb1:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc101 to [0 x i8]*), i64 10)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb1, %bb4, %bb3
  %8 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN65_$LT$zsub_positive_assign..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17h68c02a0726780b90E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
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
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc109 to [0 x i8]*), i64 8)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb8

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [11 x i8] }>* @alloc108 to [0 x i8]*), i64 11)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb8

bb5:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [11 x i8] }>* @alloc107 to [0 x i8]*), i64 11)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb8

bb6:                                              ; preds = %start
  %8 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc106 to [0 x i8]*), i64 7)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %0, align 1
  br label %bb8

bb7:                                              ; preds = %start
  %10 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc105 to [0 x i8]*), i64 8)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb8

bb1:                                              ; preds = %start
  %12 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc104 to [0 x i8]*), i64 12)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb1, %bb7, %bb6, %bb5, %bb4, %bb3
  %14 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %15 = trunc i8 %14 to i1
  ret i1 %15
}

; Function Attrs: uwtable
declare void @zsub_impl(%Zahl*, %Zahl*, i64) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 3}
!2 = !{}
!3 = !{i8 0, i8 2}
!4 = !{i8 0, i8 7}
!5 = !{i8 0, i8 6}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub_positive_assign.rs.bc", hash: (2309624770, 4048127451, 3556882932, 3066314966, 78713849))
^1 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h3bbe024daf28648cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 250205274740429815
^2 = gv: (name: "alloc104", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 640632771278906588
^3 = gv: (name: "alloc99", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 734680039384824449
^4 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h9cbb267012d5e776E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 1491215810390579498
^5 = gv: (name: "alloc92", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1659093266555295582
^6 = gv: (name: "_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE") ; guid = 1902152299201211586
^7 = gv: (name: "_ZN68_$LT$zsub_positive_assign..ZRandDist$u20$as$u20$core..fmt..Debug$GT$3fmt17h73ce04f9ddbdbc16E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^6)), refs: (^24, ^28, ^14)))) ; guid = 2105952714201577701
^8 = gv: (name: "alloc98", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2919833566427293808
^9 = gv: (name: "alloc97", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3547285193644755197
^10 = gv: (name: "_ZN65_$LT$zsub_positive_assign..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17h68c02a0726780b90E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, calls: ((callee: ^6)), refs: (^19, ^18, ^26, ^27, ^25, ^2)))) ; guid = 3895893967805866192
^11 = gv: (name: "alloc95", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3897659078262659266
^12 = gv: (name: "_ZN67_$LT$zsub_positive_assign..ZRandDev$u20$as$u20$core..fmt..Debug$GT$3fmt17h093029ea9774c860E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, calls: ((callee: ^6)), refs: (^20, ^3, ^8, ^9, ^23, ^11, ^21)))) ; guid = 3951840574136352331
^13 = gv: (name: "_ZN69_$LT$zsub_positive_assign..ZPrimality$u20$as$u20$core..fmt..Debug$GT$3fmt17h8016c99bdb17d4a3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^6)), refs: (^17, ^5, ^15)))) ; guid = 6687519230759897183
^14 = gv: (name: "alloc101", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6701243541657323638
^15 = gv: (name: "alloc91", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7338124827888372414
^16 = gv: (name: "zsub_positive_assign", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^4), (callee: ^1), (callee: ^22))))) ; guid = 7542852048706822268
^17 = gv: (name: "alloc93", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7549867685870178774
^18 = gv: (name: "alloc108", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10143917794187240489
^19 = gv: (name: "alloc109", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10495055899903525610
^20 = gv: (name: "alloc100", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11720978424415450951
^21 = gv: (name: "alloc94", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13309642202224406910
^22 = gv: (name: "zsub_impl") ; guid = 14149763078176628570
^23 = gv: (name: "alloc96", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14397230676907207131
^24 = gv: (name: "alloc103", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15097226519269149408
^25 = gv: (name: "alloc105", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15648117304495965351
^26 = gv: (name: "alloc107", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16005966487218647935
^27 = gv: (name: "alloc106", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16667963495236191507
^28 = gv: (name: "alloc102", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16913378416541056962
^29 = blockcount: 37
