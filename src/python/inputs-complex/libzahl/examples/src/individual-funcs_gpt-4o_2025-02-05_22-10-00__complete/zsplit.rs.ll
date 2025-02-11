; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsplit.rs.bc'
source_filename = "zsplit.0384d02d-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>" = type { { i64*, i64* }, i64 }
%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>" = type { { i64*, i64* }, i64 }
%"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]" = type { {}, %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]" }
%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]" = type { %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]" }
%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]" = type { i64*, { i64*, i64 } }
%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]" = type { %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]" }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<(), !>::Ok" = type { {} }
%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]" = type { i64*, %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]" }
%"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>" = type { {}, %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>" }
%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>" = type { %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>" }
%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>" = type { %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>" }
%"alloc::vec::Vec<u64>" = type { { i64*, i64 }, i64 }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::result::Result<(), !>::Err" = type { [0 x i8] }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%Zahl = type <{ i32, i64, i64, %"alloc::vec::Vec<u64>" }>
%"core::fmt::builders::DebugList" = type { %"core::fmt::builders::DebugInner" }
%"core::fmt::builders::DebugInner" = type { %"core::fmt::Formatter"*, i8, i8, [6 x i8] }
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"core::fmt::Opaque" = type {}
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, !>>::Continue" = type { {} }
%"alloc::alloc::Global" = type {}
%"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>" = type { [0 x i8] }
%"core::ptr::metadata::PtrRepr<[u64]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok" = type { {} }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok" = type { [1 x i64], { i8*, i64 } }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue" = type { [1 x i64], { i64, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break" = type { [1 x i64], { i64, i64 } }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue" = type { [1 x i64], i64 }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break" = type { [1 x i64], { i64, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue" = type { [1 x i64], { i8*, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue" = type { {} }
%"core::result::Result<core::convert::Infallible, !>::Ok" = type { [0 x i8] }
%"core::result::Result<core::convert::Infallible, !>::Err" = type { [0 x i8] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, !>>::Break" = type { [0 x i8] }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<(), !>, core::convert::Infallible>::Break" = type { %"core::result::Result<(), !>::Ok" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc255 = private unnamed_addr constant <{ [86 x i8] }> <{ [86 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/iter/adapters/take.rs" }>, align 1
@alloc256 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc255, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00p\00\00\00'\00\00\00" }>, align 8
@alloc41 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"capacity overflow" }>, align 1
@alloc42 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [17 x i8] }>, <{ [17 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8
@alloc44 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc257 = private unnamed_addr constant <{ [94 x i8] }> <{ [94 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/vec/spec_from_iter_nested.rs" }>, align 1
@alloc258 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc257, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00;\00\00\00\12\00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%Zahl**)* @"_ZN4core3ptr37drop_in_place$LT$$RF$zsplit..Zahl$GT$17h44940a2cb891bca7E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (%Zahl**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hac0282dd976c6b5eE" to i8*) }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr28drop_in_place$LT$$RF$u64$GT$17h0932de45a91aad53E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha0034ef4195c0ac5E" to i8*) }>, align 8
@alloc36 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc37 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc36, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc265 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc266 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc265, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc267 = private unnamed_addr constant <{ [84 x i8] }> <{ [84 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ops/control_flow.rs" }>, align 1
@alloc268 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [84 x i8] }>, <{ [84 x i8] }>* @alloc267, i32 0, i32 0, i32 0), [16 x i8] c"T\00\00\00\00\00\00\00\F4\00\00\009\00\00\00" }>, align 8
@alloc269 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc270 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc269, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc271 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc272 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc271, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc273 = private unnamed_addr constant <{ [77 x i8] }> <{ [77 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/array/mod.rs" }>, align 1
@alloc274 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc273, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00\FC\00\00\00\1B\00\00\00" }>, align 8
@alloc275 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ({ [0 x i8] }*)* @"_ZN4core3ptr26drop_in_place$LT$$u21$$GT$17ha0a1151098c9bda8E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 ({ [0 x i8] }*, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$u21$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c56391924ef3308E" to i8*) }>, align 8
@anon.15e61b2c0763512ba9bc017efa7f55f0.0 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@alloc283 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc280 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc283, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc282 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc283, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\D2\00\00\00\1B\00\00\00" }>, align 8
@alloc284 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc283, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\DF\00\00\00\1F\00\00\00" }>, align 8
@alloc293 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc286 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc293, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\C9\01\00\00\16\00\00\00" }>, align 8
@alloc288 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc293, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\CB\01\00\00\05\00\00\00" }>, align 8
@alloc290 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc293, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc292 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc293, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\86\01\00\00\1C\00\00\00" }>, align 8
@alloc294 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc293, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\90\01\00\00\13\00\00\00" }>, align 8
@alloc295 = private unnamed_addr constant <{ [84 x i8] }> <{ [84 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/vec/spec_extend.rs" }>, align 1
@alloc296 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [84 x i8] }>, <{ [84 x i8] }>* @alloc295, i32 0, i32 0, i32 0), [16 x i8] c"T\00\00\00\00\00\00\007\00\00\00\0D\00\00\00" }>, align 8
@alloc52 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"High: " }>, align 1
@alloc58 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc53 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [6 x i8] }>, <{ [6 x i8] }>* @alloc52, i32 0, i32 0, i32 0), [8 x i8] c"\06\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc56 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Low: " }>, align 1
@alloc57 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [5 x i8] }>, <{ [5 x i8] }>* @alloc56, i32 0, i32 0, i32 0), [8 x i8] c"\05\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc297 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Zahl" }>, align 1
@alloc298 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"sign" }>, align 1
@vtable.3 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i32**)* @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h31291765fc9a96edE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i32**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc5528cf35d93d0d4E" to i8*) }>, align 8
@alloc302 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"used" }>, align 1
@vtable.4 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h90323c9f53b7f11aE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fe3e731a6d983ffE" to i8*) }>, align 8
@alloc306 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"alloced" }>, align 1
@alloc307 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"chars" }>, align 1
@vtable.5 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%"alloc::vec::Vec<u64>"**)* @"_ZN4core3ptr51drop_in_place$LT$$RF$alloc..vec..Vec$LT$u64$GT$$GT$17hd9ab9b53f939db65E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (%"alloc::vec::Vec<u64>"**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdce467b64c8c19aaE" to i8*) }>, align 8
@alloc311 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Prime" }>, align 1
@alloc312 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"ProbablyPrime" }>, align 1
@alloc313 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"NonPrime" }>, align 1
@alloc314 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"LibcRand48Random" }>, align 1
@alloc315 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"LibcRandomRandom" }>, align 1
@alloc316 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"LibcRandRandom" }>, align 1
@alloc317 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"FastestRandom" }>, align 1
@alloc318 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"DefaultRandom" }>, align 1
@alloc319 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"SecureRandom" }>, align 1
@alloc320 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"FastRandom" }>, align 1
@alloc321 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"ModUniform" }>, align 1
@alloc322 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"Uniform" }>, align 1
@alloc323 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"QuasiUniform" }>, align 1
@alloc324 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"InvalidRadix" }>, align 1
@alloc325 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Negative" }>, align 1
@alloc326 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"DivZero" }>, align 1
@alloc327 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"ZeroDivZero" }>, align 1
@alloc328 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"ZeroPowZero" }>, align 1
@alloc329 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"ErrnoSet" }>, align 1

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha4f47b56209df92fE"(%"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_6 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = getelementptr inbounds %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>", %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %2, align 8
  %_3 = icmp ugt i64 %_4, 0
  %3 = call i1 @llvm.expect.i1(i1 %_3, i1 false)
  %4 = zext i1 %3 to i8
  store i8 %4, i8* %0, align 1
  %5 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %_2 = trunc i8 %5 to i1
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb11

bb11:                                             ; preds = %bb10, %bb1
  %_17 = bitcast %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %self to { i64*, i64* }*
  %6 = call align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8bfcda4c565c1612E"({ i64*, i64* }* align 8 %_17)
  store i64* %6, i64** %1, align 8
  br label %bb12

bb2:                                              ; preds = %bb1
  %_8 = bitcast %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %self to { i64*, i64* }*
  %_12 = getelementptr inbounds %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>", %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %self, i32 0, i32 1
  %_10 = call i64 @_ZN4core3mem4take17h1f323b0e537ce5e7E(i64* align 8 %_12)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_9 = sub i64 %_10, 1
  %_7 = call align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17hcc98479ac5d15b4aE"({ i64*, i64* }* align 8 %_8, i64 %_9)
  br label %bb4

bb4:                                              ; preds = %bb3
  %7 = call align 8 i64* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h63847f6b42cdb916E"(i64* align 8 %_7)
  store i64* %7, i64** %_6, align 8
  br label %bb5

bb5:                                              ; preds = %bb4
  %8 = bitcast i64** %_6 to {}**
  %9 = load {}*, {}** %8, align 8
  %10 = icmp eq {}* %9, null
  %_13 = select i1 %10, i64 1, i64 0
  switch i64 %_13, label %bb7 [
    i64 0, label %bb6
    i64 1, label %bb8
  ]

bb7:                                              ; preds = %bb5
  unreachable

bb6:                                              ; preds = %bb5
  %val = load i64*, i64** %_6, align 8, !nonnull !2, !align !3, !noundef !2
  br label %bb10

bb8:                                              ; preds = %bb5
  %11 = call align 8 i64* @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h5c54964ed438f3ceE"()
  store i64* %11, i64** %1, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  br label %bb13

bb13:                                             ; preds = %bb12, %bb9
  %12 = load i64*, i64** %1, align 8, !align !3
  ret i64* %12

bb10:                                             ; preds = %bb6
  br label %bb11

bb12:                                             ; preds = %bb11
  br label %bb13
}

; Function Attrs: inlinehint uwtable
define void @"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h1d5b19a5571ace64E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* align 8 %self) unnamed_addr #0 {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %upper1 = alloca { i64, i64 }, align 8
  %_4 = alloca { i64, { i64, i64 } }, align 8
  %upper = alloca { i64, i64 }, align 8
  %_5 = bitcast %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %self to { i64*, i64* }*
  call void @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5ec984150d170edfE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_4, { i64*, i64* }* align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast { i64, { i64, i64 } }* %_4 to i64*
  %lower = load i64, i64* %3, align 8
  %4 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_4, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !range !4, !noundef !2
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 0
  store i64 %6, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = getelementptr inbounds %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>", %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %self, i32 0, i32 1
  %_8 = load i64, i64* %11, align 8
  %12 = call i64 @llvm.usub.sat.i64(i64 %lower, i64 %_8)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %14 = bitcast { i64, i64 }* %upper to i64*
  %_10 = load i64, i64* %14, align 8, !range !4, !noundef !2
  switch i64 %_10, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %15 = bitcast { i64, i64 }* %upper1 to i64*
  store i64 0, i64* %15, align 8
  br label %bb7

bb5:                                              ; preds = %bb2
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 1
  %x = load i64, i64* %16, align 8
  %17 = getelementptr inbounds %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>", %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %self, i32 0, i32 1
  %_14 = load i64, i64* %17, align 8
  %18 = call i64 @llvm.usub.sat.i64(i64 %x, i64 %_14)
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper1, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = bitcast { i64, i64 }* %upper1 to i64*
  store i64 1, i64* %21, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb3
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper1, i32 0, i32 0
  %_16.0 = load i64, i64* %22, align 8, !range !4, !noundef !2
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper1, i32 0, i32 1
  %_16.1 = load i64, i64* %23, align 8
  %24 = bitcast { i64, { i64, i64 } }* %0 to i64*
  store i64 %13, i64* %24, align 8
  %25 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i32 0, i32 1
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  store i64 %_16.0, i64* %26, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  store i64 %_16.1, i64* %27, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2372389e8ef92566E"(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self, %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %fold) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]", align 8
  %_7 = alloca %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]", align 8
  store i8 1, i8* %_9, align 1
  %1 = bitcast %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_8 to i8*
  %2 = bitcast %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %fold to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  invoke void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold2ok17h2f636bc1b3f05b64E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* sret(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]") %_7, %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_8)
          to label %bb1 unwind label %cleanup

bb8:                                              ; preds = %cleanup
  %3 = load i8, i8* %_9, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb7, label %bb5

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb8

bb1:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  invoke void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h79e1537596d9bcd7E"(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* align 8 %self, %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_7)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5469dd4d238b70e4E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc256 to %"core::panic::location::Location"*))
          to label %bb3 unwind label %cleanup1

bb5:                                              ; preds = %cleanup1, %bb7, %bb8
  br label %bb6

bb7:                                              ; preds = %bb8
  br label %bb5

cleanup1:                                         ; preds = %bb2
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb5

bb3:                                              ; preds = %bb2
  br label %bb4

bb6:                                              ; preds = %bb5
  %15 = bitcast { i8*, i32 }* %0 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold2ok17h2f636bc1b3f05b64E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* sret(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]") %0, %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %f) unnamed_addr #0 {
start:
  %1 = bitcast %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %0 to %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"*
  %2 = bitcast %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %1 to i8*
  %3 = bitcast %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold2ok28_$u7b$$u7b$closure$u7d$$u7d$17h02dea64cf9b3c418E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* align 8 %_1, i64* align 8 %x) unnamed_addr #0 {
start:
  %_6 = alloca i64*, align 8
  %0 = alloca %"core::result::Result<(), !>::Ok", align 1
  %_5 = bitcast %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1 to %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"*
  %1 = bitcast i64** %_6 to {}*
  store i64* %x, i64** %_6, align 8
  %2 = load i64*, i64** %_6, align 8, !nonnull !2, !align !3, !noundef !2
  call void @"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he7e35ae8a10547c8E"(%"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* align 8 %_5, i64* align 8 %2)
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<(), !>::Ok"* %0 to {}*
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h79e1537596d9bcd7E"(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* align 8 %self, %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %fold) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_14 = alloca i8, align 1
  %_13 = alloca i8, align 1
  %_12 = alloca %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]", align 8
  %_10 = alloca %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]", align 8
  store i8 1, i8* %_13, align 1
  %1 = getelementptr inbounds %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %1, align 8
  %2 = icmp eq i64 %_4, 0
  br i1 %2, label %bb1, label %bb3

bb1:                                              ; preds = %start
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h5c7105c8ba7d7a6eE"()
          to label %bb2 unwind label %cleanup1

bb3:                                              ; preds = %start
  %n = getelementptr inbounds %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self, i32 0, i32 1
  %_8 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self to { i64*, i64* }*
  store i8 1, i8* %_14, align 1
  store i8 0, i8* %_13, align 1
  %3 = bitcast %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_12 to i8*
  %4 = bitcast %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %fold to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false)
  invoke void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check17h086aec6dc5df6e64E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* sret(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]") %_10, i64* align 8 %n, %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_12)
          to label %bb4 unwind label %cleanup

bb12:                                             ; preds = %cleanup
  %5 = load i8, i8* %_14, align 1, !range !1, !noundef !2
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb11, label %bb14

cleanup:                                          ; preds = %bb4, %bb3
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb12

bb4:                                              ; preds = %bb3
  store i8 0, i8* %_14, align 1
  %_7 = invoke zeroext i1 @_ZN4core4iter6traits8iterator8Iterator8try_fold17h91ff0420139633b2E({ i64*, i64* }* align 8 %_8, %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_10)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  invoke void @"_ZN4core3ops12control_flow77ControlFlow$LT$R$C$$LT$R$u20$as$u20$core..ops..try_trait..Try$GT$..Output$GT$8into_try17he25a5c6787d57000E"(i1 zeroext %_7)
          to label %bb6 unwind label %cleanup1

bb14:                                             ; preds = %cleanup1, %bb11, %bb12
  %12 = load i8, i8* %_13, align 1, !range !1, !noundef !2
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb13, label %bb9

bb11:                                             ; preds = %bb12
  br label %bb14

cleanup1:                                         ; preds = %bb5, %bb1
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb14

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb2, %bb6
  %19 = load i8, i8* %_13, align 1, !range !1, !noundef !2
  %20 = trunc i8 %19 to i1
  br i1 %20, label %bb10, label %bb8

bb2:                                              ; preds = %bb1
  br label %bb7

bb9:                                              ; preds = %bb13, %bb14
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

bb13:                                             ; preds = %bb14
  invoke void @"_ZN4core3ptr690drop_in_place$LT$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..fold..ok$LT$$LP$$RP$$C$$RF$u64$C$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h55af4b2fd3c32940E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %fold) #16
          to label %bb9 unwind label %abort

abort:                                            ; preds = %bb13
  %27 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb8:                                              ; preds = %bb10, %bb7
  ret void

bb10:                                             ; preds = %bb7
  call void @"_ZN4core3ptr690drop_in_place$LT$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..fold..ok$LT$$LP$$RP$$C$$RF$u64$C$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h55af4b2fd3c32940E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %fold)
  br label %bb8
}

; Function Attrs: uwtable
define void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check17h086aec6dc5df6e64E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* sret(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]") %0, i64* align 8 %n, %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %fold) unnamed_addr #1 {
start:
  %1 = bitcast %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %0 to i64**
  store i64* %n, i64** %1, align 8
  %2 = getelementptr inbounds %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]", %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %0, i32 0, i32 1
  %3 = bitcast %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %2 to i8*
  %4 = bitcast %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %fold to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hf9a0ee6667ce5429E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* align 8 %_1, i64* align 8 %x) unnamed_addr #0 {
start:
  %_6 = alloca i64*, align 8
  %0 = alloca i8, align 1
  %1 = bitcast %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1 to i64**
  %_12 = load i64*, i64** %1, align 8, !nonnull !2, !align !3, !noundef !2
  %2 = bitcast %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1 to i64**
  %_13 = load i64*, i64** %2, align 8, !nonnull !2, !align !3, !noundef !2
  %3 = load i64, i64* %_13, align 8
  %4 = sub i64 %3, 1
  store i64 %4, i64* %_12, align 8
  %_5 = getelementptr inbounds %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]", %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1, i32 0, i32 1
  %5 = bitcast i64** %_6 to {}*
  store i64* %x, i64** %_6, align 8
  %6 = load i64*, i64** %_6, align 8, !nonnull !2, !align !3, !noundef !2
  call void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold2ok28_$u7b$$u7b$closure$u7d$$u7d$17h02dea64cf9b3c418E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* align 8 %_5, i64* align 8 %6)
  br label %bb1

bb1:                                              ; preds = %start
  %7 = bitcast %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1 to i64**
  %_14 = load i64*, i64** %7, align 8, !nonnull !2, !align !3, !noundef !2
  %_9 = load i64, i64* %_14, align 8
  %8 = icmp eq i64 %_9, 0
  br i1 %8, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %9 = getelementptr i8, i8* %0, i64 1
  %10 = bitcast i8* %9 to %"core::result::Result<(), !>::Ok"*
  store i8 1, i8* %0, align 1
  br label %bb5

bb3:                                              ; preds = %bb1
  %11 = call zeroext i1 @"_ZN4core3ops12control_flow77ControlFlow$LT$R$C$$LT$R$u20$as$u20$core..ops..try_trait..Try$GT$..Output$GT$8from_try17hf1368c8c1ac25322E"()
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %0, align 1
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %13 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %14 = trunc i8 %13 to i1
  ret i1 %14
}

; Function Attrs: inlinehint uwtable
define void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd5b35b056e94d8f1E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* align 8 %self) unnamed_addr #0 {
start:
  %upper1 = alloca { i64, i64 }, align 8
  %_6 = alloca { i64, { i64, i64 } }, align 8
  %upper = alloca { i64, i64 }, align 8
  %_3 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self, i32 0, i32 1
  %_2 = load i64, i64* %1, align 8
  %2 = icmp eq i64 %_2, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = bitcast { i64, i64 }* %_3 to i64*
  store i64 1, i64* %4, align 8
  %5 = bitcast { i64, { i64, i64 } }* %0 to i64*
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i32 0, i32 1
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !range !4, !noundef !2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %8, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  br label %bb10

bb2:                                              ; preds = %start
  %_7 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self to { i64*, i64* }*
  call void @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5ec984150d170edfE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_6, { i64*, i64* }* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %13 = bitcast { i64, { i64, i64 } }* %_6 to i64*
  %lower = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_6, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8, !range !4, !noundef !2
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = getelementptr inbounds %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self, i32 0, i32 1
  %_10 = load i64, i64* %21, align 8
  %lower2 = call i64 @_ZN4core3cmp3min17h5637c03299128896E(i64 %lower, i64 %_10)
  br label %bb4

bb4:                                              ; preds = %bb3
  %22 = bitcast { i64, i64 }* %upper to i64*
  %_12 = load i64, i64* %22, align 8, !range !4, !noundef !2
  %23 = icmp eq i64 %_12, 1
  br i1 %23, label %bb6, label %bb5

bb6:                                              ; preds = %bb4
  %x = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 1
  %_16 = load i64, i64* %x, align 8
  %24 = getelementptr inbounds %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self, i32 0, i32 1
  %_17 = load i64, i64* %24, align 8
  %_15 = icmp ult i64 %_16, %_17
  br i1 %_15, label %bb7, label %bb8

bb5:                                              ; preds = %bb8, %bb4
  %25 = getelementptr inbounds %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self, i32 0, i32 1
  %_19 = load i64, i64* %25, align 8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper1, i32 0, i32 1
  store i64 %_19, i64* %26, align 8
  %27 = bitcast { i64, i64 }* %upper1 to i64*
  store i64 1, i64* %27, align 8
  br label %bb9

bb8:                                              ; preds = %bb6
  br label %bb5

bb7:                                              ; preds = %bb6
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 1
  %x3 = load i64, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper1, i32 0, i32 1
  store i64 %x3, i64* %29, align 8
  %30 = bitcast { i64, i64 }* %upper1 to i64*
  store i64 1, i64* %30, align 8
  br label %bb9

bb9:                                              ; preds = %bb7, %bb5
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper1, i32 0, i32 0
  %_21.0 = load i64, i64* %31, align 8, !range !4, !noundef !2
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper1, i32 0, i32 1
  %_21.1 = load i64, i64* %32, align 8
  %33 = bitcast { i64, { i64, i64 } }* %0 to i64*
  store i64 %lower2, i64* %33, align 8
  %34 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i32 0, i32 1
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  store i64 %_21.0, i64* %35, align 8
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  store i64 %_21.1, i64* %36, align 8
  br label %bb10

bb10:                                             ; preds = %bb9, %bb1
  ret void
}

; Function Attrs: uwtable
define void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf548cfa9756787aeE"(%"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>"* %self, %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %g) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  %_9 = alloca i8, align 1
  %_8 = alloca %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]", align 8
  %_6 = alloca %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]", align 8
  %_4 = alloca %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", align 8
  store i8 1, i8* %_10, align 1
  %1 = bitcast %"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>"* %self to %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"*
  %2 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_4 to i8*
  %3 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
  store i8 1, i8* %_9, align 1
  %4 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_8 to i8*
  %5 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %g to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false)
  invoke void @_ZN4core4iter8adapters3map8map_fold17h2f9dd53107f07953E(%"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* sret(%"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]") %_6, %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_8)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  %6 = load i8, i8* %_9, align 1, !range !1, !noundef !2
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb5, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb6

bb1:                                              ; preds = %start
  store i8 0, i8* %_10, align 1
  store i8 0, i8* %_9, align 1
  invoke void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2372389e8ef92566E"(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_4, %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_6)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb5, %bb6
  %13 = load i8, i8* %_10, align 1, !range !1, !noundef !2
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb7, label %bb4

bb5:                                              ; preds = %bb6
  br label %bb3

bb4:                                              ; preds = %bb7, %bb3
  %15 = bitcast { i8*, i32 }* %0 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb7:                                              ; preds = %bb3
  br label %bb4
}

; Function Attrs: uwtable
define void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf515696ed8ee9622E"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %self, %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %f) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_7 = alloca %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]", align 8
  %_5 = alloca %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", align 8
  %_4 = alloca %"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>", align 8
  store i8 1, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  %1 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %self to %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"*
  %2 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_5 to i8*
  %3 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
  invoke void @_ZN4core4iter6traits8iterator8Iterator3map17heea24cb00eee8d3fE(%"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>"* sret(%"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>") %_4, %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_5)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  %4 = load i8, i8* %_8, align 1, !range !1, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb6

bb1:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  store i8 0, i8* %_8, align 1
  %11 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_7 to i8*
  %12 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf548cfa9756787aeE"(%"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>"* %_4, %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_7)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb5, %bb6
  %13 = load i8, i8* %_9, align 1, !range !1, !noundef !2
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb7, label %bb4

bb5:                                              ; preds = %bb6
  invoke void @"_ZN4core3ptr373drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7ed71c951861ec59E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %f) #16
          to label %bb3 unwind label %abort

abort:                                            ; preds = %bb5
  %15 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb4:                                              ; preds = %bb7, %bb3
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21

bb7:                                              ; preds = %bb3
  br label %bb4
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h911111a2ab0b283eE"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %self to %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"*
  %_2 = call align 8 i64* @"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha4f47b56209df92fE"(%"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { i64, i64 } @"_ZN4core6option19Option$LT$$RF$T$GT$6cloned17h7546e8280d869bb0E"(i64* align 8 %_2)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: uwtable
define void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h6cf654bf3a65de81E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* align 8 %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %self to %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"*
  call void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd5b35b056e94d8f1E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha60917148257e0bbE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* align 8 %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %self to %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"*
  call void @"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h1d5b19a5571ace64E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN104_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hbf9f8a024429215dE"() unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = getelementptr i8, i8* %0, i64 1
  %2 = bitcast i8* %1 to %"core::result::Result<(), !>::Ok"*
  store i8 1, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: uwtable
define void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17ha45a85ec9895bc3aE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %iterator) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca { i8*, i32 }, align 8
  %_26 = alloca i8, align 1
  %_25 = alloca i8, align 1
  %_24 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>", align 8
  %vector1 = alloca %"alloc::vec::Vec<u64>", align 8
  %_8 = alloca { i64, { i64, i64 } }, align 8
  %_3 = alloca { i64, i64 }, align 8
  %vector = alloca %"alloc::vec::Vec<u64>", align 8
  store i8 1, i8* %_26, align 1
  %3 = invoke { i64, i64 } @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h911111a2ab0b283eE"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* align 8 %iterator)
          to label %bb1 unwind label %cleanup

bb21:                                             ; preds = %bb15, %bb18, %bb19, %cleanup
  %4 = load i8, i8* %_26, align 1, !range !1, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb20, label %bb17

cleanup:                                          ; preds = %bb4, %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb21

bb1:                                              ; preds = %start
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  %11 = bitcast { i64, i64 }* %_3 to i64*
  %_5 = load i64, i64* %11, align 8, !range !4, !noundef !2
  switch i64 %_5, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h26dfa702ae8789d0E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0)
          to label %bb13 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i8 1, i8* %_25, align 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %element = load i64, i64* %12, align 8
  invoke void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha60917148257e0bbE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_8, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* align 8 %iterator)
          to label %bb5 unwind label %cleanup2

bb19:                                             ; preds = %bb16, %cleanup2
  %13 = load i8, i8* %_25, align 1, !range !1, !noundef !2
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb18, label %bb21

cleanup2:                                         ; preds = %bb7, %bb6, %bb2
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb19

bb5:                                              ; preds = %bb2
  %20 = bitcast { i64, { i64, i64 } }* %_8 to i64*
  %lower = load i64, i64* %20, align 8
  %21 = call i64 @llvm.uadd.sat.i64(i64 %lower, i64 1)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  %initial_capacity = invoke i64 @_ZN4core3cmp3max17heffa38077afcdf8cE(i64 4, i64 %22)
          to label %bb7 unwind label %cleanup2

bb7:                                              ; preds = %bb6
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h2b55fc26c9cca72fE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %vector1, i64 %initial_capacity)
          to label %bb8 unwind label %cleanup2

bb8:                                              ; preds = %bb7
  %_16 = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hd4078d7199a40fc8E"(%"alloc::vec::Vec<u64>"* align 8 %vector1)
          to label %bb9 unwind label %cleanup3

bb16:                                             ; preds = %cleanup3
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hfc7f1b5eb1e124e2E"(%"alloc::vec::Vec<u64>"* %vector1) #16
          to label %bb19 unwind label %abort

cleanup3:                                         ; preds = %bb10, %bb9, %bb8
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  %25 = extractvalue { i8*, i32 } %23, 1
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  br label %bb16

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_25, align 1
  invoke void @_ZN4core3ptr5write17hc09d2c6657b7bac7E(i64* %_16, i64 %element)
          to label %bb10 unwind label %cleanup3

bb10:                                             ; preds = %bb9
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h7799fdd99f943260E"(%"alloc::vec::Vec<u64>"* align 8 %vector1, i64 1)
          to label %bb11 unwind label %cleanup3

