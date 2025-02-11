; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs.bc'
source_filename = "opng_optimize.a5291465-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>" = type { %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]" }
%"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]" = type { { [0 x i8]*, i64 }*, i64**, i64**, i64** }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"[closure@std::panicking::begin_panic<&str>::{closure#0}]" = type { { [0 x i8]*, i64 }, %"core::panic::location::Location"* }
%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>" = type { i32, [5 x i32] }
%"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>" = type { %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>" }
%"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>, i32>" = type { [4 x i64] }
%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Err" = type { [1 x i64], { {}*, [3 x i64]* } }
%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Ok" = type { [1 x i32], i32 }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>" = type { i64, i64, %"core::cell::RefCell<OpngOptions>" }
%"core::cell::RefCell<OpngOptions>" = type { i64, %"core::cell::UnsafeCell<OpngOptions>", [4 x i8] }
%"core::cell::UnsafeCell<OpngOptions>" = type { %OpngOptions }
%OpngOptions = type <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %"core::option::Option<alloc::string::String>", %"core::option::Option<alloc::string::String>", %"core::option::Option<alloc::string::String>", i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>
%"core::option::Option<alloc::string::String>" = type { {}*, [2 x i64] }
%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>" = type { i64, i64, %"core::cell::RefCell<OpngEngine>" }
%"core::cell::RefCell<OpngEngine>" = type { i64, %"core::cell::UnsafeCell<OpngEngine>", [7 x i8] }
%"core::cell::UnsafeCell<OpngEngine>" = type { %OpngEngine }
%OpngEngine = type { i8 }
%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>" = type { i64, i64, %"core::cell::RefCell<ExceptionContext>" }
%"core::cell::RefCell<ExceptionContext>" = type { i64, %"core::cell::UnsafeCell<ExceptionContext>", [7 x i8] }
%"core::cell::UnsafeCell<ExceptionContext>" = type { %ExceptionContext }
%ExceptionContext = type <{ i8, %"core::option::Option<alloc::string::String>" }>
%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>" = type { i64, i64, %"core::cell::RefCell<OpngProcess>" }
%"core::cell::RefCell<OpngProcess>" = type { i64, %"core::cell::UnsafeCell<OpngProcess>", [4 x i8] }
%"core::cell::UnsafeCell<OpngProcess>" = type { %OpngProcess }
%OpngProcess = type <{ i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>
%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>" = type { i64, i64, %"core::cell::RefCell<OpngSummary>" }
%"core::cell::RefCell<OpngSummary>" = type { i64, %"core::cell::UnsafeCell<OpngSummary>" }
%"core::cell::UnsafeCell<OpngSummary>" = type { %OpngSummary }
%OpngSummary = type <{ i32, i32, i32, i32 }>
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"core::cell::BorrowError" = type {}
%"core::cell::BorrowMutError" = type {}
%"core::mem::maybe_uninit::MaybeUninit<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>" = type { [4 x i64] }
%"alloc::alloc::Global" = type {}
%"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>" = type { [0 x i8] }
%"core::option::Option<alloc::string::String>::Some" = type { %"alloc::string::String" }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8* }> <{ i8* bitcast (void ({ i8*, i64 }*)* @"_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17h56b0fe81c01b42ddE" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast ({ {}*, [3 x i64]* } ({ i8*, i64 }*)* @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h9e706f129680b455E" to i8*), i8* bitcast ({ {}*, [3 x i64]* } ({ i8*, i64 }*)* @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17hed02614fed6793e6E" to i8*) }>, align 8
@alloc147 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc148 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc147, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc168 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc268 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc269 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc268, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc270 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc271 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc270, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc272 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"already borrowed" }>, align 1
@alloc276 = private unnamed_addr constant <{ [24 x i8] }> <{ [24 x i8] c"already mutably borrowed" }>, align 1
@alloc277 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc278 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc277, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%"core::cell::BorrowError"*)* @"_ZN4core3ptr44drop_in_place$LT$core..cell..BorrowError$GT$17h456b993932995fd2E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 (%"core::cell::BorrowError"*, %"core::fmt::Formatter"*)* @"_ZN60_$LT$core..cell..BorrowError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8006753225ae68ddE" to i8*) }>, align 8
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%"core::cell::BorrowMutError"*)* @"_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17hc9babec9e5d6d829E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 (%"core::cell::BorrowMutError"*, %"core::fmt::Formatter"*)* @"_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4c633e1f2b589beE" to i8*) }>, align 8
@alloc285 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc286 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc285, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc287 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc288 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc287, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@vtable.3 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ({ [0 x i8]*, i64 }*)* @"_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17h66a54c4cd4d4c095E" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i64 ({ [0 x i8]*, i64 }*)* @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5080102582cac21bE" to i8*) }>, align 8
@alloc324 = private unnamed_addr constant <{ [95 x i8] }> <{ [95 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs" }>, align 1
@alloc293 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00b\00\00\00\10\00\00\00" }>, align 8
@alloc294 = private unnamed_addr constant <{ [33 x i8] }> <{ [33 x i8] c"The OptiPNG engine is not running" }>, align 1
@alloc296 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00c\00\00\00\09\00\00\00" }>, align 8
@alloc118 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"** Processing: " }>, align 1
@alloc179 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc119 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc118, i32 0, i32 0, i32 0), [8 x i8] c"\0F\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc179, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc298 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00g\00\00\00\0D\00\00\00" }>, align 8
@alloc300 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00g\00\00\00\05\00\00\00" }>, align 8
@str.4 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc302 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00|\00\00\00\15\00\00\00" }>, align 8
@alloc304 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00|\00\00\00\0D\00\00\00" }>, align 8
@alloc306 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00}\00\00\000\00\00\00" }>, align 8
@alloc307 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"Unknown error" }>, align 1
@alloc309 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00m\00\00\00\14\00\00\00" }>, align 8
@alloc311 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00n\00\00\00\15\00\00\00" }>, align 8
@alloc313 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00n\00\00\00\0D\00\00\00" }>, align 8
@alloc315 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00o\00\00\00\15\00\00\00" }>, align 8
@alloc317 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00o\00\00\00\0D\00\00\00" }>, align 8
@alloc319 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00q\00\00\00\14\00\00\00" }>, align 8
@alloc321 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00r\00\00\00\18\00\00\00" }>, align 8
@alloc323 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00s\00\00\00\19\00\00\00" }>, align 8
@alloc325 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc324, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00s\00\00\00\11\00\00\00" }>, align 8
@alloc157 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"Error: " }>, align 1
@alloc158 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [7 x i8] }>, <{ [7 x i8] }>* @alloc157, i32 0, i32 0, i32 0), [8 x i8] c"\07\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc179, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc326 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"example.png" }>, align 1
@alloc177 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c"Optimization result: " }>, align 1
@alloc178 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc177, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc179, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: uwtable
define i32 @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h035f8a4da253c8dbE"(%"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %self) unnamed_addr #0 {
start:
  %_3 = alloca %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", align 8
  %_args = alloca {}, align 1
  %0 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %self to %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"*
  %1 = bitcast %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_3 to i8*
  %2 = bitcast %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  %3 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h197e54b00c4ab098E(%"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h5c7a046ac1e49891E"(i8* %unique) unnamed_addr #1 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hb209b71908428ae0E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h0b7974dc5420d35cE"(i8* %pointer) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h98160baaad354300E"(i8* %pointer.0, i64* align 8 %pointer.1) unnamed_addr #1 {
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
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h553415cac400cf39E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h458154cb2b919524E"()
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

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17he0a43d39c4c4ea92E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hc36211f8bb872d74E"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i64, i64 }* %1 to %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"*
  %3 = bitcast %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"* %2 to %"core::alloc::layout::LayoutError"*
  %4 = bitcast { i64, i64 }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %9 = load i64, i64* %8, align 8, !range !3, !noundef !1
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11
}

; Function Attrs: uwtable
define i64 @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5080102582cac21bE"({ [0 x i8]*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3any6TypeId2of17h88ef0599bb2d6c9cE()
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: noinline noreturn uwtable
define void @_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17hdb885c87703822deE(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %f) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_2 = alloca %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", align 8
  %1 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_2 to i8*
  %2 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17hd9a5131f56167644E"(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_2) #17
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint9black_box17h5a6f6172961e681bE()
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

; Function Attrs: uwtable
define void @_ZN3std5panic12catch_unwind17h001ad1b5506c1da2E(%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* sret(%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>") %0, %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %f) unnamed_addr #0 {
start:
  %_2 = alloca %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>", align 8
  %1 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %_2 to i8*
  %2 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  call void @_ZN3std9panicking3try17hf6208ff9fdd2589aE(%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* sret(%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>") %0, %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: cold noinline noreturn uwtable
define void @_ZN3std9panicking11begin_panic17h2ed28aec4862cbd2E([0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #3 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_4 = alloca i8, align 1
  %_3 = alloca %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", align 8
  store i8 1, i8* %_4, align 1
  %loc = invoke align 8 %"core::panic::location::Location"* @_ZN4core5panic8location8Location6caller17h36d2ae0964437c59E(%"core::panic::location::Location"* align 8 %0)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %2 = load i8, i8* %_4, align 1, !range !4, !noundef !1
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
  invoke void @_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17hdb885c87703822deE(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_3) #17
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
define { i8*, i64 } @"_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17h380867385e02af03E"([0 x i8]* align 1 %inner.0, i64 %inner.1) unnamed_addr #0 {
start:
  %_2 = alloca { i8*, i64 }, align 8
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %inner.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %inner.1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !align !5
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  store i8* %5, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !align !5
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i8*, i64 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %13, 1
  ret { i8*, i64 } %15
}

; Function Attrs: inlinehint noreturn uwtable
define void @"_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17hd9a5131f56167644E"(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_1) unnamed_addr #4 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_8 = alloca i64*, align 8
  %_6 = alloca { i8*, i64 }, align 8
  %1 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_1 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %_7.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !1, !align !5, !noundef !1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %_7.1 = load i64, i64* %3, align 8
  %4 = call { i8*, i64 } @"_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17h380867385e02af03E"([0 x i8]* align 1 %_7.0, i64 %_7.1)
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
  invoke void @_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE({}* align 1 %_3.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8*, i8* }>* @vtable.0 to [3 x i64]*), i64* align 8 %8, %"core::panic::location::Location"* align 8 %_10, i1 zeroext true) #17
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
define void @_ZN3std9panicking3try17hf6208ff9fdd2589aE(%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* sret(%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>") %0, %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %f) unnamed_addr #0 {
start:
  %_2.i = alloca %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>", align 8
  %1 = alloca i32, align 4
  %_4 = alloca %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>", align 8
  %_3 = alloca %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>", align 8
  %data = alloca %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>, i32>", align 8
  %2 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %_4 to i8*
  %3 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 32, i1 false)
  %4 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %_2.i to i8*
  %5 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 32, i1 false)
  %6 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %_3 to %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"*
  %7 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %6 to i8*
  %8 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 32, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>, i32>"* %data to %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"*
  %10 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %9 to i8*
  %11 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 32, i1 false)
  %data_ptr = bitcast %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>, i32>"* %data to i8*
  %12 = call i32 @__rust_try(void (i8*)* @_ZN3std9panicking3try7do_call17haeb78037540ae025E, i8* %data_ptr, void (i8*, i8*)* @_ZN3std9panicking3try8do_catch17h1931938a5744c2d1E)
  store i32 %12, i32* %1, align 4
  %_9 = load i32, i32* %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb1
  %13 = icmp eq i32 %_9, 0
  br i1 %13, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %14 = bitcast %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>, i32>"* %data to i32*
  %_14 = load i32, i32* %14, align 8
  br label %bb4

bb5:                                              ; preds = %bb2
  %15 = bitcast %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>, i32>"* %data to { i8*, i64* }*
  %16 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %15, i32 0, i32 0
  %_17.0 = load i8*, i8** %16, align 8, !nonnull !1, !align !5, !noundef !1
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %15, i32 0, i32 1
  %_17.1 = load i64*, i64** %17, align 8, !nonnull !1, !align !2, !noundef !1
  %18 = bitcast i8* %_17.0 to {}*
  %19 = bitcast i64* %_17.1 to [3 x i64]*
  %20 = insertvalue { {}*, [3 x i64]* } undef, {}* %18, 0
  %21 = insertvalue { {}*, [3 x i64]* } %20, [3 x i64]* %19, 1
  %_16.0 = extractvalue { {}*, [3 x i64]* } %21, 0
  %_16.1 = extractvalue { {}*, [3 x i64]* } %21, 1
  br label %bb6

bb6:                                              ; preds = %bb5
  %22 = bitcast %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* %0 to %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Err"*
  %23 = getelementptr inbounds %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Err", %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Err"* %22, i32 0, i32 1
  %24 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %23, i32 0, i32 0
  store {}* %_16.0, {}** %24, align 8
  %25 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %23, i32 0, i32 1
  store [3 x i64]* %_16.1, [3 x i64]** %25, align 8
  %26 = bitcast %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* %0 to i32*
  store i32 1, i32* %26, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb6
  ret void

bb4:                                              ; preds = %bb3
  %27 = bitcast %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* %0 to %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Ok"*
  %28 = getelementptr inbounds %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Ok", %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Ok"* %27, i32 0, i32 1
  store i32 %_14, i32* %28, align 4
  %29 = bitcast %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* %0 to i32*
  store i32 0, i32* %29, align 8
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define void @_ZN3std9panicking3try7do_call17haeb78037540ae025E(i8* %data) unnamed_addr #1 {
start:
  %0 = alloca i32, align 4
  %_10 = alloca %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>", align 8
  %f = alloca %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>", align 8
  %data1 = bitcast i8* %data to %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>, i32>"*
  %_7 = bitcast %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>, i32>"* %data1 to %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"*
  call void @"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17h97c30b02dc6edc5fE"(%"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* sret(%"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>") %f, %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* align 8 %_7)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %_10 to i8*
  %2 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  %_9 = call i32 @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h035f8a4da253c8dbE"(%"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %_10)
  br label %bb2

bb2:                                              ; preds = %bb1
  store i32 %_9, i32* %0, align 4
  %3 = load i32, i32* %0, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = bitcast %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>, i32>"* %data1 to i32*
  store i32 %3, i32* %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN3std9panicking3try8do_catch17h1931938a5744c2d1E(i8* %data, i8* %payload) unnamed_addr #1 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %data1 = bitcast i8* %data to %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>, i32>"*
  %1 = call { {}*, [3 x i64]* } @_ZN3std9panicking3try7cleanup17h2ed61da26aa1440dE(i8* %payload)
  %obj.0 = extractvalue { {}*, [3 x i64]* } %1, 0
  %obj.1 = extractvalue { {}*, [3 x i64]* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i8*, i64* }* %0 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  store {}* %obj.0, {}** %3, align 8
  %4 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  store [3 x i64]* %obj.1, [3 x i64]** %4, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8, !nonnull !1, !align !5, !noundef !1
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8, !nonnull !1, !align !2, !noundef !1
  %9 = insertvalue { i8*, i64* } undef, i8* %6, 0
  %10 = insertvalue { i8*, i64* } %9, i64* %8, 1
  %_8.0 = extractvalue { i8*, i64* } %10, 0
  %_8.1 = extractvalue { i8*, i64* } %10, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = bitcast %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>, i32>"* %data1 to { i8*, i64* }*
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 0
  store i8* %_8.0, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 1
  store i64* %_8.1, i64** %13, align 8
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8268bb7a2161a3beE"({ [0 x i8]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !5, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"() unnamed_addr #1 {
start:
  ret i32 0
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN46_$LT$i64$u20$as$u20$core..default..Default$GT$7default17h499051280af90f40E"() unnamed_addr #1 {
start:
  ret i64 0
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"() unnamed_addr #1 {
start:
  ret i32 0
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN46_$LT$u64$u20$as$u20$core..default..Default$GT$7default17h5244c51549bdba61E"() unnamed_addr #1 {
start:
  ret i64 0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN47_$LT$bool$u20$as$u20$core..default..Default$GT$7default17h0550b234379d5349E"() unnamed_addr #1 {
start:
  ret i1 false
}

; Function Attrs: uwtable
define i64 @_ZN4core3any6TypeId2of17h88ef0599bb2d6c9cE() unnamed_addr #0 {
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h037e3219149f2586E({ [0 x i8]*, i64 }* align 8 %x) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17he1e62079e698090eE({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8268bb7a2161a3beE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hec1768cae9c4771bE(i32* align 4 %x) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h0c5ffe844ca84bc6E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h0c5ffe844ca84bc6E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #1 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i32*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i32* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !5, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !5, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17he1e62079e698090eE({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f) unnamed_addr #1 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast { [0 x i8]*, i64 }* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !5, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !5, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hd9431f2288eef4b2E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #1 {
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
  %2 = load i8, i8* %_3, align 1, !range !4, !noundef !1
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
  %11 = load i64*, i64** %10, align 8, !align !2
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
  call void @_ZN4core3fmt9Arguments6new_v117hd9431f2288eef4b2E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc148 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc168 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc269 to %"core::panic::location::Location"*)) #17
  unreachable
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem11size_of_val17h01ca255af539ec4fE(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %val) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 192, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem11size_of_val17h4cda1a45d7c48da3E(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %val) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 32, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem11size_of_val17h689f7fd02f65bdcbE(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %val) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 56, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem11size_of_val17h781a43d7af0521f9E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %val) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 136, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem11size_of_val17hc2f964b7a2949620E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %val) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 40, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd41ee095335a3554E(i64 %0) unnamed_addr #1 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !6, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hc63cd81024760cc8E(i64 %_3), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h2298e888e2454b97E(i64 %align) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !6, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem12align_of_val17h5b89f08289d27129E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %val) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 8, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem12align_of_val17ha77fe7c6e339a0d6E(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %val) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 8, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem12align_of_val17hb45cb2e934f61a2cE(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %val) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 8, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem12align_of_val17hc8dcbbb88f8c6052E(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %val) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 8, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem12align_of_val17hec8dba58d2986d65E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %val) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 8, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17h97c30b02dc6edc5fE"(%"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* sret(%"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>") %0, %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* align 8 %slot) unnamed_addr #1 {
start:
  %_3 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %slot to %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"*
  call void @_ZN4core3ptr4read17h2919b2e1b8045dfeE(%"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* sret(%"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>") %0, %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3mem4drop17h22d478c0d67d7799E(i64 %_x) unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3mem4drop17hfc36a640cc4cf900E(i64 %_x) unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h3cf2ef115ded4018E(i64* align 8 %dest, i64 %src) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h7d9505cf2babdbcfE(i64* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !4, !noundef !1
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
  invoke void @_ZN4core3ptr5write17h77474484313da29eE(i64* %dest, i64 %src)
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
define { i8*, i64 } @_ZN4core3mem7replace17h4a00cba6466b3b2aE({ i8*, i64 }* align 8 %dest, i8* align 1 %src.0, i64 %src.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %1 = invoke { i8*, i64 } @_ZN4core3ptr4read17h76faa866ec0df883E({ i8*, i64 }* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %2 = load i8, i8* %_7, align 1, !range !4, !noundef !1
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
  invoke void @_ZN4core3ptr5write17hc459812689a7e8c8E({ i8*, i64 }* %dest, i8* align 1 %src.0, i64 %src.1)
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
define i64 @_ZN4core3mem7replace17h830f0f483a473c04E(i64* align 8 %dest, i64 %src) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h974c0dff528fcfefE(i64* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !4, !noundef !1
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
  invoke void @_ZN4core3ptr5write17h2480c008298d6852E(i64* %dest, i64 %src)
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
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h19b4446d845fe4b1E"(i64 %self, i64 %rhs) unnamed_addr #1 {
start:
  %0 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i8 }, align 8
  %2 = alloca i8, align 1
  %3 = alloca { i64, i64 }, align 8
  %4 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self, i64 %rhs)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = zext i1 %6 to i8
  %8 = bitcast { i64, i8 }* %0 to i64*
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %7, i8* %9, align 8
  %10 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  %_5.0.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 8, !range !4, !noundef !1
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !4, !noundef !1
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i8
  %22 = insertvalue { i64, i8 } undef, i64 %17, 0
  %23 = insertvalue { i64, i8 } %22, i8 %21, 1
  %_5.0 = extractvalue { i64, i8 } %23, 0
  %24 = extractvalue { i64, i8 } %23, 1
  %_5.1 = trunc i8 %24 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %25 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %2, align 1
  %27 = load i8, i8* %2, align 1, !range !4, !noundef !1
  %_8 = trunc i8 %27 to i1
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_5.0, i64* %28, align 8
  %29 = bitcast { i64, i64 }* %3 to i64*
  store i64 1, i64* %29, align 8
  br label %bb5

bb3:                                              ; preds = %bb2
  %30 = bitcast { i64, i64 }* %3 to i64*
  store i64 0, i64* %30, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8, !range !8, !noundef !1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hc63cd81024760cc8E(i64 %n) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !7, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h2d8fa0f7f439ace6E(i64 %self) unnamed_addr #1 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h197e54b00c4ab098E(%"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_2 = alloca {}, align 1
  %1 = invoke i32 @"_ZN13opng_optimize13opng_optimize28_$u7b$$u7b$closure$u7d$$u7d$17hc93df5933a0670fcE"(%"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* align 8 %_1)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %7 = bitcast { i8*, i32 }* %0 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = insertvalue { i8*, i32 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i32 } %11, i32 %10, 1
  resume { i8*, i32 } %12

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr100drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$$GT$17h572f384c7cba7a9bE"(i64** %_1) unnamed_addr #0 {
start:
  call void @"_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3497f9d4cec48ff3E"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr103drop_in_place$LT$alloc..rc..RcBox$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$$GT$17h169de7b18c4ca18bE"(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>", %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_1, i32 0, i32 2
  call void @"_ZN4core3ptr79drop_in_place$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$17h0ddc838e27ab33f4E"(%"core::cell::RefCell<ExceptionContext>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$i32$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h955ecb30a6112c66E"(%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* %_1 to i32*
  %1 = load i32, i32* %0, align 8, !range !9, !noundef !1
  %_2 = zext i32 %1 to i64
  %2 = icmp eq i64 %_2, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* %_1 to %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Err"*
  %4 = getelementptr inbounds %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Err", %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Err"* %3, i32 0, i32 1
  call void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hc5cbb359093ad51bE"({ {}*, [3 x i64]* }* %4)
  br label %bb1
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h76bc7b89a2b4b2daE(i8* %data, i64 %len) unnamed_addr #1 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17he45d73cc0ca0e570E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h7b245b7996c5c66fE({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4f6ac685eb2cf727E(i8* %data, i64 %len) unnamed_addr #1 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hffa03dafb0e3780cE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17h66a54c4cd4d4c095E"({ [0 x i8]*, i64 }* %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfd71407af88d067eE"(%"alloc::string::String"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h13953879ef50e117E"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$core..cell..BorrowRef$GT$17h6f0b65dc8f878608E"(i64** %_1) unnamed_addr #0 {
start:
  call void @"_ZN63_$LT$core..cell..BorrowRef$u20$as$u20$core..ops..drop..Drop$GT$4drop17h399fb2579cd35225E"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr44drop_in_place$LT$core..cell..BorrowError$GT$17h456b993932995fd2E"(%"core::cell::BorrowError"* %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h5e54332d74d2292aE"(i64** %_1) unnamed_addr #0 {
start:
  call void @"_ZN66_$LT$core..cell..BorrowRefMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17h79b7f1bc05a07683E"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h13953879ef50e117E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdadc95802a5c4f35E"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h576921450f8808d0E"({ i8*, i64 }* %1) #18
          to label %bb1 unwind label %abort

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb3

bb4:                                              ; preds = %start
  %7 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h576921450f8808d0E"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable

bb1:                                              ; preds = %bb3
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %bb4
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17hc9babec9e5d6d829E"(%"core::cell::BorrowMutError"* %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr47drop_in_place$LT$opng_optimize..OpngOptions$GT$17ha6a2f14d8af1e704E"(%OpngOptions* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_6 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_5 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_4 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_3 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_2 = alloca %"core::option::Option<alloc::string::String>", align 8
  %1 = getelementptr inbounds %OpngOptions, %OpngOptions* %_1, i32 0, i32 10
  %2 = bitcast %"core::option::Option<alloc::string::String>"* %_7 to i8*
  %3 = bitcast %"core::option::Option<alloc::string::String>"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 1 %3, i64 24, i1 false)
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h65e165433a327bc9E"(%"core::option::Option<alloc::string::String>"* %_7)
          to label %bb7 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %4 = getelementptr inbounds %OpngOptions, %OpngOptions* %_1, i32 0, i32 11
  %5 = bitcast %"core::option::Option<alloc::string::String>"* %_3 to i8*
  %6 = bitcast %"core::option::Option<alloc::string::String>"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %6, i64 24, i1 false)
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h65e165433a327bc9E"(%"core::option::Option<alloc::string::String>"* %_3) #18
          to label %bb4 unwind label %abort

cleanup:                                          ; preds = %start
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb3

bb7:                                              ; preds = %start
  %12 = getelementptr inbounds %OpngOptions, %OpngOptions* %_1, i32 0, i32 11
  %13 = bitcast %"core::option::Option<alloc::string::String>"* %_6 to i8*
  %14 = bitcast %"core::option::Option<alloc::string::String>"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 1 %14, i64 24, i1 false)
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h65e165433a327bc9E"(%"core::option::Option<alloc::string::String>"* %_6)
          to label %bb6 unwind label %cleanup1

abort:                                            ; preds = %bb2, %bb3
  %15 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable

bb4:                                              ; preds = %bb3
  br label %bb2

bb2:                                              ; preds = %cleanup1, %bb4
  %16 = getelementptr inbounds %OpngOptions, %OpngOptions* %_1, i32 0, i32 12
  %17 = bitcast %"core::option::Option<alloc::string::String>"* %_2 to i8*
  %18 = bitcast %"core::option::Option<alloc::string::String>"* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 1 %18, i64 24, i1 false)
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h65e165433a327bc9E"(%"core::option::Option<alloc::string::String>"* %_2) #18
          to label %bb1 unwind label %abort

cleanup1:                                         ; preds = %bb7
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %bb2

bb6:                                              ; preds = %bb7
  %24 = getelementptr inbounds %OpngOptions, %OpngOptions* %_1, i32 0, i32 12
  %25 = bitcast %"core::option::Option<alloc::string::String>"* %_5 to i8*
  %26 = bitcast %"core::option::Option<alloc::string::String>"* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 1 %26, i64 24, i1 false)
  call void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h65e165433a327bc9E"(%"core::option::Option<alloc::string::String>"* %_5)
  br label %bb5

bb1:                                              ; preds = %bb2
  %27 = bitcast { i8*, i32 }* %0 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %32 = insertvalue { i8*, i32 } %31, i32 %30, 1
  resume { i8*, i32 } %32

bb5:                                              ; preds = %bb6
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr4read17h2919b2e1b8045dfeE(%"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* sret(%"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>") %0, %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %src) unnamed_addr #1 {
start:
  %_3.i = alloca %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>", align 8
  %_6 = alloca %"core::mem::maybe_uninit::MaybeUninit<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>", align 8
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>", align 8
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %tmp to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %tmp to %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %2 to i8*
  %4 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 32, i1 false)
  %5 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %_6 to i8*
  %6 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 32, i1 false)
  %7 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %_6 to %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"*
  %8 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %_3.i to i8*
  %9 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 32, i1 false)
  %10 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>>"* %_3.i to %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"*
  %11 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %0 to i8*
  %12 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr4read17h41cfe65c41a10387E(%"alloc::alloc::Global"* %src) unnamed_addr #1 {
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
define { i8*, i64 } @_ZN4core3ptr4read17h76faa866ec0df883E({ i8*, i64 }* %src) unnamed_addr #1 {
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
define i64 @_ZN4core3ptr4read17h7d9505cf2babdbcfE(i64* %src) unnamed_addr #1 {
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
define i64 @_ZN4core3ptr4read17h974c0dff528fcfefE(i64* %src) unnamed_addr #1 {
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

