; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_init_iterations.rs.bc'
source_filename = "opng_init_iterations.ffd6fc81-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"[closure@std::panicking::begin_panic<&str>::{closure#0}]" = type { { [0 x i8]*, i64 }, %"core::panic::location::Location"* }
%"alloc::alloc::Global" = type {}
%"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>" = type { [0 x i8] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%Image = type { i8, i8 }
%Options = type <{ i8, i32, i32, i32, i32, i32 }>
%Process = type <{ i32, i64, i32, i32, i32, i32, i32, i32, i32 }>
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8* }> <{ i8* bitcast (void ({ i8*, i64 }*)* @"_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17h95605db71441b579E" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast ({ {}*, [3 x i64]* } ({ i8*, i64 }*)* @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h422ec070640a408aE" to i8*), i8* bitcast ({ {}*, [3 x i64]* } ({ i8*, i64 }*)* @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h1b00dd45901ab6cdE" to i8*) }>, align 8
@alloc344 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc345 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc344, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc363 = private unnamed_addr constant <{}> zeroinitializer, align 1
@alloc346 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc347 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc346, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ({ [0 x i8]*, i64 }*)* @"_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17hf8f8ff14d5faca11E" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i64 ({ [0 x i8]*, i64 }*)* @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbaee5456e1344d3eE" to i8*) }>, align 8
@alloc351 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"No IDAT in input" }>, align 1
@alloc401 = private unnamed_addr constant <{ [102 x i8] }> <{ [102 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_init_iterations.rs" }>, align 1
@alloc353 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [102 x i8] }>, <{ [102 x i8] }>* @alloc401, i32 0, i32 0, i32 0), [16 x i8] c"f\00\00\00\00\00\00\00H\00\00\00\0D\00\00\00" }>, align 8
@alloc355 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [102 x i8] }>, <{ [102 x i8] }>* @alloc401, i32 0, i32 0, i32 0), [16 x i8] c"f\00\00\00\00\00\00\00J\00\00\00!\00\00\00" }>, align 8
@str.2 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc376 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"9" }>, align 1
@alloc381 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"8" }>, align 1
@alloc387 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"0-" }>, align 1
@alloc371 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"0,5" }>, align 1
@alloc385 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"8-9" }>, align 1
@alloc384 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"1-9" }>, align 1
@alloc389 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [102 x i8] }>, <{ [102 x i8] }>* @alloc401, i32 0, i32 0, i32 0), [16 x i8] c"f\00\00\00\00\00\00\00b\00\00\00\09\00\00\00" }>, align 8
@alloc391 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [102 x i8] }>, <{ [102 x i8] }>* @alloc401, i32 0, i32 0, i32 0), [16 x i8] c"f\00\00\00\00\00\00\00h\00\00\00\09\00\00\00" }>, align 8
@alloc393 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [102 x i8] }>, <{ [102 x i8] }>* @alloc401, i32 0, i32 0, i32 0), [16 x i8] c"f\00\00\00\00\00\00\00n\00\00\00\09\00\00\00" }>, align 8
@alloc395 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [102 x i8] }>, <{ [102 x i8] }>* @alloc401, i32 0, i32 0, i32 0), [16 x i8] c"f\00\00\00\00\00\00\00t\00\00\00\09\00\00\00" }>, align 8
@alloc397 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [102 x i8] }>, <{ [102 x i8] }>* @alloc401, i32 0, i32 0, i32 0), [16 x i8] c"f\00\00\00\00\00\00\00\94\00\00\00\0A\00\00\00" }>, align 8
@str.3 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc399 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [102 x i8] }>, <{ [102 x i8] }>* @alloc401, i32 0, i32 0, i32 0), [16 x i8] c"f\00\00\00\00\00\00\00\97\00\00\00\1E\00\00\00" }>, align 8
@alloc400 = private unnamed_addr constant <{ [28 x i8] }> <{ [28 x i8] c"Invalid iteration parameters" }>, align 1
@alloc402 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [102 x i8] }>, <{ [102 x i8] }>* @alloc401, i32 0, i32 0, i32 0), [16 x i8] c"f\00\00\00\00\00\00\00\9C\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h3709104f9722cb99E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h73ad4a8df9155630E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6443d1eb178b31c4E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h1264b6a1c556997dE"(i8* %pointer.0, i64* align 8 %pointer.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  store i8* %pointer.0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  store i64* %pointer.1, i64** %2, align 8
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %7 = insertvalue { i8*, i64* } undef, i8* %4, 0
  %8 = insertvalue { i8*, i64* } %7, i64* %6, 1
  ret { i8*, i64* } %8
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h406e3c03cbf4d6cfE"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h752bdc452401eb91E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hff2eeff80b146614E"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i8*, i64 }* %1 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"*
  %3 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"* %2 to %"core::alloc::AllocError"*
  %4 = bitcast { i8*, i64 }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = bitcast { i8*, i64 }* %1 to {}**
  store {}* null, {}** %5, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { i8*, i64 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i64 } %10, i64 %9, 1
  ret { i8*, i64 } %11
}

; Function Attrs: uwtable
define i64 @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbaee5456e1344d3eE"({ [0 x i8]*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = call i64 @_ZN4core3any6TypeId2of17h88b5ed8b0461053fE()
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: noinline noreturn uwtable
define void @_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h86f65c8e997a980cE(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %f) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_2 = alloca %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", align 8
  %1 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_2 to i8*
  %2 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17hd58543739f27a409E"(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_2) #14
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint9black_box17h08b786061734ab8fE()
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  call void @llvm.trap()
  unreachable

bb4:                                              ; preds = %bb3
  %8 = bitcast { i8*, i32 }* %0 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13
}

; Function Attrs: cold noinline noreturn uwtable
define void @_ZN3std9panicking11begin_panic17h67f8f129126404a9E([0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #3 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_4 = alloca i8, align 1
  %_3 = alloca %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", align 8
  store i8 1, i8* %_4, align 1
  %loc = invoke align 8 %"core::panic::location::Location"* @_ZN4core5panic8location8Location6caller17h7f64b64dd07cf900E(%"core::panic::location::Location"* align 8 %0)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %2 = load i8, i8* %_4, align 1, !range !3, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb3, label %bb2

cleanup:                                          ; preds = %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb4

bb1:                                              ; preds = %start
  store i8 0, i8* %_4, align 1
  %9 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  store [0 x i8]* %msg.0, [0 x i8]** %10, align 8
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  store i64 %msg.1, i64* %11, align 8
  %12 = getelementptr inbounds %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_3, i32 0, i32 1
  store %"core::panic::location::Location"* %loc, %"core::panic::location::Location"** %12, align 8
  invoke void @_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h86f65c8e997a980cE(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_3) #14
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb3, %bb4
  %13 = bitcast { i8*, i32 }* %1 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

bb3:                                              ; preds = %bb4
  br label %bb2
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17h1e2c8a11e20e654fE"([0 x i8]* align 1 %inner.0, i64 %inner.1) unnamed_addr #1 {
start:
  %_2 = alloca { i8*, i64 }, align 8
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %inner.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %inner.1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !align !4
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  store i8* %5, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !align !4
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i8*, i64 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %13, 1
  ret { i8*, i64 } %15
}

; Function Attrs: inlinehint noreturn uwtable
define void @"_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17hd58543739f27a409E"(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_1) unnamed_addr #4 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_8 = alloca i64*, align 8
  %_6 = alloca { i8*, i64 }, align 8
  %1 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_1 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %_7.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !1, !align !4, !noundef !1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %_7.1 = load i64, i64* %3, align 8
  %4 = call { i8*, i64 } @"_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17h1e2c8a11e20e654fE"([0 x i8]* align 1 %_7.0, i64 %_7.1)
  store { i8*, i64 } %4, { i8*, i64 }* %_6, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_3.0 = bitcast { i8*, i64 }* %_6 to {}*
  %5 = bitcast i64** %_8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 8, i1 false)
  %6 = bitcast i64** %_8 to {}**
  store {}* null, {}** %6, align 8
  %7 = getelementptr inbounds %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_1, i32 0, i32 1
  %_10 = load %"core::panic::location::Location"*, %"core::panic::location::Location"** %7, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = load i64*, i64** %_8, align 8, !align !2
  invoke void @_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE({}* align 1 %_3.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8*, i8* }>* @vtable.0 to [3 x i64]*), i64* align 8 %8, %"core::panic::location::Location"* align 8 %_10, i1 zeroext true) #14
          to label %unreachable unwind label %cleanup

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb2

unreachable:                                      ; preds = %bb1
  unreachable

bb3:                                              ; preds = %bb2
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19
}