bb11:                                             ; preds = %bb10
  %28 = bitcast %"alloc::vec::Vec<u64>"* %vector to i8*
  %29 = bitcast %"alloc::vec::Vec<u64>"* %vector1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 24, i1 false)
  store i8 0, i8* %_26, align 1
  %30 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_24 to i8*
  %31 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %iterator to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false)
  invoke void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h3625e9acfcd73361E"(%"alloc::vec::Vec<u64>"* align 8 %vector, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_24)
          to label %bb12 unwind label %cleanup4

abort:                                            ; preds = %bb15, %bb16
  %32 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb18:                                             ; preds = %bb19
  br label %bb21

bb15:                                             ; preds = %cleanup4
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hfc7f1b5eb1e124e2E"(%"alloc::vec::Vec<u64>"* %vector) #16
          to label %bb21 unwind label %abort

cleanup4:                                         ; preds = %bb11
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  %35 = extractvalue { i8*, i32 } %33, 1
  %36 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %bb15

bb12:                                             ; preds = %bb11
  %38 = bitcast %"alloc::vec::Vec<u64>"* %0 to i8*
  %39 = bitcast %"alloc::vec::Vec<u64>"* %vector to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 24, i1 false)
  br label %bb14

bb14:                                             ; preds = %bb13, %bb12
  ret void

bb13:                                             ; preds = %bb4
  br label %bb14

bb17:                                             ; preds = %bb20, %bb21
  %40 = bitcast { i8*, i32 }* %2 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = insertvalue { i8*, i32 } undef, i8* %41, 0
  %45 = insertvalue { i8*, i32 } %44, i32 %43, 1
  resume { i8*, i32 } %45

bb20:                                             ; preds = %bb21
  br label %bb17
}

; Function Attrs: uwtable
define void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hc480755d1ddf0d73E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %vector, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %iterator) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_20 = alloca i8, align 1
  %_17 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>", align 8
  %_8 = alloca %"core::fmt::Arguments", align 8
  %_2 = alloca { i64, { i64, i64 } }, align 8
  store i8 1, i8* %_20, align 1
  invoke void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h6cf654bf3a65de81E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_2, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* align 8 %iterator)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %bb7, %cleanup
  %1 = load i8, i8* %_20, align 1, !range !1, !noundef !2
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb9, label %bb8

cleanup:                                          ; preds = %bb5, %bb2, %bb3, %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb10

bb1:                                              ; preds = %start
  %8 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_2, i32 0, i32 1
  %9 = bitcast { i64, i64 }* %8 to i64*
  %_4 = load i64, i64* %9, align 8, !range !4, !noundef !2
  %10 = icmp eq i64 %_4, 1
  br i1 %10, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %11 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_2, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %upper = load i64, i64* %12, align 8
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h2b55fc26c9cca72fE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %vector, i64 %upper)
          to label %bb4 unwind label %cleanup

bb2:                                              ; preds = %bb1
  invoke void @_ZN4core3fmt9Arguments6new_v117h3512ac722ace8829E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_8, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc42 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc44 to [0 x { i8*, i64* }]*), i64 0)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb2
  invoke void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_8, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc258 to %"core::panic::location::Location"*)) #18
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb5
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, i8* %_20, align 1
  %13 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_17 to i8*
  %14 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %iterator to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 24, i1 false)
  invoke void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h53b859ad72924fbeE"(%"alloc::vec::Vec<u64>"* align 8 %vector, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_17)
          to label %bb6 unwind label %cleanup1

bb7:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hfc7f1b5eb1e124e2E"(%"alloc::vec::Vec<u64>"* %vector) #16
          to label %bb10 unwind label %abort

cleanup1:                                         ; preds = %bb4
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb7

bb6:                                              ; preds = %bb4
  ret void

abort:                                            ; preds = %bb7
  %20 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb8:                                              ; preds = %bb9, %bb10
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

bb9:                                              ; preds = %bb10
  br label %bb8
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17he92a8fecc843b228E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h27a87c9d0fd32a4aE"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53a7aa6ec9a9fda3E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h128129938da584f8E"(i64* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %pointer, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h5a17666102876953E"(i64* %pointer.0, i64 %pointer.1) unnamed_addr #0 {
start:
  %0 = alloca { i64*, i64 }, align 8
  %1 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 0
  store i64* %pointer.0, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 1
  store i64 %pointer.1, i64* %2, align 8
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 0
  %4 = load i64*, i64** %3, align 8, !nonnull !2, !noundef !2
  %5 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64*, i64 } undef, i64* %4, 0
  %8 = insertvalue { i64*, i64 } %7, i64 %6, 1
  ret { i64*, i64 } %8
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h6780361f98dd0978E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17hed14a658ca20ab30E"(i64 %kind.0, i64 %kind.1) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %kind.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %kind.1, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !5, !noundef !2
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h13ceecfa4e584455E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca %"core::result::Result<(), !>::Ok", align 1
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hc99569d7298451a6E"() #18
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<(), !>::Ok"* %1 to %"core::result::Result<(), !>::Err"*
  %3 = bitcast %"core::result::Result<(), !>::Err"* %2 to { [0 x i8] }*
  call void @llvm.trap()
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h20bab85a060ed5a6E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !5, !noundef !2
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17hed14a658ca20ab30E"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %_3.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %_3.1, i64* %12, align 8
  %13 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %13, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h2c47c1a400505aaeE"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
start:
  %3 = alloca { i64, i64 }, align 8
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !5, !noundef !2
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h43a3c110a9c9fb4dE"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %_3.0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_3.1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %14 = load i64, i64* %13, align 8, !range !6, !noundef !2
  %15 = insertvalue { i64, i64 } undef, i64 %12, 0
  %16 = insertvalue { i64, i64 } %15, i64 %14, 1
  ret { i64, i64 } %16
}

; Function Attrs: inlinehint uwtable
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h38493a579493138eE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !5, !noundef !2
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h43a3c110a9c9fb4dE"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %_3.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %_3.1, i64* %12, align 8
  %13 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %13, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h744cd89d038f7553E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