; Function Attrs: uwtable
define void @"_ZN4core3ptr52drop_in_place$LT$opng_optimize..ExceptionContext$GT$17hb4511d06a88574ddE"(%ExceptionContext* %_1) unnamed_addr #0 {
start:
  %_3 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_2 = alloca %"core::option::Option<alloc::string::String>", align 8
  %0 = getelementptr inbounds %ExceptionContext, %ExceptionContext* %_1, i32 0, i32 1
  %1 = bitcast %"core::option::Option<alloc::string::String>"* %_3 to i8*
  %2 = bitcast %"core::option::Option<alloc::string::String>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 1 %2, i64 24, i1 false)
  call void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h65e165433a327bc9E"(%"core::option::Option<alloc::string::String>"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h576921450f8808d0E"({ i8*, i64 }* %_1) unnamed_addr #0 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6957df6069743c64E"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h2480c008298d6852E(i64* %dst, i64 %0) unnamed_addr #1 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h77474484313da29eE(i64* %dst, i64 %0) unnamed_addr #1 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hc459812689a7e8c8E({ i8*, i64 }* %dst, i8* align 1 %0, i64 %1) unnamed_addr #1 {
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
define void @"_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17h63b46afb797ad726E"({}* %_1.0, [3 x i64]* align 8 %_1.1) unnamed_addr #0 {
start:
  %0 = bitcast [3 x i64]* %_1.1 to void ({}*)**
  %1 = getelementptr inbounds void ({}*)*, void ({}*)** %0, i64 0
  %2 = load void ({}*)*, void ({}*)** %1, align 8, !invariant.load !1, !nonnull !1
  call void %2({}* %_1.0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr69drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngEngine$GT$$GT$17h1bdc26c95cba5111E"({ i8*, i64* }* %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr42drop_in_place$LT$core..cell..BorrowRef$GT$17h6f0b65dc8f878608E"(i64** %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h1f2e1cc7cb13b4efE"(i8* %self) unnamed_addr #1 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5bef706ef47c9c13E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h0b7974dc5420d35cE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h3c0215712f7ff963E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #1 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h8c93f5d271c50444E"(i8* %self.0, i64* align 8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h0b7974dc5420d35cE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2cfa3645f717ead4E"(i64* %self) unnamed_addr #1 {
start:
  %0 = call %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hee79a50fb246c32cE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %0
}

; Function Attrs: inlinehint uwtable
define %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h30455ab4b9e8e690E"(i64* %self) unnamed_addr #1 {
start:
  %0 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd9afe1bd6c7050ccE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %0
}

; Function Attrs: inlinehint uwtable
define %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h478d5e03724a299bE"(i64* %self) unnamed_addr #1 {
start:
  %0 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h649d2ff31f49b3b9E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %0
}

; Function Attrs: inlinehint uwtable
define %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h5d230542e95d4febE"(i64* %self) unnamed_addr #1 {
start:
  %0 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he4d78253a6079270E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hb209b71908428ae0E"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25b5785aafed8774E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hbdb06f1087571a4bE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #1 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hbcd63a585d71bd94E"(i8* %self.0, i64* align 8 %self.1)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hc8ac7c2a41125ecaE"(i64* %self) unnamed_addr #1 {
start:
  %0 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17habd34e1fb9307b56E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h5970fb138236a2fbE"({ i8*, i64* }* align 8 %self) unnamed_addr #1 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h530f00b7408c7ff0E"({ i8*, i64* }* align 8 %self)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr70drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngOptions$GT$$GT$17h815c0489b6730018E"({ i8*, i64* }* %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr42drop_in_place$LT$core..cell..BorrowRef$GT$17h6f0b65dc8f878608E"(i64** %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr70drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngProcess$GT$$GT$17h7bcfabf77d0c5b93E"({ i8*, i64* }* %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr42drop_in_place$LT$core..cell..BorrowRef$GT$17h6f0b65dc8f878608E"(i64** %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h65e165433a327bc9E"(%"core::option::Option<alloc::string::String>"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"core::option::Option<alloc::string::String>"* %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %4 = bitcast %"core::option::Option<alloc::string::String>"* %_1 to %"core::option::Option<alloc::string::String>::Some"*
  %5 = bitcast %"core::option::Option<alloc::string::String>::Some"* %4 to %"alloc::string::String"*
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfd71407af88d067eE"(%"alloc::string::String"* %5)
  br label %bb1
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E"({ i8*, i64* }* %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h5e54332d74d2292aE"(i64** %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr74drop_in_place$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$17hd05fc771acb7a543E"(%"core::cell::RefCell<OpngOptions>"* %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"core::cell::RefCell<OpngOptions>", %"core::cell::RefCell<OpngOptions>"* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr77drop_in_place$LT$core..cell..UnsafeCell$LT$opng_optimize..OpngOptions$GT$$GT$17h2b95fa7992c0ce92E"(%"core::cell::UnsafeCell<OpngOptions>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr75drop_in_place$LT$core..cell..Ref$LT$opng_optimize..ExceptionContext$GT$$GT$17haedc53eef8718208E"({ i8*, i64* }* %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr42drop_in_place$LT$core..cell..BorrowRef$GT$17h6f0b65dc8f878608E"(i64** %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr77drop_in_place$LT$core..cell..UnsafeCell$LT$opng_optimize..OpngOptions$GT$$GT$17h2b95fa7992c0ce92E"(%"core::cell::UnsafeCell<OpngOptions>"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"core::cell::UnsafeCell<OpngOptions>"* %_1 to %OpngOptions*
  call void @"_ZN4core3ptr47drop_in_place$LT$opng_optimize..OpngOptions$GT$17ha6a2f14d8af1e704E"(%OpngOptions* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17h56b0fe81c01b42ddE"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr79drop_in_place$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$17h0ddc838e27ab33f4E"(%"core::cell::RefCell<ExceptionContext>"* %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"core::cell::RefCell<ExceptionContext>", %"core::cell::RefCell<ExceptionContext>"* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr82drop_in_place$LT$core..cell..UnsafeCell$LT$opng_optimize..ExceptionContext$GT$$GT$17h72c6d809005464bcE"(%"core::cell::UnsafeCell<ExceptionContext>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h837d0088aa7e3dbcE"(i8* %self, i8* %other) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h068221d63f7c41e5E"(i8* %self) unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h6de1f50f523c39a9E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h837d0088aa7e3dbcE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr82drop_in_place$LT$core..cell..UnsafeCell$LT$opng_optimize..ExceptionContext$GT$$GT$17h72c6d809005464bcE"(%"core::cell::UnsafeCell<ExceptionContext>"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"core::cell::UnsafeCell<ExceptionContext>"* %_1 to %ExceptionContext*
  call void @"_ZN4core3ptr52drop_in_place$LT$opng_optimize..ExceptionContext$GT$17hb4511d06a88574ddE"(%ExceptionContext* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h7b245b7996c5c66fE({}* %data_address, i64 %metadata) unnamed_addr #1 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h6de1f50f523c39a9E({}* %data_address) unnamed_addr #1 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hffa03dafb0e3780cE({}* %data_address, i64 %metadata) unnamed_addr #1 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h03d001acec5bef34E"(%OpngSummary* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to %OpngSummary**
  store %OpngSummary* %ptr, %OpngSummary** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0406850b2e25f53aE"(%ExceptionContext* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to %ExceptionContext**
  store %ExceptionContext* %ptr, %ExceptionContext** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h951c8d7da62731ebE"(%OpngEngine* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to %OpngEngine**
  store %OpngEngine* %ptr, %OpngEngine** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc7b0b94c5234f4fdE"(%OpngOptions* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to %OpngOptions**
  store %OpngOptions* %ptr, %OpngOptions** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hd87c321efc188de3E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #1 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf2fd1c7eaeb41a7dE"(%OpngProcess* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to %OpngProcess**
  store %OpngProcess* %ptr, %OpngProcess** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hee86eda5f580950dE"(i8* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h068221d63f7c41e5E"(i8* %ptr)
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
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5bef706ef47c9c13E"(i8* %self) unnamed_addr #1 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25b5785aafed8774E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h6679b9e2f79e419dE"(i64* %self) unnamed_addr #1 {
start:
  %_3 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he4d78253a6079270E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h67f526f974c9f1c8E"(i64* %self) unnamed_addr #1 {
start:
  %_3 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17habd34e1fb9307b56E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h70a86c44915d4929E"(i64* %self) unnamed_addr #1 {
start:
  %_3 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd9afe1bd6c7050ccE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h8c93f5d271c50444E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #1 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hbcd63a585d71bd94E"(i8* %self.0, i64* align 8 %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha545a9d890566fcfE"(i64* %self) unnamed_addr #1 {
start:
  %_3 = call %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hee79a50fb246c32cE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hcb6130db165870bbE"(i64* %self) unnamed_addr #1 {
start:
  %_3 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h649d2ff31f49b3b9E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define align 1 %OpngSummary* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17hcbec5bf2ed0fa00dE"(i8** align 8 %self) unnamed_addr #1 {
start:
  %_6 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  %_5 = call %OpngSummary* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb59bc28a119ed6f7E"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret %OpngSummary* %_5
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25b5785aafed8774E"(i8* %self) unnamed_addr #1 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define %OpngProcess* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h629ec5a7da7ce448E"(i8* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i8* %self to %OpngProcess*
  ret %OpngProcess* %_2
}

; Function Attrs: inlinehint uwtable
define %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h649d2ff31f49b3b9E"(i64* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"*
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_2
}

; Function Attrs: inlinehint uwtable
define %ExceptionContext* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h64f006c6b64c4e14E"(i8* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i8* %self to %ExceptionContext*
  ret %ExceptionContext* %_2
}

; Function Attrs: inlinehint uwtable
define %OpngOptions* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h904f65c281b1a4e1E"(i8* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i8* %self to %OpngOptions*
  ret %OpngOptions* %_2
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h925a1394b5421f38E"(i8* %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17habd34e1fb9307b56E"(i64* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"*
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %_2
}

; Function Attrs: inlinehint uwtable
define %OpngSummary* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb59bc28a119ed6f7E"(i8* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i8* %self to %OpngSummary*
  ret %OpngSummary* %_2
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hbcd63a585d71bd94E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #1 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; Function Attrs: inlinehint uwtable
define %OpngEngine* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc869d17f73e70455E"(i8* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i8* %self to %OpngEngine*
  ret %OpngEngine* %_2
}

; Function Attrs: inlinehint uwtable
define %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd9afe1bd6c7050ccE"(i64* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"*
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %_2
}

; Function Attrs: inlinehint uwtable
define %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he4d78253a6079270E"(i64* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"*
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %_2
}

; Function Attrs: inlinehint uwtable
define %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hee79a50fb246c32cE"(i64* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"*
  ret %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_2
}

; Function Attrs: inlinehint uwtable
define align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E"(i64** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17habd34e1fb9307b56E"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %_2
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h530f00b7408c7ff0E"({ i8*, i64* }* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !1, !align !2, !noundef !1
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hbcd63a585d71bd94E"(i8* %_3.0, i64* align 8 %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define align 1 %OpngOptions* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h539a3fe0b1ad4730E"(i8** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %OpngOptions* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h904f65c281b1a4e1E"(i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %OpngOptions* %_2
}

; Function Attrs: inlinehint uwtable
define align 1 %ExceptionContext* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h6efb0e34777498dfE"(i8** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %ExceptionContext* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h64f006c6b64c4e14E"(i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %ExceptionContext* %_2
}

; Function Attrs: inlinehint uwtable
define align 1 %OpngProcess* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h9b75035cada3a8dbE"(i8** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %OpngProcess* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h629ec5a7da7ce448E"(i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %OpngProcess* %_2
}

; Function Attrs: inlinehint uwtable
define align 1 %OpngEngine* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hc106b13f600d468dE"(i8** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %OpngEngine* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc869d17f73e70455E"(i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %OpngEngine* %_2
}

; Function Attrs: inlinehint uwtable
define align 8 %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf63bf808e4312641E"(i64** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hee79a50fb246c32cE"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_2
}

; Function Attrs: inlinehint uwtable
define align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf676fbc7eb175b4eE"(i64** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h649d2ff31f49b3b9E"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_2
}

; Function Attrs: inlinehint uwtable
define align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfc160d86e997d716E"(i64** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he4d78253a6079270E"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %_2
}

; Function Attrs: inlinehint uwtable
define align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfd051a1ac9ff63a0E"(i64** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd9afe1bd6c7050ccE"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %_2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hcb273ef5315c3250E"(i8* %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h0d8ef17a740cd5f2E"(i8* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25b5785aafed8774E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h0d8ef17a740cd5f2E"(i8* %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h925a1394b5421f38E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hca76202778e6a427E"(i8* %data, i64 %len) unnamed_addr #1 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25b5785aafed8774E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4f6ac685eb2cf727E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hd87c321efc188de3E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hc5cbb359093ad51bE"({ {}*, [3 x i64]* }* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  invoke void @_ZN5alloc5alloc8box_free17h7d6616e20ed9ba4bE(i8* %12, i64* align 8 %14) #18
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
  call void @_ZN5alloc5alloc8box_free17h7d6616e20ed9ba4bE(i8* %22, i64* align 8 %24)
  br label %bb1

abort:                                            ; preds = %bb4
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
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

; Function Attrs: uwtable
define void @"_ZN4core3ptr94drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngEngine$GT$$GT$$GT$17h3fb9ecc96322e942E"(i64** %_1) unnamed_addr #0 {
start:
  call void @"_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81fc90c1d77d6131E"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$$GT$17h07626d96c8c9f696E"(i64** %_1) unnamed_addr #0 {
start:
  call void @"_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2eb43249249f236bE"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngProcess$GT$$GT$$GT$17hca51a848fae36d5eE"(i64** %_1) unnamed_addr #0 {
start:
  call void @"_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd26be84e63db717fE"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngSummary$GT$$GT$$GT$17h403090d44d5137f3E"(i64** %_1) unnamed_addr #0 {
start:
  call void @"_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe2d4b20d414cb2eE"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr98drop_in_place$LT$alloc..rc..RcBox$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$$GT$17hb77f1869cfecfb27E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_1, i32 0, i32 2
  call void @"_ZN4core3ptr74drop_in_place$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$17hd05fc771acb7a543E"(%"core::cell::RefCell<OpngOptions>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17he45d73cc0ca0e570E"(i8* %self) unnamed_addr #1 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h2c5ec68b0bb74b75E([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #1 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %v.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %v.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !5, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal align 8 i64* @_ZN4core4cell12BorrowRefMut3new17he9de8182dfdccf53E(i64* align 8 %borrow) unnamed_addr #1 {
start:
  %_7 = alloca i64*, align 8
  %0 = alloca i64*, align 8
  %_2 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17heaa78793d360251cE"(i64* align 8 %borrow)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i64 %_2, 0
  br i1 %1, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17hd259311471df3d1cE"(i64* align 8 %borrow, i64 -1)
  br label %bb4

bb2:                                              ; preds = %bb1
  %2 = bitcast i64** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %3 = bitcast i64** %0 to {}**
  store {}* null, {}** %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %4 = load i64*, i64** %0, align 8, !align !2
  ret i64* %4

bb4:                                              ; preds = %bb3
  store i64* %borrow, i64** %_7, align 8
  %5 = load i64*, i64** %_7, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %5, i64** %0, align 8
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE"(i64* align 8 %self) unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17heaa78793d360251cE"(i64* align 8 %self) unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E"(i64 %value) unnamed_addr #1 {
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
define i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h8cdb5bfa4064f303E"(i64 %value) unnamed_addr #1 {
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
define void @"_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E"(i64* align 8 %self, i64 %val) unnamed_addr #1 {
start:
  %old = call i64 @"_ZN4core4cell13Cell$LT$T$GT$7replace17hee13a77cd5a6306aE"(i64* align 8 %self, i64 %val)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core3mem4drop17h22d478c0d67d7799E(i64 %old)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4cell13Cell$LT$T$GT$3set17hd259311471df3d1cE"(i64* align 8 %self, i64 %val) unnamed_addr #1 {
start:
  %old = call i64 @"_ZN4core4cell13Cell$LT$T$GT$7replace17h44393dd34370cea0E"(i64* align 8 %self, i64 %val)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core3mem4drop17hfc36a640cc4cf900E(i64 %old)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: uwtable
define i64 @"_ZN4core4cell13Cell$LT$T$GT$7replace17h44393dd34370cea0E"(i64* align 8 %self, i64 %val) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  store i8 1, i8* %_9, align 1
  br label %bb1

bb5:                                              ; preds = %cleanup
  %1 = load i8, i8* %_9, align 1, !range !4, !noundef !1
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
  %8 = invoke i64 @_ZN4core3mem7replace17h3cf2ef115ded4018E(i64* align 8 %self, i64 %val)
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

; Function Attrs: uwtable
define i64 @"_ZN4core4cell13Cell$LT$T$GT$7replace17hee13a77cd5a6306aE"(i64* align 8 %self, i64 %val) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  store i8 1, i8* %_9, align 1
  br label %bb1

bb5:                                              ; preds = %cleanup
  %1 = load i8, i8* %_9, align 1, !range !4, !noundef !1
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
  %8 = invoke i64 @_ZN4core3mem7replace17h830f0f483a473c04E(i64* align 8 %self, i64 %val)
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
define { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17hb7be88996e442393E"(%"core::cell::RefCell<OpngSummary>"* align 8 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %1 = call { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17hcc4843c0c3769e72E"(%"core::cell::RefCell<OpngSummary>"* align 8 %self)
  %_2.0 = extractvalue { i8*, i8* } %1, 0
  %_2.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h45f642415dbb8976E"(i8* %_2.0, i8* %_2.1, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc272 to [0 x i8]*), i64 16, %"core::panic::location::Location"* align 8 %0)
  %3 = extractvalue { i8*, i64* } %2, 0
  %4 = extractvalue { i8*, i64* } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = insertvalue { i8*, i64* } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64* } %5, i64* %4, 1
  ret { i8*, i64* } %6
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17h69aadb67c56e1b4cE"(%"core::cell::RefCell<OpngOptions>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca { i8*, i64* }, align 8
  %b = alloca i64*, align 8
  %_2 = alloca i64*, align 8
  %1 = alloca { i8*, i8* }, align 8
  %_4 = bitcast %"core::cell::RefCell<OpngOptions>"* %self to i64*
  %2 = call align 8 i64* @_ZN4core4cell9BorrowRef3new17hc186545b776a4c83E(i64* align 8 %_4)
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
  %6 = bitcast { i8*, i8* }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = bitcast { i8*, i8* }* %1 to {}**
  store {}* null, {}** %7, align 8
  br label %bb7

bb4:                                              ; preds = %bb1
  %8 = load i64*, i64** %_2, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %8, i64** %b, align 8
  %_9 = getelementptr inbounds %"core::cell::RefCell<OpngOptions>", %"core::cell::RefCell<OpngOptions>"* %self, i32 0, i32 1
  %_2.i = bitcast %"core::cell::UnsafeCell<OpngOptions>"* %_9 to %OpngOptions*
  br label %bb5

bb8:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$core..cell..BorrowRef$GT$17h6f0b65dc8f878608E"(i64** %b) #18
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
  %value = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc7b0b94c5234f4fdE"(%OpngOptions* %_2.i)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12 = load i64*, i64** %b, align 8, !nonnull !1, !align !2, !noundef !1
  %14 = bitcast { i8*, i64* }* %_10 to i8**
  store i8* %value, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  store i64* %_12, i64** %15, align 8
  %16 = bitcast { i8*, i8* }* %1 to { i8*, i64* }*
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !nonnull !1, !noundef !1
  %19 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8, !nonnull !1, !align !2, !noundef !1
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 1
  store i64* %20, i64** %22, align 8
  br label %bb7

abort:                                            ; preds = %bb8
  %23 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
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
  %30 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = insertvalue { i8*, i8* } undef, i8* %31, 0
  %35 = insertvalue { i8*, i8* } %34, i8* %33, 1
  ret { i8*, i8* } %35
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17h71ee3f6dc085c974E"(%"core::cell::RefCell<OpngProcess>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca { i8*, i64* }, align 8
  %b = alloca i64*, align 8
  %_2 = alloca i64*, align 8
  %1 = alloca { i8*, i8* }, align 8
  %_4 = bitcast %"core::cell::RefCell<OpngProcess>"* %self to i64*
  %2 = call align 8 i64* @_ZN4core4cell9BorrowRef3new17hc186545b776a4c83E(i64* align 8 %_4)
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
  %6 = bitcast { i8*, i8* }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = bitcast { i8*, i8* }* %1 to {}**
  store {}* null, {}** %7, align 8
  br label %bb7

bb4:                                              ; preds = %bb1
  %8 = load i64*, i64** %_2, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %8, i64** %b, align 8
  %_9 = getelementptr inbounds %"core::cell::RefCell<OpngProcess>", %"core::cell::RefCell<OpngProcess>"* %self, i32 0, i32 1
  %_2.i = bitcast %"core::cell::UnsafeCell<OpngProcess>"* %_9 to %OpngProcess*
  br label %bb5

bb8:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$core..cell..BorrowRef$GT$17h6f0b65dc8f878608E"(i64** %b) #18
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
  %value = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf2fd1c7eaeb41a7dE"(%OpngProcess* %_2.i)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12 = load i64*, i64** %b, align 8, !nonnull !1, !align !2, !noundef !1
  %14 = bitcast { i8*, i64* }* %_10 to i8**
  store i8* %value, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  store i64* %_12, i64** %15, align 8
  %16 = bitcast { i8*, i8* }* %1 to { i8*, i64* }*
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !nonnull !1, !noundef !1
  %19 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8, !nonnull !1, !align !2, !noundef !1
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 1
  store i64* %20, i64** %22, align 8
  br label %bb7

abort:                                            ; preds = %bb8
  %23 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
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
  %30 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = insertvalue { i8*, i8* } undef, i8* %31, 0
  %35 = insertvalue { i8*, i8* } %34, i8* %33, 1
  ret { i8*, i8* } %35
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17ha62d0d439ac6894eE"(%"core::cell::RefCell<ExceptionContext>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca { i8*, i64* }, align 8
  %b = alloca i64*, align 8
  %_2 = alloca i64*, align 8
  %1 = alloca { i8*, i8* }, align 8
  %_4 = bitcast %"core::cell::RefCell<ExceptionContext>"* %self to i64*
  %2 = call align 8 i64* @_ZN4core4cell9BorrowRef3new17hc186545b776a4c83E(i64* align 8 %_4)
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
  %6 = bitcast { i8*, i8* }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = bitcast { i8*, i8* }* %1 to {}**
  store {}* null, {}** %7, align 8
  br label %bb7

bb4:                                              ; preds = %bb1
  %8 = load i64*, i64** %_2, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %8, i64** %b, align 8
  %_9 = getelementptr inbounds %"core::cell::RefCell<ExceptionContext>", %"core::cell::RefCell<ExceptionContext>"* %self, i32 0, i32 1
  %_2.i = bitcast %"core::cell::UnsafeCell<ExceptionContext>"* %_9 to %ExceptionContext*
  br label %bb5

bb8:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$core..cell..BorrowRef$GT$17h6f0b65dc8f878608E"(i64** %b) #18
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
  %value = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0406850b2e25f53aE"(%ExceptionContext* %_2.i)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12 = load i64*, i64** %b, align 8, !nonnull !1, !align !2, !noundef !1
  %14 = bitcast { i8*, i64* }* %_10 to i8**
  store i8* %value, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  store i64* %_12, i64** %15, align 8
  %16 = bitcast { i8*, i8* }* %1 to { i8*, i64* }*
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !nonnull !1, !noundef !1
  %19 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8, !nonnull !1, !align !2, !noundef !1
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 1
  store i64* %20, i64** %22, align 8
  br label %bb7

abort:                                            ; preds = %bb8
  %23 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
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
  %30 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = insertvalue { i8*, i8* } undef, i8* %31, 0
  %35 = insertvalue { i8*, i8* } %34, i8* %33, 1
  ret { i8*, i8* } %35
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17heb5b02f07facb8a3E"(%"core::cell::RefCell<OpngEngine>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca { i8*, i64* }, align 8
  %b = alloca i64*, align 8
  %_2 = alloca i64*, align 8
  %1 = alloca { i8*, i8* }, align 8
  %_4 = bitcast %"core::cell::RefCell<OpngEngine>"* %self to i64*
  %2 = call align 8 i64* @_ZN4core4cell9BorrowRef3new17hc186545b776a4c83E(i64* align 8 %_4)
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
  %6 = bitcast { i8*, i8* }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = bitcast { i8*, i8* }* %1 to {}**
  store {}* null, {}** %7, align 8
  br label %bb7

bb4:                                              ; preds = %bb1
  %8 = load i64*, i64** %_2, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %8, i64** %b, align 8
  %_9 = getelementptr inbounds %"core::cell::RefCell<OpngEngine>", %"core::cell::RefCell<OpngEngine>"* %self, i32 0, i32 1
  %_2.i = bitcast %"core::cell::UnsafeCell<OpngEngine>"* %_9 to %OpngEngine*
  br label %bb5

bb8:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$core..cell..BorrowRef$GT$17h6f0b65dc8f878608E"(i64** %b) #18
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
  %value = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h951c8d7da62731ebE"(%OpngEngine* %_2.i)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12 = load i64*, i64** %b, align 8, !nonnull !1, !align !2, !noundef !1
  %14 = bitcast { i8*, i64* }* %_10 to i8**
  store i8* %value, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  store i64* %_12, i64** %15, align 8
  %16 = bitcast { i8*, i8* }* %1 to { i8*, i64* }*
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !nonnull !1, !noundef !1
  %19 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8, !nonnull !1, !align !2, !noundef !1
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 1
  store i64* %20, i64** %22, align 8
  br label %bb7

abort:                                            ; preds = %bb8
  %23 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
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
  %30 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = insertvalue { i8*, i8* } undef, i8* %31, 0
  %35 = insertvalue { i8*, i8* } %34, i8* %33, 1
  ret { i8*, i8* } %35
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17hcc4843c0c3769e72E"(%"core::cell::RefCell<OpngSummary>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca { i8*, i64* }, align 8
  %b = alloca i64*, align 8
  %_2 = alloca i64*, align 8
  %1 = alloca { i8*, i8* }, align 8
  %_4 = bitcast %"core::cell::RefCell<OpngSummary>"* %self to i64*
  %2 = call align 8 i64* @_ZN4core4cell12BorrowRefMut3new17he9de8182dfdccf53E(i64* align 8 %_4)
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
  %6 = bitcast { i8*, i8* }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = bitcast { i8*, i8* }* %1 to {}**
  store {}* null, {}** %7, align 8
  br label %bb7

bb4:                                              ; preds = %bb1
  %8 = load i64*, i64** %_2, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %8, i64** %b, align 8
  %_9 = getelementptr inbounds %"core::cell::RefCell<OpngSummary>", %"core::cell::RefCell<OpngSummary>"* %self, i32 0, i32 1
  %_2.i = bitcast %"core::cell::UnsafeCell<OpngSummary>"* %_9 to %OpngSummary*
  br label %bb5

bb8:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h5e54332d74d2292aE"(i64** %b) #18
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
  %value = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h03d001acec5bef34E"(%OpngSummary* %_2.i)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12 = load i64*, i64** %b, align 8, !nonnull !1, !align !2, !noundef !1
  %14 = bitcast { i8*, i64* }* %_10 to i8**
  store i8* %value, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  store i64* %_12, i64** %15, align 8
  %16 = bitcast { i8*, i8* }* %1 to { i8*, i64* }*
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !nonnull !1, !noundef !1
  %19 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8, !nonnull !1, !align !2, !noundef !1
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 1
  store i64* %20, i64** %22, align 8
  br label %bb7

abort:                                            ; preds = %bb8
  %23 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
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
  %30 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = insertvalue { i8*, i8* } undef, i8* %31, 0
  %35 = insertvalue { i8*, i8* } %34, i8* %33, 1
  ret { i8*, i8* } %35
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4cell16RefCell$LT$T$GT$3new17h83b101f04da0b017E"(%"core::cell::RefCell<OpngOptions>"* sret(%"core::cell::RefCell<OpngOptions>") %0, %OpngOptions* %value) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %_2.i = alloca %OpngOptions, align 1
  %1 = alloca { i8*, i32 }, align 8
  %_3 = alloca %OpngOptions, align 1
  %_2 = alloca %"core::cell::UnsafeCell<OpngOptions>", align 1
  %2 = bitcast %OpngOptions* %_3 to i8*
  %3 = bitcast %OpngOptions* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 164, i1 false)
  %4 = bitcast %OpngOptions* %_2.i to i8*
  %5 = bitcast %OpngOptions* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 164, i1 false)
  %6 = bitcast %"core::cell::UnsafeCell<OpngOptions>"* %_2 to %OpngOptions*
  %7 = bitcast %OpngOptions* %6 to i8*
  %8 = bitcast %OpngOptions* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 164, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h8cdb5bfa4064f303E"(i64 0)
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr77drop_in_place$LT$core..cell..UnsafeCell$LT$opng_optimize..OpngOptions$GT$$GT$17h2b95fa7992c0ce92E"(%"core::cell::UnsafeCell<OpngOptions>"* %_2) #18
          to label %bb4 unwind label %abort

cleanup:                                          ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %14 = bitcast %"core::cell::RefCell<OpngOptions>"* %0 to i64*
  store i64 %_4, i64* %14, align 8
  %15 = getelementptr inbounds %"core::cell::RefCell<OpngOptions>", %"core::cell::RefCell<OpngOptions>"* %0, i32 0, i32 1
  %16 = bitcast %"core::cell::UnsafeCell<OpngOptions>"* %15 to i8*
  %17 = bitcast %"core::cell::UnsafeCell<OpngOptions>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 1 %17, i64 164, i1 false)
  ret void

abort:                                            ; preds = %bb3
  %18 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable

bb4:                                              ; preds = %bb3
  %19 = bitcast { i8*, i32 }* %1 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4cell16RefCell$LT$T$GT$3new17hbc7c29dfcc4abfb1E"(%"core::cell::RefCell<OpngProcess>"* sret(%"core::cell::RefCell<OpngProcess>") %0, %OpngProcess* %value) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %_2.i = alloca %OpngProcess, align 1
  %1 = alloca { i8*, i32 }, align 8
  %_3 = alloca %OpngProcess, align 1
  %_2 = alloca %"core::cell::UnsafeCell<OpngProcess>", align 1
  %2 = bitcast %OpngProcess* %_3 to i8*
  %3 = bitcast %OpngProcess* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 108, i1 false)
  %4 = bitcast %OpngProcess* %_2.i to i8*
  %5 = bitcast %OpngProcess* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 108, i1 false)
  %6 = bitcast %"core::cell::UnsafeCell<OpngProcess>"* %_2 to %OpngProcess*
  %7 = bitcast %OpngProcess* %6 to i8*
  %8 = bitcast %OpngProcess* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 108, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h8cdb5bfa4064f303E"(i64 0)
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %14 = bitcast %"core::cell::RefCell<OpngProcess>"* %0 to i64*
  store i64 %_4, i64* %14, align 8
  %15 = getelementptr inbounds %"core::cell::RefCell<OpngProcess>", %"core::cell::RefCell<OpngProcess>"* %0, i32 0, i32 1
  %16 = bitcast %"core::cell::UnsafeCell<OpngProcess>"* %15 to i8*
  %17 = bitcast %"core::cell::UnsafeCell<OpngProcess>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 1 %17, i64 108, i1 false)
  ret void

bb4:                                              ; preds = %bb3
  %18 = bitcast { i8*, i32 }* %1 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4cell16RefCell$LT$T$GT$3new17hcef9f8e73d5bc3d2E"(%"core::cell::RefCell<ExceptionContext>"* sret(%"core::cell::RefCell<ExceptionContext>") %0, %ExceptionContext* %value) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %_2.i = alloca %ExceptionContext, align 1
  %1 = alloca { i8*, i32 }, align 8
  %_3 = alloca %ExceptionContext, align 1
  %_2 = alloca %"core::cell::UnsafeCell<ExceptionContext>", align 1
  %2 = bitcast %ExceptionContext* %_3 to i8*
  %3 = bitcast %ExceptionContext* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 25, i1 false)
  %4 = bitcast %ExceptionContext* %_2.i to i8*
  %5 = bitcast %ExceptionContext* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 25, i1 false)
  %6 = bitcast %"core::cell::UnsafeCell<ExceptionContext>"* %_2 to %ExceptionContext*
  %7 = bitcast %ExceptionContext* %6 to i8*
  %8 = bitcast %ExceptionContext* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 25, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h8cdb5bfa4064f303E"(i64 0)
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr82drop_in_place$LT$core..cell..UnsafeCell$LT$opng_optimize..ExceptionContext$GT$$GT$17h72c6d809005464bcE"(%"core::cell::UnsafeCell<ExceptionContext>"* %_2) #18
          to label %bb4 unwind label %abort

cleanup:                                          ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %14 = bitcast %"core::cell::RefCell<ExceptionContext>"* %0 to i64*
  store i64 %_4, i64* %14, align 8
  %15 = getelementptr inbounds %"core::cell::RefCell<ExceptionContext>", %"core::cell::RefCell<ExceptionContext>"* %0, i32 0, i32 1
  %16 = bitcast %"core::cell::UnsafeCell<ExceptionContext>"* %15 to i8*
  %17 = bitcast %"core::cell::UnsafeCell<ExceptionContext>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 1 %17, i64 25, i1 false)
  ret void

abort:                                            ; preds = %bb3
  %18 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable

bb4:                                              ; preds = %bb3
  %19 = bitcast { i8*, i32 }* %1 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4cell16RefCell$LT$T$GT$3new17hd001d6ebaf4688a2E"(%"core::cell::RefCell<OpngEngine>"* sret(%"core::cell::RefCell<OpngEngine>") %0, i8 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %_2.i = alloca %OpngEngine, align 1
  %2 = alloca %"core::cell::UnsafeCell<OpngEngine>", align 1
  %3 = alloca i8, align 1
  %value.i = alloca %OpngEngine, align 1
  %4 = alloca { i8*, i32 }, align 8
  %5 = alloca i8, align 1
  %_3 = alloca %OpngEngine, align 1
  %_2 = alloca %"core::cell::UnsafeCell<OpngEngine>", align 1
  %6 = alloca i8, align 1
  %value = alloca %OpngEngine, align 1
  store i8 %1, i8* %6, align 1
  %7 = bitcast %OpngEngine* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %6, i64 1, i1 false)
  %8 = bitcast %OpngEngine* %_3 to i8*
  %9 = bitcast %OpngEngine* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 1, i1 false)
  %10 = bitcast %OpngEngine* %_3 to i8*
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %3, align 1
  %12 = bitcast %OpngEngine* %value.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %3, i64 1, i1 false)
  %13 = bitcast %OpngEngine* %_2.i to i8*
  %14 = bitcast %OpngEngine* %value.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 1, i1 false)
  %15 = bitcast %"core::cell::UnsafeCell<OpngEngine>"* %2 to %OpngEngine*
  %16 = bitcast %OpngEngine* %15 to i8*
  %17 = bitcast %OpngEngine* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %17, i64 1, i1 false)
  %18 = bitcast %"core::cell::UnsafeCell<OpngEngine>"* %2 to i8*
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %5, align 1
  %20 = bitcast %"core::cell::UnsafeCell<OpngEngine>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %5, i64 1, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h8cdb5bfa4064f303E"(i64 0)
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  %23 = extractvalue { i8*, i32 } %21, 1
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %26 = bitcast %"core::cell::RefCell<OpngEngine>"* %0 to i64*
  store i64 %_4, i64* %26, align 8
  %27 = getelementptr inbounds %"core::cell::RefCell<OpngEngine>", %"core::cell::RefCell<OpngEngine>"* %0, i32 0, i32 1
  %28 = bitcast %"core::cell::UnsafeCell<OpngEngine>"* %27 to i8*
  %29 = bitcast %"core::cell::UnsafeCell<OpngEngine>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 1 %29, i64 1, i1 false)
  ret void

bb4:                                              ; preds = %bb3
  %30 = bitcast { i8*, i32 }* %4 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %35 = insertvalue { i8*, i32 } %34, i32 %33, 1
  resume { i8*, i32 } %35
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4cell16RefCell$LT$T$GT$3new17heb4b8c411723c775E"(%"core::cell::RefCell<OpngSummary>"* sret(%"core::cell::RefCell<OpngSummary>") %0, %OpngSummary* %value) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %_2.i = alloca %OpngSummary, align 1
  %1 = alloca { i8*, i32 }, align 8
  %_3 = alloca %OpngSummary, align 1
  %_2 = alloca %"core::cell::UnsafeCell<OpngSummary>", align 1
  %2 = bitcast %OpngSummary* %_3 to i8*
  %3 = bitcast %OpngSummary* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 16, i1 false)
  %4 = bitcast %OpngSummary* %_2.i to i8*
  %5 = bitcast %OpngSummary* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 16, i1 false)
  %6 = bitcast %"core::cell::UnsafeCell<OpngSummary>"* %_2 to %OpngSummary*
  %7 = bitcast %OpngSummary* %6 to i8*
  %8 = bitcast %OpngSummary* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 16, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h8cdb5bfa4064f303E"(i64 0)
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %14 = bitcast %"core::cell::RefCell<OpngSummary>"* %0 to i64*
  store i64 %_4, i64* %14, align 8
  %15 = getelementptr inbounds %"core::cell::RefCell<OpngSummary>", %"core::cell::RefCell<OpngSummary>"* %0, i32 0, i32 1
  %16 = bitcast %"core::cell::UnsafeCell<OpngSummary>"* %15 to i8*
  %17 = bitcast %"core::cell::UnsafeCell<OpngSummary>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 1 %17, i64 16, i1 false)
  ret void

bb4:                                              ; preds = %bb3
  %18 = bitcast { i8*, i32 }* %1 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$6borrow17h19b2b1d1708916a4E"(%"core::cell::RefCell<OpngOptions>"* align 8 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %1 = call { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17h69aadb67c56e1b4cE"(%"core::cell::RefCell<OpngOptions>"* align 8 %self)
  %_2.0 = extractvalue { i8*, i8* } %1, 0
  %_2.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h53de903ada11d366E"(i8* %_2.0, i8* %_2.1, [0 x i8]* align 1 bitcast (<{ [24 x i8] }>* @alloc276 to [0 x i8]*), i64 24, %"core::panic::location::Location"* align 8 %0)
  %3 = extractvalue { i8*, i64* } %2, 0
  %4 = extractvalue { i8*, i64* } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = insertvalue { i8*, i64* } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64* } %5, i64* %4, 1
  ret { i8*, i64* } %6
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$6borrow17h8abbbf7cad26e025E"(%"core::cell::RefCell<OpngEngine>"* align 8 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %1 = call { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17heb5b02f07facb8a3E"(%"core::cell::RefCell<OpngEngine>"* align 8 %self)
  %_2.0 = extractvalue { i8*, i8* } %1, 0
  %_2.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb08bde7f239c7c63E"(i8* %_2.0, i8* %_2.1, [0 x i8]* align 1 bitcast (<{ [24 x i8] }>* @alloc276 to [0 x i8]*), i64 24, %"core::panic::location::Location"* align 8 %0)
  %3 = extractvalue { i8*, i64* } %2, 0
  %4 = extractvalue { i8*, i64* } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = insertvalue { i8*, i64* } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64* } %5, i64* %4, 1
  ret { i8*, i64* } %6
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$6borrow17h8bd19677a792d77bE"(%"core::cell::RefCell<ExceptionContext>"* align 8 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %1 = call { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17ha62d0d439ac6894eE"(%"core::cell::RefCell<ExceptionContext>"* align 8 %self)
  %_2.0 = extractvalue { i8*, i8* } %1, 0
  %_2.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h1a53c526a95cd128E"(i8* %_2.0, i8* %_2.1, [0 x i8]* align 1 bitcast (<{ [24 x i8] }>* @alloc276 to [0 x i8]*), i64 24, %"core::panic::location::Location"* align 8 %0)
  %3 = extractvalue { i8*, i64* } %2, 0
  %4 = extractvalue { i8*, i64* } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = insertvalue { i8*, i64* } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64* } %5, i64* %4, 1
  ret { i8*, i64* } %6
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$6borrow17hfb065cbb4c439aa7E"(%"core::cell::RefCell<OpngProcess>"* align 8 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %1 = call { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17h71ee3f6dc085c974E"(%"core::cell::RefCell<OpngProcess>"* align 8 %self)
  %_2.0 = extractvalue { i8*, i8* } %1, 0
  %_2.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h6de2e4588753366dE"(i8* %_2.0, i8* %_2.1, [0 x i8]* align 1 bitcast (<{ [24 x i8] }>* @alloc276 to [0 x i8]*), i64 24, %"core::panic::location::Location"* align 8 %0)
  %3 = extractvalue { i8*, i64* } %2, 0
  %4 = extractvalue { i8*, i64* } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = insertvalue { i8*, i64* } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64* } %5, i64* %4, 1
  ret { i8*, i64* } %6
}

; Function Attrs: inlinehint uwtable
define internal align 8 i64* @_ZN4core4cell9BorrowRef3new17hc186545b776a4c83E(i64* align 8 %borrow) unnamed_addr #1 {
start:
  %_11 = alloca i64*, align 8
  %0 = alloca i64*, align 8
  %_3 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17heaa78793d360251cE"(i64* align 8 %borrow)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = add i64 %_3, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = icmp sgt i64 %1, 0
  br label %bb3

bb3:                                              ; preds = %bb2
  %_5 = xor i1 %2, true
  br i1 %_5, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17hd259311471df3d1cE"(i64* align 8 %borrow, i64 %1)
  br label %bb6

bb4:                                              ; preds = %bb3
  %3 = bitcast i64** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  %4 = bitcast i64** %0 to {}**
  store {}* null, {}** %4, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb4
  %5 = load i64*, i64** %0, align 8, !align !2
  ret i64* %5

bb6:                                              ; preds = %bb5
  store i64* %borrow, i64** %_11, align 8
  %6 = load i64*, i64** %_11, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %6, i64** %0, align 8
  br label %bb7
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17ha39d1a012a8d8097E() unnamed_addr #4 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4hint9black_box17h5a6f6172961e681bE() unnamed_addr #1 {
start:
  call void asm sideeffect "", "r,~{memory}"({}* undef), !srcloc !10
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb4ebbcff1a8b6f33E(i64 %size, i64 %align) unnamed_addr #1 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h2298e888e2454b97E(i64 %align), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !6, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17ha6ae71818700a968E({ i64, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17hfa107681b5b3347cE({ i64, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !6, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd41ee095335a3554E(i64 %_3), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h2d8fa0f7f439ace6E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h2df62e71f3f5e8c7E(i64 %n) unnamed_addr #1 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h19b4446d845fe4b1E"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h86dc17f89e9f960fE"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5487613ff0936583E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !8, !noundef !1
  switch i64 %_9, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb7
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %val = load i64, i64* %5, align 8
  br label %bb9

bb7:                                              ; preds = %bb4
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17he0a43d39c4c4ea92E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc278 to %"core::panic::location::Location"*))
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !range !3, !noundef !1
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb9:                                              ; preds = %bb5
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb4ebbcff1a8b6f33E(i64 %val, i64 1)
  %_13.0 = extractvalue { i64, i64 } %13, 0
  %_13.1 = extractvalue { i64, i64 } %13, 1
  br label %bb10

bb10:                                             ; preds = %bb9
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_13.0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_13.1, i64* %15, align 8
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17h866c0786cc9796adE({ i64, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17hfa107681b5b3347cE({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout9for_value17h4fbdf89c12f6d8a2E(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %t) unnamed_addr #1 {
start:
  %_4 = alloca { i64, i64 }, align 8
  %_5 = call i64 @_ZN4core3mem11size_of_val17h01ca255af539ec4fE(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %t)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core3mem12align_of_val17hb45cb2e934f61a2cE(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %t)
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = bitcast { i64, i64 }* %_4 to i64*
  store i64 %_5, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  store i64 %_7, i64* %1, align 8
  %2 = bitcast { i64, i64 }* %_4 to i64*
  %size = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %align = load i64, i64* %3, align 8
  %4 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb4ebbcff1a8b6f33E(i64 %size, i64 %align)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout9for_value17h7aeff5f8b0dae543E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %t) unnamed_addr #1 {
start:
  %_4 = alloca { i64, i64 }, align 8
  %_5 = call i64 @_ZN4core3mem11size_of_val17hc2f964b7a2949620E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %t)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core3mem12align_of_val17h5b89f08289d27129E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %t)
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = bitcast { i64, i64 }* %_4 to i64*
  store i64 %_5, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  store i64 %_7, i64* %1, align 8
  %2 = bitcast { i64, i64 }* %_4 to i64*
  %size = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %align = load i64, i64* %3, align 8
  %4 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb4ebbcff1a8b6f33E(i64 %size, i64 %align)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout9for_value17h945eb30b739611e5E(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %t) unnamed_addr #1 {
start:
  %_4 = alloca { i64, i64 }, align 8
  %_5 = call i64 @_ZN4core3mem11size_of_val17h689f7fd02f65bdcbE(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %t)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core3mem12align_of_val17ha77fe7c6e339a0d6E(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %t)
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = bitcast { i64, i64 }* %_4 to i64*
  store i64 %_5, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  store i64 %_7, i64* %1, align 8
  %2 = bitcast { i64, i64 }* %_4 to i64*
  %size = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %align = load i64, i64* %3, align 8
  %4 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb4ebbcff1a8b6f33E(i64 %size, i64 %align)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout9for_value17hb5a759d8c04e4068E(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %t) unnamed_addr #1 {
start:
  %_4 = alloca { i64, i64 }, align 8
  %_5 = call i64 @_ZN4core3mem11size_of_val17h4cda1a45d7c48da3E(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %t)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core3mem12align_of_val17hc8dcbbb88f8c6052E(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %t)
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = bitcast { i64, i64 }* %_4 to i64*
  store i64 %_5, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  store i64 %_7, i64* %1, align 8
  %2 = bitcast { i64, i64 }* %_4 to i64*
  %size = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %align = load i64, i64* %3, align 8
  %4 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb4ebbcff1a8b6f33E(i64 %size, i64 %align)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout9for_value17hf5c6078c7ab7b869E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %t) unnamed_addr #1 {
start:
  %_4 = alloca { i64, i64 }, align 8
  %_5 = call i64 @_ZN4core3mem11size_of_val17h781a43d7af0521f9E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %t)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core3mem12align_of_val17hec8dba58d2986d65E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %t)
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = bitcast { i64, i64 }* %_4 to i64*
  store i64 %_5, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  store i64 %_7, i64* %1, align 8
  %2 = bitcast { i64, i64 }* %_4 to i64*
  %size = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %align = load i64, i64* %3, align 8
  %4 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb4ebbcff1a8b6f33E(i64 %size, i64 %align)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal align 8 %"core::panic::location::Location"* @_ZN4core5panic8location8Location6caller17h36d2ae0964437c59E(%"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %1 = alloca %"core::panic::location::Location"*, align 8
  store %"core::panic::location::Location"* %0, %"core::panic::location::Location"** %1, align 8
  %2 = load %"core::panic::location::Location"*, %"core::panic::location::Location"** %1, align 8, !nonnull !1, !align !2, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret %"core::panic::location::Location"* %2
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hb391ea8e248e6dc8E(i8* %data, i64 %len) unnamed_addr #1 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h76bc7b89a2b4b2daE(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$4take17hbbe85ff6acf847d3E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_3 = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 16, i1 false)
  %1 = bitcast { i8*, i64 }* %_3 to {}**
  store {}* null, {}** %1, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_3, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8, !align !5
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = call { i8*, i64 } @_ZN4core3mem7replace17h4a00cba6466b3b2aE({ i8*, i64 }* align 8 %self, i8* align 1 %3, i64 %5)
  %7 = extractvalue { i8*, i64 } %6, 0
  %8 = extractvalue { i8*, i64 } %6, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = insertvalue { i8*, i64 } undef, i8* %7, 0
  %10 = insertvalue { i8*, i64 } %9, i64 %8, 1
  ret { i8*, i64 } %10
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h0ae03f738f04d83fE"(i8* %0) unnamed_addr #1 {
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
  %9 = load i8, i8* %_7, align 1, !range !4, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h86dc17f89e9f960fE"(i64 %0, i64 %1) unnamed_addr #1 {
start:
  %_7 = alloca i8, align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %5, align 8, !range !8, !noundef !1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %7 = bitcast i64* %6 to %"core::alloc::layout::LayoutError"*
  %8 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %v = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %v, i64* %10, align 8
  %11 = bitcast { i64, i64 }* %2 to i64*
  store i64 0, i64* %11, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %12 = load i8, i8* %_7, align 1, !range !4, !noundef !1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !range !8, !noundef !1
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17h74062b9744b9783bE"(%"core::option::Option<alloc::string::String>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast %"core::option::Option<alloc::string::String>"* %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %4 = bitcast i64** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 8, i1 false)
  %5 = bitcast i64** %0 to {}**
  store {}* null, {}** %5, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %6 = bitcast %"core::option::Option<alloc::string::String>"* %self to %"core::option::Option<alloc::string::String>::Some"*
  %x = bitcast %"core::option::Option<alloc::string::String>::Some"* %6 to %"alloc::string::String"*
  %7 = bitcast i64** %0 to %"alloc::string::String"**
  store %"alloc::string::String"* %x, %"alloc::string::String"** %7, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %8 = load i64*, i64** %0, align 8, !align !2
  ret i64* %8
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$8as_deref17h3ca5f2e848205aedE"(%"core::option::Option<alloc::string::String>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca i64*, align 8
  %0 = alloca { i8*, i64 }, align 8
  %1 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17h74062b9744b9783bE"(%"core::option::Option<alloc::string::String>"* align 8 %self)
  store i64* %1, i64** %_2, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast i64** %_2 to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_4 = select i1 %4, i64 0, i64 1
  switch i64 %_4, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 16, i1 false)
  %6 = bitcast { i8*, i64 }* %0 to {}**
  store {}* null, {}** %6, align 8
  br label %bb6

bb4:                                              ; preds = %bb1
  %7 = bitcast i64** %_2 to %"alloc::string::String"**
  %t = load %"alloc::string::String"*, %"alloc::string::String"** %7, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb96f8b89d00e154bE"(%"alloc::string::String"* align 8 %t)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %8, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %8, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %9 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  store [0 x i8]* %_7.0, [0 x i8]** %10, align 8
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  store i64 %_7.1, i64* %11, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb2
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !align !5
  %14 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = insertvalue { i8*, i64 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i64 } %16, i64 %15, 1
  ret { i8*, i64 } %17
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17h9d543470c9fc45a5E"(i8* align 1 %0, i64 %1, [0 x i8]* align 1 %default.0, i64 %default.1) unnamed_addr #1 {
start:
  %_5 = alloca i8, align 1
  %2 = alloca { [0 x i8]*, i64 }, align 8
  %self = alloca { i8*, i64 }, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  store i8 1, i8* %_5, align 1
  %5 = bitcast { i8*, i64 }* %self to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_3 = select i1 %7, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_5, align 1
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  store [0 x i8]* %default.0, [0 x i8]** %8, align 8
  %9 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  store i64 %default.1, i64* %9, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %10 = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 0
  %x.0 = load [0 x i8]*, [0 x i8]** %11, align 8, !nonnull !1, !align !5, !noundef !1
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 1
  %x.1 = load i64, i64* %12, align 8
  %13 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  store [0 x i8]* %x.0, [0 x i8]** %13, align 8
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  store i64 %x.1, i64* %14, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %15 = load i8, i8* %_5, align 1, !range !4, !noundef !1
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %17 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  %18 = load [0 x i8]*, [0 x i8]** %17, align 8, !nonnull !1, !align !5, !noundef !1
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %18, 0
  %22 = insertvalue { [0 x i8]*, i64 } %21, i64 %20, 1
  ret { [0 x i8]*, i64 } %22

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h34b2ecdac7fbba38E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !3, !noundef !1
  %8 = icmp eq i64 %7, 0
  %_2 = select i1 %8, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %t.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %10, align 8, !range !6, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !3, !noundef !1
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17ha39d1a012a8d8097E() #17
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %16 = load i64, i64* %15, align 8, !range !3, !noundef !1
  %17 = icmp eq i64 %16, 0
  %_7 = select i1 %17, i64 1, i64 0
  %18 = icmp eq i64 %_7, 0
  br i1 %18, label %bb7, label %bb9

cleanup:                                          ; preds = %bb1
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %bb10

unreachable:                                      ; preds = %bb1
  unreachable

bb7:                                              ; preds = %bb10
  br i1 true, label %bb8, label %bb4

bb9:                                              ; preds = %bb10
  br label %bb4

bb4:                                              ; preds = %bb8, %bb9, %bb7
  %24 = bitcast { i8*, i32 }* %3 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

bb8:                                              ; preds = %bb7
  br label %bb4

bb5:                                              ; preds = %bb6, %bb3
  %30 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %31 = insertvalue { i64, i64 } %30, i64 %t.1, 1
  ret { i64, i64 } %31

bb6:                                              ; preds = %bb3
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h1a53c526a95cd128E"(i8* %0, i8* %1, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %e = alloca %"core::cell::BorrowError", align 1
  %self = alloca { i8*, i8* }, align 8
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 0
  store i8* %0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  store i8* %1, i8** %5, align 8
  %6 = bitcast { i8*, i8* }* %self to {}**
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
  %9 = bitcast { i8*, i8* }* %self to { i8*, i64* }*
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 0
  %t.0 = load i8*, i8** %10, align 8, !nonnull !1, !noundef !1
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 1
  %t.1 = load i64*, i64** %11, align 8, !nonnull !1, !align !2, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %t.0, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %t.1, 1
  ret { i8*, i64* } %13

bb1:                                              ; preds = %start
  %_7.0 = bitcast %"core::cell::BorrowError"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), %"core::panic::location::Location"* align 8 %2) #17
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

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h45f642415dbb8976E"(i8* %0, i8* %1, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %e = alloca %"core::cell::BorrowMutError", align 1
  %self = alloca { i8*, i8* }, align 8
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 0
  store i8* %0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  store i8* %1, i8** %5, align 8
  %6 = bitcast { i8*, i8* }* %self to {}**
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
  %9 = bitcast { i8*, i8* }* %self to { i8*, i64* }*
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 0
  %t.0 = load i8*, i8** %10, align 8, !nonnull !1, !noundef !1
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 1
  %t.1 = load i64*, i64** %11, align 8, !nonnull !1, !align !2, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %t.0, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %t.1, 1
  ret { i8*, i64* } %13

bb1:                                              ; preds = %start
  %_7.0 = bitcast %"core::cell::BorrowMutError"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*), %"core::panic::location::Location"* align 8 %2) #17
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

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h53de903ada11d366E"(i8* %0, i8* %1, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %e = alloca %"core::cell::BorrowError", align 1
  %self = alloca { i8*, i8* }, align 8
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 0
  store i8* %0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  store i8* %1, i8** %5, align 8
  %6 = bitcast { i8*, i8* }* %self to {}**
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
  %9 = bitcast { i8*, i8* }* %self to { i8*, i64* }*
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 0
  %t.0 = load i8*, i8** %10, align 8, !nonnull !1, !noundef !1
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 1
  %t.1 = load i64*, i64** %11, align 8, !nonnull !1, !align !2, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %t.0, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %t.1, 1
  ret { i8*, i64* } %13

bb1:                                              ; preds = %start
  %_7.0 = bitcast %"core::cell::BorrowError"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), %"core::panic::location::Location"* align 8 %2) #17
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

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h6de2e4588753366dE"(i8* %0, i8* %1, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %e = alloca %"core::cell::BorrowError", align 1
  %self = alloca { i8*, i8* }, align 8
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 0
  store i8* %0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  store i8* %1, i8** %5, align 8
  %6 = bitcast { i8*, i8* }* %self to {}**
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
  %9 = bitcast { i8*, i8* }* %self to { i8*, i64* }*
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 0
  %t.0 = load i8*, i8** %10, align 8, !nonnull !1, !noundef !1
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 1
  %t.1 = load i64*, i64** %11, align 8, !nonnull !1, !align !2, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %t.0, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %t.1, 1
  ret { i8*, i64* } %13

bb1:                                              ; preds = %start
  %_7.0 = bitcast %"core::cell::BorrowError"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), %"core::panic::location::Location"* align 8 %2) #17
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

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb08bde7f239c7c63E"(i8* %0, i8* %1, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %e = alloca %"core::cell::BorrowError", align 1
  %self = alloca { i8*, i8* }, align 8
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 0
  store i8* %0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  store i8* %1, i8** %5, align 8
  %6 = bitcast { i8*, i8* }* %self to {}**
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
  %9 = bitcast { i8*, i8* }* %self to { i8*, i64* }*
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 0
  %t.0 = load i8*, i8** %10, align 8, !nonnull !1, !noundef !1
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 1
  %t.1 = load i64*, i64** %11, align 8, !nonnull !1, !align !2, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %t.0, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %t.1, 1
  ret { i8*, i64* } %13

