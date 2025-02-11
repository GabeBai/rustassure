; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memfailure.rs.bc'
source_filename = "libzahl_memfailure.3931f7ff-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"std::thread::local::AccessError" = type {}
%"std::thread::local::fast::Key<core::cell::RefCell<i32>>" = type { %"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>", i8, [7 x i8] }
%"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>" = type { %"core::cell::UnsafeCell<core::option::Option<core::cell::RefCell<i32>>>" }
%"core::cell::UnsafeCell<core::option::Option<core::cell::RefCell<i32>>>" = type { %"core::option::Option<core::cell::RefCell<i32>>" }
%"core::option::Option<core::cell::RefCell<i32>>" = type { i64, [2 x i64] }
%"core::option::Option<core::cell::RefCell<i32>>::Some" = type { [1 x i64], { i64, i32 } }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::cell::BorrowMutError" = type {}
%"core::mem::manually_drop::ManuallyDrop<core::option::Option<core::cell::RefCell<i32>>>" = type { %"core::option::Option<core::cell::RefCell<i32>>" }
%"core::mem::maybe_uninit::MaybeUninit<core::option::Option<core::cell::RefCell<i32>>>" = type { [3 x i64] }
%"core::result::Result<&core::cell::RefCell<i32>, std::thread::local::AccessError>::Err" = type { %"std::thread::local::AccessError" }
%"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err" = type { %"std::thread::local::AccessError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::thread::local::AccessError>, &core::cell::RefCell<i32>>::Break" = type { %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc149 = private unnamed_addr constant <{ [70 x i8] }> <{ [70 x i8] c"cannot access a Thread Local Storage value during or after destruction" }>, align 1
@alloc169 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/thread/local.rs" }>, align 1
@alloc151 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc169, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\A5\01\00\00\1A\00\00\00" }>, align 8
@alloc170 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc169, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\BC\01\00\00 \00\00\00" }>, align 8
@alloc48 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc49 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc46 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc171 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc172 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc171, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc173 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc174 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc173, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc175 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"already borrowed" }>, align 1
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%"std::thread::local::AccessError"*)* @"_ZN4core3ptr52drop_in_place$LT$std..thread..local..AccessError$GT$17h3d5fded0cf4ceb20E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 (%"std::thread::local::AccessError"*, %"core::fmt::Formatter"*)* @"_ZN68_$LT$std..thread..local..AccessError$u20$as$u20$core..fmt..Debug$GT$3fmt17h76d81833f64be45cE" to i8*) }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%"core::cell::BorrowMutError"*)* @"_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17hb12b9f1eb34a86e8E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 (%"core::cell::BorrowMutError"*, %"core::fmt::Formatter"*)* @"_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4c633e1f2b589beE" to i8*) }>, align 8
@alloc55 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"Error occurred: " }>, align 1
@alloc57 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc56 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [16 x i8] }>, <{ [16 x i8] }>* @alloc55, i32 0, i32 0, i32 0), [8 x i8] c"\10\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc57, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc61 = private unnamed_addr constant <{ i8* }> <{ i8* bitcast (i64* (i64*)* @_ZN18libzahl_memfailure5ERROR7__getit17h2428f03fa5577dd6E to i8*) }>, align 8
@alloc203 = private unnamed_addr constant <{ [92 x i8] }> <{ [92 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memfailure.rs" }>, align 1
@alloc183 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [92 x i8] }>, <{ [92 x i8] }>* @alloc203, i32 0, i32 0, i32 0), [16 x i8] c"\\\00\00\00\00\00\00\005\00\00\00\1F\00\00\00" }>, align 8
@alloc184 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Prime" }>, align 1
@alloc185 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"ProbablyPrime" }>, align 1
@alloc186 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"NonPrime" }>, align 1
@alloc187 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"LibcRand48Random" }>, align 1
@alloc188 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"LibcRandomRandom" }>, align 1
@alloc189 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"LibcRandRandom" }>, align 1
@alloc190 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"FastestRandom" }>, align 1
@alloc191 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"DefaultRandom" }>, align 1
@alloc192 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"SecureRandom" }>, align 1
@alloc193 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"FastRandom" }>, align 1
@alloc194 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"ModUniform" }>, align 1
@alloc195 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"Uniform" }>, align 1
@alloc196 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"QuasiUniform" }>, align 1
@alloc197 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"InvalidRadix" }>, align 1
@alloc198 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Negative" }>, align 1
@alloc199 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"DivZero" }>, align 1
@alloc200 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"ZeroDivZero" }>, align 1
@alloc201 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"ZeroPowZero" }>, align 1
@alloc202 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"ErrnoSet" }>, align 1
@_ZN18libzahl_memfailure5ERROR7__getit5__KEY17h85e4a62586eeedc1E = internal thread_local global <{ [8 x i8], [16 x i8], [1 x i8], [7 x i8] }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [1 x i8] zeroinitializer, [7 x i8] undef }>, section "__DATA,__thread_bss", align 8
@alloc40 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"internal error: entered unreachable code: " }>, align 1
@alloc41 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [42 x i8] }>, <{ [42 x i8] }>* @alloc40, i32 0, i32 0, i32 0), [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@alloc43 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c"missing default value" }>, align 1
@alloc44 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc43, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@alloc204 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [92 x i8] }>, <{ [92 x i8] }>* @alloc203, i32 0, i32 0, i32 0), [16 x i8] c"\\\00\00\00\00\00\00\00&\00\00\00\01\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1414455042f5a96dE"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca i8, align 1
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hbe1c7984af1c5b63E"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr i8, i8* %1, i64 1
  %3 = bitcast i8* %2 to %"std::thread::local::AccessError"*
  store i8 1, i8* %1, align 1
  %4 = load i8, i8* %1, align 1, !range !1, !noundef !2
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

; Function Attrs: uwtable
define void @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h839031da95b83d89E"(i64** align 8 %self) unnamed_addr #1 {
start:
  %_3 = call zeroext i1 @"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h46adcae8fd4fb627E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17ha19308f5abb6d2d0E"(i1 zeroext %_3, [0 x i8]* align 1 bitcast (<{ [70 x i8] }>* @alloc149 to [0 x i8]*), i64 70, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc151 to %"core::panic::location::Location"*))
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h46adcae8fd4fb627E"(i64** align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %_16 = alloca i64*, align 8
  %_8 = alloca i64*, align 8
  %_4 = alloca i64*, align 8
  %1 = alloca i8, align 1
  store i8 1, i8* %_18, align 1
  %2 = bitcast i64** %self to i64* (i64*)**
  %_7 = load i64* (i64*)*, i64* (i64*)** %2, align 8, !nonnull !2, !noundef !2
  %3 = bitcast i64** %_8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  %4 = bitcast i64** %_8 to {}**
  store {}* null, {}** %4, align 8
  %5 = load i64*, i64** %_8, align 8, !align !3
  %_6 = invoke align 8 i64* %_7(i64* align 8 %5)
          to label %bb1 unwind label %cleanup

bb12:                                             ; preds = %cleanup
  %6 = load i8, i8* %_18, align 1, !range !1, !noundef !2
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb11, label %bb10

cleanup:                                          ; preds = %bb6, %bb4, %bb2, %bb1, %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb12

bb1:                                              ; preds = %start
  %_5 = invoke align 8 i64* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h1bc47aa7959902d3E"(i64* align 8 %_6)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %13 = invoke align 8 i64* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf4206c72ae6ce47eE"(i64* align 8 %_5)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64* %13, i64** %_4, align 8
  %14 = bitcast i64** %_4 to {}**
  %15 = load {}*, {}** %14, align 8
  %16 = icmp eq {}* %15, null
  %_10 = select i1 %16, i64 1, i64 0
  switch i64 %_10, label %bb5 [
    i64 0, label %bb4
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb3
  unreachable

bb4:                                              ; preds = %bb3
  %17 = bitcast i64** %_4 to { i64, i32 }**
  %val = load { i64, i32 }*, { i64, i32 }** %17, align 8, !nonnull !2, !align !3, !noundef !2
  store i8 0, i8* %_18, align 1
  %18 = bitcast i64** %_16 to { i64, i32 }**
  store { i64, i32 }* %val, { i64, i32 }** %18, align 8
  %19 = load i64*, i64** %_16, align 8, !nonnull !2, !align !3, !noundef !2
  %20 = bitcast i64* %19 to { i64, i32 }*
  invoke void @"_ZN18libzahl_memfailure18libzahl_memfailure28_$u7b$$u7b$closure$u7d$$u7d$17h5850daaa038725baE"({ i64, i32 }* align 8 %20)
          to label %bb8 unwind label %cleanup

bb6:                                              ; preds = %bb3
  %21 = invoke zeroext i1 @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1414455042f5a96dE"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc170 to %"core::panic::location::Location"*))
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %1, align 1
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %23 = load i8, i8* %1, align 1, !range !1, !noundef !2
  %24 = trunc i8 %23 to i1
  ret i1 %24

bb8:                                              ; preds = %bb4
  %25 = getelementptr i8, i8* %1, i64 1
  %26 = bitcast i8* %25 to {}*
  store i8 0, i8* %1, align 1
  br label %bb9

bb10:                                             ; preds = %bb11, %bb12
  %27 = bitcast { i8*, i32 }* %0 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %32 = insertvalue { i8*, i32 } %31, i32 %30, 1
  resume { i8*, i32 } %32

bb11:                                             ; preds = %bb12
  br label %bb10
}