start:
  %3 = alloca { i64, i64 }, align 8
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !5, !noundef !2
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17hed14a658ca20ab30E"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %_3.0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_3.1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %14 = load i64, i64* %13, align 8, !range !6, !noundef !2
  %15 = insertvalue { i64, i64 } undef, i64 %12, 0
  %16 = insertvalue { i64, i64 } %15, i64 %14, 1
  ret { i64, i64 } %16
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha1b35b8bd8e5d97dE"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h74f0f971219ba2efE"()
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
  %9 = load i64, i64* %8, align 8, !range !5, !noundef !2
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha5997f31f47b7284E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hae4943e12b446151E"()
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
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fe3e731a6d983ffE"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %0 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h79374f2c195a237aE"(i64* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4955d160b93aa9e2E"({ [0 x %Zahl]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { [0 x %Zahl]*, i64 }, { [0 x %Zahl]*, i64 }* %self, i32 0, i32 0
  %_6.0 = load [0 x %Zahl]*, [0 x %Zahl]** %0, align 8, !nonnull !2, !align !7, !noundef !2
  %1 = getelementptr inbounds { [0 x %Zahl]*, i64 }, { [0 x %Zahl]*, i64 }* %self, i32 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd8096d353381782E"([0 x %Zahl]* align 1 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha0034ef4195c0ac5E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %0 = call zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h2d6806402f454f7bE"(i64* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hac0282dd976c6b5eE"(%Zahl** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load %Zahl*, %Zahl** %self, align 8, !nonnull !2, !align !7, !noundef !2
  %0 = call zeroext i1 @"_ZN49_$LT$zsplit..Zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe76f4c83e9234d6E"(%Zahl* align 1 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc5528cf35d93d0d4E"(i32** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i32*, i32** %self, align 8, !nonnull !2, !align !8, !noundef !2
  %0 = call zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h78555c4d7507bcacE"(i32* align 4 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdce467b64c8c19aaE"(%"alloc::vec::Vec<u64>"** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load %"alloc::vec::Vec<u64>"*, %"alloc::vec::Vec<u64>"** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %0 = call zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcbe6a73dd25a5db8E"(%"alloc::vec::Vec<u64>"* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb9652f4a79026620E"([0 x i64]* align 8 %self.0, i64 %self.1, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = alloca %"core::fmt::builders::DebugList", align 8
  call void @_ZN4core3fmt9Formatter10debug_list17h9950a42986e53ae1E(%"core::fmt::builders::DebugList"* sret(%"core::fmt::builders::DebugList") %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h34dceb71239d457bE"([0 x i64]* align 8 %self.0, i64 %self.1)
  %_8.0 = extractvalue { i64*, i64* } %0, 0
  %_8.1 = extractvalue { i64*, i64* } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = call align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17hc6f9581afc09031aE(%"core::fmt::builders::DebugList"* align 8 %_6, i64* %_8.0, i64* %_8.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %1 = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17he9dcf78544f9bde4E(%"core::fmt::builders::DebugList"* align 8 %_4)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret i1 %1
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd8096d353381782E"([0 x %Zahl]* align 1 %self.0, i64 %self.1, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = alloca %"core::fmt::builders::DebugList", align 8
  call void @_ZN4core3fmt9Formatter10debug_list17h9950a42986e53ae1E(%"core::fmt::builders::DebugList"* sret(%"core::fmt::builders::DebugList") %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h0c82a793c37e9464E"([0 x %Zahl]* align 1 %self.0, i64 %self.1)
  %_8.0 = extractvalue { i8*, i8* } %0, 0
  %_8.1 = extractvalue { i8*, i8* } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = call align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17h469cee49dd7e73ebE(%"core::fmt::builders::DebugList"* align 8 %_6, i8* %_8.0, i8* %_8.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %1 = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17he9dcf78544f9bde4E(%"core::fmt::builders::DebugList"* align 8 %_4)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN48_$LT$usize$u20$as$u20$core..default..Default$GT$7default17h0c28b50e72ccb183E"() unnamed_addr #0 {
start:
  ret i64 0
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics11write_bytes17hb7306998044e86acE(i8* %dst, i8 %val, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 1, %count
  call void @llvm.memset.p0i8.i64(i8* align 1 %dst, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17hf19a8905cd6bc4eeE(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3Ord3max17h07d184f395b489bbE(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_3 = alloca i8, align 1
  %3 = alloca i64, align 8
  %other = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  store i64 %1, i64* %other, align 8
  store i8 1, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17hd169bd8bd002eb98E"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !9

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
  %_7 = load i8, i8* %_3, align 1, !range !9, !noundef !2
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !1, !noundef !2
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, i8* %_8, align 1
  %12 = load i64, i64* %other, align 8
  store i64 %12, i64* %3, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_9, align 1
  %13 = load i64, i64* %self, align 8
  store i64 %13, i64* %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %14 = load i8, i8* %_8, align 1, !range !1, !noundef !2
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !1, !noundef !2
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
  %24 = load i64, i64* %3, align 8
  ret i64 %24

bb11:                                             ; preds = %bb6
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3Ord3min17h6c7d60e0d4c6ed76E(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_3 = alloca i8, align 1
  %3 = alloca i64, align 8
  %other = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  store i64 %1, i64* %other, align 8
  store i8 1, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17hd169bd8bd002eb98E"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !9

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
  %_7 = load i8, i8* %_3, align 1, !range !9, !noundef !2
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !1, !noundef !2
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, i8* %_9, align 1
  %12 = load i64, i64* %self, align 8
  store i64 %12, i64* %3, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_8, align 1
  %13 = load i64, i64* %other, align 8
  store i64 %13, i64* %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %14 = load i8, i8* %_8, align 1, !range !1, !noundef !2
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !1, !noundef !2
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
  %24 = load i64, i64* %3, align 8
  ret i64 %24

bb11:                                             ; preds = %bb6
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3max17heffa38077afcdf8cE(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3cmp3Ord3max17h07d184f395b489bbE(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3min17h5637c03299128896E(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3cmp3Ord3min17h6c7d60e0d4c6ed76E(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17hd169bd8bd002eb98E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_4 = load i64, i64* %self, align 8
  %_5 = load i64, i64* %other, align 8
  %_3 = icmp ult i64 %_4, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = load i64, i64* %self, align 8
  %_8 = load i64, i64* %other, align 8
  %_6 = icmp eq i64 %_7, %_8
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 -1, i8* %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %1 = load i8, i8* %0, align 1, !range !9, !noundef !2
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8e583ca32f9c2407E([1 x %Zahl]* align 1 %x, i1 ([1 x %Zahl]*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 ([1 x %Zahl]*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !2, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast [1 x %Zahl]* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !2, !align !7, !noundef !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !2, !align !7, !noundef !2
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17h3a36275136be5a95E([1 x %Zahl]* align 1 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8e583ca32f9c2407E([1 x %Zahl]* align 1 %x, i1 ([1 x %Zahl]*, %"core::fmt::Formatter"*)* @"_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h9a11a348d6ce5c66E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h78555c4d7507bcacE"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_3 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E(%"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_7 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E(%"core::fmt::Formatter"* align 8 %f)
  br label %bb5

bb2:                                              ; preds = %bb1
  %1 = call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h7a5e9cbb7827bfc6E"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f)
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb11

bb11:                                             ; preds = %bb10, %bb3
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb5:                                              ; preds = %bb4
  br i1 %_7, label %bb6, label %bb8

bb8:                                              ; preds = %bb5
  %5 = call zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f)
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  br label %bb9

bb6:                                              ; preds = %bb5
  %7 = call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h73d7b5c940bc6831E"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h2d6806402f454f7bE"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_3 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E(%"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_7 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E(%"core::fmt::Formatter"* align 8 %f)
  br label %bb5

bb2:                                              ; preds = %bb1
  %1 = call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17haad3cb6efb015561E"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb11

bb11:                                             ; preds = %bb10, %bb3
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb5:                                              ; preds = %bb4
  br i1 %_7, label %bb6, label %bb8

bb8:                                              ; preds = %bb5
  %5 = call zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb5d5637c14577644E"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  br label %bb9

bb6:                                              ; preds = %bb5
  %7 = call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17hc7ea05045a8ba070E"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h79374f2c195a237aE"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_3 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E(%"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_7 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E(%"core::fmt::Formatter"* align 8 %f)
  br label %bb5

bb2:                                              ; preds = %bb1
  %1 = call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb11

bb11:                                             ; preds = %bb10, %bb3
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb5:                                              ; preds = %bb4
  br i1 %_7, label %bb6, label %bb8

bb8:                                              ; preds = %bb5
  %5 = call zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  br label %bb9

bb6:                                              ; preds = %bb5
  %7 = call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10
}

; Function Attrs: uwtable
define align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17h469cee49dd7e73ebE(%"core::fmt::builders::DebugList"* align 8 %self, i8* %entries.0, i8* %entries.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %entry = alloca %Zahl*, align 8
  %_7 = alloca i8*, align 8
  %iter = alloca { i8*, i8* }, align 8
  %1 = call { i8*, i8* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h31a0582acfcad8f2E"(i8* %entries.0, i8* %entries.1)
  %_4.0 = extractvalue { i8*, i8* } %1, 0
  %_4.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 0
  store i8* %_4.0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 1
  store i8* %_4.1, i8** %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb8, %bb1
  %4 = invoke align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e2b9fab61f5879fE"({ i8*, i8* }* align 8 %iter)
          to label %bb3 unwind label %cleanup

bb11:                                             ; preds = %bb10, %cleanup
  br label %bb12

cleanup:                                          ; preds = %bb2
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb11

bb3:                                              ; preds = %bb2
  store i8* %4, i8** %_7, align 8
  %10 = bitcast i8** %_7 to {}**
  %11 = load {}*, {}** %10, align 8
  %12 = icmp eq {}* %11, null
  %_10 = select i1 %12, i64 0, i64 1
  switch i64 %_10, label %bb5 [
    i64 0, label %bb6
    i64 1, label %bb4
  ]

bb5:                                              ; preds = %bb3
  unreachable

bb6:                                              ; preds = %bb3
  br label %bb9

bb4:                                              ; preds = %bb3
  %13 = bitcast i8** %_7 to %Zahl**
  %14 = load %Zahl*, %Zahl** %13, align 8, !nonnull !2, !align !7, !noundef !2
  store %Zahl* %14, %Zahl** %entry, align 8
  %_14.0 = bitcast %Zahl** %entry to {}*
  %_12 = invoke align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList5entry17h0383dd2350e753d0E(%"core::fmt::builders::DebugList"* align 8 %self, {}* align 1 %_14.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*))
          to label %bb7 unwind label %cleanup1

bb10:                                             ; preds = %cleanup1
  br label %bb11

cleanup1:                                         ; preds = %bb4
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb10

bb7:                                              ; preds = %bb4
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb2

bb12:                                             ; preds = %bb11
  %20 = bitcast { i8*, i32 }* %0 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25

bb9:                                              ; preds = %bb6
  ret %"core::fmt::builders::DebugList"* %self
}

; Function Attrs: uwtable
define align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17hc6f9581afc09031aE(%"core::fmt::builders::DebugList"* align 8 %self, i64* %entries.0, i64* %entries.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %entry = alloca i64*, align 8
  %_7 = alloca i64*, align 8
  %iter = alloca { i64*, i64* }, align 8
  %1 = call { i64*, i64* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h81ac65abaf840e3cE"(i64* %entries.0, i64* %entries.1)
  %_4.0 = extractvalue { i64*, i64* } %1, 0
  %_4.1 = extractvalue { i64*, i64* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 0
  store i64* %_4.0, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 1
  store i64* %_4.1, i64** %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb8, %bb1
  %4 = invoke align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8bfcda4c565c1612E"({ i64*, i64* }* align 8 %iter)
          to label %bb3 unwind label %cleanup

bb11:                                             ; preds = %bb10, %cleanup
  br label %bb12

cleanup:                                          ; preds = %bb2
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb11

bb3:                                              ; preds = %bb2
  store i64* %4, i64** %_7, align 8
  %10 = bitcast i64** %_7 to {}**
  %11 = load {}*, {}** %10, align 8
  %12 = icmp eq {}* %11, null
  %_10 = select i1 %12, i64 0, i64 1
  switch i64 %_10, label %bb5 [
    i64 0, label %bb6
    i64 1, label %bb4
  ]

bb5:                                              ; preds = %bb3
  unreachable

bb6:                                              ; preds = %bb3
  br label %bb9

bb4:                                              ; preds = %bb3
  %13 = load i64*, i64** %_7, align 8, !nonnull !2, !align !3, !noundef !2
  store i64* %13, i64** %entry, align 8
  %_14.0 = bitcast i64** %entry to {}*
  %_12 = invoke align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList5entry17h0383dd2350e753d0E(%"core::fmt::builders::DebugList"* align 8 %self, {}* align 1 %_14.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*))
          to label %bb7 unwind label %cleanup1

bb10:                                             ; preds = %cleanup1
  br label %bb11

cleanup1:                                         ; preds = %bb4
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb10

bb7:                                              ; preds = %bb4
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb2

bb12:                                             ; preds = %bb11
  %19 = bitcast { i8*, i32 }* %0 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

bb9:                                              ; preds = %bb6
  ret %"core::fmt::builders::DebugList"* %self
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h3512ac722ace8829E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h3512ac722ace8829E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc37 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc44 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc266 to %"core::panic::location::Location"*)) #18
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h7b7840d878c028b2E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !10, !noundef !2
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h3716a853fd67217dE(i64 %_3), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h2c81c675b2827f40E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !10, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem4take17h1f323b0e537ce5e7E(i64* align 8 %dest) unnamed_addr #0 {
start:
  %_3 = call i64 @"_ZN48_$LT$usize$u20$as$u20$core..default..Default$GT$7default17h0c28b50e72ccb183E"()
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i64 @_ZN4core3mem7replace17h75fb312fdf8322d1E(i64* align 8 %dest, i64 %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h75fb312fdf8322d1E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h24b8b4f466c2ae02E(i64* %dest)
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
  invoke void @_ZN4core3ptr5write17hc519e5ea72ea6d31E(i64* %dest, i64 %src)
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
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h1fa4d6998f6eaa83E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %0 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i8 }, align 8
  %2 = alloca i8, align 1
  %3 = alloca { i64, i64 }, align 8
  %4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %rhs)
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
  %12 = load i8, i8* %11, align 8, !range !1, !noundef !2
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !1, !noundef !2
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
  %27 = load i8, i8* %2, align 1, !range !1, !noundef !2
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
  %32 = load i64, i64* %31, align 8, !range !4, !noundef !2
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h056ca4435e853029E"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %12 = load i8, i8* %11, align 8, !range !1, !noundef !2
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !1, !noundef !2
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
  %27 = load i8, i8* %2, align 1, !range !1, !noundef !2
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
  %32 = load i64, i64* %31, align 8, !range !4, !noundef !2
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h3716a853fd67217dE(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !11, !noundef !2
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hf0f6c6c8efcc1ab3E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ops12control_flow77ControlFlow$LT$R$C$$LT$R$u20$as$u20$core..ops..try_trait..Try$GT$..Output$GT$8from_try17hf1368c8c1ac25322E"() unnamed_addr #0 {
start:
  %_2 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, !>>::Continue", align 1
  %0 = alloca i8, align 1
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc37d209b1dd9d124E"()
  br label %bb1

bb1:                                              ; preds = %start
  switch i64 0, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %1 = getelementptr i8, i8* %0, i64 1
  %2 = bitcast i8* %1 to {}*
  store i8 0, i8* %0, align 1
  br label %bb6

bb2:                                              ; preds = %bb1
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h13ceecfa4e584455E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc268 to %"core::panic::location::Location"*))
  br label %bb5

bb5:                                              ; preds = %bb2
  %3 = getelementptr i8, i8* %0, i64 1
  %4 = bitcast i8* %3 to %"core::result::Result<(), !>::Ok"*
  store i8 1, i8* %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  %5 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3ops12control_flow77ControlFlow$LT$R$C$$LT$R$u20$as$u20$core..ops..try_trait..Try$GT$..Output$GT$8into_try17he25a5c6787d57000E"(i1 zeroext %0) unnamed_addr #0 {
start:
  %self = alloca i8, align 1
  %1 = zext i1 %0 to i8
  store i8 %1, i8* %self, align 1
  %2 = load i8, i8* %self, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  %_2 = zext i1 %3 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h5c7105c8ba7d7a6eE"()
  br label %bb4

bb1:                                              ; preds = %start
  br label %bb5

bb5:                                              ; preds = %bb4, %bb1
  ret void

bb4:                                              ; preds = %bb3
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3ops8function5FnMut8call_mut17ha5a9dc1a98b36e76E({}* align 1 %_1, i64* align 8 %0) unnamed_addr #0 {
start:
  %_2 = alloca i64*, align 8
  store i64* %0, i64** %_2, align 8
  %1 = load i64*, i64** %_2, align 8, !nonnull !2, !align !3, !noundef !2
  %2 = call i64 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17hc6ae516cab94290eE"(i64* align 8 %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17ha24ac78f1ce32f26E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h8c365ca43cff1564E"(i64* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h77a2b776cf4c66f5E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i64]*, i64 } %0, 0
  %2 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %1, 0
  %4 = insertvalue { [0 x i64]*, i64 } %3, i64 %2, 1
  ret { [0 x i64]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h3d2cea47274db4cfE(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i64* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hf0763cbdc4339513E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h6e78c31bc4cbf090E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h05ae5503d4bae01cE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr26drop_in_place$LT$$u21$$GT$17ha0a1151098c9bda8E"({ [0 x i8] }* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr276drop_in_place$LT$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$17he5608dc2f14c9d13E"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %_1) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]", %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h9feb63a589368fa0E"({ i64*, i64 }* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h31291765fc9a96edE"(i32** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$u64$GT$17h0932de45a91aad53E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @_ZN4core3ptr2eq17hd967dd9df753bf8eE([1 x %Zahl]* %a, [1 x %Zahl]* %b) unnamed_addr #0 {
start:
  %0 = icmp eq [1 x %Zahl]* %a, %b
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h90323c9f53b7f11aE"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr33drop_in_place$LT$zsplit..Zahl$GT$17h7b6482a395c381beE"(%Zahl* %_1) unnamed_addr #1 {
start:
  %_3 = alloca %"alloc::vec::Vec<u64>", align 8
  %_2 = alloca %"alloc::vec::Vec<u64>", align 8
  %0 = getelementptr inbounds %Zahl, %Zahl* %_1, i32 0, i32 3
  %1 = bitcast %"alloc::vec::Vec<u64>"* %_3 to i8*
  %2 = bitcast %"alloc::vec::Vec<u64>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 1 %2, i64 24, i1 false)
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hfc7f1b5eb1e124e2E"(%"alloc::vec::Vec<u64>"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr373drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7ed71c951861ec59E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_1 to %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"*
  call void @"_ZN4core3ptr276drop_in_place$LT$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$17he5608dc2f14c9d13E"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr37drop_in_place$LT$$RF$zsplit..Zahl$GT$17h44940a2cb891bca7E"(%Zahl** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hfc7f1b5eb1e124e2E"(%"alloc::vec::Vec<u64>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h253113ac553262ebE"(%"alloc::vec::Vec<u64>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u64>"* %_1 to { i64*, i64 }*
  invoke void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h84bacd8cd513b5e2E"({ i64*, i64 }* %1) #16
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
  %7 = bitcast %"alloc::vec::Vec<u64>"* %_1 to { i64*, i64 }*
  call void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h84bacd8cd513b5e2E"({ i64*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
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
define i64 @_ZN4core3ptr4read17h24b8b4f466c2ae02E(i64* %src) unnamed_addr #0 {
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
define void @_ZN4core3ptr4read17h3b68ca94f739b34fE(%"alloc::alloc::Global"* %src) unnamed_addr #0 {
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
define internal void @"_ZN4core3ptr51drop_in_place$LT$$RF$alloc..vec..Vec$LT$u64$GT$$GT$17hd9ab9b53f939db65E"(%"alloc::vec::Vec<u64>"** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr523drop_in_place$LT$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h61a58041b4fc284cE"(%"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1 to %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"*
  call void @"_ZN4core3ptr373drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7ed71c951861ec59E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr54drop_in_place$LT$$u5b$zsplit..Zahl$u3b$$u20$1$u5d$$GT$17h88edbf5ed0c482adE"([1 x %Zahl]* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca %Zahl*, align 8
  %_4 = alloca i64, align 8
  br i1 false, label %bb7, label %bb12

bb7:                                              ; preds = %start
  store i64 0, i64* %_4, align 8
  br label %bb6

bb12:                                             ; preds = %start
  %1 = bitcast [1 x %Zahl]* %_1 to %Zahl*
  store %Zahl* %1, %Zahl** %_9, align 8
  %2 = load %Zahl*, %Zahl** %_9, align 8
  %_10 = getelementptr inbounds %Zahl, %Zahl* %2, i64 1
  br label %bb11

bb11:                                             ; preds = %bb10, %bb12
  %3 = load %Zahl*, %Zahl** %_9, align 8
  %_14 = icmp eq %Zahl* %3, %_10
  br i1 %_14, label %bb1, label %bb10

bb10:                                             ; preds = %bb11
  %_13 = load %Zahl*, %Zahl** %_9, align 8
  %4 = load %Zahl*, %Zahl** %_9, align 8
  %5 = getelementptr inbounds %Zahl, %Zahl* %4, i64 1
  store %Zahl* %5, %Zahl** %_9, align 8
  invoke void @"_ZN4core3ptr33drop_in_place$LT$zsplit..Zahl$GT$17h7b6482a395c381beE"(%Zahl* %_13)
          to label %bb11 unwind label %cleanup

bb1:                                              ; preds = %bb6, %bb11
  ret void

bb9:                                              ; preds = %bb8, %cleanup
  %6 = load %Zahl*, %Zahl** %_9, align 8
  %_12 = icmp eq %Zahl* %6, %_10
  br i1 %_12, label %bb2, label %bb8

cleanup:                                          ; preds = %bb10
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb9

bb8:                                              ; preds = %bb9
  %_11 = load %Zahl*, %Zahl** %_9, align 8
  %12 = load %Zahl*, %Zahl** %_9, align 8
  %13 = getelementptr inbounds %Zahl, %Zahl* %12, i64 1
  store %Zahl* %13, %Zahl** %_9, align 8
  invoke void @"_ZN4core3ptr33drop_in_place$LT$zsplit..Zahl$GT$17h7b6482a395c381beE"(%Zahl* %_11) #16
          to label %bb9 unwind label %abort

bb2:                                              ; preds = %bb4, %bb9
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

abort:                                            ; preds = %bb3, %bb8
  %20 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb6:                                              ; preds = %bb5, %bb7
  %21 = load i64, i64* %_4, align 8
  %_8 = icmp eq i64 %21, 1
  br i1 %_8, label %bb1, label %bb5

bb5:                                              ; preds = %bb6
  %22 = load i64, i64* %_4, align 8
  %_7 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %_1, i64 0, i64 %22
  %23 = load i64, i64* %_4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %_4, align 8
  invoke void @"_ZN4core3ptr33drop_in_place$LT$zsplit..Zahl$GT$17h7b6482a395c381beE"(%Zahl* %_7)
          to label %bb6 unwind label %cleanup1

bb4:                                              ; preds = %bb3, %cleanup1
  %25 = load i64, i64* %_4, align 8
  %_6 = icmp eq i64 %25, 1
  br i1 %_6, label %bb2, label %bb3

cleanup1:                                         ; preds = %bb5
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = extractvalue { i8*, i32 } %26, 1
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %bb4

bb3:                                              ; preds = %bb4
  %31 = load i64, i64* %_4, align 8
  %_5 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %_1, i64 0, i64 %31
  %32 = load i64, i64* %_4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %_4, align 8
  invoke void @"_ZN4core3ptr33drop_in_place$LT$zsplit..Zahl$GT$17h7b6482a395c381beE"(%Zahl* %_5) #16
          to label %bb4 unwind label %abort
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h84bacd8cd513b5e2E"({ i64*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7f0e80adf70c1759E"({ i64*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr59drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u64$u5d$$GT$$GT$17h83b20e621bf6cb3bE"({ [0 x i64]*, i64 }* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  br label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast { [0 x i64]*, i64 }* %_1 to { i64*, i64 }*
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 0
  %3 = load i64*, i64** %2, align 8, !nonnull !2, !noundef !2
  %4 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  call void @_ZN5alloc5alloc8box_free17h27481c26753073e2E(i64* %3, i64 %5)
  br label %bb1

bb4:                                              ; No predecessors!
  %6 = bitcast { [0 x i64]*, i64 }* %_1 to { i64*, i64 }*
  %7 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8, !nonnull !2, !noundef !2
  %9 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %6, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  invoke void @_ZN5alloc5alloc8box_free17h27481c26753073e2E(i64* %8, i64 %10) #16
          to label %bb2 unwind label %abort

abort:                                            ; preds = %bb4
  %11 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb2:                                              ; preds = %bb4
  %12 = bitcast { i8*, i32 }* %0 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hc09d2c6657b7bac7E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hc519e5ea72ea6d31E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h9feb63a589368fa0E"({ i64*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17h68d4ddf0e655d1ecE"({ i64*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr690drop_in_place$LT$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..fold..ok$LT$$LP$$RP$$C$$RF$u64$C$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h55af4b2fd3c32940E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1 to %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"*
  call void @"_ZN4core3ptr523drop_in_place$LT$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h61a58041b4fc284cE"(%"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h19fcd77e99464e09E"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %_2 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h893cda4354393c52E"(i64* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i64* %_2, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h161b82c232bd05f9E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h0fc8e31b2eb45c8dE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h6780361f98dd0978E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hb86a212bfa8c0dfdE"(i64* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h50552a7d83dcbd6dE"(i64* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h6780361f98dd0978E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h27a87c9d0fd32a4aE"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h46c6d13c4b3e343bE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h660c878ded5e3fe5E"(i64* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha205466c8f29acfbE"(i64* %self.0, i64 %self.1)
  %1 = extractvalue { [0 x i64]*, i64 } %0, 0
  %2 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %1, 0
  %4 = insertvalue { [0 x i64]*, i64 } %3, i64 %2, 1
  ret { [0 x i64]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h7bb1aac9843a7ac5E"(i64* %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h3c4fd742c015b210E"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4ef8e7472d859113E"({ i64*, i64 }* align 8 %self)
  %1 = extractvalue { [0 x i64]*, i64 } %0, 0
  %2 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %1, 0
  %4 = insertvalue { [0 x i64]*, i64 } %3, i64 %2, 1
  ret { [0 x i64]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17ha74e0ec54e31ac19E"() unnamed_addr #0 {
start:
  %_1 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h6a2e2c48c6845172E"()
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i64* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h128129938da584f8E"(i64* %_1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h16d3fad9f1c0a60eE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17he602ad026dff0b67E"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to i64**
  store i64* %self, i64** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h41477dc67242aa4cE"(%Zahl* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast %Zahl* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h6ae86f6d2b2b4830E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h16d3fad9f1c0a60eE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h43216c3ea5f6dab3E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h6ae86f6d2b2b4830E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h16d3fad9f1c0a60eE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f412e52e571fdf9E"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h6ae86f6d2b2b4830E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h16d3fad9f1c0a60eE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h77a2b776cf4c66f5E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u64]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { [0 x i64]*, i64 }*
  %10 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i64]*, [0 x i64]** %10, align 8
  %12 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %11, 0
  %15 = insertvalue { [0 x i64]*, i64 } %14, i64 %13, 1
  ret { [0 x i64]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17hfb8688d8cb7bba05E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h05ae5503d4bae01cE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h6ae86f6d2b2b4830E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hf0763cbdc4339513E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u64]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { [0 x i64]*, i64 }*
  %10 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i64]*, [0 x i64]** %10, align 8
  %12 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %11, 0
  %15 = insertvalue { [0 x i64]*, i64 } %14, i64 %13, 1
  ret { [0 x i64]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53a7aa6ec9a9fda3E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h893cda4354393c52E"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %ptr, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9c6a7d03ba79d3a0E"(%Zahl* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to %Zahl**
  store %Zahl* %ptr, %Zahl** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb3be51602405d080E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %ptr.1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !2, !noundef !2
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i8*, i64 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64 } %8, i64 %7, 1
  ret { i8*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hebf16a817c37661cE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h43216c3ea5f6dab3E"(i8* %ptr)
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
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53a7aa6ec9a9fda3E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h0fc8e31b2eb45c8dE"(i64* %self) unnamed_addr #0 {
start:
  %_3 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast i64* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53a7aa6ec9a9fda3E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h14bc0d0a2805f119E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h67b55638a288d548E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i64*
  %1 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h893cda4354393c52E"(i64* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h50552a7d83dcbd6dE"(i64* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha205466c8f29acfbE"(i64* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i64]* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53a7aa6ec9a9fda3E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h46c6d13c4b3e343bE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h67b55638a288d548E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha205466c8f29acfbE"(i64* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i64* %self.0 to [0 x i64]*
  %0 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_2.0, 0
  %1 = insertvalue { [0 x i64]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i64]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17haff093aa21d78f16E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to %Zahl*
  ret %Zahl* %_2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %self) unnamed_addr #0 {
start:
  ret i64* %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4ef8e7472d859113E"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 0
  %_3.0 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  %1 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_3.1 = load i64, i64* %1, align 8
  %2 = call { [0 x i64]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha205466c8f29acfbE"(i64* %_3.0, i64 %_3.1)
  %_2.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_2.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_2.0, 0
  %4 = insertvalue { [0 x i64]*, i64 } %3, i64 %_2.1, 1
  ret { [0 x i64]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h6a2e2c48c6845172E"() unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i64** %0 to i64*
  store i64 8, i64* %1, align 8
  %2 = load i64*, i64** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h893cda4354393c52E"(i64* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h78180e64c974d012E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hb09287f9e6484111E"(i8* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h46c6d13c4b3e343bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hb09287f9e6484111E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h67b55638a288d548E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53a7aa6ec9a9fda3E"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h7a775551d92dd437E"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h46c6d13c4b3e343bE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h6e78c31bc4cbf090E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb3be51602405d080E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr911drop_in_place$LT$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..try_fold..check$LT$$RF$u64$C$$LP$$RP$$C$core..result..Result$LT$$LP$$RP$$C$$u21$$GT$$C$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..fold..ok$LT$$LP$$RP$$C$$RF$u64$C$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h630b6d5ae0976c5eE"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]", %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr690drop_in_place$LT$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..fold..ok$LT$$LP$$RP$$C$$RF$u64$C$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h55af4b2fd3c32940E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h821bae5828fc386dE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h72d56da56688e677E"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to i64**
  store i64* %self, i64** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h8c365ca43cff1564E"(i64* %self) unnamed_addr #0 {
start:
  %0 = bitcast i64* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h21ab4e2ca90e951eE"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hfb8688d8cb7bba05E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h821bae5828fc386dE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17he06ac9fe4fc8ed72E"(%Zahl* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast %Zahl* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hfb8688d8cb7bba05E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h821bae5828fc386dE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17h383767c43ba65629E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator3map17heea24cb00eee8d3fE(%"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>"* sret(%"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>") %0, %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self) unnamed_addr #0 {
start:
  %_3 = alloca %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", align 8
  %1 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_3 to i8*
  %2 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN4core4iter8adapters3map16Map$LT$I$C$F$GT$3new17hf97a2aa2c2606c6fE"(%"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>"* sret(%"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>") %0, %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator4skip17h64b4e41bf47290d6E(%"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* sret(%"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>") %0, i64* %self.0, i64* %self.1, i64 %n) unnamed_addr #0 {
start:
  call void @"_ZN4core4iter8adapters4skip13Skip$LT$I$GT$3new17h5da5446cf4b757adE"(%"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* sret(%"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>") %0, i64* %self.0, i64* %self.1, i64 %n)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator4take17h9caed99ee27fc649E(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* sret(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>") %0, i64* %self.0, i64* %self.1, i64 %n) unnamed_addr #0 {
start:
  call void @"_ZN4core4iter8adapters4take13Take$LT$I$GT$3new17hcd00efc69fd570acE"(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* sret(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>") %0, i64* %self.0, i64* %self.1, i64 %n)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @_ZN4core4iter6traits8iterator8Iterator6cloned17h11db68606f71a968E(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>") %0, %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>", align 8
  %1 = bitcast %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %_2 to i8*
  %2 = bitcast %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17hd618e14970ab209dE"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>") %0, %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @_ZN4core4iter6traits8iterator8Iterator6cloned17h2df03384f168b4e7E(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>") %0, %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", align 8
  %1 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_2 to i8*
  %2 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17he6691013ad592a0cE"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>") %0, %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7collect17hb7feb6f05382099eE(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>", align 8
  %1 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_2 to i8*
  %2 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h078024423fc7585bE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7collect17hf1d5d8309b4a6f13E(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>", align 8
  %1 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_2 to i8*
  %2 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h0bc74dbfd8e12efdE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator8for_each17h318bf82c13eab465E(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %self, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  %_7 = alloca %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]", align 8
  %_6 = alloca %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]", align 8
  %_4 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>", align 8
  store i8 1, i8* %_8, align 1
  %1 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_4 to i8*
  %2 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  %3 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %_7 to i8*
  %4 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false)
  invoke void @_ZN4core4iter6traits8iterator8Iterator8for_each4call17h1266a4aaf4fee92aE(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* sret(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]") %_6, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %_7)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %5 = load i8, i8* %_8, align 1, !range !1, !noundef !2
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb5

bb1:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  invoke void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf515696ed8ee9622E"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_4, %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_6)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb4, %bb5
  %12 = bitcast { i8*, i32 }* %0 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator8for_each4call17h1266a4aaf4fee92aE(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* sret(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]") %0, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %f) unnamed_addr #0 {
start:
  %1 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %0 to %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"*
  %2 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %1 to i8*
  %3 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h18a2eae4cffb0084E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* align 8 %_1, i64 %item) unnamed_addr #0 {
start:
  %_5 = alloca i64, align 8
  %_4 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_1 to %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"*
  store i64 %item, i64* %_5, align 8
  %0 = load i64, i64* %_5, align 8
  call void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend28_$u7b$$u7b$closure$u7d$$u7d$17h57dcc112e9c50149E"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* align 8 %_4, i64 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @_ZN4core4iter6traits8iterator8Iterator8try_fold17h91ff0420139633b2E({ i64*, i64* }* align 8 %self, %"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_21 = alloca i8, align 1
  %_13 = alloca i64*, align 8
  %_10 = alloca i8, align 1
  %_5 = alloca i64*, align 8
  %1 = alloca i8, align 1
  store i8 1, i8* %_21, align 1
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %2 = invoke align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8bfcda4c565c1612E"({ i64*, i64* }* align 8 %self)
          to label %bb2 unwind label %cleanup

bb17:                                             ; preds = %cleanup
  %3 = load i8, i8* %_21, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb16, label %bb14

cleanup:                                          ; preds = %bb8, %bb4, %bb11, %bb3, %bb1
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb17

bb2:                                              ; preds = %bb1
  store i64* %2, i64** %_5, align 8
  %10 = bitcast i64** %_5 to {}**
  %11 = load {}*, {}** %10, align 8
  %12 = icmp eq {}* %11, null
  %_7 = select i1 %12, i64 0, i64 1
  %13 = icmp eq i64 %_7, 1
  br i1 %13, label %bb3, label %bb10

bb3:                                              ; preds = %bb2
  %x = load i64*, i64** %_5, align 8, !nonnull !2, !align !3, !noundef !2
  store i8 0, i8* %_21, align 1
  %14 = bitcast i64** %_13 to {}*
  store i64* %x, i64** %_13, align 8
  %15 = load i64*, i64** %_13, align 8, !nonnull !2, !align !3, !noundef !2
  %_11 = invoke zeroext i1 @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hf9a0ee6667ce5429E"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* align 8 %f, i64* align 8 %15)
          to label %bb4 unwind label %cleanup

bb10:                                             ; preds = %bb2
  br label %bb11

bb11:                                             ; preds = %bb10
  store i8 0, i8* %_21, align 1
  %16 = invoke zeroext i1 @"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17hc8cdd7f305499b1fE"()
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %1, align 1
  call void @"_ZN4core3ptr911drop_in_place$LT$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..try_fold..check$LT$$RF$u64$C$$LP$$RP$$C$core..result..Result$LT$$LP$$RP$$C$$u21$$GT$$C$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..fold..ok$LT$$LP$$RP$$C$$RF$u64$C$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h630b6d5ae0976c5eE"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %f)
  br label %bb13

bb13:                                             ; preds = %bb9, %bb12
  %18 = load i8, i8* %1, align 1, !range !1, !noundef !2
  %19 = trunc i8 %18 to i1
  ret i1 %19

bb4:                                              ; preds = %bb3
  %20 = invoke zeroext i1 @"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h33950bc799d1b117E"(i1 zeroext %_11)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %_10, align 1
  %22 = load i8, i8* %_10, align 1, !range !1, !noundef !2
  %23 = trunc i8 %22 to i1
  %_16 = zext i1 %23 to i64
  switch i64 %_16, label %bb7 [
    i64 0, label %bb6
    i64 1, label %bb8
  ]

bb7:                                              ; preds = %bb5
  unreachable

bb6:                                              ; preds = %bb5
  store i8 1, i8* %_21, align 1
  br label %bb1

bb8:                                              ; preds = %bb5
  %24 = invoke zeroext i1 @"_ZN104_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hbf9f8a024429215dE"()
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %25 = zext i1 %24 to i8
  store i8 %25, i8* %1, align 1
  call void @"_ZN4core3ptr911drop_in_place$LT$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..try_fold..check$LT$$RF$u64$C$$LP$$RP$$C$core..result..Result$LT$$LP$$RP$$C$$u21$$GT$$C$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..fold..ok$LT$$LP$$RP$$C$$RF$u64$C$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h630b6d5ae0976c5eE"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %f)
  br label %bb13

bb14:                                             ; preds = %bb16, %bb17
  invoke void @"_ZN4core3ptr911drop_in_place$LT$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..try_fold..check$LT$$RF$u64$C$$LP$$RP$$C$core..result..Result$LT$$LP$$RP$$C$$u21$$GT$$C$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..fold..ok$LT$$LP$$RP$$C$$RF$u64$C$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h630b6d5ae0976c5eE"(%"[closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check<&u64, (), core::result::Result<(), !>, [closure@<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::fold::ok<(), &u64, [closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]>::{closure#0}]"* %f) #16
          to label %bb15 unwind label %abort

bb16:                                             ; preds = %bb17
  br label %bb14

abort:                                            ; preds = %bb14
  %26 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb15:                                             ; preds = %bb14
  %27 = bitcast { i8*, i32 }* %0 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %32 = insertvalue { i8*, i32 } %31, i32 %30, 1
  resume { i8*, i32 } %32
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters3map16Map$LT$I$C$F$GT$3new17hf97a2aa2c2606c6fE"(%"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>"* sret(%"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>") %0, %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %iter) unnamed_addr #1 {
start:
  %_3 = alloca %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", align 8
  %1 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_3 to i8*
  %2 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  %3 = bitcast %"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>"* %0 to %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"*
  %4 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %3 to i8*
  %5 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false)
  %6 = bitcast %"core::iter::adapters::map::Map<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>, for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}>"* %0 to {}*
  ret void
}

; Function Attrs: uwtable
define void @_ZN4core4iter8adapters3map8map_fold17h2f9dd53107f07953E(%"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* sret(%"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]") %0, %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %g) unnamed_addr #1 {
start:
  %1 = bitcast %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %0 to %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"*
  %2 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %1 to i8*
  %3 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %g to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
  %4 = bitcast %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %0 to {}*
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he7e35ae8a10547c8E"(%"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* align 8 %_1, i64* align 8 %elt) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_11 = alloca i8, align 1
  %_9 = alloca i64*, align 8
  %_5 = alloca i64, align 8
  %_4 = bitcast %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1 to %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"*
  store i8 1, i8* %_11, align 1
  %_8 = bitcast %"[closure@core::iter::adapters::map::map_fold<&u64, u64, (), for<'r> fn(&'r u64) -> u64 {<u64 as core::clone::Clone>::clone}, [closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]>::{closure#0}]"* %_1 to {}*
  store i64* %elt, i64** %_9, align 8
  %1 = load i64*, i64** %_9, align 8, !nonnull !2, !align !3, !noundef !2
  %_7 = invoke i64 @_ZN4core3ops8function5FnMut8call_mut17ha5a9dc1a98b36e76E({}* align 1 %_8, i64* align 8 %1)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %2 = load i8, i8* %_11, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb5

bb1:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %9 = bitcast i64* %_5 to {}*
  store i64 %_7, i64* %_5, align 8
  %10 = load i64, i64* %_5, align 8
  invoke void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h18a2eae4cffb0084E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]>::{closure#0}]"* align 8 %_4, i64 %10)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb4, %bb5
  %11 = bitcast { i8*, i32 }* %0 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters4skip13Skip$LT$I$GT$3new17h5da5446cf4b757adE"(%"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* sret(%"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>") %0, i64* %iter.0, i64* %iter.1, i64 %n) unnamed_addr #1 {
start:
  %1 = bitcast %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %0 to { i64*, i64* }*
  %2 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %1, i32 0, i32 0
  store i64* %iter.0, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %1, i32 0, i32 1
  store i64* %iter.1, i64** %3, align 8
  %4 = getelementptr inbounds %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>", %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %0, i32 0, i32 1
  store i64 %n, i64* %4, align 8
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters4take13Take$LT$I$GT$3new17hcd00efc69fd570acE"(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* sret(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>") %0, i64* %iter.0, i64* %iter.1, i64 %n) unnamed_addr #1 {
start:
  %1 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %0 to { i64*, i64* }*
  %2 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %1, i32 0, i32 0
  store i64* %iter.0, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %1, i32 0, i32 1
  store i64* %iter.1, i64** %3, align 8
  %4 = getelementptr inbounds %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %0, i32 0, i32 1
  store i64 %n, i64* %4, align 8
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17hd618e14970ab209dE"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>") %0, %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %it) unnamed_addr #1 {
start:
  %_2 = alloca %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>", align 8
  %1 = bitcast %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %_2 to i8*
  %2 = bitcast %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  %3 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %0 to %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"*
  %4 = bitcast %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %3 to i8*
  %5 = bitcast %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17he6691013ad592a0cE"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>") %0, %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %it) unnamed_addr #1 {
start:
  %_2 = alloca %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", align 8
  %1 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_2 to i8*
  %2 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  %3 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %0 to %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"*
  %4 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %3 to i8*
  %5 = bitcast %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h87453f85cc7e7381E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h2c81c675b2827f40E(i64 %align), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !10, !noundef !2
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h8a955a6181edbc91E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !10, !noundef !2
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h7b7840d878c028b2E(i64 %_3), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hf0f6c6c8efcc1ab3E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h3cdd14c03f7154ecE(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h056ca4435e853029E"(i64 8, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h3e952d592fdd1174E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17heb2829426d762015E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !4, !noundef !2
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha1b35b8bd8e5d97dE"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc272 to %"core::panic::location::Location"*))
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !range !5, !noundef !2
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb9:                                              ; preds = %bb5
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h87453f85cc7e7381E(i64 %val, i64 8)
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
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17h728a8d09088d6187E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h8a955a6181edbc91E({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53a7aa6ec9a9fda3E"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h9a11a348d6ce5c66E"([1 x %Zahl]* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_5 = alloca { [0 x %Zahl]*, i64 }, align 8
  %0 = call { [0 x %Zahl]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17hd4b7124cd09ee63bE"([1 x %Zahl]* align 1 %self, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc274 to %"core::panic::location::Location"*))
  %_6.0 = extractvalue { [0 x %Zahl]*, i64 } %0, 0
  %_6.1 = extractvalue { [0 x %Zahl]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds { [0 x %Zahl]*, i64 }, { [0 x %Zahl]*, i64 }* %_5, i32 0, i32 0
  store [0 x %Zahl]* %_6.0, [0 x %Zahl]** %1, align 8
  %2 = getelementptr inbounds { [0 x %Zahl]*, i64 }, { [0 x %Zahl]*, i64 }* %_5, i32 0, i32 1
  store i64 %_6.1, i64* %2, align 8
  %3 = call zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4955d160b93aa9e2E"({ [0 x %Zahl]*, i64 }* align 8 %_5, %"core::fmt::Formatter"* align 8 %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %3
}

; Function Attrs: inlinehint uwtable
define { [0 x %Zahl]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17hd4b7124cd09ee63bE"([1 x %Zahl]* align 1 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4.0 = bitcast [1 x %Zahl]* %self to [0 x %Zahl]*
  %1 = call { [0 x %Zahl]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hfc28e01d52f99059E"([0 x %Zahl]* align 1 %_4.0, i64 1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x %Zahl]*, i64 } %1, 0
  %3 = extractvalue { [0 x %Zahl]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x %Zahl]*, i64 } undef, [0 x %Zahl]* %2, 0
  %5 = insertvalue { [0 x %Zahl]*, i64 } %4, i64 %3, 1
  ret { [0 x %Zahl]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17hc6ae516cab94290eE"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hb501ff441e9a4cb2E"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[u64]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_2 to { [0 x i64]*, i64 }*
  %1 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %0, i32 0, i32 0
  store [0 x i64]* %self.0, [0 x i64]** %1, align 8
  %2 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h0c82a793c37e9464E"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h6e6f1b0a5391c48aE"([0 x %Zahl]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h34dceb71239d457bE"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hfca090cf041a2895E"([0 x i64]* align 8 %self.0, i64 %self.1)
  %1 = extractvalue { i64*, i64* } %0, 0
  %2 = extractvalue { i64*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64*, i64* } undef, i64* %1, 0
  %4 = insertvalue { i64*, i64* } %3, i64* %2, 1
  ret { i64*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h1bb6cca83da7148dE"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x %Zahl]* %self.0 to %Zahl*
  ret %Zahl* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h93cda6147a936b4cE"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i64]* %self.0 to i64*
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17ha4079f2df1a12c1fE(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17ha24ac78f1ce32f26E(i64* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h6e6f1b0a5391c48aE"([0 x %Zahl]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca %Zahl*, align 8
  %1 = alloca i8*, align 8
  %end = alloca %Zahl*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h1bb6cca83da7148dE"([0 x %Zahl]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17he06ac9fe4fc8ed72E"(%Zahl* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 44, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %_11 = bitcast %Zahl* %ptr to i8*
  %4 = getelementptr i8, i8* %_11, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds %Zahl, %Zahl* %ptr, i64 %slice.1
  store %Zahl* %6, %Zahl** %0, align 8
  %7 = load %Zahl*, %Zahl** %0, align 8
  store %Zahl* %7, %Zahl** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9c6a7d03ba79d3a0E"(%Zahl* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  %8 = bitcast i8* %5 to %Zahl*
  store %Zahl* %8, %Zahl** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load %Zahl*, %Zahl** %end, align 8
  %9 = bitcast { i8*, i8* }* %2 to i8**
  store i8* %_18, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %11 = bitcast i8** %10 to %Zahl**
  store %Zahl* %_21, %Zahl** %11, align 8
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !nonnull !2, !noundef !2
  %14 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = insertvalue { i8*, i8* } undef, i8* %13, 0
  %17 = insertvalue { i8*, i8* } %16, i8* %15, 1
  ret { i8*, i8* } %17
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hfca090cf041a2895E"([0 x i64]* align 8 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i64*, align 8
  %2 = alloca { i64*, i64* }, align 8
  %ptr = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h93cda6147a936b4cE"([0 x i64]* align 8 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h21ab4e2ca90e951eE"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 8, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %_11 = bitcast i64* %ptr to i8*
  %4 = getelementptr i8, i8* %_11, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds i64, i64* %ptr, i64 %slice.1
  store i64* %6, i64** %0, align 8
  %7 = load i64*, i64** %0, align 8
  store i64* %7, i64** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h893cda4354393c52E"(i64* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  %8 = bitcast i8* %5 to i64*
  store i64* %8, i64** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load i64*, i64** %end, align 8
  %9 = bitcast { i64*, i64* }* %2 to i64**
  store i64* %_18, i64** %9, align 8
  %10 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 1
  store i64* %_21, i64** %10, align 8
  %11 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8, !nonnull !2, !noundef !2
  %13 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = insertvalue { i64*, i64* } undef, i64* %12, 0
  %16 = insertvalue { i64*, i64* } %15, i64* %14, 1
  ret { i64*, i64* } %16
}

; Function Attrs: inlinehint uwtable
define { [0 x %Zahl]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hfc28e01d52f99059E"([0 x %Zahl]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x %Zahl]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h012f3c2198363008E"([0 x %Zahl]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x %Zahl]*, i64 } %1, 0
  %3 = extractvalue { [0 x %Zahl]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x %Zahl]*, i64 } undef, [0 x %Zahl]* %2, 0
  %5 = insertvalue { [0 x %Zahl]*, i64 } %4, i64 %3, 1
  ret { [0 x %Zahl]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h3e952d592fdd1174E"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %_3 = load i64, i64* %5, align 8, !range !4, !noundef !2
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
  %12 = load i8, i8* %_7, align 1, !range !1, !noundef !2
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !range !4, !noundef !2
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h61fde5b5ea3eed79E"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2, i64 %err.0, i64 %err.1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %5, align 8, !range !4, !noundef !2
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %6 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"*
  %7 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %err.0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %err.1, i64* %9, align 8
  %10 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 1, i64* %10, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %v = load i64, i64* %11, align 8
  %12 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"*
  %13 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"* %12, i32 0, i32 1
  store i64 %v, i64* %13, align 8
  %14 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %15 = load i8, i8* %_7, align 1, !range !1, !noundef !2
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  ret void

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17ha9450c3de9f5ec38E"(i8* %0) unnamed_addr #0 {
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
  %v = load i8*, i8** %self, align 8, !nonnull !2, !noundef !2
  store i8* %v, i8** %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %9 = load i8, i8* %_7, align 1, !range !1, !noundef !2
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN4core6option19Option$LT$$RF$T$GT$6cloned17h7546e8280d869bb0E"(i64* align 8 %0) unnamed_addr #1 {
start:
  %1 = alloca { i64, i64 }, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  %2 = bitcast i64** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %5 = bitcast { i64, i64 }* %1 to i64*
  store i64 0, i64* %5, align 8
  br label %bb5

bb3:                                              ; preds = %start
  %t = load i64*, i64** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %_4 = call i64 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17hc6ae516cab94290eE"(i64* align 8 %t)
  br label %bb4

bb4:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 %_4, i64* %6, align 8
  %7 = bitcast { i64, i64 }* %1 to i64*
  store i64 1, i64* %7, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb1
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !range !4, !noundef !2
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = insertvalue { i64, i64 } undef, i64 %9, 0
  %13 = insertvalue { i64, i64 } %12, i64 %11, 1
  ret { i64, i64 } %13
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17ha3a3b7efa91e4491E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !5, !noundef !2
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
  %t.1 = load i64, i64* %10, align 8, !range !10, !noundef !2
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !5, !noundef !2
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h383767c43ba65629E() #18
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %16 = load i64, i64* %15, align 8, !range !5, !noundef !2
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
define void @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5469dd4d238b70e4E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %e = alloca { [0 x i8] }, align 1
  %self = alloca %"core::result::Result<(), !>::Ok", align 1
  switch i64 0, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
  %_7.0 = bitcast { [0 x i8] }* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 bitcast (<{ [43 x i8] }>* @alloc275 to [0 x i8]*), i64 43, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*), %"core::panic::location::Location"* align 8 %0) #18
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb4
  %7 = bitcast { i8*, i32 }* %1 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = insertvalue { i8*, i32 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i32 } %11, i32 %10, 1
  resume { i8*, i32 } %12
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2a1bed8a124e6f17E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { i64, i64 }, align 8
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  store i8 1, i8* %_11, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !6, !noundef !2
  %7 = sub i64 %6, -9223372036854775807
  %8 = icmp eq i64 %7, 0
  %_3 = select i1 %8, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = bitcast { i64, i64 }* %2 to %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok"*
  %10 = bitcast %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok"* %9 to {}*
  %11 = bitcast { i64, i64 }* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 -9223372036854775807, i64* %12, align 8
  br label %bb7

bb1:                                              ; preds = %start
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !5, !noundef !2
  store i8 0, i8* %_11, align 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !range !5, !noundef !2
  %21 = call { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h2f3b81214175ddb8E"(i64 %18, i64 %20)
  %_7.0 = extractvalue { i64, i64 } %21, 0
  %_7.1 = extractvalue { i64, i64 } %21, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  store i64 %_7.0, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %_7.1, i64* %23, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %24 = load i8, i8* %_11, align 1, !range !1, !noundef !2
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %29 = load i64, i64* %28, align 8, !range !6, !noundef !2
  %30 = insertvalue { i64, i64 } undef, i64 %27, 0
  %31 = insertvalue { i64, i64 } %30, i64 %29, 1
  ret { i64, i64 } %31

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hab570a75f23e4f38E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %1, i64 %2, i64* align 8 %op) unnamed_addr #0 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { %"core::alloc::AllocError" }, align 1
  %self = alloca { i8*, i64 }, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %1, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 1, i8* %_11, align 1
  %5 = bitcast { i8*, i64 }* %self to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_3 = select i1 %7, i64 1, i64 0
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  %t.0 = load i8*, i8** %8, align 8, !nonnull !2, !noundef !2
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %9, align 8
  %10 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"*
  %11 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"* %10, i32 0, i32 1
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 0
  store i8* %t.0, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 1
  store i64 %t.1, i64* %13, align 8
  %14 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %15 = bitcast { %"core::alloc::AllocError" }* %_9 to %"core::alloc::AllocError"*
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h2380951e45c33c8dE"(i64* align 8 %op)
  %_7.0 = extractvalue { i64, i64 } %16, 0
  %_7.1 = extractvalue { i64, i64 } %16, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %17 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %18 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %_7.0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %_7.1, i64* %20, align 8
  %21 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %22 = load i8, i8* %_11, align 1, !range !1, !noundef !2
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hfcd36006c7adfa3dE"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2) unnamed_addr #0 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { %"core::alloc::layout::LayoutError" }, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 1, i8* %_11, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !5, !noundef !2
  %7 = icmp eq i64 %6, 0
  %_3 = select i1 %7, i64 1, i64 0
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %t.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %9, align 8, !range !10, !noundef !2
  %10 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"*
  %11 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"* %10, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %t.0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %t.1, i64* %13, align 8
  %14 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %15 = bitcast { %"core::alloc::layout::LayoutError" }* %_9 to %"core::alloc::layout::LayoutError"*
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h49f09240d01c5f31E"()
  %_7.0 = extractvalue { i64, i64 } %16, 0
  %_7.1 = extractvalue { i64, i64 } %16, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %17 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"*
  %18 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %_7.0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %_7.1, i64* %20, align 8
  %21 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %22 = load i8, i8* %_11, align 1, !range !1, !noundef !2
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h43a3c110a9c9fb4dE"(i64 %t.0, i64 %t.1) unnamed_addr #1 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %t.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h74f0f971219ba2efE"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hae4943e12b446151E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: noreturn uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hc99569d7298451a6E"() unnamed_addr #3 {
start:
  call void @llvm.trap()
  unreachable
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h15d89d11c1c5fd37E"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17hed14a658ca20ab30E"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h97a14620042e69d0E"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17he92a8fecc843b228E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17hccf2de0413f0b50cE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h287a670c08603c37E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h2b55fc26c9cca72fE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64 %capacity) unnamed_addr #0 {
start:
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hcb7be2da89879a44E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64 %capacity)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h26dfa702ae8789d0E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0) unnamed_addr #0 {
start:
  %_1.0 = load i64*, i64** getelementptr inbounds ({ i64*, i64 }, { i64*, i64 }* bitcast (<{ [16 x i8] }>* @anon.15e61b2c0763512ba9bc017efa7f55f0.0 to { i64*, i64 }*), i32 0, i32 0), align 8, !nonnull !2, !noundef !2
  %_1.1 = load i64, i64* getelementptr inbounds ({ i64*, i64 }, { i64*, i64 }* bitcast (<{ [16 x i8] }>* @anon.15e61b2c0763512ba9bc017efa7f55f0.0 to { i64*, i64 }*), i32 0, i32 1), align 8
  %1 = bitcast %"alloc::vec::Vec<u64>"* %0 to { i64*, i64 }*
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 0
  store i64* %_1.0, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 1
  store i64 %_1.1, i64* %3, align 8
  %4 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %0, i32 0, i32 1
  store i64 0, i64* %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17hda85c525226a49baE({ i64*, i64 }* align 8 %self, i64 %increment) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %1 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = add i64 %2, %increment
  store i64 %3, i64* %0, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64*, i64 } @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop3new17h954f0bf94eb4f536E(i64* align 8 %len) unnamed_addr #0 {
start:
  %0 = alloca { i64*, i64 }, align 8
  %_2 = load i64, i64* %len, align 8
  %1 = bitcast { i64*, i64 }* %0 to i64**
  store i64* %len, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 1
  store i64 %_2, i64* %2, align 8
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 0
  %4 = load i64*, i64** %3, align 8, !nonnull !2, !align !3, !noundef !2
  %5 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64*, i64 } undef, i64* %4, 0
  %8 = insertvalue { i64*, i64 } %7, i64 %6, 1
  ret { i64*, i64 } %8
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hd4078d7199a40fc8E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h78c7a8fd28aedf46E"({ i64*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f412e52e571fdf9E"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4f0c53d053502ba6E"(%"alloc::vec::Vec<u64>"* align 8 %self, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %iterator) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64, align 8
  %2 = alloca { i8*, i32 }, align 8
  %_30 = alloca i8, align 1
  %_14 = alloca { i64, { i64, i64 } }, align 8
  %_3 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %bb14, %start
  %3 = invoke { i64, i64 } @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h911111a2ab0b283eE"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* align 8 %iterator)
          to label %bb2 unwind label %cleanup

bb18:                                             ; preds = %bb20, %bb21, %cleanup
  br label %bb19

cleanup:                                          ; preds = %bb1
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb18

bb2:                                              ; preds = %bb1
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  %9 = bitcast { i64, i64 }* %_3 to i64*
  %_5 = load i64, i64* %9, align 8, !range !4, !noundef !2
  %10 = icmp eq i64 %_5, 1
  br i1 %10, label %bb3, label %bb15

bb3:                                              ; preds = %bb2
  store i8 1, i8* %_30, align 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %element = load i64, i64* %11, align 8
  %len = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hedaea62f55d7ac4cE"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb4 unwind label %cleanup1

bb15:                                             ; preds = %bb2
  br label %bb16

bb16:                                             ; preds = %bb15
  br label %bb17

bb17:                                             ; preds = %bb16
  ret void

bb21:                                             ; preds = %cleanup1
  %12 = load i8, i8* %_30, align 1, !range !1, !noundef !2
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb20, label %bb18

cleanup1:                                         ; preds = %bb13, %bb12, %bb8, %bb6, %bb10, %bb4, %bb3
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb21

bb4:                                              ; preds = %bb3
  %_11 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8capacity17hd7c68e9e92d63213E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  %_9 = icmp eq i64 %len, %_11
  br i1 %_9, label %bb6, label %bb10

bb10:                                             ; preds = %bb9, %bb5
  %_22 = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hd4078d7199a40fc8E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb11 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  invoke void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha60917148257e0bbE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_14, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* align 8 %iterator)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  %19 = bitcast { i64, { i64, i64 } }* %_14 to i64*
  %lower = load i64, i64* %19, align 8
  %20 = call i64 @llvm.uadd.sat.i64(i64 %lower, i64 1)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6124c69c46db47faE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %21)
          to label %bb9 unwind label %cleanup1

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %22 = getelementptr inbounds i64, i64* %_22, i64 %len
  store i64* %22, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h3ef213a11730bf77E.exit"

"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h3ef213a11730bf77E.exit": ; preds = %bb11
  br label %bb12

bb12:                                             ; preds = %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h3ef213a11730bf77E.exit"
  store i8 0, i8* %_30, align 1
  invoke void @_ZN4core3ptr5write17hc09d2c6657b7bac7E(i64* %_3.i, i64 %element)
          to label %bb13 unwind label %cleanup1

bb13:                                             ; preds = %bb12
  %_28 = add i64 %len, 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h7799fdd99f943260E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %_28)
          to label %bb14 unwind label %cleanup1

bb14:                                             ; preds = %bb13
  br label %bb1

bb20:                                             ; preds = %bb21
  br label %bb18

bb19:                                             ; preds = %bb18
  %23 = bitcast { i8*, i32 }* %2 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = insertvalue { i8*, i32 } undef, i8* %24, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hcb7be2da89879a44E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64 %capacity) unnamed_addr #0 {
start:
  %1 = call { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17hb2e1fa1ccb4b54aeE"(i64 %capacity)
  %_3.0 = extractvalue { i64*, i64 } %1, 0
  %_3.1 = extractvalue { i64*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"alloc::vec::Vec<u64>"* %0 to { i64*, i64 }*
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 0
  store i64* %_3.0, i64** %3, align 8
  %4 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 1
  store i64 %_3.1, i64* %4, align 8
  %5 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %0, i32 0, i32 1
  store i64 0, i64* %5, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17hfc296aa8bed9132cE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64* %ptr, i64 %length, i64 %capacity) unnamed_addr #0 {
start:
  %1 = call { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17h7a63a07b7be1a939E"(i64* %ptr, i64 %capacity)
  %_5.0 = extractvalue { i64*, i64 } %1, 0
  %_5.1 = extractvalue { i64*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"alloc::vec::Vec<u64>"* %0 to { i64*, i64 }*
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 0
  store i64* %_5.0, i64** %3, align 8
  %4 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 1
  store i64 %_5.1, i64* %4, align 8
  %5 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %0, i32 0, i32 1
  store i64 %length, i64* %5, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hedaea62f55d7ac4cE"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h60012adf376355a7E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h78c7a8fd28aedf46E"({ i64*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f412e52e571fdf9E"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6124c69c46db47faE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %additional) unnamed_addr #1 {
start:
  %_4 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h70759b4d0f097b35E"({ i64*, i64 }* align 8 %_4, i64 %_5, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h7799fdd99f943260E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %new_len) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  store i64 %new_len, i64* %0, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8capacity17hd7c68e9e92d63213E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %_2 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %1 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_2, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  store i64 %2, i64* %0, align 8
  %3 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h483cea7de0e5955aE(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h8a955a6181edbc91E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #19
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc15exchange_malloc17hf9a2429d1210e6abE(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %_6 = alloca { i8*, i64 }, align 8
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h87453f85cc7e7381E(i64 %size, i64 %align)
  %layout.0 = extractvalue { i64, i64 } %0, 0
  %layout.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h219f24db84f4b9feE"(%"alloc::alloc::Global"* align 1 bitcast (<{}>* @alloc44 to %"alloc::alloc::Global"*), i64 %layout.0, i64 %layout.1)
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
  %ptr.0 = load i8*, i8** %5, align 8, !nonnull !2, !noundef !2
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i32 0, i32 1
  %ptr.1 = load i64, i64* %6, align 8
  %7 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h78180e64c974d012E"(i8* %ptr.0, i64 %ptr.1)
  br label %bb6

bb3:                                              ; preds = %bb2
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #18
  unreachable

bb6:                                              ; preds = %bb5
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h9452868d8d29ce19E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h8a955a6181edbc91E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #19
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h1e0c8164ac526afdE(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17h728a8d09088d6187E({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !10, !noundef !2
  %8 = call i8* @_ZN5alloc5alloc5alloc17h9452868d8d29ce19E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !10, !noundef !2
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h483cea7de0e5955aE(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hebf16a817c37661cE"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17ha9450c3de9f5ec38E"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha254446d4c99fecdE"(i8* %_16)
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
  %val = load i8*, i8** %_15, align 8, !nonnull !2, !noundef !2
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h7a775551d92dd437E"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha5997f31f47b7284E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc280 to %"core::panic::location::Location"*))
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
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h7a775551d92dd437E"(i8* %_7, i64 0)
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
define internal { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h35c61539b162a003E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1, i64 %2, i64 %3, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %4 = alloca i8*, align 8
  %_53 = alloca { i8*, i64 }, align 8
  %_31 = alloca i8*, align 8
  %5 = alloca { i8*, i64 }, align 8
  %new_layout = alloca { i64, i64 }, align 8
  %old_layout = alloca { i64, i64 }, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %2, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %3, i64* %9, align 8
  %_6 = call i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %old_layout)
  br label %bb1

bb1:                                              ; preds = %start
  %10 = icmp eq i64 %_6, 0
  br i1 %10, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_9.0 = load i64, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_9.1 = load i64, i64* %12, align 8, !range !10, !noundef !2
  %13 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h1e0c8164ac526afdE(%"alloc::alloc::Global"* align 1 %self, i64 %_9.0, i64 %_9.1, i1 zeroext %zeroed)
  store { i8*, i64 } %13, { i8*, i64 }* %5, align 8
  br label %bb3

bb4:                                              ; preds = %bb1
  %_14 = call i64 @_ZN4core5alloc6layout6Layout5align17h8a955a6181edbc91E({ i64, i64 }* align 8 %old_layout)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_16 = call i64 @_ZN4core5alloc6layout6Layout5align17h8a955a6181edbc91E({ i64, i64 }* align 8 %new_layout)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_13 = icmp eq i64 %_14, %_16
  br i1 %_13, label %bb7, label %bb8

bb8:                                              ; preds = %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_56.0 = load i64, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_56.1 = load i64, i64* %15, align 8, !range !10, !noundef !2
  %16 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h1e0c8164ac526afdE(%"alloc::alloc::Global"* align 1 %self, i64 %_56.0, i64 %_56.1, i1 zeroext %zeroed)
  %_54.0 = extractvalue { i8*, i64 } %16, 0
  %_54.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb26

bb7:                                              ; preds = %bb6
  %new_size = call i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %new_layout)
  br label %bb9

bb9:                                              ; preds = %bb7
  %_23 = call i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %old_layout)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_21 = icmp uge i64 %new_size, %_23
  call void @llvm.assume(i1 %_21)
  br label %bb11

bb11:                                             ; preds = %bb10
  %_26 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h46c6d13c4b3e343bE"(i8* %ptr)
  br label %bb12

bb12:                                             ; preds = %bb11
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_28.0 = load i64, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_28.1 = load i64, i64* %18, align 8, !range !10, !noundef !2
  %raw_ptr = call i8* @_ZN5alloc5alloc7realloc17hc28cf3eebdcca2a4E(i8* %_26, i64 %_28.0, i64 %_28.1, i64 %new_size)
  br label %bb13

bb13:                                             ; preds = %bb12
  %_33 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hebf16a817c37661cE"(i8* %raw_ptr)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_32 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17ha9450c3de9f5ec38E"(i8* %_33)
  br label %bb15

bb15:                                             ; preds = %bb14
  %19 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha254446d4c99fecdE"(i8* %_32)
  store i8* %19, i8** %_31, align 8
  br label %bb16

bb16:                                             ; preds = %bb15
  %20 = bitcast i8** %_31 to {}**
  %21 = load {}*, {}** %20, align 8
  %22 = icmp eq {}* %21, null
  %_36 = select i1 %22, i64 1, i64 0
  switch i64 %_36, label %bb18 [
    i64 0, label %bb17
    i64 1, label %bb19
  ]

bb18:                                             ; preds = %bb16
  unreachable

bb17:                                             ; preds = %bb16
  %val = load i8*, i8** %_31, align 8, !nonnull !2, !noundef !2
  br i1 %zeroed, label %bb21, label %bb24

bb19:                                             ; preds = %bb16
  %23 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha5997f31f47b7284E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc282 to %"core::panic::location::Location"*))
  store { i8*, i64 } %23, { i8*, i64 }* %5, align 8
  br label %bb20

bb20:                                             ; preds = %bb19
  br label %bb37

bb37:                                             ; preds = %bb31, %bb20
  br label %bb38

bb24:                                             ; preds = %bb23, %bb17
  %24 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h7a775551d92dd437E"(i8* %val, i64 %new_size)
  %_48.0 = extractvalue { i8*, i64 } %24, 0
  %_48.1 = extractvalue { i8*, i64 } %24, 1
  br label %bb25

bb21:                                             ; preds = %bb17
  %25 = getelementptr inbounds i8, i8* %raw_ptr, i64 %_6
  store i8* %25, i8** %4, align 8
  %_3.i = load i8*, i8** %4, align 8
  br label %bb22

bb22:                                             ; preds = %bb21
  %_45 = sub i64 %new_size, %_6
  call void @_ZN4core10intrinsics11write_bytes17hb7306998044e86acE(i8* %_3.i, i8 0, i64 %_45)
  br label %bb23

bb23:                                             ; preds = %bb22
  br label %bb24

bb25:                                             ; preds = %bb24
  %26 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  store i8* %_48.0, i8** %26, align 8
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  store i64 %_48.1, i64* %27, align 8
  br label %bb36

bb36:                                             ; preds = %bb3, %bb35, %bb25
  br label %bb38

bb26:                                             ; preds = %bb8
  %28 = call { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h994da08879727150E"(i8* %_54.0, i64 %_54.1)
  store { i8*, i64 } %28, { i8*, i64 }* %_53, align 8
  br label %bb27

bb27:                                             ; preds = %bb26
  %29 = bitcast { i8*, i64 }* %_53 to {}**
  %30 = load {}*, {}** %29, align 8
  %31 = icmp eq {}* %30, null
  %_58 = select i1 %31, i64 1, i64 0
  switch i64 %_58, label %bb29 [
    i64 0, label %bb28
    i64 1, label %bb30
  ]

bb29:                                             ; preds = %bb27
  unreachable

bb28:                                             ; preds = %bb27
  %32 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_53, i32 0, i32 0
  %val.0 = load i8*, i8** %32, align 8, !nonnull !2, !noundef !2
  %33 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_53, i32 0, i32 1
  %val.1 = load i64, i64* %33, align 8
  %_64 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h46c6d13c4b3e343bE"(i8* %ptr)
  br label %bb32

bb30:                                             ; preds = %bb27
  %34 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha5997f31f47b7284E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc284 to %"core::panic::location::Location"*))
  store { i8*, i64 } %34, { i8*, i64 }* %5, align 8
  br label %bb31

bb31:                                             ; preds = %bb30
  br label %bb37

bb38:                                             ; preds = %bb36, %bb37
  %35 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = insertvalue { i8*, i64 } undef, i8* %36, 0
  %40 = insertvalue { i8*, i64 } %39, i64 %38, 1
  ret { i8*, i64 } %40

bb32:                                             ; preds = %bb28
  %_66 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h78180e64c974d012E"(i8* %val.0, i64 %val.1)
  br label %bb33

bb33:                                             ; preds = %bb32
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hf19a8905cd6bc4eeE(i8* %_64, i8* %_66, i64 %_6)
  br label %bb34

bb34:                                             ; preds = %bb33
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_72.0 = load i64, i64* %41, align 8
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_72.1 = load i64, i64* %42, align 8, !range !10, !noundef !2
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3e6419f6ef08f768E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %_72.0, i64 %_72.1)
  br label %bb35

bb35:                                             ; preds = %bb34
  %43 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  store i8* %val.0, i8** %43, align 8
  %44 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  store i64 %val.1, i64* %44, align 8
  br label %bb36

bb3:                                              ; preds = %bb2
  br label %bb36
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17hdc7ab80b67c301dbE(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h8a955a6181edbc91E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #19
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc7realloc17hc28cf3eebdcca2a4E(i8* %ptr, i64 %0, i64 %1, i64 %new_size) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_5 = call i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core5alloc6layout6Layout5align17h8a955a6181edbc91E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_realloc(i8* %ptr, i64 %_5, i64 %_7, i64 %new_size) #19
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17h27481c26753073e2E(i64* %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca { i64*, i64 }, align 8
  %5 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %ptr, i32 0, i32 0
  store i64* %0, i64** %5, align 8
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %ptr, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = invoke { [0 x i64]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h3c4fd742c015b210E"({ i64*, i64 }* align 8 %ptr)
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
  %_5.0 = extractvalue { [0 x i64]*, i64 } %7, 0
  %_5.1 = extractvalue { [0 x i64]*, i64 } %7, 1
  %13 = mul nsw i64 %_5.1, 8
  store i64 %13, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %14 = invoke { [0 x i64]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h3c4fd742c015b210E"({ i64*, i64 }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { [0 x i64]*, i64 } %14, 0
  %_9.1 = extractvalue { [0 x i64]*, i64 } %14, 1
  %15 = mul nsw i64 %_9.1, 8
  store i64 8, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %16 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h87453f85cc7e7381E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %16, 0
  %layout.1 = extractvalue { i64, i64 } %16, 1
  %17 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %ptr, i32 0, i32 0
  %_17.0 = load i64*, i64** %17, align 8, !nonnull !2, !noundef !2
  %18 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %ptr, i32 0, i32 1
  %_17.1 = load i64, i64* %18, align 8
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hb86a212bfa8c0dfdE"(i64* %_17.0, i64 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17he92a8fecc843b228E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3e6419f6ef08f768E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %19 = bitcast { i8*, i32 }* %4 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h66e07d7d4ad872a5E"([0 x i64]* align 8 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %3 = alloca { i64*, i64 }, align 8
  %b = alloca { [0 x i64]*, i64 }, align 8
  %4 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %b, i32 0, i32 0
  store [0 x i64]* %0, [0 x i64]** %4, align 8
  %5 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %b, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  store i8 1, i8* %_9, align 1
  %_4 = bitcast { [0 x i64]*, i64 }* %b to %"alloc::alloc::Global"*
  invoke void @_ZN4core3ptr4read17h3b68ca94f739b34fE(%"alloc::alloc::Global"* %_4)
          to label %bb1 unwind label %cleanup

bb7:                                              ; preds = %bb4, %cleanup
  %6 = load i8, i8* %_9, align 1, !range !1, !noundef !2
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
  %13 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %b, i32 0, i32 0
  %_7.0 = load [0 x i64]*, [0 x i64]** %13, align 8, !nonnull !2, !align !3, !noundef !2
  %14 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %b, i32 0, i32 1
  %_7.1 = load i64, i64* %14, align 8
  %15 = invoke { [0 x i64]*, i64 } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h900847bd771edfe5E"([0 x i64]* align 8 %_7.0, i64 %_7.1)
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
  %_6.0 = extractvalue { [0 x i64]*, i64 } %15, 0
  %_6.1 = extractvalue { [0 x i64]*, i64 } %15, 1
  %21 = invoke { i64*, i64 } @"_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hbb838acb922593b8E"([0 x i64]* align 8 %_6.0, i64 %_6.1)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { i64*, i64 } %21, 0
  %_5.1 = extractvalue { i64*, i64 } %21, 1
  %22 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %3, i32 0, i32 0
  store i64* %_5.0, i64** %22, align 8
  %23 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %3, i32 0, i32 1
  store i64 %_5.1, i64* %23, align 8
  %24 = bitcast { i64*, i64 }* %3 to i8*
  %25 = getelementptr i8, i8* %24, i64 16
  %26 = bitcast i8* %25 to %"alloc::alloc::Global"*
  %27 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %3, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8, !nonnull !2, !noundef !2
  %29 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %3, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = insertvalue { i64*, i64 } undef, i64* %28, 0
  %32 = insertvalue { i64*, i64 } %31, i64 %30, 1
  ret { i64*, i64 } %32

bb5:                                              ; preds = %bb6, %bb7
  %33 = bitcast { i8*, i32 }* %2 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = insertvalue { i8*, i32 } undef, i8* %34, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38

bb6:                                              ; preds = %bb7
  invoke void @"_ZN4core3ptr59drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u64$u5d$$GT$$GT$17h83b20e621bf6cb3bE"({ [0 x i64]*, i64 }* %b) #16
          to label %bb5 unwind label %abort

abort:                                            ; preds = %bb6
  %39 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h41e1d6ae4b2d80d2E"([0 x i64]* align 8 %b.0, i64 %b.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i64*, i64 }, align 8
  %2 = call { i64*, i64 } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h66e07d7d4ad872a5E"([0 x i64]* align 8 %b.0, i64 %b.1)
  %_4.0 = extractvalue { i64*, i64 } %2, 0
  %_4.1 = extractvalue { i64*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = invoke { [0 x i64]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h660c878ded5e3fe5E"(i64* %_4.0, i64 %_4.1)
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
  %_6.0 = extractvalue { [0 x i64]*, i64 } %3, 0
  %_6.1 = extractvalue { [0 x i64]*, i64 } %3, 1
  %9 = bitcast { i64*, i64 }* %1 to { [0 x i64]*, i64 }*
  %10 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 0
  store [0 x i64]* %_6.0, [0 x i64]** %10, align 8
  %11 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 1
  store i64 %_6.1, i64* %11, align 8
  %12 = bitcast { i64*, i64 }* %1 to i8*
  %13 = getelementptr i8, i8* %12, i64 16
  %14 = bitcast i8* %13 to %"alloc::alloc::Global"*
  %15 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = insertvalue { i64*, i64 } undef, i64* %16, 0
  %20 = insertvalue { i64*, i64 } %19, i64 %18, 1
  ret { i64*, i64 } %20

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
define { [0 x i64]*, i64 } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h900847bd771edfe5E"([0 x i64]* align 8 %b.0, i64 %b.1) unnamed_addr #0 {
start:
  %0 = alloca { i64*, i64 }, align 8
  %_9 = alloca { i64*, i64 }, align 8
  %1 = bitcast { i64*, i64 }* %0 to { [0 x i64]*, i64 }*
  %2 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %1, i32 0, i32 0
  store [0 x i64]* %b.0, [0 x i64]** %2, align 8
  %3 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %1, i32 0, i32 1
  store i64 %b.1, i64* %3, align 8
  %4 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8, !nonnull !2, !align !3, !noundef !2
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i64*, i64 } undef, i64* %5, 0
  %9 = insertvalue { i64*, i64 } %8, i64 %7, 1
  store { i64*, i64 } %9, { i64*, i64 }* %_9, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %10 = bitcast { i64*, i64 }* %_9 to { [0 x i64]*, i64 }*
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = bitcast { [0 x i64]*, i64 }* %10 to { i64*, i64 }*
  %12 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %11, i32 0, i32 0
  %_6.0 = load i64*, i64** %12, align 8, !nonnull !2, !noundef !2
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %11, i32 0, i32 1
  %_6.1 = load i64, i64* %13, align 8
  %14 = call { [0 x i64]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h660c878ded5e3fe5E"(i64* %_6.0, i64 %_6.1)
  %_5.0 = extractvalue { [0 x i64]*, i64 } %14, 0
  %_5.1 = extractvalue { [0 x i64]*, i64 } %14, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %15 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_5.0, 0
  %16 = insertvalue { [0 x i64]*, i64 } %15, i64 %_5.1, 1
  ret { [0 x i64]*, i64 } %16
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h1bffc601b116c542E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @_ZN5alloc5slice4hack8into_vec17ha8b89ded6e97c94aE(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @_ZN5alloc5slice4hack8into_vec17ha8b89ded6e97c94aE(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %1, i64 %2) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %b = alloca { [0 x i64]*, i64 }, align 8
  %4 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %b, i32 0, i32 0
  store [0 x i64]* %1, [0 x i64]** %4, align 8
  %5 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %b, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  store i8 1, i8* %_13, align 1
  %6 = bitcast { [0 x i64]*, i64 }* %b to { i64*, i64 }*
  %7 = bitcast { i64*, i64 }* %6 to { [0 x i64]*, i64 }*
  %8 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %7, i32 0, i32 0
  %_14.0 = load [0 x i64]*, [0 x i64]** %8, align 8
  %9 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %7, i32 0, i32 1
  %_14.1 = load i64, i64* %9, align 8
  %len = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hb501ff441e9a4cb2E"([0 x i64]* align 8 %_14.0, i64 %_14.1)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  %10 = load i8, i8* %_13, align 1, !range !1, !noundef !2
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb5, label %bb4

cleanup:                                          ; preds = %bb2, %bb1, %start
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = extractvalue { i8*, i32 } %12, 1
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  br label %bb6

bb1:                                              ; preds = %start
  store i8 0, i8* %_13, align 1
  %17 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %b, i32 0, i32 0
  %_7.0 = load [0 x i64]*, [0 x i64]** %17, align 8, !nonnull !2, !align !3, !noundef !2
  %18 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %b, i32 0, i32 1
  %_7.1 = load i64, i64* %18, align 8
  %19 = invoke { i64*, i64 } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h41e1d6ae4b2d80d2E"([0 x i64]* align 8 %_7.0, i64 %_7.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { i64*, i64 } %19, 0
  %_6.1 = extractvalue { i64*, i64 } %19, 1
  %b.0 = bitcast i64* %_6.0 to [0 x i64]*
  %_8 = bitcast [0 x i64]* %b.0 to i64*
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17hfc296aa8bed9132cE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64* %_8, i64 %len, i64 %len)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  ret void

bb4:                                              ; preds = %bb5, %bb6
  %20 = bitcast { i8*, i32 }* %3 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25

bb5:                                              ; preds = %bb6
  invoke void @"_ZN4core3ptr59drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u64$u5d$$GT$$GT$17h83b20e621bf6cb3bE"({ [0 x i64]*, i64 }* %b) #16
          to label %bb4 unwind label %abort

abort:                                            ; preds = %bb5
  %26 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hea2f78294fe48066E(i64 %alloc_size) unnamed_addr #0 {
start:
  %_4 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br i1 false, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 -9223372036854775807, i64* %2, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %3 = bitcast { i64, i64 }* %_4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %8 = load i64, i64* %7, align 8, !range !5, !noundef !2
  %9 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h15d89d11c1c5fd37E"(i64 %6, i64 %8)
  %_3.0 = extractvalue { i64, i64 } %9, 0
  %_3.1 = extractvalue { i64, i64 } %9, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_3.0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_3.1, i64* %11, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !range !6, !noundef !2
  %16 = insertvalue { i64, i64 } undef, i64 %13, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: noinline uwtable
define void @_ZN5alloc7raw_vec11finish_grow17h9c366f860dde8cd3E(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, %"alloc::alloc::Global"* align 1 %alloc) unnamed_addr #4 {
start:
  %_41 = alloca i64*, align 8
  %old_layout = alloca { i64, i64 }, align 8
  %memory = alloca { i8*, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %_6 = alloca %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>", align 8
  %_5 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>", align 8
  %new_layout = alloca { i64, i64 }, align 8
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hfcd36006c7adfa3dE"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %_6, i64 %new_layout.0, i64 %new_layout.1)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb10e66dcff681c28E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %_5, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to i64*
  %_9 = load i64, i64* %1, align 8, !range !4, !noundef !2
  switch i64 %_9, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %2 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"*
  %3 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %val.0 = load i64, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %val.1 = load i64, i64* %5, align 8, !range !10, !noundef !2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %val.0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %val.1, i64* %7, align 8
  %_15 = call i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %new_layout)
  br label %bb7

bb5:                                              ; preds = %bb2
  %8 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %9 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %residual.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %residual.1 = load i64, i64* %11, align 8, !range !5, !noundef !2
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h20bab85a060ed5a6E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc286 to %"core::panic::location::Location"*))
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb13, %bb6
  br label %bb24

bb7:                                              ; preds = %bb3
  %12 = call { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hea2f78294fe48066E(i64 %_15)
  %_14.0 = extractvalue { i64, i64 } %12, 0
  %_14.1 = extractvalue { i64, i64 } %12, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %13 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha898902322595a0fE"(i64 %_14.0, i64 %_14.1)
  store { i64, i64 } %13, { i64, i64 }* %_13, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !range !6, !noundef !2
  %16 = sub i64 %15, -9223372036854775807
  %17 = icmp eq i64 %16, 0
  %_17 = select i1 %17, i64 0, i64 1
  switch i64 %_17, label %bb11 [
    i64 0, label %bb10
    i64 1, label %bb12
  ]

bb11:                                             ; preds = %bb9
  unreachable

bb10:                                             ; preds = %bb9
  %18 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, i32 0, i32 1
  %19 = load i64, i64* %18, align 8, !range !5, !noundef !2
  %20 = icmp eq i64 %19, 0
  %_22 = select i1 %20, i64 0, i64 1
  %21 = icmp eq i64 %_22, 1
  br i1 %21, label %bb15, label %bb14

bb12:                                             ; preds = %bb9
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 0
  %residual.01 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %residual.12 = load i64, i64* %23, align 8, !range !5, !noundef !2
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h38493a579493138eE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.01, i64 %residual.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc288 to %"core::panic::location::Location"*))
  br label %bb13

bb13:                                             ; preds = %bb12
  br label %bb23

bb24:                                             ; preds = %bb22, %bb23
  ret void

bb15:                                             ; preds = %bb10
  %24 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %25 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %24 to { i8*, { i64, i64 } }*
  %26 = bitcast { i8*, { i64, i64 } }* %25 to i8**
  %ptr = load i8*, i8** %26, align 8, !nonnull !2, !noundef !2
  %27 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %28 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %27 to { i8*, { i64, i64 } }*
  %29 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %28, i32 0, i32 1
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8, !range !10, !noundef !2
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %_30 = call i64 @_ZN4core5alloc6layout6Layout5align17h8a955a6181edbc91E({ i64, i64 }* align 8 %old_layout)
  br label %bb16

bb14:                                             ; preds = %bb10
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_39.0 = load i64, i64* %36, align 8
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_39.1 = load i64, i64* %37, align 8, !range !10, !noundef !2
  %38 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h219f24db84f4b9feE"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_39.0, i64 %_39.1)
  store { i8*, i64 } %38, { i8*, i64 }* %memory, align 8
  br label %bb20

bb20:                                             ; preds = %bb14
  br label %bb21

bb21:                                             ; preds = %bb19, %bb20
  %39 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %memory, i32 0, i32 0
  %_40.0 = load i8*, i8** %39, align 8
  %40 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %memory, i32 0, i32 1
  %_40.1 = load i64, i64* %40, align 8
  %41 = bitcast i64** %_41 to { i64, i64 }**
  store { i64, i64 }* %new_layout, { i64, i64 }** %41, align 8
  %42 = load i64*, i64** %_41, align 8, !nonnull !2, !align !3, !noundef !2
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hab570a75f23e4f38E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %_40.0, i64 %_40.1, i64* align 8 %42)
  br label %bb22

bb16:                                             ; preds = %bb15
  %_32 = call i64 @_ZN4core5alloc6layout6Layout5align17h8a955a6181edbc91E({ i64, i64 }* align 8 %new_layout)
  br label %bb17

bb17:                                             ; preds = %bb16
  %_29 = icmp eq i64 %_30, %_32
  call void @llvm.assume(i1 %_29)
  br label %bb18

bb18:                                             ; preds = %bb17
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_36.0 = load i64, i64* %43, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_36.1 = load i64, i64* %44, align 8, !range !10, !noundef !2
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_37.0 = load i64, i64* %45, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_37.1 = load i64, i64* %46, align 8, !range !10, !noundef !2
  %47 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h3bf12214aef72f46E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %ptr, i64 %_36.0, i64 %_36.1, i64 %_37.0, i64 %_37.1)
  store { i8*, i64 } %47, { i8*, i64 }* %memory, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  br label %bb21

bb22:                                             ; preds = %bb21
  br label %bb24
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h2380951e45c33c8dE"(i64* align 8 %0) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  %1 = bitcast i64** %_1 to { i64, i64 }**
  %_5 = load { i64, i64 }*, { i64, i64 }** %1, align 8, !nonnull !2, !align !3, !noundef !2
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %_4.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %_4.1 = load i64, i64* %3, align 8, !range !10, !noundef !2
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  store i64 %_4.0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %_4.1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %9 = load i64, i64* %8, align 8, !range !5, !noundef !2
  %10 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h15d89d11c1c5fd37E"(i64 %7, i64 %9)
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %start
  %13 = insertvalue { i64, i64 } undef, i64 %11, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h49f09240d01c5f31E"() unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !5, !noundef !2
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc7raw_vec14handle_reserve17h0a7610ea7f275d84E(i64 %result.0, i64 %result.1) unnamed_addr #0 {
start:
  %_2 = alloca { i64, i64 }, align 8
  %0 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2a1bed8a124e6f17E"(i64 %result.0, i64 %result.1)
  store { i64, i64 } %0, { i64, i64 }* %_2, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %2 = load i64, i64* %1, align 8, !range !6, !noundef !2
  %3 = sub i64 %2, -9223372036854775807
  %4 = icmp eq i64 %3, 0
  %_6 = select i1 %4, i64 0, i64 1
  switch i64 %_6, label %bb4 [
    i64 0, label %bb2
    i64 1, label %bb3
  ]

bb4:                                              ; preds = %bb3, %bb1
  unreachable

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !5, !noundef !2
  %7 = icmp eq i64 %6, 0
  %_5 = select i1 %7, i64 0, i64 1
  switch i64 %_5, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb3
  call void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #18
  unreachable

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 0
  %layout.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %layout.1 = load i64, i64* %9, align 8, !range !10, !noundef !2
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #18
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h2f3b81214175ddb8E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %e = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = call { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17hccf2de0413f0b50cE({ i64, i64 }* align 8 %e)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hfdb3465a13a579f1E"(i64 %capacity, i1 zeroext %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %result = alloca { i8*, i64 }, align 8
  %_15 = alloca { i64, i64 }, align 8
  %_10 = alloca { i64, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %_4 = alloca i8, align 1
  %2 = alloca { i64*, i64 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %init, align 1
  store i8 1, i8* %_37, align 1
  br label %bb4

bb32:                                             ; preds = %cleanup
  %4 = load i8, i8* %_37, align 1, !range !1, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb31, label %bb30

cleanup:                                          ; preds = %bb27, %bb26, %bb23, %bb25, %bb17, %bb19, %bb14, %bb12, %bb9, %bb11, %bb5, %bb7
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb32

bb4:                                              ; preds = %start
  %11 = icmp eq i64 8, 0
  br i1 %11, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_4, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %_6 = icmp eq i64 %capacity, 0
  %12 = zext i1 %_6 to i8
  store i8 %12, i8* %_4, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %13 = load i8, i8* %_4, align 1, !range !1, !noundef !2
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb5, label %bb7

bb7:                                              ; preds = %bb3
  %15 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h3cdd14c03f7154ecE(i64 %capacity)
          to label %bb8 unwind label %cleanup

bb5:                                              ; preds = %bb3
  store i8 0, i8* %_37, align 1
  %16 = invoke { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17ha5ffbe0be6ce78e9E"()
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store { i64*, i64 } %16, { i64*, i64 }* %2, align 8
  br label %bb29

bb29:                                             ; preds = %bb28, %bb6
  %17 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8, !nonnull !2, !noundef !2
  %19 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { i64*, i64 } undef, i64* %18, 0
  %22 = insertvalue { i64*, i64 } %21, i64 %20, 1
  ret { i64*, i64 } %22

bb8:                                              ; preds = %bb7
  store { i64, i64 } %15, { i64, i64 }* %_10, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1
  %24 = load i64, i64* %23, align 8, !range !5, !noundef !2
  %25 = icmp eq i64 %24, 0
  %_12 = select i1 %25, i64 1, i64 0
  switch i64 %_12, label %bb10 [
    i64 0, label %bb11
    i64 1, label %bb9
  ]

bb10:                                             ; preds = %bb8
  unreachable

bb11:                                             ; preds = %bb8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 0
  %layout.0 = load i64, i64* %26, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1
  %layout.1 = load i64, i64* %27, align 8, !range !10, !noundef !2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %layout.0, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %layout.1, i64* %29, align 8
  %_16 = invoke i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %layout)
          to label %bb12 unwind label %cleanup

bb9:                                              ; preds = %bb8
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #18
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb23, %bb14, %bb9
  unreachable

bb12:                                             ; preds = %bb11
  %30 = invoke { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hea2f78294fe48066E(i64 %_16)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  store { i64, i64 } %30, { i64, i64 }* %_15, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_15, i32 0, i32 1
  %32 = load i64, i64* %31, align 8, !range !6, !noundef !2
  %33 = sub i64 %32, -9223372036854775807
  %34 = icmp eq i64 %33, 0
  %_18 = select i1 %34, i64 0, i64 1
  switch i64 %_18, label %bb15 [
    i64 0, label %bb16
    i64 1, label %bb14
  ]

bb15:                                             ; preds = %bb13
  unreachable

bb16:                                             ; preds = %bb13
  %35 = load i8, i8* %init, align 1, !range !1, !noundef !2
  %36 = trunc i8 %35 to i1
  %_21 = zext i1 %36 to i64
  switch i64 %_21, label %bb18 [
    i64 0, label %bb19
    i64 1, label %bb17
  ]

bb14:                                             ; preds = %bb13
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #18
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb16
  unreachable

bb19:                                             ; preds = %bb16
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_23.0 = load i64, i64* %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_23.1 = load i64, i64* %38, align 8, !range !10, !noundef !2
  %39 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h219f24db84f4b9feE"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_23.0, i64 %_23.1)
          to label %bb20 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_25.0 = load i64, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_25.1 = load i64, i64* %41, align 8, !range !10, !noundef !2
  %42 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h51e3c2ef2f575ff2E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_25.0, i64 %_25.1)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb17
  store { i8*, i64 } %42, { i8*, i64 }* %result, align 8
  br label %bb22

bb22:                                             ; preds = %bb20, %bb21
  %43 = bitcast { i8*, i64 }* %result to {}**
  %44 = load {}*, {}** %43, align 8
  %45 = icmp eq {}* %44, null
  %_27 = select i1 %45, i64 1, i64 0
  switch i64 %_27, label %bb24 [
    i64 0, label %bb25
    i64 1, label %bb23
  ]

bb20:                                             ; preds = %bb19
  store { i8*, i64 } %39, { i8*, i64 }* %result, align 8
  br label %bb22

bb24:                                             ; preds = %bb22
  unreachable

bb25:                                             ; preds = %bb22
  %46 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 0
  %ptr.0 = load i8*, i8** %46, align 8, !nonnull !2, !noundef !2
  %47 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 1
  %ptr.1 = load i64, i64* %47, align 8
  %_33 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h14bc0d0a2805f119E"(i8* %ptr.0, i64 %ptr.1)
          to label %bb26 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_30.0 = load i64, i64* %48, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_30.1 = load i64, i64* %49, align 8, !range !10, !noundef !2
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %_30.0, i64 %_30.1) #18
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_32 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %_33)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_31 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h19fcd77e99464e09E"(i64* %_32)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  %50 = bitcast { i64*, i64 }* %2 to i64**
  store i64* %_31, i64** %50, align 8
  %51 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 1
  store i64 %capacity, i64* %51, align 8
  %52 = bitcast { i64*, i64 }* %2 to %"alloc::alloc::Global"*
  br label %bb29

bb30:                                             ; preds = %bb31, %bb32
  %53 = bitcast { i8*, i32 }* %1 to i8**
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = insertvalue { i8*, i32 } undef, i8* %54, 0
  %58 = insertvalue { i8*, i32 } %57, i32 %56, 1
  resume { i8*, i32 } %58

bb31:                                             ; preds = %bb32
  br label %bb30
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17ha91d0e4c33bdae08E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  store i64 %2, i64* %0, align 8
  %3 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %4 = sub i64 %3, %len
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = icmp ugt i64 %additional, %4
  ret i1 %5
}

; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2722eccb00f2cb94E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i64*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_9 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 8, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %2, align 8
  %_4 = icmp eq i64 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %4 = load i8, i8* %_2, align 1, !range !1, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h3cdd14c03f7154ecE(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17ha3a3b7efa91e4491E"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc290 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i64*, i64 }* %self to i64**
  %_12 = load i64*, i64** %11, align 8, !nonnull !2, !noundef !2
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h161b82c232bd05f9E"(i64* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h97a14620042e69d0E"(i8* %_11)
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

; Function Attrs: uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h243c84d357169671E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #1 {
start:
  %_30 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %_28 = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", align 8
  %_27 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>", align 8
  %_13 = alloca { i64, i64 }, align 8
  %_9 = alloca %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>", align 8
  %_8 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>", align 8
  %_6 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i64 8, 0
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %2 = bitcast { i64, i64 }* %_6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !5, !noundef !2
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h15d89d11c1c5fd37E"(i64 %5, i64 %7)
  %_5.0 = extractvalue { i64, i64 } %8, 0
  %_5.1 = extractvalue { i64, i64 } %8, 1
  br label %bb3

bb4:                                              ; preds = %bb1
  %9 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h1fa4d6998f6eaa83E"(i64 %len, i64 %additional)
  %_10.0 = extractvalue { i64, i64 } %9, 0
  %_10.1 = extractvalue { i64, i64 } %9, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %10 = bitcast { i64, i64 }* %_13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !range !5, !noundef !2
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h61fde5b5ea3eed79E"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %_9, i64 %_10.0, i64 %_10.1, i64 %13, i64 %15)
  br label %bb6

bb6:                                              ; preds = %bb5
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h80f147d1c816050dE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %_8, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  %16 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to i64*
  %_14 = load i64, i64* %16, align 8, !range !4, !noundef !2
  switch i64 %_14, label %bb9 [
    i64 0, label %bb8
    i64 1, label %bb10
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb8:                                              ; preds = %bb7
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"* %17, i32 0, i32 1
  %val = load i64, i64* %18, align 8
  %19 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_20 = load i64, i64* %19, align 8
  %_19 = mul i64 %_20, 2
  %cap = call i64 @_ZN4core3cmp3max17heffa38077afcdf8cE(i64 %_19, i64 %val)
  br label %bb12

bb10:                                             ; preds = %bb7
  %20 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %21 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %20, i32 0, i32 1
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %residual.0 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %residual.1 = load i64, i64* %23, align 8, !range !5, !noundef !2
  %24 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h744cd89d038f7553E"(i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc292 to %"core::panic::location::Location"*))
  store { i64, i64 } %24, { i64, i64 }* %0, align 8
  br label %bb11

bb11:                                             ; preds = %bb10
  br label %bb23

bb23:                                             ; preds = %bb21, %bb11
  br label %bb24

bb12:                                             ; preds = %bb8
  %cap1 = call i64 @_ZN4core3cmp3max17heffa38077afcdf8cE(i64 4, i64 %cap)
  br label %bb13

bb13:                                             ; preds = %bb12
  %25 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h3cdd14c03f7154ecE(i64 %cap1)
  %new_layout.0 = extractvalue { i64, i64 } %25, 0
  %new_layout.1 = extractvalue { i64, i64 } %25, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2722eccb00f2cb94E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_30, { i64*, i64 }* align 8 %self)
  br label %bb15

bb15:                                             ; preds = %bb14
  %_33 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
  call void @_ZN5alloc7raw_vec11finish_grow17h9c366f860dde8cd3E(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %_28, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30, %"alloc::alloc::Global"* align 1 %_33)
  br label %bb16

bb16:                                             ; preds = %bb15
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2575a5e7027e121cE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %_27, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %_28)
  br label %bb17

bb17:                                             ; preds = %bb16
  %26 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to i64*
  %_34 = load i64, i64* %26, align 8, !range !4, !noundef !2
  switch i64 %_34, label %bb19 [
    i64 0, label %bb18
    i64 1, label %bb20
  ]

bb19:                                             ; preds = %bb17
  unreachable

bb18:                                             ; preds = %bb17
  %27 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"*
  %28 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"* %27, i32 0, i32 1
  %29 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %28, i32 0, i32 0
  %val.0 = load i8*, i8** %29, align 8, !nonnull !2, !noundef !2
  %30 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %28, i32 0, i32 1
  %val.1 = load i64, i64* %30, align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hcd05efba0a1013d0E"({ i64*, i64 }* align 8 %self, i8* %val.0, i64 %val.1, i64 %cap1)
  br label %bb22

bb20:                                             ; preds = %bb17
  %31 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %32 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %31, i32 0, i32 1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %residual.02 = load i64, i64* %33, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %residual.13 = load i64, i64* %34, align 8, !range !5, !noundef !2
  %35 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h2c47c1a400505aaeE"(i64 %residual.02, i64 %residual.13, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc294 to %"core::panic::location::Location"*))
  store { i64, i64 } %35, { i64, i64 }* %0, align 8
  br label %bb21

bb21:                                             ; preds = %bb20
  br label %bb23

bb24:                                             ; preds = %bb3, %bb22, %bb23
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %39 = load i64, i64* %38, align 8, !range !6, !noundef !2
  %40 = insertvalue { i64, i64 } undef, i64 %37, 0
  %41 = insertvalue { i64, i64 } %40, i64 %39, 1
  ret { i64, i64 } %41

bb22:                                             ; preds = %bb18
  %42 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %42, i8 0, i64 16, i1 false)
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 -9223372036854775807, i64* %43, align 8
  br label %bb24

bb3:                                              ; preds = %bb2
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_5.0, i64* %44, align 8
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_5.1, i64* %45, align 8
  br label %bb24
}

; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hcd05efba0a1013d0E"({ i64*, i64 }* align 8 %self, i8* %ptr.0, i64 %ptr.1, i64 %cap) unnamed_addr #1 {
start:
  %_6 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h14bc0d0a2805f119E"(i8* %ptr.0, i64 %ptr.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = call i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h19fcd77e99464e09E"(i64* %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  %0 = bitcast { i64*, i64 }* %self to i64**
  store i64* %_4, i64** %0, align 8
  %1 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  store i64 %cap, i64* %1, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17hb2e1fa1ccb4b54aeE"(i64 %capacity) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !1, !noundef !2
  %1 = trunc i8 %0 to i1
  %2 = call { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hfdb3465a13a579f1E"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i64*, i64 } %2, 0
  %4 = extractvalue { i64*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i64*, i64 } undef, i64* %3, 0
  %6 = insertvalue { i64*, i64 } %5, i64 %4, 1
  ret { i64*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17h7a63a07b7be1a939E"(i64* %ptr, i64 %capacity) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i64*, i64 }, align 8
  %_4 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h19fcd77e99464e09E"(i64* %ptr)
          to label %bb1 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb2

bb1:                                              ; preds = %start
  %7 = bitcast { i64*, i64 }* %1 to i64**
  store i64* %_4, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 1
  store i64 %capacity, i64* %8, align 8
  %9 = bitcast { i64*, i64 }* %1 to %"alloc::alloc::Global"*
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i64*, i64 } undef, i64* %11, 0
  %15 = insertvalue { i64*, i64 } %14, i64 %13, 1
  ret { i64*, i64 } %15

bb3:                                              ; preds = %bb2
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h78c7a8fd28aedf46E"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64*, i64 }* %self to i64**
  %_2 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  %1 = call i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h7bb1aac9843a7ac5E"(i64* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17ha5ffbe0be6ce78e9E"() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i64*, i64 }, align 8
  %_2 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17ha74e0ec54e31ac19E"()
          to label %bb1 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb2

bb1:                                              ; preds = %start
  %7 = bitcast { i64*, i64 }* %1 to i64**
  store i64* %_2, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = bitcast { i64*, i64 }* %1 to %"alloc::alloc::Global"*
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i64*, i64 } undef, i64* %11, 0
  %15 = insertvalue { i64*, i64 } %14, i64 %13, 1
  ret { i64*, i64 } %15

bb3:                                              ; preds = %bb2
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h70759b4d0f097b35E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #0 {
start:
  %_4 = call zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17ha91d0e4c33bdae08E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb4

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb2:                                              ; preds = %bb1
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17he8d83679e4863ef7E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: cold uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17he8d83679e4863ef7E"({ i64*, i64 }* align 8 %slf, i64 %len, i64 %additional) unnamed_addr #5 {
start:
  %0 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h243c84d357169671E"({ i64*, i64 }* align 8 %slf, i64 %len, i64 %additional)
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc7raw_vec14handle_reserve17h0a7610ea7f275d84E(i64 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h31a0582acfcad8f2E"(i8* %self.0, i8* %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i8*, i8* } undef, i8* %self.0, 0
  %1 = insertvalue { i8*, i8* } %0, i8* %self.1, 1
  ret { i8*, i8* } %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h767ea3b60afa14e8E"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %0 to i8*
  %2 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h81ac65abaf840e3cE"(i64* %self.0, i64* %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64*, i64* } undef, i64* %self.0, 0
  %1 = insertvalue { i64*, i64* } %0, i64* %self.1, 1
  ret { i64*, i64* } %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h933d9e1b25cf2c77E"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %0 to i8*
  %2 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3e6419f6ef08f768E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h46c6d13c4b3e343bE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !10, !noundef !2
  call void @_ZN5alloc5alloc7dealloc17hdc7ab80b67c301dbE(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h51e3c2ef2f575ff2E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h1e0c8164ac526afdE(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h3bf12214aef72f46E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h35c61539b162a003E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h219f24db84f4b9feE"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h1e0c8164ac526afdE(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcbe6a73dd25a5db8E"(%"alloc::vec::Vec<u64>"* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = call { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h31b98ec06c9680e1E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  %_5.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_5.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb9652f4a79026620E"([0 x i64]* align 8 %_5.0, i64 %_5.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h9c553fc918069273E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8, !range !10, !noundef !2
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h253113ac553262ebE"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hd4078d7199a40fc8E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h3d2cea47274db4cfE(i64* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h31b98ec06c9680e1E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h60012adf376355a7E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17ha4079f2df1a12c1fE(i64* %_2, i64 %_4)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h63847f6b42cdb916E"(i64* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca i64*, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  %2 = bitcast i64** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %5 = bitcast i64** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 8, i1 false)
  %6 = bitcast i64** %1 to {}**
  store {}* null, {}** %6, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %v = load i64*, i64** %self, align 8, !nonnull !2, !align !3, !noundef !2
  store i64* %v, i64** %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %7 = load i64*, i64** %1, align 8, !align !3
  ret i64* %7
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7f0e80adf70c1759E"({ i64*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2722eccb00f2cb94E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i64*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !5, !noundef !2
  %2 = icmp eq i64 %1, 0
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i64, i64 } }*
  %6 = bitcast { i8*, { i64, i64 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 8, !nonnull !2, !noundef !2
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !10, !noundef !2
  %_7 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3e6419f6ef08f768E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h287a670c08603c37E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8, !range !5, !noundef !2
  %3 = icmp eq i64 %2, 0
  %_2 = select i1 %3, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %4 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 0, i64* %5, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %6 = call { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h9c553fc918069273E"({ i64, i64 }* align 8 %self)
  %_5.0 = extractvalue { i64, i64 } %6, 0
  %_5.1 = extractvalue { i64, i64 } %6, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_5.0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_5.1, i64* %8, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !5, !noundef !2
  %13 = insertvalue { i64, i64 } undef, i64 %10, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h5c7105c8ba7d7a6eE"() unnamed_addr #0 {
start:
  %0 = alloca %"core::result::Result<(), !>::Ok", align 1
  %1 = bitcast %"core::result::Result<(), !>::Ok"* %0 to {}*
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2575a5e7027e121cE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %0, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !4, !noundef !2
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 0
  %v.0 = load i8*, i8** %4, align 8, !nonnull !2, !noundef !2
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %v.1 = load i64, i64* %5, align 8
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"*
  %7 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 0
  store i8* %v.0, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 1
  store i64 %v.1, i64* %9, align 8
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to i64*
  store i64 0, i64* %10, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %11 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %12 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %11, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !5, !noundef !2
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !range !5, !noundef !2
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to i64*
  store i64 1, i64* %25, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h80f147d1c816050dE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %0, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !4, !noundef !2
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"* %2, i32 0, i32 1
  %v = load i64, i64* %3, align 8
  %4 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"*
  %5 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"* %4, i32 0, i32 1
  store i64 %v, i64* %5, align 8
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to i64*
  store i64 0, i64* %6, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %7 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"*
  %8 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"* %7, i32 0, i32 1
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  %e.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  %e.1 = load i64, i64* %10, align 8, !range !5, !noundef !2
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %12, align 8
  %13 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %14 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %13, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8, !range !5, !noundef !2
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h994da08879727150E"(i8* %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  %2 = alloca { i8*, i64 }, align 8
  %self = alloca { i8*, i64 }, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i8*, i64 }* %self to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_2 = select i1 %7, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  %v.0 = load i8*, i8** %8, align 8, !nonnull !2, !noundef !2
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %v.1 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %v.0, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %v.1, i64* %11, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %12 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"* %_6 to %"core::alloc::AllocError"*
  %13 = bitcast { i8*, i64 }* %2 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %14 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %13 to %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"*
  %15 = bitcast { i8*, i64 }* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = bitcast { i8*, i64 }* %2 to {}**
  store {}* null, {}** %16, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %17 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { i8*, i64 } undef, i8* %18, 0
  %22 = insertvalue { i8*, i64 } %21, i64 %20, 1
  ret { i8*, i64 } %22
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha254446d4c99fecdE"(i8* %0) unnamed_addr #0 {
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
  %v = load i8*, i8** %self, align 8, !nonnull !2, !noundef !2
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

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha898902322595a0fE"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !6, !noundef !2
  %7 = sub i64 %6, -9223372036854775807
  %8 = icmp eq i64 %7, 0
  %_2 = select i1 %8, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = bitcast { i64, i64 }* %2 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue"*
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue"* %9 to {}*
  %11 = bitcast { i64, i64 }* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 -9223372036854775807, i64* %12, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !5, !noundef !2
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !range !5, !noundef !2
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %26 = load i64, i64* %25, align 8, !range !6, !noundef !2
  %27 = insertvalue { i64, i64 } undef, i64 %24, 0
  %28 = insertvalue { i64, i64 } %27, i64 %26, 1
  ret { i64, i64 } %28
}

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb10e66dcff681c28E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %0, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !4, !noundef !2
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %v.0 = load i64, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %v.1 = load i64, i64* %5, align 8, !range !10, !noundef !2
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"*
  %7 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %v.0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %v.1, i64* %9, align 8
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to i64*
  store i64 0, i64* %10, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %11 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"*
  %12 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"* %11, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !5, !noundef !2
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !range !5, !noundef !2
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to i64*
  store i64 1, i64* %25, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc37d209b1dd9d124E"() unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, !>::Ok", align 1
  %0 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, !>>::Continue", align 1
  %self = alloca %"core::result::Result<(), !>::Ok", align 1
  switch i64 0, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %1 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, !>>::Continue"* %0 to {}*
  br label %bb4

bb1:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<core::convert::Infallible, !>::Ok"* %_6 to %"core::result::Result<core::convert::Infallible, !>::Err"*
  %3 = bitcast %"core::result::Result<core::convert::Infallible, !>::Err"* %2 to { [0 x i8] }*
  call void @llvm.trap()
  %4 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, !>>::Continue"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, !>>::Break"*
  %5 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, !>>::Break"* %4 to %"core::result::Result<core::convert::Infallible, !>::Ok"*
  call void @llvm.trap()
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17heb2829426d762015E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !4, !noundef !2
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
  %14 = load i64, i64* %13, align 8, !range !4, !noundef !2
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17h68d4ddf0e655d1ecE"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_2 = load i64, i64* %0, align 8
  %1 = bitcast { i64*, i64 }* %self to i64**
  %_3 = load i64*, i64** %1, align 8, !nonnull !2, !align !3, !noundef !2
  store i64 %_2, i64* %_3, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h5c54964ed438f3ceE"() unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i64** %0 to {}**
  store {}* null, {}** %2, align 8
  %3 = load i64*, i64** %0, align 8, !align !3
  ret i64* %3
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17hcc98479ac5d15b4aE"({ i64*, i64* }* align 8 %self, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %_5 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = bitcast { i64*, i64* }* %self to i64**
  %start1 = load i64*, i64** %6, align 8, !nonnull !2, !noundef !2
  %_9 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %start1)
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %7 = icmp eq i64 8, 0
  br i1 %7, label %bb3, label %bb8

bb3:                                              ; preds = %bb2
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_13 = load i64*, i64** %8, align 8
  %_12 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h72d56da56688e677E"(i64* %_13)
  br label %bb4

bb8:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_19 = load i64*, i64** %9, align 8
  %_18 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h72d56da56688e677E"(i64* %_19)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_21 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %start1)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_20 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17he602ad026dff0b67E"(i64* %_21)
  br label %bb11

bb11:                                             ; preds = %bb10
  %10 = sub nuw i64 %_18, %_20
  store i64 %10, i64* %4, align 8
  %diff = load i64, i64* %4, align 8
  br label %bb12

bb12:                                             ; preds = %bb11
  %11 = udiv exact i64 %diff, 8
  store i64 %11, i64* %_5, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  br label %bb14

bb14:                                             ; preds = %bb7, %bb13
  %12 = load i64, i64* %_5, align 8
  %_3 = icmp uge i64 %n, %12
  br i1 %_3, label %bb15, label %bb22

bb4:                                              ; preds = %bb3
  %_15 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %start1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_14 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17he602ad026dff0b67E"(i64* %_15)
  br label %bb6

bb6:                                              ; preds = %bb5
  %13 = sub i64 %_12, %_14
  store i64 %13, i64* %_5, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb14

bb22:                                             ; preds = %bb14
  %14 = bitcast { i64*, i64* }* %self to i64**
  %_12.i2 = load i64*, i64** %14, align 8, !nonnull !2, !noundef !2
  %old.i3 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %_12.i2)
  %15 = bitcast { i64*, i64* }* %self to i64**
  %_16.i4 = load i64*, i64** %15, align 8, !nonnull !2, !noundef !2
  %_15.i5 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %_16.i4)
  %16 = getelementptr inbounds i64, i64* %_15.i5, i64 %n
  store i64* %16, i64** %0, align 8
  %_3.i.i6 = load i64*, i64** %0, align 8
  %_13.i7 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h893cda4354393c52E"(i64* %_3.i.i6)
  %17 = bitcast { i64*, i64* }* %self to i64**
  store i64* %_13.i7, i64** %17, align 8
  store i64* %old.i3, i64** %1, align 8
  %18 = load i64*, i64** %1, align 8
  br label %bb23

bb15:                                             ; preds = %bb14
  br label %bb16

bb16:                                             ; preds = %bb15
  %19 = icmp eq i64 8, 0
  br i1 %19, label %bb17, label %bb19

bb17:                                             ; preds = %bb16
  %20 = bitcast { i64*, i64* }* %self to i64**
  %_27 = load i64*, i64** %20, align 8, !nonnull !2, !noundef !2
  %_26 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %_27)
  br label %bb18

bb19:                                             ; preds = %bb16
  %21 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_30 = load i64*, i64** %21, align 8
  %_28 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h893cda4354393c52E"(i64* %_30)
  br label %bb20

bb20:                                             ; preds = %bb19
  %22 = bitcast { i64*, i64* }* %self to i64**
  store i64* %_28, i64** %22, align 8
  br label %bb21

bb21:                                             ; preds = %bb18, %bb20
  %23 = bitcast i64** %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 8, i1 false)
  %24 = bitcast i64** %5 to {}**
  store {}* null, {}** %24, align 8
  br label %bb25

bb18:                                             ; preds = %bb17
  %25 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  store i64* %_26, i64** %25, align 8
  br label %bb21

bb25:                                             ; preds = %bb24, %bb21
  %26 = load i64*, i64** %5, align 8, !align !3
  ret i64* %26

bb23:                                             ; preds = %bb22
  %27 = bitcast { i64*, i64* }* %self to i64**
  %_12.i = load i64*, i64** %27, align 8, !nonnull !2, !noundef !2
  %old.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %_12.i)
  %28 = bitcast { i64*, i64* }* %self to i64**
  %_16.i = load i64*, i64** %28, align 8, !nonnull !2, !noundef !2
  %_15.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %_16.i)
  %29 = getelementptr inbounds i64, i64* %_15.i, i64 1
  store i64* %29, i64** %2, align 8
  %_3.i.i = load i64*, i64** %2, align 8
  %_13.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h893cda4354393c52E"(i64* %_3.i.i)
  %30 = bitcast { i64*, i64* }* %self to i64**
  store i64* %_13.i, i64** %30, align 8
  store i64* %old.i, i64** %3, align 8
  %31 = load i64*, i64** %3, align 8
  br label %bb24

bb24:                                             ; preds = %bb23
  store i64* %31, i64** %5, align 8
  br label %bb25
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e2b9fab61f5879fE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca %Zahl*, align 8
  %1 = alloca %Zahl*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !2, !noundef !2
  %_5 = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17haff093aa21d78f16E"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h41477dc67242aa4cE"(%Zahl* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 44, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %6 = bitcast i8** %5 to %Zahl**
  %_11 = load %Zahl*, %Zahl** %6, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17he06ac9fe4fc8ed72E"(%Zahl* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %7 = bitcast { i8*, i8* }* %self to i8**
  %_15 = load i8*, i8** %7, align 8, !nonnull !2, !noundef !2
  %_14 = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17haff093aa21d78f16E"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %8 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %9 = bitcast i8** %8 to %Zahl**
  %_16 = load %Zahl*, %Zahl** %9, align 8
  %_12 = icmp eq %Zahl* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %10 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %10, align 8, !nonnull !2, !noundef !2
  %old.i = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17haff093aa21d78f16E"(i8* %_12.i)
  %11 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %11, align 8, !nonnull !2, !noundef !2
  %_15.i = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17haff093aa21d78f16E"(i8* %_16.i)
  %12 = getelementptr inbounds %Zahl, %Zahl* %_15.i, i64 1
  store %Zahl* %12, %Zahl** %0, align 8
  %_3.i.i = load %Zahl*, %Zahl** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9c6a7d03ba79d3a0E"(%Zahl* %_3.i.i)
  %13 = bitcast { i8*, i8* }* %self to i8**
  store i8* %_13.i, i8** %13, align 8
  store %Zahl* %old.i, %Zahl** %1, align 8
  %14 = load %Zahl*, %Zahl** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %15 = bitcast i8** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = bitcast i8** %2 to {}**
  store {}* null, {}** %16, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %17 = load i8*, i8** %2, align 8, !align !7
  ret i8* %17

bb13:                                             ; preds = %bb12
  %18 = bitcast i8** %2 to %Zahl**
  store %Zahl* %14, %Zahl** %18, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8bfcda4c565c1612E"({ i64*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = bitcast { i64*, i64* }* %self to i64**
  %_6 = load i64*, i64** %3, align 8, !nonnull !2, !noundef !2
  %_5 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f412e52e571fdf9E"(i64* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 8, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_11 = load i64*, i64** %5, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h21ab4e2ca90e951eE"(i64* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %6 = bitcast { i64*, i64* }* %self to i64**
  %_15 = load i64*, i64** %6, align 8, !nonnull !2, !noundef !2
  %_14 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_16 = load i64*, i64** %7, align 8
  %_12 = icmp eq i64* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i64*, i64* }* %self to i64**
  %_12.i = load i64*, i64** %8, align 8, !nonnull !2, !noundef !2
  %old.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %_12.i)
  %9 = bitcast { i64*, i64* }* %self to i64**
  %_16.i = load i64*, i64** %9, align 8, !nonnull !2, !noundef !2
  %_15.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %_16.i)
  %10 = getelementptr inbounds i64, i64* %_15.i, i64 1
  store i64* %10, i64** %0, align 8
  %_3.i.i = load i64*, i64** %0, align 8
  %_13.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h893cda4354393c52E"(i64* %_3.i.i)
  %11 = bitcast { i64*, i64* }* %self to i64**
  store i64* %_13.i, i64** %11, align 8
  store i64* %old.i, i64** %1, align 8
  %12 = load i64*, i64** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %13 = bitcast i64** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = bitcast i64** %2 to {}**
  store {}* null, {}** %14, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %15 = load i64*, i64** %2, align 8, !align !3
  ret i64* %15

bb13:                                             ; preds = %bb12
  store i64* %12, i64** %2, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define void @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5ec984150d170edfE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, { i64*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %1 = alloca i64, align 8
  %_23 = alloca { i64, i64 }, align 8
  %exact = alloca i64, align 8
  %2 = bitcast { i64*, i64* }* %self to i64**
  %start1 = load i64*, i64** %2, align 8, !nonnull !2, !noundef !2
  %_6 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %start1)
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = icmp eq i64 8, 0
  br i1 %3, label %bb3, label %bb8

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_10 = load i64*, i64** %4, align 8
  %_9 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h72d56da56688e677E"(i64* %_10)
  br label %bb4

bb8:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_16 = load i64*, i64** %5, align 8
  %_15 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h72d56da56688e677E"(i64* %_16)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_18 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %start1)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_17 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17he602ad026dff0b67E"(i64* %_18)
  br label %bb11

bb11:                                             ; preds = %bb10
  %6 = sub nuw i64 %_15, %_17
  store i64 %6, i64* %1, align 8
  %diff = load i64, i64* %1, align 8
  br label %bb12

bb12:                                             ; preds = %bb11
  %7 = udiv exact i64 %diff, 8
  store i64 %7, i64* %exact, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  br label %bb14

bb14:                                             ; preds = %bb7, %bb13
  %_22 = load i64, i64* %exact, align 8
  %_24 = load i64, i64* %exact, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_23, i32 0, i32 1
  store i64 %_24, i64* %8, align 8
  %9 = bitcast { i64, i64 }* %_23 to i64*
  store i64 1, i64* %9, align 8
  %10 = bitcast { i64, { i64, i64 } }* %0 to i64*
  store i64 %_22, i64* %10, align 8
  %11 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_23, i32 0, i32 0
  %13 = load i64, i64* %12, align 8, !range !4, !noundef !2
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_23, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  ret void

bb4:                                              ; preds = %bb3
  %_12 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E"(i64* %start1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_11 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17he602ad026dff0b67E"(i64* %_12)
  br label %bb6

bb6:                                              ; preds = %bb5
  %18 = sub i64 %_9, %_11
  store i64 %18, i64* %exact, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define void @"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h078024423fc7585bE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %iter) unnamed_addr #0 {
start:
  %_3 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>", align 8
  %_2 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>", align 8
  %1 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_3 to i8*
  %2 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h933d9e1b25cf2c77E"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>") %_2, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h29cd33f18a6abfe6E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h0bc74dbfd8e12efdE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %iter) unnamed_addr #0 {
start:
  %_3 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>", align 8
  %_2 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>", align 8
  %1 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_3 to i8*
  %2 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h767ea3b60afa14e8E"(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>") %_2, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h92256c225685a361E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17hc8cdd7f305499b1fE"() unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = getelementptr i8, i8* %0, i64 1
  %2 = bitcast i8* %1 to {}*
  store i8 0, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h33950bc799d1b117E"(i1 zeroext %0) unnamed_addr #0 {
start:
  %_6 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<(), !>, core::convert::Infallible>::Break", align 1
  %1 = alloca i8, align 1
  %self = alloca i8, align 1
  %2 = zext i1 %0 to i8
  store i8 %2, i8* %self, align 1
  %3 = load i8, i8* %self, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  %_2 = zext i1 %4 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %5 = getelementptr i8, i8* %1, i64 1
  %6 = bitcast i8* %5 to {}*
  store i8 0, i8* %1, align 1
  br label %bb4

bb1:                                              ; preds = %start
  %7 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<(), !>, core::convert::Infallible>::Break"* %_6 to %"core::result::Result<(), !>::Ok"*
  %8 = getelementptr i8, i8* %1, i64 1
  %9 = bitcast i8* %8 to %"core::ops::control_flow::ControlFlow<core::result::Result<(), !>, core::convert::Infallible>::Break"*
  store i8 1, i8* %1, align 1
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %10 = load i8, i8* %1, align 1, !range !1, !noundef !2
  %11 = trunc i8 %10 to i1
  ret i1 %11
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hbb838acb922593b8E"([0 x i64]* align 8 %reference.0, i64 %reference.1) unnamed_addr #0 {
start:
  %0 = call { i64*, i64 } @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h57bb12593a8943d8E"([0 x i64]* align 8 %reference.0, i64 %reference.1)
  %_2.0 = extractvalue { i64*, i64 } %0, 0
  %_2.1 = extractvalue { i64*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64*, i64 } @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h5a17666102876953E"(i64* %_2.0, i64 %_2.1)
  %2 = extractvalue { i64*, i64 } %1, 0
  %3 = extractvalue { i64*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { i64*, i64 } undef, i64* %2, 0
  %5 = insertvalue { i64*, i64 } %4, i64 %3, 1
  ret { i64*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h3625e9acfcd73361E"(%"alloc::vec::Vec<u64>"* align 8 %self, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %iter) unnamed_addr #1 {
start:
  %_4 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>", align 8
  %0 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_4 to i8*
  %1 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4f0c53d053502ba6E"(%"alloc::vec::Vec<u64>"* align 8 %self, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h53b859ad72924fbeE"(%"alloc::vec::Vec<u64>"* align 8 %self, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %iterator) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca i64*, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_36 = alloca i8, align 1
  %_27 = alloca %"core::fmt::Arguments", align 8
  %_25 = alloca %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]", align 8
  %_24 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>", align 8
  %_5 = alloca { i64, { i64, i64 } }, align 8
  %high = alloca { i64, i64 }, align 8
  store i8 1, i8* %_36, align 1
  invoke void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h6cf654bf3a65de81E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_5, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* align 8 %iterator)
          to label %bb1 unwind label %cleanup

bb13:                                             ; preds = %cleanup
  %2 = load i8, i8* %_36, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb12, label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb4, %bb3, %bb10, %bb9, %bb2, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb13

bb1:                                              ; preds = %start
  %9 = bitcast { i64, { i64, i64 } }* %_5 to i64*
  %low = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_5, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !range !4, !noundef !2
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %high, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %high, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = bitcast { i64, i64 }* %high to i64*
  %_7 = load i64, i64* %17, align 8, !range !4, !noundef !2
  %18 = icmp eq i64 %_7, 1
  br i1 %18, label %bb2, label %bb9

bb2:                                              ; preds = %bb1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %high, i32 0, i32 1
  %additional = load i64, i64* %19, align 8
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6124c69c46db47faE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %additional)
          to label %bb3 unwind label %cleanup

bb9:                                              ; preds = %bb1
  invoke void @_ZN4core3fmt9Arguments6new_v117h3512ac722ace8829E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_27, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc42 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc44 to [0 x { i8*, i64* }]*), i64 0)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  invoke void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_27, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc296 to %"core::panic::location::Location"*)) #18
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb10
  unreachable

bb3:                                              ; preds = %bb2
  %_16 = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hd4078d7199a40fc8E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_18 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hedaea62f55d7ac4cE"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %20 = getelementptr inbounds i64, i64* %_16, i64 %_18
  store i64* %20, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h3ef213a11730bf77E.exit"

"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h3ef213a11730bf77E.exit": ; preds = %bb5
  br label %bb6

bb6:                                              ; preds = %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h3ef213a11730bf77E.exit"
  %_22 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %21 = invoke { i64*, i64 } @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop3new17h954f0bf94eb4f536E(i64* align 8 %_22)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %local_len.0 = extractvalue { i64*, i64 } %21, 0
  %local_len.1 = extractvalue { i64*, i64 } %21, 1
  store i8 0, i8* %_36, align 1
  %22 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_24 to i8*
  %23 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %iterator to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 24, i1 false)
  %24 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %_25 to i64**
  store i64* %_3.i, i64** %24, align 8
  %25 = getelementptr inbounds %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]", %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %_25, i32 0, i32 1
  %26 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %25, i32 0, i32 0
  store i64* %local_len.0, i64** %26, align 8
  %27 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %25, i32 0, i32 1
  store i64 %local_len.1, i64* %27, align 8
  invoke void @_ZN4core4iter6traits8iterator8Iterator8for_each17h318bf82c13eab465E(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_24, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %_25)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  ret void

bb11:                                             ; preds = %bb12, %bb13
  %28 = bitcast { i8*, i32 }* %1 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = insertvalue { i8*, i32 } undef, i8* %29, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33

bb12:                                             ; preds = %bb13
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend28_$u7b$$u7b$closure$u7d$$u7d$17h57dcc112e9c50149E"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* align 8 %_1, i64 %element) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %_1 to i64**
  %_4 = load i64*, i64** %1, align 8
  call void @_ZN4core3ptr5write17hc09d2c6657b7bac7E(i64* %_4, i64 %element)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %_1 to i64**
  %_7 = load i64*, i64** %2, align 8
  %3 = getelementptr inbounds i64, i64* %_7, i64 1
  store i64* %3, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %_1 to i64**
  store i64* %_3.i, i64** %4, align 8
  %_9 = getelementptr inbounds %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]", %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>>>::spec_extend::{closure#0}]"* %_1, i32 0, i32 1
  call void @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17hda85c525226a49baE({ i64*, i64 }* align 8 %_9, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x %Zahl]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h012f3c2198363008E"([0 x %Zahl]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = insertvalue { [0 x %Zahl]*, i64 } undef, [0 x %Zahl]* %slice.0, 0
  %2 = insertvalue { [0 x %Zahl]*, i64 } %1, i64 %slice.1, 1
  ret { [0 x %Zahl]*, i64 } %2
}

; Function Attrs: uwtable
define void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h29cd33f18a6abfe6E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %iterator) unnamed_addr #1 {
start:
  %_2 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>", align 8
  %1 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_2 to i8*
  %2 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %iterator to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17ha45a85ec9895bc3aE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h92256c225685a361E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %iterator) unnamed_addr #1 {
start:
  %_2 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>", align 8
  %1 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_2 to i8*
  %2 = bitcast %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %iterator to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hc480755d1ddf0d73E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h57bb12593a8943d8E"([0 x i64]* align 8 %reference.0, i64 %reference.1) unnamed_addr #0 {
start:
  %0 = alloca { i64*, i64 }, align 8
  %1 = bitcast { i64*, i64 }* %0 to { [0 x i64]*, i64 }*
  %2 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %1, i32 0, i32 0
  store [0 x i64]* %reference.0, [0 x i64]** %2, align 8
  %3 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %1, i32 0, i32 1
  store i64 %reference.1, i64* %3, align 8
  %4 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8, !nonnull !2, !noundef !2
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i64*, i64 } undef, i64* %5, 0
  %9 = insertvalue { i64*, i64 } %8, i64 %7, 1
  ret { i64*, i64 } %9
}

; Function Attrs: uwtable
define void @zrsh([1 x %Zahl]* align 1 %high, [1 x %Zahl]* align 1 %a, i64 %delim) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca i64, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_21 = alloca %"alloc::vec::Vec<u64>", align 8
  %_20 = alloca i8, align 1
  %_6 = alloca %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>", align 8
  %_5 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>", align 8
  %_4 = alloca %"alloc::vec::Vec<u64>", align 8
  store i8 0, i8* %_20, align 1
  %2 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_10 = getelementptr inbounds %Zahl, %Zahl* %2, i32 0, i32 3
  %3 = call { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h31b98ec06c9680e1E"(%"alloc::vec::Vec<u64>"* align 8 %_10)
  %_9.0 = extractvalue { [0 x i64]*, i64 } %3, 0
  %_9.1 = extractvalue { [0 x i64]*, i64 } %3, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h34dceb71239d457bE"([0 x i64]* align 8 %_9.0, i64 %_9.1)
  %_7.0 = extractvalue { i64*, i64* } %4, 0
  %_7.1 = extractvalue { i64*, i64* } %4, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN4core4iter6traits8iterator8Iterator4skip17h64b4e41bf47290d6E(%"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* sret(%"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>") %_6, i64* %_7.0, i64* %_7.1, i64 %delim)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN4core4iter6traits8iterator8Iterator6cloned17h11db68606f71a968E(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>") %_5, %"core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>"* %_6)
  br label %bb4

bb4:                                              ; preds = %bb3
  store i8 1, i8* %_20, align 1
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17hb7feb6f05382099eE(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %_4, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::skip::Skip<core::slice::iter::Iter<u64>>>"* %_5)
  br label %bb5

bb5:                                              ; preds = %bb4
  store i8 0, i8* %_20, align 1
  %5 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %6 = getelementptr inbounds %Zahl, %Zahl* %5, i32 0, i32 3
  %7 = bitcast %"alloc::vec::Vec<u64>"* %_21 to i8*
  %8 = bitcast %"alloc::vec::Vec<u64>"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 1 %8, i64 24, i1 false)
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hfc7f1b5eb1e124e2E"(%"alloc::vec::Vec<u64>"* %_21)
          to label %bb11 unwind label %cleanup

bb9:                                              ; preds = %cleanup
  %9 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %10 = getelementptr inbounds %Zahl, %Zahl* %9, i32 0, i32 3
  %11 = bitcast %"alloc::vec::Vec<u64>"* %10 to i8*
  %12 = bitcast %"alloc::vec::Vec<u64>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 8 %12, i64 24, i1 false)
  %13 = load i8, i8* %_20, align 1, !range !1, !noundef !2
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb10, label %bb8

cleanup:                                          ; preds = %bb5
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb9

bb11:                                             ; preds = %bb5
  %20 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %21 = getelementptr inbounds %Zahl, %Zahl* %20, i32 0, i32 3
  %22 = bitcast %"alloc::vec::Vec<u64>"* %21 to i8*
  %23 = bitcast %"alloc::vec::Vec<u64>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 8 %23, i64 24, i1 false)
  store i8 0, i8* %_20, align 1
  %24 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %25 = getelementptr inbounds %Zahl, %Zahl* %24, i32 0, i32 1
  %_16 = load i64, i64* %25, align 1
  %26 = call i64 @llvm.usub.sat.i64(i64 %_16, i64 %delim)
  store i64 %26, i64* %0, align 8
  %27 = load i64, i64* %0, align 8
  br label %bb6

bb8:                                              ; preds = %bb10, %bb9
  %28 = bitcast { i8*, i32 }* %1 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = insertvalue { i8*, i32 } undef, i8* %29, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33

bb10:                                             ; preds = %bb9
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hfc7f1b5eb1e124e2E"(%"alloc::vec::Vec<u64>"* %_4) #16
          to label %bb8 unwind label %abort

abort:                                            ; preds = %bb10
  %34 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb6:                                              ; preds = %bb11
  %_14 = call i64 @_ZN4core3cmp3max17heffa38077afcdf8cE(i64 %27, i64 0)
  br label %bb7

bb7:                                              ; preds = %bb6
  %35 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %36 = getelementptr inbounds %Zahl, %Zahl* %35, i32 0, i32 1
  store i64 %_14, i64* %36, align 1
  ret void
}

; Function Attrs: uwtable
define void @ztrunc([1 x %Zahl]* align 1 %low, [1 x %Zahl]* align 1 %a, i64 %delim) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_20 = alloca %"alloc::vec::Vec<u64>", align 8
  %_19 = alloca i8, align 1
  %_6 = alloca %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>", align 8
  %_5 = alloca %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>", align 8
  %_4 = alloca %"alloc::vec::Vec<u64>", align 8
  store i8 0, i8* %_19, align 1
  %1 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_10 = getelementptr inbounds %Zahl, %Zahl* %1, i32 0, i32 3
  %2 = call { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h31b98ec06c9680e1E"(%"alloc::vec::Vec<u64>"* align 8 %_10)
  %_9.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_9.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = call { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h34dceb71239d457bE"([0 x i64]* align 8 %_9.0, i64 %_9.1)
  %_7.0 = extractvalue { i64*, i64* } %3, 0
  %_7.1 = extractvalue { i64*, i64* } %3, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN4core4iter6traits8iterator8Iterator4take17h9caed99ee27fc649E(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* sret(%"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>") %_6, i64* %_7.0, i64* %_7.1, i64 %delim)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN4core4iter6traits8iterator8Iterator6cloned17h2df03384f168b4e7E(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* sret(%"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>") %_5, %"core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>"* %_6)
  br label %bb4

bb4:                                              ; preds = %bb3
  store i8 1, i8* %_19, align 1
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17hf1d5d8309b4a6f13E(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %_4, %"core::iter::adapters::cloned::Cloned<core::iter::adapters::take::Take<core::slice::iter::Iter<u64>>>"* %_5)
  br label %bb5

bb5:                                              ; preds = %bb4
  store i8 0, i8* %_19, align 1
  %4 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %5 = getelementptr inbounds %Zahl, %Zahl* %4, i32 0, i32 3
  %6 = bitcast %"alloc::vec::Vec<u64>"* %_20 to i8*
  %7 = bitcast %"alloc::vec::Vec<u64>"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 1 %7, i64 24, i1 false)
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hfc7f1b5eb1e124e2E"(%"alloc::vec::Vec<u64>"* %_20)
          to label %bb10 unwind label %cleanup

bb8:                                              ; preds = %cleanup
  %8 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %9 = getelementptr inbounds %Zahl, %Zahl* %8, i32 0, i32 3
  %10 = bitcast %"alloc::vec::Vec<u64>"* %9 to i8*
  %11 = bitcast %"alloc::vec::Vec<u64>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 8 %11, i64 24, i1 false)
  %12 = load i8, i8* %_19, align 1, !range !1, !noundef !2
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb9, label %bb7

cleanup:                                          ; preds = %bb5
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb8

bb10:                                             ; preds = %bb5
  %19 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %20 = getelementptr inbounds %Zahl, %Zahl* %19, i32 0, i32 3
  %21 = bitcast %"alloc::vec::Vec<u64>"* %20 to i8*
  %22 = bitcast %"alloc::vec::Vec<u64>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 8 %22, i64 24, i1 false)
  store i8 0, i8* %_19, align 1
  %23 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %24 = getelementptr inbounds %Zahl, %Zahl* %23, i32 0, i32 1
  %_15 = load i64, i64* %24, align 1
  %_14 = call i64 @_ZN4core3cmp3min17h5637c03299128896E(i64 %_15, i64 %delim)
  br label %bb6

bb7:                                              ; preds = %bb9, %bb8
  %25 = bitcast { i8*, i32 }* %0 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %30 = insertvalue { i8*, i32 } %29, i32 %28, 1
  resume { i8*, i32 } %30

bb9:                                              ; preds = %bb8
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hfc7f1b5eb1e124e2E"(%"alloc::vec::Vec<u64>"* %_4) #16
          to label %bb7 unwind label %abort

abort:                                            ; preds = %bb9
  %31 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb6:                                              ; preds = %bb10
  %32 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %33 = getelementptr inbounds %Zahl, %Zahl* %32, i32 0, i32 1
  store i64 %_14, i64* %33, align 1
  ret void
}

; Function Attrs: uwtable
define void @zsplit([1 x %Zahl]* align 1 %high, [1 x %Zahl]* align 1 %low, [1 x %Zahl]* align 1 %a, i64 %delim) unnamed_addr #1 {
start:
  %_5 = call zeroext i1 @_ZN4core3ptr2eq17hd967dd9df753bf8eE([1 x %Zahl]* %high, [1 x %Zahl]* %a)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_5, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  call void @zrsh([1 x %Zahl]* align 1 %high, [1 x %Zahl]* align 1 %a, i64 %delim)
  br label %bb5

bb2:                                              ; preds = %bb1
  call void @ztrunc([1 x %Zahl]* align 1 %low, [1 x %Zahl]* align 1 %a, i64 %delim)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @zrsh([1 x %Zahl]* align 1 %high, [1 x %Zahl]* align 1 %a, i64 %delim)
  br label %bb6

bb6:                                              ; preds = %bb5, %bb3
  ret void

bb5:                                              ; preds = %bb4
  call void @ztrunc([1 x %Zahl]* align 1 %low, [1 x %Zahl]* align 1 %a, i64 %delim)
  br label %bb6
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_43 = alloca [1 x { i8*, i64* }], align 8
  %_36 = alloca %"core::fmt::Arguments", align 8
  %_31 = alloca [1 x { i8*, i64* }], align 8
  %_24 = alloca %"core::fmt::Arguments", align 8
  %_15 = alloca %"alloc::vec::Vec<u64>", align 8
  %_14 = alloca %Zahl, align 1
  %low = alloca [1 x %Zahl], align 1
  %_12 = alloca %"alloc::vec::Vec<u64>", align 8
  %_11 = alloca %Zahl, align 1
  %high = alloca [1 x %Zahl], align 1
  %_3 = alloca %"alloc::vec::Vec<u64>", align 8
  %_2 = alloca %Zahl, align 1
  %a = alloca [1 x %Zahl], align 1
  %_8 = call i8* @_ZN5alloc5alloc15exchange_malloc17hf9a2429d1210e6abE(i64 32, i64 8)
  br label %bb1

bb1:                                              ; preds = %start
  %_9 = bitcast i8* %_8 to [4 x i64]*
  %1 = bitcast [4 x i64]* %_9 to i64*
  %_49 = bitcast i64* %1 to [4 x i64]*
  %2 = getelementptr inbounds [4 x i64], [4 x i64]* %_49, i64 0, i64 0
  store i64 1, i64* %2, align 8
  %3 = getelementptr inbounds [4 x i64], [4 x i64]* %_49, i64 0, i64 1
  store i64 2, i64* %3, align 8
  %4 = getelementptr inbounds [4 x i64], [4 x i64]* %_49, i64 0, i64 2
  store i64 3, i64* %4, align 8
  %5 = getelementptr inbounds [4 x i64], [4 x i64]* %_49, i64 0, i64 3
  store i64 4, i64* %5, align 8
  %6 = bitcast [4 x i64]* %_9 to [0 x i64]*
  %7 = bitcast [0 x i64]* %6 to i64*
  %_4.0 = bitcast i64* %7 to [0 x i64]*
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h1bffc601b116c542E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %_3, [0 x i64]* align 8 %_4.0, i64 4)
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = bitcast %Zahl* %_2 to i32*
  store i32 1, i32* %8, align 1
  %9 = getelementptr inbounds %Zahl, %Zahl* %_2, i32 0, i32 1
  store i64 4, i64* %9, align 1
  %10 = getelementptr inbounds %Zahl, %Zahl* %_2, i32 0, i32 2
  store i64 4, i64* %10, align 1
  %11 = getelementptr inbounds %Zahl, %Zahl* %_2, i32 0, i32 3
  %12 = bitcast %"alloc::vec::Vec<u64>"* %11 to i8*
  %13 = bitcast %"alloc::vec::Vec<u64>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 8 %13, i64 24, i1 false)
  %14 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %15 = bitcast %Zahl* %14 to i8*
  %16 = bitcast %Zahl* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %16, i64 44, i1 false)
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h26dfa702ae8789d0E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %_12)
          to label %bb3 unwind label %cleanup

bb17:                                             ; preds = %bb16, %cleanup
  invoke void @"_ZN4core3ptr54drop_in_place$LT$$u5b$zsplit..Zahl$u3b$$u20$1$u5d$$GT$17h88edbf5ed0c482adE"([1 x %Zahl]* %a) #16
          to label %bb18 unwind label %abort

cleanup:                                          ; preds = %bb12, %bb2
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  %19 = extractvalue { i8*, i32 } %17, 1
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %bb17

bb3:                                              ; preds = %bb2
  %22 = bitcast %Zahl* %_11 to i32*
  store i32 0, i32* %22, align 1
  %23 = getelementptr inbounds %Zahl, %Zahl* %_11, i32 0, i32 1
  store i64 0, i64* %23, align 1
  %24 = getelementptr inbounds %Zahl, %Zahl* %_11, i32 0, i32 2
  store i64 0, i64* %24, align 1
  %25 = getelementptr inbounds %Zahl, %Zahl* %_11, i32 0, i32 3
  %26 = bitcast %"alloc::vec::Vec<u64>"* %25 to i8*
  %27 = bitcast %"alloc::vec::Vec<u64>"* %_12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 8 %27, i64 24, i1 false)
  %28 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %high, i64 0, i64 0
  %29 = bitcast %Zahl* %28 to i8*
  %30 = bitcast %Zahl* %_11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %30, i64 44, i1 false)
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h26dfa702ae8789d0E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %_15)
          to label %bb4 unwind label %cleanup1

bb16:                                             ; preds = %bb15, %cleanup1
  invoke void @"_ZN4core3ptr54drop_in_place$LT$$u5b$zsplit..Zahl$u3b$$u20$1$u5d$$GT$17h88edbf5ed0c482adE"([1 x %Zahl]* %high) #16
          to label %bb17 unwind label %abort

cleanup1:                                         ; preds = %bb11, %bb3
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  %33 = extractvalue { i8*, i32 } %31, 1
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %bb16

bb4:                                              ; preds = %bb3
  %36 = bitcast %Zahl* %_14 to i32*
  store i32 0, i32* %36, align 1
  %37 = getelementptr inbounds %Zahl, %Zahl* %_14, i32 0, i32 1
  store i64 0, i64* %37, align 1
  %38 = getelementptr inbounds %Zahl, %Zahl* %_14, i32 0, i32 2
  store i64 0, i64* %38, align 1
  %39 = getelementptr inbounds %Zahl, %Zahl* %_14, i32 0, i32 3
  %40 = bitcast %"alloc::vec::Vec<u64>"* %39 to i8*
  %41 = bitcast %"alloc::vec::Vec<u64>"* %_15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 8 %41, i64 24, i1 false)
  %42 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %low, i64 0, i64 0
  %43 = bitcast %Zahl* %42 to i8*
  %44 = bitcast %Zahl* %_14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %44, i64 44, i1 false)
  invoke void @zsplit([1 x %Zahl]* align 1 %high, [1 x %Zahl]* align 1 %low, [1 x %Zahl]* align 1 %a, i64 2)
          to label %bb5 unwind label %cleanup2

bb15:                                             ; preds = %cleanup2
  invoke void @"_ZN4core3ptr54drop_in_place$LT$$u5b$zsplit..Zahl$u3b$$u20$1$u5d$$GT$17h88edbf5ed0c482adE"([1 x %Zahl]* %low) #16
          to label %bb16 unwind label %abort

cleanup2:                                         ; preds = %bb10, %bb9, %bb8, %bb7, %bb6, %bb5, %bb4
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  %47 = extractvalue { i8*, i32 } %45, 1
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %bb15

bb5:                                              ; preds = %bb4
  %50 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17h3a36275136be5a95E([1 x %Zahl]* align 1 %high)
          to label %bb6 unwind label %cleanup2

bb6:                                              ; preds = %bb5
  %_32.0 = extractvalue { i8*, i64* } %50, 0
  %_32.1 = extractvalue { i8*, i64* } %50, 1
  %51 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_31, i64 0, i64 0
  %52 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %51, i32 0, i32 0
  store i8* %_32.0, i8** %52, align 8
  %53 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %51, i32 0, i32 1
  store i64* %_32.1, i64** %53, align 8
  %_28.0 = bitcast [1 x { i8*, i64* }]* %_31 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117h3512ac722ace8829E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_24, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc53 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_28.0, i64 1)
          to label %bb7 unwind label %cleanup2

bb7:                                              ; preds = %bb6
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_24)
          to label %bb8 unwind label %cleanup2

