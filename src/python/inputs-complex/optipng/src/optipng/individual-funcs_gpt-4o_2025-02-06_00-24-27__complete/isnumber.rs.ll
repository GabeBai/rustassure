; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/isnumber.rs.bc'
source_filename = "isnumber.5071d015-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc10 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc11 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc10, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc13 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc14 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc15 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc5 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"Is number: " }>, align 1
@alloc7 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [11 x i8] }>, <{ [11 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [8 x i8] c"\0B\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h7d6cf497b31c2d1aE(i8* align 1 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hdd22ee7cf4682b97E(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hdd22ee7cf4682b97E(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i8*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i8* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !2, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !2, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h3035b03c1e526f96E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h3035b03c1e526f96E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc11 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc13 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc15 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char7convert17char_try_from_u3217h06c2aefefb471ebaE(i32 %i) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  %_4 = xor i32 %i, 55296
  %2 = sub i32 %_4, 2048
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = icmp uge i32 %2, 1112064
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  store i32 %i, i32* %0, align 4
  %_7 = load i32, i32* %0, align 4, !range !5, !noundef !1
  br label %bb4

bb2:                                              ; preds = %bb1
  %3 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 4, i1 false)
  store i32 1114112, i32* %1, align 4
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %4 = load i32, i32* %1, align 4, !range !6, !noundef !1
  ret i32 %4

bb4:                                              ; preds = %bb3
  store i32 %_7, i32* %1, align 4
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char7convert8from_u3217hd35f7cec0f5f3d80E(i32 %i) unnamed_addr #0 {
start:
  %_2 = alloca i32, align 4
  %0 = alloca i32, align 4
  %1 = call i32 @_ZN4core4char7convert17char_try_from_u3217h06c2aefefb471ebaE(i32 %i), !range !6
  store i32 %1, i32* %_2, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %2 = load i32, i32* %_2, align 4, !range !6, !noundef !1
  %3 = sub i32 %2, 1114112
  %4 = icmp eq i32 %3, 0
  %_4 = select i1 %4, i64 1, i64 0
  switch i64 %_4, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %c = load i32, i32* %_2, align 4, !range !5, !noundef !1
  store i32 %c, i32* %0, align 4
  br label %bb5

bb2:                                              ; preds = %bb1
  %5 = bitcast i32* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  store i32 1114112, i32* %0, align 4
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %6 = load i32, i32* %0, align 4, !range !6, !noundef !1
  ret i32 %6
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$10is_numeric17h8f1981fc274cb0f0E"(i32 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_2 = icmp ule i32 48, %self
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  %_5 = icmp ugt i32 %self, 127
  br i1 %_5, label %bb5, label %bb4

bb1:                                              ; preds = %start
  %_3 = icmp ule i32 %self, 57
  br i1 %_3, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  store i8 1, i8* %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb6, %bb3
  %1 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %2 = trunc i8 %1 to i1
  ret i1 %2

bb4:                                              ; preds = %bb2
  store i8 0, i8* %0, align 1
  br label %bb6

bb5:                                              ; preds = %bb2
  %_7 = call zeroext i1 @_ZN4core7unicode12unicode_data1n6lookup17h489ea7798f2c163eE(i32 %self)
  br label %bb7

bb7:                                              ; preds = %bb5
  %3 = zext i1 %_7 to i8
  store i8 %3, i8* %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb7, %bb4
  br label %bb8
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char8from_u3217hbf91cf844b3c87baE(i32 %i) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char7convert8from_u3217hd35f7cec0f5f3d80E(i32 %i), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: uwtable
define zeroext i1 @isnumber(i32 %c) unnamed_addr #1 {
start:
  %_2 = alloca i32, align 4
  %0 = alloca i8, align 1
  %1 = call i32 @_ZN4core4char8from_u3217hbf91cf844b3c87baE(i32 %c), !range !6
  store i32 %1, i32* %_2, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %2 = load i32, i32* %_2, align 4, !range !6, !noundef !1
  %3 = sub i32 %2, 1114112
  %4 = icmp eq i32 %3, 0
  %_5 = select i1 %4, i64 0, i64 1
  %5 = icmp eq i64 %_5, 1
  br i1 %5, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %character = load i32, i32* %_2, align 4, !range !5, !noundef !1
  %6 = call zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$10is_numeric17h8f1981fc274cb0f0E"(i32 %character)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb4

bb3:                                              ; preds = %bb1
  store i8 0, i8* %0, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %8 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_14 = alloca i8, align 1
  %_10 = alloca [1 x { i8*, i64* }], align 8
  %_3 = alloca %"core::fmt::Arguments", align 8
  %0 = call zeroext i1 @isnumber(i32 53)
  %1 = zext i1 %0 to i8
  store i8 %1, i8* %_14, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h7d6cf497b31c2d1aE(i8* align 1 %_14)
  %_11.0 = extractvalue { i8*, i64* } %2, 0
  %_11.1 = extractvalue { i8*, i64* } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_10, i64 0, i64 0
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  store i8* %_11.0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  store i64* %_11.1, i64** %5, align 8
  %_7.0 = bitcast [1 x { i8*, i64* }]* %_10 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h3035b03c1e526f96E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_3, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc6 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_7.0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_3)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E"(i8* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core7unicode12unicode_data1n6lookup17h489ea7798f2c163eE(i32) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}
!5 = !{i32 0, i32 1114112}
!6 = !{i32 0, i32 1114113}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/isnumber.rs.bc", hash: (2571498390, 721126046, 1603634048, 173629860, 1130044521))
^1 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^2)))) ; guid = 327730163837956392
^2 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 818961596529814219
^3 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7, ^8)))) ; guid = 1558627167975259348
^4 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hdd22ee7cf4682b97E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1776317467335947617
^5 = gv: (name: "_ZN4core4char7convert17char_try_from_u3217h06c2aefefb471ebaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 2364084873449397422
^6 = gv: (name: "_ZN4core7unicode12unicode_data1n6lookup17h489ea7798f2c163eE") ; guid = 2715486509060393447
^7 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3541432941627576208
^8 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6136156910436488553
^9 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^10 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7265442207704787434
^11 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^22)))) ; guid = 8097419465230538518
^12 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h7d6cf497b31c2d1aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^4)), refs: (^16)))) ; guid = 9343117853319952409
^13 = gv: (name: "_ZN4core4char7convert8from_u3217hd35f7cec0f5f3d80E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^5))))) ; guid = 9668815574739993883
^14 = gv: (name: "isnumber", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21, calls: ((callee: ^15), (callee: ^18))))) ; guid = 9727238789186412975
^15 = gv: (name: "_ZN4core4char8from_u3217hbf91cf844b3c87baE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^13))))) ; guid = 10540879081906191068
^16 = gv: (name: "_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E") ; guid = 10816395040579614328
^17 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h3035b03c1e526f96E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^17), (callee: ^20)), refs: (^10, ^1, ^11)))) ; guid = 13221112402904003884
^18 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$10is_numeric17h8f1981fc274cb0f0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^6))))) ; guid = 14204754482163033091
^19 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^14), (callee: ^12), (callee: ^17), (callee: ^21)), refs: (^3)))) ; guid = 15822663052811949562
^20 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^21 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^22 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17907876195619655318
^23 = blockcount: 45