; Function Attrs: noinline uwtable
define align 8 i64* @"_ZN3std6thread5local4fast12Key$LT$T$GT$14try_initialize17hdeed8cad89f3eedeE"(%"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* align 8 %self, i64* align 8 %init) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_12 = alloca i8, align 1
  %_3 = alloca i8, align 1
  %1 = alloca i64*, align 8
  store i8 1, i8* %_12, align 1
  %_5 = invoke zeroext i1 @_ZN4core3mem10needs_drop17h1fe37a5a32db79e2E()
          to label %bb4 unwind label %cleanup

bb14:                                             ; preds = %cleanup
  %2 = load i8, i8* %_12, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb13, label %bb11

cleanup:                                          ; preds = %bb6, %bb2, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb14

bb4:                                              ; preds = %start
  %_4 = xor i1 %_5, true
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %bb4
  %_6 = invoke zeroext i1 @"_ZN3std6thread5local4fast12Key$LT$T$GT$17try_register_dtor17hb3b74be68648c49fE"(%"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* align 8 %self)
          to label %bb5 unwind label %cleanup

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb5, %bb1
  %9 = load i8, i8* %_3, align 1, !range !1, !noundef !2
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb6, label %bb8

bb5:                                              ; preds = %bb2
  %11 = zext i1 %_6 to i8
  store i8 %11, i8* %_3, align 1
  br label %bb3

bb8:                                              ; preds = %bb3
  %12 = bitcast i64** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = bitcast i64** %1 to {}**
  store {}* null, {}** %13, align 8
  br label %bb9

bb6:                                              ; preds = %bb3
  %_10 = bitcast %"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* %self to %"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"*
  store i8 0, i8* %_12, align 1
  %_9 = invoke align 8 { i64, i32 }* @"_ZN3std6thread5local4lazy21LazyKeyInner$LT$T$GT$10initialize17he7f68de19cb74e0dE"(%"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"* align 8 %_10, i64* align 8 %init)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %14 = bitcast i64** %1 to { i64, i32 }**
  store { i64, i32 }* %_9, { i64, i32 }** %14, align 8
  br label %bb9

bb11:                                             ; preds = %bb13, %bb14
  %15 = bitcast { i8*, i32 }* %0 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb13:                                             ; preds = %bb14
  br label %bb11

bb9:                                              ; preds = %bb7, %bb8
  %21 = load i8, i8* %_12, align 1, !range !1, !noundef !2
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb12, label %bb10

bb10:                                             ; preds = %bb12, %bb9
  %23 = load i64*, i64** %1, align 8, !align !3
  ret i64* %23

bb12:                                             ; preds = %bb9
  br label %bb10
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN3std6thread5local4fast12Key$LT$T$GT$17try_register_dtor17hb3b74be68648c49fE"(%"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* align 8 %self) unnamed_addr #1 {
start:
  %_12 = alloca i8, align 1
  %_2 = alloca i8, align 1
  %0 = alloca i8, align 1
  %_3 = getelementptr inbounds %"std::thread::local::fast::Key<core::cell::RefCell<i32>>", %"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* %self, i32 0, i32 1
  %1 = call i8 @"_ZN4core4cell13Cell$LT$T$GT$3get17h268e47ec4d22f7dbE"(i8* align 1 %_3), !range !4
  store i8 %1, i8* %_2, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = load i8, i8* %_2, align 1, !range !4, !noundef !2
  %_4 = zext i8 %2 to i64
  switch i64 %_4, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb7
    i64 2, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %_6 = bitcast %"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* %self to i8*
  call void @_ZN3std3sys4unix17thread_local_dtor13register_dtor17hfb33d9f167274a46E(i8* %_6, void (i8*)* @_ZN3std6thread5local4fast13destroy_value17h2c298ba59ea525abE)
  br label %bb5

bb7:                                              ; preds = %bb1
  store i8 1, i8* %0, align 1
  br label %bb8

bb2:                                              ; preds = %bb1
  store i8 0, i8* %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb6, %bb2, %bb7
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb5:                                              ; preds = %bb4
  %_11 = getelementptr inbounds %"std::thread::local::fast::Key<core::cell::RefCell<i32>>", %"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* %self, i32 0, i32 1
  store i8 1, i8* %_12, align 1
  %5 = load i8, i8* %_12, align 1, !range !4, !noundef !2
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h57da41525cbf0390E"(i8* align 1 %_11, i8 %5)
  br label %bb6

bb6:                                              ; preds = %bb5
  store i8 1, i8* %0, align 1
  br label %bb8
}