bb8:                                              ; preds = %bb7
  %54 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17h3a36275136be5a95E([1 x %Zahl]* align 1 %low)
          to label %bb9 unwind label %cleanup2

bb9:                                              ; preds = %bb8
  %_44.0 = extractvalue { i8*, i64* } %54, 0
  %_44.1 = extractvalue { i8*, i64* } %54, 1
  %55 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_43, i64 0, i64 0
  %56 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %55, i32 0, i32 0
  store i8* %_44.0, i8** %56, align 8
  %57 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %55, i32 0, i32 1
  store i64* %_44.1, i64** %57, align 8
  %_40.0 = bitcast [1 x { i8*, i64* }]* %_43 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117h3512ac722ace8829E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_36, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc57 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_40.0, i64 1)
          to label %bb10 unwind label %cleanup2

bb10:                                             ; preds = %bb9
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_36)
          to label %bb11 unwind label %cleanup2

bb11:                                             ; preds = %bb10
  invoke void @"_ZN4core3ptr54drop_in_place$LT$$u5b$zsplit..Zahl$u3b$$u20$1$u5d$$GT$17h88edbf5ed0c482adE"([1 x %Zahl]* %low)
          to label %bb12 unwind label %cleanup1

abort:                                            ; preds = %bb15, %bb16, %bb17
  %58 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb12:                                             ; preds = %bb11
  invoke void @"_ZN4core3ptr54drop_in_place$LT$$u5b$zsplit..Zahl$u3b$$u20$1$u5d$$GT$17h88edbf5ed0c482adE"([1 x %Zahl]* %high)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  call void @"_ZN4core3ptr54drop_in_place$LT$$u5b$zsplit..Zahl$u3b$$u20$1$u5d$$GT$17h88edbf5ed0c482adE"([1 x %Zahl]* %a)
  br label %bb14