; Function Attrs: uwtable
define i64 @_ZN4core3any6TypeId2of17h88b5ed8b0461053fE() unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = alloca i64, align 8
  store i64 -5139102199292759541, i64* %0, align 8
  %_1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  store i64 %_1, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h3b3ef58a162229f1E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !5, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h2a5ce6afbdb44ed4E(i64 %_3), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h1a1bc2566f4a927fE(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !5, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @_ZN4core3mem7replace17hf85f537d74b28395E({ i8*, i64 }* align 8 %dest, i8* align 1 %src.0, i64 %src.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %1 = invoke { i8*, i64 } @_ZN4core3ptr4read17hfad4ba9b6446e219E({ i8*, i64 }* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %2 = load i8, i8* %_7, align 1, !range !3, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb5, label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb6

bb1:                                              ; preds = %start
  %result.0 = extractvalue { i8*, i64 } %1, 0
  %result.1 = extractvalue { i8*, i64 } %1, 1
  store i8 0, i8* %_7, align 1
  invoke void @_ZN4core3ptr5write17h75a17ecd480269eeE({ i8*, i64 }* %dest, i8* align 1 %src.0, i64 %src.1)
          to label %bb2 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1
  br label %bb6

cleanup1:                                         ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %14 = insertvalue { i8*, i64 } undef, i8* %result.0, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %result.1, 1
  ret { i8*, i64 } %15

bb4:                                              ; preds = %bb5, %bb6
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h2a5ce6afbdb44ed4E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !6, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h1f51b1aa26d6ae55E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hf54c41baf8e02371E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17ha64efba23f321b2fE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17hf8f8ff14d5faca11E"({ [0 x i8]*, i64 }* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr4read17h9373ff0c984b76a0E(%"alloc::alloc::Global"* %src) unnamed_addr #0 {
start:
  %0 = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>", align 1
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>", align 1
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>"* %0 to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>"* %tmp to %"alloc::alloc::Global"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast %"alloc::alloc::Global"* %2 to i8*
  %4 = bitcast %"alloc::alloc::Global"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 0, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @_ZN4core3ptr4read17hfad4ba9b6446e219E({ i8*, i64 }* %src) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %tmp = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %0 to {}*
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = insertvalue { i8*, i64 } undef, i8* %3, 0
  %7 = insertvalue { i8*, i64 } %6, i64 %5, 1
  store { i8*, i64 } %7, { i8*, i64 }* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = bitcast { i8*, i64 }* %tmp to i8*
  %9 = bitcast { i8*, i64 }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 0
  %_6.0 = load i8*, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 1
  %_6.1 = load i64, i64* %11, align 8
  %12 = insertvalue { i8*, i64 } undef, i8* %_6.0, 0
  %13 = insertvalue { i8*, i64 } %12, i64 %_6.1, 1
  %14 = extractvalue { i8*, i64 } %13, 0
  %15 = extractvalue { i8*, i64 } %13, 1
  %16 = extractvalue { i8*, i64 } %13, 0
  %17 = extractvalue { i8*, i64 } %13, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %18 = insertvalue { i8*, i64 } undef, i8* %16, 0
  %19 = insertvalue { i8*, i64 } %18, i64 %17, 1
  ret { i8*, i64 } %19
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h75a17ecd480269eeE({ i8*, i64 }* %dst, i8* align 1 %0, i64 %1) unnamed_addr #0 {
start:
  %src = alloca { i8*, i64 }, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 0
  store i8* %0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = bitcast { i8*, i64 }* %dst to i8*
  %5 = bitcast { i8*, i64 }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17h64e0bc744b3fcceeE"({}* %_1.0, [3 x i64]* align 8 %_1.1) unnamed_addr #1 {
start:
  %0 = bitcast [3 x i64]* %_1.1 to void ({}*)**
  %1 = getelementptr inbounds void ({}*)*, void ({}*)** %0, i64 0
  %2 = load void ({}*)*, void ({}*)** %1, align 8, !invariant.load !1, !nonnull !1
  call void %2({}* %_1.0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h47da3da73fef38e2E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h82f6bcd1ecd3e901E"(i8* %self.0, i64* align 8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h406e3c03cbf4d6cfE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h73ad4a8df9155630E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9d7b0c18fd1fa617E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hea5683992083fda7E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he96b07c6bc0c4feaE"(i8* %self.0, i64* align 8 %self.1)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h529cbc83bb1a8bc4E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17ha1a50b47f47a95c9E"({ i8*, i64* }* align 8 %self)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17h95605db71441b579E"({ i8*, i64 }* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h52251a35de3c76f8E"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he74de727a1f2c1d5E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h3f7bd9e83520749eE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h52251a35de3c76f8E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h3f7bd9e83520749eE({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17ha64efba23f321b2fE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1068b6548292bf42E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %ptr.1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i8*, i64 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64 } %8, i64 %7, 1
  ret { i8*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6443d1eb178b31c4E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h22319e712f18a973E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he74de727a1f2c1d5E"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = xor i1 %_3, true
  br i1 %_2, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %1 = bitcast i8** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i8** %0 to {}**
  store {}* null, {}** %2, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6443d1eb178b31c4E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h82f6bcd1ecd3e901E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he96b07c6bc0c4feaE"(i8* %self.0, i64* align 8 %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6443d1eb178b31c4E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9d7b0c18fd1fa617E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he96b07c6bc0c4feaE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf2472647ceef402bE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17ha1a50b47f47a95c9E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !1, !align !2, !noundef !1
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he96b07c6bc0c4feaE"(i8* %_3.0, i64* align 8 %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h56a8d66a8d287e81E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h8ee6be03a2640111E"(i8* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9d7b0c18fd1fa617E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h8ee6be03a2640111E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf2472647ceef402bE"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6443d1eb178b31c4E"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hbcb9b560738d0a5cE"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9d7b0c18fd1fa617E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hf54c41baf8e02371E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1068b6548292bf42E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h36b456e87efcff26E"({ {}*, [3 x i64]* }* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %2 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  %4 = load {}*, {}** %3, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  %6 = load [3 x i64]*, [3 x i64]** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %7 = bitcast [3 x i64]* %6 to void ({}*)**
  %8 = getelementptr inbounds void ({}*)*, void ({}*)** %7, i64 0
  %9 = load void ({}*)*, void ({}*)** %8, align 8, !invariant.load !1, !nonnull !1
  invoke void %9({}* %4)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %10 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8, !nonnull !1, !align !2, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17h947cdfb27f16e26eE(i8* %12, i64* align 8 %14) #15
          to label %bb2 unwind label %abort

cleanup:                                          ; preds = %start
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %20 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !nonnull !1, !noundef !1
  %23 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8, !nonnull !1, !align !2, !noundef !1
  call void @_ZN5alloc5alloc8box_free17h947cdfb27f16e26eE(i8* %22, i64* align 8 %24)
  br label %bb1

abort:                                            ; preds = %bb4
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable

bb2:                                              ; preds = %bb4
  %26 = bitcast { i8*, i32 }* %0 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h09f95103082f75a9E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !4, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  %_3.0 = extractvalue { [0 x i8]*, i64 } %8, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %_3.1
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$8is_empty17hf2ec66f163b8bdc3E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h09f95103082f75a9E"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = icmp eq i64 %_2, 0
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4hint9black_box17h08b786061734ab8fE() unnamed_addr #0 {
start:
  call void asm sideeffect "", "r,~{memory}"({}* undef), !srcloc !7
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hf9ba4584f1ffdb49E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h1a1bc2566f4a927fE(i64 %align), !range !5
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !5, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17hbc7cdc5980b9cae5E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h24172e61b024bc0cE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !5, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h3b3ef58a162229f1E(i64 %_3), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h1f51b1aa26d6ae55E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17hc54daa77c589d2adE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h24172e61b024bc0cE({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6443d1eb178b31c4E"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal align 8 %"core::panic::location::Location"* @_ZN4core5panic8location8Location6caller17h7f64b64dd07cf900E(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca %"core::panic::location::Location"*, align 8
  store %"core::panic::location::Location"* %0, %"core::panic::location::Location"** %1, align 8
  %2 = load %"core::panic::location::Location"*, %"core::panic::location::Location"** %1, align 8, !nonnull !1, !align !2, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret %"core::panic::location::Location"* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$4take17hbf612ae13da77f5fE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %_3 = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 16, i1 false)
  %1 = bitcast { i8*, i64 }* %_3 to {}**
  store {}* null, {}** %1, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_3, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8, !align !4
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = call { i8*, i64 } @_ZN4core3mem7replace17hf85f537d74b28395E({ i8*, i64 }* align 8 %self, i8* align 1 %3, i64 %5)
  %7 = extractvalue { i8*, i64 } %6, 0
  %8 = extractvalue { i8*, i64 } %6, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = insertvalue { i8*, i64 } undef, i8* %7, 0
  %10 = insertvalue { i8*, i64 } %9, i64 %8, 1
  ret { i8*, i64 } %10
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hdbbae521fb92a9d1E"(i8* %0) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  store i8 1, i8* %_7, align 1
  %2 = bitcast i8** %self to {}**
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
  %5 = bitcast i8** %1 to %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"*
  %6 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"* %5 to %"core::alloc::AllocError"*
  %7 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = bitcast i8** %1 to {}**
  store {}* null, {}** %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %9 = load i8, i8* %_7, align 1, !range !3, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hcce5de634175d690E"(i8* align 1 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !3, !noundef !1
  %2 = trunc i8 %1 to i1
  %_2 = zext i1 %2 to i64
  %3 = icmp eq i64 %_2, 1
  br i1 %3, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hff2eeff80b146614E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17hb86d3917a774c980E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17hbc7cdc5980b9cae5E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h24172e61b024bc0cE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #17
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc15exchange_malloc17heacd03a78dd2d179E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %_6 = alloca { i8*, i64 }, align 8
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hf9ba4584f1ffdb49E(i64 %size, i64 %align)
  %layout.0 = extractvalue { i64, i64 } %0, 0
  %layout.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h38c04c960eebf80cE"(%"alloc::alloc::Global"* align 1 bitcast (<{}>* @alloc363 to %"alloc::alloc::Global"*), i64 %layout.0, i64 %layout.1)
  store { i8*, i64 } %1, { i8*, i64 }* %_6, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast { i8*, i64 }* %_6 to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_9 = select i1 %4, i64 1, i64 0
  switch i64 %_9, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb5:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i32 0, i32 0
  %ptr.0 = load i8*, i8** %5, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i32 0, i32 1
  %ptr.1 = load i64, i64* %6, align 8
  %7 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h56a8d66a8d287e81E"(i8* %ptr.0, i64 %ptr.1)
  br label %bb6

bb3:                                              ; preds = %bb2
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #14
  unreachable

bb6:                                              ; preds = %bb5
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h410c1b68d7642cc3E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17hbc7cdc5980b9cae5E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h24172e61b024bc0cE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #17
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h87e3171feb73788eE(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hbc7cdc5980b9cae5E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17hc54daa77c589d2adE({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !5, !noundef !1
  %8 = call i8* @_ZN5alloc5alloc5alloc17h410c1b68d7642cc3E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !5, !noundef !1
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17hb86d3917a774c980E(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h22319e712f18a973E"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hdbbae521fb92a9d1E"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h4865af61ebf3e42aE"(i8* %_16)
  store i8* %12, i8** %_15, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  %13 = bitcast i8** %_15 to {}**
  %14 = load {}*, {}** %13, align 8
  %15 = icmp eq {}* %14, null
  %_20 = select i1 %15, i64 1, i64 0
  switch i64 %_20, label %bb15 [
    i64 0, label %bb14
    i64 1, label %bb16
  ]

bb15:                                             ; preds = %bb13
  unreachable

bb14:                                             ; preds = %bb13
  %val = load i8*, i8** %_15, align 8, !nonnull !1, !noundef !1
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hbcb9b560738d0a5cE"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h752bdc452401eb91E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc347 to %"core::panic::location::Location"*))
  store { i8*, i64 } %17, { i8*, i64 }* %2, align 8
  br label %bb17

bb17:                                             ; preds = %bb16
  br label %bb20

bb20:                                             ; preds = %bb19, %bb17
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = insertvalue { i8*, i64 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i64 } %22, i64 %21, 1
  ret { i8*, i64 } %23

bb18:                                             ; preds = %bb14
  %24 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_24.0, i8** %24, align 8
  %25 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_24.1, i64* %25, align 8
  br label %bb19

bb19:                                             ; preds = %bb5, %bb18
  br label %bb20

bb4:                                              ; preds = %bb3
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hbcb9b560738d0a5cE"(i8* %_7, i64 0)
  %_6.0 = extractvalue { i8*, i64 } %26, 0
  %_6.1 = extractvalue { i8*, i64 } %26, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_6.0, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_6.1, i64* %28, align 8
  br label %bb19
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17h55564afad92ea97cE(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hbc7cdc5980b9cae5E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h24172e61b024bc0cE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #17
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17h947cdfb27f16e26eE(i8* %0, i64* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca { i8*, i64* }, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  store i8* %0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  store i64* %1, i64** %6, align 8
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h529cbc83bb1a8bc4E"({ i8*, i64* }* align 8 %ptr)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb10

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { {}*, [3 x i64]* } %7, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %7, 1
  %13 = bitcast [3 x i64]* %_5.1 to i64*
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8, !invariant.load !1
  %16 = bitcast [3 x i64]* %_5.1 to i64*
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %17, align 8, !range !6, !invariant.load !1
  store i64 %15, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h529cbc83bb1a8bc4E"({ i8*, i64* }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !1
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !6, !invariant.load !1
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hf9ba4584f1ffdb49E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !1, !align !2, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h47da3da73fef38e2E"(i8* %_17.0, i64* align 8 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h3709104f9722cb99E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62f4934525154803E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %29 = bitcast { i8*, i32 }* %4 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %34 = insertvalue { i8*, i32 } %33, i32 %32, 1
  resume { i8*, i32 } %34

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h91676a58a6d40908E"({}* align 1 %0, [3 x i64]* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %3 = alloca { i8*, i64* }, align 8
  %b = alloca { {}*, [3 x i64]* }, align 8
  %4 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 0
  store {}* %0, {}** %4, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 1
  store [3 x i64]* %1, [3 x i64]** %5, align 8
  store i8 1, i8* %_9, align 1
  %_4 = bitcast { {}*, [3 x i64]* }* %b to %"alloc::alloc::Global"*
  invoke void @_ZN4core3ptr4read17h9373ff0c984b76a0E(%"alloc::alloc::Global"* %_4)
          to label %bb1 unwind label %cleanup

bb7:                                              ; preds = %bb4, %cleanup
  %6 = load i8, i8* %_9, align 1, !range !3, !noundef !1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb6, label %bb5

cleanup:                                          ; preds = %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %13 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 0
  %_7.0 = load {}*, {}** %13, align 8, !nonnull !1, !align !4, !noundef !1
  %14 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 1
  %_7.1 = load [3 x i64]*, [3 x i64]** %14, align 8, !nonnull !1, !align !2, !noundef !1
  %15 = invoke { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h7db5610545108722E"({}* align 1 %_7.0, [3 x i64]* align 8 %_7.1)
          to label %bb2 unwind label %cleanup1

bb4:                                              ; preds = %cleanup1
  br label %bb7

cleanup1:                                         ; preds = %bb2, %bb1
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { {}*, [3 x i64]* } %15, 0
  %_6.1 = extractvalue { {}*, [3 x i64]* } %15, 1
  %21 = invoke { i8*, i64* } @"_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h8a0df69562962ac5E"({}* align 1 %_6.0, [3 x i64]* align 8 %_6.1)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { i8*, i64* } %21, 0
  %_5.1 = extractvalue { i8*, i64* } %21, 1
  %22 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  store i8* %_5.0, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  store i64* %_5.1, i64** %23, align 8
  %24 = bitcast { i8*, i64* }* %3 to i8*
  %25 = getelementptr i8, i8* %24, i64 16
  %26 = bitcast i8* %25 to %"alloc::alloc::Global"*
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %29 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8, !nonnull !1, !align !2, !noundef !1
  %31 = insertvalue { i8*, i64* } undef, i8* %28, 0
  %32 = insertvalue { i8*, i64* } %31, i64* %30, 1
  ret { i8*, i64* } %32

bb5:                                              ; preds = %bb6, %bb7
  %33 = bitcast { i8*, i32 }* %2 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = insertvalue { i8*, i32 } undef, i8* %34, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38

bb6:                                              ; preds = %bb7
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h36b456e87efcff26E"({ {}*, [3 x i64]* }* %b) #15
          to label %bb5 unwind label %abort

abort:                                            ; preds = %bb6
  %39 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h5b0a8b17de6e22eeE"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i64* }, align 8
  %2 = call { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h91676a58a6d40908E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1)
  %_4.0 = extractvalue { i8*, i64* } %2, 0
  %_4.1 = extractvalue { i8*, i64* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hea5683992083fda7E"(i8* %_4.0, i64* align 8 %_4.1)
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { {}*, [3 x i64]* } %3, 0
  %_6.1 = extractvalue { {}*, [3 x i64]* } %3, 1
  %9 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %10 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %9, i32 0, i32 0
  store {}* %_6.0, {}** %10, align 8
  %11 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %9, i32 0, i32 1
  store [3 x i64]* %_6.1, [3 x i64]** %11, align 8
  %12 = bitcast { i8*, i64* }* %1 to i8*
  %13 = getelementptr i8, i8* %12, i64 16
  %14 = bitcast i8* %13 to %"alloc::alloc::Global"*
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %1, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %1, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8, !nonnull !1, !align !2, !noundef !1
  %19 = insertvalue { i8*, i64* } undef, i8* %16, 0
  %20 = insertvalue { i8*, i64* } %19, i64* %18, 1
  ret { i8*, i64* } %20

bb4:                                              ; preds = %bb3
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h7db5610545108722E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %_9 = alloca { i8*, i64* }, align 8
  %1 = bitcast { i8*, i64* }* %0 to { {}*, [3 x i64]* }*
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 0
  store {}* %b.0, {}** %2, align 8
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 1
  store [3 x i64]* %b.1, [3 x i64]** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !1, !align !4, !noundef !1
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = insertvalue { i8*, i64* } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64* } %8, i64* %7, 1
  store { i8*, i64* } %9, { i8*, i64* }* %_9, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %10 = bitcast { i8*, i64* }* %_9 to { {}*, [3 x i64]* }*
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = bitcast { {}*, [3 x i64]* }* %10 to { i8*, i64* }*
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 0
  %_6.0 = load i8*, i8** %12, align 8, !nonnull !1, !noundef !1
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 1
  %_6.1 = load i64*, i64** %13, align 8, !nonnull !1, !align !2, !noundef !1
  %14 = call { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hea5683992083fda7E"(i8* %_6.0, i64* align 8 %_6.1)
  %_5.0 = extractvalue { {}*, [3 x i64]* } %14, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %14, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %15 = insertvalue { {}*, [3 x i64]* } undef, {}* %_5.0, 0
  %16 = insertvalue { {}*, [3 x i64]* } %15, [3 x i64]* %_5.1, 1
  ret { {}*, [3 x i64]* } %16
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h7ea9afe2c5ecf9d3E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h5b0a8b17de6e22eeE"({}* align 1 %b.0, [3 x i64]* align 8 %b.1)
  %_2.0 = extractvalue { i8*, i64* } %0, 0
  %_2.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8* %_2.0 to {}*
  %2 = bitcast i64* %_2.1 to [3 x i64]*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62f4934525154803E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hbc7cdc5980b9cae5E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9d7b0c18fd1fa617E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !5, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h55564afad92ea97cE(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h38c04c960eebf80cE"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h87e3171feb73788eE(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h4865af61ebf3e42aE"(i8* %0) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %2 = bitcast i8** %self to {}**
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
  %v = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"* %_6 to %"core::alloc::AllocError"*
  %6 = bitcast i8** %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"*
  %7 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"* %6 to %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"*
  %8 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = bitcast i8** %1 to {}**
  store {}* null, {}** %9, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %10 = load i8*, i8** %1, align 8
  ret i8* %10
}

; Function Attrs: uwtable
define { {}*, [3 x i64]* } @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h1b00dd45901ab6cdE"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i64 }* %self to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_6 = select i1 %2, i64 0, i64 1
  switch i64 %_6, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  call void @_ZN3std7process5abort17hbfbd791ff32f7241E() #14
  unreachable

bb3:                                              ; preds = %start
  %a = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %_5.0 = bitcast { [0 x i8]*, i64 }* %a to {}*
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_5.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: uwtable
define { {}*, [3 x i64]* } @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h422ec070640a408aE"({ i8*, i64 }* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_4 = alloca { i8*, i64 }, align 8
  %data = alloca { {}*, [3 x i64]* }, align 8
  %2 = call { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$4take17hbf612ae13da77f5fE"({ i8*, i64 }* align 8 %self)
  store { i8*, i64 } %2, { i8*, i64 }* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast { i8*, i64 }* %_4 to {}**
  %4 = load {}*, {}** %3, align 8
  %5 = icmp eq {}* %4, null
  %_6 = select i1 %5, i64 0, i64 1
  switch i64 %_6, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb1
  call void @_ZN3std7process5abort17hbfbd791ff32f7241E() #14
  unreachable

bb4:                                              ; preds = %bb1
  %6 = bitcast { i8*, i64 }* %_4 to { [0 x i8]*, i64 }*
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %6, i32 0, i32 0
  %a.0 = load [0 x i8]*, [0 x i8]** %7, align 8, !nonnull !1, !align !4, !noundef !1
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %6, i32 0, i32 1
  %a.1 = load i64, i64* %8, align 8
  %_4.i = invoke i8* @_ZN5alloc5alloc15exchange_malloc17heacd03a78dd2d179E(i64 16, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8f45debeb47b3e2aE.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb4
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8f45debeb47b3e2aE.exit": ; preds = %bb4
  %20 = bitcast i8* %_4.i to { [0 x i8]*, i64 }*
  %21 = bitcast { [0 x i8]*, i64 }* %20 to i64*
  %22 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 0
  store [0 x i8]* %a.0, [0 x i8]** %22, align 8
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 1
  store i64 %a.1, i64* %23, align 8
  br label %bb5

bb5:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8f45debeb47b3e2aE.exit"
  %24 = bitcast { [0 x i8]*, i64 }* %20 to {}*
  %25 = bitcast {}* %24 to i8*
  %_8.0 = bitcast i8* %25 to {}*
  %26 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 0
  store {}* %_8.0, {}** %26, align 8
  %27 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), [3 x i64]** %27, align 8
  %28 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 0
  %_14.0 = load {}*, {}** %28, align 8, !nonnull !1, !align !4, !noundef !1
  %29 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 1
  %_14.1 = load [3 x i64]*, [3 x i64]** %29, align 8, !nonnull !1, !align !2, !noundef !1
  %30 = invoke { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h7ea9afe2c5ecf9d3E"({}* align 1 %_14.0, [3 x i64]* align 8 %_14.1)
          to label %bb6 unwind label %cleanup

bb7:                                              ; preds = %cleanup
  br i1 false, label %bb9, label %bb8

cleanup:                                          ; preds = %bb5
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  %33 = extractvalue { i8*, i32 } %31, 1
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %bb7

bb6:                                              ; preds = %bb5
  %_12.0 = extractvalue { {}*, [3 x i64]* } %30, 0
  %_12.1 = extractvalue { {}*, [3 x i64]* } %30, 1
  %36 = insertvalue { {}*, [3 x i64]* } undef, {}* %_12.0, 0
  %37 = insertvalue { {}*, [3 x i64]* } %36, [3 x i64]* %_12.1, 1
  ret { {}*, [3 x i64]* } %37

bb8:                                              ; preds = %bb9, %bb7
  %38 = bitcast { i8*, i32 }* %1 to i8**
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = insertvalue { i8*, i32 } undef, i8* %39, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43

bb9:                                              ; preds = %bb7
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h36b456e87efcff26E"({ {}*, [3 x i64]* }* %data) #15
          to label %bb8 unwind label %abort

abort:                                            ; preds = %bb9
  %44 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h8a0df69562962ac5E"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hd1062a5e845d8908E"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1)
  %_2.0 = extractvalue { i8*, i64* } %0, 0
  %_2.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64* } @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h1264b6a1c556997dE"(i8* %_2.0, i64* align 8 %_2.1)
  %2 = extractvalue { i8*, i64* } %1, 0
  %3 = extractvalue { i8*, i64* } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { i8*, i64* } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64* } %4, i64* %3, 1
  ret { i8*, i64* } %5
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hd1062a5e845d8908E"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %1 = bitcast { i8*, i64* }* %0 to { {}*, [3 x i64]* }*
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 0
  store {}* %reference.0, {}** %2, align 8
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 1
  store [3 x i64]* %reference.1, [3 x i64]** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = insertvalue { i8*, i64* } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64* } %8, i64* %7, 1
  ret { i8*, i64* } %9
}

; Function Attrs: uwtable
define i64 @opng_bitset_count(i32 %set) unnamed_addr #1 {
start:
  %0 = alloca i32, align 4
  %1 = call i32 @llvm.ctpop.i32(i32 %set)
  store i32 %1, i32* %0, align 4
  %2 = load i32, i32* %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: uwtable
define void @opng_init_iteration(i32 %input_set, i32 %mask, [0 x i8]* align 1 %preset.0, i64 %preset.1, i32* align 4 %output_set) unnamed_addr #1 {
start:
  %0 = and i32 %input_set, %mask
  store i32 %0, i32* %output_set, align 4
  %_8 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$8is_empty17hf2ec66f163b8bdc3E"([0 x i8]* align 1 %preset.0, i64 %preset.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = xor i1 %_8, true
  br i1 %_7, label %bb2, label %bb3

bb3:                                              ; preds = %bb2, %bb1
  ret void

bb2:                                              ; preds = %bb1
  %1 = load i32, i32* %output_set, align 4
  %2 = or i32 %1, 512
  store i32 %2, i32* %output_set, align 4
  br label %bb3
}

; Function Attrs: uwtable
define void @opng_init_iterations() unnamed_addr #1 {
start:
  %_132 = alloca i8, align 1
  %_83 = alloca { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, align 8
  %_74 = alloca { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, align 8
  %_65 = alloca { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, align 8
  %_56 = alloca { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, align 8
  %_47 = alloca { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, align 8
  %_38 = alloca { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, align 8
  %_29 = alloca { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, align 8
  %_28 = alloca { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, align 8
  %presets = alloca [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], align 8
  %image = alloca %Image, align 1
  %options = alloca %Options, align 1
  %process = alloca %Process, align 1
  %preset_index = alloca i64, align 8
  %filter_set = alloca i32, align 4
  %strategy_set = alloca i32, align 4
  %mem_level_set = alloca i32, align 4
  %compr_level_set = alloca i32, align 4
  store i32 0, i32* %compr_level_set, align 4
  store i32 0, i32* %mem_level_set, align 4
  store i32 0, i32* %strategy_set, align 4
  store i32 0, i32* %filter_set, align 4
  %0 = bitcast %Process* %process to i32*
  store i32 0, i32* %0, align 1
  %1 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 1
  store i64 0, i64* %1, align 1
  %2 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 2
  store i32 0, i32* %2, align 1
  %3 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 3
  store i32 0, i32* %3, align 1
  %4 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 4
  store i32 0, i32* %4, align 1
  %5 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 5
  store i32 0, i32* %5, align 1
  %6 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 6
  store i32 0, i32* %6, align 1
  %7 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 7
  store i32 0, i32* %7, align 1
  %8 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 8
  store i32 0, i32* %8, align 1
  %9 = bitcast %Options* %options to i8*
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %Options, %Options* %options, i32 0, i32 1
  store i32 2, i32* %10, align 1
  %11 = getelementptr inbounds %Options, %Options* %options, i32 0, i32 2
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds %Options, %Options* %options, i32 0, i32 3
  store i32 0, i32* %12, align 1
  %13 = getelementptr inbounds %Options, %Options* %options, i32 0, i32 4
  store i32 0, i32* %13, align 1
  %14 = getelementptr inbounds %Options, %Options* %options, i32 0, i32 5
  store i32 0, i32* %14, align 1
  %15 = bitcast %Image* %image to i8*
  store i8 8, i8* %15, align 1
  %16 = getelementptr inbounds %Image, %Image* %image, i32 0, i32 1
  store i8 0, i8* %16, align 1
  %17 = bitcast %Options* %options to i8*
  %18 = load i8, i8* %17, align 1, !range !3, !noundef !1
  %_14 = trunc i8 %18 to i1
  br i1 %_14, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %19 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 2
  %_17 = load i32, i32* %19, align 1
  %_16 = icmp ule i32 %_17, 0
  br i1 %_16, label %bb3, label %bb4

bb1:                                              ; preds = %start
  %20 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 4
  store i32 2147483647, i32* %20, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %21 = getelementptr inbounds %Options, %Options* %options, i32 0, i32 1
  %_22 = load i32, i32* %21, align 1
  %22 = sext i32 %_22 to i64
  store i64 %22, i64* %preset_index, align 8
  %_24 = load i64, i64* %preset_index, align 8
  %_23 = icmp ult i64 %_24, 0
  br i1 %_23, label %bb7, label %bb8

bb4:                                              ; preds = %bb2
  %23 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 2
  %_19 = load i32, i32* %23, align 1
  %24 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 3
  %_20 = load i32, i32* %24, align 1
  %25 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_19, i32 %_20)
  %_21.0 = extractvalue { i32, i1 } %25, 0
  %_21.1 = extractvalue { i32, i1 } %25, 1
  %26 = call i1 @llvm.expect.i1(i1 %_21.1, i1 false)
  br i1 %26, label %panic, label %bb5

bb3:                                              ; preds = %bb2
  call void @_ZN3std9panicking11begin_panic17h67f8f129126404a9E([0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc351 to [0 x i8]*), i64 16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc353 to %"core::panic::location::Location"*)) #14
  unreachable

bb5:                                              ; preds = %bb4
  %27 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 4
  store i32 %_21.0, i32* %27, align 1
  br label %bb6

panic:                                            ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc355 to %"core::panic::location::Location"*)) #14
  unreachable

bb8:                                              ; preds = %bb6
  %_26 = load i64, i64* %preset_index, align 8
  %_25 = icmp ugt i64 %_26, 7
  br i1 %_25, label %bb9, label %bb10

bb7:                                              ; preds = %bb6
  store i64 2, i64* %preset_index, align 8
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7, %bb8
  %28 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_28 to { [0 x i8]*, i64 }*
  %29 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc363 to [0 x i8]*), [0 x i8]** %29, align 8
  %30 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_28, i32 0, i32 1
  %32 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %31, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc363 to [0 x i8]*), [0 x i8]** %32, align 8
  %33 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %31, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_28, i32 0, i32 2
  %35 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %34, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc363 to [0 x i8]*), [0 x i8]** %35, align 8
  %36 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %34, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_28, i32 0, i32 3
  %38 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %37, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc363 to [0 x i8]*), [0 x i8]** %38, align 8
  %39 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %37, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_29 to { [0 x i8]*, i64 }*
  %41 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc363 to [0 x i8]*), [0 x i8]** %41, align 8
  %42 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_29, i32 0, i32 1
  %44 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc363 to [0 x i8]*), [0 x i8]** %44, align 8
  %45 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_29, i32 0, i32 2
  %47 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %46, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc363 to [0 x i8]*), [0 x i8]** %47, align 8
  %48 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %46, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_29, i32 0, i32 3
  %50 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %49, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc363 to [0 x i8]*), [0 x i8]** %50, align 8
  %51 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %49, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_38 to { [0 x i8]*, i64 }*
  %53 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %52, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [1 x i8] }>* @alloc376 to [0 x i8]*), [0 x i8]** %53, align 8
  %54 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %52, i32 0, i32 1
  store i64 1, i64* %54, align 8
  %55 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_38, i32 0, i32 1
  %56 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %55, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [1 x i8] }>* @alloc381 to [0 x i8]*), [0 x i8]** %56, align 8
  %57 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %55, i32 0, i32 1
  store i64 1, i64* %57, align 8
  %58 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_38, i32 0, i32 2
  %59 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %58, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc387 to [0 x i8]*), [0 x i8]** %59, align 8
  %60 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %58, i32 0, i32 1
  store i64 2, i64* %60, align 8
  %61 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_38, i32 0, i32 3
  %62 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %61, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [3 x i8] }>* @alloc371 to [0 x i8]*), [0 x i8]** %62, align 8
  %63 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %61, i32 0, i32 1
  store i64 3, i64* %63, align 8
  %64 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_47 to { [0 x i8]*, i64 }*
  %65 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %64, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [1 x i8] }>* @alloc376 to [0 x i8]*), [0 x i8]** %65, align 8
  %66 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %64, i32 0, i32 1
  store i64 1, i64* %66, align 8
  %67 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_47, i32 0, i32 1
  %68 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %67, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [3 x i8] }>* @alloc385 to [0 x i8]*), [0 x i8]** %68, align 8
  %69 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %67, i32 0, i32 1
  store i64 3, i64* %69, align 8
  %70 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_47, i32 0, i32 2
  %71 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %70, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc387 to [0 x i8]*), [0 x i8]** %71, align 8
  %72 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %70, i32 0, i32 1
  store i64 2, i64* %72, align 8
  %73 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_47, i32 0, i32 3
  %74 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %73, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [3 x i8] }>* @alloc371 to [0 x i8]*), [0 x i8]** %74, align 8
  %75 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %73, i32 0, i32 1
  store i64 3, i64* %75, align 8
  %76 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_56 to { [0 x i8]*, i64 }*
  %77 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %76, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [1 x i8] }>* @alloc376 to [0 x i8]*), [0 x i8]** %77, align 8
  %78 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %76, i32 0, i32 1
  store i64 1, i64* %78, align 8
  %79 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_56, i32 0, i32 1
  %80 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %79, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [1 x i8] }>* @alloc381 to [0 x i8]*), [0 x i8]** %80, align 8
  %81 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %79, i32 0, i32 1
  store i64 1, i64* %81, align 8
  %82 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_56, i32 0, i32 2
  %83 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %82, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc387 to [0 x i8]*), [0 x i8]** %83, align 8
  %84 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %82, i32 0, i32 1
  store i64 2, i64* %84, align 8
  %85 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_56, i32 0, i32 3
  %86 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %85, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc387 to [0 x i8]*), [0 x i8]** %86, align 8
  %87 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %85, i32 0, i32 1
  store i64 2, i64* %87, align 8
  %88 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_65 to { [0 x i8]*, i64 }*
  %89 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %88, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [1 x i8] }>* @alloc376 to [0 x i8]*), [0 x i8]** %89, align 8
  %90 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %88, i32 0, i32 1
  store i64 1, i64* %90, align 8
  %91 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_65, i32 0, i32 1
  %92 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %91, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [3 x i8] }>* @alloc385 to [0 x i8]*), [0 x i8]** %92, align 8
  %93 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %91, i32 0, i32 1
  store i64 3, i64* %93, align 8
  %94 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_65, i32 0, i32 2
  %95 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %94, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc387 to [0 x i8]*), [0 x i8]** %95, align 8
  %96 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %94, i32 0, i32 1
  store i64 2, i64* %96, align 8
  %97 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_65, i32 0, i32 3
  %98 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %97, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc387 to [0 x i8]*), [0 x i8]** %98, align 8
  %99 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %97, i32 0, i32 1
  store i64 2, i64* %99, align 8
  %100 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_74 to { [0 x i8]*, i64 }*
  %101 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %100, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [3 x i8] }>* @alloc384 to [0 x i8]*), [0 x i8]** %101, align 8
  %102 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %100, i32 0, i32 1
  store i64 3, i64* %102, align 8
  %103 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_74, i32 0, i32 1
  %104 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %103, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [1 x i8] }>* @alloc381 to [0 x i8]*), [0 x i8]** %104, align 8
  %105 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %103, i32 0, i32 1
  store i64 1, i64* %105, align 8
  %106 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_74, i32 0, i32 2
  %107 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %106, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc387 to [0 x i8]*), [0 x i8]** %107, align 8
  %108 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %106, i32 0, i32 1
  store i64 2, i64* %108, align 8
  %109 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_74, i32 0, i32 3
  %110 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %109, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc387 to [0 x i8]*), [0 x i8]** %110, align 8
  %111 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %109, i32 0, i32 1
  store i64 2, i64* %111, align 8
  %112 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_83 to { [0 x i8]*, i64 }*
  %113 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %112, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [3 x i8] }>* @alloc384 to [0 x i8]*), [0 x i8]** %113, align 8
  %114 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %112, i32 0, i32 1
  store i64 3, i64* %114, align 8
  %115 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_83, i32 0, i32 1
  %116 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %115, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [3 x i8] }>* @alloc385 to [0 x i8]*), [0 x i8]** %116, align 8
  %117 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %115, i32 0, i32 1
  store i64 3, i64* %117, align 8
  %118 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_83, i32 0, i32 2
  %119 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %118, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc387 to [0 x i8]*), [0 x i8]** %119, align 8
  %120 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %118, i32 0, i32 1
  store i64 2, i64* %120, align 8
  %121 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_83, i32 0, i32 3
  %122 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %121, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc387 to [0 x i8]*), [0 x i8]** %122, align 8
  %123 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %121, i32 0, i32 1
  store i64 2, i64* %123, align 8
  %124 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 0
  %125 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %124 to i8*
  %126 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 64, i1 false)
  %127 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 1
  %128 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %127 to i8*
  %129 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 64, i1 false)
  %130 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 2
  %131 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %130 to i8*
  %132 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 64, i1 false)
  %133 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 3
  %134 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %133 to i8*
  %135 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 64, i1 false)
  %136 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 4
  %137 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %136 to i8*
  %138 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 64, i1 false)
  %139 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 5
  %140 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %139 to i8*
  %141 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 64, i1 false)
  %142 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 6
  %143 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %142 to i8*
  %144 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 64, i1 false)
  %145 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 7
  %146 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %145 to i8*
  %147 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %_83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 64, i1 false)
  %148 = getelementptr inbounds %Options, %Options* %options, i32 0, i32 2
  %_93 = load i32, i32* %148, align 1
  %_96 = load i64, i64* %preset_index, align 8
  %_98 = icmp ult i64 %_96, 8
  %149 = call i1 @llvm.expect.i1(i1 %_98, i1 true)
  br i1 %149, label %bb11, label %panic1