; Function Attrs: uwtable
define align 8 i64* @"_ZN3std6thread5local4fast12Key$LT$T$GT$3get17h390ebca6b15861f0E"(%"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* align 8 %self, i64* align 8 %init) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  %_3 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  store i8 1, i8* %_10, align 1
  %_4 = bitcast %"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* %self to %"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"*
  %2 = invoke align 8 i64* @"_ZN3std6thread5local4lazy21LazyKeyInner$LT$T$GT$3get17ha44939c6879cc967E"(%"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"* align 8 %_4)
          to label %bb1 unwind label %cleanup

bb11:                                             ; preds = %cleanup
  %3 = load i8, i8* %_10, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb10, label %bb8

cleanup:                                          ; preds = %bb2, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb11

bb1:                                              ; preds = %start
  store i64* %2, i64** %_3, align 8
  %10 = bitcast i64** %_3 to {}**
  %11 = load {}*, {}** %10, align 8
  %12 = icmp eq {}* %11, null
  %_5 = select i1 %12, i64 0, i64 1
  switch i64 %_5, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_10, align 1
  %13 = invoke align 8 i64* @"_ZN3std6thread5local4fast12Key$LT$T$GT$14try_initialize17hdeed8cad89f3eedeE"(%"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* align 8 %self, i64* align 8 %init)
          to label %bb5 unwind label %cleanup

bb4:                                              ; preds = %bb1
  %14 = bitcast i64** %_3 to { i64, i32 }**
  %val = load { i64, i32 }*, { i64, i32 }** %14, align 8, !nonnull !2, !align !3, !noundef !2
  %15 = bitcast i64** %1 to { i64, i32 }**
  store { i64, i32 }* %val, { i64, i32 }** %15, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  %16 = load i8, i8* %_10, align 1, !range !1, !noundef !2
  %17 = trunc i8 %16 to i1
  br i1 %17, label %bb9, label %bb7

bb5:                                              ; preds = %bb2
  store i64* %13, i64** %1, align 8
  br label %bb6

bb8:                                              ; preds = %bb10, %bb11
  %18 = bitcast { i8*, i32 }* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb10:                                             ; preds = %bb11
  br label %bb8

bb7:                                              ; preds = %bb9, %bb6
  %24 = load i64*, i64** %1, align 8, !align !3
  ret i64* %24

bb9:                                              ; preds = %bb6
  br label %bb7
}

; Function Attrs: uwtable
define void @_ZN3std6thread5local4fast13destroy_value17h2c298ba59ea525abE(i8* %ptr) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca %"core::option::Option<core::cell::RefCell<i32>>", align 8
  %_8 = alloca i8, align 1
  %value = alloca %"core::option::Option<core::cell::RefCell<i32>>", align 8
  %ptr1 = bitcast i8* %ptr to %"std::thread::local::fast::Key<core::cell::RefCell<i32>>"*
  %_5 = bitcast %"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* %ptr1 to %"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"*
  invoke void @"_ZN3std6thread5local4lazy21LazyKeyInner$LT$T$GT$4take17h82ca12ef924ea068E"(%"core::option::Option<core::cell::RefCell<i32>>"* sret(%"core::option::Option<core::cell::RefCell<i32>>") %value, %"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"* align 8 %_5)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #8
  unreachable

cleanup:                                          ; preds = %bb2, %bb1, %start
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %_7 = getelementptr inbounds %"std::thread::local::fast::Key<core::cell::RefCell<i32>>", %"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* %ptr1, i32 0, i32 1
  store i8 2, i8* %_8, align 1
  %6 = load i8, i8* %_8, align 1, !range !4, !noundef !2
  invoke void @"_ZN4core4cell13Cell$LT$T$GT$3set17h57da41525cbf0390E"(i8* align 1 %_7, i8 %6)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %7 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %_10 to i8*
  %8 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  invoke void @_ZN4core3mem4drop17hd6c621e483d89ef7E(%"core::option::Option<core::cell::RefCell<i32>>"* %_10)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define align 8 { i64, i32 }* @"_ZN3std6thread5local4lazy21LazyKeyInner$LT$T$GT$10initialize17he7f68de19cb74e0dE"(%"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"* align 8 %self, i64* align 8 %init) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_15 = alloca i8, align 1
  %_11 = alloca %"core::option::Option<core::cell::RefCell<i32>>", align 8
  %_8 = alloca %"core::option::Option<core::cell::RefCell<i32>>", align 8
  %1 = call { i64, i32 } @"_ZN18libzahl_memfailure5ERROR7__getit28_$u7b$$u7b$closure$u7d$$u7d$17he7b86adf009c1461E"(i64* align 8 %init)
  %value.0 = extractvalue { i64, i32 } %1, 0
  %value.1 = extractvalue { i64, i32 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  store i8 1, i8* %_15, align 1
  %_7 = bitcast %"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"* %self to %"core::cell::UnsafeCell<core::option::Option<core::cell::RefCell<i32>>>"*
  %_2.i = bitcast %"core::cell::UnsafeCell<core::option::Option<core::cell::RefCell<i32>>>"* %_7 to %"core::option::Option<core::cell::RefCell<i32>>"*
  br label %bb2

bb10:                                             ; preds = %cleanup
  %2 = load i8, i8* %_15, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb9, label %bb8

cleanup:                                          ; preds = %bb5, %bb2
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb10

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_15, align 1
  %9 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %_11 to %"core::option::Option<core::cell::RefCell<i32>>::Some"*
  %10 = getelementptr inbounds %"core::option::Option<core::cell::RefCell<i32>>::Some", %"core::option::Option<core::cell::RefCell<i32>>::Some"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %value.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %value.1, i32* %12, align 8
  %13 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %_11 to i64*
  store i64 1, i64* %13, align 8
  invoke void @_ZN4core3mem7replace17h477e9bd7a2eb1eaeE(%"core::option::Option<core::cell::RefCell<i32>>"* sret(%"core::option::Option<core::cell::RefCell<i32>>") %_8, %"core::option::Option<core::cell::RefCell<i32>>"* align 8 %_2.i, %"core::option::Option<core::cell::RefCell<i32>>"* %_11)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %14 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %_2.i to i64*
  %_13 = load i64, i64* %14, align 8, !range !5, !noundef !2
  switch i64 %_13, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb7
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  invoke void @_ZN4core4hint21unreachable_unchecked17hf3ba8e229a161098E() #9
          to label %unreachable unwind label %cleanup

bb7:                                              ; preds = %bb4
  %15 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %_2.i to %"core::option::Option<core::cell::RefCell<i32>>::Some"*
  %x = getelementptr inbounds %"core::option::Option<core::cell::RefCell<i32>>::Some", %"core::option::Option<core::cell::RefCell<i32>>::Some"* %15, i32 0, i32 1
  ret { i64, i32 }* %x

unreachable:                                      ; preds = %bb5
  unreachable

bb8:                                              ; preds = %bb9, %bb10
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21

bb9:                                              ; preds = %bb10
  br label %bb8
}

; Function Attrs: uwtable
define align 8 i64* @"_ZN3std6thread5local4lazy21LazyKeyInner$LT$T$GT$3get17ha44939c6879cc967E"(%"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"* align 8 %self) unnamed_addr #1 {
start:
  %_4 = bitcast %"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"* %self to %"core::cell::UnsafeCell<core::option::Option<core::cell::RefCell<i32>>>"*
  %_2.i = bitcast %"core::cell::UnsafeCell<core::option::Option<core::cell::RefCell<i32>>>"* %_4 to %"core::option::Option<core::cell::RefCell<i32>>"*
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17hed8b0f8ece5f5a11E"(%"core::option::Option<core::cell::RefCell<i32>>"* align 8 %_2.i)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; Function Attrs: uwtable
define void @"_ZN3std6thread5local4lazy21LazyKeyInner$LT$T$GT$4take17h82ca12ef924ea068E"(%"core::option::Option<core::cell::RefCell<i32>>"* sret(%"core::option::Option<core::cell::RefCell<i32>>") %0, %"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"* align 8 %self) unnamed_addr #1 {
start:
  %_4 = bitcast %"std::thread::local::lazy::LazyKeyInner<core::cell::RefCell<i32>>"* %self to %"core::cell::UnsafeCell<core::option::Option<core::cell::RefCell<i32>>>"*
  %_2.i = bitcast %"core::cell::UnsafeCell<core::option::Option<core::cell::RefCell<i32>>>"* %_4 to %"core::option::Option<core::cell::RefCell<i32>>"*
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core6option15Option$LT$T$GT$4take17he5c90931230e1e4aE"(%"core::option::Option<core::cell::RefCell<i32>>"* sret(%"core::option::Option<core::cell::RefCell<i32>>") %0, %"core::option::Option<core::cell::RefCell<i32>>"* align 8 %_2.i)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h8d196508b8de301fE(%"core::fmt::Arguments"* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17he5dc445fc439f9fcE(%"core::fmt::Arguments"* align 8 %x, i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2165ef06e41cd052E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h964f4e5075e69d0fE(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h75e9d8bae973092fE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h75e9d8bae973092fE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i32*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !2, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i32* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !2, !align !6, !noundef !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !2, !align !6, !noundef !2
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17he5dc445fc439f9fcE(%"core::fmt::Arguments"* align 8 %x, i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !2, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"core::fmt::Arguments"* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !2, !align !6, !noundef !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !2, !align !6, !noundef !2
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h08bfc6a5e740e290E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !1, !noundef !2
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
  %11 = load i64*, i64** %10, align 8, !align !3
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
  call void @_ZN4core3fmt9Arguments6new_v117h08bfc6a5e740e290E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc49 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc46 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc172 to %"core::panic::location::Location"*)) #9
  unreachable
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @_ZN4core3mem10needs_drop17h1fe37a5a32db79e2E() unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  store i8 0, i8* %0, align 1
  %1 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %2 = trunc i8 %1 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3mem4drop17h1896a31eb357dd06E(i8 %_x) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3mem4drop17h873ff56c7d46cda2E(i64 %_x) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3mem4drop17hd6c621e483d89ef7E(%"core::option::Option<core::cell::RefCell<i32>>"* %_x) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h1d11160113927b8fE(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h19c1c25968f1fbe5E(i64* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !1, !noundef !2
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
  invoke void @_ZN4core3ptr5write17h1db92e2b45bf2661E(i64* %dest, i64 %src)
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
  ret i64 %result

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
define void @_ZN4core3mem7replace17h477e9bd7a2eb1eaeE(%"core::option::Option<core::cell::RefCell<i32>>"* sret(%"core::option::Option<core::cell::RefCell<i32>>") %result, %"core::option::Option<core::cell::RefCell<i32>>"* align 8 %dest, %"core::option::Option<core::cell::RefCell<i32>>"* %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  %_6 = alloca %"core::option::Option<core::cell::RefCell<i32>>", align 8
  store i8 1, i8* %_7, align 1
  invoke void @_ZN4core3ptr4read17h004b301f1abd1c25E(%"core::option::Option<core::cell::RefCell<i32>>"* sret(%"core::option::Option<core::cell::RefCell<i32>>") %result, %"core::option::Option<core::cell::RefCell<i32>>"* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !1, !noundef !2
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
  %8 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %_6 to i8*
  %9 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false)
  invoke void @_ZN4core3ptr5write17h50a7c42f2ef16776E(%"core::option::Option<core::cell::RefCell<i32>>"* %dest, %"core::option::Option<core::cell::RefCell<i32>>"* %_6)
          to label %bb2 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1
  br label %bb6

cleanup1:                                         ; preds = %bb1
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  ret void

bb4:                                              ; preds = %bb5, %bb6
  %15 = bitcast { i8*, i32 }* %0 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i8 @_ZN4core3mem7replace17hbe20d32a5be3eb8eE(i8* align 1 %dest, i8 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i8 @_ZN4core3ptr4read17hf3529dba751c49d6E(i8* %dest)
          to label %bb1 unwind label %cleanup, !range !4

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !1, !noundef !2
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
  invoke void @_ZN4core3ptr5write17hf59daedbdbcd5b1bE(i8* %dest, i8 %src)
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
  ret i8 %result

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

; Function Attrs: uwtable
define void @"_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h98ff270c39a21a3dE"(i64** %_1) unnamed_addr #1 {
start:
  call void @"_ZN66_$LT$core..cell..BorrowRefMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdcf77f5f05479159E"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17hb12b9f1eb34a86e8E"(%"core::cell::BorrowMutError"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr4read17h004b301f1abd1c25E(%"core::option::Option<core::cell::RefCell<i32>>"* sret(%"core::option::Option<core::cell::RefCell<i32>>") %0, %"core::option::Option<core::cell::RefCell<i32>>"* %src) unnamed_addr #0 {
start:
  %_3.i = alloca %"core::mem::manually_drop::ManuallyDrop<core::option::Option<core::cell::RefCell<i32>>>", align 8
  %_6 = alloca %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<core::cell::RefCell<i32>>>", align 8
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<core::cell::RefCell<i32>>>", align 8
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<core::cell::RefCell<i32>>>"* %tmp to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<core::cell::RefCell<i32>>>"* %tmp to %"core::option::Option<core::cell::RefCell<i32>>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %2 to i8*
  %4 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false)
  %5 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<core::cell::RefCell<i32>>>"* %_6 to i8*
  %6 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<core::cell::RefCell<i32>>>"* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 24, i1 false)
  %7 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<core::cell::RefCell<i32>>>"* %_6 to %"core::mem::manually_drop::ManuallyDrop<core::option::Option<core::cell::RefCell<i32>>>"*
  %8 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::option::Option<core::cell::RefCell<i32>>>"* %_3.i to i8*
  %9 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::option::Option<core::cell::RefCell<i32>>>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false)
  %10 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::option::Option<core::cell::RefCell<i32>>>"* %_3.i to %"core::option::Option<core::cell::RefCell<i32>>"*
  %11 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %0 to i8*
  %12 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17h19c1c25968f1fbe5E(i64* %src) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %1 = bitcast i64* %0 to {}*
  %2 = load i64, i64* %0, align 8
  store i64 %2, i64* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast i64* %tmp to i8*
  %4 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %_6 = load i64, i64* %tmp, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64 %_6
}

; Function Attrs: inlinehint uwtable
define i8 @_ZN4core3ptr4read17hf3529dba751c49d6E(i8* %src) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %tmp = alloca i8, align 1
  %1 = bitcast i8* %0 to {}*
  %2 = load i8, i8* %0, align 1
  store i8 %2, i8* %tmp, align 1
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp, i8* align 1 %src, i64 1, i1 false)
  %_6 = load i8, i8* %tmp, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8 %_6
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr50drop_in_place$LT$core..cell..RefMut$LT$i32$GT$$GT$17h31166813939ec8bcE"({ i32*, i64* }* %_1) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h98ff270c39a21a3dE"(i64** %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr52drop_in_place$LT$std..thread..local..AccessError$GT$17h3d5fded0cf4ceb20E"(%"std::thread::local::AccessError"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h1db92e2b45bf2661E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h50a7c42f2ef16776E(%"core::option::Option<core::cell::RefCell<i32>>"* %dst, %"core::option::Option<core::cell::RefCell<i32>>"* %src) unnamed_addr #0 {
start:
  %0 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %dst to i8*
  %1 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hf59daedbdbcd5b1bE(i8* %dst, i8 %0) unnamed_addr #0 {
start:
  %src = alloca i8, align 1
  store i8 %0, i8* %src, align 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 1, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h3b164a8bc4bd45abE"(i32* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i32*, align 8
  store i32* %ptr, i32** %0, align 8
  %1 = load i32*, i32** %0, align 8, !nonnull !2, !noundef !2
  ret i32* %1
}

