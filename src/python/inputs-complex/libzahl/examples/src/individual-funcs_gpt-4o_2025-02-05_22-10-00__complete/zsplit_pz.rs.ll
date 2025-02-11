; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsplit_pz.rs.bc'
source_filename = "zsplit_pz.fe84a2d0-cgu.0"
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
@alloc106 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Div0" }>, align 1
@alloc107 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Pow0" }>, align 1
@alloc108 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"ErrnoSet" }>, align 1

; Function Attrs: uwtable
define void @zsplit([1 x %Zahl]* align 1 %high, [1 x %Zahl]* align 1 %low, [1 x %Zahl]* align 1 %a, i64 %delim) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %1 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  %_2 = load i64, i64* %1, align 1
  %2 = icmp eq i64 %_2, 0
  ret i1 %2
}

; Function Attrs: uwtable
define void @zsplit_pz([1 x %Zahl]* align 1 %high, [1 x %Zahl]* align 1 %low, [1 x %Zahl]* align 1 %a, i64 %delim) unnamed_addr #0 {
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

; Function Attrs: uwtable
define zeroext i1 @"_ZN58_$LT$zsplit_pz..ZPrimality$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b59f6996977d5e9E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
define zeroext i1 @"_ZN56_$LT$zsplit_pz..ZRandDev$u20$as$u20$core..fmt..Debug$GT$3fmt17h6134b82227af9dd9E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
define zeroext i1 @"_ZN57_$LT$zsplit_pz..ZRandDist$u20$as$u20$core..fmt..Debug$GT$3fmt17hf0a709548fddb843E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
define zeroext i1 @"_ZN54_$LT$zsplit_pz..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17h72e243f98478c27bE"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !5, !noundef !2
  %_3 = zext i8 %1 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
    i64 2, label %bb5
    i64 3, label %bb6
    i64 4, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc108 to [0 x i8]*), i64 8)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb7

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc107 to [0 x i8]*), i64 4)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb7

bb5:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc106 to [0 x i8]*), i64 4)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb7

bb6:                                              ; preds = %start
  %8 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc105 to [0 x i8]*), i64 8)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %0, align 1
  br label %bb7

bb1:                                              ; preds = %start
  %10 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc104 to [0 x i8]*), i64 12)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb1, %bb6, %bb5, %bb4, %bb3
  %12 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %13 = trunc i8 %12 to i1
  ret i1 %13
}

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64) unnamed_addr #0

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 3}
!2 = !{}
!3 = !{i8 0, i8 2}
!4 = !{i8 0, i8 7}
!5 = !{i8 0, i8 5}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsplit_pz.rs.bc", hash: (1139247498, 1165709558, 3443301381, 2379948593, 3275758250))
^1 = gv: (name: "alloc101", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1083393998949707468
^2 = gv: (name: "_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE") ; guid = 1902152299201211586
^3 = gv: (name: "_ZN58_$LT$zsplit_pz..ZPrimality$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b59f6996977d5e9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^2)), refs: (^13, ^10, ^23)))) ; guid = 2091413899781959791
^4 = gv: (name: "alloc107", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2468419835610293027
^5 = gv: (name: "alloc94", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4304168719237530315
^6 = gv: (name: "alloc100", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4327545655872084881
^7 = gv: (name: "alloc99", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4445703847345913015
^8 = gv: (name: "_ZN57_$LT$zsplit_pz..ZRandDist$u20$as$u20$core..fmt..Debug$GT$3fmt17hf0a709548fddb843E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^2)), refs: (^19, ^16, ^1)))) ; guid = 4930978003901390052
^9 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 5436943481773832288
^10 = gv: (name: "alloc92", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6793086346189633060
^11 = gv: (name: "alloc108", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6861518080462343654
^12 = gv: (name: "alloc97", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7087174906778815171
^13 = gv: (name: "alloc93", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9188572444527558716
^14 = gv: (name: "zsplit_pz", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^9), (callee: ^21))))) ; guid = 9812446036412579092
^15 = gv: (name: "alloc105", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10754728486251221303
^16 = gv: (name: "alloc102", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10808282498243035621
^17 = gv: (name: "alloc95", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10960068631143349763
^18 = gv: (name: "_ZN54_$LT$zsplit_pz..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17h72e243f98478c27bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, calls: ((callee: ^2)), refs: (^11, ^4, ^25, ^15, ^24)))) ; guid = 11100833756390579243
^19 = gv: (name: "alloc103", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11484873708964225983
^20 = gv: (name: "alloc96", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11830024703151160131
^21 = gv: (name: "zsplit", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 13045663909046670679
^22 = gv: (name: "_ZN56_$LT$zsplit_pz..ZRandDev$u20$as$u20$core..fmt..Debug$GT$3fmt17h6134b82227af9dd9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, calls: ((callee: ^2)), refs: (^6, ^7, ^26, ^12, ^20, ^17, ^5)))) ; guid = 14797402745947504789
^23 = gv: (name: "alloc91", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15071066748918948708
^24 = gv: (name: "alloc104", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15980638809098757979
^25 = gv: (name: "alloc106", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16771651659442462837
^26 = gv: (name: "alloc98", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18260123653046289586
^27 = blockcount: 37