bb1:                                              ; preds = %start
  %_7.0 = bitcast %"core::cell::BorrowError"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), %"core::panic::location::Location"* align 8 %2) #17
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
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h458154cb2b919524E"() unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hc36211f8bb872d74E"() unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h0257c8bd8b43b4d1E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h5c7a046ac1e49891E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: uwtable
define i64* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h0e2bf77c101ef333E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17haf0fcbd939667c18E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: uwtable
define i64* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8d6e4fec052fcd9aE"(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h8df62d33960c4dd5E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: uwtable
define i64* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hc823880c6b8aad28E"(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hd0ac387b1cd5a055E"(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: uwtable
define i64* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcb56773f51264b55E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h7debefd40eecd73aE"(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: uwtable
define i64* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf121a77c002fec6cE"(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hd658707cc18c1645E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc2rc10RcInnerPtr10dec_strong17h0dc0a742894019a9E(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN5alloc2rc10RcInnerPtr6strong17hd5397eb73725c326E(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = sub i64 %_7, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E"(i64* align 8 %0, i64 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc2rc10RcInnerPtr10dec_strong17h21b973f911cfecadE(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN5alloc2rc10RcInnerPtr6strong17h5bcbd076e063e41aE(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = sub i64 %_7, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E"(i64* align 8 %0, i64 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc2rc10RcInnerPtr10dec_strong17h44f614bd4b6947abE(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN5alloc2rc10RcInnerPtr6strong17hc53d7e8649b3fbc7E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = sub i64 %_7, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E"(i64* align 8 %0, i64 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc2rc10RcInnerPtr10dec_strong17h6798550c44c252b4E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN5alloc2rc10RcInnerPtr6strong17ha39cfa91ea0a3928E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = sub i64 %_7, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E"(i64* align 8 %0, i64 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc2rc10RcInnerPtr10dec_strong17hf3159b3fd02d92f4E(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN5alloc2rc10RcInnerPtr6strong17hc4b66eddd276f713E(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = sub i64 %_7, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E"(i64* align 8 %0, i64 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN5alloc2rc10RcInnerPtr4weak17h8085ec5dd1244e50E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %self, i32 0, i32 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE"(i64* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN5alloc2rc10RcInnerPtr4weak17h942b4f1596b6c01fE(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %self, i32 0, i32 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE"(i64* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN5alloc2rc10RcInnerPtr4weak17haa5fd06d05ba4559E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %self, i32 0, i32 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE"(i64* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN5alloc2rc10RcInnerPtr4weak17hcaf305b5262f452fE(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %self, i32 0, i32 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE"(i64* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN5alloc2rc10RcInnerPtr4weak17he1a6b048bdf4e767E(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>", %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %self, i32 0, i32 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE"(i64* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN5alloc2rc10RcInnerPtr6strong17h5bcbd076e063e41aE(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE"(i64* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN5alloc2rc10RcInnerPtr6strong17ha39cfa91ea0a3928E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE"(i64* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN5alloc2rc10RcInnerPtr6strong17hc4b66eddd276f713E(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE"(i64* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN5alloc2rc10RcInnerPtr6strong17hc53d7e8649b3fbc7E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE"(i64* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN5alloc2rc10RcInnerPtr6strong17hd5397eb73725c326E(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE"(i64* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc2rc10RcInnerPtr8dec_weak17h39d8cdf6c5cc77caE(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %self, i32 0, i32 1
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN5alloc2rc10RcInnerPtr4weak17haa5fd06d05ba4559E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = sub i64 %_7, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E"(i64* align 8 %0, i64 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc2rc10RcInnerPtr8dec_weak17h88995592041e13aeE(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %self, i32 0, i32 1
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN5alloc2rc10RcInnerPtr4weak17hcaf305b5262f452fE(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = sub i64 %_7, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E"(i64* align 8 %0, i64 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc2rc10RcInnerPtr8dec_weak17h9881f5ad37bf6034E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %self, i32 0, i32 1
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN5alloc2rc10RcInnerPtr4weak17h8085ec5dd1244e50E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = sub i64 %_7, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E"(i64* align 8 %0, i64 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc2rc10RcInnerPtr8dec_weak17ha68e9e26a521839bE(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %self, i32 0, i32 1
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN5alloc2rc10RcInnerPtr4weak17h942b4f1596b6c01fE(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = sub i64 %_7, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E"(i64* align 8 %0, i64 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc2rc10RcInnerPtr8dec_weak17hf8a6fb1aeab1e75fE(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>", %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %self, i32 0, i32 1
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN5alloc2rc10RcInnerPtr4weak17he1a6b048bdf4e767E(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = sub i64 %_7, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E"(i64* align 8 %0, i64 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define i64* @"_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h1399f85550cc72f4E"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %ptr, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: uwtable
define i64* @"_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h185189eacb2e0f85E"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %ptr, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: uwtable
define i64* @"_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h5c45120aa5bbb39dE"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %ptr, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: uwtable
define i64* @"_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h90381e4cf22f1a3cE"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %ptr, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: uwtable
define i64* @"_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17hedf3906ff89fbcfaE"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %ptr, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define align 8 %"core::cell::RefCell<OpngOptions>"* @"_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17h779257bfec7afa21E"(i64** align 8 %this) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %this, align 8, !nonnull !1, !noundef !1
  %_5 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h649d2ff31f49b3b9E"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_5, i32 0, i32 2
  ret %"core::cell::RefCell<OpngOptions>"* %_4
}

; Function Attrs: inlinehint uwtable
define align 8 %"core::cell::RefCell<ExceptionContext>"* @"_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17hd911440206feefb2E"(i64** align 8 %this) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %this, align 8, !nonnull !1, !noundef !1
  %_5 = call %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hee79a50fb246c32cE"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>", %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_5, i32 0, i32 2
  ret %"core::cell::RefCell<ExceptionContext>"* %_4
}

; Function Attrs: inlinehint uwtable
define align 8 %"core::cell::RefCell<OpngProcess>"* @"_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17he184ec01ba94fc93E"(i64** align 8 %this) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %this, align 8, !nonnull !1, !noundef !1
  %_5 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he4d78253a6079270E"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %_5, i32 0, i32 2
  ret %"core::cell::RefCell<OpngProcess>"* %_4
}

; Function Attrs: inlinehint uwtable
define align 8 %"core::cell::RefCell<OpngEngine>"* @"_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17hf17e705c117edeefE"(i64** align 8 %this) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %this, align 8, !nonnull !1, !noundef !1
  %_5 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd9afe1bd6c7050ccE"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %_5, i32 0, i32 2
  ret %"core::cell::RefCell<OpngEngine>"* %_4
}

; Function Attrs: inlinehint uwtable
define align 8 %"core::cell::RefCell<OpngSummary>"* @"_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17hf2d71a4807777b29E"(i64** align 8 %this) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %this, align 8, !nonnull !1, !noundef !1
  %_5 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17habd34e1fb9307b56E"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %_5, i32 0, i32 2
  ret %"core::cell::RefCell<OpngSummary>"* %_4
}

; Function Attrs: uwtable
define i64* @"_ZN5alloc2rc11Rc$LT$T$GT$3new17h2512ccfd4434ee0eE"(%"core::cell::RefCell<OpngSummary>"* %value) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  %_9 = alloca %"core::cell::RefCell<OpngSummary>", align 8
  %_6 = alloca %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>", align 8
  store i8 1, i8* %_10, align 1
  %_7 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E"(i64 1)
          to label %bb1 unwind label %cleanup

bb9:                                              ; preds = %cleanup.body
  %2 = load i8, i8* %_10, align 1, !range !4, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb8, label %bb7

cleanup:                                          ; preds = %bb5, %bb4, %bb3, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %cleanup.i, %cleanup
  %eh.lpad-body = phi { i8*, i32 } [ %4, %cleanup ], [ %26, %cleanup.i ]
  %5 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  %6 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb9

bb1:                                              ; preds = %start
  %_8 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E"(i64 1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_10, align 1
  %9 = bitcast %"core::cell::RefCell<OpngSummary>"* %_9 to i8*
  %10 = bitcast %"core::cell::RefCell<OpngSummary>"* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 24, i1 false)
  %11 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %_6 to i64*
  store i64 %_7, i64* %11, align 8
  %12 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %_6, i32 0, i32 1
  store i64 %_8, i64* %12, align 8
  %13 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %_6, i32 0, i32 2
  %14 = bitcast %"core::cell::RefCell<OpngSummary>"* %13 to i8*
  %15 = bitcast %"core::cell::RefCell<OpngSummary>"* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  %_4.i = invoke i8* @_ZN5alloc5alloc15exchange_malloc17h92856370e84062b4E(i64 40, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9d9e8a58a3630836E.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb2
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  br label %cleanup.body

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9d9e8a58a3630836E.exit": ; preds = %bb2
  %27 = bitcast i8* %_4.i to %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"*
  %28 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %27 to i64*
  %29 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %_4.i, i8* align 8 %29, i64 40, i1 false)
  br label %bb3

bb3:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9d9e8a58a3630836E.exit"
  %_4 = invoke align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h664e16c5249c7a4eE"(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %27)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_2 = invoke i64* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8d6e4fec052fcd9aE"(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %_4)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %30 = invoke i64* @"_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h185189eacb2e0f85E"(i64* %_2)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  ret i64* %30

bb7:                                              ; preds = %bb8, %bb9
  %31 = bitcast { i8*, i32 }* %1 to i8**
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = insertvalue { i8*, i32 } undef, i8* %32, 0
  %36 = insertvalue { i8*, i32 } %35, i32 %34, 1
  resume { i8*, i32 } %36

bb8:                                              ; preds = %bb9
  br label %bb7
}

; Function Attrs: uwtable
define i64* @"_ZN5alloc2rc11Rc$LT$T$GT$3new17h6006af416c61f9d2E"(%"core::cell::RefCell<OpngProcess>"* %value) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  %_9 = alloca %"core::cell::RefCell<OpngProcess>", align 8
  %_6 = alloca %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>", align 8
  store i8 1, i8* %_10, align 1
  %_7 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E"(i64 1)
          to label %bb1 unwind label %cleanup

bb9:                                              ; preds = %cleanup.body
  %2 = load i8, i8* %_10, align 1, !range !4, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb8, label %bb7

cleanup:                                          ; preds = %bb5, %bb4, %bb3, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %cleanup.i, %cleanup
  %eh.lpad-body = phi { i8*, i32 } [ %4, %cleanup ], [ %26, %cleanup.i ]
  %5 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  %6 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb9

bb1:                                              ; preds = %start
  %_8 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E"(i64 1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_10, align 1
  %9 = bitcast %"core::cell::RefCell<OpngProcess>"* %_9 to i8*
  %10 = bitcast %"core::cell::RefCell<OpngProcess>"* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 120, i1 false)
  %11 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %_6 to i64*
  store i64 %_7, i64* %11, align 8
  %12 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %_6, i32 0, i32 1
  store i64 %_8, i64* %12, align 8
  %13 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %_6, i32 0, i32 2
  %14 = bitcast %"core::cell::RefCell<OpngProcess>"* %13 to i8*
  %15 = bitcast %"core::cell::RefCell<OpngProcess>"* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 120, i1 false)
  %_4.i = invoke i8* @_ZN5alloc5alloc15exchange_malloc17h92856370e84062b4E(i64 136, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17he8dc833909992e14E.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb2
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  br label %cleanup.body

"_ZN5alloc5boxed12Box$LT$T$GT$3new17he8dc833909992e14E.exit": ; preds = %bb2
  %27 = bitcast i8* %_4.i to %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"*
  %28 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %27 to i64*
  %29 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %_4.i, i8* align 8 %29, i64 136, i1 false)
  br label %bb3

bb3:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17he8dc833909992e14E.exit"
  %_4 = invoke align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h535410f7ab87f3c7E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %27)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_2 = invoke i64* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h0e2bf77c101ef333E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %_4)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %30 = invoke i64* @"_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h5c45120aa5bbb39dE"(i64* %_2)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  ret i64* %30

bb7:                                              ; preds = %bb8, %bb9
  %31 = bitcast { i8*, i32 }* %1 to i8**
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = insertvalue { i8*, i32 } undef, i8* %32, 0
  %36 = insertvalue { i8*, i32 } %35, i32 %34, 1
  resume { i8*, i32 } %36

bb8:                                              ; preds = %bb9
  br label %bb7
}

; Function Attrs: uwtable
define i64* @"_ZN5alloc2rc11Rc$LT$T$GT$3new17habdac6697f11a2deE"(%"core::cell::RefCell<ExceptionContext>"* %value) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  %_9 = alloca %"core::cell::RefCell<ExceptionContext>", align 8
  %_6 = alloca %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>", align 8
  store i8 1, i8* %_10, align 1
  %_7 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E"(i64 1)
          to label %bb1 unwind label %cleanup

bb9:                                              ; preds = %cleanup.body
  %2 = load i8, i8* %_10, align 1, !range !4, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb8, label %bb7

cleanup:                                          ; preds = %bb5, %bb4, %bb3, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %bb3.i, %cleanup
  %eh.lpad-body = phi { i8*, i32 } [ %4, %cleanup ], [ %27, %bb3.i ]
  %5 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  %6 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb9

bb1:                                              ; preds = %start
  %_8 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E"(i64 1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_10, align 1
  %9 = bitcast %"core::cell::RefCell<ExceptionContext>"* %_9 to i8*
  %10 = bitcast %"core::cell::RefCell<ExceptionContext>"* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 40, i1 false)
  %11 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_6 to i64*
  store i64 %_7, i64* %11, align 8
  %12 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>", %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_6, i32 0, i32 1
  store i64 %_8, i64* %12, align 8
  %13 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>", %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_6, i32 0, i32 2
  %14 = bitcast %"core::cell::RefCell<ExceptionContext>"* %13 to i8*
  %15 = bitcast %"core::cell::RefCell<ExceptionContext>"* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 40, i1 false)
  %_4.i = invoke i8* @_ZN5alloc5alloc15exchange_malloc17h92856370e84062b4E(i64 56, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h121de81eaf59ea1dE.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb2
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  invoke void @"_ZN4core3ptr103drop_in_place$LT$alloc..rc..RcBox$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$$GT$17h169de7b18c4ca18bE"(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_6) #18
          to label %bb3.i unwind label %abort.i

abort.i:                                          ; preds = %cleanup.i
  %21 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable

bb3.i:                                            ; preds = %cleanup.i
  %22 = bitcast { i8*, i32 }* %0 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = insertvalue { i8*, i32 } undef, i8* %23, 0
  %27 = insertvalue { i8*, i32 } %26, i32 %25, 1
  br label %cleanup.body

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h121de81eaf59ea1dE.exit": ; preds = %bb2
  %28 = bitcast i8* %_4.i to %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"*
  %29 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %28 to i64*
  %30 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %_4.i, i8* align 8 %30, i64 56, i1 false)
  br label %bb3

bb3:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h121de81eaf59ea1dE.exit"
  %_4 = invoke align 8 %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h65f8ee7cb41b187eE"(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %28)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_2 = invoke i64* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hc823880c6b8aad28E"(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %_4)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %31 = invoke i64* @"_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h1399f85550cc72f4E"(i64* %_2)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  ret i64* %31

bb7:                                              ; preds = %bb8, %bb9
  %32 = bitcast { i8*, i32 }* %1 to i8**
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = insertvalue { i8*, i32 } undef, i8* %33, 0
  %37 = insertvalue { i8*, i32 } %36, i32 %35, 1
  resume { i8*, i32 } %37

bb8:                                              ; preds = %bb9
  invoke void @"_ZN4core3ptr79drop_in_place$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$17h0ddc838e27ab33f4E"(%"core::cell::RefCell<ExceptionContext>"* %value) #18
          to label %bb7 unwind label %abort

abort:                                            ; preds = %bb8
  %38 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable
}

; Function Attrs: uwtable
define i64* @"_ZN5alloc2rc11Rc$LT$T$GT$3new17hb0a7537aaee246a5E"(%"core::cell::RefCell<OpngOptions>"* %value) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  %_9 = alloca %"core::cell::RefCell<OpngOptions>", align 8
  %_6 = alloca %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>", align 8
  store i8 1, i8* %_10, align 1
  %_7 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E"(i64 1)
          to label %bb1 unwind label %cleanup

bb9:                                              ; preds = %cleanup.body
  %2 = load i8, i8* %_10, align 1, !range !4, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb8, label %bb7

cleanup:                                          ; preds = %bb5, %bb4, %bb3, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %bb3.i, %cleanup
  %eh.lpad-body = phi { i8*, i32 } [ %4, %cleanup ], [ %27, %bb3.i ]
  %5 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  %6 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb9

bb1:                                              ; preds = %start
  %_8 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E"(i64 1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_10, align 1
  %9 = bitcast %"core::cell::RefCell<OpngOptions>"* %_9 to i8*
  %10 = bitcast %"core::cell::RefCell<OpngOptions>"* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 176, i1 false)
  %11 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_6 to i64*
  store i64 %_7, i64* %11, align 8
  %12 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_6, i32 0, i32 1
  store i64 %_8, i64* %12, align 8
  %13 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_6, i32 0, i32 2
  %14 = bitcast %"core::cell::RefCell<OpngOptions>"* %13 to i8*
  %15 = bitcast %"core::cell::RefCell<OpngOptions>"* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 176, i1 false)
  %_4.i = invoke i8* @_ZN5alloc5alloc15exchange_malloc17h92856370e84062b4E(i64 192, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb57be4c03adf9ad3E.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb2
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  invoke void @"_ZN4core3ptr98drop_in_place$LT$alloc..rc..RcBox$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$$GT$17hb77f1869cfecfb27E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_6) #18
          to label %bb3.i unwind label %abort.i

abort.i:                                          ; preds = %cleanup.i
  %21 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable

bb3.i:                                            ; preds = %cleanup.i
  %22 = bitcast { i8*, i32 }* %0 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = insertvalue { i8*, i32 } undef, i8* %23, 0
  %27 = insertvalue { i8*, i32 } %26, i32 %25, 1
  br label %cleanup.body

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb57be4c03adf9ad3E.exit": ; preds = %bb2
  %28 = bitcast i8* %_4.i to %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"*
  %29 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %28 to i64*
  %30 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %_4.i, i8* align 8 %30, i64 192, i1 false)
  br label %bb3

bb3:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb57be4c03adf9ad3E.exit"
  %_4 = invoke align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17he68ebe70985f9fb0E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %28)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_2 = invoke i64* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcb56773f51264b55E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %_4)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %31 = invoke i64* @"_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17hedf3906ff89fbcfaE"(i64* %_2)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  ret i64* %31

bb7:                                              ; preds = %bb8, %bb9
  %32 = bitcast { i8*, i32 }* %1 to i8**
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = insertvalue { i8*, i32 } undef, i8* %33, 0
  %37 = insertvalue { i8*, i32 } %36, i32 %35, 1
  resume { i8*, i32 } %37

bb8:                                              ; preds = %bb9
  invoke void @"_ZN4core3ptr74drop_in_place$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$17hd05fc771acb7a543E"(%"core::cell::RefCell<OpngOptions>"* %value) #18
          to label %bb7 unwind label %abort

abort:                                            ; preds = %bb8
  %38 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable
}

; Function Attrs: uwtable
define i64* @"_ZN5alloc2rc11Rc$LT$T$GT$3new17hb4ad104debf80846E"(%"core::cell::RefCell<OpngEngine>"* %value) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  %_9 = alloca %"core::cell::RefCell<OpngEngine>", align 8
  %_6 = alloca %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>", align 8
  store i8 1, i8* %_10, align 1
  %_7 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E"(i64 1)
          to label %bb1 unwind label %cleanup

bb9:                                              ; preds = %cleanup.body
  %2 = load i8, i8* %_10, align 1, !range !4, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb8, label %bb7

cleanup:                                          ; preds = %bb5, %bb4, %bb3, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %cleanup.i, %cleanup
  %eh.lpad-body = phi { i8*, i32 } [ %4, %cleanup ], [ %26, %cleanup.i ]
  %5 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  %6 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb9

bb1:                                              ; preds = %start
  %_8 = invoke i64 @"_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E"(i64 1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_10, align 1
  %9 = bitcast %"core::cell::RefCell<OpngEngine>"* %_9 to i8*
  %10 = bitcast %"core::cell::RefCell<OpngEngine>"* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %_6 to i64*
  store i64 %_7, i64* %11, align 8
  %12 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %_6, i32 0, i32 1
  store i64 %_8, i64* %12, align 8
  %13 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %_6, i32 0, i32 2
  %14 = bitcast %"core::cell::RefCell<OpngEngine>"* %13 to i8*
  %15 = bitcast %"core::cell::RefCell<OpngEngine>"* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %_4.i = invoke i8* @_ZN5alloc5alloc15exchange_malloc17h92856370e84062b4E(i64 32, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6bb470c39a2b67cbE.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb2
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  br label %cleanup.body

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6bb470c39a2b67cbE.exit": ; preds = %bb2
  %27 = bitcast i8* %_4.i to %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"*
  %28 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %27 to i64*
  %29 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %_4.i, i8* align 8 %29, i64 32, i1 false)
  br label %bb3

bb3:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6bb470c39a2b67cbE.exit"
  %_4 = invoke align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h4a885abde32d9de1E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %27)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_2 = invoke i64* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf121a77c002fec6cE"(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %_4)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %30 = invoke i64* @"_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h90381e4cf22f1a3cE"(i64* %_2)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  ret i64* %30

bb7:                                              ; preds = %bb8, %bb9
  %31 = bitcast { i8*, i32 }* %1 to i8**
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = insertvalue { i8*, i32 } undef, i8* %32, 0
  %36 = insertvalue { i8*, i32 } %35, i32 %34, 1
  resume { i8*, i32 } %36