; Function Attrs: inlinehint uwtable
define align 4 i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h807ca08eac58359bE"(i32** align 8 %self) unnamed_addr #0 {
start:
  %_6 = load i32*, i32** %self, align 8, !nonnull !2, !noundef !2
  %_5 = call i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h65800cdedd191123E"(i32* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32* %_5
}

; Function Attrs: inlinehint uwtable
define i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h65800cdedd191123E"(i32* %self) unnamed_addr #0 {
start:
  ret i32* %self
}

; Function Attrs: inlinehint uwtable
define align 4 i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h528b1a32b01b8922E"(i32** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load i32*, i32** %self, align 8, !nonnull !2, !noundef !2
  %_2 = call i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h65800cdedd191123E"(i32* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32* %_2
}

; Function Attrs: inlinehint uwtable
define internal align 8 i64* @_ZN4core4cell12BorrowRefMut3new17h73c57e1036312fa4E(i64* align 8 %borrow) unnamed_addr #0 {
start:
  %_7 = alloca i64*, align 8
  %0 = alloca i64*, align 8
  %_2 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17h8f32b275286b4d5aE"(i64* align 8 %borrow)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i64 %_2, 0
  br i1 %1, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17hc904ebad0b433f44E"(i64* align 8 %borrow, i64 -1)
  br label %bb4

bb2:                                              ; preds = %bb1
  %2 = bitcast i64** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %3 = bitcast i64** %0 to {}**
  store {}* null, {}** %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %4 = load i64*, i64** %0, align 8, !align !3
  ret i64* %4

bb4:                                              ; preds = %bb3
  store i64* %borrow, i64** %_7, align 8
  %5 = load i64*, i64** %_7, align 8, !nonnull !2, !align !3, !noundef !2
  store i64* %5, i64** %0, align 8
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN4core4cell13Cell$LT$T$GT$3get17h268e47ec4d22f7dbE"(i8* align 1 %self) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %0 = load i8, i8* %self, align 1, !range !4, !noundef !2
  ret i8 %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17h8f32b275286b4d5aE"(i64* align 8 %self) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h1617c40280309aa7E"(i64 %value) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = alloca i64, align 8
  store i64 %value, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  ret i64 %3
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4cell13Cell$LT$T$GT$3set17h57da41525cbf0390E"(i8* align 1 %self, i8 %val) unnamed_addr #0 {
start:
  %old = call i8 @"_ZN4core4cell13Cell$LT$T$GT$7replace17h7734e393f093ca47E"(i8* align 1 %self, i8 %val), !range !4
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core3mem4drop17h1896a31eb357dd06E(i8 %old)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4cell13Cell$LT$T$GT$3set17hc904ebad0b433f44E"(i64* align 8 %self, i64 %val) unnamed_addr #0 {
start:
  %old = call i64 @"_ZN4core4cell13Cell$LT$T$GT$7replace17he52410bb4246738aE"(i64* align 8 %self, i64 %val)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core3mem4drop17h873ff56c7d46cda2E(i64 %old)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: uwtable
define i8 @"_ZN4core4cell13Cell$LT$T$GT$7replace17h7734e393f093ca47E"(i8* align 1 %self, i8 %val) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  store i8 1, i8* %_9, align 1
  br label %bb1

bb5:                                              ; preds = %cleanup
  %1 = load i8, i8* %_9, align 1, !range !1, !noundef !2
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb5

bb1:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %8 = invoke i8 @_ZN4core3mem7replace17hbe20d32a5be3eb8eE(i8* align 1 %self, i8 %val)
          to label %bb2 unwind label %cleanup, !range !4

bb2:                                              ; preds = %bb1
  ret i8 %8

bb3:                                              ; preds = %bb4, %bb5
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: uwtable
define i64 @"_ZN4core4cell13Cell$LT$T$GT$7replace17he52410bb4246738aE"(i64* align 8 %self, i64 %val) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  store i8 1, i8* %_9, align 1
  br label %bb1

bb5:                                              ; preds = %cleanup
  %1 = load i8, i8* %_9, align 1, !range !1, !noundef !2
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb5

bb1:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %8 = invoke i64 @_ZN4core3mem7replace17h1d11160113927b8fE(i64* align 8 %self, i64 %val)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret i64 %8