bb9:                                              ; preds = %bb8
  store i64 7, i64* %preset_index, align 8
  br label %bb10

bb11:                                             ; preds = %bb10
  %150 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 %_96
  %151 = bitcast { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %150 to { [0 x i8]*, i64 }*
  %152 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %151, i32 0, i32 0
  %_175.0 = load [0 x i8]*, [0 x i8]** %152, align 8, !nonnull !1, !align !4, !noundef !1
  %153 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %151, i32 0, i32 1
  %_175.1 = load i64, i64* %153, align 8
  call void @opng_init_iteration(i32 %_93, i32 1022, [0 x i8]* align 1 %_175.0, i64 %_175.1, i32* align 4 %compr_level_set)
  br label %bb12

panic1:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_96, i64 8, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc389 to %"core::panic::location::Location"*)) #14
  unreachable

bb12:                                             ; preds = %bb11
  %154 = getelementptr inbounds %Options, %Options* %options, i32 0, i32 3
  %_102 = load i32, i32* %154, align 1
  %_105 = load i64, i64* %preset_index, align 8
  %_107 = icmp ult i64 %_105, 8
  %155 = call i1 @llvm.expect.i1(i1 %_107, i1 true)
  br i1 %155, label %bb13, label %panic2

bb13:                                             ; preds = %bb12
  %156 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 %_105
  %157 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %156, i32 0, i32 1
  %158 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %157, i32 0, i32 0
  %_176.0 = load [0 x i8]*, [0 x i8]** %158, align 8, !nonnull !1, !align !4, !noundef !1
  %159 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %157, i32 0, i32 1
  %_176.1 = load i64, i64* %159, align 8
  call void @opng_init_iteration(i32 %_102, i32 1022, [0 x i8]* align 1 %_176.0, i64 %_176.1, i32* align 4 %mem_level_set)
  br label %bb14

