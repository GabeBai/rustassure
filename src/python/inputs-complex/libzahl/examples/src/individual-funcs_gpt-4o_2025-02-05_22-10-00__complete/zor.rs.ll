; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zor.rs.bc'
source_filename = "zor.32fcda74-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u64]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i64]*, i64 }* }
%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u64]>>::get_unchecked_mut::{closure#0}]" = type { i64*, i64*, { [0 x i64]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err" = type { [1 x i64], { i64, i64 } }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"alloc::vec::Vec<u64>" = type { { i64*, i64 }, i64 }
%"core::fmt::builders::DebugList" = type { %"core::fmt::builders::DebugInner" }
%"core::fmt::builders::DebugInner" = type { %"core::fmt::Formatter"*, i8, i8, [6 x i8] }
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"[closure@core::intrinsics::copy_nonoverlapping<u64>::{closure#0}]" = type { i64**, i64**, i64* }
%Zahl = type <{ i32, i64, i64, %"alloc::vec::Vec<u64>" }>
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u64]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok" = type { {} }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok" = type { [1 x i64], { i8*, i64 } }
%"[closure@<u64 as alloc::vec::is_zero::IsZero>::is_zero::{closure#0}]" = type {}
%"alloc::alloc::Global" = type {}
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
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue" = type { {} }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr28drop_in_place$LT$$RF$u64$GT$17hc7ba76ef07fced44E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4eb2114633d1eaa7E" to i8*) }>, align 8
@alloc96 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc97 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc96, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc61 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc187 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc188 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc187, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc189 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc190 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc189, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc191 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc192 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc191, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc193 = private unnamed_addr constant <{ [83 x i8] }> <{ [83 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/vec/partial_eq.rs" }>, align 1
@alloc194 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\00\17\00\00\00\01\00\00\00" }>, align 8
@alloc199 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc196 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc199, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc198 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc199, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\D2\00\00\00\1B\00\00\00" }>, align 8
@alloc200 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc199, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\DF\00\00\00\1F\00\00\00" }>, align 8
@alloc209 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc202 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\C9\01\00\00\16\00\00\00" }>, align 8
@alloc204 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\CB\01\00\00\05\00\00\00" }>, align 8
@alloc206 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc208 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\86\01\00\00\1C\00\00\00" }>, align 8
@alloc210 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\90\01\00\00\13\00\00\00" }>, align 8
@alloc259 = private unnamed_addr constant <{ [77 x i8] }> <{ [77 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zor.rs" }>, align 1
@alloc212 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00Y\00\00\00\1A\00\00\00" }>, align 8
@alloc214 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00Y\00\00\00'\00\00\00" }>, align 8
@alloc216 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00Y\00\00\00\0D\00\00\00" }>, align 8
@alloc218 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00\\\00\00\00\0D\00\00\00" }>, align 8
@alloc220 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00\\\00\00\00,\00\00\00" }>, align 8
@alloc222 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00\\\00\00\00\1B\00\00\00" }>, align 8
@alloc224 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00`\00\00\00\1A\00\00\00" }>, align 8
@alloc226 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00`\00\00\00'\00\00\00" }>, align 8
@alloc228 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00`\00\00\00\0D\00\00\00" }>, align 8
@alloc230 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00c\00\00\00\0D\00\00\00" }>, align 8
@alloc232 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00c\00\00\00,\00\00\00" }>, align 8
@alloc234 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00c\00\00\00\1B\00\00\00" }>, align 8
@alloc236 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00g\00\00\00\1A\00\00\00" }>, align 8
@alloc238 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00g\00\00\00'\00\00\00" }>, align 8
@alloc240 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00g\00\00\00\0D\00\00\00" }>, align 8
@alloc242 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00i\00\00\00\09\00\00\00" }>, align 8
@alloc244 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00i\00\00\00(\00\00\00" }>, align 8
@alloc246 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00i\00\00\00\17\00\00\00" }>, align 8
@alloc248 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00l\00\00\00\1A\00\00\00" }>, align 8
@alloc250 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00l\00\00\00'\00\00\00" }>, align 8
@alloc252 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00l\00\00\00\0D\00\00\00" }>, align 8
@alloc254 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00n\00\00\00\09\00\00\00" }>, align 8
@alloc256 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00n\00\00\00(\00\00\00" }>, align 8
@alloc258 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00n\00\00\00\17\00\00\00" }>, align 8
@alloc260 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc259, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00r\00\00\00\11\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc63 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc62 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc61 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc63, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc261 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Zahl" }>, align 1
@alloc262 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"sign" }>, align 1
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i32**)* @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17he222b51159c9e281E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i32**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf89b4ca3f7097b34E" to i8*) }>, align 8
@alloc266 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"used" }>, align 1
@vtable.3 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h045e444680c901b5E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdf203489a06b0168E" to i8*) }>, align 8
@alloc270 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"alloced" }>, align 1
@alloc271 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"chars" }>, align 1
@vtable.4 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%"alloc::vec::Vec<u64>"**)* @"_ZN4core3ptr51drop_in_place$LT$$RF$alloc..vec..Vec$LT$u64$GT$$GT$17ha92eab89b1f9f852E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (%"alloc::vec::Vec<u64>"**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h790fe9d8ffcefb2fE" to i8*) }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h70d5a9b4abedcd43E"(i64 %self.0, i64 %self.1, [0 x i64]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u64]>>::get_unchecked::{closure#0}]", align 8
  %_5 = call i64* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h1637a3ed9d7ae4d9E"([0 x i64]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i64, i64* %_5, i64 %self.0
  store i64* %1, i64** %0, align 8
  %2 = load i64*, i64** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hecce061d4adf3606E(i64* %2, i64 %_8)
  %4 = extractvalue { [0 x i64]*, i64 } %3, 0
  %5 = extractvalue { [0 x i64]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %4, 0
  %7 = insertvalue { [0 x i64]*, i64 } %6, i64 %5, 1
  ret { [0 x i64]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb3baeed703b50edaE"(i64 %self.0, i64 %self.1, [0 x i64]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u64]>>::get_unchecked_mut::{closure#0}]", align 8
  %1 = bitcast [0 x i64]* %slice.0 to i64*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds i64, i64* %1, i64 %self.0
  store i64* %2, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h296871ce0e0f94d3E(i64* %_3.i, i64 %_8)
  %4 = extractvalue { [0 x i64]*, i64 } %3, 0
  %5 = extractvalue { [0 x i64]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %4, 0
  %7 = insertvalue { [0 x i64]*, i64 } %6, i64 %5, 1
  ret { [0 x i64]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h62e259019c7d3256E"(i64 %self.0, i64 %self.1, [0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ugt i64 %self.0, %self.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) #15
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i64]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h70d5a9b4abedcd43E"(i64 %self.0, i64 %self.1, [0 x i64]* %slice.0, i64 %slice.1)
  %_17.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_17.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #15
  unreachable

bb5:                                              ; preds = %bb4
  %2 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_17.0, 0
  %3 = insertvalue { [0 x i64]*, i64 } %2, i64 %_17.1, 1
  ret { [0 x i64]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2458bfbee117db07E"(i64 %self.0, i64 %self.1, [0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = icmp ugt i64 %self.0, %self.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_10 = icmp ugt i64 %self.1, %slice.1
  br i1 %_10, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) #15
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i64]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb3baeed703b50edaE"(i64 %self.0, i64 %self.1, [0 x i64]* %slice.0, i64 %slice.1)
  %_20.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_20.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #15
  unreachable

bb5:                                              ; preds = %bb4
  %2 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_20.0, 0
  %3 = insertvalue { [0 x i64]*, i64 } %2, i64 %_20.1, 1
  ret { [0 x i64]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hf75cac612969e683E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd1d88053fa41a48cE"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdecdaa56ba718e69E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h4c41c656e3b34eefE"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h627051b8f8e0b186E"(i64* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %pointer, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h5cd783dbce492aecE"(i64 %kind.0, i64 %kind.1) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %kind.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %kind.1, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3bbdb008729f39d1E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h96ddfc209ed515e2E"()
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
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h50b6d17bee33bff1E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17he483437394ab2f09E"()
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
  %9 = load i64, i64* %8, align 8, !range !2, !noundef !1
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11
}

; Function Attrs: inlinehint uwtable
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9a86d56b10145797E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h5cd783dbce492aecE"(i64 %e.0, i64 %e.1)
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
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hb35caad2a39192dcE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h118cedde41f03d96E"(i64 %e.0, i64 %e.1)
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
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd793ff92b44e7f89E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
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
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h5cd783dbce492aecE"(i64 %e.0, i64 %e.1)
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
  %14 = load i64, i64* %13, align 8, !range !3, !noundef !1
  %15 = insertvalue { i64, i64 } undef, i64 %12, 0
  %16 = insertvalue { i64, i64 } %15, i64 %14, 1
  ret { i64, i64 } %16
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hf730cc67c9115516E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
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
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h118cedde41f03d96E"(i64 %e.0, i64 %e.1)
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
  %14 = load i64, i64* %13, align 8, !range !3, !noundef !1
  %15 = insertvalue { i64, i64 } undef, i64 %12, 0
  %16 = insertvalue { i64, i64 } %15, i64 %14, 1
  ret { i64, i64 } %16
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4eb2114633d1eaa7E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %self, align 8, !nonnull !1, !align !4, !noundef !1
  %0 = call zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hb7bc7fefac332e62E"(i64* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h790fe9d8ffcefb2fE"(%"alloc::vec::Vec<u64>"** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load %"alloc::vec::Vec<u64>"*, %"alloc::vec::Vec<u64>"** %self, align 8, !nonnull !1, !align !4, !noundef !1
  %0 = call zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hc0a78b99ac3a210dE"(%"alloc::vec::Vec<u64>"* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdf203489a06b0168E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %self, align 8, !nonnull !1, !align !4, !noundef !1
  %0 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h1d4b25bf81635ee4E"(i64* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf89b4ca3f7097b34E"(i32** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i32*, i32** %self, align 8, !nonnull !1, !align !5, !noundef !1
  %0 = call zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h3adfbeb35dd743b0E"(i32* align 4 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h2817f81ef4d4311aE"([0 x i64]* align 8 %self.0, i64 %self.1, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = alloca %"core::fmt::builders::DebugList", align 8
  call void @_ZN4core3fmt9Formatter10debug_list17h9950a42986e53ae1E(%"core::fmt::builders::DebugList"* sret(%"core::fmt::builders::DebugList") %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1509f39d29d855acE"([0 x i64]* align 8 %self.0, i64 %self.1)
  %_8.0 = extractvalue { i64*, i64* } %0, 0
  %_8.1 = extractvalue { i64*, i64* } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = call align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17hf6c9ff00596de870E(%"core::fmt::builders::DebugList"* align 8 %_6, i64* %_8.0, i64* %_8.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %1 = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17he9dcf78544f9bde4E(%"core::fmt::builders::DebugList"* align 8 %_4)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h03da988fa910d80eE"(i64 %start1, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = add nuw i64 %start1, %n
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics11write_bytes17h28a2a389e824f8e8E(i8* %dst, i8 %val, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 1, %count
  call void @llvm.memset.p0i8.i64(i8* align 1 %dst, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17h4bc7ce1013250896E(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17hfdbf43b80292a54bE(i64* %src, i64* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u64>::{closure#0}]", align 8
  %0 = mul i64 %count, 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3Ord3max17h120de97d515b3016E(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h48b9f44e5e3efcb4E"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !6

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
  %_7 = load i8, i8* %_3, align 1, !range !6, !noundef !1
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !7, !noundef !1
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
  %14 = load i8, i8* %_8, align 1, !range !7, !noundef !1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !7, !noundef !1
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
define i64 @_ZN4core3cmp3Ord3min17h69981f92f303cbfaE(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h48b9f44e5e3efcb4E"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !6

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
  %_7 = load i8, i8* %_3, align 1, !range !6, !noundef !1
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !7, !noundef !1
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
  %14 = load i8, i8* %_8, align 1, !range !7, !noundef !1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !7, !noundef !1
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
define i64 @_ZN4core3cmp3max17h44313903260c6a53E(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3cmp3Ord3max17h120de97d515b3016E(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3min17hd6639f6d44a3f92dE(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3cmp3Ord3min17h69981f92f303cbfaE(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h48b9f44e5e3efcb4E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
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
  %1 = load i8, i8* %0, align 1, !range !6, !noundef !1
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
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h620d3c59345dbfa1E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls77_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$mut$u20$A$GT$2eq17h402514c62cd44ffaE"(%Zahl** align 8 %self, %Zahl** align 8 %other) unnamed_addr #0 {
start:
  %_5 = load %Zahl*, %Zahl** %self, align 8, !nonnull !1, !align !8, !noundef !1
  %_6 = load %Zahl*, %Zahl** %other, align 8, !nonnull !1, !align !8, !noundef !1
  %0 = call zeroext i1 @eq(%Zahl* align 1 %_5, %Zahl* align 1 %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls77_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$mut$u20$A$GT$2ne17he77b6c362d33a307E"(%Zahl** align 8 %self, %Zahl** align 8 %other) unnamed_addr #0 {
start:
  %_5 = load %Zahl*, %Zahl** %self, align 8, !nonnull !1, !align !8, !noundef !1
  %_6 = load %Zahl*, %Zahl** %other, align 8, !nonnull !1, !align !8, !noundef !1
  %0 = call zeroext i1 @_ZN4core3cmp9PartialEq2ne17h82c544f9d1a9cd60E(%Zahl* align 1 %_5, %Zahl* align 1 %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @_ZN4core3cmp9PartialEq2ne17h82c544f9d1a9cd60E(%Zahl* align 1 %self, %Zahl* align 1 %other) unnamed_addr #0 {
start:
  %_3 = call zeroext i1 @eq(%Zahl* align 1 %self, %Zahl* align 1 %other)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_3, true
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h5f02bd0ed792648aE(%Zahl* align 1 %x, i1 (%Zahl*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (%Zahl*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %Zahl* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !8, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !8, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17h9f3aef7f2e257a53E(%Zahl* align 1 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h5f02bd0ed792648aE(%Zahl* align 1 %x, i1 (%Zahl*, %"core::fmt::Formatter"*)* @"_ZN46_$LT$zor..Zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d2bde8e807aa318E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h3adfbeb35dd743b0E"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
  %3 = load i8, i8* %0, align 1, !range !7, !noundef !1
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
define internal zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hb7bc7fefac332e62E"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
  %3 = load i8, i8* %0, align 1, !range !7, !noundef !1
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
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h1d4b25bf81635ee4E"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
  %3 = load i8, i8* %0, align 1, !range !7, !noundef !1
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
define align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17hf6c9ff00596de870E(%"core::fmt::builders::DebugList"* align 8 %self, i64* %entries.0, i64* %entries.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %entry = alloca i64*, align 8
  %_7 = alloca i64*, align 8
  %iter = alloca { i64*, i64* }, align 8
  %1 = call { i64*, i64* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2e2ae46617884713E"(i64* %entries.0, i64* %entries.1)
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
  %4 = invoke align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60587e97f667defaE"({ i64*, i64* }* align 8 %iter)
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
  %13 = load i64*, i64** %_7, align 8, !nonnull !1, !align !4, !noundef !1
  store i64* %13, i64** %entry, align 8
  %_14.0 = bitcast i64** %entry to {}*
  %_12 = invoke align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList5entry17h0383dd2350e753d0E(%"core::fmt::builders::DebugList"* align 8 %self, {}* align 1 %_14.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*))
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
define internal void @_ZN4core3fmt9Arguments6new_v117h8c291c64078786a1E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !7, !noundef !1
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
  call void @_ZN4core3fmt9Arguments6new_v117h8c291c64078786a1E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc97 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc61 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc188 to %"core::panic::location::Location"*)) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem11size_of_val17he5842cc26c350a42E([0 x i64]* align 8 %val.0, i64 %val.1) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = mul nsw i64 %val.1, 8
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h164c15f688785081E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !9, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hb2615fd507592c38E(i64 %_3), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h8bf5039385445b5fE(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !9, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17ha7d69cd4af2f2e70E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h1ad816d8f0f5a6c1E(i64* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !7, !noundef !1
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
  invoke void @_ZN4core3ptr5write17hcaf7d082d308e6c5E(i64* %dest, i64 %src)
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
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h86a43d914affc73fE"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %12 = load i8, i8* %11, align 8, !range !7, !noundef !1
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !7, !noundef !1
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
  %27 = load i8, i8* %2, align 1, !range !7, !noundef !1
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
  %32 = load i64, i64* %31, align 8, !range !11, !noundef !1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h4ab65048e4d9d2deE"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %12 = load i8, i8* %11, align 8, !range !7, !noundef !1
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !7, !noundef !1
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
  %27 = load i8, i8* %2, align 1, !range !7, !noundef !1
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
  %32 = load i64, i64* %31, align 8, !range !11, !noundef !1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hb2615fd507592c38E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !10, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hb6574d08f3162923E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hecce061d4adf3606E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hb2896d3fe0987a82E"(i64* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hc7840662c754ac13E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i64]*, i64 } %0, 0
  %2 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %1, 0
  %4 = insertvalue { [0 x i64]*, i64 } %3, i64 %2, 1
  ret { [0 x i64]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h296871ce0e0f94d3E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i64* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h296cf19cc81cbd6fE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hd3806f152ca829b4E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hdb664b275c5afa94E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17he222b51159c9e281E"(i32** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$u64$GT$17hc7ba76ef07fced44E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h045e444680c901b5E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr30drop_in_place$LT$zor..Zahl$GT$17he75bae6729d2555bE"(%Zahl* %_1) unnamed_addr #1 {
start:
  %_3 = alloca %"alloc::vec::Vec<u64>", align 8
  %_2 = alloca %"alloc::vec::Vec<u64>", align 8
  %0 = getelementptr inbounds %Zahl, %Zahl* %_1, i32 0, i32 3
  %1 = bitcast %"alloc::vec::Vec<u64>"* %_3 to i8*
  %2 = bitcast %"alloc::vec::Vec<u64>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 1 %2, i64 24, i1 false)
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17he56685132b9757d5E"(%"alloc::vec::Vec<u64>"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17he56685132b9757d5E"(%"alloc::vec::Vec<u64>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef3dee8ea2cc36ecE"(%"alloc::vec::Vec<u64>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u64>"* %_1 to { i64*, i64 }*
  invoke void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h89abff9784645b3fE"({ i64*, i64 }* %1) #16
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
  call void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h89abff9784645b3fE"({ i64*, i64 }* %7)
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
define i64 @_ZN4core3ptr4read17h1ad816d8f0f5a6c1E(i64* %src) unnamed_addr #0 {
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
define internal void @"_ZN4core3ptr51drop_in_place$LT$$RF$alloc..vec..Vec$LT$u64$GT$$GT$17ha92eab89b1f9f852E"(%"alloc::vec::Vec<u64>"** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h89abff9784645b3fE"({ i64*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ec2789c27ebbb13E"({ i64*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h822d25deede14e61E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hcaf7d082d308e6c5E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hcd143511bae9b4bdE"({ i64*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha154a5567c66685cE"({ i64*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hf5af1aeec53cdf89E"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %_2 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1696b7d0e8fb946eE"(i64* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i64* %_2, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5104c6904e16e5aaE"(i64* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17haf57f95fedda1a10E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h4c41c656e3b34eefE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd1916029b381a2d0E"(i64* %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9cc98e7b4a6a9ed8E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd1d88053fa41a48cE"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha363ca6e08a5ec7dE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h678a5b8ee8bdbe41E"() unnamed_addr #0 {
start:
  %_1 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h698fcdde9ac10f0fE"()
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i64* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h627051b8f8e0b186E"(i64* %_1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h48ab981f968800b3E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !7, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hc9a148887cceb263E"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hea80b0076ac65751E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h48ab981f968800b3E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he2061836f7c0c1a4E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hea80b0076ac65751E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h48ab981f968800b3E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17h54d741883f378970E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hc7840662c754ac13E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h296cf19cc81cbd6fE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hdb664b275c5afa94E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hea80b0076ac65751E({}* %data_address) unnamed_addr #0 {
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
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1696b7d0e8fb946eE"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %ptr, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hccc4071f7470c347E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdecdaa56ba718e69E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h65863f0d3e40ae60E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he2061836f7c0c1a4E"(i8* %ptr)
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
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdecdaa56ba718e69E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h37cf5dc7256a4938E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he58992e6ffd3f195E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i64*
  %1 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1696b7d0e8fb946eE"(i64* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17haf57f95fedda1a10E"(i64* %self) unnamed_addr #0 {
start:
  %_3 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9cc98e7b4a6a9ed8E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast i64* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdecdaa56ba718e69E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9cc98e7b4a6a9ed8E"(i64* %self) unnamed_addr #0 {
start:
  ret i64* %self
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha363ca6e08a5ec7dE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he58992e6ffd3f195E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h698fcdde9ac10f0fE"() unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i64** %0 to i64*
  store i64 8, i64* %1, align 8
  %2 = load i64*, i64** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1696b7d0e8fb946eE"(i64* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hde86bf2473f57126E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hd085453daf223edaE"(i8* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha363ca6e08a5ec7dE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hd085453daf223edaE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he58992e6ffd3f195E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdecdaa56ba718e69E"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17ha503b05c1c545c6fE"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha363ca6e08a5ec7dE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hd3806f152ca829b4E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hccc4071f7470c347E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h7c3b0307b828a41aE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !7, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17ha8f927e500e25db3E"(i64* %self, i64* %dest, i64 %count) unnamed_addr #0 {
start:
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hfdbf43b80292a54bE(i64* %self, i64* %dest, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hb2896d3fe0987a82E"(i64* %self) unnamed_addr #0 {
start:
  %0 = bitcast i64* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hec03e3983627472dE"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h54d741883f378970E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h7c3b0307b828a41aE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h1637a3ed9d7ae4d9E"([0 x i64]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i64]* %self.0 to i64*
  ret i64* %0
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17h9254c36f7fcc1ff6E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h3294ee92e0b70292E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha17828bd78c12d8aE(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h8bf5039385445b5fE(i64 %align), !range !9
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !9, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17hd8bc7f403864293eE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !9, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h164c15f688785081E(i64 %_3), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hb6574d08f3162923E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h78eb447723b20597E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h4ab65048e4d9d2deE"(i64 8, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h567af2617e8b8d3eE"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2d59897f44560109E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !11, !noundef !1
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h50b6d17bee33bff1E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc192 to %"core::panic::location::Location"*))
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !range !2, !noundef !1
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb9:                                              ; preds = %bb5
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha17828bd78c12d8aE(i64 %val, i64 8)
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
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17hd43ea4bd5ec1720dE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17hd8bc7f403864293eE({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdecdaa56ba718e69E"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17h6b1bf12af8a88292E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17ha05a9c1181ebe455E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hed54c878ca1561a7E"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i64]* %self.0 to i64*
  ret i64* %0
}

; Function Attrs: uwtable
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h6254e583085025cdE"([0 x i64]* align 8 %self.0, i64 %self.1, [0 x i64]* align 8 %src.0, i64 %src.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %_3 = icmp ne i64 %self.1, %src.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_14 = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha7f4dad1f9289418E"([0 x i64]* align 8 %src.0, i64 %src.1)
  br label %bb3

bb1:                                              ; preds = %start
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h385a32756883e622E"(i64 %self.1, i64 %src.1, %"core::panic::location::Location"* align 8 %0) #15
  unreachable

bb3:                                              ; preds = %bb2
  %_16 = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hed54c878ca1561a7E"([0 x i64]* align 8 %self.0, i64 %self.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hfdbf43b80292a54bE(i64* %_14, i64* %_16, i64 %self.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h3d59076bbe60aaf0E"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
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
define { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1509f39d29d855acE"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h9736a36c29da1afeE"([0 x i64]* align 8 %self.0, i64 %self.1)
  %1 = extractvalue { i64*, i64* } %0, 0
  %2 = extractvalue { i64*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64*, i64* } undef, i64* %1, 0
  %4 = insertvalue { i64*, i64* } %3, i64* %2, 1
  ret { i64*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha7f4dad1f9289418E"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i64]* %self.0 to i64*
  ret i64* %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17hffb66b173fa320e8E"([0 x i64]* align 8 %self.0, i64 %self.1, [0 x i64]* align 8 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = call zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h641c4f74c052adabE"([0 x i64]* align 8 %self.0, i64 %self.1, [0 x i64]* align 8 %other.0, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hf72dcd33a462d073E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hecce061d4adf3606E(i64* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h4c993e0acc455df5E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h296871ce0e0f94d3E(i64* %data, i64 %len)
  %_7.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_7.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h9736a36c29da1afeE"([0 x i64]* align 8 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i64*, align 8
  %2 = alloca { i64*, i64* }, align 8
  %ptr = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha7f4dad1f9289418E"([0 x i64]* align 8 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hec03e3983627472dE"(i64* %ptr)
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
  %_18 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1696b7d0e8fb946eE"(i64* %ptr)
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
  %12 = load i64*, i64** %11, align 8, !nonnull !1, !noundef !1
  %13 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = insertvalue { i64*, i64* } undef, i64* %12, 0
  %16 = insertvalue { i64*, i64* } %15, i64* %14, 1
  ret { i64*, i64* } %16
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h515704fb16e76901E"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %index.0, i64 %index.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i64]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h62e259019c7d3256E"(i64 %index.0, i64 %index.1, [0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h8728e8215ab6ad3fE"([0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i64]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hee464270d5591f30E"([0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17haeba18d8256b458cE"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h5b0eb681cb654974E"(i64 %index, [0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h9edbcc17417b771dE"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = call align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc607cfb61753a3c3E"(i64 %index, [0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %_4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hcfd19c5fa013a592E"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %index.0, i64 %index.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i64]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2458bfbee117db07E"(i64 %index.0, i64 %index.1, [0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %3 = insertvalue { [0 x i64]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h221a3bdeefb68a0fE"(i8* %0) unnamed_addr #0 {
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
  %9 = load i8, i8* %_7, align 1, !range !7, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h567af2617e8b8d3eE"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %_3 = load i64, i64* %5, align 8, !range !11, !noundef !1
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
  %12 = load i8, i8* %_7, align 1, !range !7, !noundef !1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !range !11, !noundef !1
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h8003384236215671E"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2, i64 %err.0, i64 %err.1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %5, align 8, !range !11, !noundef !1
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
  %15 = load i8, i8* %_7, align 1, !range !7, !noundef !1
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  ret void

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hbc2a2325b1ccbc24E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !2, !noundef !1
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
  %t.1 = load i64, i64* %10, align 8, !range !9, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !2, !noundef !1
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h9254c36f7fcc1ff6E() #15
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %16 = load i64, i64* %15, align 8, !range !2, !noundef !1
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
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h0b92c97115bb119cE"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2) unnamed_addr #0 {
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
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
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
  %t.1 = load i64, i64* %9, align 8, !range !9, !noundef !1
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
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h1238962e06335ca0E"()
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
  %22 = load i8, i8* %_11, align 1, !range !7, !noundef !1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h80eeab052311dedaE"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !1
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
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  store i8 0, i8* %_11, align 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !range !2, !noundef !1
  %21 = call { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h101fa4f6287d5335E"(i64 %18, i64 %20)
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
  %24 = load i8, i8* %_11, align 1, !range !7, !noundef !1
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %29 = load i64, i64* %28, align 8, !range !3, !noundef !1
  %30 = insertvalue { i64, i64 } undef, i64 %27, 0
  %31 = insertvalue { i64, i64 } %30, i64 %29, 1
  ret { i64, i64 } %31

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17heeac046156a7d5a4E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %1, i64 %2, i64* align 8 %op) unnamed_addr #0 {
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
  %t.0 = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
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
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h0ac82e68154a3ba6E"(i64* align 8 %op)
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
  %22 = load i8, i8* %_11, align 1, !range !7, !noundef !1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h118cedde41f03d96E"(i64 %t.0, i64 %t.1) unnamed_addr #1 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %t.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h96ddfc209ed515e2E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17he483437394ab2f09E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h5c209306d376e88bE"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hf75cac612969e683E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hefcd8bd32b139ac1E"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h5cd783dbce492aecE"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN51_$LT$u64$u20$as$u20$alloc..vec..is_zero..IsZero$GT$7is_zero17h6159baa2d6781121E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %_3 = alloca i64, align 8
  %_4 = load i64, i64* %self, align 8
  store i64 %_4, i64* %_3, align 8
  %0 = load i64, i64* %_3, align 8
  %1 = call zeroext i1 @"_ZN51_$LT$u64$u20$as$u20$alloc..vec..is_zero..IsZero$GT$7is_zero28_$u7b$$u7b$closure$u7d$$u7d$17hf11f8e31f7594e4aE"(%"[closure@<u64 as alloc::vec::is_zero::IsZero>::is_zero::{closure#0}]"* align 1 bitcast (<{}>* @alloc61 to %"[closure@<u64 as alloc::vec::is_zero::IsZero>::is_zero::{closure#0}]"*), i64 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN51_$LT$u64$u20$as$u20$alloc..vec..is_zero..IsZero$GT$7is_zero28_$u7b$$u7b$closure$u7d$$u7d$17hf11f8e31f7594e4aE"(%"[closure@<u64 as alloc::vec::is_zero::IsZero>::is_zero::{closure#0}]"* align 1 %_1, i64 %x) unnamed_addr #0 {
start:
  %0 = icmp eq i64 %x, 0
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h5832786aa4b54b53E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %v, [0 x i64]* align 8 %s.0, i64 %s.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  store i8 1, i8* %_17, align 1
  %_3 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h3d59076bbe60aaf0E"([0 x i64]* align 8 %s.0, i64 %s.1)
          to label %bb1 unwind label %cleanup

bb12:                                             ; preds = %bb9, %cleanup
  %1 = load i8, i8* %_17, align 1, !range !7, !noundef !1
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb11, label %bb10

cleanup:                                          ; preds = %bb1, %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb12

bb1:                                              ; preds = %start
  store i8 0, i8* %_17, align 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hf68ec2818a6cb953E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %v, i64 %_3)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_7 = invoke i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha7f4dad1f9289418E"([0 x i64]* align 8 %s.0, i64 %s.1)
          to label %bb3 unwind label %cleanup1

bb9:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17he56685132b9757d5E"(%"alloc::vec::Vec<u64>"* %v) #16
          to label %bb12 unwind label %abort

cleanup1:                                         ; preds = %bb7, %bb6, %bb5, %bb4, %bb3, %bb2
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb9

bb3:                                              ; preds = %bb2
  %_9 = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h5991736dcbf6e1d5E"(%"alloc::vec::Vec<u64>"* align 8 %v)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
  %_11 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h3d59076bbe60aaf0E"([0 x i64]* align 8 %s.0, i64 %s.1)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  invoke void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17ha8f927e500e25db3E"(i64* %_7, i64* %_9, i64 %_11)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  %_15 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h3d59076bbe60aaf0E"([0 x i64]* align 8 %s.0, i64 %s.1)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h8d9f88036f66a38dE"(%"alloc::vec::Vec<u64>"* align 8 %v, i64 %_15)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  ret void

abort:                                            ; preds = %bb9
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb10:                                             ; preds = %bb11, %bb12
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

bb11:                                             ; preds = %bb12
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..clone..Clone$GT$5clone17h7d8fd5e909bb4c3dE"(%"alloc::alloc::Global"* align 1 %self) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17h837d6305e0445cd1E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h2e432c7b88703536E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd7da99ac11b4d861E"(%"alloc::vec::Vec<u64>"* align 8 %self, %"alloc::vec::Vec<u64>"* align 8 %other) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h004f7039aa5b4e9dE"(%"alloc::vec::Vec<u64>"* align 8 %self, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc194 to %"core::panic::location::Location"*))
  %_4.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i64]*, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h004f7039aa5b4e9dE"(%"alloc::vec::Vec<u64>"* align 8 %other, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc194 to %"core::panic::location::Location"*))
  %_8.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_8.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17hffb66b173fa320e8E"([0 x i64]* align 8 %_4.0, i64 %_4.1, [0 x i64]* align 8 %_8.0, i64 %_8.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17h963d05e0b75f9a67E({ i64*, i64 }* align 8 %self, i64 %increment) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %1 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = add i64 %2, %increment
  store i64 %3, i64* %0, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64*, i64 } @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop3new17h08506a6c09cbd01dE(i64* align 8 %len) unnamed_addr #0 {
start:
  %0 = alloca { i64*, i64 }, align 8
  %_2 = load i64, i64* %len, align 8
  %1 = bitcast { i64*, i64 }* %0 to i64**
  store i64* %len, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 1
  store i64 %_2, i64* %2, align 8
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 0
  %4 = load i64*, i64** %3, align 8, !nonnull !1, !align !4, !noundef !1
  %5 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64*, i64 } undef, i64* %4, 0
  %8 = insertvalue { i64*, i64 } %7, i64 %6, 1
  ret { i64*, i64 } %8
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h5991736dcbf6e1d5E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h511e822316848dd8E"({ i64*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hc9a148887cceb263E"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h9440cd02f8d8fbbaE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %n, i64 %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca { i8*, i32 }, align 8
  %_39 = alloca i8, align 1
  %_19 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_16 = alloca { i64, i64 }, align 8
  %local_len = alloca { i64*, i64 }, align 8
  %ptr = alloca i64*, align 8
  %value = alloca i64, align 8
  store i64 %0, i64* %value, align 8
  store i8 1, i8* %_39, align 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6682520d958b8710E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %n)
          to label %bb1 unwind label %cleanup

bb27:                                             ; preds = %bb23, %cleanup
  %4 = load i8, i8* %_39, align 1, !range !7, !noundef !1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb26, label %bb24

cleanup:                                          ; preds = %bb20, %bb4, %bb2, %bb1, %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb27

bb1:                                              ; preds = %start
  %_8 = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h5991736dcbf6e1d5E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_10 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h62406974985413c8E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %11 = getelementptr inbounds i64, i64* %_8, i64 %_10
  store i64* %11, i64** %2, align 8
  %_3.i = load i64*, i64** %2, align 8
  br label %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17he98d267f7f936193E.exit"

"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17he98d267f7f936193E.exit": ; preds = %bb3
  br label %bb4

bb4:                                              ; preds = %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17he98d267f7f936193E.exit"
  store i64* %_3.i, i64** %ptr, align 8
  %_14 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %12 = invoke { i64*, i64 } @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop3new17h08506a6c09cbd01dE(i64* align 8 %_14)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store { i64*, i64 } %12, { i64*, i64 }* %local_len, align 8
  %13 = bitcast { i64, i64 }* %_16 to i64*
  store i64 1, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_16, i32 0, i32 1
  store i64 %n, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_16, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE"(i64 %16, i64 %18)
          to label %bb6 unwind label %cleanup1

bb23:                                             ; preds = %cleanup1
  invoke void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hcd143511bae9b4bdE"({ i64*, i64 }* %local_len) #16
          to label %bb27 unwind label %abort

cleanup1:                                         ; preds = %bb18, %bb17, %bb16, %bb14, %bb12, %bb9, %bb7, %bb5
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  %22 = extractvalue { i8*, i32 } %20, 1
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %bb23

bb6:                                              ; preds = %bb5
  %_15.0 = extractvalue { i64, i64 } %19, 0
  %_15.1 = extractvalue { i64, i64 } %19, 1
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0
  store i64 %_15.0, i64* %25, align 8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1
  store i64 %_15.1, i64* %26, align 8
  br label %bb7

bb7:                                              ; preds = %bb15, %bb6
  %27 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E"({ i64, i64 }* align 8 %iter)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  store { i64, i64 } %27, { i64, i64 }* %_19, align 8
  %28 = bitcast { i64, i64 }* %_19 to i64*
  %_22 = load i64, i64* %28, align 8, !range !11, !noundef !1
  switch i64 %_22, label %bb10 [
    i64 0, label %bb11
    i64 1, label %bb9
  ]

bb10:                                             ; preds = %bb8
  unreachable

bb11:                                             ; preds = %bb8
  %_31 = icmp ugt i64 %n, 0
  br i1 %_31, label %bb16, label %bb20

bb9:                                              ; preds = %bb8
  %_24 = load i64*, i64** %ptr, align 8
  %_25 = invoke i64 @"_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4next17h6b48ecf0f76a381fE"(i64* align 8 %value)
          to label %bb12 unwind label %cleanup1

bb12:                                             ; preds = %bb9
  invoke void @_ZN4core3ptr5write17h822d25deede14e61E(i64* %_24, i64 %_25)
          to label %bb13 unwind label %cleanup1

bb13:                                             ; preds = %bb12
  %_28 = load i64*, i64** %ptr, align 8
  %29 = getelementptr inbounds i64, i64* %_28, i64 1
  store i64* %29, i64** %1, align 8
  %_3.i2 = load i64*, i64** %1, align 8
  br label %bb14

bb14:                                             ; preds = %bb13
  store i64* %_3.i2, i64** %ptr, align 8
  invoke void @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17h963d05e0b75f9a67E({ i64*, i64 }* align 8 %local_len, i64 1)
          to label %bb15 unwind label %cleanup1

bb15:                                             ; preds = %bb14
  br label %bb7

bb20:                                             ; preds = %bb19, %bb11
  invoke void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hcd143511bae9b4bdE"({ i64*, i64 }* %local_len)
          to label %bb21 unwind label %cleanup

bb16:                                             ; preds = %bb11
  %_34 = load i64*, i64** %ptr, align 8
  store i8 0, i8* %_39, align 1
  %_36 = load i64, i64* %value, align 8
  %_35 = invoke i64 @"_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4last17h3b4022104bb3d9c7E"(i64 %_36)
          to label %bb17 unwind label %cleanup1

bb17:                                             ; preds = %bb16
  invoke void @_ZN4core3ptr5write17h822d25deede14e61E(i64* %_34, i64 %_35)
          to label %bb18 unwind label %cleanup1

bb18:                                             ; preds = %bb17
  invoke void @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17h963d05e0b75f9a67E({ i64*, i64 }* align 8 %local_len, i64 1)
          to label %bb19 unwind label %cleanup1

bb19:                                             ; preds = %bb18
  br label %bb20

abort:                                            ; preds = %bb23
  %30 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb21:                                             ; preds = %bb20
  %31 = load i8, i8* %_39, align 1, !range !7, !noundef !1
  %32 = trunc i8 %31 to i1
  br i1 %32, label %bb25, label %bb22

bb24:                                             ; preds = %bb26, %bb27
  %33 = bitcast { i8*, i32 }* %3 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = insertvalue { i8*, i32 } undef, i8* %34, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38

bb26:                                             ; preds = %bb27
  br label %bb24

bb22:                                             ; preds = %bb25, %bb21
  ret void

bb25:                                             ; preds = %bb21
  br label %bb22
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hf68ec2818a6cb953E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64 %capacity) unnamed_addr #0 {
start:
  %1 = call { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h7048efc47deddfccE"(i64 %capacity)
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
define i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h62406974985413c8E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hc8a76db07a1c288dE"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h511e822316848dd8E"({ i64*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hc9a148887cceb263E"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hb5c0a9fc93fed5feE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %new_len, i64 %value) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %_13 = alloca i64, align 8
  store i8 1, i8* %_18, align 1
  %len = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h62406974985413c8E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb11:                                             ; preds = %cleanup
  %1 = load i8, i8* %_18, align 1, !range !7, !noundef !1
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb10, label %bb8

cleanup:                                          ; preds = %bb2, %bb4, %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb11

bb1:                                              ; preds = %start
  %_6 = icmp ugt i64 %new_len, %len
  br i1 %_6, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17h80ab3decc10a61d1E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %new_len)
          to label %bb5 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_10 = sub i64 %new_len, %len
  store i8 0, i8* %_18, align 1
  store i64 %value, i64* %_13, align 8
  %8 = load i64, i64* %_13, align 8
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h9440cd02f8d8fbbaE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %_10, i64 %8)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  br label %bb6

bb6:                                              ; preds = %bb5, %bb3
  %9 = load i8, i8* %_18, align 1, !range !7, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb9, label %bb7

bb5:                                              ; preds = %bb4
  br label %bb6

bb8:                                              ; preds = %bb10, %bb11
  %11 = bitcast { i8*, i32 }* %0 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb10:                                             ; preds = %bb11
  br label %bb8

bb7:                                              ; preds = %bb9, %bb6
  ret void

bb9:                                              ; preds = %bb6
  br label %bb7
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6682520d958b8710E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %additional) unnamed_addr #1 {
start:
  %_4 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h4031d47a1796f121E"({ i64*, i64 }* align 8 %_4, i64 %_5, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h8d9f88036f66a38dE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %new_len) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  store i64 %new_len, i64* %0, align 8
  ret void
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17h80ab3decc10a61d1E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %len) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %1, align 8
  %_3 = icmp ugt i64 %len, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_7 = load i64, i64* %2, align 8
  %remaining_len = sub i64 %_7, %len
  %_11 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h5991736dcbf6e1d5E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb7

bb7:                                              ; preds = %bb6, %bb1
  ret void

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds i64, i64* %_11, i64 %len
  store i64* %3, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h296871ce0e0f94d3E(i64* %_3.i, i64 %remaining_len)
  %s.0 = extractvalue { [0 x i64]*, i64 } %4, 0
  %s.1 = extractvalue { [0 x i64]*, i64 } %4, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  store i64 %len, i64* %5, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define align 1 %"alloc::alloc::Global"* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17h63e0b90b218a3b43E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %0 = call align 1 %"alloc::alloc::Global"* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17h7740e3123874ab89E"({ i64*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::alloc::Global"* %0
}

; Function Attrs: uwtable
define void @_ZN5alloc3vec9from_elem17h1a1c6ee1c22ea3d7E(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64 %elem, i64 %n) unnamed_addr #1 {
start:
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h33e15af7d7ab1f42E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64 %elem, i64 %n)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h611adda108f732b0E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17hd8bc7f403864293eE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h4e99ff43de797a69E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17hd8bc7f403864293eE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h6aae9d88c5f93b06E(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17hd43ea4bd5ec1720dE({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !9, !noundef !1
  %8 = call i8* @_ZN5alloc5alloc5alloc17h4e99ff43de797a69E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !9, !noundef !1
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h611adda108f732b0E(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h65863f0d3e40ae60E"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h221a3bdeefb68a0fE"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha06bc09aa2b8353bE"(i8* %_16)
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
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17ha503b05c1c545c6fE"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3bbdb008729f39d1E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc196 to %"core::panic::location::Location"*))
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
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17ha503b05c1c545c6fE"(i8* %_7, i64 0)
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
define internal { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h7fb066948536e1d8E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1, i64 %2, i64 %3, i1 zeroext %zeroed) unnamed_addr #0 {
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
  %_6 = call i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %old_layout)
  br label %bb1

bb1:                                              ; preds = %start
  %10 = icmp eq i64 %_6, 0
  br i1 %10, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_9.0 = load i64, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_9.1 = load i64, i64* %12, align 8, !range !9, !noundef !1
  %13 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h6aae9d88c5f93b06E(%"alloc::alloc::Global"* align 1 %self, i64 %_9.0, i64 %_9.1, i1 zeroext %zeroed)
  store { i8*, i64 } %13, { i8*, i64 }* %5, align 8
  br label %bb3

bb4:                                              ; preds = %bb1
  %_14 = call i64 @_ZN4core5alloc6layout6Layout5align17hd8bc7f403864293eE({ i64, i64 }* align 8 %old_layout)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_16 = call i64 @_ZN4core5alloc6layout6Layout5align17hd8bc7f403864293eE({ i64, i64 }* align 8 %new_layout)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_13 = icmp eq i64 %_14, %_16
  br i1 %_13, label %bb7, label %bb8

bb8:                                              ; preds = %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_56.0 = load i64, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_56.1 = load i64, i64* %15, align 8, !range !9, !noundef !1
  %16 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h6aae9d88c5f93b06E(%"alloc::alloc::Global"* align 1 %self, i64 %_56.0, i64 %_56.1, i1 zeroext %zeroed)
  %_54.0 = extractvalue { i8*, i64 } %16, 0
  %_54.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb26

bb7:                                              ; preds = %bb6
  %new_size = call i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %new_layout)
  br label %bb9

bb9:                                              ; preds = %bb7
  %_23 = call i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %old_layout)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_21 = icmp uge i64 %new_size, %_23
  call void @llvm.assume(i1 %_21)
  br label %bb11

bb11:                                             ; preds = %bb10
  %_26 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha363ca6e08a5ec7dE"(i8* %ptr)
  br label %bb12

bb12:                                             ; preds = %bb11
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_28.0 = load i64, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_28.1 = load i64, i64* %18, align 8, !range !9, !noundef !1
  %raw_ptr = call i8* @_ZN5alloc5alloc7realloc17hec27c106d9552b28E(i8* %_26, i64 %_28.0, i64 %_28.1, i64 %new_size)
  br label %bb13

bb13:                                             ; preds = %bb12
  %_33 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h65863f0d3e40ae60E"(i8* %raw_ptr)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_32 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h221a3bdeefb68a0fE"(i8* %_33)
  br label %bb15

bb15:                                             ; preds = %bb14
  %19 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha06bc09aa2b8353bE"(i8* %_32)
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
  %val = load i8*, i8** %_31, align 8, !nonnull !1, !noundef !1
  br i1 %zeroed, label %bb21, label %bb24

bb19:                                             ; preds = %bb16
  %23 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3bbdb008729f39d1E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc198 to %"core::panic::location::Location"*))
  store { i8*, i64 } %23, { i8*, i64 }* %5, align 8
  br label %bb20

bb20:                                             ; preds = %bb19
  br label %bb37

bb37:                                             ; preds = %bb31, %bb20
  br label %bb38

bb24:                                             ; preds = %bb23, %bb17
  %24 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17ha503b05c1c545c6fE"(i8* %val, i64 %new_size)
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
  call void @_ZN4core10intrinsics11write_bytes17h28a2a389e824f8e8E(i8* %_3.i, i8 0, i64 %_45)
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
  %28 = call { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2b89ba15db4ce221E"(i8* %_54.0, i64 %_54.1)
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
  %val.0 = load i8*, i8** %32, align 8, !nonnull !1, !noundef !1
  %33 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_53, i32 0, i32 1
  %val.1 = load i64, i64* %33, align 8
  %_64 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha363ca6e08a5ec7dE"(i8* %ptr)
  br label %bb32

bb30:                                             ; preds = %bb27
  %34 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3bbdb008729f39d1E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc200 to %"core::panic::location::Location"*))
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
  %_66 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hde86bf2473f57126E"(i8* %val.0, i64 %val.1)
  br label %bb33

bb33:                                             ; preds = %bb32
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h4bc7ce1013250896E(i8* %_64, i8* %_66, i64 %_6)
  br label %bb34

bb34:                                             ; preds = %bb33
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_72.0 = load i64, i64* %41, align 8
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_72.1 = load i64, i64* %42, align 8, !range !9, !noundef !1
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb295b6c564f0f199E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %_72.0, i64 %_72.1)
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
define internal void @_ZN5alloc5alloc7dealloc17ha9572c560c38df75E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17hd8bc7f403864293eE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc7realloc17hec27c106d9552b28E(i8* %ptr, i64 %0, i64 %1, i64 %new_size) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_5 = call i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core5alloc6layout6Layout5align17hd8bc7f403864293eE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_realloc(i8* %ptr, i64 %_5, i64 %_7, i64 %new_size) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17hd3f9caf1480a8cddE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @_ZN5alloc5slice4hack6to_vec17hbe23adf28a307fe3E(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5slice4hack6to_vec17hbe23adf28a307fe3E(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h5832786aa4b54b53E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hf2c0b9ef99269230E(i64 %alloc_size) unnamed_addr #0 {
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
  %8 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %9 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hefcd8bd32b139ac1E"(i64 %6, i64 %8)
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
  %15 = load i64, i64* %14, align 8, !range !3, !noundef !1
  %16 = insertvalue { i64, i64 } undef, i64 %13, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: noinline uwtable
define void @_ZN5alloc7raw_vec11finish_grow17h1f3857e3f7240ff1E(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, %"alloc::alloc::Global"* align 1 %alloc) unnamed_addr #3 {
start:
  %_41 = alloca i64*, align 8
  %old_layout = alloca { i64, i64 }, align 8
  %memory = alloca { i8*, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %_6 = alloca %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>", align 8
  %_5 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>", align 8
  %new_layout = alloca { i64, i64 }, align 8
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h0b92c97115bb119cE"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %_6, i64 %new_layout.0, i64 %new_layout.1)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h33b8f157e289c0adE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %_5, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to i64*
  %_9 = load i64, i64* %1, align 8, !range !11, !noundef !1
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
  %val.1 = load i64, i64* %5, align 8, !range !9, !noundef !1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %val.0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %val.1, i64* %7, align 8
  %_15 = call i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %new_layout)
  br label %bb7

bb5:                                              ; preds = %bb2
  %8 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %9 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %residual.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %residual.1 = load i64, i64* %11, align 8, !range !2, !noundef !1
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9a86d56b10145797E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc202 to %"core::panic::location::Location"*))
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb13, %bb6
  br label %bb24

bb7:                                              ; preds = %bb3
  %12 = call { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hf2c0b9ef99269230E(i64 %_15)
  %_14.0 = extractvalue { i64, i64 } %12, 0
  %_14.1 = extractvalue { i64, i64 } %12, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %13 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7ef4130d25565c7fE"(i64 %_14.0, i64 %_14.1)
  store { i64, i64 } %13, { i64, i64 }* %_13, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !range !3, !noundef !1
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
  %19 = load i64, i64* %18, align 8, !range !2, !noundef !1
  %20 = icmp eq i64 %19, 0
  %_22 = select i1 %20, i64 0, i64 1
  %21 = icmp eq i64 %_22, 1
  br i1 %21, label %bb15, label %bb14

bb12:                                             ; preds = %bb9
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 0
  %residual.01 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %residual.12 = load i64, i64* %23, align 8, !range !2, !noundef !1
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hb35caad2a39192dcE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.01, i64 %residual.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc204 to %"core::panic::location::Location"*))
  br label %bb13

bb13:                                             ; preds = %bb12
  br label %bb23

bb24:                                             ; preds = %bb22, %bb23
  ret void

bb15:                                             ; preds = %bb10
  %24 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %25 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %24 to { i8*, { i64, i64 } }*
  %26 = bitcast { i8*, { i64, i64 } }* %25 to i8**
  %ptr = load i8*, i8** %26, align 8, !nonnull !1, !noundef !1
  %27 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %28 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %27 to { i8*, { i64, i64 } }*
  %29 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %28, i32 0, i32 1
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8, !range !9, !noundef !1
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %_30 = call i64 @_ZN4core5alloc6layout6Layout5align17hd8bc7f403864293eE({ i64, i64 }* align 8 %old_layout)
  br label %bb16

bb14:                                             ; preds = %bb10
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_39.0 = load i64, i64* %36, align 8
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_39.1 = load i64, i64* %37, align 8, !range !9, !noundef !1
  %38 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h825328fd89ea3f9cE"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_39.0, i64 %_39.1)
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
  %42 = load i64*, i64** %_41, align 8, !nonnull !1, !align !4, !noundef !1
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17heeac046156a7d5a4E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %_40.0, i64 %_40.1, i64* align 8 %42)
  br label %bb22

bb16:                                             ; preds = %bb15
  %_32 = call i64 @_ZN4core5alloc6layout6Layout5align17hd8bc7f403864293eE({ i64, i64 }* align 8 %new_layout)
  br label %bb17

bb17:                                             ; preds = %bb16
  %_29 = icmp eq i64 %_30, %_32
  call void @llvm.assume(i1 %_29)
  br label %bb18

bb18:                                             ; preds = %bb17
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_36.0 = load i64, i64* %43, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_36.1 = load i64, i64* %44, align 8, !range !9, !noundef !1
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_37.0 = load i64, i64* %45, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_37.1 = load i64, i64* %46, align 8, !range !9, !noundef !1
  %47 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h0f62454ec75a5d52E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %ptr, i64 %_36.0, i64 %_36.1, i64 %_37.0, i64 %_37.1)
  store { i8*, i64 } %47, { i8*, i64 }* %memory, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  br label %bb21

bb22:                                             ; preds = %bb21
  br label %bb24
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h0ac82e68154a3ba6E"(i64* align 8 %0) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  %1 = bitcast i64** %_1 to { i64, i64 }**
  %_5 = load { i64, i64 }*, { i64, i64 }** %1, align 8, !nonnull !1, !align !4, !noundef !1
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %_4.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %_4.1 = load i64, i64* %3, align 8, !range !9, !noundef !1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  store i64 %_4.0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %_4.1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %9 = load i64, i64* %8, align 8, !range !2, !noundef !1
  %10 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hefcd8bd32b139ac1E"(i64 %7, i64 %9)
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %start
  %13 = insertvalue { i64, i64 } undef, i64 %11, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h1238962e06335ca0E"() unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc7raw_vec14handle_reserve17h9451f3b5d77fba02E(i64 %result.0, i64 %result.1) unnamed_addr #0 {
start:
  %_2 = alloca { i64, i64 }, align 8
  %0 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h80eeab052311dedaE"(i64 %result.0, i64 %result.1)
  store { i64, i64 } %0, { i64, i64 }* %_2, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %2 = load i64, i64* %1, align 8, !range !3, !noundef !1
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
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
  %7 = icmp eq i64 %6, 0
  %_5 = select i1 %7, i64 0, i64 1
  switch i64 %_5, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb3
  call void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #15
  unreachable

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 0
  %layout.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %layout.1 = load i64, i64* %9, align 8, !range !9, !noundef !1
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h101fa4f6287d5335E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %e = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = call { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17h837d6305e0445cd1E({ i64, i64 }* align 8 %e)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hfe07abd7fbd4ae4dE"(i64 %capacity, i1 zeroext %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %4 = load i8, i8* %_37, align 1, !range !7, !noundef !1
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
  %13 = load i8, i8* %_4, align 1, !range !7, !noundef !1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb5, label %bb7

bb7:                                              ; preds = %bb3
  %15 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h78eb447723b20597E(i64 %capacity)
          to label %bb8 unwind label %cleanup

bb5:                                              ; preds = %bb3
  store i8 0, i8* %_37, align 1
  %16 = invoke { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h05863e0c4ef7d1d0E"()
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store { i64*, i64 } %16, { i64*, i64 }* %2, align 8
  br label %bb29

bb29:                                             ; preds = %bb28, %bb6
  %17 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8, !nonnull !1, !noundef !1
  %19 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { i64*, i64 } undef, i64* %18, 0
  %22 = insertvalue { i64*, i64 } %21, i64 %20, 1
  ret { i64*, i64 } %22

bb8:                                              ; preds = %bb7
  store { i64, i64 } %15, { i64, i64 }* %_10, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1
  %24 = load i64, i64* %23, align 8, !range !2, !noundef !1
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
  %layout.1 = load i64, i64* %27, align 8, !range !9, !noundef !1
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %layout.0, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %layout.1, i64* %29, align 8
  %_16 = invoke i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %layout)
          to label %bb12 unwind label %cleanup

bb9:                                              ; preds = %bb8
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #15
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb23, %bb14, %bb9
  unreachable

bb12:                                             ; preds = %bb11
  %30 = invoke { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17hf2c0b9ef99269230E(i64 %_16)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  store { i64, i64 } %30, { i64, i64 }* %_15, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_15, i32 0, i32 1
  %32 = load i64, i64* %31, align 8, !range !3, !noundef !1
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
  %35 = load i8, i8* %init, align 1, !range !7, !noundef !1
  %36 = trunc i8 %35 to i1
  %_21 = zext i1 %36 to i64
  switch i64 %_21, label %bb18 [
    i64 0, label %bb19
    i64 1, label %bb17
  ]

bb14:                                             ; preds = %bb13
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #15
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb16
  unreachable

bb19:                                             ; preds = %bb16
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_23.0 = load i64, i64* %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_23.1 = load i64, i64* %38, align 8, !range !9, !noundef !1
  %39 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h825328fd89ea3f9cE"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_23.0, i64 %_23.1)
          to label %bb20 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_25.0 = load i64, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_25.1 = load i64, i64* %41, align 8, !range !9, !noundef !1
  %42 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h9dbd92d50b03adf4E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_25.0, i64 %_25.1)
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
  %ptr.0 = load i8*, i8** %46, align 8, !nonnull !1, !noundef !1
  %47 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 1
  %ptr.1 = load i64, i64* %47, align 8
  %_33 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h37cf5dc7256a4938E"(i8* %ptr.0, i64 %ptr.1)
          to label %bb26 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_30.0 = load i64, i64* %48, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_30.1 = load i64, i64* %49, align 8, !range !9, !noundef !1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %_30.0, i64 %_30.1) #15
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_32 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9cc98e7b4a6a9ed8E"(i64* %_33)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_31 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hf5af1aeec53cdf89E"(i64* %_32)
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
define zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17h9b39e4d6aeb4bac5E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #1 {
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h721c5da3ac4a45f1E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i64*, i64 }* align 8 %self) unnamed_addr #1 {
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
  %4 = load i8, i8* %_2, align 1, !range !7, !noundef !1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h78eb447723b20597E(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hbc2a2325b1ccbc24E"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc206 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i64*, i64 }* %self to i64**
  %_12 = load i64*, i64** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5104c6904e16e5aaE"(i64* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h5c209306d376e88bE"(i8* %_11)
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
define { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17he11ca3055e80e383E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #1 {
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
  %7 = load i64, i64* %6, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hefcd8bd32b139ac1E"(i64 %5, i64 %7)
  %_5.0 = extractvalue { i64, i64 } %8, 0
  %_5.1 = extractvalue { i64, i64 } %8, 1
  br label %bb3

bb4:                                              ; preds = %bb1
  %9 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h86a43d914affc73fE"(i64 %len, i64 %additional)
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
  %15 = load i64, i64* %14, align 8, !range !2, !noundef !1
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h8003384236215671E"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %_9, i64 %_10.0, i64 %_10.1, i64 %13, i64 %15)
  br label %bb6

bb6:                                              ; preds = %bb5
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5fa3bf0175162462E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %_8, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  %16 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to i64*
  %_14 = load i64, i64* %16, align 8, !range !11, !noundef !1
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
  %cap = call i64 @_ZN4core3cmp3max17h44313903260c6a53E(i64 %_19, i64 %val)
  br label %bb12

bb10:                                             ; preds = %bb7
  %20 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %21 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %20, i32 0, i32 1
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %residual.0 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %residual.1 = load i64, i64* %23, align 8, !range !2, !noundef !1
  %24 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd793ff92b44e7f89E"(i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc208 to %"core::panic::location::Location"*))
  store { i64, i64 } %24, { i64, i64 }* %0, align 8
  br label %bb11

bb11:                                             ; preds = %bb10
  br label %bb23

bb23:                                             ; preds = %bb21, %bb11
  br label %bb24

bb12:                                             ; preds = %bb8
  %cap1 = call i64 @_ZN4core3cmp3max17h44313903260c6a53E(i64 4, i64 %cap)
  br label %bb13

bb13:                                             ; preds = %bb12
  %25 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h78eb447723b20597E(i64 %cap1)
  %new_layout.0 = extractvalue { i64, i64 } %25, 0
  %new_layout.1 = extractvalue { i64, i64 } %25, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h721c5da3ac4a45f1E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_30, { i64*, i64 }* align 8 %self)
  br label %bb15

bb15:                                             ; preds = %bb14
  %_33 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
  call void @_ZN5alloc7raw_vec11finish_grow17h1f3857e3f7240ff1E(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %_28, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30, %"alloc::alloc::Global"* align 1 %_33)
  br label %bb16

bb16:                                             ; preds = %bb15
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfc66776c6a3b716aE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %_27, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %_28)
  br label %bb17

bb17:                                             ; preds = %bb16
  %26 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to i64*
  %_34 = load i64, i64* %26, align 8, !range !11, !noundef !1
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
  %val.0 = load i8*, i8** %29, align 8, !nonnull !1, !noundef !1
  %30 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %28, i32 0, i32 1
  %val.1 = load i64, i64* %30, align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hc47d586d710cd196E"({ i64*, i64 }* align 8 %self, i8* %val.0, i64 %val.1, i64 %cap1)
  br label %bb22

bb20:                                             ; preds = %bb17
  %31 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %32 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %31, i32 0, i32 1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %residual.02 = load i64, i64* %33, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %residual.13 = load i64, i64* %34, align 8, !range !2, !noundef !1
  %35 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hf730cc67c9115516E"(i64 %residual.02, i64 %residual.13, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc210 to %"core::panic::location::Location"*))
  store { i64, i64 } %35, { i64, i64 }* %0, align 8
  br label %bb21

bb21:                                             ; preds = %bb20
  br label %bb23

bb24:                                             ; preds = %bb3, %bb22, %bb23
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %39 = load i64, i64* %38, align 8, !range !3, !noundef !1
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hc47d586d710cd196E"({ i64*, i64 }* align 8 %self, i8* %ptr.0, i64 %ptr.1, i64 %cap) unnamed_addr #1 {
start:
  %_6 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h37cf5dc7256a4938E"(i8* %ptr.0, i64 %ptr.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9cc98e7b4a6a9ed8E"(i64* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = call i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hf5af1aeec53cdf89E"(i64* %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  %0 = bitcast { i64*, i64 }* %self to i64**
  store i64* %_4, i64** %0, align 8
  %1 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  store i64 %cap, i64* %1, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h7048efc47deddfccE"(i64 %capacity) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !7, !noundef !1
  %1 = trunc i8 %0 to i1
  %2 = call { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hfe07abd7fbd4ae4dE"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i64*, i64 } %2, 0
  %4 = extractvalue { i64*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i64*, i64 } undef, i64* %3, 0
  %6 = insertvalue { i64*, i64 } %5, i64 %4, 1
  ret { i64*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$23with_capacity_zeroed_in17h0e632272d9fe6df5E"(i64 %capacity) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  store i8 1, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !7, !noundef !1
  %1 = trunc i8 %0 to i1
  %2 = call { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hfe07abd7fbd4ae4dE"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i64*, i64 } %2, 0
  %4 = extractvalue { i64*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i64*, i64 } undef, i64* %3, 0
  %6 = insertvalue { i64*, i64 } %5, i64 %4, 1
  ret { i64*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h511e822316848dd8E"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64*, i64 }* %self to i64**
  %_2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  %1 = call i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd1916029b381a2d0E"(i64* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h05863e0c4ef7d1d0E"() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i64*, i64 }, align 8
  %_2 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h678a5b8ee8bdbe41E"()
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
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h4031d47a1796f121E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #0 {
start:
  %_4 = call zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17h9b39e4d6aeb4bac5E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb4

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb2:                                              ; preds = %bb1
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h6bb5070eed990ec3E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: cold uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h6bb5070eed990ec3E"({ i64*, i64 }* align 8 %slf, i64 %len, i64 %additional) unnamed_addr #4 {
start:
  %0 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17he11ca3055e80e383E"({ i64*, i64 }* align 8 %slf, i64 %len, i64 %additional)
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc7raw_vec14handle_reserve17h9451f3b5d77fba02E(i64 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: uwtable
define align 1 %"alloc::alloc::Global"* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17h7740e3123874ab89E"({ i64*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
  ret %"alloc::alloc::Global"* %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h33e15af7d7ab1f42E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64 %1, i64 %n) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_19 = alloca i8, align 1
  %_18 = alloca i8, align 1
  %_16 = alloca i64, align 8
  %v = alloca %"alloc::vec::Vec<u64>", align 8
  %elem = alloca i64, align 8
  store i64 %1, i64* %elem, align 8
  store i8 1, i8* %_19, align 1
  store i8 1, i8* %_18, align 1
  %_4 = invoke zeroext i1 @"_ZN51_$LT$u64$u20$as$u20$alloc..vec..is_zero..IsZero$GT$7is_zero17h6159baa2d6781121E"(i64* align 8 %elem)
          to label %bb1 unwind label %cleanup

bb12:                                             ; preds = %bb8, %cleanup
  %3 = load i8, i8* %_18, align 1, !range !7, !noundef !1
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb11, label %bb9

cleanup:                                          ; preds = %bb2, %bb4, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb12

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  store i8 0, i8* %_18, align 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hf68ec2818a6cb953E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %v, i64 %n)
          to label %bb5 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_18, align 1
  %10 = invoke { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$23with_capacity_zeroed_in17h0e632272d9fe6df5E"(i64 %n)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_6.0 = extractvalue { i64*, i64 } %10, 0
  %_6.1 = extractvalue { i64*, i64 } %10, 1
  %11 = bitcast %"alloc::vec::Vec<u64>"* %0 to { i64*, i64 }*
  %12 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %11, i32 0, i32 0
  store i64* %_6.0, i64** %12, align 8
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %11, i32 0, i32 1
  store i64 %_6.1, i64* %13, align 8
  %14 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %0, i32 0, i32 1
  store i64 %n, i64* %14, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb3
  ret void

bb5:                                              ; preds = %bb4
  store i8 0, i8* %_19, align 1
  %_17 = load i64, i64* %elem, align 8
  store i64 %_17, i64* %_16, align 8
  %15 = load i64, i64* %_16, align 8
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h9440cd02f8d8fbbaE"(%"alloc::vec::Vec<u64>"* align 8 %v, i64 %n, i64 %15)
          to label %bb6 unwind label %cleanup1

bb8:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17he56685132b9757d5E"(%"alloc::vec::Vec<u64>"* %v) #16
          to label %bb12 unwind label %abort

cleanup1:                                         ; preds = %bb5
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb8

bb6:                                              ; preds = %bb5
  %21 = bitcast %"alloc::vec::Vec<u64>"* %0 to i8*
  %22 = bitcast %"alloc::vec::Vec<u64>"* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
  br label %bb7

abort:                                            ; preds = %bb8
  %23 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb9:                                              ; preds = %bb11, %bb12
  %24 = load i8, i8* %_19, align 1, !range !7, !noundef !1
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb13, label %bb10

bb11:                                             ; preds = %bb12
  br label %bb9

bb10:                                             ; preds = %bb13, %bb9
  %26 = bitcast { i8*, i32 }* %2 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

bb13:                                             ; preds = %bb9
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2e2ae46617884713E"(i64* %self.0, i64* %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64*, i64* } undef, i64* %self.0, 0
  %1 = insertvalue { i64*, i64* } %0, i64* %self.1, 1
  ret { i64*, i64* } %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb295b6c564f0f199E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha363ca6e08a5ec7dE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !9, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17ha9572c560c38df75E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h9dbd92d50b03adf4E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h6aae9d88c5f93b06E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h0f62454ec75a5d52E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h7fb066948536e1d8E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h825328fd89ea3f9cE"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h6aae9d88c5f93b06E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hc0a78b99ac3a210dE"(%"alloc::vec::Vec<u64>"* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = call { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h45c6af0a402b6770E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  %_5.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_5.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h2817f81ef4d4311aE"([0 x i64]* align 8 %_5.0, i64 %_5.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h93c75e9aed9a67c8E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8, !range !9, !noundef !1
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd87fd617a87b3cbcE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, %"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_11 = alloca i8, align 1
  %_4 = call align 1 %"alloc::alloc::Global"* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17h63e0b90b218a3b43E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  store i8 1, i8* %_11, align 1
  call void @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..clone..Clone$GT$5clone17h7d8fd5e909bb4c3dE"(%"alloc::alloc::Global"* align 1 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h45c6af0a402b6770E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb3 unwind label %cleanup

bb7:                                              ; preds = %cleanup
  %3 = load i8, i8* %_11, align 1, !range !7, !noundef !1
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb6, label %bb5

cleanup:                                          ; preds = %bb3, %bb2
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb7

bb3:                                              ; preds = %bb2
  %_8.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_8.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_11, align 1
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17hd3f9caf1480a8cddE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, [0 x i64]* align 8 %_8.0, i64 %_8.1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  ret void

bb5:                                              ; preds = %bb6, %bb7
  %10 = bitcast { i8*, i32 }* %1 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef3dee8ea2cc36ecE"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h5991736dcbf6e1d5E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h296871ce0e0f94d3E(i64* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h45c6af0a402b6770E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hc8a76db07a1c288dE"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hf72dcd33a462d073E(i64* %_2, i64 %_4)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h641c4f74c052adabE"([0 x i64]* align 8 %self.0, i64 %self.1, [0 x i64]* align 8 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %_3 = icmp ne i64 %self.1, %other.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %size = call i64 @_ZN4core3mem11size_of_val17he5842cc26c350a42E([0 x i64]* align 8 %self.0, i64 %self.1)
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6, %bb1
  %1 = load i8, i8* %0, align 1, !range !7, !noundef !1
  %2 = trunc i8 %1 to i1
  ret i1 %2

bb3:                                              ; preds = %bb2
  %_12 = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha7f4dad1f9289418E"([0 x i64]* align 8 %self.0, i64 %self.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_11 = bitcast i64* %_12 to i8*
  %_15 = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha7f4dad1f9289418E"([0 x i64]* align 8 %other.0, i64 %other.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_14 = bitcast i64* %_15 to i8*
  %_10 = call i32 @memcmp(i8* %_11, i8* %_14, i64 %size)
  br label %bb6

bb6:                                              ; preds = %bb5
  %3 = icmp eq i32 %_10, 0
  %4 = zext i1 %3 to i8
  store i8 %4, i8* %0, align 1
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h6d8270d7cec8faa6E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h5991736dcbf6e1d5E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_7 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h4c993e0acc455df5E(i64* %_5, i64 %_7)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %3 = insertvalue { [0 x i64]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h5b0eb681cb654974E"(i64 %self, [0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_5 = icmp ult i64 %self, %slice.1
  %1 = call i1 @llvm.expect.i1(i1 %_5, i1 true)
  br i1 %1, label %bb1, label %panic

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds [0 x i64], [0 x i64]* %slice.0, i64 0, i64 %self
  ret i64* %2

panic:                                            ; preds = %start
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc607cfb61753a3c3E"(i64 %self, [0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_7 = icmp ult i64 %self, %slice.1
  %1 = call i1 @llvm.expect.i1(i1 %_7, i1 true)
  br i1 %1, label %bb1, label %panic

bb1:                                              ; preds = %start
  %_4 = getelementptr inbounds [0 x i64], [0 x i64]* %slice.0, i64 0, i64 %self
  ret i64* %_4

panic:                                            ; preds = %start
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #15
  unreachable
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ec2789c27ebbb13E"({ i64*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h721c5da3ac4a45f1E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i64*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !2, !noundef !1
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
  %layout.1 = load i64, i64* %11, align 8, !range !9, !noundef !1
  %_7 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb295b6c564f0f199E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h2e432c7b88703536E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8, !range !2, !noundef !1
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
  %6 = call { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h93c75e9aed9a67c8E"({ i64, i64 }* align 8 %self)
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
  %12 = load i64, i64* %11, align 8, !range !2, !noundef !1
  %13 = insertvalue { i64, i64 } undef, i64 %10, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2b89ba15db4ce221E"(i8* %0, i64 %1) unnamed_addr #0 {
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
  %v.0 = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
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
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2d59897f44560109E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !11, !noundef !1
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
  %14 = load i64, i64* %13, align 8, !range !11, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h33b8f157e289c0adE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %0, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !11, !noundef !1
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
  %v.1 = load i64, i64* %5, align 8, !range !9, !noundef !1
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
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !range !2, !noundef !1
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
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5fa3bf0175162462E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %0, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !11, !noundef !1
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
  %e.1 = load i64, i64* %10, align 8, !range !2, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %12, align 8
  %13 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %14 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %13, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8, !range !2, !noundef !1
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
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7ef4130d25565c7fE"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !1
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
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !range !2, !noundef !1
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %26 = load i64, i64* %25, align 8, !range !3, !noundef !1
  %27 = insertvalue { i64, i64 } undef, i64 %24, 0
  %28 = insertvalue { i64, i64 } %27, i64 %26, 1
  ret { i64, i64 } %28
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha06bc09aa2b8353bE"(i8* %0) unnamed_addr #0 {
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

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfc66776c6a3b716aE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %0, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !11, !noundef !1
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
  %v.0 = load i8*, i8** %4, align 8, !nonnull !1, !noundef !1
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
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !range !2, !noundef !1
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
define { [0 x i64]*, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h004f7039aa5b4e9dE"(%"alloc::vec::Vec<u64>"* align 8 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  store i8 1, i8* %_8, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h45c6af0a402b6770E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_8, align 1, !range !7, !noundef !1
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_5.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_8, align 1
  %10 = invoke { [0 x i64]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h8728e8215ab6ad3fE"([0 x i64]* align 8 %_5.0, i64 %_5.1, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %11 = extractvalue { [0 x i64]*, i64 } %10, 0
  %12 = extractvalue { [0 x i64]*, i64 } %10, 1
  %13 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %11, 0
  %14 = insertvalue { [0 x i64]*, i64 } %13, i64 %12, 1
  ret { [0 x i64]*, i64 } %14

bb3:                                              ; preds = %bb4, %bb5
  %15 = bitcast { i8*, i32 }* %1 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5816d5875f5eacddE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %index.0, i64 %index.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  store i8 1, i8* %_8, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h45c6af0a402b6770E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_8, align 1, !range !7, !noundef !1
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_5.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_8, align 1
  %10 = invoke { [0 x i64]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h515704fb16e76901E"([0 x i64]* align 8 %_5.0, i64 %_5.1, i64 %index.0, i64 %index.1, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %11 = extractvalue { [0 x i64]*, i64 } %10, 0
  %12 = extractvalue { [0 x i64]*, i64 } %10, 1
  %13 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %11, 0
  %14 = insertvalue { [0 x i64]*, i64 } %13, i64 %12, 1
  ret { [0 x i64]*, i64 } %14

bb3:                                              ; preds = %bb4, %bb5
  %15 = bitcast { i8*, i32 }* %1 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf918e862abedcdb2E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  store i8 1, i8* %_8, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h45c6af0a402b6770E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_8, align 1, !range !7, !noundef !1
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_5.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_8, align 1
  %10 = invoke align 8 i64* @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17haeba18d8256b458cE"([0 x i64]* align 8 %_5.0, i64 %_5.1, i64 %index, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret i64* %10

bb3:                                              ; preds = %bb4, %bb5
  %11 = bitcast { i8*, i32 }* %1 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha154a5567c66685cE"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_2 = load i64, i64* %0, align 8
  %1 = bitcast { i64*, i64 }* %self to i64**
  %_3 = load i64*, i64** %1, align 8, !nonnull !1, !align !4, !noundef !1
  store i64 %_2, i64* %_3, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h629669bbcb2f6229E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %index.0, i64 %index.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  store i8 1, i8* %_10, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h6d8270d7cec8faa6E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_10, align 1, !range !7, !noundef !1
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_7.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_7.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_10, align 1
  %10 = invoke { [0 x i64]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hcfd19c5fa013a592E"([0 x i64]* align 8 %_7.0, i64 %_7.1, i64 %index.0, i64 %index.1, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_4.0 = extractvalue { [0 x i64]*, i64 } %10, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %10, 1
  %11 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %12 = insertvalue { [0 x i64]*, i64 } %11, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %12

bb3:                                              ; preds = %bb4, %bb5
  %13 = bitcast { i8*, i32 }* %1 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb7d5c81399a577acE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  store i8 1, i8* %_10, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h6d8270d7cec8faa6E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_10, align 1, !range !7, !noundef !1
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_7.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_7.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_10, align 1
  %_4 = invoke align 8 i64* @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h9edbcc17417b771dE"([0 x i64]* align 8 %_7.0, i64 %_7.1, i64 %index, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret i64* %_4

bb3:                                              ; preds = %bb4, %bb5
  %10 = bitcast { i8*, i32 }* %1 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: uwtable
define i64 @"_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4last17h3b4022104bb3d9c7E"(i64 %self) unnamed_addr #1 {
start:
  ret i64 %self
}

; Function Attrs: uwtable
define i64 @"_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4next17h6b48ecf0f76a381fE"(i64* align 8 %self) unnamed_addr #1 {
start:
  %0 = call i64 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17h6b1bf12af8a88292E"(i64* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h3294ee92e0b70292E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h620d3c59345dbfa1E"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17ha05a9c1181ebe455E"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h03da988fa910d80eE"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17ha7d69cd4af2f2e70E(i64* align 8 %_10, i64 %n)
  br label %bb5

bb5:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_8, i64* %2, align 8
  %3 = bitcast { i64, i64 }* %0 to i64*
  store i64 1, i64* %3, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !range !11, !noundef !1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i64, i64 } undef, i64 %5, 0
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1
  ret { i64, i64 } %9
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60587e97f667defaE"({ i64*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = bitcast { i64*, i64* }* %self to i64**
  %_6 = load i64*, i64** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9cc98e7b4a6a9ed8E"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hc9a148887cceb263E"(i64* %_5)
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
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hec03e3983627472dE"(i64* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %6 = bitcast { i64*, i64* }* %self to i64**
  %_15 = load i64*, i64** %6, align 8, !nonnull !1, !noundef !1
  %_14 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9cc98e7b4a6a9ed8E"(i64* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_16 = load i64*, i64** %7, align 8
  %_12 = icmp eq i64* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i64*, i64* }* %self to i64**
  %_12.i = load i64*, i64** %8, align 8, !nonnull !1, !noundef !1
  %old.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9cc98e7b4a6a9ed8E"(i64* %_12.i)
  %9 = bitcast { i64*, i64* }* %self to i64**
  %_16.i = load i64*, i64** %9, align 8, !nonnull !1, !noundef !1
  %_15.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9cc98e7b4a6a9ed8E"(i64* %_16.i)
  %10 = getelementptr inbounds i64, i64* %_15.i, i64 1
  store i64* %10, i64** %0, align 8
  %_3.i.i = load i64*, i64** %0, align 8
  %_13.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1696b7d0e8fb946eE"(i64* %_3.i.i)
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
  %15 = load i64*, i64** %2, align 8, !align !4
  ret i64* %15

bb13:                                             ; preds = %bb12
  store i64* %12, i64** %2, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hee464270d5591f30E"([0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %slice.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %slice.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: uwtable
define zeroext i1 @eq(%Zahl* align 1 %self, %Zahl* align 1 %other) unnamed_addr #1 {
start:
  %_4 = alloca i8, align 1
  %_3 = alloca i8, align 1
  %0 = alloca i8, align 1
  %1 = bitcast %Zahl* %self to i32*
  %_6 = load i32, i32* %1, align 1
  %2 = bitcast %Zahl* %other to i32*
  %_7 = load i32, i32* %2, align 1
  %_5 = icmp eq i32 %_6, %_7
  br i1 %_5, label %bb8, label %bb7

bb7:                                              ; preds = %start
  store i8 0, i8* %_4, align 1
  br label %bb9

bb8:                                              ; preds = %start
  %3 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 1
  %_9 = load i64, i64* %3, align 1
  %4 = getelementptr inbounds %Zahl, %Zahl* %other, i32 0, i32 1
  %_10 = load i64, i64* %4, align 1
  %_8 = icmp eq i64 %_9, %_10
  %5 = zext i1 %_8 to i8
  store i8 %5, i8* %_4, align 1
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %6 = load i8, i8* %_4, align 1, !range !7, !noundef !1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb5, label %bb4

bb4:                                              ; preds = %bb9
  store i8 0, i8* %_3, align 1
  br label %bb6

bb5:                                              ; preds = %bb9
  %8 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  %_12 = load i64, i64* %8, align 1
  %9 = getelementptr inbounds %Zahl, %Zahl* %other, i32 0, i32 2
  %_13 = load i64, i64* %9, align 1
  %_11 = icmp eq i64 %_12, %_13
  %10 = zext i1 %_11 to i8
  store i8 %10, i8* %_3, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  %11 = load i8, i8* %_3, align 1, !range !7, !noundef !1
  %12 = trunc i8 %11 to i1
  br i1 %12, label %bb2, label %bb1

bb1:                                              ; preds = %bb6
  store i8 0, i8* %0, align 1
  br label %bb3

bb2:                                              ; preds = %bb6
  %_15 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 3
  %_16 = getelementptr inbounds %Zahl, %Zahl* %other, i32 0, i32 3
  %_14 = call zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd7da99ac11b4d861E"(%"alloc::vec::Vec<u64>"* align 8 %_15, %"alloc::vec::Vec<u64>"* align 8 %_16)
  br label %bb10

bb10:                                             ; preds = %bb2
  %13 = zext i1 %_14 to i8
  store i8 %13, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb10, %bb1
  %14 = load i8, i8* %0, align 1, !range !7, !noundef !1
  %15 = trunc i8 %14 to i1
  ret i1 %15
}

; Function Attrs: uwtable
define void @new(%Zahl* sret(%Zahl) %0, i64 %alloced) unnamed_addr #1 {
start:
  %_3 = alloca %"alloc::vec::Vec<u64>", align 8
  call void @_ZN5alloc3vec9from_elem17h1a1c6ee1c22ea3d7E(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %_3, i64 0, i64 %alloced)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %Zahl* %0 to i32*
  store i32 0, i32* %1, align 1
  %2 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 1
  store i64 0, i64* %2, align 1
  %3 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  store i64 %alloced, i64* %3, align 1
  %4 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 3
  %5 = bitcast %"alloc::vec::Vec<u64>"* %4 to i8*
  %6 = bitcast %"alloc::vec::Vec<u64>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %6, i64 24, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @realloc(%Zahl* align 1 %self, i64 %new_size) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  %_4 = load i64, i64* %0, align 1
  %_3 = icmp ult i64 %_4, %new_size
  br i1 %_3, label %bb1, label %bb3

bb3:                                              ; preds = %bb2, %start
  ret void

bb1:                                              ; preds = %start
  %_7 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 3
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hb5c0a9fc93fed5feE"(%"alloc::vec::Vec<u64>"* align 8 %_7, i64 %new_size, i64 0)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  store i64 %new_size, i64* %1, align 1
  br label %bb3
}

; Function Attrs: uwtable
define void @zset(%Zahl* align 1 %a, %Zahl* align 1 %b) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_8 = alloca %"alloc::vec::Vec<u64>", align 8
  %_6 = alloca %"alloc::vec::Vec<u64>", align 8
  %1 = bitcast %Zahl* %b to i32*
  %_3 = load i32, i32* %1, align 1
  %2 = bitcast %Zahl* %a to i32*
  store i32 %_3, i32* %2, align 1
  %3 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 1
  %_4 = load i64, i64* %3, align 1
  %4 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 1
  store i64 %_4, i64* %4, align 1
  %5 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_5 = load i64, i64* %5, align 1
  %6 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  store i64 %_5, i64* %6, align 1
  %_7 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 3
  call void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd87fd617a87b3cbcE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %_6, %"alloc::vec::Vec<u64>"* align 8 %_7)
  br label %bb1

bb1:                                              ; preds = %start
  %7 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 3
  %8 = bitcast %"alloc::vec::Vec<u64>"* %_8 to i8*
  %9 = bitcast %"alloc::vec::Vec<u64>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 1 %9, i64 24, i1 false)
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17he56685132b9757d5E"(%"alloc::vec::Vec<u64>"* %_8)
          to label %bb3 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  %10 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 3
  %11 = bitcast %"alloc::vec::Vec<u64>"* %10 to i8*
  %12 = bitcast %"alloc::vec::Vec<u64>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 8 %12, i64 24, i1 false)
  %13 = bitcast { i8*, i32 }* %0 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

cleanup:                                          ; preds = %bb1
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %bb2

bb3:                                              ; preds = %bb1
  %24 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 3
  %25 = bitcast %"alloc::vec::Vec<u64>"* %24 to i8*
  %26 = bitcast %"alloc::vec::Vec<u64>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 8 %26, i64 24, i1 false)
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @zzero(%Zahl* align 1 %z) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %Zahl, %Zahl* %z, i32 0, i32 1
  %_2 = load i64, i64* %0, align 1
  %1 = icmp eq i64 %_2, 0
  ret i1 %1
}

; Function Attrs: uwtable
define i32 @zsignum(%Zahl* align 1 %z) unnamed_addr #1 {
start:
  %0 = bitcast %Zahl* %z to i32*
  %1 = load i32, i32* %0, align 1
  ret i32 %1
}

; Function Attrs: uwtable
define void @zor(%Zahl* align 1 %0, %Zahl* align 1 %1, %Zahl* align 1 %2) unnamed_addr #1 {
start:
  %_181 = alloca i32, align 4
  %_177 = alloca { i64, i64 }, align 8
  %_170 = alloca { i64, i64 }, align 8
  %_150 = alloca { i64, i64 }, align 8
  %iter3 = alloca { i64, i64 }, align 8
  %_147 = alloca { i64, i64 }, align 8
  %_143 = alloca { i64, i64 }, align 8
  %_136 = alloca { i64, i64 }, align 8
  %_116 = alloca { i64, i64 }, align 8
  %iter2 = alloca { i64, i64 }, align 8
  %_113 = alloca { i64, i64 }, align 8
  %_106 = alloca { i64, i64 }, align 8
  %_99 = alloca { i64, i64 }, align 8
  %_76 = alloca { i64, i64 }, align 8
  %iter1 = alloca { i64, i64 }, align 8
  %_73 = alloca { i64, i64 }, align 8
  %_66 = alloca { i64, i64 }, align 8
  %_59 = alloca { i64, i64 }, align 8
  %_36 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_33 = alloca { i64, i64 }, align 8
  %c = alloca %Zahl*, align 8
  %b = alloca %Zahl*, align 8
  %a = alloca %Zahl*, align 8
  store %Zahl* %0, %Zahl** %a, align 8
  store %Zahl* %1, %Zahl** %b, align 8
  store %Zahl* %2, %Zahl** %c, align 8
  %_5 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %_4 = call zeroext i1 @zzero(%Zahl* align 1 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb5

bb5:                                              ; preds = %bb1
  %_13 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  %_12 = call zeroext i1 @zzero(%Zahl* align 1 %_13)
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call zeroext i1 @"_ZN4core3cmp5impls77_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$mut$u20$A$GT$2ne17he77b6c362d33a307E"(%Zahl** align 8 %a, %Zahl** align 8 %c)
  br label %bb3

bb3:                                              ; preds = %bb2
  br i1 %_6, label %bb4, label %bb75

bb75:                                             ; preds = %bb74, %bb9, %bb8, %bb4, %bb3
  ret void

bb4:                                              ; preds = %bb3
  %_10 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %_11 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  call void @zset(%Zahl* align 1 %_10, %Zahl* align 1 %_11)
  br label %bb75

bb6:                                              ; preds = %bb5
  br i1 %_12, label %bb7, label %bb10

bb10:                                             ; preds = %bb6
  %3 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %4 = getelementptr inbounds %Zahl, %Zahl* %3, i32 0, i32 1
  %_21 = load i64, i64* %4, align 1
  %5 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  %6 = getelementptr inbounds %Zahl, %Zahl* %5, i32 0, i32 1
  %_22 = load i64, i64* %6, align 1
  %n = call i64 @_ZN4core3cmp3min17hd6639f6d44a3f92dE(i64 %_21, i64 %_22)
  br label %bb11

bb7:                                              ; preds = %bb6
  %_14 = call zeroext i1 @"_ZN4core3cmp5impls77_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$mut$u20$A$GT$2ne17he77b6c362d33a307E"(%Zahl** align 8 %a, %Zahl** align 8 %b)
  br label %bb8

bb8:                                              ; preds = %bb7
  br i1 %_14, label %bb9, label %bb75

bb9:                                              ; preds = %bb8
  %_18 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %_19 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  call void @zset(%Zahl* align 1 %_18, %Zahl* align 1 %_19)
  br label %bb75

bb11:                                             ; preds = %bb10
  %7 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %8 = getelementptr inbounds %Zahl, %Zahl* %7, i32 0, i32 1
  %_24 = load i64, i64* %8, align 1
  %9 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  %10 = getelementptr inbounds %Zahl, %Zahl* %9, i32 0, i32 1
  %_25 = load i64, i64* %10, align 1
  %m = call i64 @_ZN4core3cmp3Ord3max17h120de97d515b3016E(i64 %_24, i64 %_25)
  br label %bb12

bb12:                                             ; preds = %bb11
  %_27 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  call void @realloc(%Zahl* align 1 %_27, i64 %m)
  br label %bb13

bb13:                                             ; preds = %bb12
  %_29 = call zeroext i1 @"_ZN4core3cmp5impls77_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$mut$u20$A$GT$2eq17h402514c62cd44ffaE"(%Zahl** align 8 %a, %Zahl** align 8 %b)
  br label %bb14

bb14:                                             ; preds = %bb13
  br i1 %_29, label %bb15, label %bb28

bb28:                                             ; preds = %bb14
  %_69 = call zeroext i1 @"_ZN4core3cmp5impls77_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$mut$u20$A$GT$2eq17h402514c62cd44ffaE"(%Zahl** align 8 %a, %Zahl** align 8 %c)
  br label %bb29

bb15:                                             ; preds = %bb14
  %11 = bitcast { i64, i64 }* %_33 to i64*
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_33, i32 0, i32 1
  store i64 %n, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_33, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_33, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE"(i64 %14, i64 %16)
  %_32.0 = extractvalue { i64, i64 } %17, 0
  %_32.1 = extractvalue { i64, i64 } %17, 1
  br label %bb16

bb16:                                             ; preds = %bb15
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0
  store i64 %_32.0, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1
  store i64 %_32.1, i64* %19, align 8
  br label %bb17

bb17:                                             ; preds = %bb24, %bb16
  %20 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E"({ i64, i64 }* align 8 %iter)
  store { i64, i64 } %20, { i64, i64 }* %_36, align 8
  br label %bb18

bb18:                                             ; preds = %bb17
  %21 = bitcast { i64, i64 }* %_36 to i64*
  %_39 = load i64, i64* %21, align 8, !range !11, !noundef !1
  switch i64 %_39, label %bb20 [
    i64 0, label %bb21
    i64 1, label %bb19
  ]

bb20:                                             ; preds = %bb18
  unreachable

bb21:                                             ; preds = %bb18
  %22 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %23 = getelementptr inbounds %Zahl, %Zahl* %22, i32 0, i32 1
  %_53 = load i64, i64* %23, align 1
  %24 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  %25 = getelementptr inbounds %Zahl, %Zahl* %24, i32 0, i32 1
  %_54 = load i64, i64* %25, align 1
  %_52 = icmp ult i64 %_53, %_54
  br i1 %_52, label %bb25, label %bb68

bb19:                                             ; preds = %bb18
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_36, i32 0, i32 1
  %i = load i64, i64* %26, align 8
  %27 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %_43 = getelementptr inbounds %Zahl, %Zahl* %27, i32 0, i32 3
  %_42 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf918e862abedcdb2E"(%"alloc::vec::Vec<u64>"* align 8 %_43, i64 %i, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc212 to %"core::panic::location::Location"*))
  br label %bb22

bb22:                                             ; preds = %bb19
  %_41 = load i64, i64* %_42, align 8
  %28 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  %_47 = getelementptr inbounds %Zahl, %Zahl* %28, i32 0, i32 3
  %_46 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf918e862abedcdb2E"(%"alloc::vec::Vec<u64>"* align 8 %_47, i64 %i, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc214 to %"core::panic::location::Location"*))
  br label %bb23

bb23:                                             ; preds = %bb22
  %_45 = load i64, i64* %_46, align 8
  %29 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %_50 = getelementptr inbounds %Zahl, %Zahl* %29, i32 0, i32 3
  %_49 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb7d5c81399a577acE"(%"alloc::vec::Vec<u64>"* align 8 %_50, i64 %i, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc216 to %"core::panic::location::Location"*))
  br label %bb24

bb24:                                             ; preds = %bb23
  %30 = or i64 %_41, %_45
  store i64 %30, i64* %_49, align 8
  br label %bb17

bb68:                                             ; preds = %bb67, %bb55, %bb42, %bb36, %bb27, %bb21
  %31 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %32 = getelementptr inbounds %Zahl, %Zahl* %31, i32 0, i32 1
  store i64 %m, i64* %32, align 1
  %_184 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %_183 = call i32 @zsignum(%Zahl* align 1 %_184)
  br label %bb69

bb25:                                             ; preds = %bb21
  %33 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %_58 = getelementptr inbounds %Zahl, %Zahl* %33, i32 0, i32 3
  %34 = bitcast { i64, i64 }* %_59 to i64*
  store i64 %n, i64* %34, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_59, i32 0, i32 1
  store i64 %m, i64* %35, align 8
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_59, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_59, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call { [0 x i64]*, i64 } @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h629669bbcb2f6229E"(%"alloc::vec::Vec<u64>"* align 8 %_58, i64 %37, i64 %39, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc218 to %"core::panic::location::Location"*))
  %_57.0 = extractvalue { [0 x i64]*, i64 } %40, 0
  %_57.1 = extractvalue { [0 x i64]*, i64 } %40, 1
  br label %bb26

bb26:                                             ; preds = %bb25
  %41 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  %_65 = getelementptr inbounds %Zahl, %Zahl* %41, i32 0, i32 3
  %42 = bitcast { i64, i64 }* %_66 to i64*
  store i64 %n, i64* %42, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_66, i32 0, i32 1
  store i64 %m, i64* %43, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_66, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_66, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call { [0 x i64]*, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5816d5875f5eacddE"(%"alloc::vec::Vec<u64>"* align 8 %_65, i64 %45, i64 %47, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc220 to %"core::panic::location::Location"*))
  %_64.0 = extractvalue { [0 x i64]*, i64 } %48, 0
  %_64.1 = extractvalue { [0 x i64]*, i64 } %48, 1
  br label %bb27

bb27:                                             ; preds = %bb26
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h6254e583085025cdE"([0 x i64]* align 8 %_57.0, i64 %_57.1, [0 x i64]* align 8 %_64.0, i64 %_64.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc222 to %"core::panic::location::Location"*))
  br label %bb68

bb29:                                             ; preds = %bb28
  br i1 %_69, label %bb30, label %bb43

bb43:                                             ; preds = %bb29
  %49 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %50 = getelementptr inbounds %Zahl, %Zahl* %49, i32 0, i32 1
  %_111 = load i64, i64* %50, align 1
  %_109 = icmp eq i64 %m, %_111
  br i1 %_109, label %bb44, label %bb56

bb30:                                             ; preds = %bb29
  %51 = bitcast { i64, i64 }* %_73 to i64*
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_73, i32 0, i32 1
  store i64 %n, i64* %52, align 8
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_73, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_73, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE"(i64 %54, i64 %56)
  %_72.0 = extractvalue { i64, i64 } %57, 0
  %_72.1 = extractvalue { i64, i64 } %57, 1
  br label %bb31

bb31:                                             ; preds = %bb30
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter1, i32 0, i32 0
  store i64 %_72.0, i64* %58, align 8
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter1, i32 0, i32 1
  store i64 %_72.1, i64* %59, align 8
  br label %bb32

bb32:                                             ; preds = %bb39, %bb31
  %60 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E"({ i64, i64 }* align 8 %iter1)
  store { i64, i64 } %60, { i64, i64 }* %_76, align 8
  br label %bb33

bb33:                                             ; preds = %bb32
  %61 = bitcast { i64, i64 }* %_76 to i64*
  %_79 = load i64, i64* %61, align 8, !range !11, !noundef !1
  switch i64 %_79, label %bb35 [
    i64 0, label %bb36
    i64 1, label %bb34
  ]

bb35:                                             ; preds = %bb33
  unreachable

bb36:                                             ; preds = %bb33
  %62 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %63 = getelementptr inbounds %Zahl, %Zahl* %62, i32 0, i32 1
  %_93 = load i64, i64* %63, align 1
  %64 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %65 = getelementptr inbounds %Zahl, %Zahl* %64, i32 0, i32 1
  %_94 = load i64, i64* %65, align 1
  %_92 = icmp ult i64 %_93, %_94
  br i1 %_92, label %bb40, label %bb68

bb34:                                             ; preds = %bb33
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_76, i32 0, i32 1
  %i4 = load i64, i64* %66, align 8
  %67 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %_83 = getelementptr inbounds %Zahl, %Zahl* %67, i32 0, i32 3
  %_82 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf918e862abedcdb2E"(%"alloc::vec::Vec<u64>"* align 8 %_83, i64 %i4, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc224 to %"core::panic::location::Location"*))
  br label %bb37

bb37:                                             ; preds = %bb34
  %_81 = load i64, i64* %_82, align 8
  %68 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  %_87 = getelementptr inbounds %Zahl, %Zahl* %68, i32 0, i32 3
  %_86 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf918e862abedcdb2E"(%"alloc::vec::Vec<u64>"* align 8 %_87, i64 %i4, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc226 to %"core::panic::location::Location"*))
  br label %bb38

bb38:                                             ; preds = %bb37
  %_85 = load i64, i64* %_86, align 8
  %69 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %_90 = getelementptr inbounds %Zahl, %Zahl* %69, i32 0, i32 3
  %_89 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb7d5c81399a577acE"(%"alloc::vec::Vec<u64>"* align 8 %_90, i64 %i4, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc228 to %"core::panic::location::Location"*))
  br label %bb39

bb39:                                             ; preds = %bb38
  %70 = or i64 %_81, %_85
  store i64 %70, i64* %_89, align 8
  br label %bb32

bb40:                                             ; preds = %bb36
  %71 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %_98 = getelementptr inbounds %Zahl, %Zahl* %71, i32 0, i32 3
  %72 = bitcast { i64, i64 }* %_99 to i64*
  store i64 %n, i64* %72, align 8
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_99, i32 0, i32 1
  store i64 %m, i64* %73, align 8
  %74 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_99, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_99, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call { [0 x i64]*, i64 } @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h629669bbcb2f6229E"(%"alloc::vec::Vec<u64>"* align 8 %_98, i64 %75, i64 %77, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc230 to %"core::panic::location::Location"*))
  %_97.0 = extractvalue { [0 x i64]*, i64 } %78, 0
  %_97.1 = extractvalue { [0 x i64]*, i64 } %78, 1
  br label %bb41

bb41:                                             ; preds = %bb40
  %79 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %_105 = getelementptr inbounds %Zahl, %Zahl* %79, i32 0, i32 3
  %80 = bitcast { i64, i64 }* %_106 to i64*
  store i64 %n, i64* %80, align 8
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_106, i32 0, i32 1
  store i64 %m, i64* %81, align 8
  %82 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_106, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_106, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call { [0 x i64]*, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5816d5875f5eacddE"(%"alloc::vec::Vec<u64>"* align 8 %_105, i64 %83, i64 %85, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc232 to %"core::panic::location::Location"*))
  %_104.0 = extractvalue { [0 x i64]*, i64 } %86, 0
  %_104.1 = extractvalue { [0 x i64]*, i64 } %86, 1
  br label %bb42

bb42:                                             ; preds = %bb41
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h6254e583085025cdE"([0 x i64]* align 8 %_97.0, i64 %_97.1, [0 x i64]* align 8 %_104.0, i64 %_104.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc234 to %"core::panic::location::Location"*))
  br label %bb68

bb56:                                             ; preds = %bb43
  %87 = bitcast { i64, i64 }* %_147 to i64*
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_147, i32 0, i32 1
  store i64 %n, i64* %88, align 8
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_147, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_147, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE"(i64 %90, i64 %92)
  %_146.0 = extractvalue { i64, i64 } %93, 0
  %_146.1 = extractvalue { i64, i64 } %93, 1
  br label %bb57

bb44:                                             ; preds = %bb43
  %94 = bitcast { i64, i64 }* %_113 to i64*
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_113, i32 0, i32 1
  store i64 %n, i64* %95, align 8
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_113, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_113, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE"(i64 %97, i64 %99)
  %_112.0 = extractvalue { i64, i64 } %100, 0
  %_112.1 = extractvalue { i64, i64 } %100, 1
  br label %bb45

bb45:                                             ; preds = %bb44
  %101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter2, i32 0, i32 0
  store i64 %_112.0, i64* %101, align 8
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter2, i32 0, i32 1
  store i64 %_112.1, i64* %102, align 8
  br label %bb46

bb46:                                             ; preds = %bb53, %bb45
  %103 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E"({ i64, i64 }* align 8 %iter2)
  store { i64, i64 } %103, { i64, i64 }* %_116, align 8
  br label %bb47

bb47:                                             ; preds = %bb46
  %104 = bitcast { i64, i64 }* %_116 to i64*
  %_119 = load i64, i64* %104, align 8, !range !11, !noundef !1
  switch i64 %_119, label %bb49 [
    i64 0, label %bb50
    i64 1, label %bb48
  ]

bb49:                                             ; preds = %bb47
  unreachable

bb50:                                             ; preds = %bb47
  %105 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %_135 = getelementptr inbounds %Zahl, %Zahl* %105, i32 0, i32 3
  %106 = bitcast { i64, i64 }* %_136 to i64*
  store i64 %n, i64* %106, align 8
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_136, i32 0, i32 1
  store i64 %m, i64* %107, align 8
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_136, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_136, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call { [0 x i64]*, i64 } @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h629669bbcb2f6229E"(%"alloc::vec::Vec<u64>"* align 8 %_135, i64 %109, i64 %111, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc242 to %"core::panic::location::Location"*))
  %_134.0 = extractvalue { [0 x i64]*, i64 } %112, 0
  %_134.1 = extractvalue { [0 x i64]*, i64 } %112, 1
  br label %bb54

bb48:                                             ; preds = %bb47
  %113 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_116, i32 0, i32 1
  %i5 = load i64, i64* %113, align 8
  %114 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  %_123 = getelementptr inbounds %Zahl, %Zahl* %114, i32 0, i32 3
  %_122 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf918e862abedcdb2E"(%"alloc::vec::Vec<u64>"* align 8 %_123, i64 %i5, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc236 to %"core::panic::location::Location"*))
  br label %bb51

bb51:                                             ; preds = %bb48
  %_121 = load i64, i64* %_122, align 8
  %115 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %_127 = getelementptr inbounds %Zahl, %Zahl* %115, i32 0, i32 3
  %_126 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf918e862abedcdb2E"(%"alloc::vec::Vec<u64>"* align 8 %_127, i64 %i5, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc238 to %"core::panic::location::Location"*))
  br label %bb52

bb52:                                             ; preds = %bb51
  %_125 = load i64, i64* %_126, align 8
  %116 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %_130 = getelementptr inbounds %Zahl, %Zahl* %116, i32 0, i32 3
  %_129 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb7d5c81399a577acE"(%"alloc::vec::Vec<u64>"* align 8 %_130, i64 %i5, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc240 to %"core::panic::location::Location"*))
  br label %bb53

bb53:                                             ; preds = %bb52
  %117 = or i64 %_121, %_125
  store i64 %117, i64* %_129, align 8
  br label %bb46

bb54:                                             ; preds = %bb50
  %118 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %_142 = getelementptr inbounds %Zahl, %Zahl* %118, i32 0, i32 3
  %119 = bitcast { i64, i64 }* %_143 to i64*
  store i64 %n, i64* %119, align 8
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_143, i32 0, i32 1
  store i64 %m, i64* %120, align 8
  %121 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_143, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_143, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call { [0 x i64]*, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5816d5875f5eacddE"(%"alloc::vec::Vec<u64>"* align 8 %_142, i64 %122, i64 %124, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc244 to %"core::panic::location::Location"*))
  %_141.0 = extractvalue { [0 x i64]*, i64 } %125, 0
  %_141.1 = extractvalue { [0 x i64]*, i64 } %125, 1
  br label %bb55

bb55:                                             ; preds = %bb54
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h6254e583085025cdE"([0 x i64]* align 8 %_134.0, i64 %_134.1, [0 x i64]* align 8 %_141.0, i64 %_141.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc246 to %"core::panic::location::Location"*))
  br label %bb68

bb57:                                             ; preds = %bb56
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter3, i32 0, i32 0
  store i64 %_146.0, i64* %126, align 8
  %127 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter3, i32 0, i32 1
  store i64 %_146.1, i64* %127, align 8
  br label %bb58

bb58:                                             ; preds = %bb65, %bb57
  %128 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E"({ i64, i64 }* align 8 %iter3)
  store { i64, i64 } %128, { i64, i64 }* %_150, align 8
  br label %bb59

bb59:                                             ; preds = %bb58
  %129 = bitcast { i64, i64 }* %_150 to i64*
  %_153 = load i64, i64* %129, align 8, !range !11, !noundef !1
  switch i64 %_153, label %bb61 [
    i64 0, label %bb62
    i64 1, label %bb60
  ]

bb61:                                             ; preds = %bb59
  unreachable

bb62:                                             ; preds = %bb59
  %130 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %_169 = getelementptr inbounds %Zahl, %Zahl* %130, i32 0, i32 3
  %131 = bitcast { i64, i64 }* %_170 to i64*
  store i64 %n, i64* %131, align 8
  %132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_170, i32 0, i32 1
  store i64 %m, i64* %132, align 8
  %133 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_170, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_170, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call { [0 x i64]*, i64 } @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h629669bbcb2f6229E"(%"alloc::vec::Vec<u64>"* align 8 %_169, i64 %134, i64 %136, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc254 to %"core::panic::location::Location"*))
  %_168.0 = extractvalue { [0 x i64]*, i64 } %137, 0
  %_168.1 = extractvalue { [0 x i64]*, i64 } %137, 1
  br label %bb66

bb60:                                             ; preds = %bb59
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_150, i32 0, i32 1
  %i6 = load i64, i64* %138, align 8
  %139 = load %Zahl*, %Zahl** %b, align 8, !nonnull !1, !align !8, !noundef !1
  %_157 = getelementptr inbounds %Zahl, %Zahl* %139, i32 0, i32 3
  %_156 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf918e862abedcdb2E"(%"alloc::vec::Vec<u64>"* align 8 %_157, i64 %i6, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc248 to %"core::panic::location::Location"*))
  br label %bb63

bb63:                                             ; preds = %bb60
  %_155 = load i64, i64* %_156, align 8
  %140 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  %_161 = getelementptr inbounds %Zahl, %Zahl* %140, i32 0, i32 3
  %_160 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf918e862abedcdb2E"(%"alloc::vec::Vec<u64>"* align 8 %_161, i64 %i6, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc250 to %"core::panic::location::Location"*))
  br label %bb64

bb64:                                             ; preds = %bb63
  %_159 = load i64, i64* %_160, align 8
  %141 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %_164 = getelementptr inbounds %Zahl, %Zahl* %141, i32 0, i32 3
  %_163 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb7d5c81399a577acE"(%"alloc::vec::Vec<u64>"* align 8 %_164, i64 %i6, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc252 to %"core::panic::location::Location"*))
  br label %bb65

bb65:                                             ; preds = %bb64
  %142 = or i64 %_155, %_159
  store i64 %142, i64* %_163, align 8
  br label %bb58

bb66:                                             ; preds = %bb62
  %143 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  %_176 = getelementptr inbounds %Zahl, %Zahl* %143, i32 0, i32 3
  %144 = bitcast { i64, i64 }* %_177 to i64*
  store i64 %n, i64* %144, align 8
  %145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_177, i32 0, i32 1
  store i64 %m, i64* %145, align 8
  %146 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_177, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_177, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call { [0 x i64]*, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5816d5875f5eacddE"(%"alloc::vec::Vec<u64>"* align 8 %_176, i64 %147, i64 %149, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc256 to %"core::panic::location::Location"*))
  %_175.0 = extractvalue { [0 x i64]*, i64 } %150, 0
  %_175.1 = extractvalue { [0 x i64]*, i64 } %150, 1
  br label %bb67

bb67:                                             ; preds = %bb66
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h6254e583085025cdE"([0 x i64]* align 8 %_168.0, i64 %_168.1, [0 x i64]* align 8 %_175.0, i64 %_175.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc258 to %"core::panic::location::Location"*))
  br label %bb68

bb69:                                             ; preds = %bb68
  %_186 = load %Zahl*, %Zahl** %c, align 8, !nonnull !1, !align !8, !noundef !1
  %_185 = call i32 @zsignum(%Zahl* align 1 %_186)
  br label %bb70

bb70:                                             ; preds = %bb69
  %151 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_183, i32 %_185)
  %_187.0 = extractvalue { i32, i1 } %151, 0
  %_187.1 = extractvalue { i32, i1 } %151, 1
  %152 = call i1 @llvm.expect.i1(i1 %_187.1, i1 false)
  br i1 %152, label %panic, label %bb71

bb71:                                             ; preds = %bb70
  %153 = icmp eq i32 %_187.0, 2
  br i1 %153, label %bb72, label %bb73

panic:                                            ; preds = %bb70
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc260 to %"core::panic::location::Location"*)) #15
  unreachable

bb72:                                             ; preds = %bb71
  store i32 1, i32* %_181, align 4
  br label %bb74

bb73:                                             ; preds = %bb71
  store i32 -1, i32* %_181, align 4
  br label %bb74

bb74:                                             ; preds = %bb73, %bb72
  %154 = load %Zahl*, %Zahl** %a, align 8, !nonnull !1, !align !8, !noundef !1
  %155 = bitcast %Zahl* %154 to i32*
  %156 = load i32, i32* %_181, align 4
  store i32 %156, i32* %155, align 1
  br label %bb75
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_19 = alloca [1 x { i8*, i64* }], align 8
  %_12 = alloca %"core::fmt::Arguments", align 8
  %c = alloca %Zahl, align 1
  %b = alloca %Zahl, align 1
  %a = alloca %Zahl, align 1
  call void @new(%Zahl* sret(%Zahl) %a, i64 10)
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @new(%Zahl* sret(%Zahl) %b, i64 10)
          to label %bb2 unwind label %cleanup

bb13:                                             ; preds = %bb12, %cleanup
  invoke void @"_ZN4core3ptr30drop_in_place$LT$zor..Zahl$GT$17he75bae6729d2555bE"(%Zahl* %a) #16
          to label %bb14 unwind label %abort

cleanup:                                          ; preds = %bb8, %bb1
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  br label %bb13

bb2:                                              ; preds = %bb1
  invoke void @new(%Zahl* sret(%Zahl) %c, i64 10)
          to label %bb3 unwind label %cleanup1

bb12:                                             ; preds = %bb11, %cleanup1
  invoke void @"_ZN4core3ptr30drop_in_place$LT$zor..Zahl$GT$17he75bae6729d2555bE"(%Zahl* %b) #16
          to label %bb13 unwind label %abort

cleanup1:                                         ; preds = %bb7, %bb2
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb12

bb3:                                              ; preds = %bb2
  invoke void @zor(%Zahl* align 1 %a, %Zahl* align 1 %b, %Zahl* align 1 %c)
          to label %bb4 unwind label %cleanup2

bb11:                                             ; preds = %cleanup2
  invoke void @"_ZN4core3ptr30drop_in_place$LT$zor..Zahl$GT$17he75bae6729d2555bE"(%Zahl* %c) #16
          to label %bb12 unwind label %abort

cleanup2:                                         ; preds = %bb6, %bb5, %bb4, %bb3
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb11

bb4:                                              ; preds = %bb3
  %16 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17h9f3aef7f2e257a53E(%Zahl* align 1 %a)
          to label %bb5 unwind label %cleanup2

bb5:                                              ; preds = %bb4
  %_20.0 = extractvalue { i8*, i64* } %16, 0
  %_20.1 = extractvalue { i8*, i64* } %16, 1
  %17 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_19, i64 0, i64 0
  %18 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %17, i32 0, i32 0
  store i8* %_20.0, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %17, i32 0, i32 1
  store i64* %_20.1, i64** %19, align 8
  %_16.0 = bitcast [1 x { i8*, i64* }]* %_19 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117h8c291c64078786a1E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_12, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc62 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_16.0, i64 1)
          to label %bb6 unwind label %cleanup2

bb6:                                              ; preds = %bb5
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_12)
          to label %bb7 unwind label %cleanup2

bb7:                                              ; preds = %bb6
  invoke void @"_ZN4core3ptr30drop_in_place$LT$zor..Zahl$GT$17he75bae6729d2555bE"(%Zahl* %c)
          to label %bb8 unwind label %cleanup1

abort:                                            ; preds = %bb11, %bb12, %bb13
  %20 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb8:                                              ; preds = %bb7
  invoke void @"_ZN4core3ptr30drop_in_place$LT$zor..Zahl$GT$17he75bae6729d2555bE"(%Zahl* %b)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  call void @"_ZN4core3ptr30drop_in_place$LT$zor..Zahl$GT$17he75bae6729d2555bE"(%Zahl* %a)
  br label %bb10

bb14:                                             ; preds = %bb13
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

bb10:                                             ; preds = %bb9
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN46_$LT$zor..Zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d2bde8e807aa318E"(%Zahl* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
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
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h67d131540e48a232E(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc261 to [0 x i8]*), i64 4, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc262 to [0 x i8]*), i64 4, {}* align 1 %_12.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc266 to [0 x i8]*), i64 4, {}* align 1 %_17.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.3 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc270 to [0 x i8]*), i64 7, {}* align 1 %_22.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.3 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc271 to [0 x i8]*), i64 5, {}* align 1 %_27.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.4 to [3 x i64]*))
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h9950a42986e53ae1E(%"core::fmt::builders::DebugList"* sret(%"core::fmt::builders::DebugList"), %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17he9dcf78544f9bde4E(%"core::fmt::builders::DebugList"* align 8) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

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

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #10

; Function Attrs: cold noinline noreturn uwtable
declare void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h385a32756883e622E"(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #12

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #12

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #12

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #12

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #13

; Function Attrs: noreturn uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() unnamed_addr #14

; Function Attrs: uwtable
declare i32 @memcmp(i8*, i8*, i64) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #9

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h67d131540e48a232E(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { cold uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #11 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #13 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #14 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #15 = { noreturn }
attributes #16 = { noinline }
attributes #17 = { noinline noreturn nounwind }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 0, i64 -9223372036854775807}
!3 = !{i64 0, i64 -9223372036854775806}
!4 = !{i64 8}
!5 = !{i64 4}
!6 = !{i8 -1, i8 2}
!7 = !{i8 0, i8 2}
!8 = !{i64 1}
!9 = !{i64 1, i64 -9223372036854775807}
!10 = !{i64 1, i64 0}
!11 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zor.rs.bc", hash: (3388677847, 3725177278, 608525590, 233551664, 2469165252))
^1 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb5d5637c14577644E") ; guid = 13531240843763559
^2 = gv: (name: "_ZN4core3fmt9Formatter10debug_list17h9950a42986e53ae1E") ; guid = 244147525671112258
^3 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h0b92c97115bb119cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^170))))) ; guid = 283709981271633179
^4 = gv: (name: "_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h33e15af7d7ab1f42E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 70, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^128), (callee: ^16), (callee: ^73), (callee: ^180), (callee: ^120), (callee: ^312)), refs: (^241)))) ; guid = 291601752238276683
^5 = gv: (name: "_ZN5alloc7raw_vec11finish_grow17h1f3857e3f7240ff1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 117, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^3), (callee: ^110), (callee: ^44), (callee: ^95), (callee: ^175), (callee: ^162), (callee: ^279), (callee: ^61), (callee: ^11), (callee: ^187), (callee: ^148)), refs: (^138, ^251)))) ; guid = 320327618013247295
^6 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h05863e0c4ef7d1d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^295)), refs: (^241)))) ; guid = 553997362089445050
^7 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^8 = gv: (name: "_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE") ; guid = 682884734678583306
^9 = gv: (name: "_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4next17h6b48ecf0f76a381fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^160))))) ; guid = 754090631194762049
^10 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h5b0eb681cb654974E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^308))))) ; guid = 761498917990150024
^11 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h825328fd89ea3f9cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^299))))) ; guid = 836931729883044646
^12 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^13 = gv: (name: "alloc254", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 1038435730101752724
^14 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h721c5da3ac4a45f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^94), (callee: ^43), (callee: ^181), (callee: ^255)), refs: (^105)))) ; guid = 1039983022464975653
^15 = gv: (name: "alloc200", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^237)))) ; guid = 1098235671409806409
^16 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hf68ec2818a6cb953E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^300))))) ; guid = 1187265908444998890
^17 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h627051b8f8e0b186E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1283906489988851780
^18 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h4ab65048e4d9d2deE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 1312515842227811069
^19 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2d59897f44560109E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 1317209144076623200
^20 = gv: (name: "_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hc0a78b99ac3a210dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^190), (callee: ^231))))) ; guid = 1324647485503518999
^21 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^93, ^116)))) ; guid = 1378526489074666290
^22 = gv: (name: "_ZN4core5slice3raw18from_raw_parts_mut17h4c993e0acc455df5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^266))))) ; guid = 1438848089091459624
^23 = gv: (name: "_ZN4core3ptr5write17hcaf7d082d308e6c5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 1512904160789055518
^24 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^25 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hea80b0076ac65751E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 1593959316200636748
^26 = gv: (name: "alloc240", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 1612402734241793903
^27 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdf203489a06b0168E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^182))))) ; guid = 1797280655573384975
^28 = gv: (name: "alloc226", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 1854732115118923261
^29 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hdb664b275c5afa94E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1935083650817748126
^30 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h62406974985413c8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 1958455532936044997
^31 = gv: (name: "_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E") ; guid = 1967081855160219432
^32 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17ha05a9c1181ebe455E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 2052106812169730923
^33 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2b89ba15db4ce221E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37))) ; guid = 2119333973161139688
^34 = gv: (name: "_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hee464270d5591f30E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 2164627898013451071
^35 = gv: (name: "_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h48b9f44e5e3efcb4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 2267432574151190306
^36 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha06bc09aa2b8353bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2387094069217258554
^37 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hc47d586d710cd196E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^100), (callee: ^121), (callee: ^54))))) ; guid = 2440939933342871169
^38 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^39 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hd085453daf223edaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^212), (callee: ^267))))) ; guid = 2589538767987168114
^40 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h9dbd92d50b03adf4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^299))))) ; guid = 2758516332582508205
^41 = gv: (name: "alloc236", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 2764920639304215230
^42 = gv: (name: "alloc232", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 2806225942569949117
^43 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hbc2a2325b1ccbc24E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^47)), refs: (^241)))) ; guid = 2841802738428162337
^44 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h47ee9ba76a28bda8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 2843708514474968752
^45 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^56, ^153)))) ; guid = 2888975612112156139
^46 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h5991736dcbf6e1d5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^230), (callee: ^74))))) ; guid = 3156863889132925517
^47 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h9254c36f7fcc1ff6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 3158816198492339243
^48 = gv: (name: "_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h004f7039aa5b4e9dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^190), (callee: ^145)), refs: (^241)))) ; guid = 3162004580905207264
^49 = gv: (name: "alloc260", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 3216300561358351517
^50 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef3dee8ea2cc36ecE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^46), (callee: ^266))))) ; guid = 3295507418788749391
^51 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hb5c0a9fc93fed5feE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^30), (callee: ^114), (callee: ^180)), refs: (^241)))) ; guid = 3409479239082107114
^52 = gv: (name: "_ZN4core3ptr30drop_in_place$LT$zor..Zahl$GT$17he75bae6729d2555bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^120))))) ; guid = 3546929012342280712
^53 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17he483437394ab2f09E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 3581808835093209955
^54 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hf5af1aeec53cdf89E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^224))))) ; guid = 3627328044883772066
^55 = gv: (name: "_ZN4core3cmp3max17h44313903260c6a53E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^285))))) ; guid = 3676847199880368033
^56 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf89b4ca3f7097b34E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^254))))) ; guid = 3759814646646911958
^57 = gv: (name: "_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5816d5875f5eacddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^190), (callee: ^152)), refs: (^241)))) ; guid = 3783118118023675945
^58 = gv: (name: "alloc218", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 3836981437421970303
^59 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17hd43ea4bd5ec1720dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^61), (callee: ^267))))) ; guid = 3910611144868685644
^60 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h1637a3ed9d7ae4d9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3972655703065370815
^61 = gv: (name: "_ZN4core5alloc6layout6Layout5align17hd8bc7f403864293eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^184), (callee: ^240))))) ; guid = 4007458030596700271
^62 = gv: (name: "alloc259", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4081412628259798070
^63 = gv: (name: "alloc191", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4185137641280352271
^64 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h9736a36c29da1afeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42, calls: ((callee: ^139), (callee: ^156), (callee: ^224))))) ; guid = 4202614986684157301
^65 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2458bfbee117db07E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^274), (callee: ^225), (callee: ^301))))) ; guid = 4217425815769700517
^66 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17hc8a76db07a1c288dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^230), (callee: ^74))))) ; guid = 4279828081314329373
^67 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17ha8f927e500e25db3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^269))))) ; guid = 4334391807555125882
^68 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h221a3bdeefb68a0fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 4474819593306587373
^69 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h8003384236215671E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34))) ; guid = 4568577394875171138
^70 = gv: (name: "alloc189", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4592565522228619385
^71 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^72 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hf72dcd33a462d073E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^206))))) ; guid = 4728016374791275450
^73 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$23with_capacity_zeroed_in17h0e632272d9fe6df5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^249))))) ; guid = 4818285284066587150
^74 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hc9a148887cceb263E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^25), (callee: ^122))))) ; guid = 5009033786450096640
^75 = gv: (name: "vtable.4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^106, ^84)))) ; guid = 5009680919245933129
^76 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17hc7ea05045a8ba070E") ; guid = 5150825748678139413
^77 = gv: (name: "_ZN4core3ptr5write17h822d25deede14e61E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 5276412841533995831
^78 = gv: (name: "_ZN5alloc5alloc6Global9grow_impl17h7fb066948536e1d8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 134, calls: ((callee: ^44), (callee: ^299), (callee: ^61), (callee: ^296), (callee: ^247), (callee: ^87), (callee: ^68), (callee: ^36), (callee: ^242), (callee: ^239), (callee: ^90), (callee: ^33), (callee: ^86), (callee: ^219), (callee: ^82)), refs: (^310, ^15)))) ; guid = 5334719101810071937
^79 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 5436943481773832288
^80 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hf75cac612969e683E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^117), (callee: ^267))))) ; guid = 5563980212034577057
^81 = gv: (name: "alloc220", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 5566897126756106257
^82 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb295b6c564f0f199E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^44), (callee: ^296), (callee: ^303))))) ; guid = 5621504018667551460
^83 = gv: (name: "_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E") ; guid = 5691937269951177933
^84 = gv: (name: "_ZN4core3ptr51drop_in_place$LT$$RF$alloc..vec..Vec$LT$u64$GT$$GT$17ha92eab89b1f9f852E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 5719268203097970032
^85 = gv: (name: "alloc271", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5767955740099667905
^86 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hde86bf2473f57126E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^39), (callee: ^296))))) ; guid = 5982308842891703778
^87 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h65863f0d3e40ae60E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^101), (callee: ^267))))) ; guid = 6003841061832894961
^88 = gv: (name: "_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h045e444680c901b5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 6021264384275365513
^89 = gv: (name: "_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17h963d05e0b75f9a67E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 6063660966551350691
^90 = gv: (name: "_ZN4core10intrinsics11write_bytes17h28a2a389e824f8e8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 6091100662320117670
^91 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 6094021518949415970
^92 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h118cedde41f03d96E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 6112279973099445677
^93 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4eb2114633d1eaa7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^111))))) ; guid = 6118762466717118777
^94 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h78eb447723b20597E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^18), (callee: ^292), (callee: ^19), (callee: ^119), (callee: ^134)), refs: (^302)))) ; guid = 6135156223384599195
^95 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9a86d56b10145797E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^144))))) ; guid = 6180222789859442917
^96 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17haf57f95fedda1a10E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^121), (callee: ^267))))) ; guid = 6263164849688050967
^97 = gv: (name: "_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4last17h3b4022104bb3d9c7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 6302912342666322456
^98 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h96ddfc209ed515e2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 6309868495747103623
^99 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h4c41c656e3b34eefE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 6310288060223452082
^100 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h37cf5dc7256a4938E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^212), (callee: ^224))))) ; guid = 6327203189022920153
^101 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he2061836f7c0c1a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^25), (callee: ^122))))) ; guid = 6362501121166946540
^102 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^103 = gv: (name: "_ZN5alloc11collections15TryReserveError4kind17h837d6305e0445cd1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^218))))) ; guid = 6530171200841195186
^104 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^105 = gv: (name: "alloc206", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^286)))) ; guid = 6577009512952626522
^106 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h790fe9d8ffcefb2fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^20))))) ; guid = 6584056084727545125
^107 = gv: (name: "new", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^313))))) ; guid = 6686536032942599970
^108 = gv: (name: "_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf918e862abedcdb2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^190), (callee: ^222)), refs: (^241)))) ; guid = 6717258859858655700
^109 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h8bf5039385445b5fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 6793158654287148712
^110 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h33b8f157e289c0adE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 6801967872371875595
^111 = gv: (name: "_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hb7bc7fefac332e62E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^31), (callee: ^83), (callee: ^213), (callee: ^1), (callee: ^76))))) ; guid = 6813278994465851480
^112 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^113 = gv: (name: "alloc250", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 6893274298149087404
^114 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17h80ab3decc10a61d1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^46), (callee: ^266))))) ; guid = 6937409718494221603
^115 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17h7740e3123874ab89E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 6937471510092835486
^116 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$u64$GT$17hc7ba76ef07fced44E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 6941367615097802633
^117 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd1d88053fa41a48cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^296))))) ; guid = 6982946479818797862
^118 = gv: (name: "alloc256", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 7130675111539889137
^119 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h50b6d17bee33bff1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^53))))) ; guid = 7160619622597546339
^120 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17he56685132b9757d5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^50), (callee: ^211), (callee: ^312)), refs: (^241)))) ; guid = 7161403756083473700
^121 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9cc98e7b4a6a9ed8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 7295591886634166667
^122 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h48ab981f968800b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 7560470800987052036
^123 = gv: (name: "realloc", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^51))))) ; guid = 7583189270308489800
^124 = gv: (name: "alloc252", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 7614439125320938144
^125 = gv: (name: "_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h93c75e9aed9a67c8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7))) ; guid = 7746378506414872165
^126 = gv: (name: "alloc216", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 7796413362873611383
^127 = gv: (name: "alloc242", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 7950667877523495888
^128 = gv: (name: "_ZN51_$LT$u64$u20$as$u20$alloc..vec..is_zero..IsZero$GT$7is_zero17h6159baa2d6781121E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^278)), refs: (^131)))) ; guid = 7985233131417585110
^129 = gv: (name: "vtable.3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^27, ^88)))) ; guid = 8028189581867569324
^130 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h8d9f88036f66a38dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 8043079412465552824
^131 = gv: (name: "alloc61", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8138493034023521309
^132 = gv: (name: "_ZN4core3mem11size_of_val17he5842cc26c350a42E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 8234279608049283356
^133 = gv: (name: "alloc188", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^186)))) ; guid = 8298322377727279692
^134 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha17828bd78c12d8aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^109))))) ; guid = 8422456062934611081
^135 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8448300310158874868
^136 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h6254e583085025cdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^139), (callee: ^188), (callee: ^229), (callee: ^269))))) ; guid = 8455931474786224264
^137 = gv: (name: "_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17hffb66b173fa320e8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^228))))) ; guid = 8488154478801296071
^138 = gv: (name: "alloc202", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^286)))) ; guid = 8601958603749950139
^139 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha7f4dad1f9289418E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 8609649303835645240
^140 = gv: (name: "alloc214", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 8673064139962773844
^141 = gv: (name: "_ZN4core3fmt8builders9DebugList6finish17he9dcf78544f9bde4E") ; guid = 8728173401437660708
^142 = gv: (name: "zor", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 415, calls: ((callee: ^79), (callee: ^193), (callee: ^288), (callee: ^149), (callee: ^285), (callee: ^123), (callee: ^167), (callee: ^91), (callee: ^282), (callee: ^108), (callee: ^210), (callee: ^253), (callee: ^155), (callee: ^57), (callee: ^136), (callee: ^172)), refs: (^216, ^140, ^126, ^58, ^81, ^215, ^261, ^28, ^143, ^243, ^42, ^307, ^127, ^41, ^178, ^26, ^217, ^298, ^13, ^191, ^113, ^124, ^118, ^154, ^49, ^135)))) ; guid = 8736019892281208779
^143 = gv: (name: "alloc228", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 8813230198805639800
^144 = gv: (name: "_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h5cd783dbce492aecE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 8862143130571586687
^145 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h8728e8215ab6ad3fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^34))))) ; guid = 8958573182069281240
^146 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h80eeab052311dedaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^176))))) ; guid = 9032770357218166136
^147 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hcfd19c5fa013a592E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^65))))) ; guid = 9124523618167770263
^148 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h0f62454ec75a5d52E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^78))))) ; guid = 9174234525576093558
^149 = gv: (name: "_ZN4core3cmp3min17hd6639f6d44a3f92dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^311))))) ; guid = 9177750182514112447
^150 = gv: (name: "_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17hd3f9caf1480a8cddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^248))))) ; guid = 9291082543919332019
^151 = gv: (name: "alloc208", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^286)))) ; guid = 9309471196481797208
^152 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h515704fb16e76901E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^260))))) ; guid = 9354958019625162160
^153 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17he222b51159c9e281E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 9412265934411990380
^154 = gv: (name: "alloc258", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 9513790918463695281
^155 = gv: (name: "_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h629669bbcb2f6229E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^252), (callee: ^147)), refs: (^241)))) ; guid = 9556547464792188194
^156 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hec03e3983627472dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^221), (callee: ^195))))) ; guid = 9599790261306960982
^157 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h620d3c59345dbfa1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 9622657775455378858
^158 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h4031d47a1796f121E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^283), (callee: ^256))))) ; guid = 9721763328305829959
^159 = gv: (name: "_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hcd143511bae9b4bdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^238))))) ; guid = 9723965010160524851
^160 = gv: (name: "_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17h6b1bf12af8a88292E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 9814472667134099794
^161 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5fa3bf0175162462E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 38))) ; guid = 9904062246400287594
^162 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7ef4130d25565c7fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 45))) ; guid = 9911125730996343396
^163 = gv: (name: "alloc196", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^237)))) ; guid = 9917330464661595447
^164 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17he11ca3055e80e383E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 114, calls: ((callee: ^275), (callee: ^171), (callee: ^69), (callee: ^161), (callee: ^55), (callee: ^202), (callee: ^94), (callee: ^14), (callee: ^5), (callee: ^197), (callee: ^37), (callee: ^199)), refs: (^151, ^263)))) ; guid = 9966105235451300378
^165 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hb2615fd507592c38E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 9999976831018489973
^166 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd1916029b381a2d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^121))))) ; guid = 10004361169284539977
^167 = gv: (name: "_ZN4core3cmp5impls77_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$mut$u20$A$GT$2eq17h402514c62cd44ffaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^234))))) ; guid = 10017068103960802489
^168 = gv: (name: "_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd7da99ac11b4d861E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^48), (callee: ^137)), refs: (^185)))) ; guid = 10091698187311410837
^169 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ec2789c27ebbb13E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^14), (callee: ^82))))) ; guid = 10191431246544914673
^170 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h1238962e06335ca0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 10199749769942694423
^171 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h86a43d914affc73fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 10200256636349797533
^172 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^173 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^174 = gv: (name: "alloc261", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10322721029748111420
^175 = gv: (name: "_ZN5alloc7raw_vec11alloc_guard17hf2c0b9ef99269230E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 32, calls: ((callee: ^275))))) ; guid = 10464638029028944509
^176 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h101fa4f6287d5335E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^103))))) ; guid = 10529146213131062814
^177 = gv: (name: "llvm.sadd.with.overflow.i32") ; guid = 10553262824061260096
^178 = gv: (name: "alloc238", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 10601126576985691501
^179 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h698fcdde9ac10f0fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^224))))) ; guid = 10609813658254453134
^180 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h9440cd02f8d8fbbaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 103, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^189), (callee: ^46), (callee: ^30), (callee: ^209), (callee: ^91), (callee: ^159), (callee: ^282), (callee: ^9), (callee: ^77), (callee: ^89), (callee: ^97), (callee: ^312)), refs: (^241)))) ; guid = 10669241832944158773
^181 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5104c6904e16e5aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^96), (callee: ^99))))) ; guid = 10684789427839086985
^182 = gv: (name: "_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h1d4b25bf81635ee4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^31), (callee: ^83), (callee: ^196), (callee: ^12), (callee: ^306))))) ; guid = 10737476575823127596
^183 = gv: (name: "alloc96", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10739465266720136878
^184 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h164c15f688785081E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^165))))) ; guid = 10746745828713320175
^185 = gv: (name: "alloc194", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^250)))) ; guid = 10871252166106935776
^186 = gv: (name: "alloc187", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10884223612240640576
^187 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17heeac046156a7d5a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^276))))) ; guid = 10984276054737776681
^188 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h385a32756883e622E") ; guid = 11002506932041077682
^189 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6682520d958b8710E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^158))))) ; guid = 11066961139715907098
^190 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h45c6af0a402b6770E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^66), (callee: ^72))))) ; guid = 11090479998788699757
^191 = gv: (name: "alloc248", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 11313990644504973377
^192 = gv: (name: "alloc62", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^131, ^257)))) ; guid = 11344057888460211332
^193 = gv: (name: "_ZN4core3cmp5impls77_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$mut$u20$A$GT$2ne17he77b6c362d33a307E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^245))))) ; guid = 11504804163925050786
^194 = gv: (name: "_ZN4core3mem7replace17ha7d69cd4af2f2e70E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^264), (callee: ^23)), refs: (^241)))) ; guid = 11511676879417168641
^195 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h7c3b0307b828a41aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 11651842217338415338
^196 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E") ; guid = 11743839634310749277
^197 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfc66776c6a3b716aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 11768747435397569324
^198 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1509f39d29d855acE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^64))))) ; guid = 11788327888784764482
^199 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hf730cc67c9115516E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^92))))) ; guid = 11794081557967345610
^200 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h7a5e9cbb7827bfc6E") ; guid = 11841554529459563407
^201 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h3d59076bbe60aaf0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 11940975120004964441
^202 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd793ff92b44e7f89E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^144))))) ; guid = 11951783404957460433
^203 = gv: (name: "_ZN46_$LT$zor..Zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d2bde8e807aa318E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19, calls: ((callee: ^232)), refs: (^75, ^85, ^293, ^129, ^291, ^45, ^235, ^174)))) ; guid = 12072235692380116378
^204 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h73d7b5c940bc6831E") ; guid = 12218248418932013088
^205 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17hd3806f152ca829b4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^29))))) ; guid = 12238679931425933329
^206 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17hecce061d4adf3606E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^304), (callee: ^227))))) ; guid = 12267769676652263702
^207 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h5f02bd0ed792648aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 12268240083843019421
^208 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hccc4071f7470c347E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 12326863704891022068
^209 = gv: (name: "_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop3new17h08506a6c09cbd01dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 13))) ; guid = 12363066129516464566
^210 = gv: (name: "_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb7d5c81399a577acE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^252), (callee: ^214)), refs: (^241)))) ; guid = 12468871217463404467
^211 = gv: (name: "_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h89abff9784645b3fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^169))))) ; guid = 12529764087170570723
^212 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he58992e6ffd3f195E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 12580839183685597774
^213 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17haad3cb6efb015561E") ; guid = 12869305254914276560
^214 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h9edbcc17417b771dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^259))))) ; guid = 13015104565631836735
^215 = gv: (name: "alloc222", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 13081230517539451339
^216 = gv: (name: "alloc212", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 13109583664471620043
^217 = gv: (name: "alloc244", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 13164046904751889415
^218 = gv: (name: "_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h2e432c7b88703536E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 28, calls: ((callee: ^125))))) ; guid = 13208775417780540763
^219 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17h4bc7ce1013250896E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 13211449003935770253
^220 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^221 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h54d741883f378970E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 13575697931658778253
^222 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17haeba18d8256b458cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^10))))) ; guid = 13705938539577904149
^223 = gv: (name: "memcmp") ; guid = 13767193220660627266
^224 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1696b7d0e8fb946eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 13816484077353405220
^225 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb3baeed703b50edaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^266))))) ; guid = 13889126239546046238
^226 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h03da988fa910d80eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 13965860051440534779
^227 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hc7840662c754ac13E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 13971446626514297603
^228 = gv: (name: "_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h641c4f74c052adabE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^132), (callee: ^139), (callee: ^223))))) ; guid = 14058630362238712314
^229 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hed54c878ca1561a7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 14113069764885123065
^230 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h511e822316848dd8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^166))))) ; guid = 14118197912860531062
^231 = gv: (name: "_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h2817f81ef4d4311aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^2), (callee: ^198), (callee: ^273), (callee: ^141))))) ; guid = 14125256160735364263
^232 = gv: (name: "_ZN4core3fmt9Formatter26debug_struct_field4_finish17h67d131540e48a232E") ; guid = 14138163795757000930
^233 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve17h9451f3b5d77fba02E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 25, calls: ((callee: ^146), (callee: ^8), (callee: ^309))))) ; guid = 14191229331644446379
^234 = gv: (name: "eq", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^168))))) ; guid = 14217732238743773919
^235 = gv: (name: "alloc262", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14223321543944811445
^236 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^237 = gv: (name: "alloc199", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14331766299704108570
^238 = gv: (name: "_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha154a5567c66685cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 14429834339776729768
^239 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17ha503b05c1c545c6fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^296), (callee: ^205), (callee: ^208))))) ; guid = 14575589764575066095
^240 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17hb6574d08f3162923E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 14632474917618773970
^241 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^242 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3bbdb008729f39d1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^98))))) ; guid = 14873585591956961397
^243 = gv: (name: "alloc230", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 14884813684663250685
^244 = gv: (name: "alloc97", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^183)))) ; guid = 14939191729910803335
^245 = gv: (name: "_ZN4core3cmp9PartialEq2ne17h82c544f9d1a9cd60E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^234))))) ; guid = 14989521797334368783
^246 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h296cf19cc81cbd6fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 15045553556274794988
^247 = gv: (name: "_ZN5alloc5alloc7realloc17hec27c106d9552b28E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^44), (callee: ^61), (callee: ^258))))) ; guid = 15062254567077767383
^248 = gv: (name: "_ZN5alloc5slice4hack6to_vec17hbe23adf28a307fe3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^287))))) ; guid = 15115575533448135820
^249 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hfe07abd7fbd4ae4dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 127, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^94), (callee: ^6), (callee: ^44), (callee: ^8), (callee: ^175), (callee: ^11), (callee: ^40), (callee: ^100), (callee: ^309), (callee: ^121), (callee: ^54)), refs: (^241)))) ; guid = 15139818963912016728
^250 = gv: (name: "alloc193", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15165799068341860179
^251 = gv: (name: "alloc204", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^286)))) ; guid = 15237704448540793333
^252 = gv: (name: "_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h6d8270d7cec8faa6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^46), (callee: ^22))))) ; guid = 15266155033723317784
^253 = gv: (name: "zsignum", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 15352537659571043505
^254 = gv: (name: "_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h3adfbeb35dd743b0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^31), (callee: ^83), (callee: ^200), (callee: ^220), (callee: ^204))))) ; guid = 15364293277578181566
^255 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h5c209306d376e88bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^80))))) ; guid = 15415774399235930007
^256 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h6bb5070eed990ec3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^164), (callee: ^233))))) ; guid = 15447935220016348960
^257 = gv: (name: "alloc63", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15457241647161986678
^258 = gv: (name: "__rust_realloc") ; guid = 15507136812573830794
^259 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc607cfb61753a3c3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^308))))) ; guid = 15511370429407274191
^260 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h62e259019c7d3256E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^274), (callee: ^284), (callee: ^301))))) ; guid = 15555148138163581821
^261 = gv: (name: "alloc224", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 15611734067904267866
^262 = gv: (name: "_ZN4core3fmt10ArgumentV19new_debug17h9f3aef7f2e257a53E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^207)), refs: (^203)))) ; guid = 15627851818277876013
^263 = gv: (name: "alloc210", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^286)))) ; guid = 15679110522463303121
^264 = gv: (name: "_ZN4core3ptr4read17h1ad816d8f0f5a6c1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 15709170554919715921
^265 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 64, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^107), (callee: ^52), (callee: ^142), (callee: ^262), (callee: ^281), (callee: ^297), (callee: ^312)), refs: (^241, ^192)))) ; guid = 15822663052811949562
^266 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h296871ce0e0f94d3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^246))))) ; guid = 15860766759615241560
^267 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdecdaa56ba718e69E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 15878191638161262500
^268 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17h611adda108f732b0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^44), (callee: ^61), (callee: ^24))))) ; guid = 15972185063276049530
^269 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17hfdbf43b80292a54bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 15979439430197547879
^270 = gv: (name: "alloc190", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^70)))) ; guid = 16020305356755222044
^271 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^272 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17h63e0b90b218a3b43E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^115))))) ; guid = 16091898875359240960
^273 = gv: (name: "_ZN4core3fmt8builders9DebugList7entries17hf6c9ff00596de870E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^280), (callee: ^294), (callee: ^314)), refs: (^241, ^21)))) ; guid = 16189210342023466607
^274 = gv: (name: "_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E") ; guid = 16237673211549674151
^275 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hefcd8bd32b139ac1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^144))))) ; guid = 16437794110131416066
^276 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h0ac82e68154a3ba6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^275))))) ; guid = 16491689195163134324
^277 = gv: (name: "_ZN5alloc5alloc5alloc17h4e99ff43de797a69E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^44), (callee: ^61), (callee: ^173))))) ; guid = 16515051020267518620
^278 = gv: (name: "_ZN51_$LT$u64$u20$as$u20$alloc..vec..is_zero..IsZero$GT$7is_zero28_$u7b$$u7b$closure$u7d$$u7d$17hf11f8e31f7594e4aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 16590625219205503757
^279 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hb35caad2a39192dcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^92))))) ; guid = 16590795494588418076
^280 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2e2ae46617884713E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 16621784218950070480
^281 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h8c291c64078786a1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^281), (callee: ^271)), refs: (^131, ^244, ^133)))) ; guid = 16641259112099387671
^282 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^290))))) ; guid = 16716916109760828705
^283 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17h9b39e4d6aeb4bac5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 16798916576316362562
^284 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h70d5a9b4abedcd43E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^60), (callee: ^206))))) ; guid = 16808397668175408110
^285 = gv: (name: "_ZN4core3cmp3Ord3max17h120de97d515b3016E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^35)), refs: (^241)))) ; guid = 16978881833408765400
^286 = gv: (name: "alloc209", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16995584247057113915
^287 = gv: (name: "_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h5832786aa4b54b53E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^201), (callee: ^16), (callee: ^139), (callee: ^120), (callee: ^46), (callee: ^67), (callee: ^130), (callee: ^312)), refs: (^241)))) ; guid = 17096652032117507112
^288 = gv: (name: "zset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^289), (callee: ^120)), refs: (^241)))) ; guid = 17194806963102885160
^289 = gv: (name: "_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd87fd617a87b3cbcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^272), (callee: ^305), (callee: ^190), (callee: ^150)), refs: (^241)))) ; guid = 17226039810584427999
^290 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h3294ee92e0b70292E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^157), (callee: ^32), (callee: ^226), (callee: ^194))))) ; guid = 17279224589804955304
^291 = gv: (name: "alloc266", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17297312794674335906
^292 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h567af2617e8b8d3eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 17303677216774745062
^293 = gv: (name: "alloc270", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17370397588529557254
^294 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60587e97f667defaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^121), (callee: ^74), (callee: ^156), (callee: ^224))))) ; guid = 17566740882492842534
^295 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h678a5b8ee8bdbe41E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^179), (callee: ^17))))) ; guid = 17576614533415406960
^296 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha363ca6e08a5ec7dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 17637712939330251997
^297 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^298 = gv: (name: "alloc246", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 17786958328216919646
^299 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17h6aae9d88c5f93b06E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^44), (callee: ^59), (callee: ^277), (callee: ^268), (callee: ^87), (callee: ^68), (callee: ^36), (callee: ^239), (callee: ^242)), refs: (^163)))) ; guid = 17845857626454367831
^300 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h7048efc47deddfccE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^249))))) ; guid = 17935421475796595926
^301 = gv: (name: "_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E") ; guid = 17978184489729322003
^302 = gv: (name: "alloc192", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 18018469502870729224
^303 = gv: (name: "_ZN5alloc5alloc7dealloc17ha9572c560c38df75E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^44), (callee: ^61), (callee: ^71))))) ; guid = 18040657819233977908
^304 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hb2896d3fe0987a82E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 18081823760288225123
^305 = gv: (name: "_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..clone..Clone$GT$5clone17h7d8fd5e909bb4c3dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 18137045453033789023
^306 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE") ; guid = 18145797040138870230
^307 = gv: (name: "alloc234", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 18151193629905592791
^308 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^309 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^310 = gv: (name: "alloc198", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^237)))) ; guid = 18309603903049356175
^311 = gv: (name: "_ZN4core3cmp3Ord3min17h69981f92f303cbfaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^35)), refs: (^241)))) ; guid = 18366279361356030875
^312 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^313 = gv: (name: "_ZN5alloc3vec9from_elem17h1a1c6ee1c22ea3d7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^4))))) ; guid = 18409570131140625653
^314 = gv: (name: "_ZN4core3fmt8builders9DebugList5entry17h0383dd2350e753d0E") ; guid = 18441761400065173173
^315 = blockcount: 1046