bb8:                                              ; preds = %bb9
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h783e4635d92fddc0E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hf075c3619cbb7580E"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h068221d63f7c41e5E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h595f9c1c24b8daffE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hf075c3619cbb7580E"({ i8*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h068221d63f7c41e5E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17hc6a431efaefae611E(i64 %0, i64 %1) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17ha6ae71818700a968E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17hfa107681b5b3347cE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #20
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc15exchange_malloc17h92856370e84062b4E(i64 %size, i64 %align) unnamed_addr #1 {
start:
  %_6 = alloca { i8*, i64 }, align 8
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb4ebbcff1a8b6f33E(i64 %size, i64 %align)
  %layout.0 = extractvalue { i64, i64 } %0, 0
  %layout.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hc79ef410e579e012E"(%"alloc::alloc::Global"* align 1 bitcast (<{}>* @alloc168 to %"alloc::alloc::Global"*), i64 %layout.0, i64 %layout.1)
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
  %7 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hcb273ef5315c3250E"(i8* %ptr.0, i64 %ptr.1)
  br label %bb6

bb3:                                              ; preds = %bb2
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #17
  unreachable

bb6:                                              ; preds = %bb5
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17hd061750808310877E(i64 %0, i64 %1) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17ha6ae71818700a968E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17hfa107681b5b3347cE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #20
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h9010ae2b9558bb57E(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #1 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17ha6ae71818700a968E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17h866c0786cc9796adE({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !6, !noundef !1
  %8 = call i8* @_ZN5alloc5alloc5alloc17hd061750808310877E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !6, !noundef !1
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17hc6a431efaefae611E(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hee86eda5f580950dE"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h0ae03f738f04d83fE"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf642c17338ce8a23E"(i8* %_16)
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
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hca76202778e6a427E"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h553415cac400cf39E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc286 to %"core::panic::location::Location"*))
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
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hca76202778e6a427E"(i8* %_7, i64 0)
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
define internal void @_ZN5alloc5alloc7dealloc17hdceeaccb692ca3cbE(i8* %ptr, i64 %0, i64 %1) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17ha6ae71818700a968E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17hfa107681b5b3347cE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #20
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17h7d6616e20ed9ba4bE(i8* %0, i64* align 8 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h5970fb138236a2fbE"({ i8*, i64* }* align 8 %ptr)
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
  %18 = load i64, i64* %17, align 8, !range !7, !invariant.load !1
  store i64 %15, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h5970fb138236a2fbE"({ i8*, i64* }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !1
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !7, !invariant.load !1
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb4ebbcff1a8b6f33E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !1, !align !2, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h3c0215712f7ff963E"(i8* %_17.0, i64* align 8 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h5c7a046ac1e49891E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h803fa760567c4ab2E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
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
define { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h63509e93d4f536f2E"({}* align 1 %0, [3 x i64]* align 8 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  invoke void @_ZN4core3ptr4read17h41cfe65c41a10387E(%"alloc::alloc::Global"* %_4)
          to label %bb1 unwind label %cleanup

bb7:                                              ; preds = %bb4, %cleanup
  %6 = load i8, i8* %_9, align 1, !range !4, !noundef !1
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
  %_7.0 = load {}*, {}** %13, align 8, !nonnull !1, !align !5, !noundef !1
  %14 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 1
  %_7.1 = load [3 x i64]*, [3 x i64]** %14, align 8, !nonnull !1, !align !2, !noundef !1
  %15 = invoke { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h0594471b5e7e2d50E"({}* align 1 %_7.0, [3 x i64]* align 8 %_7.1)
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
  %21 = invoke { i8*, i64* } @"_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h87b70c6c69ce25c9E"({}* align 1 %_6.0, [3 x i64]* align 8 %_6.1)
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
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hc5cbb359093ad51bE"({ {}*, [3 x i64]* }* %b) #18
          to label %bb5 unwind label %abort

abort:                                            ; preds = %bb6
  %39 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h2dde730229de89aeE"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i64* }, align 8
  %2 = call { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h63509e93d4f536f2E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1)
  %_4.0 = extractvalue { i8*, i64* } %2, 0
  %_4.1 = extractvalue { i8*, i64* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hbdb06f1087571a4bE"(i8* %_4.0, i64* align 8 %_4.1)
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
define { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h0594471b5e7e2d50E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #1 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %_9 = alloca { i8*, i64* }, align 8
  %1 = bitcast { i8*, i64* }* %0 to { {}*, [3 x i64]* }*
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 0
  store {}* %b.0, {}** %2, align 8
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 1
  store [3 x i64]* %b.1, [3 x i64]** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !1, !align !5, !noundef !1
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
  %14 = call { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hbdb06f1087571a4bE"(i8* %_6.0, i64* align 8 %_6.1)
  %_5.0 = extractvalue { {}*, [3 x i64]* } %14, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %14, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %15 = insertvalue { {}*, [3 x i64]* } undef, {}* %_5.0, 0
  %16 = insertvalue { {}*, [3 x i64]* } %15, [3 x i64]* %_5.1, 1
  ret { {}*, [3 x i64]* } %16
}

; Function Attrs: inlinehint uwtable
define align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h4a885abde32d9de1E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %b) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %_9 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"**
  store %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %b, %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %2, i64** %_9, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i64** %_9 to %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"**
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"** %3 to i64**
  %_6 = load i64*, i64** %4, align 8, !nonnull !1, !noundef !1
  %_5 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h30455ab4b9e8e690E"(i64* %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %_5
}

; Function Attrs: inlinehint uwtable
define align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h535410f7ab87f3c7E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %b) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %_9 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"**
  store %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %b, %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %2, i64** %_9, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i64** %_9 to %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"**
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"** %3 to i64**
  %_6 = load i64*, i64** %4, align 8, !nonnull !1, !noundef !1
  %_5 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h5d230542e95d4febE"(i64* %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %_5
}

; Function Attrs: inlinehint uwtable
define align 8 %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h65f8ee7cb41b187eE"(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %b) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %_9 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"**
  store %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %b, %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %2, i64** %_9, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i64** %_9 to %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"**
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"** %3 to i64**
  %_6 = load i64*, i64** %4, align 8, !nonnull !1, !noundef !1
  %_5 = call %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2cfa3645f717ead4E"(i64* %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %_5
}

; Function Attrs: inlinehint uwtable
define align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h664e16c5249c7a4eE"(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %b) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %_9 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"**
  store %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %b, %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %2, i64** %_9, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i64** %_9 to %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"**
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"** %3 to i64**
  %_6 = load i64*, i64** %4, align 8, !nonnull !1, !noundef !1
  %_5 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hc8ac7c2a41125ecaE"(i64* %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %_5
}

; Function Attrs: inlinehint uwtable
define align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17he68ebe70985f9fb0E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %b) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %_9 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"**
  store %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %b, %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !align !2, !noundef !1
  store i64* %2, i64** %_9, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i64** %_9 to %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"**
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"** %3 to i64**
  %_6 = load i64*, i64** %4, align 8, !nonnull !1, !noundef !1
  %_5 = call %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h478d5e03724a299bE"(i64* %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %_5
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h8f3129bad5f3a873E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h2dde730229de89aeE"({}* align 1 %b.0, [3 x i64]* align 8 %b.1)
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

; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4767561b26ef0f17E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %_9 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 1, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %2, align 8
  %_4 = icmp eq i64 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %4 = load i8, i8* %_2, align 1, !range !4, !noundef !1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h2df62e71f3f5e8c7E(i64 %_8)
  %_7.0 = extractvalue { i64, i64 } %7, 0
  %_7.1 = extractvalue { i64, i64 } %7, 1
  br label %bb7

bb5:                                              ; preds = %bb3
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0, i32 0, i32 1
  store i64 0, i64* %9, align 8
  br label %bb11

bb11:                                             ; preds = %bb10, %bb5
  ret void

bb7:                                              ; preds = %bb6
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h34b2ecdac7fbba38E"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc288 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h1f2e1cc7cb13b4efE"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h0257c8bd8b43b4d1E"(i8* %_11)
  br label %bb10

bb10:                                             ; preds = %bb9
  %12 = bitcast { i8*, { i64, i64 } }* %_9 to i8**
  store i8* %_10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %_9, i32 0, i32 1
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %layout.0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %layout.1, i64* %15, align 8
  %16 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %17 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %16 to { i8*, { i64, i64 } }*
  %18 = bitcast { i8*, { i64, i64 } }* %17 to i8*
  %19 = bitcast { i8*, { i64, i64 } }* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hf075c3619cbb7580E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hb209b71908428ae0E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h803fa760567c4ab2E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17ha6ae71818700a968E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25b5785aafed8774E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !6, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17hdceeaccb692ca3cbE(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hc79ef410e579e012E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #1 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h9010ae2b9558bb57E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$core..cell..BorrowRef$u20$as$u20$core..ops..drop..Drop$GT$4drop17h399fb2579cd35225E"(i64** align 8 %self) unnamed_addr #1 {
start:
  %_8 = load i64*, i64** %self, align 8, !nonnull !1, !align !2, !noundef !1
  %borrow = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17heaa78793d360251cE"(i64* align 8 %_8)
  br label %bb1

bb1:                                              ; preds = %start
  %_9 = load i64*, i64** %self, align 8, !nonnull !1, !align !2, !noundef !1
  %_6 = sub i64 %borrow, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17hd259311471df3d1cE"(i64* align 8 %_9, i64 %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: uwtable
define void @"_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2eb43249249f236bE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf676fbc7eb175b4eE"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc2rc10RcInnerPtr10dec_strong17hf3159b3fd02d92f4E(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf676fbc7eb175b4eE"(i64** align 8 %self)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_6 = call i64 @_ZN5alloc2rc10RcInnerPtr6strong17hc4b66eddd276f713E(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %2 = icmp eq i64 %_6, 0
  br i1 %2, label %bb5, label %bb19

bb5:                                              ; preds = %bb4
  %_12 = call align 8 %"core::cell::RefCell<OpngOptions>"* @"_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17h779257bfec7afa21E"(i64** align 8 %self)
  br label %bb6

bb19:                                             ; preds = %bb4
  br label %bb20

bb20:                                             ; preds = %bb18, %bb19
  ret void

bb6:                                              ; preds = %bb5
  call void @"_ZN4core3ptr74drop_in_place$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$17hd05fc771acb7a543E"(%"core::cell::RefCell<OpngOptions>"* %_12)
  br label %bb7

bb7:                                              ; preds = %bb6
  %3 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf676fbc7eb175b4eE"(i64** align 8 %self)
  br label %bb8

bb8:                                              ; preds = %bb7
  call void @_ZN5alloc2rc10RcInnerPtr8dec_weak17ha68e9e26a521839bE(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %3)
  br label %bb9

bb9:                                              ; preds = %bb8
  %4 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf676fbc7eb175b4eE"(i64** align 8 %self)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_18 = call i64 @_ZN5alloc2rc10RcInnerPtr4weak17h942b4f1596b6c01fE(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %4)
  br label %bb11

bb11:                                             ; preds = %bb10
  %5 = icmp eq i64 %_18, 0
  br i1 %5, label %bb12, label %bb17

bb12:                                             ; preds = %bb11
  %_25 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_24 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hcb6130db165870bbE"(i64* %_25)
  br label %bb13

bb17:                                             ; preds = %bb11
  br label %bb18

bb18:                                             ; preds = %bb16, %bb17
  br label %bb20

bb13:                                             ; preds = %bb12
  %_28 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf676fbc7eb175b4eE"(i64** align 8 %self)
  br label %bb14

bb14:                                             ; preds = %bb13
  %6 = call { i64, i64 } @_ZN4core5alloc6layout6Layout9for_value17h4fbdf89c12f6d8a2E(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %_28)
  %_26.0 = extractvalue { i64, i64 } %6, 0
  %_26.1 = extractvalue { i64, i64 } %6, 1
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h803fa760567c4ab2E"(%"alloc::alloc::Global"* align 1 bitcast (<{}>* @alloc168 to %"alloc::alloc::Global"*), i8* %_24, i64 %_26.0, i64 %_26.1)
  br label %bb16

bb16:                                             ; preds = %bb15
  br label %bb18
}

; Function Attrs: uwtable
define void @"_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3497f9d4cec48ff3E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf63bf808e4312641E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc2rc10RcInnerPtr10dec_strong17h21b973f911cfecadE(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf63bf808e4312641E"(i64** align 8 %self)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_6 = call i64 @_ZN5alloc2rc10RcInnerPtr6strong17h5bcbd076e063e41aE(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %2 = icmp eq i64 %_6, 0
  br i1 %2, label %bb5, label %bb19

bb5:                                              ; preds = %bb4
  %_12 = call align 8 %"core::cell::RefCell<ExceptionContext>"* @"_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17hd911440206feefb2E"(i64** align 8 %self)
  br label %bb6

bb19:                                             ; preds = %bb4
  br label %bb20

bb20:                                             ; preds = %bb18, %bb19
  ret void

bb6:                                              ; preds = %bb5
  call void @"_ZN4core3ptr79drop_in_place$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$17h0ddc838e27ab33f4E"(%"core::cell::RefCell<ExceptionContext>"* %_12)
  br label %bb7

bb7:                                              ; preds = %bb6
  %3 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf63bf808e4312641E"(i64** align 8 %self)
  br label %bb8

bb8:                                              ; preds = %bb7
  call void @_ZN5alloc2rc10RcInnerPtr8dec_weak17hf8a6fb1aeab1e75fE(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %3)
  br label %bb9

bb9:                                              ; preds = %bb8
  %4 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf63bf808e4312641E"(i64** align 8 %self)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_18 = call i64 @_ZN5alloc2rc10RcInnerPtr4weak17he1a6b048bdf4e767E(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %4)
  br label %bb11

bb11:                                             ; preds = %bb10
  %5 = icmp eq i64 %_18, 0
  br i1 %5, label %bb12, label %bb17

bb12:                                             ; preds = %bb11
  %_25 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_24 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha545a9d890566fcfE"(i64* %_25)
  br label %bb13

bb17:                                             ; preds = %bb11
  br label %bb18

bb18:                                             ; preds = %bb16, %bb17
  br label %bb20

bb13:                                             ; preds = %bb12
  %_28 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf63bf808e4312641E"(i64** align 8 %self)
  br label %bb14

bb14:                                             ; preds = %bb13
  %6 = call { i64, i64 } @_ZN4core5alloc6layout6Layout9for_value17h945eb30b739611e5E(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %_28)
  %_26.0 = extractvalue { i64, i64 } %6, 0
  %_26.1 = extractvalue { i64, i64 } %6, 1
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h803fa760567c4ab2E"(%"alloc::alloc::Global"* align 1 bitcast (<{}>* @alloc168 to %"alloc::alloc::Global"*), i8* %_24, i64 %_26.0, i64 %_26.1)
  br label %bb16

bb16:                                             ; preds = %bb15
  br label %bb18
}

; Function Attrs: uwtable
define void @"_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81fc90c1d77d6131E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfd051a1ac9ff63a0E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc2rc10RcInnerPtr10dec_strong17h0dc0a742894019a9E(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfd051a1ac9ff63a0E"(i64** align 8 %self)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_6 = call i64 @_ZN5alloc2rc10RcInnerPtr6strong17hd5397eb73725c326E(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %2 = icmp eq i64 %_6, 0
  br i1 %2, label %bb5, label %bb19

bb5:                                              ; preds = %bb4
  %_12 = call align 8 %"core::cell::RefCell<OpngEngine>"* @"_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17hf17e705c117edeefE"(i64** align 8 %self)
  br label %bb6

bb19:                                             ; preds = %bb4
  br label %bb20

bb20:                                             ; preds = %bb18, %bb19
  ret void

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6
  %3 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfd051a1ac9ff63a0E"(i64** align 8 %self)
  br label %bb8

bb8:                                              ; preds = %bb7
  call void @_ZN5alloc2rc10RcInnerPtr8dec_weak17h88995592041e13aeE(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %3)
  br label %bb9

bb9:                                              ; preds = %bb8
  %4 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfd051a1ac9ff63a0E"(i64** align 8 %self)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_18 = call i64 @_ZN5alloc2rc10RcInnerPtr4weak17hcaf305b5262f452fE(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %4)
  br label %bb11

bb11:                                             ; preds = %bb10
  %5 = icmp eq i64 %_18, 0
  br i1 %5, label %bb12, label %bb17

bb12:                                             ; preds = %bb11
  %_25 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_24 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h70a86c44915d4929E"(i64* %_25)
  br label %bb13

bb17:                                             ; preds = %bb11
  br label %bb18

bb18:                                             ; preds = %bb16, %bb17
  br label %bb20

bb13:                                             ; preds = %bb12
  %_28 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfd051a1ac9ff63a0E"(i64** align 8 %self)
  br label %bb14

bb14:                                             ; preds = %bb13
  %6 = call { i64, i64 } @_ZN4core5alloc6layout6Layout9for_value17hb5a759d8c04e4068E(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %_28)
  %_26.0 = extractvalue { i64, i64 } %6, 0
  %_26.1 = extractvalue { i64, i64 } %6, 1
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h803fa760567c4ab2E"(%"alloc::alloc::Global"* align 1 bitcast (<{}>* @alloc168 to %"alloc::alloc::Global"*), i8* %_24, i64 %_26.0, i64 %_26.1)
  br label %bb16

bb16:                                             ; preds = %bb15
  br label %bb18
}

; Function Attrs: uwtable
define void @"_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe2d4b20d414cb2eE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc2rc10RcInnerPtr10dec_strong17h6798550c44c252b4E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E"(i64** align 8 %self)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_6 = call i64 @_ZN5alloc2rc10RcInnerPtr6strong17ha39cfa91ea0a3928E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %2 = icmp eq i64 %_6, 0
  br i1 %2, label %bb5, label %bb19

bb5:                                              ; preds = %bb4
  %_12 = call align 8 %"core::cell::RefCell<OpngSummary>"* @"_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17hf2d71a4807777b29E"(i64** align 8 %self)
  br label %bb6

bb19:                                             ; preds = %bb4
  br label %bb20

bb20:                                             ; preds = %bb18, %bb19
  ret void

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6
  %3 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E"(i64** align 8 %self)
  br label %bb8

bb8:                                              ; preds = %bb7
  call void @_ZN5alloc2rc10RcInnerPtr8dec_weak17h39d8cdf6c5cc77caE(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %3)
  br label %bb9

bb9:                                              ; preds = %bb8
  %4 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E"(i64** align 8 %self)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_18 = call i64 @_ZN5alloc2rc10RcInnerPtr4weak17haa5fd06d05ba4559E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %4)
  br label %bb11

bb11:                                             ; preds = %bb10
  %5 = icmp eq i64 %_18, 0
  br i1 %5, label %bb12, label %bb17

bb12:                                             ; preds = %bb11
  %_25 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_24 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h67f526f974c9f1c8E"(i64* %_25)
  br label %bb13

bb17:                                             ; preds = %bb11
  br label %bb18

bb18:                                             ; preds = %bb16, %bb17
  br label %bb20

bb13:                                             ; preds = %bb12
  %_28 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E"(i64** align 8 %self)
  br label %bb14

bb14:                                             ; preds = %bb13
  %6 = call { i64, i64 } @_ZN4core5alloc6layout6Layout9for_value17h7aeff5f8b0dae543E(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %_28)
  %_26.0 = extractvalue { i64, i64 } %6, 0
  %_26.1 = extractvalue { i64, i64 } %6, 1
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h803fa760567c4ab2E"(%"alloc::alloc::Global"* align 1 bitcast (<{}>* @alloc168 to %"alloc::alloc::Global"*), i8* %_24, i64 %_26.0, i64 %_26.1)
  br label %bb16

bb16:                                             ; preds = %bb15
  br label %bb18
}

; Function Attrs: uwtable
define void @"_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd26be84e63db717fE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfc160d86e997d716E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc2rc10RcInnerPtr10dec_strong17h44f614bd4b6947abE(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfc160d86e997d716E"(i64** align 8 %self)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_6 = call i64 @_ZN5alloc2rc10RcInnerPtr6strong17hc53d7e8649b3fbc7E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %2 = icmp eq i64 %_6, 0
  br i1 %2, label %bb5, label %bb19

bb5:                                              ; preds = %bb4
  %_12 = call align 8 %"core::cell::RefCell<OpngProcess>"* @"_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17he184ec01ba94fc93E"(i64** align 8 %self)
  br label %bb6

bb19:                                             ; preds = %bb4
  br label %bb20

bb20:                                             ; preds = %bb18, %bb19
  ret void

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6
  %3 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfc160d86e997d716E"(i64** align 8 %self)
  br label %bb8

bb8:                                              ; preds = %bb7
  call void @_ZN5alloc2rc10RcInnerPtr8dec_weak17h9881f5ad37bf6034E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %3)
  br label %bb9

bb9:                                              ; preds = %bb8
  %4 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfc160d86e997d716E"(i64** align 8 %self)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_18 = call i64 @_ZN5alloc2rc10RcInnerPtr4weak17h8085ec5dd1244e50E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %4)
  br label %bb11

bb11:                                             ; preds = %bb10
  %5 = icmp eq i64 %_18, 0
  br i1 %5, label %bb12, label %bb17

bb12:                                             ; preds = %bb11
  %_25 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_24 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h6679b9e2f79e419dE"(i64* %_25)
  br label %bb13

bb17:                                             ; preds = %bb11
  br label %bb18

bb18:                                             ; preds = %bb16, %bb17
  br label %bb20

bb13:                                             ; preds = %bb12
  %_28 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfc160d86e997d716E"(i64** align 8 %self)
  br label %bb14

bb14:                                             ; preds = %bb13
  %6 = call { i64, i64 } @_ZN4core5alloc6layout6Layout9for_value17hf5c6078c7ab7b869E(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %_28)
  %_26.0 = extractvalue { i64, i64 } %6, 0
  %_26.1 = extractvalue { i64, i64 } %6, 1
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h803fa760567c4ab2E"(%"alloc::alloc::Global"* align 1 bitcast (<{}>* @alloc168 to %"alloc::alloc::Global"*), i8* %_24, i64 %_26.0, i64 %_26.1)
  br label %bb16

bb16:                                             ; preds = %bb15
  br label %bb18
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb96f8b89d00e154bE"(%"alloc::string::String"* align 8 %self) unnamed_addr #1 {
start:
  %_5 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  %0 = call { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcd3fa3cf0cee899fE"(%"alloc::vec::Vec<u8>"* align 8 %_5)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h2c5ec68b0bb74b75E([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN66_$LT$core..cell..BorrowRefMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17h79b7f1bc05a07683E"(i64** align 8 %self) unnamed_addr #1 {
start:
  %_8 = load i64*, i64** %self, align 8, !nonnull !1, !align !2, !noundef !1
  %borrow = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17heaa78793d360251cE"(i64* align 8 %_8)
  br label %bb1

bb1:                                              ; preds = %start
  %_9 = load i64*, i64** %self, align 8, !nonnull !1, !align !2, !noundef !1
  %_6 = add i64 %borrow, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17hd259311471df3d1cE"(i64* align 8 %_9, i64 %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define align 1 %ExceptionContext* @"_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3c0d3d80a7be45f4E"({ i8*, i64* }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = bitcast { i8*, i64* }* %self to i8**
  %0 = call align 1 %ExceptionContext* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h6efb0e34777498dfE"(i8** align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %ExceptionContext* %0
}

; Function Attrs: inlinehint uwtable
define align 1 %OpngOptions* @"_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17ha61653b39cc09f1bE"({ i8*, i64* }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = bitcast { i8*, i64* }* %self to i8**
  %0 = call align 1 %OpngOptions* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h539a3fe0b1ad4730E"(i8** align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %OpngOptions* %0
}

; Function Attrs: inlinehint uwtable
define align 1 %OpngProcess* @"_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb044d967cfafb6c1E"({ i8*, i64* }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = bitcast { i8*, i64* }* %self to i8**
  %0 = call align 1 %OpngProcess* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h9b75035cada3a8dbE"(i8** align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %OpngProcess* %0
}

; Function Attrs: inlinehint uwtable
define align 1 %OpngEngine* @"_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he95943241e7148ecE"({ i8*, i64* }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = bitcast { i8*, i64* }* %self to i8**
  %0 = call align 1 %OpngEngine* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hc106b13f600d468dE"(i8** align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %OpngEngine* %0
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdadc95802a5c4f35E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h783e4635d92fddc0E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4f6ac685eb2cf727E(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcd3fa3cf0cee899fE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_2 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h595f9c1c24b8daffE"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hb391ea8e248e6dc8E(i8* %_2, i64 %_4)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h97da5391718c3a04E"(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %0) unnamed_addr #1 {
start:
  %1 = bitcast %"core::option::Option<alloc::string::String>"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 24, i1 false)
  %2 = bitcast %"core::option::Option<alloc::string::String>"* %0 to {}**
  store {}* null, {}** %2, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define align 1 %OpngSummary* @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h4666c6bb90baedbdE"({ i8*, i64* }* align 8 %self) unnamed_addr #1 {
start:
  %_5 = bitcast { i8*, i64* }* %self to i8**
  %_4 = call align 1 %OpngSummary* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17hcbec5bf2ed0fa00dE"(i8** align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  ret %OpngSummary* %_4
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6957df6069743c64E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4767561b26ef0f17E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !3, !noundef !1
  %2 = icmp eq i64 %1, 0
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i64, i64 } }*
  %6 = bitcast { i8*, { i64, i64 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 8, !nonnull !1, !noundef !1
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !6, !noundef !1
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h803fa760567c4ab2E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5487613ff0936583E"(i64 %0, i64 %1) unnamed_addr #1 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !8, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %v = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %v, i64* %7, align 8
  %8 = bitcast { i64, i64 }* %2 to i64*
  store i64 0, i64* %8, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"* %_6 to %"core::alloc::layout::LayoutError"*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %11 = bitcast i64* %10 to %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"*
  %12 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %12, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %14 = load i64, i64* %13, align 8, !range !8, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf642c17338ce8a23E"(i8* %0) unnamed_addr #1 {
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
define { {}*, [3 x i64]* } @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17hed02614fed6793e6E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
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
  call void @_ZN3std7process5abort17hbfbd791ff32f7241E() #17
  unreachable

bb3:                                              ; preds = %start
  %a = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %_5.0 = bitcast { [0 x i8]*, i64 }* %a to {}*
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_5.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.3 to [3 x i64]*), 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: uwtable
define { {}*, [3 x i64]* } @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h9e706f129680b455E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_4 = alloca { i8*, i64 }, align 8
  %data = alloca { {}*, [3 x i64]* }, align 8
  %2 = call { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$4take17hbbe85ff6acf847d3E"({ i8*, i64 }* align 8 %self)
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
  call void @_ZN3std7process5abort17hbfbd791ff32f7241E() #17
  unreachable

bb4:                                              ; preds = %bb1
  %6 = bitcast { i8*, i64 }* %_4 to { [0 x i8]*, i64 }*
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %6, i32 0, i32 0
  %a.0 = load [0 x i8]*, [0 x i8]** %7, align 8, !nonnull !1, !align !5, !noundef !1
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %6, i32 0, i32 1
  %a.1 = load i64, i64* %8, align 8
  %_4.i = invoke i8* @_ZN5alloc5alloc15exchange_malloc17h92856370e84062b4E(i64 16, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7bdf008c82492cc0E.exit" unwind label %cleanup.i

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

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7bdf008c82492cc0E.exit": ; preds = %bb4
  %20 = bitcast i8* %_4.i to { [0 x i8]*, i64 }*
  %21 = bitcast { [0 x i8]*, i64 }* %20 to i64*
  %22 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 0
  store [0 x i8]* %a.0, [0 x i8]** %22, align 8
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 1
  store i64 %a.1, i64* %23, align 8
  br label %bb5

bb5:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7bdf008c82492cc0E.exit"
  %24 = bitcast { [0 x i8]*, i64 }* %20 to {}*
  %25 = bitcast {}* %24 to i8*
  %_8.0 = bitcast i8* %25 to {}*
  %26 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 0
  store {}* %_8.0, {}** %26, align 8
  %27 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.3 to [3 x i64]*), [3 x i64]** %27, align 8
  %28 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 0
  %_14.0 = load {}*, {}** %28, align 8, !nonnull !1, !align !5, !noundef !1
  %29 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 1
  %_14.1 = load [3 x i64]*, [3 x i64]** %29, align 8, !nonnull !1, !align !2, !noundef !1
  %30 = invoke { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h8f3129bad5f3a873E"({}* align 1 %_14.0, [3 x i64]* align 8 %_14.1)
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
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hc5cbb359093ad51bE"({ {}*, [3 x i64]* }* %data) #18
          to label %bb8 unwind label %abort

abort:                                            ; preds = %bb9
  %44 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h87b70c6c69ce25c9E"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h42ba23811c1e5824E"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1)
  %_2.0 = extractvalue { i8*, i64* } %0, 0
  %_2.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64* } @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h98160baaad354300E"(i8* %_2.0, i64* align 8 %_2.1)
  %2 = extractvalue { i8*, i64* } %1, 0
  %3 = extractvalue { i8*, i64* } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { i8*, i64* } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64* } %4, i64* %3, 1
  ret { i8*, i64* } %5
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h42ba23811c1e5824E"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1) unnamed_addr #1 {
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

; Function Attrs: inlinehint uwtable
define i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h7debefd40eecd73aE"(%"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* align 8 %reference) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"**
  store %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %reference, %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h8df62d33960c4dd5E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* align 8 %reference) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"**
  store %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %reference, %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17haf0fcbd939667c18E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* align 8 %reference) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"**
  store %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %reference, %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hd0ac387b1cd5a055E"(%"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* align 8 %reference) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"**
  store %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %reference, %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hd658707cc18c1645E"(%"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* align 8 %reference) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"**
  store %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %reference, %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: uwtable
define void @default(%ExceptionContext* sret(%ExceptionContext) %0) unnamed_addr #0 {
start:
  %_1 = alloca %"core::option::Option<alloc::string::String>", align 8
  %1 = bitcast %"core::option::Option<alloc::string::String>"* %_1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 24, i1 false)
  %2 = bitcast %"core::option::Option<alloc::string::String>"* %_1 to {}**
  store {}* null, {}** %2, align 8
  %3 = bitcast %ExceptionContext* %0 to i8*
  store i8 0, i8* %3, align 1
  %4 = getelementptr inbounds %ExceptionContext, %ExceptionContext* %0, i32 0, i32 1
  %5 = bitcast %"core::option::Option<alloc::string::String>"* %4 to i8*
  %6 = bitcast %"core::option::Option<alloc::string::String>"* %_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %6, i64 24, i1 false)
  ret void
}

; Function Attrs: uwtable
define i32 @opng_optimize([0 x i8]* align 1 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %3 = alloca i8, align 1
  %_69 = alloca { i8*, i64* }, align 8
  %_57 = alloca { i8*, i64* }, align 8
  %_48 = alloca %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", align 8
  %_47 = alloca %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>", align 8
  %result = alloca %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>", align 8
  %_40 = alloca { i8*, i64* }, align 8
  %_34 = alloca [1 x { i8*, i64* }], align 8
  %_27 = alloca %"core::fmt::Arguments", align 8
  %_21 = alloca { i8*, i64* }, align 8
  %_16 = alloca %ExceptionContext, align 1
  %_15 = alloca %"core::cell::RefCell<ExceptionContext>", align 8
  %exception_context = alloca i64*, align 8
  %_13 = alloca %OpngOptions, align 1
  %_12 = alloca %"core::cell::RefCell<OpngOptions>", align 8
  %options = alloca i64*, align 8
  %_10 = alloca %OpngSummary, align 1
  %_9 = alloca %"core::cell::RefCell<OpngSummary>", align 8
  %summary = alloca i64*, align 8
  %_7 = alloca %OpngProcess, align 1
  %_6 = alloca %"core::cell::RefCell<OpngProcess>", align 8
  %process = alloca i64*, align 8
  %_4 = alloca %OpngEngine, align 1
  %_3 = alloca %"core::cell::RefCell<OpngEngine>", align 8
  %engine = alloca i64*, align 8
  %4 = alloca i32, align 4
  %infile_name = alloca { [0 x i8]*, i64 }, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %infile_name, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %infile_name, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = call i8 @"_ZN68_$LT$opng_optimize..OpngEngine$u20$as$u20$core..default..Default$GT$7default17hc72af9dffe4ca087E"()
  store i8 %7, i8* %3, align 1
  %8 = bitcast %OpngEngine* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %3, i64 1, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %OpngEngine* %_4 to i8*
  %10 = load i8, i8* %9, align 1
  call void @"_ZN4core4cell16RefCell$LT$T$GT$3new17hd001d6ebaf4688a2E"(%"core::cell::RefCell<OpngEngine>"* sret(%"core::cell::RefCell<OpngEngine>") %_3, i8 %10)
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = call i64* @"_ZN5alloc2rc11Rc$LT$T$GT$3new17hb4ad104debf80846E"(%"core::cell::RefCell<OpngEngine>"* %_3)
  store i64* %11, i64** %engine, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  invoke void @"_ZN69_$LT$opng_optimize..OpngProcess$u20$as$u20$core..default..Default$GT$7default17h982aeb725a268bc3E"(%OpngProcess* sret(%OpngProcess) %_7)
          to label %bb4 unwind label %cleanup

bb63:                                             ; preds = %bb62, %cleanup
  invoke void @"_ZN4core3ptr94drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngEngine$GT$$GT$$GT$17h3fb9ecc96322e942E"(i64** %engine) #18
          to label %bb64 unwind label %abort

cleanup:                                          ; preds = %bb51, %bb5, %bb4, %bb3
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = extractvalue { i8*, i32 } %12, 1
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  br label %bb63

bb4:                                              ; preds = %bb3
  invoke void @"_ZN4core4cell16RefCell$LT$T$GT$3new17hbc7c29dfcc4abfb1E"(%"core::cell::RefCell<OpngProcess>"* sret(%"core::cell::RefCell<OpngProcess>") %_6, %OpngProcess* %_7)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %17 = invoke i64* @"_ZN5alloc2rc11Rc$LT$T$GT$3new17h6006af416c61f9d2E"(%"core::cell::RefCell<OpngProcess>"* %_6)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i64* %17, i64** %process, align 8
  invoke void @"_ZN69_$LT$opng_optimize..OpngSummary$u20$as$u20$core..default..Default$GT$7default17h33f6b025045f734eE"(%OpngSummary* sret(%OpngSummary) %_10)
          to label %bb7 unwind label %cleanup1

bb62:                                             ; preds = %bb61, %cleanup1
  invoke void @"_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngProcess$GT$$GT$$GT$17hca51a848fae36d5eE"(i64** %process) #18
          to label %bb63 unwind label %abort

cleanup1:                                         ; preds = %bb50, %bb8, %bb7, %bb6
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %bb62

bb7:                                              ; preds = %bb6
  invoke void @"_ZN4core4cell16RefCell$LT$T$GT$3new17heb4b8c411723c775E"(%"core::cell::RefCell<OpngSummary>"* sret(%"core::cell::RefCell<OpngSummary>") %_9, %OpngSummary* %_10)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  %23 = invoke i64* @"_ZN5alloc2rc11Rc$LT$T$GT$3new17h2512ccfd4434ee0eE"(%"core::cell::RefCell<OpngSummary>"* %_9)
          to label %bb9 unwind label %cleanup1

bb9:                                              ; preds = %bb8
  store i64* %23, i64** %summary, align 8
  invoke void @"_ZN69_$LT$opng_optimize..OpngOptions$u20$as$u20$core..default..Default$GT$7default17h73827c5ecb32e742E"(%OpngOptions* sret(%OpngOptions) %_13)
          to label %bb10 unwind label %cleanup2

bb61:                                             ; preds = %bb60, %cleanup2
  invoke void @"_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngSummary$GT$$GT$$GT$17h403090d44d5137f3E"(i64** %summary) #18
          to label %bb62 unwind label %abort

cleanup2:                                         ; preds = %bb49, %bb11, %bb10, %bb9
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  %26 = extractvalue { i8*, i32 } %24, 1
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %bb61

bb10:                                             ; preds = %bb9
  invoke void @"_ZN4core4cell16RefCell$LT$T$GT$3new17h83b101f04da0b017E"(%"core::cell::RefCell<OpngOptions>"* sret(%"core::cell::RefCell<OpngOptions>") %_12, %OpngOptions* %_13)
          to label %bb11 unwind label %cleanup2

bb11:                                             ; preds = %bb10
  %29 = invoke i64* @"_ZN5alloc2rc11Rc$LT$T$GT$3new17hb0a7537aaee246a5E"(%"core::cell::RefCell<OpngOptions>"* %_12)
          to label %bb12 unwind label %cleanup2

bb12:                                             ; preds = %bb11
  store i64* %29, i64** %options, align 8
  invoke void @default(%ExceptionContext* sret(%ExceptionContext) %_16)
          to label %bb13 unwind label %cleanup3

bb60:                                             ; preds = %bb59, %cleanup3
  invoke void @"_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$$GT$17h07626d96c8c9f696E"(i64** %options) #18
          to label %bb61 unwind label %abort

cleanup3:                                         ; preds = %bb48, %bb14, %bb13, %bb12
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  %32 = extractvalue { i8*, i32 } %30, 1
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %bb60

bb13:                                             ; preds = %bb12
  invoke void @"_ZN4core4cell16RefCell$LT$T$GT$3new17hcef9f8e73d5bc3d2E"(%"core::cell::RefCell<ExceptionContext>"* sret(%"core::cell::RefCell<ExceptionContext>") %_15, %ExceptionContext* %_16)
          to label %bb14 unwind label %cleanup3

bb14:                                             ; preds = %bb13
  %35 = invoke i64* @"_ZN5alloc2rc11Rc$LT$T$GT$3new17habdac6697f11a2deE"(%"core::cell::RefCell<ExceptionContext>"* %_15)
          to label %bb15 unwind label %cleanup3

bb15:                                             ; preds = %bb14
  store i64* %35, i64** %exception_context, align 8
  %36 = invoke align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfd051a1ac9ff63a0E"(i64** align 8 %engine)
          to label %"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4be56845f8002b5dE.exit" unwind label %cleanup4

"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4be56845f8002b5dE.exit": ; preds = %bb15
  %37 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngEngine>>"* %36, i32 0, i32 2
  br label %bb16

bb59:                                             ; preds = %bb56, %bb57, %bb58, %cleanup4
  invoke void @"_ZN4core3ptr100drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$$GT$17h572f384c7cba7a9bE"(i64** %exception_context) #18
          to label %bb60 unwind label %abort

cleanup4:                                         ; preds = %bb47, %bb30, %bb29, %bb28, %bb25, %bb24, %bb23, %bb22, %bb20, %bb21, %bb18, %bb16, %bb15
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  %40 = extractvalue { i8*, i32 } %38, 1
  %41 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %bb59

bb16:                                             ; preds = %"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4be56845f8002b5dE.exit"
  %43 = invoke { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$6borrow17h8abbbf7cad26e025E"(%"core::cell::RefCell<OpngEngine>"* align 8 %37, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc293 to %"core::panic::location::Location"*))
          to label %bb17 unwind label %cleanup4

bb17:                                             ; preds = %bb16
  store { i8*, i64* } %43, { i8*, i64* }* %_21, align 8
  %_19 = invoke align 1 %OpngEngine* @"_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he95943241e7148ecE"({ i8*, i64* }* align 8 %_21)
          to label %bb18 unwind label %cleanup5

bb58:                                             ; preds = %cleanup5
  invoke void @"_ZN4core3ptr69drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngEngine$GT$$GT$17h1bdc26c95cba5111E"({ i8*, i64* }* %_21) #18
          to label %bb59 unwind label %abort

cleanup5:                                         ; preds = %bb17
  %44 = landingpad { i8*, i32 }
          cleanup
  %45 = extractvalue { i8*, i32 } %44, 0
  %46 = extractvalue { i8*, i32 } %44, 1
  %47 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %bb58

bb18:                                             ; preds = %bb17
  %49 = bitcast %OpngEngine* %_19 to i8*
  %50 = load i8, i8* %49, align 1, !range !4, !noundef !1
  %_18 = trunc i8 %50 to i1
  %_17 = xor i1 %_18, true
  invoke void @"_ZN4core3ptr69drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngEngine$GT$$GT$17h1bdc26c95cba5111E"({ i8*, i64* }* %_21)
          to label %bb19 unwind label %cleanup4

abort:                                            ; preds = %bb54, %bb55, %bb56, %bb57, %bb58, %bb59, %bb60, %bb61, %bb62, %bb63
  %51 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable

bb19:                                             ; preds = %bb18
  br i1 %_17, label %bb20, label %bb21

bb21:                                             ; preds = %bb19
  %52 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h037e3219149f2586E({ [0 x i8]*, i64 }* align 8 %infile_name)
          to label %bb22 unwind label %cleanup4

bb20:                                             ; preds = %bb19
  invoke void @_ZN3std9panicking11begin_panic17h2ed28aec4862cbd2E([0 x i8]* align 1 bitcast (<{ [33 x i8] }>* @alloc294 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc296 to %"core::panic::location::Location"*)) #17
          to label %unreachable unwind label %cleanup4

unreachable:                                      ; preds = %panic9, %panic, %bb20
  unreachable

bb22:                                             ; preds = %bb21
  %_35.0 = extractvalue { i8*, i64* } %52, 0
  %_35.1 = extractvalue { i8*, i64* } %52, 1
  %53 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_34, i64 0, i64 0
  %54 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %53, i32 0, i32 0
  store i8* %_35.0, i8** %54, align 8
  %55 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %53, i32 0, i32 1
  store i64* %_35.1, i64** %55, align 8
  %_31.0 = bitcast [1 x { i8*, i64* }]* %_34 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117hd9431f2288eef4b2E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_27, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc119 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_31.0, i64 1)
          to label %bb23 unwind label %cleanup4

bb23:                                             ; preds = %bb22
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_27)
          to label %bb24 unwind label %cleanup4