panic2:                                           ; preds = %bb12
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_105, i64 8, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc391 to %"core::panic::location::Location"*)) #14
  unreachable

bb14:                                             ; preds = %bb13
  %160 = getelementptr inbounds %Options, %Options* %options, i32 0, i32 4
  %_111 = load i32, i32* %160, align 1
  %_114 = load i64, i64* %preset_index, align 8
  %_116 = icmp ult i64 %_114, 8
  %161 = call i1 @llvm.expect.i1(i1 %_116, i1 true)
  br i1 %161, label %bb15, label %panic3

bb15:                                             ; preds = %bb14
  %162 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 %_114
  %163 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %162, i32 0, i32 2
  %164 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %163, i32 0, i32 0
  %_177.0 = load [0 x i8]*, [0 x i8]** %164, align 8, !nonnull !1, !align !4, !noundef !1
  %165 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %163, i32 0, i32 1
  %_177.1 = load i64, i64* %165, align 8
  call void @opng_init_iteration(i32 %_111, i32 15, [0 x i8]* align 1 %_177.0, i64 %_177.1, i32* align 4 %strategy_set)
  br label %bb16

panic3:                                           ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_114, i64 8, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc393 to %"core::panic::location::Location"*)) #14
  unreachable

bb16:                                             ; preds = %bb15
  %166 = getelementptr inbounds %Options, %Options* %options, i32 0, i32 5
  %_120 = load i32, i32* %166, align 1
  %_123 = load i64, i64* %preset_index, align 8
  %_125 = icmp ult i64 %_123, 8
  %167 = call i1 @llvm.expect.i1(i1 %_125, i1 true)
  br i1 %167, label %bb17, label %panic4