bb3:                                              ; preds = %bb4, %bb5
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define { i32*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h19d1e9a32961a167E"({ i64, i32 }* align 8 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { i32*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17hf86e53ec39f965c4E"({ i64, i32 }* align 8 %self)
  %_2.0 = extractvalue { i32*, i8* } %1, 0
  %_2.1 = extractvalue { i32*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i32*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb690153018d0fbb5E"(i32* %_2.0, i8* %_2.1, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc175 to [0 x i8]*), i64 16, %"core::panic::location::Location"* align 8 %0)
  %3 = extractvalue { i32*, i64* } %2, 0
  %4 = extractvalue { i32*, i64* } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = insertvalue { i32*, i64* } undef, i32* %3, 0
  %6 = insertvalue { i32*, i64* } %5, i64* %4, 1
  ret { i32*, i64* } %6
}

; Function Attrs: inlinehint uwtable
define { i32*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17hf86e53ec39f965c4E"({ i64, i32 }* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca { i32*, i64* }, align 8
  %b = alloca i64*, align 8
  %_2 = alloca i64*, align 8
  %1 = alloca { i32*, i8* }, align 8
  %_4 = bitcast { i64, i32 }* %self to i64*
  %2 = call align 8 i64* @_ZN4core4cell12BorrowRefMut3new17h73c57e1036312fa4E(i64* align 8 %_4)
  store i64* %2, i64** %_2, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i64** %_2 to {}**
  %4 = load {}*, {}** %3, align 8
  %5 = icmp eq {}* %4, null
  %_5 = select i1 %5, i64 0, i64 1
  switch i64 %_5, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb1
  %6 = bitcast { i32*, i8* }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = bitcast { i32*, i8* }* %1 to {}**
  store {}* null, {}** %7, align 8
  br label %bb7

bb4:                                              ; preds = %bb1
  %8 = load i64*, i64** %_2, align 8, !nonnull !2, !align !3, !noundef !2
  store i64* %8, i64** %b, align 8
  %_9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %self, i32 0, i32 1
  br label %bb5

bb8:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h98ff270c39a21a3dE"(i64** %b) #10
          to label %bb9 unwind label %abort

cleanup:                                          ; preds = %bb5
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb8

bb5:                                              ; preds = %bb4
  %value = invoke i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h3b164a8bc4bd45abE"(i32* %_9)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12 = load i64*, i64** %b, align 8, !nonnull !2, !align !3, !noundef !2
  %14 = bitcast { i32*, i64* }* %_10 to i32**
  store i32* %value, i32** %14, align 8
  %15 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %_10, i32 0, i32 1
  store i64* %_12, i64** %15, align 8
  %16 = bitcast { i32*, i8* }* %1 to { i32*, i64* }*
  %17 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %_10, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8, !nonnull !2, !noundef !2
  %19 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %_10, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8, !nonnull !2, !align !3, !noundef !2
  %21 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %16, i32 0, i32 0
  store i32* %18, i32** %21, align 8
  %22 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %16, i32 0, i32 1
  store i64* %20, i64** %22, align 8
  br label %bb7

abort:                                            ; preds = %bb8
  %23 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #8
  unreachable

bb9:                                              ; preds = %bb8
  %24 = bitcast { i8*, i32 }* %0 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

bb7:                                              ; preds = %bb6, %bb2
  %30 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %1, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %1, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = insertvalue { i32*, i8* } undef, i32* %31, 0
  %35 = insertvalue { i32*, i8* } %34, i8* %33, 1
  ret { i32*, i8* } %35
}

; Function Attrs: inlinehint uwtable
define { i64, i32 } @"_ZN4core4cell16RefCell$LT$T$GT$3new17ha087886edc408328E"(i32 %value) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca i32, align 4
  %1 = alloca { i8*, i32 }, align 8
  %2 = alloca { i64, i32 }, align 8
  store i32 %value, i32* %0, align 4
  %3 = load i32, i32* %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h1617c40280309aa7E"(i64 0)
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %9 = bitcast { i64, i32 }* %2 to i64*
  store i64 %_4, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %2, i32 0, i32 1
  store i32 %3, i32* %10, align 8
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %2, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %2, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i64, i32 } undef, i64 %12, 0
  %16 = insertvalue { i64, i32 } %15, i32 %14, 1
  ret { i64, i32 } %16

bb4:                                              ; preds = %bb3
  %17 = bitcast { i8*, i32 }* %1 to i8**
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17hf3ba8e229a161098E() unnamed_addr #3 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$4take17he5c90931230e1e4aE"(%"core::option::Option<core::cell::RefCell<i32>>"* sret(%"core::option::Option<core::cell::RefCell<i32>>") %0, %"core::option::Option<core::cell::RefCell<i32>>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = alloca %"core::option::Option<core::cell::RefCell<i32>>", align 8
  %1 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %_3 to i64*
  store i64 0, i64* %1, align 8
  call void @_ZN4core3mem7replace17h477e9bd7a2eb1eaeE(%"core::option::Option<core::cell::RefCell<i32>>"* sret(%"core::option::Option<core::cell::RefCell<i32>>") %0, %"core::option::Option<core::cell::RefCell<i32>>"* align 8 %self, %"core::option::Option<core::cell::RefCell<i32>>"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h1bc47aa7959902d3E"(i64* align 8 %0) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i64*, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  store i8 1, i8* %_7, align 1
  %2 = bitcast i64** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = bitcast i64** %1 to %"core::result::Result<&core::cell::RefCell<i32>, std::thread::local::AccessError>::Err"*
  %6 = bitcast %"core::result::Result<&core::cell::RefCell<i32>, std::thread::local::AccessError>::Err"* %5 to %"std::thread::local::AccessError"*
  %7 = bitcast i64** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = bitcast i64** %1 to {}**
  store {}* null, {}** %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %9 = bitcast i64** %self to { i64, i32 }**
  %v = load { i64, i32 }*, { i64, i32 }** %9, align 8, !nonnull !2, !align !3, !noundef !2
  %10 = bitcast i64** %1 to { i64, i32 }**
  store { i64, i32 }* %v, { i64, i32 }** %10, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %11 = load i8, i8* %_7, align 1, !range !1, !noundef !2
  %12 = trunc i8 %11 to i1
  br i1 %12, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %13 = load i64*, i64** %1, align 8, !align !3
  ret i64* %13

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17hed8b0f8ece5f5a11E"(%"core::option::Option<core::cell::RefCell<i32>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !5, !noundef !2
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %2 = bitcast i64** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %3 = bitcast i64** %0 to {}**
  store {}* null, {}** %3, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %4 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %self to %"core::option::Option<core::cell::RefCell<i32>>::Some"*
  %x = getelementptr inbounds %"core::option::Option<core::cell::RefCell<i32>>::Some", %"core::option::Option<core::cell::RefCell<i32>>::Some"* %4, i32 0, i32 1
  %5 = bitcast i64** %0 to { i64, i32 }**
  store { i64, i32 }* %x, { i64, i32 }** %5, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %6 = load i64*, i64** %0, align 8, !align !3
  ret i64* %6
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17ha19308f5abb6d2d0E"(i1 zeroext %0, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %e = alloca %"std::thread::local::AccessError", align 1
  %self = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %self, align 1
  %4 = load i8, i8* %self, align 1, !range !1, !noundef !2
  %5 = trunc i8 %4 to i1
  %_3 = zext i1 %5 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
  %_7.0 = bitcast %"std::thread::local::AccessError"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*), %"core::panic::location::Location"* align 8 %1) #9
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb4
  %11 = bitcast { i8*, i32 }* %2 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: inlinehint uwtable
define { i32*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb690153018d0fbb5E"(i32* %0, i8* %1, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %e = alloca %"core::cell::BorrowMutError", align 1
  %self = alloca { i32*, i8* }, align 8
  %4 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %self, i32 0, i32 0
  store i32* %0, i32** %4, align 8
  %5 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %self, i32 0, i32 1
  store i8* %1, i8** %5, align 8
  %6 = bitcast { i32*, i8* }* %self to {}**
  %7 = load {}*, {}** %6, align 8
  %8 = icmp eq {}* %7, null
  %_3 = select i1 %8, i64 1, i64 0
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = bitcast { i32*, i8* }* %self to { i32*, i64* }*
  %10 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %9, i32 0, i32 0
  %t.0 = load i32*, i32** %10, align 8, !nonnull !2, !noundef !2
  %11 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %9, i32 0, i32 1
  %t.1 = load i64*, i64** %11, align 8, !nonnull !2, !align !3, !noundef !2
  %12 = insertvalue { i32*, i64* } undef, i32* %t.0, 0
  %13 = insertvalue { i32*, i64* } %12, i64* %t.1, 1
  ret { i32*, i64* } %13

bb1:                                              ; preds = %start
  %_7.0 = bitcast %"core::cell::BorrowMutError"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), %"core::panic::location::Location"* align 8 %2) #9
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb4
  %19 = bitcast { i8*, i32 }* %3 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hbe1c7984af1c5b63E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN66_$LT$core..cell..BorrowRefMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdcf77f5f05479159E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_8 = load i64*, i64** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %borrow = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17h8f32b275286b4d5aE"(i64* align 8 %_8)
  br label %bb1

bb1:                                              ; preds = %start
  %_9 = load i64*, i64** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %_6 = add i64 %borrow, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17hc904ebad0b433f44E"(i64* align 8 %_9, i64 %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define align 4 i32* @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e9aaa43c5d1d7b3E"({ i32*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast { i32*, i64* }* %self to i32**
  %0 = call align 4 i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h528b1a32b01b8922E"(i32** align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32* %0
}

; Function Attrs: inlinehint uwtable
define align 4 i32* @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hadfe92d1bba963c6E"({ i32*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %_5 = bitcast { i32*, i64* }* %self to i32**
  %_4 = call align 4 i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h807ca08eac58359bE"(i32** align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32* %_4
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf4206c72ae6ce47eE"(i64* align 8 %0) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err", align 1
  %1 = alloca i64*, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  %2 = bitcast i64** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %5 = bitcast i64** %self to { i64, i32 }**
  %v = load { i64, i32 }*, { i64, i32 }** %5, align 8, !nonnull !2, !align !3, !noundef !2
  %6 = bitcast i64** %1 to { i64, i32 }**
  store { i64, i32 }* %v, { i64, i32 }** %6, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %7 = bitcast %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err"* %_6 to %"std::thread::local::AccessError"*
  %8 = bitcast i64** %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::thread::local::AccessError>, &core::cell::RefCell<i32>>::Break"*
  %9 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::thread::local::AccessError>, &core::cell::RefCell<i32>>::Break"* %8 to %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err"*
  %10 = bitcast i64** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 8, i1 false)
  %11 = bitcast i64** %1 to {}**
  store {}* null, {}** %11, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %12 = load i64*, i64** %1, align 8, !align !3
  ret i64* %12
}