bb18:                                             ; preds = %bb17
  %59 = bitcast { i8*, i32 }* %0 to i8**
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = insertvalue { i8*, i32 } undef, i8* %60, 0
  %64 = insertvalue { i8*, i32 } %63, i32 %62, 1
  resume { i8*, i32 } %64

bb14:                                             ; preds = %bb13
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN49_$LT$zsplit..Zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe76f4c83e9234d6E"(%Zahl* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %__self_0_3 = alloca %"alloc::vec::Vec<u64>"*, align 8
  %__self_0_2 = alloca i64*, align 8
  %__self_0_1 = alloca i64*, align 8
  %__self_0_0 = alloca i32*, align 8
  %0 = bitcast %Zahl* %self to i32*
  store i32* %0, i32** %__self_0_0, align 8
  %1 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 1
  store i64* %1, i64** %__self_0_1, align 8
  %2 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  store i64* %2, i64** %__self_0_2, align 8
  %3 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 3
  store %"alloc::vec::Vec<u64>"* %3, %"alloc::vec::Vec<u64>"** %__self_0_3, align 8
  %_12.0 = bitcast i32** %__self_0_0 to {}*
  %_17.0 = bitcast i64** %__self_0_1 to {}*
  %_22.0 = bitcast i64** %__self_0_2 to {}*
  %_27.0 = bitcast %"alloc::vec::Vec<u64>"** %__self_0_3 to {}*
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h67d131540e48a232E(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc297 to [0 x i8]*), i64 4, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc298 to [0 x i8]*), i64 4, {}* align 1 %_12.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.3 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc302 to [0 x i8]*), i64 4, {}* align 1 %_17.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.4 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc306 to [0 x i8]*), i64 7, {}* align 1 %_22.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.4 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc307 to [0 x i8]*), i64 5, {}* align 1 %_27.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.5 to [3 x i64]*))
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN55_$LT$zsplit..ZPrimality$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a55dc33187e9e4aE"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !12, !noundef !2
  %_3 = zext i8 %1 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc313 to [0 x i8]*), i64 8)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb5

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc312 to [0 x i8]*), i64 13)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb5