bb24:                                             ; preds = %bb23
  %56 = invoke align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E"(i64** align 8 %summary)
          to label %"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h955a5b0884912407E.exit11" unwind label %cleanup4

"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h955a5b0884912407E.exit11": ; preds = %bb24
  %57 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %56, i32 0, i32 2
  br label %bb25

bb25:                                             ; preds = %"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h955a5b0884912407E.exit11"
  %58 = invoke { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17hb7be88996e442393E"(%"core::cell::RefCell<OpngSummary>"* align 8 %57, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc298 to %"core::panic::location::Location"*))
          to label %bb26 unwind label %cleanup4

bb26:                                             ; preds = %bb25
  store { i8*, i64* } %58, { i8*, i64* }* %_40, align 8
  %_38 = invoke align 1 %OpngSummary* @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h4666c6bb90baedbdE"({ i8*, i64* }* align 8 %_40)
          to label %bb27 unwind label %cleanup6

bb57:                                             ; preds = %cleanup6
  invoke void @"_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E"({ i8*, i64* }* %_40) #18
          to label %bb59 unwind label %abort

cleanup6:                                         ; preds = %panic, %bb26
  %59 = landingpad { i8*, i32 }
          cleanup
  %60 = extractvalue { i8*, i32 } %59, 0
  %61 = extractvalue { i8*, i32 } %59, 1
  %62 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  br label %bb57

bb27:                                             ; preds = %bb26
  %64 = bitcast %OpngSummary* %_38 to i32*
  %65 = load i32, i32* %64, align 1
  %66 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %65, i32 1)
  %_44.0 = extractvalue { i32, i1 } %66, 0
  %_44.1 = extractvalue { i32, i1 } %66, 1
  %67 = call i1 @llvm.expect.i1(i1 %_44.1, i1 false)
  br i1 %67, label %panic, label %bb28

bb28:                                             ; preds = %bb27
  %68 = bitcast %OpngSummary* %_38 to i32*
  store i32 %_44.0, i32* %68, align 1
  invoke void @"_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E"({ i8*, i64* }* %_40)
          to label %bb29 unwind label %cleanup4

panic:                                            ; preds = %bb27
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.4 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc300 to %"core::panic::location::Location"*)) #17
          to label %unreachable unwind label %cleanup6

bb29:                                             ; preds = %bb28
  invoke void @opng_clear_image_info()
          to label %bb30 unwind label %cleanup4

bb30:                                             ; preds = %bb29
  %69 = bitcast %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_48 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %infile_name, { [0 x i8]*, i64 }** %69, align 8
  %70 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_48, i32 0, i32 1
  store i64** %process, i64*** %70, align 8
  %71 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_48, i32 0, i32 2
  store i64** %summary, i64*** %71, align 8
  %72 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_48, i32 0, i32 3
  store i64** %options, i64*** %72, align 8
  %73 = bitcast %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %_47 to %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"*
  %74 = bitcast %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %73 to i8*
  %75 = bitcast %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 32, i1 false)
  invoke void @_ZN3std5panic12catch_unwind17h001ad1b5506c1da2E(%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* sret(%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>") %result, %"core::panic::unwind_safe::AssertUnwindSafe<[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]>"* %_47)
          to label %bb31 unwind label %cleanup4

bb31:                                             ; preds = %bb30
  %76 = bitcast %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* %result to i32*
  %77 = load i32, i32* %76, align 8, !range !9, !noundef !1
  %_53 = zext i32 %77 to i64
  switch i64 %_53, label %bb33 [
    i64 0, label %bb34
    i64 1, label %bb32
  ]

bb33:                                             ; preds = %bb31
  unreachable

bb34:                                             ; preds = %bb31
  %78 = bitcast %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* %result to %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Ok"*
  %79 = getelementptr inbounds %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Ok", %"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>::Ok"* %78, i32 0, i32 1
  %res = load i32, i32* %79, align 4
  store i32 %res, i32* %4, align 4
  br label %bb47

bb32:                                             ; preds = %bb31
  %80 = invoke align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E"(i64** align 8 %summary)
          to label %"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h955a5b0884912407E.exit" unwind label %cleanup7

"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h955a5b0884912407E.exit": ; preds = %bb32
  %81 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %80, i32 0, i32 2
  br label %bb35

bb56:                                             ; preds = %bb54, %bb55, %cleanup7
  invoke void @"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$i32$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h955ecb30a6112c66E"(%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* %result) #18
          to label %bb59 unwind label %abort

cleanup7:                                         ; preds = %bb45, %bb40, %bb39, %bb38, %bb35, %bb32
  %82 = landingpad { i8*, i32 }
          cleanup
  %83 = extractvalue { i8*, i32 } %82, 0
  %84 = extractvalue { i8*, i32 } %82, 1
  %85 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  br label %bb56

bb35:                                             ; preds = %"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h955a5b0884912407E.exit"
  %87 = invoke { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17hb7be88996e442393E"(%"core::cell::RefCell<OpngSummary>"* align 8 %81, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc302 to %"core::panic::location::Location"*))
          to label %bb36 unwind label %cleanup7

bb36:                                             ; preds = %bb35
  store { i8*, i64* } %87, { i8*, i64* }* %_57, align 8
  %_55 = invoke align 1 %OpngSummary* @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h4666c6bb90baedbdE"({ i8*, i64* }* align 8 %_57)
          to label %bb37 unwind label %cleanup8

bb55:                                             ; preds = %cleanup8
  invoke void @"_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E"({ i8*, i64* }* %_57) #18
          to label %bb56 unwind label %abort

cleanup8:                                         ; preds = %panic9, %bb36
  %88 = landingpad { i8*, i32 }
          cleanup
  %89 = extractvalue { i8*, i32 } %88, 0
  %90 = extractvalue { i8*, i32 } %88, 1
  %91 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  br label %bb55

bb37:                                             ; preds = %bb36
  %93 = getelementptr inbounds %OpngSummary, %OpngSummary* %_55, i32 0, i32 1
  %94 = load i32, i32* %93, align 1
  %95 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %94, i32 1)
  %_61.0 = extractvalue { i32, i1 } %95, 0
  %_61.1 = extractvalue { i32, i1 } %95, 1
  %96 = call i1 @llvm.expect.i1(i1 %_61.1, i1 false)
  br i1 %96, label %panic9, label %bb38

bb38:                                             ; preds = %bb37
  %97 = getelementptr inbounds %OpngSummary, %OpngSummary* %_55, i32 0, i32 1
  store i32 %_61.0, i32* %97, align 1
  invoke void @"_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E"({ i8*, i64* }* %_57)
          to label %bb39 unwind label %cleanup7

panic9:                                           ; preds = %bb37
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.4 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc304 to %"core::panic::location::Location"*)) #17
          to label %unreachable unwind label %cleanup8

bb39:                                             ; preds = %bb38
  %98 = invoke align 8 %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf63bf808e4312641E"(i64** align 8 %exception_context)
          to label %"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd10d74af9053811cE.exit" unwind label %cleanup7

"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd10d74af9053811cE.exit": ; preds = %bb39
  %99 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>", %"alloc::rc::RcBox<core::cell::RefCell<ExceptionContext>>"* %98, i32 0, i32 2
  br label %bb40

bb40:                                             ; preds = %"_ZN66_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd10d74af9053811cE.exit"
  %100 = invoke { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$6borrow17h8bd19677a792d77bE"(%"core::cell::RefCell<ExceptionContext>"* align 8 %99, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc306 to %"core::panic::location::Location"*))
          to label %bb41 unwind label %cleanup7

bb41:                                             ; preds = %bb40
  store { i8*, i64* } %100, { i8*, i64* }* %_69, align 8
  %_67 = invoke align 1 %ExceptionContext* @"_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3c0d3d80a7be45f4E"({ i8*, i64* }* align 8 %_69)
          to label %bb42 unwind label %cleanup10

bb54:                                             ; preds = %cleanup10
  invoke void @"_ZN4core3ptr75drop_in_place$LT$core..cell..Ref$LT$opng_optimize..ExceptionContext$GT$$GT$17haedc53eef8718208E"({ i8*, i64* }* %_69) #18
          to label %bb56 unwind label %abort

cleanup10:                                        ; preds = %bb44, %bb43, %bb42, %bb41
  %101 = landingpad { i8*, i32 }
          cleanup
  %102 = extractvalue { i8*, i32 } %101, 0
  %103 = extractvalue { i8*, i32 } %101, 1
  %104 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  br label %bb54

bb42:                                             ; preds = %bb41
  %_66 = getelementptr inbounds %ExceptionContext, %ExceptionContext* %_67, i32 0, i32 1
  %106 = invoke { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$8as_deref17h3ca5f2e848205aedE"(%"core::option::Option<alloc::string::String>"* align 8 %_66)
          to label %bb43 unwind label %cleanup10

bb43:                                             ; preds = %bb42
  %_65.0 = extractvalue { i8*, i64 } %106, 0
  %_65.1 = extractvalue { i8*, i64 } %106, 1
  %107 = invoke { [0 x i8]*, i64 } @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17h9d543470c9fc45a5E"(i8* align 1 %_65.0, i64 %_65.1, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc307 to [0 x i8]*), i64 13)
          to label %bb44 unwind label %cleanup10

bb44:                                             ; preds = %bb43
  %_64.0 = extractvalue { [0 x i8]*, i64 } %107, 0
  %_64.1 = extractvalue { [0 x i8]*, i64 } %107, 1
  invoke void @opng_print_error([0 x i8]* align 1 %_64.0, i64 %_64.1)
          to label %bb45 unwind label %cleanup10

bb45:                                             ; preds = %bb44
  invoke void @"_ZN4core3ptr75drop_in_place$LT$core..cell..Ref$LT$opng_optimize..ExceptionContext$GT$$GT$17haedc53eef8718208E"({ i8*, i64* }* %_69)
          to label %bb46 unwind label %cleanup7

bb46:                                             ; preds = %bb45
  store i32 -1, i32* %4, align 4
  br label %bb47

bb47:                                             ; preds = %bb46, %bb34
  invoke void @"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$i32$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h955ecb30a6112c66E"(%"core::result::Result<i32, alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>"* %result)
          to label %bb48 unwind label %cleanup4

bb48:                                             ; preds = %bb47
  invoke void @"_ZN4core3ptr100drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$$GT$17h572f384c7cba7a9bE"(i64** %exception_context)
          to label %bb49 unwind label %cleanup3

bb49:                                             ; preds = %bb48
  invoke void @"_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$$GT$17h07626d96c8c9f696E"(i64** %options)
          to label %bb50 unwind label %cleanup2

bb50:                                             ; preds = %bb49
  invoke void @"_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngSummary$GT$$GT$$GT$17h403090d44d5137f3E"(i64** %summary)
          to label %bb51 unwind label %cleanup1

bb51:                                             ; preds = %bb50
  invoke void @"_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngProcess$GT$$GT$$GT$17hca51a848fae36d5eE"(i64** %process)
          to label %bb52 unwind label %cleanup

bb52:                                             ; preds = %bb51
  call void @"_ZN4core3ptr94drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngEngine$GT$$GT$$GT$17h3fb9ecc96322e942E"(i64** %engine)
  br label %bb53

bb64:                                             ; preds = %bb63
  %108 = bitcast { i8*, i32 }* %2 to i8**
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = insertvalue { i8*, i32 } undef, i8* %109, 0
  %113 = insertvalue { i8*, i32 } %112, i32 %111, 1
  resume { i8*, i32 } %113

bb53:                                             ; preds = %bb52
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN13opng_optimize13opng_optimize28_$u7b$$u7b$closure$u7d$$u7d$17hc93df5933a0670fcE"(%"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* align 8 %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_52 = alloca { i8*, i64* }, align 8
  %_46 = alloca { i8*, i64* }, align 8
  %_38 = alloca { i8*, i64* }, align 8
  %_28 = alloca { i8*, i64* }, align 8
  %_21 = alloca { i8*, i64* }, align 8
  %_15 = alloca { i8*, i64* }, align 8
  %1 = bitcast %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_1 to { [0 x i8]*, i64 }**
  %_57 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %1, align 8, !nonnull !1, !align !2, !noundef !1
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_57, i32 0, i32 0
  %_58.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !1, !align !5, !noundef !1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_57, i32 0, i32 1
  %_58.1 = load i64, i64* %3, align 8
  %4 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_1, i32 0, i32 1
  %_59 = load i64**, i64*** %4, align 8, !nonnull !1, !align !2, !noundef !1
  %5 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_1, i32 0, i32 2
  %_60 = load i64**, i64*** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_1, i32 0, i32 3
  %_61 = load i64**, i64*** %6, align 8, !nonnull !1, !align !2, !noundef !1
  call void @opng_optimize_impl([0 x i8]* align 1 %_58.0, i64 %_58.1, i64** align 8 %_59, i64** align 8 %_60, i64** align 8 %_61)
  br label %bb1

bb1:                                              ; preds = %start
  %7 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_1, i32 0, i32 1
  %_62 = load i64**, i64*** %7, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfc160d86e997d716E"(i64** align 8 %_62)
  %9 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %8, i32 0, i32 2
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = call { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$6borrow17hfb065cbb4c439aa7E"(%"core::cell::RefCell<OpngProcess>"* align 8 %9, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc309 to %"core::panic::location::Location"*))
  store { i8*, i64* } %10, { i8*, i64* }* %_15, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %_13 = invoke align 1 %OpngProcess* @"_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb044d967cfafb6c1E"({ i8*, i64* }* align 8 %_15)
          to label %bb4 unwind label %cleanup

bb37:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngProcess$GT$$GT$17h7bcfabf77d0c5b93E"({ i8*, i64* }* %_15) #18
          to label %bb38 unwind label %abort

cleanup:                                          ; preds = %bb3
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb37

bb4:                                              ; preds = %bb3
  %16 = bitcast %OpngProcess* %_13 to i32*
  %_12 = load i32, i32* %16, align 1
  %_11 = and i32 %_12, 256
  %_10 = icmp ne i32 %_11, 0
  call void @"_ZN4core3ptr70drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngProcess$GT$$GT$17h7bcfabf77d0c5b93E"({ i8*, i64* }* %_15)
  br label %bb5

abort:                                            ; preds = %bb32, %bb33, %bb34, %bb35, %bb36, %bb37
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable

bb38:                                             ; preds = %bb32, %bb33, %bb34, %bb35, %bb36, %bb37
  %18 = bitcast { i8*, i32 }* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb5:                                              ; preds = %bb4
  br i1 %_10, label %bb6, label %bb16

bb16:                                             ; preds = %bb15, %bb5
  %24 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_1, i32 0, i32 1
  %_65 = load i64**, i64*** %24, align 8, !nonnull !1, !align !2, !noundef !1
  %25 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfc160d86e997d716E"(i64** align 8 %_65)
  %26 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngProcess>>"* %25, i32 0, i32 2
  br label %bb17

bb6:                                              ; preds = %bb5
  %27 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_1, i32 0, i32 2
  %_63 = load i64**, i64*** %27, align 8, !nonnull !1, !align !2, !noundef !1
  %28 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E"(i64** align 8 %_63)
  %29 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %28, i32 0, i32 2
  br label %bb7

bb7:                                              ; preds = %bb6
  %30 = call { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17hb7be88996e442393E"(%"core::cell::RefCell<OpngSummary>"* align 8 %29, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc311 to %"core::panic::location::Location"*))
  store { i8*, i64* } %30, { i8*, i64* }* %_21, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  %_19 = invoke align 1 %OpngSummary* @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h4666c6bb90baedbdE"({ i8*, i64* }* align 8 %_21)
          to label %bb9 unwind label %cleanup1

bb36:                                             ; preds = %cleanup1
  invoke void @"_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E"({ i8*, i64* }* %_21) #18
          to label %bb38 unwind label %abort

cleanup1:                                         ; preds = %panic, %bb8
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  %33 = extractvalue { i8*, i32 } %31, 1
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %bb36

bb9:                                              ; preds = %bb8
  %36 = getelementptr inbounds %OpngSummary, %OpngSummary* %_19, i32 0, i32 1
  %37 = load i32, i32* %36, align 1
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %37, i32 1)
  %_25.0 = extractvalue { i32, i1 } %38, 0
  %_25.1 = extractvalue { i32, i1 } %38, 1
  %39 = call i1 @llvm.expect.i1(i1 %_25.1, i1 false)
  br i1 %39, label %panic, label %bb10

bb10:                                             ; preds = %bb9
  %40 = getelementptr inbounds %OpngSummary, %OpngSummary* %_19, i32 0, i32 1
  store i32 %_25.0, i32* %40, align 1
  call void @"_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E"({ i8*, i64* }* %_21)
  br label %bb11

panic:                                            ; preds = %bb9
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.4 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc313 to %"core::panic::location::Location"*)) #17
          to label %unreachable unwind label %cleanup1

unreachable:                                      ; preds = %panic7, %panic3, %panic
  unreachable

bb11:                                             ; preds = %bb10
  %41 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_1, i32 0, i32 2
  %_64 = load i64**, i64*** %41, align 8, !nonnull !1, !align !2, !noundef !1
  %42 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E"(i64** align 8 %_64)
  %43 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %42, i32 0, i32 2
  br label %bb12

bb12:                                             ; preds = %bb11
  %44 = call { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17hb7be88996e442393E"(%"core::cell::RefCell<OpngSummary>"* align 8 %43, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc315 to %"core::panic::location::Location"*))
  store { i8*, i64* } %44, { i8*, i64* }* %_28, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  %_26 = invoke align 1 %OpngSummary* @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h4666c6bb90baedbdE"({ i8*, i64* }* align 8 %_28)
          to label %bb14 unwind label %cleanup2

bb35:                                             ; preds = %cleanup2
  invoke void @"_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E"({ i8*, i64* }* %_28) #18
          to label %bb38 unwind label %abort

cleanup2:                                         ; preds = %panic3, %bb13
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  %47 = extractvalue { i8*, i32 } %45, 1
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %bb35

bb14:                                             ; preds = %bb13
  %50 = getelementptr inbounds %OpngSummary, %OpngSummary* %_26, i32 0, i32 2
  %51 = load i32, i32* %50, align 1
  %52 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %51, i32 1)
  %_32.0 = extractvalue { i32, i1 } %52, 0
  %_32.1 = extractvalue { i32, i1 } %52, 1
  %53 = call i1 @llvm.expect.i1(i1 %_32.1, i1 false)
  br i1 %53, label %panic3, label %bb15

bb15:                                             ; preds = %bb14
  %54 = getelementptr inbounds %OpngSummary, %OpngSummary* %_26, i32 0, i32 2
  store i32 %_32.0, i32* %54, align 1
  call void @"_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E"({ i8*, i64* }* %_28)
  br label %bb16

panic3:                                           ; preds = %bb14
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.4 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc317 to %"core::panic::location::Location"*)) #17
          to label %unreachable unwind label %cleanup2

bb17:                                             ; preds = %bb16
  %55 = call { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$6borrow17hfb065cbb4c439aa7E"(%"core::cell::RefCell<OpngProcess>"* align 8 %26, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc319 to %"core::panic::location::Location"*))
  store { i8*, i64* } %55, { i8*, i64* }* %_38, align 8
  br label %bb18

bb18:                                             ; preds = %bb17
  %_36 = invoke align 1 %OpngProcess* @"_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb044d967cfafb6c1E"({ i8*, i64* }* align 8 %_38)
          to label %bb19 unwind label %cleanup4

bb34:                                             ; preds = %cleanup4
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngProcess$GT$$GT$17h7bcfabf77d0c5b93E"({ i8*, i64* }* %_38) #18
          to label %bb38 unwind label %abort

cleanup4:                                         ; preds = %bb18
  %56 = landingpad { i8*, i32 }
          cleanup
  %57 = extractvalue { i8*, i32 } %56, 0
  %58 = extractvalue { i8*, i32 } %56, 1
  %59 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  br label %bb34

bb19:                                             ; preds = %bb18
  %61 = bitcast %OpngProcess* %_36 to i32*
  %_35 = load i32, i32* %61, align 1
  %_34 = and i32 %_35, 16
  %_33 = icmp ne i32 %_34, 0
  call void @"_ZN4core3ptr70drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngProcess$GT$$GT$17h7bcfabf77d0c5b93E"({ i8*, i64* }* %_38)
  br label %bb20

bb20:                                             ; preds = %bb19
  br i1 %_33, label %bb21, label %bb31

bb31:                                             ; preds = %bb30, %bb25, %bb20
  ret i32 0

bb21:                                             ; preds = %bb20
  %62 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_1, i32 0, i32 3
  %_66 = load i64**, i64*** %62, align 8, !nonnull !1, !align !2, !noundef !1
  %63 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf676fbc7eb175b4eE"(i64** align 8 %_66)
  %64 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngOptions>>"* %63, i32 0, i32 2
  br label %bb22

bb22:                                             ; preds = %bb21
  %65 = call { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$6borrow17h19b2b1d1708916a4E"(%"core::cell::RefCell<OpngOptions>"* align 8 %64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc321 to %"core::panic::location::Location"*))
  store { i8*, i64* } %65, { i8*, i64* }* %_46, align 8
  br label %bb23

bb23:                                             ; preds = %bb22
  %_44 = invoke align 1 %OpngOptions* @"_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17ha61653b39cc09f1bE"({ i8*, i64* }* align 8 %_46)
          to label %bb24 unwind label %cleanup5

bb33:                                             ; preds = %cleanup5
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngOptions$GT$$GT$17h815c0489b6730018E"({ i8*, i64* }* %_46) #18
          to label %bb38 unwind label %abort

cleanup5:                                         ; preds = %bb23
  %66 = landingpad { i8*, i32 }
          cleanup
  %67 = extractvalue { i8*, i32 } %66, 0
  %68 = extractvalue { i8*, i32 } %66, 1
  %69 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %bb33

bb24:                                             ; preds = %bb23
  %71 = getelementptr inbounds %OpngOptions, %OpngOptions* %_44, i32 0, i32 24
  %_43 = load i32, i32* %71, align 1
  %_42 = icmp ne i32 %_43, 0
  call void @"_ZN4core3ptr70drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngOptions$GT$$GT$17h815c0489b6730018E"({ i8*, i64* }* %_46)
  br label %bb25

bb25:                                             ; preds = %bb24
  br i1 %_42, label %bb26, label %bb31

bb26:                                             ; preds = %bb25
  %72 = getelementptr inbounds %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]", %"[closure@inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs:107:48: 107:50]"* %_1, i32 0, i32 2
  %_67 = load i64**, i64*** %72, align 8, !nonnull !1, !align !2, !noundef !1
  %73 = call align 8 %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E"(i64** align 8 %_67)
  %74 = getelementptr inbounds %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>", %"alloc::rc::RcBox<core::cell::RefCell<OpngSummary>>"* %73, i32 0, i32 2
  br label %bb27

bb27:                                             ; preds = %bb26
  %75 = call { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17hb7be88996e442393E"(%"core::cell::RefCell<OpngSummary>"* align 8 %74, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc323 to %"core::panic::location::Location"*))
  store { i8*, i64* } %75, { i8*, i64* }* %_52, align 8
  br label %bb28

bb28:                                             ; preds = %bb27
  %_50 = invoke align 1 %OpngSummary* @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h4666c6bb90baedbdE"({ i8*, i64* }* align 8 %_52)
          to label %bb29 unwind label %cleanup6

bb32:                                             ; preds = %cleanup6
  invoke void @"_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E"({ i8*, i64* }* %_52) #18
          to label %bb38 unwind label %abort

cleanup6:                                         ; preds = %panic7, %bb28
  %76 = landingpad { i8*, i32 }
          cleanup
  %77 = extractvalue { i8*, i32 } %76, 0
  %78 = extractvalue { i8*, i32 } %76, 1
  %79 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %bb32

bb29:                                             ; preds = %bb28
  %81 = getelementptr inbounds %OpngSummary, %OpngSummary* %_50, i32 0, i32 3
  %82 = load i32, i32* %81, align 1
  %83 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %82, i32 1)
  %_56.0 = extractvalue { i32, i1 } %83, 0
  %_56.1 = extractvalue { i32, i1 } %83, 1
  %84 = call i1 @llvm.expect.i1(i1 %_56.1, i1 false)
  br i1 %84, label %panic7, label %bb30

bb30:                                             ; preds = %bb29
  %85 = getelementptr inbounds %OpngSummary, %OpngSummary* %_50, i32 0, i32 3
  store i32 %_56.0, i32* %85, align 1
  call void @"_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E"({ i8*, i64* }* %_52)
  br label %bb31

panic7:                                           ; preds = %bb29
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.4 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc325 to %"core::panic::location::Location"*)) #17
          to label %unreachable unwind label %cleanup6
}

; Function Attrs: uwtable
define void @opng_clear_image_info() unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @opng_optimize_impl([0 x i8]* align 1 %infile_name.0, i64 %infile_name.1, i64** align 8 %process, i64** align 8 %summary, i64** align 8 %options) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @opng_print_error([0 x i8]* align 1 %0, i64 %1) unnamed_addr #0 {
start:
  %_10 = alloca [1 x { i8*, i64* }], align 8
  %_3 = alloca %"core::fmt::Arguments", align 8
  %err_msg = alloca { [0 x i8]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %err_msg, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %err_msg, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h037e3219149f2586E({ [0 x i8]*, i64 }* align 8 %err_msg)
  %_11.0 = extractvalue { i8*, i64* } %4, 0
  %_11.1 = extractvalue { i8*, i64* } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_10, i64 0, i64 0
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 0
  store i8* %_11.0, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 1
  store i64* %_11.1, i64** %7, align 8
  %_7.0 = bitcast [1 x { i8*, i64* }]* %_10 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hd9431f2288eef4b2E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_3, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc158 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_7.0, i64 1)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"* %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @opng_destroy_image_info() unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @main() unnamed_addr #0 {
start:
  %_12 = alloca [1 x { i8*, i64* }], align 8
  %_5 = alloca %"core::fmt::Arguments", align 8
  %result = alloca i32, align 4
  %0 = call i32 @opng_optimize([0 x i8]* align 1 bitcast (<{ [11 x i8] }>* @alloc326 to [0 x i8]*), i64 11)
  store i32 %0, i32* %result, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hec1768cae9c4771bE(i32* align 4 %result)
  %_13.0 = extractvalue { i8*, i64* } %1, 0
  %_13.1 = extractvalue { i8*, i64* } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_12, i64 0, i64 0
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  store i8* %_13.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  store i64* %_13.1, i64** %4, align 8
  %_9.0 = bitcast [1 x { i8*, i64* }]* %_12 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hd9431f2288eef4b2E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_5, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc178 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_9.0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_5)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN68_$LT$opng_optimize..OpngEngine$u20$as$u20$core..default..Default$GT$7default17hc72af9dffe4ca087E"() unnamed_addr #1 {