; Function Attrs: uwtable
define void @libzahl_failure(i32 %0) unnamed_addr #1 {
start:
  %_10 = alloca [1 x { i8*, i64* }], align 8
  %_3 = alloca %"core::fmt::Arguments", align 8
  %error_code = alloca i32, align 4
  store i32 %0, i32* %error_code, align 4
  %1 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h964f4e5075e69d0fE(i32* align 4 %error_code)
  %_11.0 = extractvalue { i8*, i64* } %1, 0
  %_11.1 = extractvalue { i8*, i64* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_10, i64 0, i64 0
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  store i8* %_11.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  store i64* %_11.1, i64** %4, align 8
  %_7.0 = bitcast [1 x { i8*, i64* }]* %_10 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h08bfc6a5e740e290E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_3, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc56 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_7.0, i64 1)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"* %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @libzahl_memfailure() unnamed_addr #1 {
start:
  call void @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h839031da95b83d89E"(i64** align 8 bitcast (<{ i8* }>* @alloc61 to i64**))
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN18libzahl_memfailure18libzahl_memfailure28_$u7b$$u7b$closure$u7d$$u7d$17h5850daaa038725baE"({ i64, i32 }* align 8 %error) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %error1 = alloca { i32*, i64* }, align 8
  %1 = call { i32*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h19d1e9a32961a167E"({ i64, i32 }* align 8 %error, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc183 to %"core::panic::location::Location"*))
  store { i32*, i64* } %1, { i32*, i64* }* %error1, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = invoke align 4 i32* @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e9aaa43c5d1d7b3E"({ i32*, i64* }* align 8 %error1)
          to label %bb2 unwind label %cleanup

bb9:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr50drop_in_place$LT$core..cell..RefMut$LT$i32$GT$$GT$17h31166813939ec8bcE"({ i32*, i64* }* %error1) #10
          to label %bb10 unwind label %abort

cleanup:                                          ; preds = %bb6, %bb5, %bb3, %bb1
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb9

bb2:                                              ; preds = %bb1
  %_5 = load i32, i32* %_6, align 4
  %7 = icmp eq i32 %_5, 0
  br i1 %7, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %_8 = invoke align 4 i32* @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hadfe92d1bba963c6E"({ i32*, i64* }* align 8 %error1)
          to label %bb4 unwind label %cleanup

bb5:                                              ; preds = %bb4, %bb2
  %_12 = invoke align 4 i32* @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e9aaa43c5d1d7b3E"({ i32*, i64* }* align 8 %error1)
          to label %bb6 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 2, i32* %_8, align 4
  br label %bb5

bb6:                                              ; preds = %bb5
  %_11 = load i32, i32* %_12, align 4
  invoke void @libzahl_failure(i32 %_11)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  call void @"_ZN4core3ptr50drop_in_place$LT$core..cell..RefMut$LT$i32$GT$$GT$17h31166813939ec8bcE"({ i32*, i64* }* %error1)
  br label %bb8

abort:                                            ; preds = %bb9
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #8
  unreachable

bb10:                                             ; preds = %bb9
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb8:                                              ; preds = %bb7
  ret void
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  call void @libzahl_memfailure()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN67_$LT$libzahl_memfailure..ZPrimality$u20$as$u20$core..fmt..Debug$GT$3fmt17hc3735fbea0b093eeE"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !4, !noundef !2
  %_3 = zext i8 %1 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc186 to [0 x i8]*), i64 8)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb5

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc185 to [0 x i8]*), i64 13)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb5

bb1:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc184 to [0 x i8]*), i64 5)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb1, %bb4, %bb3
  %8 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN65_$LT$libzahl_memfailure..ZRandDev$u20$as$u20$core..fmt..Debug$GT$3fmt17h1dbb3f557055cc57E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !7, !noundef !2
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
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc193 to [0 x i8]*), i64 10)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb9

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc192 to [0 x i8]*), i64 12)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb9

bb5:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc191 to [0 x i8]*), i64 13)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb9

bb6:                                              ; preds = %start
  %8 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc190 to [0 x i8]*), i64 13)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %0, align 1
  br label %bb9

bb7:                                              ; preds = %start
  %10 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [14 x i8] }>* @alloc189 to [0 x i8]*), i64 14)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb9

bb8:                                              ; preds = %start
  %12 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc188 to [0 x i8]*), i64 16)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %0, align 1
  br label %bb9

bb1:                                              ; preds = %start
  %14 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc187 to [0 x i8]*), i64 16)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %0, align 1
  br label %bb9

bb9:                                              ; preds = %bb1, %bb8, %bb7, %bb6, %bb5, %bb4, %bb3
  %16 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %17 = trunc i8 %16 to i1
  ret i1 %17
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN66_$LT$libzahl_memfailure..ZRandDist$u20$as$u20$core..fmt..Debug$GT$3fmt17he5aa1341739596ebE"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !4, !noundef !2
  %_3 = zext i8 %1 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc196 to [0 x i8]*), i64 12)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb5

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc195 to [0 x i8]*), i64 7)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb5

bb1:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc194 to [0 x i8]*), i64 10)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb1, %bb4, %bb3
  %8 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN63_$LT$libzahl_memfailure..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c011c8ba498600bE"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !8, !noundef !2
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
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc202 to [0 x i8]*), i64 8)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb8

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [11 x i8] }>* @alloc201 to [0 x i8]*), i64 11)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb8

bb5:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [11 x i8] }>* @alloc200 to [0 x i8]*), i64 11)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb8

bb6:                                              ; preds = %start
  %8 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc199 to [0 x i8]*), i64 7)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %0, align 1
  br label %bb8

bb7:                                              ; preds = %start
  %10 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc198 to [0 x i8]*), i64 8)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb8

bb1:                                              ; preds = %start
  %12 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc197 to [0 x i8]*), i64 12)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb1, %bb7, %bb6, %bb5, %bb4, %bb3
  %14 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %15 = trunc i8 %14 to i1
  ret i1 %15
}

; Function Attrs: inlinehint uwtable
define internal { i64, i32 } @_ZN18libzahl_memfailure5ERROR6__init17h45b000bc8e40b6daE() unnamed_addr #0 {
start:
  %0 = call { i64, i32 } @"_ZN4core4cell16RefCell$LT$T$GT$3new17ha087886edc408328E"(i32 0)
  %1 = extractvalue { i64, i32 } %0, 0
  %2 = extractvalue { i64, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i32 } undef, i64 %1, 0
  %4 = insertvalue { i64, i32 } %3, i32 %2, 1
  ret { i64, i32 } %4
}

; Function Attrs: inlinehint uwtable
define internal align 8 i64* @_ZN18libzahl_memfailure5ERROR7__getit17h2428f03fa5577dd6E(i64* align 8 %init) unnamed_addr #0 {
start:
  %_4 = alloca i64*, align 8
  store i64* %init, i64** %_4, align 8
  %0 = load i64*, i64** %_4, align 8, !align !3
  %1 = call align 8 i64* @"_ZN3std6thread5local4fast12Key$LT$T$GT$3get17h390ebca6b15861f0E"(%"std::thread::local::fast::Key<core::cell::RefCell<i32>>"* align 8 bitcast (<{ [8 x i8], [16 x i8], [1 x i8], [7 x i8] }>* @_ZN18libzahl_memfailure5ERROR7__getit5__KEY17h85e4a62586eeedc1E to %"std::thread::local::fast::Key<core::cell::RefCell<i32>>"*), i64* align 8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i32 } @"_ZN18libzahl_memfailure5ERROR7__getit28_$u7b$$u7b$closure$u7d$$u7d$17he7b86adf009c1461E"(i64* align 8 %0) unnamed_addr #0 {
start:
  %_20 = alloca %"core::fmt::Arguments", align 8
  %_16 = alloca [1 x { i8*, i64* }], align 8
  %_9 = alloca %"core::fmt::Arguments", align 8
  %_4 = alloca %"core::option::Option<core::cell::RefCell<i32>>", align 8
  %1 = alloca { i64, i32 }, align 8
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  %2 = bitcast i64** %_1 to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 0, i64 1
  %5 = icmp eq i64 %_2, 1
  br i1 %5, label %bb1, label %bb8

bb1:                                              ; preds = %start
  %6 = bitcast i64** %_1 to %"core::option::Option<core::cell::RefCell<i32>>"**
  %init = load %"core::option::Option<core::cell::RefCell<i32>>"*, %"core::option::Option<core::cell::RefCell<i32>>"** %6, align 8, !nonnull !2, !align !3, !noundef !2
  call void @"_ZN4core6option15Option$LT$T$GT$4take17he5c90931230e1e4aE"(%"core::option::Option<core::cell::RefCell<i32>>"* sret(%"core::option::Option<core::cell::RefCell<i32>>") %_4, %"core::option::Option<core::cell::RefCell<i32>>"* align 8 %init)
  br label %bb2