bb1:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc311 to [0 x i8]*), i64 5)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb1, %bb4, %bb3
  %8 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN53_$LT$zsplit..ZRandDev$u20$as$u20$core..fmt..Debug$GT$3fmt17hcae674169de61377E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !13, !noundef !2
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
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc320 to [0 x i8]*), i64 10)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb9

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc319 to [0 x i8]*), i64 12)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb9

bb5:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc318 to [0 x i8]*), i64 13)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb9

bb6:                                              ; preds = %start
  %8 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc317 to [0 x i8]*), i64 13)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %0, align 1
  br label %bb9

bb7:                                              ; preds = %start
  %10 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [14 x i8] }>* @alloc316 to [0 x i8]*), i64 14)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb9

bb8:                                              ; preds = %start
  %12 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc315 to [0 x i8]*), i64 16)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %0, align 1
  br label %bb9

bb1:                                              ; preds = %start
  %14 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc314 to [0 x i8]*), i64 16)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %0, align 1
  br label %bb9

bb9:                                              ; preds = %bb1, %bb8, %bb7, %bb6, %bb5, %bb4, %bb3
  %16 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %17 = trunc i8 %16 to i1
  ret i1 %17
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN54_$LT$zsplit..ZRandDist$u20$as$u20$core..fmt..Debug$GT$3fmt17h3faa635a2408b72cE"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !12, !noundef !2
  %_3 = zext i8 %1 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc323 to [0 x i8]*), i64 12)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb5

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc322 to [0 x i8]*), i64 7)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb5