bb17:                                             ; preds = %bb16
  %168 = getelementptr inbounds [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }], [8 x { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }]* %presets, i64 0, i64 %_123
  %169 = getelementptr inbounds { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }, { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, { [0 x i8]*, i64 } }* %168, i32 0, i32 3
  %170 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %169, i32 0, i32 0
  %_178.0 = load [0 x i8]*, [0 x i8]** %170, align 8, !nonnull !1, !align !4, !noundef !1
  %171 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %169, i32 0, i32 1
  %_178.1 = load i64, i64* %171, align 8
  call void @opng_init_iteration(i32 %_120, i32 63, [0 x i8]* align 1 %_178.0, i64 %_178.1, i32* align 4 %filter_set)
  br label %bb18

panic4:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_123, i64 8, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc395 to %"core::panic::location::Location"*)) #14
  unreachable

bb18:                                             ; preds = %bb17
  %_128 = load i32, i32* %compr_level_set, align 4
  %172 = icmp eq i32 %_128, 0
  br i1 %172, label %bb19, label %bb20

bb19:                                             ; preds = %bb18
  %173 = load i32, i32* %compr_level_set, align 4
  %174 = or i32 %173, 512
  store i32 %174, i32* %compr_level_set, align 4
  br label %bb20

bb20:                                             ; preds = %bb19, %bb18
  %_130 = load i32, i32* %mem_level_set, align 4
  %175 = icmp eq i32 %_130, 0
  br i1 %175, label %bb21, label %bb22