bb8:                                              ; preds = %start
  %7 = call { i64, i32 } @_ZN18libzahl_memfailure5ERROR6__init17h45b000bc8e40b6daE()
  store { i64, i32 } %7, { i64, i32 }* %1, align 8
  br label %bb9

bb9:                                              ; preds = %bb3, %bb8
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i64, i32 } undef, i64 %9, 0
  %13 = insertvalue { i64, i32 } %12, i32 %11, 1
  ret { i64, i32 } %13

bb2:                                              ; preds = %bb1
  %14 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %_4 to i64*
  %_6 = load i64, i64* %14, align 8, !range !5, !noundef !2
  %15 = icmp eq i64 %_6, 1
  br i1 %15, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  %16 = bitcast %"core::option::Option<core::cell::RefCell<i32>>"* %_4 to %"core::option::Option<core::cell::RefCell<i32>>::Some"*
  %17 = getelementptr inbounds %"core::option::Option<core::cell::RefCell<i32>>::Some", %"core::option::Option<core::cell::RefCell<i32>>::Some"* %16, i32 0, i32 1
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %value.0 = load i64, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %value.1 = load i32, i32* %19, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %1, i32 0, i32 0
  store i64 %value.0, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %1, i32 0, i32 1
  store i32 %value.1, i32* %21, align 8
  br label %bb9

bb4:                                              ; preds = %bb2
  call void @_ZN4core3fmt9Arguments6new_v117h08bfc6a5e740e290E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_20, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc44 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc46 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  %22 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h8d196508b8de301fE(%"core::fmt::Arguments"* align 8 %_20)
  %_17.0 = extractvalue { i8*, i64* } %22, 0
  %_17.1 = extractvalue { i8*, i64* } %22, 1
  br label %bb6

bb6:                                              ; preds = %bb5
  %23 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_16, i64 0, i64 0
  %24 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %23, i32 0, i32 0
  store i8* %_17.0, i8** %24, align 8
  %25 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %23, i32 0, i32 1
  store i64* %_17.1, i64** %25, align 8
  %_13.0 = bitcast [1 x { i8*, i64* }]* %_16 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h08bfc6a5e740e290E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_9, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc41 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 %_13.0, i64 1)
  br label %bb7