start:
  %0 = alloca %OpngEngine, align 1
  %_1 = call zeroext i1 @"_ZN47_$LT$bool$u20$as$u20$core..default..Default$GT$7default17h0550b234379d5349E"()
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %OpngEngine* %0 to i8*
  %2 = zext i1 %_1 to i8
  store i8 %2, i8* %1, align 1
  %3 = bitcast %OpngEngine* %0 to i8*
  %4 = load i8, i8* %3, align 1
  ret i8 %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN69_$LT$opng_optimize..OpngProcess$u20$as$u20$core..default..Default$GT$7default17h982aeb725a268bc3E"(%OpngProcess* sret(%OpngProcess) %0) unnamed_addr #1 {
start:
  %_1 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = call i64 @"_ZN46_$LT$i64$u20$as$u20$core..default..Default$GT$7default17h499051280af90f40E"()
  br label %bb3

bb3:                                              ; preds = %bb2
  %_4 = call i64 @"_ZN46_$LT$u64$u20$as$u20$core..default..Default$GT$7default17h5244c51549bdba61E"()
  br label %bb4

bb4:                                              ; preds = %bb3
  %_5 = call i64 @"_ZN46_$LT$u64$u20$as$u20$core..default..Default$GT$7default17h5244c51549bdba61E"()
  br label %bb5

bb5:                                              ; preds = %bb4
  %_6 = call i64 @"_ZN46_$LT$u64$u20$as$u20$core..default..Default$GT$7default17h5244c51549bdba61E"()
  br label %bb6

bb6:                                              ; preds = %bb5
  %_7 = call i64 @"_ZN46_$LT$u64$u20$as$u20$core..default..Default$GT$7default17h5244c51549bdba61E"()
  br label %bb7

bb7:                                              ; preds = %bb6
  %_8 = call i64 @"_ZN46_$LT$u64$u20$as$u20$core..default..Default$GT$7default17h5244c51549bdba61E"()
  br label %bb8

bb8:                                              ; preds = %bb7
  %_9 = call i64 @"_ZN46_$LT$u64$u20$as$u20$core..default..Default$GT$7default17h5244c51549bdba61E"()
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb10

bb10:                                             ; preds = %bb9
  %_11 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb11

bb11:                                             ; preds = %bb10
  %_12 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb12

bb12:                                             ; preds = %bb11
  %_13 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb13

bb13:                                             ; preds = %bb12
  %_14 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb14

bb14:                                             ; preds = %bb13
  %_15 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb15

bb15:                                             ; preds = %bb14
  %_16 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb16

bb16:                                             ; preds = %bb15
  %_17 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb17

bb17:                                             ; preds = %bb16
  %_18 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb18

bb18:                                             ; preds = %bb17
  %_19 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb19

bb19:                                             ; preds = %bb18
  %_20 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb20

bb20:                                             ; preds = %bb19
  %1 = bitcast %OpngProcess* %0 to i32*
  store i32 %_1, i32* %1, align 1
  %2 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 1
  store i32 %_2, i32* %2, align 1
  %3 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 2
  store i64 %_3, i64* %3, align 1
  %4 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 3
  store i64 %_4, i64* %4, align 1
  %5 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 4
  store i64 %_5, i64* %5, align 1
  %6 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 5
  store i64 %_6, i64* %6, align 1
  %7 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 6
  store i64 %_7, i64* %7, align 1
  %8 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 7
  store i64 %_8, i64* %8, align 1
  %9 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 8
  store i64 %_9, i64* %9, align 1
  %10 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 9
  store i32 %_10, i32* %10, align 1
  %11 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 10
  store i32 %_11, i32* %11, align 1
  %12 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 11
  store i32 %_12, i32* %12, align 1
  %13 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 12
  store i32 %_13, i32* %13, align 1
  %14 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 13
  store i32 %_14, i32* %14, align 1
  %15 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 14
  store i32 %_15, i32* %15, align 1
  %16 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 15
  store i32 %_16, i32* %16, align 1
  %17 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 16
  store i32 %_17, i32* %17, align 1
  %18 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 17
  store i32 %_18, i32* %18, align 1
  %19 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 18
  store i32 %_19, i32* %19, align 1
  %20 = getelementptr inbounds %OpngProcess, %OpngProcess* %0, i32 0, i32 19
  store i32 %_20, i32* %20, align 1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN69_$LT$opng_optimize..OpngSummary$u20$as$u20$core..default..Default$GT$7default17h33f6b025045f734eE"(%OpngSummary* sret(%OpngSummary) %0) unnamed_addr #1 {
start:
  %_1 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb3

bb3:                                              ; preds = %bb2
  %_4 = call i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
  br label %bb4

bb4:                                              ; preds = %bb3
  %1 = bitcast %OpngSummary* %0 to i32*
  store i32 %_1, i32* %1, align 1
  %2 = getelementptr inbounds %OpngSummary, %OpngSummary* %0, i32 0, i32 1
  store i32 %_2, i32* %2, align 1
  %3 = getelementptr inbounds %OpngSummary, %OpngSummary* %0, i32 0, i32 2
  store i32 %_3, i32* %3, align 1
  %4 = getelementptr inbounds %OpngSummary, %OpngSummary* %0, i32 0, i32 3
  store i32 %_4, i32* %4, align 1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN69_$LT$opng_optimize..OpngOptions$u20$as$u20$core..default..Default$GT$7default17h73827c5ecb32e742E"(%OpngOptions* sret(%OpngOptions) %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_13 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_12 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_11 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_1 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb3

bb3:                                              ; preds = %bb2
  %_4 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb4

bb4:                                              ; preds = %bb3
  %_5 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb5

bb5:                                              ; preds = %bb4
  %_6 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb6

bb6:                                              ; preds = %bb5
  %_7 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb7

bb7:                                              ; preds = %bb6
  %_8 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb8

bb8:                                              ; preds = %bb7
  %_9 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
  br label %bb10

bb10:                                             ; preds = %bb9
  call void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h97da5391718c3a04E"(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %_11)
  br label %bb11

bb11:                                             ; preds = %bb10
  invoke void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h97da5391718c3a04E"(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %_12)
          to label %bb12 unwind label %cleanup

bb29:                                             ; preds = %bb28, %cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h65e165433a327bc9E"(%"core::option::Option<alloc::string::String>"* %_11) #18
          to label %bb30 unwind label %abort

cleanup:                                          ; preds = %bb11
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb29

bb12:                                             ; preds = %bb11
  invoke void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h97da5391718c3a04E"(%"core::option::Option<alloc::string::String>"* sret(%"core::option::Option<alloc::string::String>") %_13)
          to label %bb13 unwind label %cleanup1

bb28:                                             ; preds = %bb27, %cleanup1
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h65e165433a327bc9E"(%"core::option::Option<alloc::string::String>"* %_12) #18
          to label %bb29 unwind label %abort

cleanup1:                                         ; preds = %bb12
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb28

bb13:                                             ; preds = %bb12
  %_14 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
          to label %bb14 unwind label %cleanup2

bb27:                                             ; preds = %cleanup2
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h65e165433a327bc9E"(%"core::option::Option<alloc::string::String>"* %_13) #18
          to label %bb28 unwind label %abort

cleanup2:                                         ; preds = %bb25, %bb24, %bb23, %bb22, %bb21, %bb20, %bb19, %bb18, %bb17, %bb16, %bb15, %bb14, %bb13
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = extractvalue { i8*, i32 } %12, 1
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  br label %bb27

bb14:                                             ; preds = %bb13
  %_15 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
          to label %bb15 unwind label %cleanup2

bb15:                                             ; preds = %bb14
  %_16 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
          to label %bb16 unwind label %cleanup2

bb16:                                             ; preds = %bb15
  %_17 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
          to label %bb17 unwind label %cleanup2

bb17:                                             ; preds = %bb16
  %_18 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
          to label %bb18 unwind label %cleanup2

bb18:                                             ; preds = %bb17
  %_19 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
          to label %bb19 unwind label %cleanup2

bb19:                                             ; preds = %bb18
  %_20 = invoke i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
          to label %bb20 unwind label %cleanup2

bb20:                                             ; preds = %bb19
  %_21 = invoke i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
          to label %bb21 unwind label %cleanup2

bb21:                                             ; preds = %bb20
  %_22 = invoke i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
          to label %bb22 unwind label %cleanup2

bb22:                                             ; preds = %bb21
  %_23 = invoke i32 @"_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE"()
          to label %bb23 unwind label %cleanup2

bb23:                                             ; preds = %bb22
  %_24 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
          to label %bb24 unwind label %cleanup2

bb24:                                             ; preds = %bb23
  %_25 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
          to label %bb25 unwind label %cleanup2

bb25:                                             ; preds = %bb24
  %_26 = invoke i32 @"_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE"()
          to label %bb26 unwind label %cleanup2

bb26:                                             ; preds = %bb25
  %17 = bitcast %OpngOptions* %0 to i32*
  store i32 %_1, i32* %17, align 1
  %18 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 1
  store i32 %_2, i32* %18, align 1
  %19 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 2
  store i32 %_3, i32* %19, align 1
  %20 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 3
  store i32 %_4, i32* %20, align 1
  %21 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 4
  store i32 %_5, i32* %21, align 1
  %22 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 5
  store i32 %_6, i32* %22, align 1
  %23 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 6
  store i32 %_7, i32* %23, align 1
  %24 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 7
  store i32 %_8, i32* %24, align 1
  %25 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 8
  store i32 %_9, i32* %25, align 1
  %26 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 9
  store i32 %_10, i32* %26, align 1
  %27 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 10
  %28 = bitcast %"core::option::Option<alloc::string::String>"* %27 to i8*
  %29 = bitcast %"core::option::Option<alloc::string::String>"* %_11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 8 %29, i64 24, i1 false)
  %30 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 11
  %31 = bitcast %"core::option::Option<alloc::string::String>"* %30 to i8*
  %32 = bitcast %"core::option::Option<alloc::string::String>"* %_12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 8 %32, i64 24, i1 false)
  %33 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 12
  %34 = bitcast %"core::option::Option<alloc::string::String>"* %33 to i8*
  %35 = bitcast %"core::option::Option<alloc::string::String>"* %_13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 8 %35, i64 24, i1 false)
  %36 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 13
  store i32 %_14, i32* %36, align 1
  %37 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 14
  store i32 %_15, i32* %37, align 1
  %38 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 15
  store i32 %_16, i32* %38, align 1
  %39 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 16
  store i32 %_17, i32* %39, align 1
  %40 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 17
  store i32 %_18, i32* %40, align 1
  %41 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 18
  store i32 %_19, i32* %41, align 1
  %42 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 19
  store i32 %_20, i32* %42, align 1
  %43 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 20
  store i32 %_21, i32* %43, align 1
  %44 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 21
  store i32 %_22, i32* %44, align 1
  %45 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 22
  store i32 %_23, i32* %45, align 1
  %46 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 23
  store i32 %_24, i32* %46, align 1
  %47 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 24
  store i32 %_25, i32* %47, align 1
  %48 = getelementptr inbounds %OpngOptions, %OpngOptions* %0, i32 0, i32 25
  store i32 %_26, i32* %48, align 1
  ret void

abort:                                            ; preds = %bb27, %bb28, %bb29
  %49 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #19
  unreachable

bb30:                                             ; preds = %bb29
  %50 = bitcast { i8*, i32 }* %1 to i8**
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = insertvalue { i8*, i32 } undef, i8* %51, 0
  %55 = insertvalue { i8*, i32 } %54, i32 %53, 1
  resume { i8*, i32 } %55
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #0

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #7

; Function Attrs: noreturn uwtable
declare void @_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE({}* align 1, [3 x i64]* align 8, i64* align 8, %"core::panic::location::Location"* align 8, i1 zeroext) unnamed_addr #8

define internal i32 @__rust_try(void (i8*)* %0, i8* %1, void (i8*, i8*)* %2) unnamed_addr #9 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
entry-block:
  invoke void %0(i8* %1)
          to label %then unwind label %catch

then:                                             ; preds = %entry-block
  ret i32 0

catch:                                            ; preds = %entry-block
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void %2(i8* %1, i8* %4)
  ret i32 1
}

; Function Attrs: cold uwtable
declare { {}*, [3 x i64]* } @_ZN3std9panicking3try7cleanup17h2ed61da26aa1440dE(i8*) unnamed_addr #10

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #13