bb21:                                             ; preds = %bb20
  %176 = load i32, i32* %mem_level_set, align 4
  %177 = or i32 %176, 256
  store i32 %177, i32* %mem_level_set, align 4
  br label %bb22

bb22:                                             ; preds = %bb21, %bb20
  %178 = bitcast %Image* %image to i8*
  %_134 = load i8, i8* %178, align 1
  %_133 = icmp ult i8 %_134, 8
  br i1 %_133, label %bb23, label %bb24

bb24:                                             ; preds = %bb22
  %_136 = getelementptr inbounds %Image, %Image* %image, i32 0, i32 1
  %_135 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hcce5de634175d690E"(i8* align 1 %_136)
  br label %bb26

bb23:                                             ; preds = %bb22
  store i8 1, i8* %_132, align 1
  br label %bb25

bb25:                                             ; preds = %bb26, %bb23
  %179 = load i8, i8* %_132, align 1, !range !3, !noundef !1
  %180 = trunc i8 %179 to i1
  br i1 %180, label %bb27, label %bb31

bb26:                                             ; preds = %bb24
  %181 = zext i1 %_135 to i8
  store i8 %181, i8* %_132, align 1
  br label %bb25

bb31:                                             ; preds = %bb25
  %_141 = load i32, i32* %strategy_set, align 4
  %182 = icmp eq i32 %_141, 0
  br i1 %182, label %bb32, label %bb33