bb7:                                              ; preds = %bb6
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_9, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc204 to %"core::panic::location::Location"*)) #9
  unreachable
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
declare void @_ZN3std3sys4unix17thread_local_dtor13register_dtor17hfb33d9f167274a46E(i8*, void (i8*)*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #6

; Function Attrs: uwtable
declare zeroext i1 @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2165ef06e41cd052E"(%"core::fmt::Arguments"* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #7

; Function Attrs: uwtable
declare zeroext i1 @"_ZN68_$LT$std..thread..local..AccessError$u20$as$u20$core..fmt..Debug$GT$3fmt17h76d81833f64be45cE"(%"std::thread::local::AccessError"* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #7

; Function Attrs: uwtable
declare zeroext i1 @"_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4c633e1f2b589beE"(%"core::cell::BorrowMutError"* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { noreturn }
attributes #10 = { noinline }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 8}
!4 = !{i8 0, i8 3}
!5 = !{i64 0, i64 2}
!6 = !{i64 1}
!7 = !{i8 0, i8 7}
!8 = !{i8 0, i8 6}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memfailure.rs.bc", hash: (2654861553, 2840053530, 2481355329, 3894940191, 1193530598))
^1 = gv: (name: "alloc191", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 74054825511308480
^2 = gv: (name: "_ZN68_$LT$std..thread..local..AccessError$u20$as$u20$core..fmt..Debug$GT$3fmt17h76d81833f64be45cE") ; guid = 118598417140995157
^3 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3set17h57da41525cbf0390E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^122), (callee: ^97))))) ; guid = 173956753355488919
^4 = gv: (name: "alloc183", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^59)))) ; guid = 410907666428943158
^5 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^6 = gv: (name: "alloc197", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 852071756271008697
^7 = gv: (name: "_ZN66_$LT$core..cell..BorrowRefMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdcf77f5f05479159E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8, calls: ((callee: ^10), (callee: ^69))))) ; guid = 966284018197653360
^8 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^95, ^70)))) ; guid = 1121695763514026661
^9 = gv: (name: "alloc190", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1288315806793328652
^10 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3get17h8f32b275286b4d5aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 1427386335426362051
^11 = gv: (name: "alloc169", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1606098714234294344
^12 = gv: (name: "alloc192", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1758966169640195145
^13 = gv: (name: "_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE") ; guid = 1902152299201211586
^14 = gv: (name: "_ZN3std6thread5local4fast13destroy_value17h2c298ba59ea525abE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, calls: ((callee: ^74), (callee: ^127), (callee: ^3), (callee: ^53)), refs: (^103)))) ; guid = 2100481394181011418
^15 = gv: (name: "alloc204", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^59)))) ; guid = 2146678268157343309
^16 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf4206c72ae6ce47eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25))) ; guid = 2234881991922712175
^17 = gv: (name: "alloc189", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2923471836719116633
^18 = gv: (name: "alloc198", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3061644382115141099
^19 = gv: (name: "alloc186", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3086630015802212709
^20 = gv: (name: "_ZN3std6thread5local4fast12Key$LT$T$GT$14try_initialize17hdeed8cad89f3eedeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 53, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^79), (callee: ^68), (callee: ^36)), refs: (^103)))) ; guid = 3148938658684106853
^21 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb690153018d0fbb5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^72)), refs: (^103, ^8)))) ; guid = 3276635512765858972
^22 = gv: (name: "_ZN3std6thread5local4lazy21LazyKeyInner$LT$T$GT$3get17ha44939c6879cc967E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^31))))) ; guid = 3372956098715939268
^23 = gv: (name: "_ZN18libzahl_memfailure18libzahl_memfailure28_$u7b$$u7b$closure$u7d$$u7d$17h5850daaa038725baE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 37, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^94), (callee: ^57), (callee: ^119), (callee: ^56), (callee: ^78), (callee: ^127)), refs: (^103, ^4)))) ; guid = 3558370179978532341
^24 = gv: (name: "alloc202", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3640383865578183180
^25 = gv: (name: "alloc174", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^114)))) ; guid = 3654191763413192802
^26 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17ha19308f5abb6d2d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 30, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^72)), refs: (^103, ^27)))) ; guid = 3713959357222671289
^27 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^93, ^2)))) ; guid = 3726488203777122520
^28 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$3new17ha087886edc408328E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^126)), refs: (^103)))) ; guid = 3741148406738865462
^29 = gv: (name: "_ZN18libzahl_memfailure5ERROR6__init17h45b000bc8e40b6daE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^28))))) ; guid = 4205965615912454865
^30 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hbe1c7984af1c5b63E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 4241759409632039802
^31 = gv: (name: "_ZN4core6option15Option$LT$T$GT$6as_ref17hed8b0f8ece5f5a11E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17))) ; guid = 4793615387253724522
^32 = gv: (name: "alloc200", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4794677554723075491
^33 = gv: (name: "alloc44", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^83)))) ; guid = 4934119101830732452
^34 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$7replace17he52410bb4246738aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^87)), refs: (^103)))) ; guid = 4995484773955389957
^35 = gv: (name: "alloc48", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5080107476144818674
^36 = gv: (name: "_ZN3std6thread5local4lazy21LazyKeyInner$LT$T$GT$10initialize17he7f68de19cb74e0dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^108), (callee: ^37), (callee: ^66)), refs: (^103)))) ; guid = 5084473130173788959
^37 = gv: (name: "_ZN4core3mem7replace17h477e9bd7a2eb1eaeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^105), (callee: ^101)), refs: (^103)))) ; guid = 5130595888432757565
^38 = gv: (name: "_ZN3std3sys4unix17thread_local_dtor13register_dtor17hfb33d9f167274a46E") ; guid = 5394438853580147740
^39 = gv: (name: "_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2165ef06e41cd052E") ; guid = 5412852833668672798
^40 = gv: (name: "_ZN18libzahl_memfailure5ERROR7__getit5__KEY17h85e4a62586eeedc1E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 5617520291513761272
^41 = gv: (name: "_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h98ff270c39a21a3dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^7))))) ; guid = 5814877663095142043
^42 = gv: (name: "alloc56", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^115, ^88)))) ; guid = 5924761851805306692
^43 = gv: (name: "alloc201", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5969437643654623424
^44 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^49)))) ; guid = 6352047633225393192
^45 = gv: (name: "_ZN4core3ptr5write17h1db92e2b45bf2661E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 6474149861867098206
^46 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^47 = gv: (name: "alloc49", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^35)))) ; guid = 6703688791191979483
^48 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h528b1a32b01b8922E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^92))))) ; guid = 6937204753193335807
^49 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6983815567163917498
^50 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h807ca08eac58359bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^92))))) ; guid = 7044506614140924177
^51 = gv: (name: "_ZN65_$LT$libzahl_memfailure..ZRandDev$u20$as$u20$core..fmt..Debug$GT$3fmt17h1dbb3f557055cc57E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, calls: ((callee: ^13)), refs: (^58, ^12, ^1, ^9, ^17, ^77, ^82)))) ; guid = 7172767558327584502
^52 = gv: (name: "alloc195", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7732475559904386798
^53 = gv: (name: "_ZN4core3mem4drop17hd6c621e483d89ef7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 8228724502364071341
^54 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h1bc47aa7959902d3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 30))) ; guid = 8353166515062334750
^55 = gv: (name: "_ZN4core3ptr5write17hf59daedbdbcd5b1bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 8497062762690272255
^56 = gv: (name: "_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hadfe92d1bba963c6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^50))))) ; guid = 8505295311731344488
^57 = gv: (name: "_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e9aaa43c5d1d7b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^48))))) ; guid = 8542953634077425253
^58 = gv: (name: "alloc193", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8681611856462144796
^59 = gv: (name: "alloc203", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8697246278629972602
^60 = gv: (name: "alloc170", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11)))) ; guid = 8843837543372581901
^61 = gv: (name: "alloc175", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8983100487186834283
^62 = gv: (name: "alloc171", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9290467427958919187
^63 = gv: (name: "alloc151", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11)))) ; guid = 9316300619527260837
^64 = gv: (name: "_ZN4core6option15Option$LT$T$GT$4take17he5c90931230e1e4aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^37))))) ; guid = 9383809030981993982
^65 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1414455042f5a96dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^30))))) ; guid = 9851502449419693371
^66 = gv: (name: "_ZN4core4hint21unreachable_unchecked17hf3ba8e229a161098E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 9987549552113277504
^67 = gv: (name: "_ZN4core3fmt10ArgumentV13new17he5dc445fc439f9fcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 10099456553691188369
^68 = gv: (name: "_ZN3std6thread5local4fast12Key$LT$T$GT$17try_register_dtor17hb3b74be68648c49fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, calls: ((callee: ^85), (callee: ^38), (callee: ^3)), refs: (^14)))) ; guid = 10159355196380479333
^69 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3set17hc904ebad0b433f44E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^34), (callee: ^102))))) ; guid = 10728948099439424323
^70 = gv: (name: "_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4c633e1f2b589beE") ; guid = 10803726208494417663
^71 = gv: (name: "_ZN67_$LT$libzahl_memfailure..ZPrimality$u20$as$u20$core..fmt..Debug$GT$3fmt17hc3735fbea0b093eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^13)), refs: (^19, ^81, ^124)))) ; guid = 10973910163530647208
^72 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^73 = gv: (name: "alloc194", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11099059068660169469
^74 = gv: (name: "_ZN3std6thread5local4lazy21LazyKeyInner$LT$T$GT$4take17h82ca12ef924ea068E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^64))))) ; guid = 11153047008285046011
^75 = gv: (name: "_ZN4core3ptr4read17h19c1c25968f1fbe5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 11224568234689963642
^76 = gv: (name: "_ZN4core3ptr4read17hf3529dba751c49d6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11))) ; guid = 11240841274372369012
^77 = gv: (name: "alloc188", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11493594267248883926
^78 = gv: (name: "libzahl_failure", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19, calls: ((callee: ^121), (callee: ^118), (callee: ^123)), refs: (^42)))) ; guid = 11617763397090513630
^79 = gv: (name: "_ZN4core3mem10needs_drop17h1fe37a5a32db79e2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 12043932639553719716
^80 = gv: (name: "_ZN4core4cell12BorrowRefMut3new17h73c57e1036312fa4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 19, calls: ((callee: ^10), (callee: ^69))))) ; guid = 12054387963346612617
^81 = gv: (name: "alloc185", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12098912650239316025
^82 = gv: (name: "alloc187", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12114931922032270143
^83 = gv: (name: "alloc43", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12278132126588388641
^84 = gv: (name: "_ZN18libzahl_memfailure5ERROR7__getit17h2428f03fa5577dd6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^90)), refs: (^40)))) ; guid = 12308603703037842275
^85 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3get17h268e47ec4d22f7dbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 12327832817058268778
^86 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h3b164a8bc4bd45abE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 12483093586508468905
^87 = gv: (name: "_ZN4core3mem7replace17h1d11160113927b8fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^75), (callee: ^45)), refs: (^103)))) ; guid = 12579998894144843974
^88 = gv: (name: "alloc57", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12654092042283974551
^89 = gv: (name: "libzahl_memfailure", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^96)), refs: (^125)))) ; guid = 12724785122727689690
^90 = gv: (name: "_ZN3std6thread5local4fast12Key$LT$T$GT$3get17h390ebca6b15861f0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 48, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^22), (callee: ^20)), refs: (^103)))) ; guid = 12866114230985855047
^91 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^92 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h65800cdedd191123E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 13370587567068676483
^93 = gv: (name: "_ZN4core3ptr52drop_in_place$LT$std..thread..local..AccessError$GT$17h3d5fded0cf4ceb20E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13572374055441771942
^94 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h19d1e9a32961a167E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^117), (callee: ^21)), refs: (^61)))) ; guid = 13598833154807050531
^95 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17hb12b9f1eb34a86e8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13726026802012186095
^96 = gv: (name: "_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h839031da95b83d89E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^100), (callee: ^26)), refs: (^63, ^120)))) ; guid = 13965669809215561251
^97 = gv: (name: "_ZN4core3mem4drop17h1896a31eb357dd06E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 13988864868419890100
^98 = gv: (name: "_ZN63_$LT$libzahl_memfailure..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c011c8ba498600bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, calls: ((callee: ^13)), refs: (^24, ^43, ^32, ^99, ^18, ^6)))) ; guid = 13995832948525556670
^99 = gv: (name: "alloc199", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14243012344568193437
^100 = gv: (name: "_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h46adcae8fd4fb627E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 62, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^54), (callee: ^16), (callee: ^23), (callee: ^65)), refs: (^103, ^60)))) ; guid = 14392658501203470437
^101 = gv: (name: "_ZN4core3ptr5write17h50a7c42f2ef16776E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 14769562179287900130
^102 = gv: (name: "_ZN4core3mem4drop17h873ff56c7d46cda2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 14774678745526261121
^103 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^104 = gv: (name: "_ZN4core3mem7replace17hbe20d32a5be3eb8eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^76), (callee: ^55)), refs: (^103)))) ; guid = 14835590461121403650
^105 = gv: (name: "_ZN4core3ptr4read17h004b301f1abd1c25E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 15033356007126216834
^106 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15172444753182930696
^107 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h8d196508b8de301fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^67)), refs: (^39)))) ; guid = 15673776018424470201
^108 = gv: (name: "_ZN18libzahl_memfailure5ERROR7__getit28_$u7b$$u7b$closure$u7d$$u7d$17he7b86adf009c1461E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 58, calls: ((callee: ^64), (callee: ^29), (callee: ^118), (callee: ^107), (callee: ^110)), refs: (^106, ^33, ^44, ^15)))) ; guid = 15783442882936264838
^109 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^89))))) ; guid = 15822663052811949562
^110 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^111 = gv: (name: "alloc172", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 16222404234421131000
^112 = gv: (name: "alloc196", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16292686050185575323
^113 = gv: (name: "_ZN66_$LT$libzahl_memfailure..ZRandDist$u20$as$u20$core..fmt..Debug$GT$3fmt17he5aa1341739596ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^13)), refs: (^112, ^52, ^73)))) ; guid = 16330880241405926734
^114 = gv: (name: "alloc173", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16449972121954133885
^115 = gv: (name: "alloc55", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16772109368247073269
^116 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h75e9d8bae973092fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 16927672574068743748
^117 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17hf86e53ec39f965c4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 66, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^80), (callee: ^41), (callee: ^86), (callee: ^127)), refs: (^103)))) ; guid = 17181755475840460795
^118 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h08bfc6a5e740e290E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^118), (callee: ^110)), refs: (^106, ^47, ^111)))) ; guid = 17205352257941621720
^119 = gv: (name: "_ZN4core3ptr50drop_in_place$LT$core..cell..RefMut$LT$i32$GT$$GT$17h31166813939ec8bcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^41))))) ; guid = 17514872632340072901
^120 = gv: (name: "alloc149", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17706001017012381900
^121 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h964f4e5075e69d0fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^116)), refs: (^91)))) ; guid = 17797339846144050850
^122 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$7replace17h7734e393f093ca47E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^104)), refs: (^103)))) ; guid = 17853234775917142214
^123 = gv: (name: "_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE") ; guid = 17906690583868548313
^124 = gv: (name: "alloc184", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17975280015654637201
^125 = gv: (name: "alloc61", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^84)))) ; guid = 18200724504334952057
^126 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3new17h1617c40280309aa7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 18278276233452538242
^127 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^128 = blockcount: 324