bb1:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc321 to [0 x i8]*), i64 10)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb1, %bb4, %bb3
  %8 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN51_$LT$zsplit..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17h1e33604b2190b5f6E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !14, !noundef !2
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
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc329 to [0 x i8]*), i64 8)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb8

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [11 x i8] }>* @alloc328 to [0 x i8]*), i64 11)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb8

bb5:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [11 x i8] }>* @alloc327 to [0 x i8]*), i64 11)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb8

bb6:                                              ; preds = %start
  %8 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc326 to [0 x i8]*), i64 7)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %0, align 1
  br label %bb8

bb7:                                              ; preds = %start
  %10 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc325 to [0 x i8]*), i64 8)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb8

bb1:                                              ; preds = %start
  %12 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc324 to [0 x i8]*), i64 12)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb1, %bb7, %bb6, %bb5, %bb4, %bb3
  %14 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %15 = trunc i8 %14 to i1
  ret i1 %15
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #6

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #8

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #9

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h9950a42986e53ae1E(%"core::fmt::builders::DebugList"* sret(%"core::fmt::builders::DebugList"), %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17he9dcf78544f9bde4E(%"core::fmt::builders::DebugList"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E(%"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h7a5e9cbb7827bfc6E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E(%"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h73d7b5c940bc6831E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17haad3cb6efb015561E"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17hc7ea05045a8ba070E"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb5d5637c14577644E"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList5entry17h0383dd2350e753d0E(%"core::fmt::builders::DebugList"* align 8, {}* align 1, [3 x i64]* align 8) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$$u21$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c56391924ef3308E"({ [0 x i8] }* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #9

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #14

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #15

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #14

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #14

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #14

; Function Attrs: noreturn uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() unnamed_addr #3

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h67d131540e48a232E(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { cold uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #9 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #14 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #15 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #16 = { noinline }
attributes #17 = { noinline noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 8}
!4 = !{i64 0, i64 2}
!5 = !{i64 0, i64 -9223372036854775807}
!6 = !{i64 0, i64 -9223372036854775806}
!7 = !{i64 1}
!8 = !{i64 4}
!9 = !{i8 -1, i8 2}
!10 = !{i64 1, i64 -9223372036854775807}
!11 = !{i64 1, i64 0}
!12 = !{i8 0, i8 3}
!13 = !{i8 0, i8 7}
!14 = !{i8 0, i8 6}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsplit.rs.bc", hash: (1174493128, 3355641942, 3118218063, 3828181272, 4009974136))
^1 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h6a2e2c48c6845172E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^157))))) ; guid = 8218317025003520
^2 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb5d5637c14577644E") ; guid = 13531240843763559
^3 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hab570a75f23e4f38E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^342))))) ; guid = 75690049458037529
^4 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hb09287f9e6484111E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^251), (callee: ^85))))) ; guid = 200306201610907762
^5 = gv: (name: "alloc329", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 235621193548943076
^6 = gv: (name: "_ZN4core3fmt9Formatter10debug_list17h9950a42986e53ae1E") ; guid = 244147525671112258
^7 = gv: (name: "_ZN48_$LT$usize$u20$as$u20$core..default..Default$GT$7default17h0c28b50e72ccb183E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 251673346923989214
^8 = gv: (name: "alloc323", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 374947076467184476
^9 = gv: (name: "vtable.5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^128, ^164)))) ; guid = 391346160959950649
^10 = gv: (name: "_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h53b859ad72924fbeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 74, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^191), (callee: ^309), (callee: ^162), (callee: ^337), (callee: ^238), (callee: ^62), (callee: ^178), (callee: ^195)), refs: (^317, ^210, ^241, ^174)))) ; guid = 509088478118053666
^11 = gv: (name: "_ZN4core3cmp3max17heffa38077afcdf8cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^199))))) ; guid = 546660883833370328
^12 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^13 = gv: (name: "_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE") ; guid = 682884734678583306
^14 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h8e583ca32f9c2407E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 739311445320752314
^15 = gv: (name: "alloc327", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 783731734192823226
^16 = gv: (name: "alloc266", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^117)))) ; guid = 889835985198095270
^17 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h2f3b81214175ddb8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^293))))) ; guid = 921986994871946158
^18 = gv: (name: "_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h29cd33f18a6abfe6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^165))))) ; guid = 927543639426544528
^19 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator4take17h9caed99ee27fc649E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^259))))) ; guid = 934995970801382341
^20 = gv: (name: "_ZN51_$LT$zsplit..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17h1e33604b2190b5f6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, calls: ((callee: ^41)), refs: (^5, ^247, ^15, ^38, ^52, ^54)))) ; guid = 983048858521818493
^21 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^22 = gv: (name: "alloc271", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1111684384422751265
^23 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h72d56da56688e677E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 1195311648271678871
^24 = gv: (name: "vtable.3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^205, ^34)))) ; guid = 1278889695496039352
^25 = gv: (name: "_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf515696ed8ee9622E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 46, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^163), (callee: ^169), (callee: ^379), (callee: ^380)), refs: (^317)))) ; guid = 1304815980274481995
^26 = gv: (name: "_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h3625e9acfcd73361E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^109))))) ; guid = 1321833133470793405
^27 = gv: (name: "_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcbe6a73dd25a5db8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^133), (callee: ^359))))) ; guid = 1387120421365618663
^28 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17h483cea7de0e5955aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^271), (callee: ^140), (callee: ^32))))) ; guid = 1430539076421449823
^29 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h81ac65abaf840e3cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 1464136236609215598
^30 = gv: (name: "_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h57bb12593a8943d8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 1494100331840909531
^31 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h60012adf376355a7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^267), (callee: ^288))))) ; guid = 1522377040340663320
^32 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^33 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h7bb1aac9843a7ac5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^204))))) ; guid = 1601623507525205660
^34 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h31291765fc9a96edE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 1605291678079005759
^35 = gv: (name: "alloc269", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1656366426804797484
^36 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hc99569d7298451a6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 1729014895308190763
^37 = gv: (name: "alloc315", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1763553370502394718
^38 = gv: (name: "alloc326", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1776733064013034039
^39 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h5c7105c8ba7d7a6eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 1817025263634322627
^40 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h1fa4d6998f6eaa83E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 1875202514824374221
^41 = gv: (name: "_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE") ; guid = 1902152299201211586
^42 = gv: (name: "_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E") ; guid = 1967081855160219432
^43 = gv: (name: "_ZN4core3fmt8builders9DebugList7entries17h469cee49dd7e73ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 55, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^70), (callee: ^269), (callee: ^381)), refs: (^317, ^284)))) ; guid = 2078944350885095123
^44 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb10e66dcff681c28E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 2182855003283176665
^45 = gv: (name: "_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h79374f2c195a237aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^42), (callee: ^118), (callee: ^252), (callee: ^21), (callee: ^377))))) ; guid = 2204894643578703219
^46 = gv: (name: "alloc258", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^61)))) ; guid = 2229782765683835417
^47 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hfc7f1b5eb1e124e2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^292), (callee: ^194), (callee: ^380)), refs: (^317)))) ; guid = 2290860027071662472
^48 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7f0e80adf70c1759E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^277), (callee: ^116))))) ; guid = 2335767343857182815
^49 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h3cdd14c03f7154ecE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^327), (callee: ^270), (callee: ^219), (callee: ^230), (callee: ^120)), refs: (^66)))) ; guid = 2350117464737226087
^50 = gv: (name: "_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h1d5b19a5571ace64E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 57, calls: ((callee: ^325))))) ; guid = 2395473782463060776
^51 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h43a3c110a9c9fb4dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 2486307191963736206
^52 = gv: (name: "alloc325", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2498702689983963896
^53 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^54 = gv: (name: "alloc324", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2646212126457924436
^55 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha0034ef4195c0ac5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^300))))) ; guid = 2679226731815978804
^56 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha898902322595a0fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 45))) ; guid = 2700891941165099605
^57 = gv: (name: "_ZN4core3ptr5write17hc09d2c6657b7bac7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 2762368414407073966
^58 = gv: (name: "_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h63847f6b42cdb916E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19))) ; guid = 2814475086150523083
^59 = gv: (name: "alloc280", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^126)))) ; guid = 2819846767657211966
^60 = gv: (name: "_ZN104_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hbf9f8a024429215dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 2919398883085561376
^61 = gv: (name: "alloc257", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3052832239665844686
^62 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hedaea62f55d7ac4cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 3054540279035160021
^63 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5469dd4d238b70e4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^231)), refs: (^317, ^154, ^367)))) ; guid = 3071643737500676175
^64 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h161b82c232bd05f9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^249), (callee: ^151))))) ; guid = 3083898520504853330
^65 = gv: (name: "alloc290", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^145)))) ; guid = 3112351215826883609
^66 = gv: (name: "alloc272", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^22)))) ; guid = 3145842092434514798
^67 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h2c81c675b2827f40E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 3154206523324682029
^68 = gv: (name: "_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h9feb63a589368fa0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^222))))) ; guid = 3168143791922793060
^69 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h7799fdd99f943260E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 3177061352237486711
^70 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h31a0582acfcad8f2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 3186224465501680561
^71 = gv: (name: "_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold2ok28_$u7b$$u7b$closure$u7d$$u7d$17h02dea64cf9b3c418E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^236))))) ; guid = 3202604123429733483
^72 = gv: (name: "_ZN5alloc5alloc7realloc17hc28cf3eebdcca2a4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^271), (callee: ^140), (callee: ^330))))) ; guid = 3230955610077804540
^73 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator7collect17hb7feb6f05382099eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^328))))) ; guid = 3337671388191772787
^74 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hf0763cbdc4339513E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 3339585718414628399
^75 = gv: (name: "_ZN4core3ptr54drop_in_place$LT$$u5b$zsplit..Zahl$u3b$$u20$1$u5d$$GT$17h88edbf5ed0c482adE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 72, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^82), (callee: ^380)), refs: (^317)))) ; guid = 3388954873584597297
^76 = gv: (name: "_ZN5alloc5alloc7dealloc17hdc7ab80b67c301dbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^271), (callee: ^140), (callee: ^97))))) ; guid = 3424375737690124370
^77 = gv: (name: "_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h5c54964ed438f3ceE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 3462306585190829869
^78 = gv: (name: "vtable.4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^353, ^125)))) ; guid = 3499350291187985273
^79 = gv: (name: "_ZN4core3cmp3Ord3min17h6c7d60e0d4c6ed76E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^132)), refs: (^317)))) ; guid = 3524203156415868561
^80 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h46c6d13c4b3e343bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 3608295025381655532
^81 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h744cd89d038f7553E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^229))))) ; guid = 3656791485354894186
^82 = gv: (name: "_ZN4core3ptr33drop_in_place$LT$zsplit..Zahl$GT$17h7b6482a395c381beE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^47))))) ; guid = 3681442513221528088
^83 = gv: (name: "_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h012f3c2198363008E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 3817072734578903488
^84 = gv: (name: "alloc282", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^126)))) ; guid = 3930541487173311163
^85 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53a7aa6ec9a9fda3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 3941279901722799289
^86 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4090728903125437045
^87 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h34dceb71239d457bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^198))))) ; guid = 4107176093907470671
^88 = gv: (name: "_ZN4core3mem4take17h1f323b0e537ce5e7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^7), (callee: ^339))))) ; guid = 4193040340897423106
^89 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17hfc296aa8bed9132cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^336))))) ; guid = 4207339305106037007
^90 = gv: (name: "_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h78555c4d7507bcacE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^42), (callee: ^118), (callee: ^254), (callee: ^289), (callee: ^263))))) ; guid = 4296366602392280421
^91 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h660c878ded5e3fe5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^290))))) ; guid = 4310745410985405411
^92 = gv: (name: "_ZN4core3ptr37drop_in_place$LT$$RF$zsplit..Zahl$GT$17h44940a2cb891bca7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 4446619762856943101
^93 = gv: (name: "_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha60917148257e0bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^50))))) ; guid = 4476866236719896311
^94 = gv: (name: "_ZN4core3ptr4read17h3b68ca94f739b34fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11))) ; guid = 4589284771264340788
^95 = gv: (name: "_ZN4core3ptr276drop_in_place$LT$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$17he5608dc2f14c9d13E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^68))))) ; guid = 4611073294243530045
^96 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h80f147d1c816050dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 38))) ; guid = 4612557688698104705
^97 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^98 = gv: (name: "alloc292", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^145)))) ; guid = 4706887721406987163
^99 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4955d160b93aa9e2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^102))))) ; guid = 4832507402574532818
^100 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hb501ff441e9a4cb2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 4919736730302516327
^101 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hcb7be2da89879a44E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^332))))) ; guid = 4919864840816699421
^102 = gv: (name: "_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd8096d353381782E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^6), (callee: ^225), (callee: ^43), (callee: ^179))))) ; guid = 4963506632823142420
^103 = gv: (name: "_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h9c553fc918069273E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7))) ; guid = 5036861160017654055
^104 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h27a87c9d0fd32a4aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^80))))) ; guid = 5062524774556344899
^105 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hebf16a817c37661cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^278), (callee: ^85))))) ; guid = 5063945641823889153
^106 = gv: (name: "_ZN4core3ptr5write17hc519e5ea72ea6d31E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 5099608002176959960
^107 = gv: (name: "_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check17h086aec6dc5df6e64E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 5149927225398751180
^108 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17hc7ea05045a8ba070E") ; guid = 5150825748678139413
^109 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4f0c53d053502ba6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 71, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^246), (callee: ^62), (callee: ^324), (callee: ^238), (callee: ^93), (callee: ^309), (callee: ^57), (callee: ^69)), refs: (^317)))) ; guid = 5344523835454749433
^110 = gv: (name: "alloc58", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5364216087877647853
^111 = gv: (name: "llvm.uadd.sat.i64") ; guid = 5383156187994607117
^112 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h821bae5828fc386dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 5412791429480728143
^113 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h7a775551d92dd437E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^80), (callee: ^208), (callee: ^175))))) ; guid = 5418843040685436894
^114 = gv: (name: "alloc311", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5441227440918060234
^115 = gv: (name: "_ZN4core3ops12control_flow77ControlFlow$LT$R$C$$LT$R$u20$as$u20$core..ops..try_trait..Try$GT$..Output$GT$8from_try17hf1368c8c1ac25322E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19, calls: ((callee: ^261), (callee: ^299)), refs: (^260)))) ; guid = 5442419709427121393
^116 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3e6419f6ef08f768E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^271), (callee: ^80), (callee: ^76))))) ; guid = 5487714340759591736
^117 = gv: (name: "alloc265", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5566190516813643185
^118 = gv: (name: "_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E") ; guid = 5691937269951177933
^119 = gv: (name: "_ZN4core3ptr26drop_in_place$LT$$u21$$GT$17ha0a1151098c9bda8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 5716483741228301357
^120 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h87453f85cc7e7381E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^67))))) ; guid = 5798613185341242378
^121 = gv: (name: "alloc297", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5831971142462868690
^122 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17ha74e0ec54e31ac19E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^1), (callee: ^283))))) ; guid = 5891168957809002044
^123 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17hf19a8905cd6bc4eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 5932672711441913571
^124 = gv: (name: "_ZN5alloc7raw_vec11finish_grow17h9c366f860dde8cd3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 117, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^361), (callee: ^44), (callee: ^271), (callee: ^320), (callee: ^207), (callee: ^56), (callee: ^363), (callee: ^140), (callee: ^213), (callee: ^3), (callee: ^142)), refs: (^216, ^272)))) ; guid = 5949852708997554908
^125 = gv: (name: "_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h90323c9f53b7f11aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 5977799292223268251
^126 = gv: (name: "alloc283", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6012336724202122876
^127 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17ha91d0e4c33bdae08E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 6091558702840439116
^128 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdce467b64c8c19aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^27))))) ; guid = 6109390619560437363
^129 = gv: (name: "llvm.trap") ; guid = 6116349651215144041
^130 = gv: (name: "_ZN4core3ptr523drop_in_place$LT$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h61a58041b4fc284cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^379))))) ; guid = 6116397616874389963
^131 = gv: (name: "_ZN5alloc3vec12Vec$LT$T$GT$3new17h26dfa702ae8789d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, refs: (^160)))) ; guid = 6180885429273691051
^132 = gv: (name: "_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17hd169bd8bd002eb98E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 6207855951292820451
^133 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h31b98ec06c9680e1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^31), (callee: ^161))))) ; guid = 6221499556401176546
^134 = gv: (name: "_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hbb838acb922593b8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^30), (callee: ^301))))) ; guid = 6270679963967496789
^135 = gv: (name: "_ZN53_$LT$zsplit..ZRandDev$u20$as$u20$core..fmt..Debug$GT$3fmt17hcae674169de61377E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, calls: ((callee: ^41)), refs: (^192, ^275, ^224, ^159, ^362, ^37, ^206)))) ; guid = 6277809696419729951
^136 = gv: (name: "_ZN4core3fmt10ArgumentV19new_debug17h3a36275136be5a95E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^14)), refs: (^291)))) ; guid = 6292729920046256422
^137 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h3d2cea47274db4cfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^74))))) ; guid = 6362602064660698897
^138 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^139 = gv: (name: "alloc267", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6429141805471112786
^140 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h8a955a6181edbc91E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^315), (callee: ^209))))) ; guid = 6441992165044293991
^141 = gv: (name: "_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h287a670c08603c37E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 28, calls: ((callee: ^103))))) ; guid = 6492409698232733892
^142 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h3bf12214aef72f46E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^245))))) ; guid = 6498167424067551617
^143 = gv: (name: "_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2372389e8ef92566E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^303), (callee: ^372), (callee: ^63)), refs: (^317, ^170)))) ; guid = 6540618782075255737
^144 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^145 = gv: (name: "alloc293", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6580278392581206877
^146 = gv: (name: "_ZN4core3ops12control_flow77ControlFlow$LT$R$C$$LT$R$u20$as$u20$core..ops..try_trait..Try$GT$..Output$GT$8into_try17he25a5c6787d57000E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^39))))) ; guid = 6635813630617904830
^147 = gv: (name: "_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha4f47b56209df92fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^240), (callee: ^88), (callee: ^211), (callee: ^58), (callee: ^77))))) ; guid = 6650365613343482335
^148 = gv: (name: "_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h0bc74dbfd8e12efdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^307), (callee: ^223))))) ; guid = 6654486931948327366
^149 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^150 = gv: (name: "_ZN54_$LT$zsplit..ZRandDist$u20$as$u20$core..fmt..Debug$GT$3fmt17h3faa635a2408b72cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^41)), refs: (^8, ^200, ^343)))) ; guid = 6840978737592248686
^151 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h6780361f98dd0978E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 7074478178857174933
^152 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h383767c43ba65629E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 7184641547996287993
^153 = gv: (name: "_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend28_$u7b$$u7b$closure$u7d$$u7d$17h57dcc112e9c50149E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^57), (callee: ^318))))) ; guid = 7268971159247946560
^154 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^119, ^334)))) ; guid = 7304812691843372707
^155 = gv: (name: "zrsh", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 78, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^133), (callee: ^87), (callee: ^329), (callee: ^214), (callee: ^73), (callee: ^47), (callee: ^380), (callee: ^11)), refs: (^317)))) ; guid = 7317479891385285055
^156 = gv: (name: "_ZN5alloc5alloc8box_free17h27481c26753073e2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^285), (callee: ^120), (callee: ^201), (callee: ^335), (callee: ^116)), refs: (^317)))) ; guid = 7320082960398675237
^157 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h893cda4354393c52E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 7360605238653443661
^158 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h16d3fad9f1c0a60eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 7416485669347763276
^159 = gv: (name: "alloc317", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7527754685335021396
^160 = gv: (name: "anon.15e61b2c0763512ba9bc017efa7f55f0.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7626652319605906610
^161 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17ha4079f2df1a12c1fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^177))))) ; guid = 7678359422847998128
^162 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h3512ac722ace8829E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^162), (callee: ^337)), refs: (^210, ^171, ^16)))) ; guid = 7696528351108734356
^163 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator3map17heea24cb00eee8d3fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^295))))) ; guid = 7737184163014525543
^164 = gv: (name: "_ZN4core3ptr51drop_in_place$LT$$RF$alloc..vec..Vec$LT$u64$GT$$GT$17hd9ab9b53f939db65E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 7741639425455534812
^165 = gv: (name: "_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17ha45a85ec9895bc3aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 99, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^246), (callee: ^131), (callee: ^93), (callee: ^11), (callee: ^319), (callee: ^238), (callee: ^47), (callee: ^57), (callee: ^69), (callee: ^26), (callee: ^380)), refs: (^317)))) ; guid = 7857842317111035298
^166 = gv: (name: "_ZN4core3ptr4read17h24b8b4f466c2ae02E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 7868910952782596264
^167 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hac0282dd976c6b5eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^183))))) ; guid = 7930552996532009766
^168 = gv: (name: "alloc255", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8036137480761800031
^169 = gv: (name: "_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf548cfa9756787aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^228), (callee: ^143)), refs: (^317)))) ; guid = 8044698829094889059
^170 = gv: (name: "alloc256", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^168)))) ; guid = 8118545041685953468
^171 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^86)))) ; guid = 8162333086812562463
^172 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h6ae86f6d2b2b4830E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 8326272020483304760
^173 = gv: (name: "_ZN5alloc5alloc5alloc17h9452868d8d29ce19E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^271), (callee: ^140), (callee: ^217))))) ; guid = 8405269142371211195
^174 = gv: (name: "alloc296", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^308)))) ; guid = 8465352945181410564
^175 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb3be51602405d080E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 8471307424054649784
^176 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h994da08879727150E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37))) ; guid = 8495754390852480101
^177 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17ha24ac78f1ce32f26E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^348), (callee: ^197))))) ; guid = 8682728221364709135
^178 = gv: (name: "_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop3new17h954f0bf94eb4f536E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 13))) ; guid = 8705766759723797395
^179 = gv: (name: "_ZN4core3fmt8builders9DebugList6finish17he9dcf78544f9bde4E") ; guid = 8728173401437660708
^180 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each4call17h1266a4aaf4fee92aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 8732055957060531515
^181 = gv: (name: "alloc56", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8809031910278561457
^182 = gv: (name: "_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17hd618e14970ab209dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 8826680093950434781
^183 = gv: (name: "_ZN49_$LT$zsplit..Zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe76f4c83e9234d6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19, calls: ((callee: ^306)), refs: (^9, ^243, ^203, ^78, ^250, ^24, ^258, ^121)))) ; guid = 8911477426632902065
^184 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h70759b4d0f097b35E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^127), (callee: ^302))))) ; guid = 8946849040532484210
^185 = gv: (name: "ztrunc", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 73, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^133), (callee: ^87), (callee: ^19), (callee: ^368), (callee: ^234), (callee: ^47), (callee: ^369), (callee: ^380)), refs: (^317)))) ; guid = 8985737863996627826
^186 = gv: (name: "alloc274", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^256)))) ; guid = 8989581021370751093
^187 = gv: (name: "_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hc480755d1ddf0d73E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^191), (callee: ^319), (callee: ^162), (callee: ^337), (callee: ^10), (callee: ^47), (callee: ^380)), refs: (^317, ^210, ^241, ^46)))) ; guid = 8995938062623629286
^188 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h3716a853fd67217dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 9051814863698776378
^189 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h21ab4e2ca90e951eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^196), (callee: ^112))))) ; guid = 9111853451165149586
^190 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h900847bd771edfe5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^91))))) ; guid = 9144189044813816731
^191 = gv: (name: "_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h6cf654bf3a65de81E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^262))))) ; guid = 9144518479454845101
^192 = gv: (name: "alloc320", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9148068072397835674
^193 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hfc28e01d52f99059E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^83))))) ; guid = 9161738332658112976
^194 = gv: (name: "_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h84bacd8cd513b5e2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^48))))) ; guid = 9298942347000167366
^195 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each17h318bf82c13eab465E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^180), (callee: ^25)), refs: (^317)))) ; guid = 9302779082404414727
^196 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hfb8688d8cb7bba05E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 9306850057872068932
^197 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h77a2b776cf4c66f5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 9366989393411897959
^198 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17hfca090cf041a2895E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42, calls: ((callee: ^305), (callee: ^189), (callee: ^157))))) ; guid = 9455407808005668849
^199 = gv: (name: "_ZN4core3cmp3Ord3max17h07d184f395b489bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^132)), refs: (^317)))) ; guid = 9483435022941903569
^200 = gv: (name: "alloc322", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9545338231868072858
^201 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hb86a212bfa8c0dfdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^281), (callee: ^151))))) ; guid = 9559962939126600235
^202 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h97a14620042e69d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^335))))) ; guid = 9577144083490315536
^203 = gv: (name: "alloc306", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9632340030579319129
^204 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf18effe6cf62a859E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9651566521943662112
^205 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc5528cf35d93d0d4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^90))))) ; guid = 9731391309730452678
^206 = gv: (name: "alloc314", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9784800468083299681
^207 = gv: (name: "_ZN5alloc7raw_vec11alloc_guard17hea2f78294fe48066E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 32, calls: ((callee: ^321))))) ; guid = 9844972863782130256
^208 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h6e78c31bc4cbf090E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^282))))) ; guid = 9868130993482783796
^209 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17hf0f6c6c8efcc1ab3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 9922141310478376590
^210 = gv: (name: "alloc44", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9955828958353427600
^211 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17hcc98479ac5d15b4aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 101, calls: ((callee: ^204), (callee: ^23), (callee: ^279), (callee: ^157))))) ; guid = 10043260587177274506
^212 = gv: (name: "_ZN5alloc5alloc15exchange_malloc17hf9a2429d1210e6abE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23, calls: ((callee: ^120), (callee: ^213), (callee: ^350), (callee: ^378)), refs: (^210)))) ; guid = 10080290910397892495
^213 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h219f24db84f4b9feE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^232))))) ; guid = 10154593982868629066
^214 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator6cloned17h11db68606f71a968E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^182))))) ; guid = 10178664621407940991
^215 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hcd05efba0a1013d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^244), (callee: ^204), (callee: ^323))))) ; guid = 10218491989802702213
^216 = gv: (name: "alloc286", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^145)))) ; guid = 10300687337666020692
^217 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^218 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hfdb3465a13a579f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 127, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^49), (callee: ^227), (callee: ^271), (callee: ^13), (callee: ^207), (callee: ^213), (callee: ^355), (callee: ^244), (callee: ^378), (callee: ^204), (callee: ^323)), refs: (^317)))) ; guid = 10307905863504000402
^219 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17heb2829426d762015E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 10339685954461733929
^220 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8try_fold17h91ff0420139633b2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 70, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^240), (callee: ^364), (callee: ^226), (callee: ^276), (callee: ^344), (callee: ^60), (callee: ^380)), refs: (^317)))) ; guid = 10356726799228527836
^221 = gv: (name: "_ZN5alloc5slice4hack8into_vec17ha8b89ded6e97c94aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 49, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^100), (callee: ^365), (callee: ^89), (callee: ^352), (callee: ^380)), refs: (^317)))) ; guid = 10362887671534699461
^222 = gv: (name: "_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17h68d4ddf0e655d1ecE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 10473698522643840035
^223 = gv: (name: "_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h92256c225685a361E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^187))))) ; guid = 10530454580786193757
^224 = gv: (name: "alloc318", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10542167274135521767
^225 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h0c82a793c37e9464E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^354))))) ; guid = 10567480765533319529
^226 = gv: (name: "_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17hc8cdd7f305499b1fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 10601488047514603490
^227 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17ha5ffbe0be6ce78e9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^122)), refs: (^317)))) ; guid = 10672736924644165859
^228 = gv: (name: "_ZN4core4iter8adapters3map8map_fold17h2f9dd53107f07953E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 10706246201506890967
^229 = gv: (name: "_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17hed14a658ca20ab30E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 10740563805541336123
^230 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha1b35b8bd8e5d97dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^273))))) ; guid = 10888661248542823087
^231 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^232 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17h1e0c8164ac526afdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^271), (callee: ^235), (callee: ^173), (callee: ^28), (callee: ^105), (callee: ^371), (callee: ^345), (callee: ^113), (callee: ^326)), refs: (^59)))) ; guid = 11062213985664314490
^233 = gv: (name: "_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h1bffc601b116c542E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^221))))) ; guid = 11068177882241970125
^234 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator7collect17hf1d5d8309b4a6f13E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^148))))) ; guid = 11121882678663360012
^235 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17h728a8d09088d6187E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^140), (callee: ^85))))) ; guid = 11164954339558998099
^236 = gv: (name: "_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he7e35ae8a10547c8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^322), (callee: ^338)), refs: (^317)))) ; guid = 11171263084388762729
^237 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h41477dc67242aa4cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^172), (callee: ^158))))) ; guid = 11302729866097650208
^238 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hd4078d7199a40fc8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^267), (callee: ^288))))) ; guid = 11370683103741599918
^239 = gv: (name: "_ZN4core4iter8adapters4skip13Skip$LT$I$GT$3new17h5da5446cf4b757adE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 11371961770213761665
^240 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8bfcda4c565c1612E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^204), (callee: ^288), (callee: ^189), (callee: ^157))))) ; guid = 11391274446058086420
^241 = gv: (name: "alloc42", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^349)))) ; guid = 11411138467564134218
^242 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h933d9e1b25cf2c77E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 11447265578558838824
^243 = gv: (name: "alloc307", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11469690518678481521
^244 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h14bc0d0a2805f119E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^251), (callee: ^157))))) ; guid = 11485643997482312411
^245 = gv: (name: "_ZN5alloc5alloc6Global9grow_impl17h35c61539b162a003E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 134, calls: ((callee: ^271), (callee: ^232), (callee: ^140), (callee: ^80), (callee: ^72), (callee: ^105), (callee: ^371), (callee: ^345), (callee: ^326), (callee: ^113), (callee: ^347), (callee: ^176), (callee: ^350), (callee: ^123), (callee: ^116)), refs: (^84, ^351)))) ; guid = 11490610862702902108
^246 = gv: (name: "_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h911111a2ab0b283eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^147), (callee: ^265))))) ; guid = 11491734613954913355
^247 = gv: (name: "alloc328", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11534345033824782966
^248 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h66e07d7d4ad872a5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^94), (callee: ^190), (callee: ^134), (callee: ^352), (callee: ^380)), refs: (^317)))) ; guid = 11592842750054544514
^249 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h0fc8e31b2eb45c8dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^204), (callee: ^85))))) ; guid = 11597395797724723982
^250 = gv: (name: "alloc302", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11604427948463393433
^251 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h67b55638a288d548E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 11701745528352651249
^252 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E") ; guid = 11743839634310749277
^253 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2a1bed8a124e6f17E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^17))))) ; guid = 11787725082115425259
^254 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h7a5e9cbb7827bfc6E") ; guid = 11841554529459563407
^255 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17he06ac9fe4fc8ed72E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^196), (callee: ^112))))) ; guid = 11873297379749570332
^256 = gv: (name: "alloc273", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11943254055090621733
^257 = gv: (name: "_ZN4core3ptr690drop_in_place$LT$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..fold..ok$LT$$LP$$RP$$C$$RF$u64$C$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h55af4b2fd3c32940E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^130))))) ; guid = 11959754089869448534
^258 = gv: (name: "alloc298", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12088589175360075645
^259 = gv: (name: "_ZN4core4iter8adapters4take13Take$LT$I$GT$3new17hcd00efc69fd570acE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 12091097827511848567
^260 = gv: (name: "alloc268", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^139)))) ; guid = 12135522418583379104
^261 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc37d209b1dd9d124E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15))) ; guid = 12151518537309259288
^262 = gv: (name: "_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd5b35b056e94d8f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 80, calls: ((callee: ^325), (callee: ^369))))) ; guid = 12164894638072892830
^263 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h73d7b5c940bc6831E") ; guid = 12218248418932013088
^264 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17ha3a3b7efa91e4491E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^152)), refs: (^317)))) ; guid = 12235332268891720476
^265 = gv: (name: "_ZN4core6option19Option$LT$$RF$T$GT$6cloned17h7546e8280d869bb0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 27, calls: ((callee: ^310))))) ; guid = 12338822539412480290
^266 = gv: (name: "alloc53", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^296, ^110)))) ; guid = 12435642622407473680
^267 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h78c7a8fd28aedf46E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^33))))) ; guid = 12445242796923710111
^268 = gv: (name: "alloc313", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12489037830433851695
^269 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e2b9fab61f5879fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 59, calls: ((callee: ^294), (callee: ^237), (callee: ^255), (callee: ^340))))) ; guid = 12500007151721980246
^270 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h3e952d592fdd1174E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 12516414912209214509
^271 = gv: (name: "_ZN4core5alloc6layout6Layout4size17hebef6cd70258f694E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 12542266604546453908
^272 = gv: (name: "alloc288", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^145)))) ; guid = 12564672858737164412
^273 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h74f0f971219ba2efE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 12601705421256268817
^274 = gv: (name: "alloc270", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^35)))) ; guid = 12604988183619571608
^275 = gv: (name: "alloc319", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12670433650168079959
^276 = gv: (name: "_ZN4core3ptr911drop_in_place$LT$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..try_fold..check$LT$$RF$u64$C$$LP$$RP$$C$core..result..Result$LT$$LP$$RP$$C$$u21$$GT$$C$$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$..fold..ok$LT$$LP$$RP$$C$$RF$u64$C$core..iter..adapters..map..map_fold$LT$$RF$u64$C$u64$C$$LP$$RP$$C$$LT$u64$u20$as$u20$core..clone..Clone$GT$..clone$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h630b6d5ae0976c5eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^257))))) ; guid = 12712859653928306562
^277 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2722eccb00f2cb94E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^49), (callee: ^264), (callee: ^64), (callee: ^202)), refs: (^65)))) ; guid = 12714772309653960341
^278 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h43216c3ea5f6dab3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^172), (callee: ^158))))) ; guid = 12773717248407142740
^279 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17he602ad026dff0b67E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 12864600619936009214
^280 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17haad3cb6efb015561E") ; guid = 12869305254914276560
^281 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h50552a7d83dcbd6dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^290), (callee: ^85))))) ; guid = 12877065695743743751
^282 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h05ae5503d4bae01cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 12915268067678847012
^283 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h128129938da584f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 12980449550348832486
^284 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^167, ^92)))) ; guid = 12997626104384346467
^285 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h3c4fd742c015b210E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^314))))) ; guid = 13042141389126232916
^286 = gv: (name: "zsplit", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^374), (callee: ^155), (callee: ^185))))) ; guid = 13045663909046670679
^287 = gv: (name: "llvm.usub.sat.i64") ; guid = 13088003025832766253
^288 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f412e52e571fdf9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^172), (callee: ^158))))) ; guid = 13232025371919272526
^289 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^290 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha205466c8f29acfbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 13301610335245890235
^291 = gv: (name: "_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h9a11a348d6ce5c66E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^376), (callee: ^99)), refs: (^186)))) ; guid = 13382033969110687817
^292 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h253113ac553262ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^238), (callee: ^137))))) ; guid = 13401886809719539743
^293 = gv: (name: "_ZN5alloc11collections15TryReserveError4kind17hccf2de0413f0b50cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^141))))) ; guid = 13613086968392498050
^294 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17haff093aa21d78f16E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 13761065155350841152
^295 = gv: (name: "_ZN4core4iter8adapters3map16Map$LT$I$C$F$GT$3new17hf97a2aa2c2606c6fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 13767279728142413605
^296 = gv: (name: "alloc52", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13789493499214737000
^297 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$u64$GT$17h0932de45a91aad53E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13811802891889636876
^298 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h61fde5b5ea3eed79E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34))) ; guid = 13859180459618189794
^299 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h13ceecfa4e584455E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^36))))) ; guid = 13859576970535815256
^300 = gv: (name: "_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h2d6806402f454f7bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^42), (callee: ^118), (callee: ^280), (callee: ^2), (callee: ^108))))) ; guid = 13899259497354544536
^301 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h5a17666102876953E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 14043060760852861236
^302 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17he8d83679e4863ef7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^304), (callee: ^357))))) ; guid = 14080518431811370080
^303 = gv: (name: "_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold2ok17h2f636bc1b3f05b64E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 14081115054539646832
^304 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h243c84d357169671E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 114, calls: ((callee: ^321), (callee: ^40), (callee: ^298), (callee: ^96), (callee: ^11), (callee: ^81), (callee: ^49), (callee: ^277), (callee: ^124), (callee: ^346), (callee: ^215), (callee: ^331)), refs: (^98, ^313)))) ; guid = 14090146789771410235
^305 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h93cda6147a936b4cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 14129795323635809021
^306 = gv: (name: "_ZN4core3fmt9Formatter26debug_struct_field4_finish17h67d131540e48a232E") ; guid = 14138163795757000930
^307 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h767ea3b60afa14e8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 14147649051648709864
^308 = gv: (name: "alloc295", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14150252591013248484
^309 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6124c69c46db47faE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^184))))) ; guid = 14158178913017960749
^310 = gv: (name: "_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17hc6ae516cab94290eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 14235603215096332641
^311 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hae4943e12b446151E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 14263389441626058235
^312 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^313 = gv: (name: "alloc294", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^145)))) ; guid = 14370232048951903279
^314 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4ef8e7472d859113E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^290))))) ; guid = 14427504849722277755
^315 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h7b7840d878c028b2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^188))))) ; guid = 14483270863693280573
^316 = gv: (name: "_ZN4core3fmt8builders9DebugList7entries17hc6f9581afc09031aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^29), (callee: ^240), (callee: ^381)), refs: (^317, ^358)))) ; guid = 14771369262277501618
^317 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^318 = gv: (name: "_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17hda85c525226a49baE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 14933161708827473205
^319 = gv: (name: "_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h2b55fc26c9cca72fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^101))))) ; guid = 15032419212349744600
^320 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h20bab85a060ed5a6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^229))))) ; guid = 15040735012707895699
^321 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h15d89d11c1c5fd37E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^229))))) ; guid = 15079133910312884428
^322 = gv: (name: "_ZN4core3ops8function5FnMut8call_mut17ha5a9dc1a98b36e76E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^310))))) ; guid = 15169296429409614890
^323 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h19fcd77e99464e09E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^157))))) ; guid = 15205186668656192060
^324 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$8capacity17hd7c68e9e92d63213E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 15205472499692680560
^325 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5ec984150d170edfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^204), (callee: ^23), (callee: ^279))))) ; guid = 15223078234221097821
^326 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha5997f31f47b7284E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^311))))) ; guid = 15261181815177066640
^327 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h056ca4435e853029E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 15387428322943598951
^328 = gv: (name: "_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h078024423fc7585bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^242), (callee: ^18))))) ; guid = 15467422767024238714
^329 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator4skip17h64b4e41bf47290d6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^239))))) ; guid = 15490714660255125670
^330 = gv: (name: "__rust_realloc") ; guid = 15507136812573830794
^331 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h2c47c1a400505aaeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^51))))) ; guid = 15596896328708451638
^332 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17hb2e1fa1ccb4b54aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^218))))) ; guid = 15604546257032145050
^333 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 141, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^212), (callee: ^233), (callee: ^131), (callee: ^75), (callee: ^286), (callee: ^136), (callee: ^162), (callee: ^370), (callee: ^380)), refs: (^317, ^266, ^356)))) ; guid = 15822663052811949562
^334 = gv: (name: "_ZN42_$LT$$u21$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c56391924ef3308E") ; guid = 15890626401552577404
^335 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17he92a8fecc843b228E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^104), (callee: ^85))))) ; guid = 15898838017161684276
^336 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17h7a63a07b7be1a939E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^323)), refs: (^317)))) ; guid = 15975793221182992284
^337 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^338 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h18a2eae4cffb0084E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^153))))) ; guid = 16205017561913408767
^339 = gv: (name: "_ZN4core3mem7replace17h75fb312fdf8322d1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^166), (callee: ^106)), refs: (^317)))) ; guid = 16333620961710836374
^340 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9c6a7d03ba79d3a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 16456976405050905786
^341 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h49f09240d01c5f31E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 16463268013183159793
^342 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h2380951e45c33c8dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^321))))) ; guid = 16465614338358645222
^343 = gv: (name: "alloc321", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16482228607801894825
^344 = gv: (name: "_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h33950bc799d1b117E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22))) ; guid = 16548120322802388714
^345 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha254446d4c99fecdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 16611598636437147198
^346 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2575a5e7027e121cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 16630847482576100838
^347 = gv: (name: "_ZN4core10intrinsics11write_bytes17hb7306998044e86acE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 16658624625500618723
^348 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h8c365ca43cff1564E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 16712298128010211751
^349 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16740980819603572066
^350 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h78180e64c974d012E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^4), (callee: ^80))))) ; guid = 16775011200066163925
^351 = gv: (name: "alloc284", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^126)))) ; guid = 16775174507621329872
^352 = gv: (name: "_ZN4core3ptr59drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u64$u5d$$GT$$GT$17h83b20e621bf6cb3bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^156), (callee: ^380)), refs: (^317)))) ; guid = 16780887790100855193
^353 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fe3e731a6d983ffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^45))))) ; guid = 16943920538811706410
^354 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h6e6f1b0a5391c48aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^360), (callee: ^255), (callee: ^340))))) ; guid = 16977442589523039620
^355 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h51e3c2ef2f575ff2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^232))))) ; guid = 17014637770186983519
^356 = gv: (name: "alloc57", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^110, ^181)))) ; guid = 17080348079021553518
^357 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve17h0a7610ea7f275d84E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 25, calls: ((callee: ^253), (callee: ^13), (callee: ^378))))) ; guid = 17100902746305767890
^358 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55, ^297)))) ; guid = 17191670981739882693
^359 = gv: (name: "_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb9652f4a79026620E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^6), (callee: ^87), (callee: ^316), (callee: ^179))))) ; guid = 17229952937848321173
^360 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h1bb6cca83da7148dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 17248972853690276231
^361 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hfcd36006c7adfa3dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^341))))) ; guid = 17336541502420714252
^362 = gv: (name: "alloc316", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17372824048949707462
^363 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h38493a579493138eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^51))))) ; guid = 17403979838745963654
^364 = gv: (name: "_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hf9a0ee6667ce5429E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, calls: ((callee: ^71), (callee: ^115))))) ; guid = 17424819841925410481
^365 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h41e1d6ae4b2d80d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^248), (callee: ^91)), refs: (^317)))) ; guid = 17496671897895086074
^366 = gv: (name: "_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17he6691013ad592a0cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 17543484726288684915
^367 = gv: (name: "alloc275", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17618362406915331620
^368 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator6cloned17h2df03384f168b4e7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^366))))) ; guid = 17626880678586094692
^369 = gv: (name: "_ZN4core3cmp3min17h5637c03299128896E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^79))))) ; guid = 17709107003545714519
^370 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^371 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17ha9450c3de9f5ec38E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 17831462278023135315
^372 = gv: (name: "_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h79e1537596d9bcd7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 64, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^39), (callee: ^107), (callee: ^220), (callee: ^146), (callee: ^257), (callee: ^380)), refs: (^317)))) ; guid = 17861555496682589101
^373 = gv: (name: "alloc312", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17887821350957941068
^374 = gv: (name: "_ZN4core3ptr2eq17hd967dd9df753bf8eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 17891261078098642395
^375 = gv: (name: "_ZN55_$LT$zsplit..ZPrimality$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a55dc33187e9e4aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^41)), refs: (^268, ^373, ^114)))) ; guid = 18012804859345032899
^376 = gv: (name: "_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17hd4b7124cd09ee63bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^193))))) ; guid = 18058130052617519843
^377 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE") ; guid = 18145797040138870230
^378 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^379 = gv: (name: "_ZN4core3ptr373drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..take..Take$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7ed71c951861ec59E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^95))))) ; guid = 18368869816643386453
^380 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^381 = gv: (name: "_ZN4core3fmt8builders9DebugList5entry17h0383dd2350e753d0E") ; guid = 18441761400065173173
^382 = blockcount: 1324