bb27:                                             ; preds = %bb25
  %_137 = load i32, i32* %strategy_set, align 4
  %183 = icmp eq i32 %_137, 0
  br i1 %183, label %bb28, label %bb29

bb28:                                             ; preds = %bb27
  %184 = load i32, i32* %strategy_set, align 4
  %185 = or i32 %184, 1
  store i32 %185, i32* %strategy_set, align 4
  br label %bb29

bb29:                                             ; preds = %bb28, %bb27
  %_139 = load i32, i32* %filter_set, align 4
  %186 = icmp eq i32 %_139, 0
  br i1 %186, label %bb30, label %bb35

bb30:                                             ; preds = %bb29
  %187 = load i32, i32* %filter_set, align 4
  %188 = or i32 %187, 1
  store i32 %188, i32* %filter_set, align 4
  br label %bb35

bb35:                                             ; preds = %bb34, %bb33, %bb30, %bb29
  %_145 = load i32, i32* %compr_level_set, align 4
  %189 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 5
  store i32 %_145, i32* %189, align 1
  %_146 = load i32, i32* %mem_level_set, align 4
  %190 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 6
  store i32 %_146, i32* %190, align 1
  %_147 = load i32, i32* %strategy_set, align 4
  %191 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 7
  store i32 %_147, i32* %191, align 1
  %_148 = load i32, i32* %filter_set, align 4
  %192 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 8
  store i32 %_148, i32* %192, align 1
  %_150 = load i32, i32* %compr_level_set, align 4
  %_149 = call i64 @opng_bitset_count(i32 %_150)
  br label %bb36

bb32:                                             ; preds = %bb31
  %193 = load i32, i32* %strategy_set, align 4
  %194 = or i32 %193, 2
  store i32 %194, i32* %strategy_set, align 4
  br label %bb33

bb33:                                             ; preds = %bb32, %bb31
  %_143 = load i32, i32* %filter_set, align 4
  %195 = icmp eq i32 %_143, 0
  br i1 %195, label %bb34, label %bb35

bb34:                                             ; preds = %bb33
  %196 = load i32, i32* %filter_set, align 4
  %197 = or i32 %196, 32
  store i32 %197, i32* %filter_set, align 4
  br label %bb35

bb36:                                             ; preds = %bb35
  %_153 = load i32, i32* %strategy_set, align 4
  %_152 = and i32 %_153, -13
  %_151 = call i64 @opng_bitset_count(i32 %_152)
  br label %bb37

bb37:                                             ; preds = %bb36
  %198 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_149, i64 %_151)
  %_156.0 = extractvalue { i64, i1 } %198, 0
  %_156.1 = extractvalue { i64, i1 } %198, 1
  %199 = call i1 @llvm.expect.i1(i1 %_156.1, i1 false)
  br i1 %199, label %panic5, label %bb38

bb38:                                             ; preds = %bb37
  %_159 = load i32, i32* %strategy_set, align 4
  %_158 = and i32 %_159, 12
  %_157 = call i64 @opng_bitset_count(i32 %_158)
  br label %bb39

panic5:                                           ; preds = %bb37
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.3 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc397 to %"core::panic::location::Location"*)) #14
  unreachable

bb39:                                             ; preds = %bb38
  %200 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_156.0, i64 %_157)
  %_165.0 = extractvalue { i64, i1 } %200, 0
  %_165.1 = extractvalue { i64, i1 } %200, 1
  %201 = call i1 @llvm.expect.i1(i1 %_165.1, i1 false)
  br i1 %201, label %panic6, label %bb40

bb40:                                             ; preds = %bb39
  %_167 = load i32, i32* %mem_level_set, align 4
  %_166 = call i64 @opng_bitset_count(i32 %_167)
  br label %bb41

panic6:                                           ; preds = %bb39
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc399 to %"core::panic::location::Location"*)) #14
  unreachable

bb41:                                             ; preds = %bb40
  %202 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_165.0, i64 %_166)
  %_168.0 = extractvalue { i64, i1 } %202, 0
  %_168.1 = extractvalue { i64, i1 } %202, 1
  %203 = call i1 @llvm.expect.i1(i1 %_168.1, i1 false)
  br i1 %203, label %panic7, label %bb42

bb42:                                             ; preds = %bb41
  %_170 = load i32, i32* %filter_set, align 4
  %_169 = call i64 @opng_bitset_count(i32 %_170)
  br label %bb43

panic7:                                           ; preds = %bb41
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.3 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc399 to %"core::panic::location::Location"*)) #14
  unreachable

bb43:                                             ; preds = %bb42
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_168.0, i64 %_169)
  %_171.0 = extractvalue { i64, i1 } %204, 0
  %_171.1 = extractvalue { i64, i1 } %204, 1
  %205 = call i1 @llvm.expect.i1(i1 %_171.1, i1 false)
  br i1 %205, label %panic8, label %bb44

bb44:                                             ; preds = %bb43
  %206 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 1
  store i64 %_171.0, i64* %206, align 1
  %207 = getelementptr inbounds %Process, %Process* %process, i32 0, i32 1
  %_173 = load i64, i64* %207, align 1
  %_172 = icmp ule i64 %_173, 0
  br i1 %_172, label %bb45, label %bb46

panic8:                                           ; preds = %bb43
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.3 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc399 to %"core::panic::location::Location"*)) #14
  unreachable

bb46:                                             ; preds = %bb44
  ret void

bb45:                                             ; preds = %bb44
  call void @_ZN3std9panicking11begin_panic17h67f8f129126404a9E([0 x i8]* align 1 bitcast (<{ [28 x i8] }>* @alloc400 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc402 to %"core::panic::location::Location"*)) #14
  unreachable
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  call void @opng_init_iterations()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #7

; Function Attrs: noreturn uwtable
declare void @_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE({}* align 1, [3 x i64]* align 8, i64* align 8, %"core::panic::location::Location"* align 8, i1 zeroext) unnamed_addr #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #10

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #11

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #12

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #11

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #11