; Function Attrs: uwtable
declare zeroext i1 @"_ZN60_$LT$core..cell..BorrowError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8006753225ae68ddE"(%"core::cell::BorrowError"* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare zeroext i1 @"_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4c633e1f2b589beE"(%"core::cell::BorrowMutError"* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #15

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #16

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #15

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #15

; Function Attrs: cold noreturn uwtable
declare void @_ZN3std7process5abort17hbfbd791ff32f7241E() unnamed_addr #16

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #12

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"*) unnamed_addr #0

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #9 = { "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #10 = { cold uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #11 = { nofree nosync nounwind readnone willreturn }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #14 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #15 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #16 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #17 = { noreturn }
attributes #18 = { noinline }
attributes #19 = { noinline noreturn nounwind }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 8}
!3 = !{i64 0, i64 -9223372036854775807}
!4 = !{i8 0, i8 2}
!5 = !{i64 1}
!6 = !{i64 1, i64 -9223372036854775807}
!7 = !{i64 1, i64 0}
!8 = !{i64 0, i64 2}
!9 = !{i32 0, i32 2}
!10 = !{i32 3278047}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.rs.bc", hash: (1631146269, 772851823, 3644372972, 216465828, 2308103391))
^1 = gv: (name: "alloc323", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 96708425095102469
^2 = gv: (name: "_ZN4core5alloc6layout6Layout5align17hfa107681b5b3347cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^33), (callee: ^287))))) ; guid = 138490510436546806
^3 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb08bde7f239c7c63E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^227)), refs: (^298, ^129)))) ; guid = 203067923776788729
^4 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h1f2e1cc7cb13b4efE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^111), (callee: ^54))))) ; guid = 241842585356666961
^5 = gv: (name: "_ZN4core5alloc6layout6Layout9for_value17h945eb30b739611e5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^133), (callee: ^238), (callee: ^256))))) ; guid = 339710989480448979
^6 = gv: (name: "_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hd658707cc18c1645E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 376419446957220806
^7 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$3new17hd001d6ebaf4688a2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 58, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^169)), refs: (^298)))) ; guid = 391648979064301158
^8 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$6borrow17h8bd19677a792d77bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^300), (callee: ^106)), refs: (^284)))) ; guid = 393053727931376833
^9 = gv: (name: "_ZN3std9panicking3try8do_catch17h1931938a5744c2d1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, calls: ((callee: ^228))))) ; guid = 422965659683575353
^10 = gv: (name: "_ZN5alloc2rc10RcInnerPtr10dec_strong17hf3159b3fd02d92f4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^116), (callee: ^143))))) ; guid = 458477678069284947
^11 = gv: (name: "alloc293", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 498488663303666543
^12 = gv: (name: "_ZN5alloc5alloc8box_free17h7d6616e20ed9ba4bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^78), (callee: ^256), (callee: ^226), (callee: ^160), (callee: ^115)), refs: (^298)))) ; guid = 533952701397160800
^13 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hc823880c6b8aad28E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^32))))) ; guid = 565019725057728597
^14 = gv: (name: "_ZN4core3ptr100drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$$GT$17h572f384c7cba7a9bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^334))))) ; guid = 582477679954898515
^15 = gv: (name: "_ZN5alloc5alloc15exchange_malloc17h92856370e84062b4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23, calls: ((callee: ^256), (callee: ^86), (callee: ^130), (callee: ^374)), refs: (^326)))) ; guid = 609053623067046508
^16 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^17 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17heb5b02f07facb8a3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^325), (callee: ^18), (callee: ^215), (callee: ^376)), refs: (^298)))) ; guid = 634888370740634016
^18 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$core..cell..BorrowRef$GT$17h6f0b65dc8f878608E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^182))))) ; guid = 718266263795204724
^19 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hf075c3619cbb7580E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^92))))) ; guid = 818015174856064832
^20 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hb391ea8e248e6dc8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^189))))) ; guid = 826637104354056748
^21 = gv: (name: "_ZN4core3ptr70drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngOptions$GT$$GT$17h815c0489b6730018E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^18))))) ; guid = 930311849314523206
^22 = gv: (name: "_ZN4core3mem12align_of_val17hec8dba58d2986d65E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 942232090556658582
^23 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h13953879ef50e117E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^170), (callee: ^151), (callee: ^376)), refs: (^298)))) ; guid = 1043656901661740235
^24 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf676fbc7eb175b4eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^358))))) ; guid = 1056718883550886932
^25 = gv: (name: "_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h87b70c6c69ce25c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^291), (callee: ^50))))) ; guid = 1082652948632225552
^26 = gv: (name: "_ZN3std5panic12catch_unwind17h001ad1b5506c1da2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^45))))) ; guid = 1119833280778919713
^27 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h197e54b00c4ab098E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 21, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^87)), refs: (^298)))) ; guid = 1136338624239158656
^28 = gv: (name: "_ZN5alloc2rc10RcInnerPtr4weak17h942b4f1596b6c01fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^71))))) ; guid = 1194146712918056939
^29 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h0257c8bd8b43b4d1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^160))))) ; guid = 1199738650967777384
^30 = gv: (name: "_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h65e165433a327bc9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^232))))) ; guid = 1233597180971547508
^31 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hc63cd81024760cc8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 1415582971691847386
^32 = gv: (name: "_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hd0ac387b1cd5a055E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 1450609035397626113
^33 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd41ee095335a3554E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^31))))) ; guid = 1498154594264518939
^34 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^35 = gv: (name: "_ZN5alloc2rc10RcInnerPtr8dec_weak17h39d8cdf6c5cc77caE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^176), (callee: ^143))))) ; guid = 1613388573701632874
^36 = gv: (name: "alloc147", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1615703806446699372
^37 = gv: (name: "alloc302", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 1616036605845817357
^38 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h535410f7ab87f3c7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^121))))) ; guid = 1640933868704224149
^39 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5dac19bfa66f5e2fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1640971203570153390
^40 = gv: (name: "_ZN4core3ptr4read17h974c0dff528fcfefE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 1650343914925904937
^41 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0406850b2e25f53aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 1651643937624447872
^42 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hcb6130db165870bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^358), (callee: ^39))))) ; guid = 1677903496730340357
^43 = gv: (name: "_ZN4core3fmt9Arguments6new_v117hd9431f2288eef4b2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^43), (callee: ^328)), refs: (^326, ^186, ^230)))) ; guid = 1697719983931323275
^44 = gv: (name: "alloc321", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 1699987195656711121
^45 = gv: (name: "_ZN3std9panicking3try17hf6208ff9fdd2589aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 58, calls: ((callee: ^257)), refs: (^368, ^9)))) ; guid = 1744544352502607389
^46 = gv: (name: "_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17h97c30b02dc6edc5fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^65))))) ; guid = 1796258167333099668
^47 = gv: (name: "_ZN4core4hint21unreachable_unchecked17ha39d1a012a8d8097E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 1933181431413399107
^48 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17h866c0786cc9796adE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^2), (callee: ^39))))) ; guid = 1943787779306578685
^49 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17hcc4843c0c3769e72E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^206), (callee: ^164), (callee: ^84), (callee: ^376)), refs: (^298)))) ; guid = 1958123893829943441
^50 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h98160baaad354300E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 2009303880867162486
^51 = gv: (name: "_ZN4core3ptr5write17h77474484313da29eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 2028450411467254027
^52 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8d6e4fec052fcd9aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^128))))) ; guid = 2121336454213943689
^53 = gv: (name: "_ZN5alloc2rc10RcInnerPtr4weak17he1a6b048bdf4e767E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^71))))) ; guid = 2238145977546210148
^54 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h0b7974dc5420d35cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 2239987689355167850
^55 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17hc6a431efaefae611E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^240), (callee: ^2), (callee: ^34))))) ; guid = 2256140776434167596
^56 = gv: (name: "_ZN5alloc2rc10RcInnerPtr8dec_weak17h88995592041e13aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^123), (callee: ^143))))) ; guid = 2325233796607117166
^57 = gv: (name: "_ZN4core3mem12align_of_val17hb45cb2e934f61a2cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 2451097177097069141
^58 = gv: (name: "_ZN4core3mem11size_of_val17h781a43d7af0521f9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 2476294853336107886
^59 = gv: (name: "_ZN4core3ptr4read17h41cfe65c41a10387E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11))) ; guid = 2486658512659949161
^60 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^61 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17hedf3906ff89fbcfaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 2605298905148699904
^62 = gv: (name: "_ZN4core3mem7replace17h3cf2ef115ded4018E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^81), (callee: ^51)), refs: (^298)))) ; guid = 2656291906321168735
^63 = gv: (name: "_ZN4core3mem7replace17h830f0f483a473c04E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^40), (callee: ^185)), refs: (^298)))) ; guid = 2700344751876085510
^64 = gv: (name: "_ZN4core5alloc6layout6Layout9for_value17hb5a759d8c04e4068E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^119), (callee: ^314), (callee: ^256))))) ; guid = 2732546093214683465
^65 = gv: (name: "_ZN4core3ptr4read17h2919b2e1b8045dfeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2770225330088287276
^66 = gv: (name: "_ZN5alloc2rc10RcInnerPtr6strong17hc53d7e8649b3fbc7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^71))))) ; guid = 2807270322276483145
^67 = gv: (name: "_ZN4core3ptr74drop_in_place$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$17hd05fc771acb7a543E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^203))))) ; guid = 2877853991535036898
^68 = gv: (name: "_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17h380867385e02af03E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22))) ; guid = 2888236761515473882
^69 = gv: (name: "_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8268bb7a2161a3beE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^321))))) ; guid = 2897066267398520263
^70 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfd051a1ac9ff63a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^251))))) ; guid = 2906015276957955434
^71 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3get17hc629d229a520d09fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 2927690405827569403
^72 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h4f6ac685eb2cf727E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^323))))) ; guid = 2959692373830208452
^73 = gv: (name: "_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17hdb885c87703822deE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^136), (callee: ^307)), refs: (^298)))) ; guid = 2982027383648902332
^74 = gv: (name: "_ZN46_$LT$i32$u20$as$u20$core..default..Default$GT$7default17h98087dbfc7b5f4aaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 3025262509985652638
^75 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17h6de2e4588753366dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^227)), refs: (^298, ^129)))) ; guid = 3054805224736873303
^76 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hee79a50fb246c32cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3177117973403431935
^77 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf642c17338ce8a23E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 3210870222197891348
^78 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h5970fb138236a2fbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^208))))) ; guid = 3215871199415081724
^79 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h2298e888e2454b97E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 3256214579295737153
^80 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17hf17e705c117edeefE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^251))))) ; guid = 3294877737144746271
^81 = gv: (name: "_ZN4core3ptr4read17h7d9505cf2babdbcfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 3328595802326492419
^82 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6957df6069743c64E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^365), (callee: ^115))))) ; guid = 3342464447973082047
^83 = gv: (name: "_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17h63b46afb797ad726E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 3354923944761032419
^84 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h03d001acec5bef34E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 3393952671952565496
^85 = gv: (name: "_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb96f8b89d00e154bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^372), (callee: ^223))))) ; guid = 3401997903204726495
^86 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hc79ef410e579e012E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^158))))) ; guid = 3407748397992091556
^87 = gv: (name: "_ZN13opng_optimize13opng_optimize28_$u7b$$u7b$closure$u7d$$u7d$17hc93df5933a0670fcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 197, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^181), (callee: ^124), (callee: ^183), (callee: ^108), (callee: ^212), (callee: ^376), (callee: ^202), (callee: ^166), (callee: ^377), (callee: ^296), (callee: ^209), (callee: ^24), (callee: ^187), (callee: ^217), (callee: ^21)), refs: (^298, ^94, ^101, ^360, ^280, ^336, ^149, ^122, ^44, ^1, ^207)))) ; guid = 3465221153738910631
^88 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf121a77c002fec6cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^6))))) ; guid = 3571090568656311596
^89 = gv: (name: "_ZN47_$LT$bool$u20$as$u20$core..default..Default$GT$7default17h0550b234379d5349E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 3598346923975063500
^90 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hd87c321efc188de3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 3646454224430864388
^91 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h19b4446d845fe4b1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 3726039424500311099
^92 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hb209b71908428ae0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^320))))) ; guid = 3811173733101431846
^93 = gv: (name: "_ZN5alloc2rc10RcInnerPtr8dec_weak17h9881f5ad37bf6034E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^286), (callee: ^143))))) ; guid = 3853718948468190605
^94 = gv: (name: "alloc309", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 3865651751082215572
^95 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h1399f85550cc72f4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 4057433147245342061
^96 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h068221d63f7c41e5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^146), (callee: ^324))))) ; guid = 4168702954884056377
^97 = gv: (name: "_ZN4core3ptr44drop_in_place$LT$core..cell..BorrowError$GT$17h456b993932995fd2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 4249747526179778322
^98 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h2df62e71f3f5e8c7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^91), (callee: ^371), (callee: ^249), (callee: ^196), (callee: ^256)), refs: (^113)))) ; guid = 4250001568507746663
^99 = gv: (name: "_ZN4core3mem4drop17hfc36a640cc4cf900E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 4250163476694446919
^100 = gv: (name: "alloc177", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4384403196967279698
^101 = gv: (name: "alloc311", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 4420913279689815570
^102 = gv: (name: "default", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 4454908165566635970
^103 = gv: (name: "_ZN3std7process5abort17hbfbd791ff32f7241E") ; guid = 4619386724051639732
^104 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^105 = gv: (name: "_ZN5alloc2rc10RcInnerPtr10dec_strong17h0dc0a742894019a9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^369), (callee: ^143))))) ; guid = 4642266442929843509
^106 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17h1a53c526a95cd128E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^227)), refs: (^298, ^129)))) ; guid = 4720461089947648542
^107 = gv: (name: "_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17haf0fcbd939667c18E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 4765223180178365971
^108 = gv: (name: "_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb044d967cfafb6c1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^285))))) ; guid = 4788569373776515853
^109 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$3new17hb4ad104debf80846E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 65, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^274), (callee: ^15), (callee: ^359), (callee: ^88), (callee: ^117)), refs: (^298)))) ; guid = 4807931803254552278
^110 = gv: (name: "_ZN46_$LT$u64$u20$as$u20$core..default..Default$GT$7default17h5244c51549bdba61E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 4812116298875118564
^111 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5bef706ef47c9c13E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^320), (callee: ^39))))) ; guid = 4820610149361293877
^112 = gv: (name: "alloc272", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4838215313977265600
^113 = gv: (name: "alloc278", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^353)))) ; guid = 4843596046201911239
^114 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf2fd1c7eaeb41a7dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 4955934316714222104
^115 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h803fa760567c4ab2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^240), (callee: ^320), (callee: ^351))))) ; guid = 4980814531284068088
^116 = gv: (name: "_ZN5alloc2rc10RcInnerPtr6strong17hc4b66eddd276f713E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^71))))) ; guid = 5080603490187894567
^117 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h90381e4cf22f1a3cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 5082806455970574799
^118 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hca76202778e6a427E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^320), (callee: ^72), (callee: ^90))))) ; guid = 5112935402054304077
^119 = gv: (name: "_ZN4core3mem11size_of_val17h4cda1a45d7c48da3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 5207708731016965350
^120 = gv: (name: "_ZN4core6option15Option$LT$T$GT$6as_ref17h74062b9744b9783bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19))) ; guid = 5333515728984604986
^121 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h5d230542e95d4febE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^267))))) ; guid = 5339902875164911810
^122 = gv: (name: "alloc319", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 5462713575824021579
^123 = gv: (name: "_ZN5alloc2rc10RcInnerPtr4weak17hcaf305b5262f452fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^71))))) ; guid = 5665694909090112180
^124 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hfc160d86e997d716E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^267))))) ; guid = 5669273106548565743
^125 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17h71ee3f6dc085c974E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^325), (callee: ^18), (callee: ^114), (callee: ^376)), refs: (^298)))) ; guid = 5693004061108516973
^126 = gv: (name: "alloc268", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5709770574850584949
^127 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h5c45120aa5bbb39dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 5782750257097224598
^128 = gv: (name: "_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h8df62d33960c4dd5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 5862293581349767855
^129 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^97, ^150)))) ; guid = 6008022478691465671
^130 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hcb273ef5315c3250E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^340), (callee: ^320))))) ; guid = 6088130055080952833
^131 = gv: (name: "_ZN5alloc2rc10RcInnerPtr6strong17ha39cfa91ea0a3928E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^71))))) ; guid = 6104300124304242884
^132 = gv: (name: "llvm.trap") ; guid = 6116349651215144041
^133 = gv: (name: "_ZN4core3mem11size_of_val17h689f7fd02f65bdcbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 6133425873735607740
^134 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17he68ebe70985f9fb0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^198))))) ; guid = 6143247787446717631
^135 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$opng_optimize..OpngOptions$GT$17ha6a2f14d8af1e704E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^30), (callee: ^376)), refs: (^298)))) ; guid = 6207422708911338450
^136 = gv: (name: "_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17hd9a5131f56167644E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^68), (callee: ^237)), refs: (^298, ^357)))) ; guid = 6244747140795759160
^137 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17h779257bfec7afa21E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^358))))) ; guid = 6249390176019052182
^138 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcb56773f51264b55E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^192))))) ; guid = 6307607178646530776
^139 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^140 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h0ae03f738f04d83fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 6400259235428764746
^141 = gv: (name: "_ZN4core6option15Option$LT$T$GT$8as_deref17h3ca5f2e848205aedE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, calls: ((callee: ^120), (callee: ^85))))) ; guid = 6465820000702241327
^142 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2cfa3645f717ead4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^76))))) ; guid = 6479322802667794394
^143 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3set17h9c494618943918c7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^247), (callee: ^269))))) ; guid = 6507349728626474276
^144 = gv: (name: "_ZN4core5alloc6layout6Layout9for_value17hf5c6078c7ab7b869E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^58), (callee: ^22), (callee: ^256))))) ; guid = 6531076494555515990
^145 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^146 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h6de1f50f523c39a9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 6624087546343608686
^147 = gv: (name: "_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he95943241e7148ecE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^239))))) ; guid = 6748433106707954703
^148 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^149 = gv: (name: "alloc317", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 6856444851625879838
^150 = gv: (name: "_ZN60_$LT$core..cell..BorrowError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8006753225ae68ddE") ; guid = 6931854521710844993
^151 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h576921450f8808d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^82))))) ; guid = 6976288408816500579
^152 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h458154cb2b919524E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 6990242814036006133
^153 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17h45f642415dbb8976E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^227)), refs: (^298, ^218)))) ; guid = 7005942724468666293
^154 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h0e2bf77c101ef333E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^107))))) ; guid = 7372445241280266177
^155 = gv: (name: "llvm.uadd.with.overflow.i32") ; guid = 7434724336648776420
^156 = gv: (name: "_ZN4core5alloc6layout6Layout9for_value17h7aeff5f8b0dae543E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^273), (callee: ^248), (callee: ^256))))) ; guid = 7653619993169281850
^157 = gv: (name: "_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h97da5391718c3a04E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 7717548300180851141
^158 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17h9010ae2b9558bb57E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^240), (callee: ^48), (callee: ^289), (callee: ^55), (callee: ^265), (callee: ^140), (callee: ^77), (callee: ^118), (callee: ^293)), refs: (^219)))) ; guid = 7728479962865486816
^159 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h63509e93d4f536f2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^59), (callee: ^317), (callee: ^25), (callee: ^283), (callee: ^376)), refs: (^298)))) ; guid = 7731746940561785807
^160 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h5c7a046ac1e49891E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^92), (callee: ^39))))) ; guid = 7757010482018973051
^161 = gv: (name: "alloc178", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^163, ^100)))) ; guid = 7868453219022790241
^162 = gv: (name: "alloc304", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 7919335734537904462
^163 = gv: (name: "alloc179", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8033293495809284442
^164 = gv: (name: "_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h5e54332d74d2292aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^165))))) ; guid = 8064973299116472033
^165 = gv: (name: "_ZN66_$LT$core..cell..BorrowRefMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17h79b7f1bc05a07683E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8, calls: ((callee: ^243), (callee: ^197))))) ; guid = 8066490618770657124
^166 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17hb7be88996e442393E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^49), (callee: ^153)), refs: (^112)))) ; guid = 8289465047802732625
^167 = gv: (name: "alloc271", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^282)))) ; guid = 8330854500770727363
^168 = gv: (name: "_ZN4core3ptr82drop_in_place$LT$core..cell..UnsafeCell$LT$opng_optimize..ExceptionContext$GT$$GT$17h72c6d809005464bcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^327))))) ; guid = 8338171548810182192
^169 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3new17h8cdb5bfa4064f303E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 8569211587638528055
^170 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdadc95802a5c4f35E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^193), (callee: ^72))))) ; guid = 8582532142756498266
^171 = gv: (name: "_ZN69_$LT$opng_optimize..OpngSummary$u20$as$u20$core..default..Default$GT$7default17h33f6b025045f734eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 17, calls: ((callee: ^268))))) ; guid = 8591763053263084504
^172 = gv: (name: "vtable.3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^246, ^364)))) ; guid = 8629513197574410326
^173 = gv: (name: "_ZN4core3any6TypeId2of17h88ef0599bb2d6c9cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 8667424970087576126
^174 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hc8ac7c2a41125ecaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^235))))) ; guid = 8671671938187579217
^175 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$3new17h83b101f04da0b017E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^169), (callee: ^203), (callee: ^376)), refs: (^298)))) ; guid = 8679582324233098893
^176 = gv: (name: "_ZN5alloc2rc10RcInnerPtr4weak17haa5fd06d05ba4559E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^71))))) ; guid = 8722682745954592050
^177 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hbcd63a585d71bd94E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 8806556974251629710
^178 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$6borrow17h8abbbf7cad26e025E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^17), (callee: ^3)), refs: (^284)))) ; guid = 8833917136805759107
^179 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$3new17h6006af416c61f9d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 65, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^274), (callee: ^15), (callee: ^38), (callee: ^154), (callee: ^127)), refs: (^298)))) ; guid = 8834975876715733934
^180 = gv: (name: "_ZN5alloc2rc10RcInnerPtr8dec_weak17hf8a6fb1aeab1e75fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^53), (callee: ^143))))) ; guid = 8851892344468978688
^181 = gv: (name: "opng_optimize_impl", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 8903679577040014641
^182 = gv: (name: "_ZN63_$LT$core..cell..BorrowRef$u20$as$u20$core..ops..drop..Drop$GT$4drop17h399fb2579cd35225E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8, calls: ((callee: ^243), (callee: ^197))))) ; guid = 8957750359997427134
^183 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$6borrow17hfb065cbb4c439aa7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^125), (callee: ^75)), refs: (^284)))) ; guid = 9015552722292557027
^184 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h34b2ecdac7fbba38E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^47)), refs: (^298)))) ; guid = 9131142054730780627
^185 = gv: (name: "_ZN4core3ptr5write17h2480c008298d6852E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 9232271227663110322
^186 = gv: (name: "alloc148", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 9257800753896716299
^187 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$6borrow17h19b2b1d1708916a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^250), (callee: ^348)), refs: (^284)))) ; guid = 9330607376851946321
^188 = gv: (name: "_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3c0d3d80a7be45f4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^363))))) ; guid = 9360288666379355326
^189 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h76bc7b89a2b4b2daE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^346), (callee: ^302))))) ; guid = 9446079680157821394
^190 = gv: (name: "_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17hed02614fed6793e6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^103)), refs: (^172)))) ; guid = 9477978332075791076
^191 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h904f65c281b1a4e1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 9500499011865890018
^192 = gv: (name: "_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h7debefd40eecd73aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 9523586458569538828
^193 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h783e4635d92fddc0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^19), (callee: ^96))))) ; guid = 9560510683197155915
^194 = gv: (name: "_ZN5alloc2rc10RcInnerPtr6strong17h5bcbd076e063e41aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^71))))) ; guid = 9576873597662522030
^195 = gv: (name: "_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h9e706f129680b455E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 79, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^305), (callee: ^103), (callee: ^15), (callee: ^201), (callee: ^283), (callee: ^376)), refs: (^298, ^172)))) ; guid = 9631674334091906234
^196 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17he0a43d39c4c4ea92E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^216))))) ; guid = 9633060945369439889
^197 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3set17hd259311471df3d1cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^231), (callee: ^99))))) ; guid = 9770274381795025331
^198 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h478d5e03724a299bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^358))))) ; guid = 9807001024391440542
^199 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17hd911440206feefb2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^76))))) ; guid = 9815765872284237930
^200 = gv: (name: "_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$i32$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h955ecb30a6112c66E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^283))))) ; guid = 9815929648842342750
^201 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h8f3129bad5f3a873E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^313))))) ; guid = 9880040498229455148
^202 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4cc53f65029a6ad5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^235))))) ; guid = 9910935276304149162
^203 = gv: (name: "_ZN4core3ptr77drop_in_place$LT$core..cell..UnsafeCell$LT$opng_optimize..OpngOptions$GT$$GT$17h2b95fa7992c0ce92E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^135))))) ; guid = 9920466987252634370
^204 = gv: (name: "alloc306", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 9970683924559985809
^205 = gv: (name: "alloc119", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^276, ^163)))) ; guid = 9975517115010095828
^206 = gv: (name: "_ZN4core4cell12BorrowRefMut3new17he9de8182dfdccf53E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 19, calls: ((callee: ^243), (callee: ^197))))) ; guid = 9990189690505493861
^207 = gv: (name: "alloc325", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 10181593083250339104
^208 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h530f00b7408c7ff0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^177))))) ; guid = 10197619602679552592
^209 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^210 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^211 = gv: (name: "_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81fc90c1d77d6131E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, calls: ((callee: ^70), (callee: ^105), (callee: ^369), (callee: ^80), (callee: ^56), (callee: ^123), (callee: ^264), (callee: ^64), (callee: ^115)), refs: (^326)))) ; guid = 10372029088683017068
^212 = gv: (name: "_ZN4core3ptr70drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngProcess$GT$$GT$17h7bcfabf77d0c5b93E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^18))))) ; guid = 10383570995423825065
^213 = gv: (name: "alloc158", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^163, ^329)))) ; guid = 10504202201353670667
^214 = gv: (name: "_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe2d4b20d414cb2eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, calls: ((callee: ^202), (callee: ^290), (callee: ^131), (callee: ^266), (callee: ^35), (callee: ^176), (callee: ^221), (callee: ^156), (callee: ^115)), refs: (^326)))) ; guid = 10527638024390773304
^215 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h951c8d7da62731ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 10563516125625940438
^216 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hc36211f8bb872d74E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 10597664728447439340
^217 = gv: (name: "_ZN68_$LT$core..cell..Ref$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17ha61653b39cc09f1bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^271))))) ; guid = 10643391488939061393
^218 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^352, ^222)))) ; guid = 10686415642424920987
^219 = gv: (name: "alloc286", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^315)))) ; guid = 10747945227533710969
^220 = gv: (name: "opng_print_error", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^292), (callee: ^43), (callee: ^366)), refs: (^213)))) ; guid = 10767080311837568125
^221 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h67f526f974c9f1c8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^235), (callee: ^39))))) ; guid = 10789620175247371459
^222 = gv: (name: "_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4c633e1f2b589beE") ; guid = 10803726208494417663
^223 = gv: (name: "_ZN4core3str8converts19from_utf8_unchecked17h2c5ec68b0bb74b75E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 13))) ; guid = 10882514028249531396
^224 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hbdb06f1087571a4bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^177))))) ; guid = 10930059785209603946
^225 = gv: (name: "alloc298", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 10941201947417981515
^226 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h3c0215712f7ff963E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^343), (callee: ^54))))) ; guid = 10941469418555652960
^227 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^228 = gv: (name: "_ZN3std9panicking3try7cleanup17h2ed61da26aa1440dE") ; guid = 10985882620454259335
^229 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$3new17h2512ccfd4434ee0eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 65, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^274), (callee: ^15), (callee: ^316), (callee: ^52), (callee: ^262)), refs: (^298)))) ; guid = 11063681426714216910
^230 = gv: (name: "alloc269", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^126)))) ; guid = 11083814630491222777
^231 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$7replace17h44393dd34370cea0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^62)), refs: (^298)))) ; guid = 11110655443208022658
^232 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfd71407af88d067eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^23))))) ; guid = 11130642287541394457
^233 = gv: (name: "alloc326", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11150723021171576462
^234 = gv: (name: "_ZN68_$LT$opng_optimize..OpngEngine$u20$as$u20$core..default..Default$GT$7default17hc72af9dffe4ca087E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^89))))) ; guid = 11259537145666799386
^235 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17habd34e1fb9307b56E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 11269207374545782289
^236 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb59bc28a119ed6f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 11278907623164085288
^237 = gv: (name: "_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE") ; guid = 11379753628054763235
^238 = gv: (name: "_ZN4core3mem12align_of_val17ha77fe7c6e339a0d6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 11443107784527718377
^239 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hc106b13f600d468dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^318))))) ; guid = 11447187982616814002
^240 = gv: (name: "_ZN4core5alloc6layout6Layout4size17ha6ae71818700a968E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 11455605584121857723
^241 = gv: (name: "_ZN5alloc2rc10RcInnerPtr10dec_strong17h44f614bd4b6947abE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^66), (callee: ^143))))) ; guid = 11459078068318457080
^242 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h925a1394b5421f38E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 11476795673433558326
^243 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3get17heaa78793d360251cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 11495235751092417165
^244 = gv: (name: "_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngProcess$GT$$GT$$GT$17hca51a848fae36d5eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^347))))) ; guid = 11509678826616163448
^245 = gv: (name: "_ZN69_$LT$opng_optimize..OpngProcess$u20$as$u20$core..default..Default$GT$7default17h982aeb725a268bc3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 81, calls: ((callee: ^268), (callee: ^74), (callee: ^278), (callee: ^110))))) ; guid = 11670141961019551854
^246 = gv: (name: "_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5080102582cac21bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^173))))) ; guid = 11872767796163045459
^247 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$7replace17hee13a77cd5a6306aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^63)), refs: (^298)))) ; guid = 11900716009896107969
^248 = gv: (name: "_ZN4core3mem12align_of_val17h5b89f08289d27129E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 12059091358336477412
^249 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5487613ff0936583E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 12069835873938727450
^250 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17h69aadb67c56e1b4cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^325), (callee: ^18), (callee: ^308), (callee: ^376)), refs: (^298)))) ; guid = 12208600540848364032
^251 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd9afe1bd6c7050ccE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 12254891784540788952
^252 = gv: (name: "_ZN4core3mem7replace17h4a00cba6466b3b2aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^279), (callee: ^354)), refs: (^298)))) ; guid = 12347154521561041852
^253 = gv: (name: "_ZN4core3ptr98drop_in_place$LT$alloc..rc..RcBox$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$$GT$17hb77f1869cfecfb27E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^67))))) ; guid = 12357535951255196756
^254 = gv: (name: "_ZN4core5panic8location8Location6caller17h36d2ae0964437c59E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 12378188558289344657
^255 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$3new17heb4b8c411723c775E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^169)), refs: (^298)))) ; guid = 12401451984089222930
^256 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb4ebbcff1a8b6f33E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^79))))) ; guid = 12428847578987277462
^257 = gv: (name: "__rust_try", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0), refs: (^298)))) ; guid = 12474000097505963913
^258 = gv: (name: "alloc324", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12510124822443581046
^259 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h65f8ee7cb41b187eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^142))))) ; guid = 12536132132019793225
^260 = gv: (name: "alloc294", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12643014330293394487
^261 = gv: (name: "_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngSummary$GT$$GT$$GT$17h403090d44d5137f3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^214))))) ; guid = 12715339562694741591
^262 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$10from_inner17h185189eacb2e0f85E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 12769631169407438928
^263 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$3new17hb0a7537aaee246a5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 72, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^274), (callee: ^15), (callee: ^253), (callee: ^376), (callee: ^134), (callee: ^138), (callee: ^61), (callee: ^67)), refs: (^298)))) ; guid = 12893836190846519627
^264 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h70a86c44915d4929E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^251), (callee: ^39))))) ; guid = 12914304661202234947
^265 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hee86eda5f580950dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^96), (callee: ^39))))) ; guid = 12974926738345296535
^266 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17hf2d71a4807777b29E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^235))))) ; guid = 13001392975228895307
^267 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he4d78253a6079270E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 13052142317962140831
^268 = gv: (name: "_ZN46_$LT$u32$u20$as$u20$core..default..Default$GT$7default17h12f8a898ae86eeaaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13060777485828635634
^269 = gv: (name: "_ZN4core3mem4drop17h22d478c0d67d7799E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 13224073752939232173
^270 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^271 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h539a3fe0b1ad4730E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^191))))) ; guid = 13257004170933027036
^272 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h0c5ffe844ca84bc6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 13264319260427317446
^273 = gv: (name: "_ZN4core3mem11size_of_val17hc2f964b7a2949620E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 13268140648776230588
^274 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3new17h4af6a30f0cdcd707E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 13371074002292322372
^275 = gv: (name: "_ZN4core6option15Option$LT$T$GT$9unwrap_or17h9d543470c9fc45a5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41))) ; guid = 13413356539259589057
^276 = gv: (name: "alloc118", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13414001176203714273
^277 = gv: (name: "_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h035f8a4da253c8dbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^27))))) ; guid = 13492296757669872071
^278 = gv: (name: "_ZN46_$LT$i64$u20$as$u20$core..default..Default$GT$7default17h499051280af90f40E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13517566158895397668
^279 = gv: (name: "_ZN4core3ptr4read17h76faa866ec0df883E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29))) ; guid = 13524806277991890235
^280 = gv: (name: "str.4", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13525842127216309232
^281 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha545a9d890566fcfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^76), (callee: ^39))))) ; guid = 13664523846929360018
^282 = gv: (name: "alloc270", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13676244428713187875
^283 = gv: (name: "_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hc5cbb359093ad51bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^12), (callee: ^376)), refs: (^298)))) ; guid = 13760571424633561074
^284 = gv: (name: "alloc276", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13797307289736939033
^285 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h9b75035cada3a8dbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^341))))) ; guid = 13803319663302404748
^286 = gv: (name: "_ZN5alloc2rc10RcInnerPtr4weak17h8085ec5dd1244e50E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^71))))) ; guid = 13832735159025011602
^287 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h2d8fa0f7f439ace6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13947752786909801639
^288 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h64f006c6b64c4e14E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 14122279165492360019
^289 = gv: (name: "_ZN5alloc5alloc5alloc17hd061750808310877E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^240), (callee: ^2), (callee: ^210))))) ; guid = 14128473604693748501
^290 = gv: (name: "_ZN5alloc2rc10RcInnerPtr10dec_strong17h6798550c44c252b4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^131), (callee: ^143))))) ; guid = 14151901456320211882
^291 = gv: (name: "_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h42ba23811c1e5824E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 14604462805249079027
^292 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h037e3219149f2586E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^337)), refs: (^69)))) ; guid = 14683397477728894576
^293 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h553415cac400cf39E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^152))))) ; guid = 14687261637078691773
^294 = gv: (name: "_ZN4core3ptr79drop_in_place$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$17h0ddc838e27ab33f4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^168))))) ; guid = 14689485815487659538
^295 = gv: (name: "alloc287", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14745701553249731391
^296 = gv: (name: "_ZN4core3ptr73drop_in_place$LT$core..cell..RefMut$LT$opng_optimize..OpngSummary$GT$$GT$17haff01e2f23e48764E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^164))))) ; guid = 14782301494533525063
^297 = gv: (name: "_ZN4core3ptr94drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngEngine$GT$$GT$$GT$17h3fb9ecc96322e942E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^211))))) ; guid = 14803639180521268336
^298 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^299 = gv: (name: "alloc307", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14829215656714235696
^300 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$10try_borrow17ha62d0d439ac6894eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^325), (callee: ^18), (callee: ^41), (callee: ^376)), refs: (^298)))) ; guid = 14832220558894632697
^301 = gv: (name: "_ZN4core3mem11size_of_val17h01ca255af539ec4fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 14881212450081976055
^302 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h7b245b7996c5c66fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 14926882754787526625
^303 = gv: (name: "alloc300", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 14962460487854174879
^304 = gv: (name: "_ZN4core5alloc6layout6Layout9for_value17h4fbdf89c12f6d8a2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^301), (callee: ^57), (callee: ^256))))) ; guid = 15021824060609494616
^305 = gv: (name: "_ZN4core6option15Option$LT$T$GT$4take17hbbe85ff6acf847d3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^252))))) ; guid = 15076497650253124324
^306 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$17get_mut_unchecked17he184ec01ba94fc93E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^267))))) ; guid = 15086054209755992870
^307 = gv: (name: "_ZN4core4hint9black_box17h5a6f6172961e681bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 15136510766882043200
^308 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc7b0b94c5234f4fdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 15165327355022439424
^309 = gv: (name: "opng_optimize", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 269, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^234), (callee: ^7), (callee: ^109), (callee: ^245), (callee: ^297), (callee: ^362), (callee: ^179), (callee: ^171), (callee: ^244), (callee: ^255), (callee: ^229), (callee: ^333), (callee: ^261), (callee: ^175), (callee: ^263), (callee: ^102), (callee: ^330), (callee: ^339), (callee: ^349), (callee: ^70), (callee: ^14), (callee: ^178), (callee: ^147), (callee: ^335), (callee: ^376), (callee: ^292), (callee: ^310), (callee: ^43), (callee: ^361), (callee: ^202), (callee: ^166), (callee: ^377), (callee: ^296), (callee: ^209), (callee: ^312), (callee: ^26), (callee: ^200), (callee: ^367), (callee: ^8), (callee: ^188), (callee: ^344), (callee: ^141), (callee: ^275), (callee: ^220)), refs: (^298, ^11, ^355, ^260, ^205, ^225, ^303, ^280, ^37, ^162, ^204, ^299)))) ; guid = 15198147919285346439
^310 = gv: (name: "_ZN3std9panicking11begin_panic17h2ed28aec4862cbd2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^254), (callee: ^73)), refs: (^298)))) ; guid = 15455655753452699586
^311 = gv: (name: "_ZN5alloc2rc10RcInnerPtr8dec_weak17ha68e9e26a521839bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^28), (callee: ^143))))) ; guid = 15489704479817761657
^312 = gv: (name: "opng_clear_image_info", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15546390462345311853
^313 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h2dde730229de89aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^159), (callee: ^224)), refs: (^298)))) ; guid = 15557684864458660302
^314 = gv: (name: "_ZN4core3mem12align_of_val17hc8dcbbb88f8c6052E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 15564411689946184509
^315 = gv: (name: "alloc285", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15628432856985975853
^316 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h664e16c5249c7a4eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^174))))) ; guid = 15685151626619153062
^317 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h0594471b5e7e2d50E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^224))))) ; guid = 15703803607906876853
^318 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc869d17f73e70455E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 15716029283548637679
^319 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17hcbec5bf2ed0fa00dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^236))))) ; guid = 15729751219188004758
^320 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25b5785aafed8774E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15777729364788776658
^321 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^322 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21, calls: ((callee: ^309), (callee: ^373), (callee: ^43), (callee: ^361)), refs: (^233, ^161)))) ; guid = 15822663052811949562
^323 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hffa03dafb0e3780cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 15833528959199334121
^324 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h837d0088aa7e3dbcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 15935469897326270449
^325 = gv: (name: "_ZN4core4cell9BorrowRef3new17hc186545b776a4c83E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23, calls: ((callee: ^243), (callee: ^197))))) ; guid = 15949382261284886728
^326 = gv: (name: "alloc168", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15966912446531385261
^327 = gv: (name: "_ZN4core3ptr52drop_in_place$LT$opng_optimize..ExceptionContext$GT$17hb4511d06a88574ddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^30))))) ; guid = 15967481198886924947
^328 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^329 = gv: (name: "alloc157", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16124850175659018737
^330 = gv: (name: "_ZN4core3ptr95drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$opng_optimize..OpngOptions$GT$$GT$$GT$17h07626d96c8c9f696E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^350))))) ; guid = 16260140432379282684
^331 = gv: (name: "_ZN4core3ptr103drop_in_place$LT$alloc..rc..RcBox$LT$core..cell..RefCell$LT$opng_optimize..ExceptionContext$GT$$GT$$GT$17h169de7b18c4ca18bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^294))))) ; guid = 16265920348009871334
^332 = gv: (name: "_ZN5alloc2rc10RcInnerPtr10dec_strong17h21b973f911cfecadE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^194), (callee: ^143))))) ; guid = 16272415581218977820
^333 = gv: (name: "_ZN69_$LT$opng_optimize..OpngOptions$u20$as$u20$core..default..Default$GT$7default17h73827c5ecb32e742E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 137, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^74), (callee: ^157), (callee: ^30), (callee: ^268), (callee: ^376)), refs: (^298)))) ; guid = 16317287725890262950
^334 = gv: (name: "_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3497f9d4cec48ff3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^367), (callee: ^332), (callee: ^194), (callee: ^199), (callee: ^294), (callee: ^180), (callee: ^53), (callee: ^281), (callee: ^5), (callee: ^115)), refs: (^326)))) ; guid = 16358734934511834527
^335 = gv: (name: "_ZN4core3ptr69drop_in_place$LT$core..cell..Ref$LT$opng_optimize..OpngEngine$GT$$GT$17h1bdc26c95cba5111E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^18))))) ; guid = 16399786170262786132
^336 = gv: (name: "alloc315", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 16538136664107122536
^337 = gv: (name: "_ZN4core3fmt10ArgumentV13new17he1e62079e698090eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 16542975541326853860
^338 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h30455ab4b9e8e690E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^251))))) ; guid = 16604057979751249864
^339 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$3new17hcef9f8e73d5bc3d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^169), (callee: ^168), (callee: ^376)), refs: (^298)))) ; guid = 16613405746483208018
^340 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h0d8ef17a740cd5f2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^242), (callee: ^39))))) ; guid = 16655033916878708302
^341 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h629ec5a7da7ce448E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 16670570208567886950
^342 = gv: (name: "_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17h56b0fe81c01b42ddE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 16790664296987455533
^343 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h8c93f5d271c50444E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^177), (callee: ^39))))) ; guid = 16849934981370563640
^344 = gv: (name: "_ZN4core3ptr75drop_in_place$LT$core..cell..Ref$LT$opng_optimize..ExceptionContext$GT$$GT$17haedc53eef8718208E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^18))))) ; guid = 16870096219556844963
^345 = gv: (name: "alloc288", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^295)))) ; guid = 16893473326448619985
^346 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17he45d73cc0ca0e570E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 16932648791968162201
^347 = gv: (name: "_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd26be84e63db717fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, calls: ((callee: ^124), (callee: ^241), (callee: ^66), (callee: ^306), (callee: ^93), (callee: ^286), (callee: ^375), (callee: ^144), (callee: ^115)), refs: (^326)))) ; guid = 17002100919309380719
^348 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17h53de903ada11d366E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^227)), refs: (^298, ^129)))) ; guid = 17007745291391822213
^349 = gv: (name: "_ZN5alloc2rc11Rc$LT$T$GT$3new17habdac6697f11a2deE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 72, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^274), (callee: ^15), (callee: ^331), (callee: ^376), (callee: ^259), (callee: ^13), (callee: ^95), (callee: ^294)), refs: (^298)))) ; guid = 17181956711640333658
^350 = gv: (name: "_ZN64_$LT$alloc..rc..Rc$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2eb43249249f236bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^24), (callee: ^10), (callee: ^116), (callee: ^137), (callee: ^67), (callee: ^311), (callee: ^28), (callee: ^42), (callee: ^304), (callee: ^115)), refs: (^326)))) ; guid = 17307014764850927418
^351 = gv: (name: "_ZN5alloc5alloc7dealloc17hdceeaccb692ca3cbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^240), (callee: ^2), (callee: ^104))))) ; guid = 17369549339986453767
^352 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17hc9babec9e5d6d829E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 17370478540485228056
^353 = gv: (name: "alloc277", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17374408318336634331
^354 = gv: (name: "_ZN4core3ptr5write17hc459812689a7e8c8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 17388391269475363270
^355 = gv: (name: "alloc296", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 17460863587297518547
^356 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h595f9c1c24b8daffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^19), (callee: ^96))))) ; guid = 17558750068860312067
^357 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^342, ^190, ^195)))) ; guid = 17582984013725620478
^358 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h649d2ff31f49b3b9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 17598520042162483014
^359 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h4a885abde32d9de1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^338))))) ; guid = 17614140615884525927
^360 = gv: (name: "alloc313", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^258)))) ; guid = 17709553478740245012
^361 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^362 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$3new17hbc7c29dfcc4abfb1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^169)), refs: (^298)))) ; guid = 17749513648871743952
^363 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h6efb0e34777498dfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^288))))) ; guid = 17844431767167150026
^364 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17h66a54c4cd4d4c095E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 17870617161948147707
^365 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4767561b26ef0f17E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^98), (callee: ^184), (callee: ^4), (callee: ^29)), refs: (^345)))) ; guid = 17882492154506364482
^366 = gv: (name: "_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE") ; guid = 17906690583868548313
^367 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hf63bf808e4312641E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^76))))) ; guid = 17934885127453745294
^368 = gv: (name: "_ZN3std9panicking3try7do_call17haeb78037540ae025E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^46), (callee: ^277))))) ; guid = 17952866178304384189
^369 = gv: (name: "_ZN5alloc2rc10RcInnerPtr6strong17hd5397eb73725c326E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^71))))) ; guid = 18036305871591826414
^370 = gv: (name: "opng_destroy_image_info", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 18180255413684325607
^371 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h86dc17f89e9f960fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 18198691284883451522
^372 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcd3fa3cf0cee899fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^356), (callee: ^20))))) ; guid = 18212926824741513455
^373 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hec1768cae9c4771bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^272)), refs: (^270)))) ; guid = 18241757446452030047
^374 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^375 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h6679b9e2f79e419dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^267), (callee: ^39))))) ; guid = 18321066937295608928
^376 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^377 = gv: (name: "_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h4666c6bb90baedbdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^319))))) ; guid = 18415176423082115995
^378 = blockcount: 1343