; Function Attrs: cold noreturn uwtable
declare void @_ZN3std7process5abort17hbfbd791ff32f7241E() unnamed_addr #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #9

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #13

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #9

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #11 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #12 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #13 = { nofree nosync nounwind readnone willreturn }
attributes #14 = { noreturn }
attributes #15 = { noinline }
attributes #16 = { noinline noreturn nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 8}
!3 = !{i8 0, i8 2}
!4 = !{i64 1}
!5 = !{i64 1, i64 -9223372036854775807}
!6 = !{i64 1, i64 0}
!7 = !{i32 3278916}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_init_iterations.rs.bc", hash: (1563099541, 4079560840, 2996305281, 3425208956, 3368098642))
^1 = gv: (name: "_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h86f65c8e997a980cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^88), (callee: ^103)), refs: (^94)))) ; guid = 144366375227693496
^2 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hea5683992083fda7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^104))))) ; guid = 173027924529577175
^3 = gv: (name: "alloc393", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^70)))) ; guid = 223613578387240025
^4 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^5 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9d7b0c18fd1fa617E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 786373233918042424
^6 = gv: (name: "alloc344", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 818581040012989036
^7 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17hf54c41baf8e02371E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^85))))) ; guid = 844014826465445061
^8 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17hdbbae521fb92a9d1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 916683026555353120
^9 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h1264b6a1c556997dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 1031033369904714879
^10 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17ha1a50b47f47a95c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^104))))) ; guid = 1064689618587944819
^11 = gv: (name: "_ZN4core3ptr5write17h75a17ecd480269eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 1150610230015331163
^12 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1068b6548292bf42E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 1207193494769370640
^13 = gv: (name: "_ZN4core3ptr4read17hfad4ba9b6446e219E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29))) ; guid = 1275191413990946433
^14 = gv: (name: "opng_bitset_count", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 1306151882005239416
^15 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h56a8d66a8d287e81E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^49), (callee: ^5))))) ; guid = 1515789441488747041
^16 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^17 = gv: (name: "_ZN5alloc5alloc5alloc17h410c1b68d7642cc3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^55), (callee: ^47), (callee: ^69))))) ; guid = 1926509090594805690
^18 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h406e3c03cbf4d6cfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1942835730476062572
^19 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h1f51b1aa26d6ae55E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 2427803292372024593
^20 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^21 = gv: (name: "alloc353", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^70)))) ; guid = 2729367589706351599
^22 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hbcb9b560738d0a5cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^5), (callee: ^7), (callee: ^12))))) ; guid = 2905592531857472889
^23 = gv: (name: "alloc381", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3044015128679356986
^24 = gv: (name: "alloc376", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3361662240248138692
^25 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17hb86d3917a774c980E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^55), (callee: ^47), (callee: ^16))))) ; guid = 3808620951141331130
^26 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h3709104f9722cb99E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^92), (callee: ^101))))) ; guid = 3816767080145744657
^27 = gv: (name: "alloc351", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3989050383177124720
^28 = gv: (name: "alloc347", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^84)))) ; guid = 4176208220870104992
^29 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h22319e712f18a973E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^99), (callee: ^101))))) ; guid = 4279559384156053427
^30 = gv: (name: "_ZN5alloc5alloc7dealloc17h55564afad92ea97cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^55), (callee: ^47), (callee: ^32))))) ; guid = 4324036465859316799
^31 = gv: (name: "_ZN3std7process5abort17hbfbd791ff32f7241E") ; guid = 4619386724051639732
^32 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^33 = gv: (name: "alloc371", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4648677402263197958
^34 = gv: (name: "_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h422ec070640a408aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 79, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^39), (callee: ^31), (callee: ^57), (callee: ^46), (callee: ^112), (callee: ^119)), refs: (^94, ^44)))) ; guid = 4758290851207882997
^35 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h47da3da73fef38e2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^83), (callee: ^18))))) ; guid = 5235618825436767821
^36 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h3b3ef58a162229f1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^87))))) ; guid = 5242260313684286025
^37 = gv: (name: "alloc389", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^70)))) ; guid = 5496643296304025006
^38 = gv: (name: "llvm.trap") ; guid = 6116349651215144041
^39 = gv: (name: "_ZN4core6option15Option$LT$T$GT$4take17hbf612ae13da77f5fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^107))))) ; guid = 6145691903127967176
^40 = gv: (name: "_ZN5alloc5alloc8box_free17h947cdfb27f16e26eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^65), (callee: ^111), (callee: ^35), (callee: ^26), (callee: ^113)), refs: (^94)))) ; guid = 6341194323589142838
^41 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^42 = gv: (name: "alloc385", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6818422933352162766
^43 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^44 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63, ^89)))) ; guid = 7058661757281517177
^45 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h38c04c960eebf80cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^76))))) ; guid = 7164046073983157599
^46 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h7ea9afe2c5ecf9d3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^98))))) ; guid = 7186268961162306060
^47 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h24172e61b024bc0cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^36), (callee: ^19))))) ; guid = 7377334863608666354
^48 = gv: (name: "llvm.uadd.with.overflow.i32") ; guid = 7434724336648776420
^49 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h8ee6be03a2640111E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^53), (callee: ^101))))) ; guid = 7472664343092697007
^50 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h752bdc452401eb91E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^66))))) ; guid = 7602931662626130051
^51 = gv: (name: "_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17h64e0bc744b3fcceeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 7734983587136675995
^52 = gv: (name: "alloc355", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^70)))) ; guid = 7784142364241338671
^53 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf2472647ceef402bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 7848843339468952724
^54 = gv: (name: "_ZN4core3ptr4read17h9373ff0c984b76a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11))) ; guid = 7856527586404652446
^55 = gv: (name: "_ZN4core5alloc6layout6Layout4size17hbc7cdc5980b9cae5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 8434198635078067157
^56 = gv: (name: "alloc391", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^70)))) ; guid = 8545960887905763487
^57 = gv: (name: "_ZN5alloc5alloc15exchange_malloc17heacd03a78dd2d179E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23, calls: ((callee: ^111), (callee: ^45), (callee: ^15), (callee: ^118)), refs: (^120)))) ; guid = 8688884093171691587
^58 = gv: (name: "alloc397", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^70)))) ; guid = 8835187228401944142
^59 = gv: (name: "alloc395", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^70)))) ; guid = 8846366410709215984
^60 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109, ^95, ^34)))) ; guid = 9084335371190407978
^61 = gv: (name: "_ZN3std9panicking11begin_panic17h67f8f129126404a9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^80), (callee: ^1)), refs: (^94)))) ; guid = 9259881399743913448
^62 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$3len17h09f95103082f75a9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 15))) ; guid = 9750229603530539206
^63 = gv: (name: "_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbaee5456e1344d3eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^67))))) ; guid = 9867554557638542760
^64 = gv: (name: "_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h8a0df69562962ac5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^108), (callee: ^9))))) ; guid = 9893114957207899162
^65 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h529cbc83bb1a8bc4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^10))))) ; guid = 10002459688224030442
^66 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hff2eeff80b146614E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 10047095670150252059
^67 = gv: (name: "_ZN4core3any6TypeId2of17h88b5ed8b0461053fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 10252848341015340899
^68 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^69 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^70 = gv: (name: "alloc401", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10858634280066436741
^71 = gv: (name: "llvm.ctpop.i32") ; guid = 10956606204485869642
^72 = gv: (name: "alloc384", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11335174860213051303
^73 = gv: (name: "_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE") ; guid = 11379753628054763235
^74 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h3f7bd9e83520749eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 11437870076570552460
^75 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$8is_empty17hf2ec66f163b8bdc3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^62))))) ; guid = 11827820772633615322
^76 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17h87e3171feb73788eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^55), (callee: ^115), (callee: ^17), (callee: ^25), (callee: ^29), (callee: ^8), (callee: ^77), (callee: ^22), (callee: ^50)), refs: (^28)))) ; guid = 12024434448755291589
^77 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h4865af61ebf3e42aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 12406813732760103694
^78 = gv: (name: "opng_init_iteration", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^75))))) ; guid = 12546211909989998566
^79 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h1a1bc2566f4a927fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 12831598434823684183
^80 = gv: (name: "_ZN4core5panic8location8Location6caller17h7f64b64dd07cf900E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 12883544606276450482
^81 = gv: (name: "str.3", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13247362624761613798
^82 = gv: (name: "alloc387", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13389804807080899698
^83 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h82f6bcd1ecd3e901E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^104), (callee: ^101))))) ; guid = 13393329457503351863
^84 = gv: (name: "alloc346", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13432981124750115522
^85 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17ha64efba23f321b2fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 13488508046491284974
^86 = gv: (name: "alloc402", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^70)))) ; guid = 13605730338802870581
^87 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h2a5ce6afbdb44ed4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 13733614116678853412
^88 = gv: (name: "_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17hd58543739f27a409E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^105), (callee: ^73)), refs: (^94, ^60)))) ; guid = 13862521609347918996
^89 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17hf8f8ff14d5faca11E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13985401131681898872
^90 = gv: (name: "alloc345", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 14220081969828405585
^91 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^92 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h73ad4a8df9155630E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^5))))) ; guid = 14559805220561039753
^93 = gv: (name: "alloc400", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14799687763970230900
^94 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^95 = gv: (name: "_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h1b00dd45901ab6cdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^31)), refs: (^44)))) ; guid = 15389229999359261258
^96 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h52251a35de3c76f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 15499625216381860472
^97 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15527259761451728410
^98 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h5b0a8b17de6e22eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^114), (callee: ^2)), refs: (^94)))) ; guid = 15617933664006011773
^99 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he74de727a1f2c1d5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^74), (callee: ^96))))) ; guid = 15699594726192722704
^100 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^106))))) ; guid = 15822663052811949562
^101 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6443d1eb178b31c4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 15891806954427221380
^102 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_some17hcce5de634175d690E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 16040501302599435313
^103 = gv: (name: "_ZN4core4hint9black_box17h08b786061734ab8fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 16157344978275889313
^104 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he96b07c6bc0c4feaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 16369494208168276158
^105 = gv: (name: "_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17h1e2c8a11e20e654fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22))) ; guid = 16491818314560097412
^106 = gv: (name: "opng_init_iterations", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 476, calls: ((callee: ^61), (callee: ^68), (callee: ^78), (callee: ^117), (callee: ^102), (callee: ^14)), refs: (^21, ^27, ^52, ^97, ^120, ^24, ^23, ^82, ^33, ^42, ^72, ^37, ^56, ^3, ^59, ^58, ^81, ^110, ^86, ^93)))) ; guid = 16554653516651025225
^107 = gv: (name: "_ZN4core3mem7replace17hf85f537d74b28395E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^13), (callee: ^11)), refs: (^94)))) ; guid = 16693076202381732991
^108 = gv: (name: "_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hd1062a5e845d8908E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 16700458509526132611
^109 = gv: (name: "_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17h95605db71441b579E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 16719800577063261181
^110 = gv: (name: "alloc399", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^70)))) ; guid = 17051071512501623546
^111 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hf9ba4584f1ffdb49E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^79))))) ; guid = 17163093544211736985
^112 = gv: (name: "_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h36b456e87efcff26E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^40), (callee: ^119)), refs: (^94)))) ; guid = 17366882610940272092
^113 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62f4934525154803E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^55), (callee: ^5), (callee: ^30))))) ; guid = 17604180544343213794
^114 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h91676a58a6d40908E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^54), (callee: ^116), (callee: ^64), (callee: ^112), (callee: ^119)), refs: (^94)))) ; guid = 17800989320177739753
^115 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17hc54daa77c589d2adE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^47), (callee: ^101))))) ; guid = 17938327877276281251
^116 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h7db5610545108722E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^2))))) ; guid = 18007714416716857201
^117 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^118 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^119 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^120 = gv: (name: "alloc363", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18440057384068953199
^121 = blockcount: 321
