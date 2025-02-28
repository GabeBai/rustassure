; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs.bc'
source_filename = "parse_query_string.c6d0e01f-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::option::Option<UrlKeyValue>" = type <{ {}*, [40 x i8] }>
%"alloc::vec::into_iter::IntoIter<UrlKeyValue>" = type { %"core::marker::PhantomData<UrlKeyValue>", %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>", i8*, i64, %UrlKeyValue*, %UrlKeyValue* }
%"core::marker::PhantomData<UrlKeyValue>" = type {}
%"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>" = type { %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%UrlKeyValue = type <{ %"alloc::string::String", %"alloc::string::String" }>
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"core::mem::manually_drop::ManuallyDrop<UrlKeyValue>" = type { %UrlKeyValue }
%"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>" = type { [48 x i8] }
%"core::option::Option<UrlKeyValue>::Some" = type { %UrlKeyValue }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::ops::range::RangeInclusive<usize>" = type { i64, i64, i8, [7 x i8] }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err" = type { [1 x i64], { i64, i64 } }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>" = type { %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>" }
%"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>" = type { { i32*, i32* }, { [0 x i8]*, i64 }, %"core::str::iter::CharIndices" }
%"core::str::iter::CharIndices" = type { i64, { i8*, i8* } }
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>" = type { [0 x i8] }
%"alloc::vec::Vec<UrlKeyValue>" = type { { i8*, i64 }, i64 }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrRepr<[UrlKeyValue]>" = type { [2 x i64] }
%"core::str::iter::Split<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>" = type { %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>" }
%"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>" = type { i64, i64, %"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", i8, i8, [6 x i8] }
%"core::option::Option<(usize, usize)>" = type { i64, [2 x i64] }
%"core::option::Option<(usize, usize)>::Some" = type { [1 x i64], { i64, i64 } }
%"core::str::pattern::SearchStep" = type { i64, [2 x i64] }
%"core::str::pattern::SearchStep::Match" = type { [1 x i64], i64, i64 }
%"core::option::Option<core::fmt::Arguments>" = type { {}*, [5 x i64] }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok" = type { [1 x i64], { i8*, i64 } }
%"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok" = type { {} }
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
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue" = type { {} }
%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>" = type { {}*, [2 x i64] }
%"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<UrlKeyValue>>" = type { %"alloc::vec::Vec<UrlKeyValue>" }
%"core::str::pattern::SearchStep::Reject" = type { [1 x i64], i64, i64 }
%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>::Some" = type { %"alloc::vec::Vec<UrlKeyValue>" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc126 = private unnamed_addr constant <{ [82 x i8] }> <{ [82 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/vec/into_iter.rs" }>, align 1
@alloc127 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [82 x i8] }>, <{ [82 x i8] }>* @alloc126, i32 0, i32 0, i32 0), [16 x i8] c"R\00\00\00\00\00\00\00\A0\00\00\00\1B\00\00\00" }>, align 8
@alloc23 = private unnamed_addr constant <{ [8 x i8] }> zeroinitializer, align 8
@alloc55 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc56 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc55, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc43 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc145 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc146 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc145, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@str.0 = internal constant [65 x i8] c"attempted to zero-initialize type `UrlKeyValue`, which is invalid"
@alloc147 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc148 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc147, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc149 = private unnamed_addr constant <{ [73 x i8] }> <{ [73 x i8] c"assertion failed: 0 < pointee_size && pointee_size <= isize::MAX as usize" }>, align 1
@alloc150 = private unnamed_addr constant <{ [81 x i8] }> <{ [81 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/const_ptr.rs" }>, align 1
@alloc151 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [81 x i8] }>, <{ [81 x i8] }>* @alloc150, i32 0, i32 0, i32 0), [16 x i8] c"Q\00\00\00\00\00\00\00\EC\02\00\00\09\00\00\00" }>, align 8
@alloc156 = private unnamed_addr constant <{ [83 x i8] }> <{ [83 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/str/validations.rs" }>, align 1
@alloc153 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc156, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\001\00\00\00$\00\00\00" }>, align 8
@alloc155 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc156, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\008\00\00\00(\00\00\00" }>, align 8
@alloc157 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc156, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\00@\00\00\00,\00\00\00" }>, align 8
@alloc158 = private unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/iter/traits/exact_size.rs" }>, align 1
@alloc159 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc158, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00p\00\00\00\09\00\00\00" }>, align 8
@alloc160 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc161 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc160, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ({ i64, i64 }**)* @"_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h2853dd5970ad320dE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i64, i64 }**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b4beff5391aed09E" to i8*) }>, align 8
@alloc169 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc166 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc169, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc168 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc169, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\D2\00\00\00\1B\00\00\00" }>, align 8
@alloc170 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc169, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\DF\00\00\00\1F\00\00\00" }>, align 8
@alloc179 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc172 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc179, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\C9\01\00\00\16\00\00\00" }>, align 8
@alloc174 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc179, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\CB\01\00\00\05\00\00\00" }>, align 8
@alloc176 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc179, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc178 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc179, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\86\01\00\00\1C\00\00\00" }>, align 8
@alloc180 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc179, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\90\01\00\00\13\00\00\00" }>, align 8
@alloc181 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Some" }>, align 1
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17hb330fc0504bc6c2dE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha48ff2731674b652E" to i8*) }>, align 8
@alloc185 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"None" }>, align 1
@alloc192 = private unnamed_addr constant <{ [86 x i8] }> <{ [86 x i8] c"inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs" }>, align 1
@alloc187 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc192, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00\11\00\00\00\0D\00\00\00" }>, align 8
@str.3 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc189 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc192, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00\15\00\00\00%\00\00\00" }>, align 8
@alloc5 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"=\00\00\00" }>, align 4
@alloc191 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc192, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00$\00\00\00\1A\00\00\00" }>, align 8
@alloc193 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc192, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00/\00\00\00\0E\00\00\00" }>, align 8
@alloc194 = private unnamed_addr constant <{ [23 x i8] }> <{ [23 x i8] c"key1=value1&key2=value2" }>, align 1
@alloc45 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Key: " }>, align 1
@alloc47 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c", Value: " }>, align 1
@alloc48 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc46 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [5 x i8] }>, <{ [5 x i8] }>* @alloc45, i32 0, i32 0, i32 0), [8 x i8] c"\05\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [9 x i8] }>, <{ [9 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [8 x i8] c"\09\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc40 = private unnamed_addr constant <{ [36 x i8] }> <{ [36 x i8] c"ERROR: Failed to parse query string\0A" }>, align 1
@alloc41 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [36 x i8] }>, <{ [36 x i8] }>* @alloc40, i32 0, i32 0, i32 0), [8 x i8] c"$\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ebfd553d84ad36E"(%"core::option::Option<UrlKeyValue>"* sret(%"core::option::Option<UrlKeyValue>") %0, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* align 8 %self) unnamed_addr #0 {
start:
  %1 = alloca %UrlKeyValue*, align 8
  %_3.i.i = alloca %"core::mem::manually_drop::ManuallyDrop<UrlKeyValue>", align 1
  %_2.i = alloca %"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>", align 1
  %2 = alloca i8*, align 8
  %_16 = alloca %UrlKeyValue, align 1
  %_12 = alloca %UrlKeyValue, align 1
  %3 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, i32 0, i32 4
  %_4 = load %UrlKeyValue*, %UrlKeyValue** %3, align 8
  %4 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, i32 0, i32 5
  %_5 = load %UrlKeyValue*, %UrlKeyValue** %4, align 8
  %_2 = icmp eq %UrlKeyValue* %_4, %_5
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
  %5 = bitcast %"core::option::Option<UrlKeyValue>"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 48, i1 false)
  %6 = bitcast %"core::option::Option<UrlKeyValue>"* %0 to {}**
  store {}* null, {}** %6, align 1
  br label %bb11

bb11:                                             ; preds = %bb10, %bb1
  ret void

bb3:                                              ; preds = %bb2
  %7 = icmp eq i64 48, 0
  br i1 %7, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
  %8 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, i32 0, i32 4
  %_11 = load %UrlKeyValue*, %UrlKeyValue** %8, align 8
  %_10 = bitcast %UrlKeyValue* %_11 to i8*
  %9 = getelementptr i8, i8* %_10, i64 1
  store i8* %9, i8** %2, align 8
  %_9 = load i8*, i8** %2, align 8
  br label %bb5

bb7:                                              ; preds = %bb3
  %10 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, i32 0, i32 4
  %old = load %UrlKeyValue*, %UrlKeyValue** %10, align 8
  %11 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, i32 0, i32 4
  %_15 = load %UrlKeyValue*, %UrlKeyValue** %11, align 8
  %12 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %_15, i64 1
  store %UrlKeyValue* %12, %UrlKeyValue** %1, align 8
  %13 = load %UrlKeyValue*, %UrlKeyValue** %1, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  %14 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, i32 0, i32 4
  store %UrlKeyValue* %13, %UrlKeyValue** %14, align 8
  call void @_ZN4core3ptr4read17ha06bdca4d0ee02eeE(%UrlKeyValue* sret(%UrlKeyValue) %_16, %UrlKeyValue* %old)
  br label %bb9

bb9:                                              ; preds = %bb8
  %15 = bitcast %"core::option::Option<UrlKeyValue>"* %0 to %"core::option::Option<UrlKeyValue>::Some"*
  %16 = bitcast %"core::option::Option<UrlKeyValue>::Some"* %15 to %UrlKeyValue*
  %17 = bitcast %UrlKeyValue* %16 to i8*
  %18 = bitcast %UrlKeyValue* %_16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 48, i1 false)
  br label %bb10

bb10:                                             ; preds = %bb6, %bb9
  br label %bb11

bb5:                                              ; preds = %bb4
  %_8 = bitcast i8* %_9 to %UrlKeyValue*
  %19 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, i32 0, i32 4
  store %UrlKeyValue* %_8, %UrlKeyValue** %19, align 8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([65 x i8]* @str.0 to [0 x i8]*), i64 65, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc127 to %"core::panic::location::Location"*)) #14
  call void @"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6zeroed17h9e4201e1f5e0bfedE"(%"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>"* sret(%"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>") %_2.i)
  %20 = bitcast %"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>"* %_2.i to %"core::mem::manually_drop::ManuallyDrop<UrlKeyValue>"*
  %21 = bitcast %"core::mem::manually_drop::ManuallyDrop<UrlKeyValue>"* %_3.i.i to i8*
  %22 = bitcast %"core::mem::manually_drop::ManuallyDrop<UrlKeyValue>"* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 %22, i64 48, i1 false)
  %23 = bitcast %"core::mem::manually_drop::ManuallyDrop<UrlKeyValue>"* %_3.i.i to %UrlKeyValue*
  %24 = bitcast %UrlKeyValue* %_12 to i8*
  %25 = bitcast %UrlKeyValue* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %25, i64 48, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb5
  %26 = bitcast %"core::option::Option<UrlKeyValue>"* %0 to %"core::option::Option<UrlKeyValue>::Some"*
  %27 = bitcast %"core::option::Option<UrlKeyValue>::Some"* %26 to %UrlKeyValue*
  %28 = bitcast %UrlKeyValue* %27 to i8*
  %29 = bitcast %UrlKeyValue* %_12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 48, i1 false)
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h2b5b5b3deb77692dE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* align 8 %self) unnamed_addr #0 {
start:
  %_11 = alloca { i64, i64 }, align 8
  %exact = alloca i64, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i64 48, 0
  br i1 %1, label %bb2, label %bb6

bb2:                                              ; preds = %bb1
  %2 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, i32 0, i32 5
  %_5 = load %UrlKeyValue*, %UrlKeyValue** %2, align 8
  %_4 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hee000238206e8453E"(%UrlKeyValue* %_5)
  br label %bb3

bb6:                                              ; preds = %bb1
  %3 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, i32 0, i32 5
  %_8 = load %UrlKeyValue*, %UrlKeyValue** %3, align 8
  %4 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, i32 0, i32 4
  %_9 = load %UrlKeyValue*, %UrlKeyValue** %4, align 8
  %5 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h69e80a9516f1281fE"(%UrlKeyValue* %_8, %UrlKeyValue* %_9)
  store i64 %5, i64* %exact, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb5, %bb7
  %_10 = load i64, i64* %exact, align 8
  %_12 = load i64, i64* %exact, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_11, i32 0, i32 1
  store i64 %_12, i64* %6, align 8
  %7 = bitcast { i64, i64 }* %_11 to i64*
  store i64 1, i64* %7, align 8
  %8 = bitcast { i64, { i64, i64 } }* %0 to i64*
  store i64 %_10, i64* %8, align 8
  %9 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_11, i32 0, i32 0
  %11 = load i64, i64* %10, align 8, !range !1, !noundef !2
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  ret void

bb3:                                              ; preds = %bb2
  %16 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, i32 0, i32 4
  %_7 = load %UrlKeyValue*, %UrlKeyValue** %16, align 8
  %_6 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hee000238206e8453E"(%UrlKeyValue* %_7)
  br label %bb4

bb4:                                              ; preds = %bb3
  %17 = sub i64 %_4, %_6
  store i64 %17, i64* %exact, align 8
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb8
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$9spec_next17hd87d5017d20a8eb3E"(%"core::ops::range::RangeInclusive<usize>"* align 8 %self) unnamed_addr #0 {
start:
  %_7 = alloca i64, align 8
  %0 = alloca { i64, i64 }, align 8
  %_2 = call zeroext i1 @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17h4057294f2e2d48d9E"(%"core::ops::range::RangeInclusive<usize>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_5 = bitcast %"core::ops::range::RangeInclusive<usize>"* %self to i64*
  %_6 = getelementptr inbounds %"core::ops::range::RangeInclusive<usize>", %"core::ops::range::RangeInclusive<usize>"* %self, i32 0, i32 1
  %is_iterating = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h55931fdbc2bb188bE"(i64* align 8 %_5, i64* align 8 %_6)
  br label %bb4

bb2:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb12

bb12:                                             ; preds = %bb11, %bb2
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %3 = load i64, i64* %2, align 8, !range !1, !noundef !2
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = insertvalue { i64, i64 } undef, i64 %3, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7

bb4:                                              ; preds = %bb3
  br i1 %is_iterating, label %bb5, label %bb9

bb9:                                              ; preds = %bb4
  %8 = getelementptr inbounds %"core::ops::range::RangeInclusive<usize>", %"core::ops::range::RangeInclusive<usize>"* %self, i32 0, i32 2
  store i8 1, i8* %8, align 8
  %_15 = bitcast %"core::ops::range::RangeInclusive<usize>"* %self to i64*
  %9 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h5024aac75d60a745E"(i64* align 8 %_15)
  store i64 %9, i64* %_7, align 8
  br label %bb10

bb5:                                              ; preds = %bb4
  %_11 = bitcast %"core::ops::range::RangeInclusive<usize>"* %self to i64*
  %_10 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h5024aac75d60a745E"(i64* align 8 %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h6313b1fd9ece08e5E"(i64 %_10, i64 1)
  br label %bb7

bb7:                                              ; preds = %bb6
  %_13 = bitcast %"core::ops::range::RangeInclusive<usize>"* %self to i64*
  %10 = call i64 @_ZN4core3mem7replace17h6f3993a9fd622511E(i64* align 8 %_13, i64 %n)
  store i64 %10, i64* %_7, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %12 = load i64, i64* %_7, align 8
  store i64 %12, i64* %11, align 8
  %13 = bitcast { i64, i64 }* %0 to i64*
  store i64 1, i64* %13, align 8
  br label %bb12

bb10:                                             ; preds = %bb9
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hb50bcc7ccdeecfb4E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hebc4d388238c6116E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h3269e9dba2066f33E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hb93af453d5622596E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h873017416275e56eE"(i64 %kind.0, i64 %kind.1) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %kind.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %kind.1, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !2
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4b6a2f6c7f9f645eE"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17he0d042400ea965d6E"()
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
  %9 = load i64, i64* %8, align 8, !range !3, !noundef !2
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h607368dd20f09b12E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h63c1af6c00e1f9d3E"()
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
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8be44c8a00a39bbeE"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
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
  %e.1 = load i64, i64* %7, align 8, !range !3, !noundef !2
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h5b17a2aae5c320bcE"(i64 %e.0, i64 %e.1)
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
  %14 = load i64, i64* %13, align 8, !range !4, !noundef !2
  %15 = insertvalue { i64, i64 } undef, i64 %12, 0
  %16 = insertvalue { i64, i64 } %15, i64 %14, 1
  ret { i64, i64 } %16
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hab9ed6d6e00ebf70E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
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
  %e.1 = load i64, i64* %7, align 8, !range !3, !noundef !2
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h873017416275e56eE"(i64 %e.0, i64 %e.1)
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
  %14 = load i64, i64* %13, align 8, !range !4, !noundef !2
  %15 = insertvalue { i64, i64 } undef, i64 %12, 0
  %16 = insertvalue { i64, i64 } %15, i64 %14, 1
  ret { i64, i64 } %16
}

; Function Attrs: inlinehint uwtable
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17had13c65ce3b5ade9E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !3, !noundef !2
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h873017416275e56eE"(i64 %e.0, i64 %e.1)
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
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd5b2481b0ba2094fE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !3, !noundef !2
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h5b17a2aae5c320bcE"(i64 %e.0, i64 %e.1)
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

; Function Attrs: uwtable
define void @"_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h495ca01c5b2144beE"(i64** align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_5 = alloca { i8*, i64 }, align 8
  %1 = bitcast i64** %self to %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"**
  %_10 = load %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"*, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"** %1, align 8, !nonnull !2, !align !5, !noundef !2
  %_4 = bitcast %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %_10 to %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"*
  store i8 1, i8* %_13, align 1
  call void @"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17hfc4e1f05b40d1e3cE"(%"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"* align 1 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast i64** %self to %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"**
  %_11 = load %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"*, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"** %2, align 8, !nonnull !2, !align !5, !noundef !2
  %3 = bitcast %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %_11 to i8**
  %_7 = load i8*, i8** %3, align 8, !nonnull !2, !noundef !2
  %_6 = invoke %UrlKeyValue* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfddfa18f8e3afa5aE"(i8* %_7)
          to label %bb2 unwind label %cleanup

bb7:                                              ; preds = %cleanup
  %4 = load i8, i8* %_13, align 1, !range !6, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb6, label %bb5

cleanup:                                          ; preds = %bb3, %bb2, %bb1
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %11 = bitcast i64** %self to %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"**
  %_12 = load %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"*, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"** %11, align 8, !nonnull !2, !align !5, !noundef !2
  %12 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %_12, i32 0, i32 3
  %_8 = load i64, i64* %12, align 8
  store i8 0, i8* %_13, align 1
  %13 = invoke { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hee4d90523e6adf3aE"(%UrlKeyValue* %_6, i64 %_8)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store { i8*, i64 } %13, { i8*, i64 }* %_5, align 8
  invoke void @"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$parse_query_string..UrlKeyValue$GT$$GT$17h1d59568799fb134fE"({ i8*, i64 }* %_5)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  ret void

bb5:                                              ; preds = %bb6, %bb7
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b4beff5391aed09E"({ i64, i64 }** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !nonnull !2, !align !5, !noundef !2
  %0 = call zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5041948ef3da5ee6E"({ i64, i64 }* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha48ff2731674b652E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %self, align 8, !nonnull !2, !align !5, !noundef !2
  %0 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h371347b6ff5fbf02E"(i64* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17h11ef733cb61fb8feE"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h98d6765e57d24b21E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN49_$LT$F$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h265915cba1117a88E"(%"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* sret(%"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>") %0, i32* align 4 %self.0, i32* align 4 %self.1, [0 x i8]* align 1 %haystack.0, i64 %haystack.1) unnamed_addr #0 {
start:
  %_4 = alloca { i32*, i32* }, align 8
  %_3 = alloca %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", align 8
  %1 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_4, i32 0, i32 0
  store i32* %self.0, i32** %1, align 8
  %2 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_4, i32 0, i32 1
  store i32* %self.1, i32** %2, align 8
  %3 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_4, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8, !nonnull !2, !align !7, !noundef !2
  %5 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8, !nonnull !2, !align !7, !noundef !2
  call void @"_ZN95_$LT$core..str..pattern..MultiCharEqPattern$LT$C$GT$$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h052d30d87d871f39E"(%"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* sret(%"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>") %_3, i32* align 4 %4, i32* align 4 %6, [0 x i8]* align 1 %haystack.0, i64 %haystack.1)
  br label %bb1

bb1:                                              ; preds = %start
  %7 = bitcast %"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %0 to %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"*
  %8 = bitcast %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %7 to i8*
  %9 = bitcast %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 56, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN49_$LT$u8$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hdbe27db103c83dfeE"([0 x i8]* align 1 %left.0, i64 %left.1, [0 x i8]* align 1 %right.0, i64 %right.1) unnamed_addr #0 {
start:
  %order = alloca i64, align 8
  %len = alloca i64, align 8
  %diff = sub i64 %left.1, %right.1
  %_11 = icmp ult i64 %left.1, %right.1
  br i1 %_11, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i64 %right.1, i64* %len, align 8
  br label %bb3

bb1:                                              ; preds = %start
  store i64 %left.1, i64* %len, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %_20 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h65fa8d128163af3dE"([0 x i8]* align 1 %left.0, i64 %left.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_22 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h65fa8d128163af3dE"([0 x i8]* align 1 %right.0, i64 %right.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_24 = load i64, i64* %len, align 8
  %_19 = call i32 @memcmp(i8* %_20, i8* %_22, i64 %_24)
  br label %bb6

bb6:                                              ; preds = %bb5
  %0 = sext i32 %_19 to i64
  store i64 %0, i64* %order, align 8
  %_25 = load i64, i64* %order, align 8
  %1 = icmp eq i64 %_25, 0
  br i1 %1, label %bb7, label %bb8

bb7:                                              ; preds = %bb6
  store i64 %diff, i64* %order, align 8
  br label %bb9

bb8:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %2 = call i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$isize$GT$3cmp17heac4c112e095896bE"(i64* align 8 %order, i64* align 8 bitcast (<{ [8 x i8] }>* @alloc23 to i64*)), !range !8
  br label %bb10

bb10:                                             ; preds = %bb9
  ret i8 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h6313b1fd9ece08e5E"(i64 %start1, i64 %n) unnamed_addr #0 {
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
define void @_ZN4core10intrinsics11write_bytes17h287c3b09dd4a7f6aE(i8* %dst, i8 %val, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 1, %count
  call void @llvm.memset.p0i8.i64(i8* align 1 %dst, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics11write_bytes17h3ff2156d5b5a098eE(%UrlKeyValue* %dst, i8 %val, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 48, %count
  %1 = bitcast %UrlKeyValue* %dst to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17h585474ec754f1c31E(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @_ZN4core3cmp10PartialOrd2ge17ha263a147f8d1c9a2E([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #0 {
start:
  %_3 = alloca i8, align 1
  %0 = alloca i8, align 1
  %1 = call i8 @"_ZN4core3str6traits55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$str$GT$11partial_cmp17h187b49de183c8d56E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1), !range !9
  store i8 %1, i8* %_3, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = load i8, i8* %_3, align 1, !range !9, !noundef !2
  %3 = sub i8 %2, 2
  %4 = icmp eq i8 %3, 0
  %_7 = select i1 %4, i64 0, i64 1
  %5 = icmp eq i64 %_7, 1
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_6 = load i8, i8* %_3, align 1, !range !8, !noundef !2
  switch i8 %_6, label %bb2 [
    i8 0, label %bb4
    i8 1, label %bb4
  ]

bb2:                                              ; preds = %bb3, %bb1
  store i8 0, i8* %0, align 1
  br label %bb5

bb4:                                              ; preds = %bb3, %bb3
  store i8 1, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %6 = load i8, i8* %0, align 1, !range !6, !noundef !2
  %7 = trunc i8 %6 to i1
  ret i1 %7
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3Ord3max17h3d9cb7dd0a8b01b0E(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h5381c2e216830016E"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !8

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
  %_7 = load i8, i8* %_3, align 1, !range !8, !noundef !2
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !6, !noundef !2
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
  %14 = load i8, i8* %_8, align 1, !range !6, !noundef !2
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !6, !noundef !2
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
define i64 @_ZN4core3cmp3max17hbc66f78c7f702320E(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3cmp3Ord3max17h3d9cb7dd0a8b01b0E(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$isize$GT$3cmp17heac4c112e095896bE"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_4 = load i64, i64* %self, align 8
  %_5 = load i64, i64* %other, align 8
  %_3 = icmp slt i64 %_4, %_5
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
  %1 = load i8, i8* %0, align 1, !range !8, !noundef !2
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
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h5381c2e216830016E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
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
  %1 = load i8, i8* %0, align 1, !range !8, !noundef !2
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
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17h76b46ec24d040ac0E"(i32* align 4 %self, i32* align 4 %other) unnamed_addr #0 {
start:
  %_3 = load i32, i32* %self, align 4, !range !10, !noundef !2
  %_4 = load i32, i32* %other, align 4, !range !10, !noundef !2
  %0 = icmp eq i32 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17h863cb8a13299eed4E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp eq i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17ha9b41b64c417f682E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ule i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h55931fdbc2bb188bE"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls70_$LT$impl$u20$core..cmp..PartialOrd$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ge17h27977cf8fff8995cE"({ [0 x i8]*, i64 }* align 8 %self, { [0 x i8]*, i64 }* align 8 %other) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_5.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !2, !align !11, !noundef !2
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_5.1 = load i64, i64* %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !2, !align !11, !noundef !2
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 1
  %_6.1 = load i64, i64* %3, align 8
  %4 = call zeroext i1 @_ZN4core3cmp10PartialOrd2ge17ha263a147f8d1c9a2E([0 x i8]* align 1 %_5.0, i64 %_5.1, [0 x i8]* align 1 %_6.0, i64 %_6.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h67dc8c422d53217fE(%"alloc::string::String"* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hb8ede81fd448f4c9E(%"alloc::string::String"* align 8 %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h842c2f1c36fc9449E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hb8ede81fd448f4c9E(%"alloc::string::String"* align 8 %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !2, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"alloc::string::String"* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !2, !align !11, !noundef !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !2, !align !11, !noundef !2
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !2, !noundef !2
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h371347b6ff5fbf02E"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
  %3 = load i8, i8* %0, align 1, !range !6, !noundef !2
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

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h35233abad6e0f60bE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !6, !noundef !2
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
  %11 = load i64*, i64** %10, align 8, !align !5
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
  call void @_ZN4core3fmt9Arguments6new_v117h35233abad6e0f60bE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc56 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc43 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc146 to %"core::panic::location::Location"*)) #14
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd06fc3738f741f4aE(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !12, !noundef !2
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h64328f446fcae46aE(i64 %_3), !range !13
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h2bb7a2fe4379a0d9E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !12, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6zeroed17h9e4201e1f5e0bfedE"(%"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>"* sret(%"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>") %u) unnamed_addr #0 {
start:
  %0 = bitcast %"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>"* %u to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>"* %u to %UrlKeyValue*
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN4core10intrinsics11write_bytes17h3ff2156d5b5a098eE(%UrlKeyValue* %1, i8 0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17hfc4e1f05b40d1e3cE"(%"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"* align 1 %slot) unnamed_addr #0 {
start:
  %_3 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"* %slot to %"alloc::alloc::Global"*
  call void @_ZN4core3ptr4read17h8ad1bf43cf560d50E(%"alloc::alloc::Global"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h6f3993a9fd622511E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17hab07edb9fb348465E(i64* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !6, !noundef !2
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
  invoke void @_ZN4core3ptr5write17h3d16474df481e5c1E(i64* %dest, i64 %src)
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
define internal zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h3ec1d1c48ed0e125E"(i8 %self) unnamed_addr #0 {
start:
  %0 = icmp sge i8 %self, -64
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h3e0b0e2d8dfeb7ddE"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %12 = load i8, i8* %11, align 8, !range !6, !noundef !2
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !6, !noundef !2
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
  %27 = load i8, i8* %2, align 1, !range !6, !noundef !2
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
  %32 = load i64, i64* %31, align 8, !range !1, !noundef !2
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hd41e9a838999b61cE"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %12 = load i8, i8* %11, align 8, !range !6, !noundef !2
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !6, !noundef !2
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
  %27 = load i8, i8* %2, align 1, !range !6, !noundef !2
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
  %32 = load i64, i64* %31, align 8, !range !1, !noundef !2
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h64328f446fcae46aE(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !13, !noundef !2
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h76bc0d1c4fb6de0cE(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hf14cdeab65d2c33aE"(%"core::ops::range::RangeInclusive<usize>"* sret(%"core::ops::range::RangeInclusive<usize>") %0, i64 %start1, i64 %end) unnamed_addr #0 {
start:
  %1 = bitcast %"core::ops::range::RangeInclusive<usize>"* %0 to i64*
  store i64 %start1, i64* %1, align 8
  %2 = getelementptr inbounds %"core::ops::range::RangeInclusive<usize>", %"core::ops::range::RangeInclusive<usize>"* %0, i32 0, i32 1
  store i64 %end, i64* %2, align 8
  %3 = getelementptr inbounds %"core::ops::range::RangeInclusive<usize>", %"core::ops::range::RangeInclusive<usize>"* %0, i32 0, i32 2
  store i8 0, i8* %3, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17h4057294f2e2d48d9E"(%"core::ops::range::RangeInclusive<usize>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds %"core::ops::range::RangeInclusive<usize>", %"core::ops::range::RangeInclusive<usize>"* %self, i32 0, i32 2
  %2 = load i8, i8* %1, align 8, !range !6, !noundef !2
  %_2 = trunc i8 %2 to i1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = bitcast %"core::ops::range::RangeInclusive<usize>"* %self to i64*
  %_6 = getelementptr inbounds %"core::ops::range::RangeInclusive<usize>", %"core::ops::range::RangeInclusive<usize>"* %self, i32 0, i32 1
  %_4 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17ha9b41b64c417f682E"(i64* align 8 %_5, i64* align 8 %_6)
  br label %bb4

bb1:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb4, %bb1
  %3 = load i8, i8* %0, align 1, !range !6, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb4:                                              ; preds = %bb2
  %_3 = xor i1 %_4, true
  %5 = zext i1 %_3 to i8
  store i8 %5, i8* %0, align 1
  br label %bb3
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr185drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$parse_query_string..UrlKeyValue$C$alloc..alloc..Global$GT$$GT$17hbc4ce0955e6b762fE"(i64** %_1) unnamed_addr #1 {
start:
  call void @"_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h495ca01c5b2144beE"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h60ece4000a586b69E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h2275c54a22bfe019E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hdd2d4da2948b07b3E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h8d0e9bf314c10a1dE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h112c48ef860cf8e9E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x %UrlKeyValue]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hd5a9401c960c47a1E(%UrlKeyValue* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast %UrlKeyValue* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x %UrlKeyValue]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h3d7d7f6826a54c3bE({}* %0, i64 %len)
  %2 = extractvalue { [0 x %UrlKeyValue]*, i64 } %1, 0
  %3 = extractvalue { [0 x %UrlKeyValue]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x %UrlKeyValue]*, i64 } undef, [0 x %UrlKeyValue]* %2, 0
  %5 = insertvalue { [0 x %UrlKeyValue]*, i64 } %4, i64 %3, 1
  ret { [0 x %UrlKeyValue]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17hb330fc0504bc6c2dE"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7e03d4d8fd0535f8E"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h234718032647b967E"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h234718032647b967E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1ff22a8330cf727E"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7e7f475ce03d1446E"({ i8*, i64 }* %1) #15
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
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7e7f475ce03d1446E"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
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
define void @_ZN4core3ptr4read17h8ad1bf43cf560d50E(%"alloc::alloc::Global"* %src) unnamed_addr #0 {
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
define void @_ZN4core3ptr4read17ha06bdca4d0ee02eeE(%UrlKeyValue* sret(%UrlKeyValue) %0, %UrlKeyValue* %src) unnamed_addr #0 {
start:
  %_3.i = alloca %"core::mem::manually_drop::ManuallyDrop<UrlKeyValue>", align 1
  %_6 = alloca %"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>", align 1
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>", align 1
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>"* %tmp to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>"* %tmp to %UrlKeyValue*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast %UrlKeyValue* %2 to i8*
  %4 = bitcast %UrlKeyValue* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 48, i1 false)
  %5 = bitcast %"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>"* %_6 to i8*
  %6 = bitcast %"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>"* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 48, i1 false)
  %7 = bitcast %"core::mem::maybe_uninit::MaybeUninit<UrlKeyValue>"* %_6 to %"core::mem::manually_drop::ManuallyDrop<UrlKeyValue>"*
  %8 = bitcast %"core::mem::manually_drop::ManuallyDrop<UrlKeyValue>"* %_3.i to i8*
  %9 = bitcast %"core::mem::manually_drop::ManuallyDrop<UrlKeyValue>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 48, i1 false)
  %10 = bitcast %"core::mem::manually_drop::ManuallyDrop<UrlKeyValue>"* %_3.i to %UrlKeyValue*
  %11 = bitcast %UrlKeyValue* %0 to i8*
  %12 = bitcast %UrlKeyValue* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %12, i64 48, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17hab07edb9fb348465E(i64* %src) unnamed_addr #0 {
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
define void @"_ZN4core3ptr52drop_in_place$LT$parse_query_string..UrlKeyValue$GT$17h269c1bf9ca049677E"(%UrlKeyValue* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_5 = alloca %"alloc::string::String", align 8
  %_4 = alloca %"alloc::string::String", align 8
  %_3 = alloca %"alloc::string::String", align 8
  %_2 = alloca %"alloc::string::String", align 8
  %1 = bitcast %UrlKeyValue* %_1 to %"alloc::string::String"*
  %2 = bitcast %"alloc::string::String"* %_5 to i8*
  %3 = bitcast %"alloc::string::String"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 1 %3, i64 24, i1 false)
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7e03d4d8fd0535f8E"(%"alloc::string::String"* %_5)
          to label %bb4 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  %4 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %_1, i32 0, i32 1
  %5 = bitcast %"alloc::string::String"* %_2 to i8*
  %6 = bitcast %"alloc::string::String"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %6, i64 24, i1 false)
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7e03d4d8fd0535f8E"(%"alloc::string::String"* %_2) #15
          to label %bb1 unwind label %abort

cleanup:                                          ; preds = %start
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb2

bb4:                                              ; preds = %start
  %12 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %_1, i32 0, i32 1
  %13 = bitcast %"alloc::string::String"* %_4 to i8*
  %14 = bitcast %"alloc::string::String"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 1 %14, i64 24, i1 false)
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7e03d4d8fd0535f8E"(%"alloc::string::String"* %_4)
  br label %bb3

abort:                                            ; preds = %bb2
  %15 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable

bb1:                                              ; preds = %bb2
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21

bb3:                                              ; preds = %bb4
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7e7f475ce03d1446E"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83c5ca82feafea23E"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h2853dd5970ad320dE"({ i64, i64 }** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h3d16474df481e5c1E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hda3e491d8237333aE(%UrlKeyValue* %dst, %UrlKeyValue* %src) unnamed_addr #0 {
start:
  %0 = bitcast %UrlKeyValue* %dst to i8*
  %1 = bitcast %UrlKeyValue* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 48, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr62drop_in_place$LT$$u5b$parse_query_string..UrlKeyValue$u5d$$GT$17he3a6cb2a79867b6eE"([0 x %UrlKeyValue]* %_1.0, i64 %_1.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca %UrlKeyValue*, align 8
  %_4 = alloca i64, align 8
  br i1 false, label %bb7, label %bb12

bb7:                                              ; preds = %start
  store i64 0, i64* %_4, align 8
  br label %bb6

bb12:                                             ; preds = %start
  %1 = bitcast [0 x %UrlKeyValue]* %_1.0 to %UrlKeyValue*
  store %UrlKeyValue* %1, %UrlKeyValue** %_9, align 8
  %2 = load %UrlKeyValue*, %UrlKeyValue** %_9, align 8
  %_10 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %2, i64 %_1.1
  br label %bb11

bb11:                                             ; preds = %bb10, %bb12
  %3 = load %UrlKeyValue*, %UrlKeyValue** %_9, align 8
  %_14 = icmp eq %UrlKeyValue* %3, %_10
  br i1 %_14, label %bb1, label %bb10

bb10:                                             ; preds = %bb11
  %_13 = load %UrlKeyValue*, %UrlKeyValue** %_9, align 8
  %4 = load %UrlKeyValue*, %UrlKeyValue** %_9, align 8
  %5 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %4, i64 1
  store %UrlKeyValue* %5, %UrlKeyValue** %_9, align 8
  invoke void @"_ZN4core3ptr52drop_in_place$LT$parse_query_string..UrlKeyValue$GT$17h269c1bf9ca049677E"(%UrlKeyValue* %_13)
          to label %bb11 unwind label %cleanup

bb1:                                              ; preds = %bb6, %bb11
  ret void

bb9:                                              ; preds = %bb8, %cleanup
  %6 = load %UrlKeyValue*, %UrlKeyValue** %_9, align 8
  %_12 = icmp eq %UrlKeyValue* %6, %_10
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
  %_11 = load %UrlKeyValue*, %UrlKeyValue** %_9, align 8
  %12 = load %UrlKeyValue*, %UrlKeyValue** %_9, align 8
  %13 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %12, i64 1
  store %UrlKeyValue* %13, %UrlKeyValue** %_9, align 8
  invoke void @"_ZN4core3ptr52drop_in_place$LT$parse_query_string..UrlKeyValue$GT$17h269c1bf9ca049677E"(%UrlKeyValue* %_11) #15
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
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable

bb6:                                              ; preds = %bb5, %bb7
  %21 = load i64, i64* %_4, align 8
  %_8 = icmp eq i64 %21, %_1.1
  br i1 %_8, label %bb1, label %bb5

bb5:                                              ; preds = %bb6
  %22 = load i64, i64* %_4, align 8
  %_7 = getelementptr inbounds [0 x %UrlKeyValue], [0 x %UrlKeyValue]* %_1.0, i64 0, i64 %22
  %23 = load i64, i64* %_4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %_4, align 8
  invoke void @"_ZN4core3ptr52drop_in_place$LT$parse_query_string..UrlKeyValue$GT$17h269c1bf9ca049677E"(%UrlKeyValue* %_7)
          to label %bb6 unwind label %cleanup1

bb4:                                              ; preds = %bb3, %cleanup1
  %25 = load i64, i64* %_4, align 8
  %_6 = icmp eq i64 %25, %_1.1
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
  %_5 = getelementptr inbounds [0 x %UrlKeyValue], [0 x %UrlKeyValue]* %_1.0, i64 0, i64 %31
  %32 = load i64, i64* %_4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %_4, align 8
  invoke void @"_ZN4core3ptr52drop_in_place$LT$parse_query_string..UrlKeyValue$GT$17h269c1bf9ca049677E"(%UrlKeyValue* %_5) #15
          to label %bb4 unwind label %abort
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hac38e050594a0747E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hf0ec127cf3746201E"(%UrlKeyValue* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf961fb2060301becE"(%UrlKeyValue* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h4b0ff505a15827b9E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd0e7c9815feaa970E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h3269e9dba2066f33E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hee330e247705ea51E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h66ccbd658dd7673aE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h3269e9dba2066f33E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define %UrlKeyValue* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2e1aa5f87493c1b3E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call %UrlKeyValue* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfddfa18f8e3afa5aE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %UrlKeyValue* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hebc4d388238c6116E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h26a27036c26f6c78E"() unnamed_addr #0 {
start:
  %_1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h00bcad0a48d374fdE"()
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h3269e9dba2066f33E"(i8* %_1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h838129b73d066204E"() unnamed_addr #0 {
start:
  %_1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h9070bfdfcba89b99E"()
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hb93af453d5622596E"(i8* %_1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$parse_query_string..UrlKeyValue$GT$$GT$17h301b30b5b9c598aeE"(%"alloc::vec::Vec<UrlKeyValue>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h27f164e105c8f331E"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$parse_query_string..UrlKeyValue$GT$$GT$17h1d59568799fb134fE"({ i8*, i64 }* %1) #15
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
  %7 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %_1 to { i8*, i64 }*
  call void @"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$parse_query_string..UrlKeyValue$GT$$GT$17h1d59568799fb134fE"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h2212de96a991c022E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !6, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h28036a1bfd6eb9a0E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to i8**
  store i8* %self, i8** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h50ba1c14d66a99dcE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2294f8b1e56158f9E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h2212de96a991c022E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8d4f31ac90eccf49E"(%UrlKeyValue* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast %UrlKeyValue* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2294f8b1e56158f9E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h2212de96a991c022E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$parse_query_string..UrlKeyValue$GT$$GT$17h1d59568799fb134fE"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h976f77da580b5953E"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17h431a0f6ac5db06eeE({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hdd2d4da2948b07b3E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h112c48ef860cf8e9E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2294f8b1e56158f9E({}* %data_address) unnamed_addr #0 {
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
define { [0 x %UrlKeyValue]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h3d7d7f6826a54c3bE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[UrlKeyValue]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[UrlKeyValue]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[UrlKeyValue]>"* %_3 to { [0 x %UrlKeyValue]*, i64 }*
  %10 = getelementptr inbounds { [0 x %UrlKeyValue]*, i64 }, { [0 x %UrlKeyValue]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x %UrlKeyValue]*, [0 x %UrlKeyValue]** %10, align 8
  %12 = getelementptr inbounds { [0 x %UrlKeyValue]*, i64 }, { [0 x %UrlKeyValue]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x %UrlKeyValue]*, i64 } undef, [0 x %UrlKeyValue]* %11, 0
  %15 = insertvalue { [0 x %UrlKeyValue]*, i64 } %14, i64 %13, 1
  ret { [0 x %UrlKeyValue]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr8metadata8metadata17hdf7e716fc2a74e42E([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %ptr.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf961fb2060301becE"(%UrlKeyValue* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to %UrlKeyValue**
  store %UrlKeyValue* %ptr, %UrlKeyValue** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf9f4d285eaeb76afE"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h2e05be5e65953885E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h50ba1c14d66a99dcE"(i8* %ptr)
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
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h66ccbd658dd7673aE"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call %UrlKeyValue* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfddfa18f8e3afa5aE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %UrlKeyValue* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9a31267f4ce48163E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h73b40dd0329018c2E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to %UrlKeyValue*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf961fb2060301becE"(%UrlKeyValue* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb72e3776a1d9d716E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h73b40dd0329018c2E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd0e7c9815feaa970E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h73b40dd0329018c2E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define %UrlKeyValue* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfddfa18f8e3afa5aE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to %UrlKeyValue*
  ret %UrlKeyValue* %_2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h00bcad0a48d374fdE"() unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 1, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h9070bfdfcba89b99E"() unnamed_addr #0 {
start:
  %0 = alloca %UrlKeyValue*, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %UrlKeyValue** %0 to i64*
  store i64 1, i64* %1, align 8
  %2 = load %UrlKeyValue*, %UrlKeyValue** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf961fb2060301becE"(%UrlKeyValue* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h9e02be5eb4da71e6E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h1710e7f042e9ba2dE"(i8* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h1710e7f042e9ba2dE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h73b40dd0329018c2E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h7dda78e3bff25158E"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h8d0e9bf314c10a1dE(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf9f4d285eaeb76afE"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$parse_query_string..UrlKeyValue$GT$$GT$17h87ac37be4a2526dcE"(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %_1) unnamed_addr #1 {
start:
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d59dd4a03b37d2dE"(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h2f111abd0f04705bE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !6, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17hc838b76c8a87a2e6E"(i8* %self, i8* %dest, i64 %count) unnamed_addr #0 {
start:
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h585474ec754f1c31E(i8* %self, i8* %dest, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h853f611078f4366bE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to i8**
  store i8* %self, i8** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hee000238206e8453E"(%UrlKeyValue* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to %UrlKeyValue**
  store %UrlKeyValue* %self, %UrlKeyValue** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h2275c54a22bfe019E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h769b93ad9ef1a36dE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h431a0f6ac5db06eeE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h2f111abd0f04705bE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h69e80a9516f1281fE"(%UrlKeyValue* %self, %UrlKeyValue* %origin) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %_6 = alloca i8, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp ult i64 0, 48
  br i1 %_7, label %bb3, label %bb2

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_6, align 1
  br label %bb4

bb3:                                              ; preds = %bb1
  %_9 = icmp ule i64 48, 9223372036854775807
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_6, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %2 = load i8, i8* %_6, align 1, !range !6, !noundef !2
  %3 = trunc i8 %2 to i1
  %_5 = xor i1 %3, true
  br i1 %_5, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  %4 = ptrtoint %UrlKeyValue* %self to i64
  %5 = ptrtoint %UrlKeyValue* %origin to i64
  %6 = sub nuw i64 %4, %5
  %7 = udiv exact i64 %6, 48
  store i64 %7, i64* %0, align 8
  %8 = load i64, i64* %0, align 8
  br label %bb7

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [73 x i8] }>* @alloc149 to [0 x i8]*), i64 73, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc151 to %"core::panic::location::Location"*)) #14
  unreachable

bb7:                                              ; preds = %bb6
  ret i64 %8
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h39742ab9babcdd4cE"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3ptr8metadata8metadata17hdf7e716fc2a74e42E([0 x i8]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h4260a340848fa07cE"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @_ZN4core3str11validations15next_code_point17ha53a2de7f93ff1deE({ i8*, i8* }* align 8 %bytes) unnamed_addr #0 {
start:
  %ch = alloca i32, align 4
  %_4 = alloca i8*, align 8
  %0 = alloca { i32, i32 }, align 4
  %_5 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96c8fe6a38386dbfE"({ i8*, i8* }* align 8 %bytes)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfada59c925c98eb7E"(i8* align 1 %_5)
  store i8* %1, i8** %_4, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast i8** %_4 to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_7 = select i1 %4, i64 1, i64 0
  switch i64 %_7, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %val = load i8*, i8** %_4, align 8, !nonnull !2, !align !11, !noundef !2
  %x = load i8, i8* %val, align 1
  %_11 = icmp ult i8 %x, -128
  br i1 %_11, label %bb7, label %bb8

bb5:                                              ; preds = %bb2
  %5 = call { i32, i32 } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hb99b2fc51f42b8c1E"()
  store { i32, i32 } %5, { i32, i32 }* %0, align 4
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb7, %bb6
  br label %bb24

bb8:                                              ; preds = %bb3
  %init = call i32 @_ZN4core3str11validations15utf8_first_byte17hc721e708a931d82dE(i8 %x, i32 2)
  br label %bb9

bb7:                                              ; preds = %bb3
  %_13 = zext i8 %x to i32
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_13, i32* %6, align 4
  %7 = bitcast { i32, i32 }* %0 to i32*
  store i32 1, i32* %7, align 4
  br label %bb23

bb24:                                             ; preds = %bb22, %bb23
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %9 = load i32, i32* %8, align 4, !range !14, !noundef !2
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = insertvalue { i32, i32 } undef, i32 %9, 0
  %13 = insertvalue { i32, i32 } %12, i32 %11, 1
  ret { i32, i32 } %13

bb9:                                              ; preds = %bb8
  %_19 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96c8fe6a38386dbfE"({ i8*, i8* }* align 8 %bytes)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_18 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h63d0f11e450d664aE"(i8* align 1 %_19, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc153 to %"core::panic::location::Location"*))
  br label %bb11

bb11:                                             ; preds = %bb10
  %y = load i8, i8* %_18, align 1
  %14 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17ha6f3f6a277a6b821E(i32 %init, i8 %y)
  store i32 %14, i32* %ch, align 4
  br label %bb12

bb12:                                             ; preds = %bb11
  %_24 = icmp uge i8 %x, -32
  br i1 %_24, label %bb13, label %bb22

bb22:                                             ; preds = %bb21, %bb12
  %_50 = load i32, i32* %ch, align 4
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_50, i32* %15, align 4
  %16 = bitcast { i32, i32 }* %0 to i32*
  store i32 1, i32* %16, align 4
  br label %bb24

bb13:                                             ; preds = %bb12
  %_28 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96c8fe6a38386dbfE"({ i8*, i8* }* align 8 %bytes)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_27 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h63d0f11e450d664aE"(i8* align 1 %_28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc155 to %"core::panic::location::Location"*))
  br label %bb15

bb15:                                             ; preds = %bb14
  %z = load i8, i8* %_27, align 1
  %_32 = and i8 %y, 63
  %_31 = zext i8 %_32 to i32
  %y_z = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17ha6f3f6a277a6b821E(i32 %_31, i8 %z)
  br label %bb16

bb16:                                             ; preds = %bb15
  %_35 = shl i32 %init, 12
  %17 = or i32 %_35, %y_z
  store i32 %17, i32* %ch, align 4
  %_38 = icmp uge i8 %x, -16
  br i1 %_38, label %bb17, label %bb21

bb21:                                             ; preds = %bb20, %bb16
  br label %bb22

bb17:                                             ; preds = %bb16
  %_42 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96c8fe6a38386dbfE"({ i8*, i8* }* align 8 %bytes)
  br label %bb18

bb18:                                             ; preds = %bb17
  %_41 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h63d0f11e450d664aE"(i8* align 1 %_42, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc157 to %"core::panic::location::Location"*))
  br label %bb19

bb19:                                             ; preds = %bb18
  %w = load i8, i8* %_41, align 1
  %_45 = and i32 %init, 7
  %_44 = shl i32 %_45, 18
  %_47 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17ha6f3f6a277a6b821E(i32 %y_z, i8 %w)
  br label %bb20

bb20:                                             ; preds = %bb19
  %18 = or i32 %_44, %_47
  store i32 %18, i32* %ch, align 4
  br label %bb21
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3str11validations15utf8_first_byte17hc721e708a931d82dE(i8 %byte, i32 %width) unnamed_addr #0 {
start:
  %0 = trunc i32 %width to i8
  %1 = and i8 %0, 7
  %_5 = lshr i8 127, %1
  %_3 = and i8 %byte, %_5
  %2 = zext i8 %_3 to i32
  ret i32 %2
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3str11validations18utf8_acc_cont_byte17ha6f3f6a277a6b821E(i32 %ch, i8 %byte) unnamed_addr #0 {
start:
  %_3 = shl i32 %ch, 6
  %_6 = and i8 %byte, 63
  %_5 = zext i8 %_6 to i32
  %0 = or i32 %_3, %_5
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3str21_$LT$impl$u20$str$GT$12char_indices17he6530f1ebe9c80fbE"(%"core::str::iter::CharIndices"* sret(%"core::str::iter::CharIndices") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %1 = call { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h361bf9e72f65bc18E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %_2.0 = extractvalue { i8*, i8* } %1, 0
  %_2.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::str::iter::CharIndices"* %0 to i64*
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %0, i32 0, i32 1
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %3, i32 0, i32 0
  store i8* %_2.0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %3, i32 0, i32 1
  store i8* %_2.1, i8** %5, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$13get_unchecked17h05b771c94a57aa6eE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %i.0, i64 %i.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$13get_unchecked17haa37b228be3c6997E"(i64 %i.0, i64 %i.1, [0 x i8]* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_3.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_3.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h2d8f7369aebb6bcfE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %_4 = alloca i8*, align 8
  %1 = alloca i8, align 1
  %2 = icmp eq i64 %index, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 1, i8* %1, align 1
  br label %bb11

bb2:                                              ; preds = %start
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %6 = load [0 x i8]*, [0 x i8]** %5, align 8, !nonnull !2, !align !11, !noundef !2
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %6, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  %_6.0 = extractvalue { [0 x i8]*, i64 } %10, 0
  %_6.1 = extractvalue { [0 x i8]*, i64 } %10, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %11 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h9851868588ccf95cE"([0 x i8]* align 1 %_6.0, i64 %_6.1, i64 %index)
  store i8* %11, i8** %_4, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %12 = bitcast i8** %_4 to {}**
  %13 = load {}*, {}** %12, align 8
  %14 = icmp eq {}* %13, null
  %_9 = select i1 %14, i64 0, i64 1
  switch i64 %_9, label %bb6 [
    i64 0, label %bb7
    i64 1, label %bb5
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb7:                                              ; preds = %bb4
  %_11 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1edf460437969791E"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb8

bb5:                                              ; preds = %bb4
  %_15 = load i8*, i8** %_4, align 8, !nonnull !2, !align !11, !noundef !2
  %b = load i8, i8* %_15, align 1
  %15 = call zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h3ec1d1c48ed0e125E"(i8 %b)
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %1, align 1
  br label %bb9

bb9:                                              ; preds = %bb5
  br label %bb10

bb10:                                             ; preds = %bb8, %bb9
  br label %bb11

bb8:                                              ; preds = %bb7
  %17 = icmp eq i64 %index, %_11
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %1, align 1
  br label %bb10

bb11:                                             ; preds = %bb10, %bb1
  %19 = load i8, i8* %1, align 1, !range !6, !noundef !2
  %20 = trunc i8 %19 to i1
  ret i1 %20
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1edf460437969791E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !2, !align !11, !noundef !2
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
define internal { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h361bf9e72f65bc18E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { i8*, i8* }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !2, !align !11, !noundef !2
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h7903cd18423ef45bE"([0 x i8]* align 1 %_4.0, i64 %_4.1)
  %_2.0 = extractvalue { i8*, i8* } %10, 0
  %_2.1 = extractvalue { i8*, i8* } %10, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  store i8* %_2.0, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  store i8* %_2.1, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !nonnull !2, !noundef !2
  %15 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = insertvalue { i8*, i8* } undef, i8* %14, 0
  %18 = insertvalue { i8*, i8* } %17, i8* %16, 1
  ret { i8*, i8* } %18
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3str21_$LT$impl$u20$str$GT$5split17hf723b88b029de2efE"(%"core::str::iter::Split<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* sret(%"core::str::iter::Split<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>") %0, [0 x i8]* align 1 %self.0, i64 %self.1, i32* align 4 %pat.0, i32* align 4 %pat.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_6 = alloca %"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", align 8
  %_3 = alloca %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", align 8
  store i8 1, i8* %_9, align 1
  %_4 = invoke i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1edf460437969791E"([0 x i8]* align 1 %self.0, i64 %self.1)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %2 = load i8, i8* %_9, align 1, !range !6, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb5

bb1:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  invoke void @"_ZN49_$LT$F$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h265915cba1117a88E"(%"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* sret(%"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>") %_6, i32* align 4 %pat.0, i32* align 4 %pat.1, [0 x i8]* align 1 %self.0, i64 %self.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %9 = bitcast %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %_3 to i64*
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %_3, i32 0, i32 1
  store i64 %_4, i64* %10, align 8
  %11 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %_3, i32 0, i32 2
  %12 = bitcast %"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %11 to i8*
  %13 = bitcast %"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 56, i1 false)
  %14 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %_3, i32 0, i32 3
  store i8 1, i8* %14, align 8
  %15 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %_3, i32 0, i32 4
  store i8 0, i8* %15, align 1
  %16 = bitcast %"core::str::iter::Split<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %0 to %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"*
  %17 = bitcast %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %16 to i8*
  %18 = bitcast %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 80, i1 false)
  ret void

bb3:                                              ; preds = %bb4, %bb5
  %19 = bitcast { i8*, i32 }* %1 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17ha3fb3343aeb0f36fE"(%"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %self) unnamed_addr #0 {
start:
  %_12 = alloca { i64, i64 }, align 8
  %_5 = alloca %"core::option::Option<(usize, usize)>", align 8
  %0 = alloca { i8*, i64 }, align 8
  %1 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self, i32 0, i32 4
  %2 = load i8, i8* %1, align 1, !range !6, !noundef !2
  %_2 = trunc i8 %2 to i1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_4 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self, i32 0, i32 2
  %3 = call { [0 x i8]*, i64 } @"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17h1461a16e3382c256E"(%"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %_4)
  %haystack.0 = extractvalue { [0 x i8]*, i64 } %3, 0
  %haystack.1 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb1:                                              ; preds = %start
  %4 = bitcast { i8*, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = bitcast { i8*, i64 }* %0 to {}**
  store {}* null, {}** %5, align 8
  br label %bb11

bb11:                                             ; preds = %bb10, %bb1
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !align !11
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { i8*, i64 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i64 } %10, i64 %9, 1
  ret { i8*, i64 } %11

bb3:                                              ; preds = %bb2
  %_6 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self, i32 0, i32 2
  call void @"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h6eb553c9b9df927cE"(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %_5, %"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %_6)
  br label %bb4

bb4:                                              ; preds = %bb3
  %12 = bitcast %"core::option::Option<(usize, usize)>"* %_5 to i64*
  %_7 = load i64, i64* %12, align 8, !range !1, !noundef !2
  switch i64 %_7, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb7
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  %13 = call { i8*, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h3e7a86eb925669f1E"(%"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %self)
  store { i8*, i64 } %13, { i8*, i64 }* %0, align 8
  br label %bb9

bb7:                                              ; preds = %bb4
  %14 = bitcast %"core::option::Option<(usize, usize)>"* %_5 to %"core::option::Option<(usize, usize)>::Some"*
  %15 = getelementptr inbounds %"core::option::Option<(usize, usize)>::Some", %"core::option::Option<(usize, usize)>::Some"* %14, i32 0, i32 1
  %16 = bitcast { i64, i64 }* %15 to i64*
  %a = load i64, i64* %16, align 8
  %17 = bitcast %"core::option::Option<(usize, usize)>"* %_5 to %"core::option::Option<(usize, usize)>::Some"*
  %18 = getelementptr inbounds %"core::option::Option<(usize, usize)>::Some", %"core::option::Option<(usize, usize)>::Some"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %b = load i64, i64* %19, align 8
  %20 = bitcast %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self to i64*
  %_13 = load i64, i64* %20, align 8
  %21 = bitcast { i64, i64 }* %_12 to i64*
  store i64 %_13, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_12, i32 0, i32 1
  store i64 %a, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_12, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_12, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call { [0 x i8]*, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$13get_unchecked17h05b771c94a57aa6eE"([0 x i8]* align 1 %haystack.0, i64 %haystack.1, i64 %24, i64 %26)
  %elt.0 = extractvalue { [0 x i8]*, i64 } %27, 0
  %elt.1 = extractvalue { [0 x i8]*, i64 } %27, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %28 = bitcast %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self to i64*
  store i64 %b, i64* %28, align 8
  %29 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %30 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %29, i32 0, i32 0
  store [0 x i8]* %elt.0, [0 x i8]** %30, align 8
  %31 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %29, i32 0, i32 1
  store i64 %elt.1, i64* %31, align 8
  br label %bb10

bb10:                                             ; preds = %bb9, %bb8
  br label %bb11

bb9:                                              ; preds = %bb5
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h3e7a86eb925669f1E"(%"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %self) unnamed_addr #0 {
start:
  %_15 = alloca { i64, i64 }, align 8
  %_5 = alloca i8, align 1
  %_2 = alloca i8, align 1
  %0 = alloca { i8*, i64 }, align 8
  %1 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self, i32 0, i32 4
  %2 = load i8, i8* %1, align 1, !range !6, !noundef !2
  %_4 = trunc i8 %2 to i1
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %3 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self, i32 0, i32 3
  %4 = load i8, i8* %3, align 8, !range !6, !noundef !2
  %_6 = trunc i8 %4 to i1
  br i1 %_6, label %bb4, label %bb5

bb5:                                              ; preds = %bb2
  %5 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self, i32 0, i32 1
  %_9 = load i64, i64* %5, align 8
  %6 = bitcast %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self to i64*
  %_10 = load i64, i64* %6, align 8
  %_8 = sub i64 %_9, %_10
  %_7 = icmp ugt i64 %_8, 0
  %7 = zext i1 %_7 to i8
  store i8 %7, i8* %_5, align 1
  br label %bb6

bb4:                                              ; preds = %bb2
  store i8 1, i8* %_5, align 1
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %8 = load i8, i8* %_5, align 1, !range !6, !noundef !2
  %9 = trunc i8 %8 to i1
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb6, %bb1
  %11 = load i8, i8* %_2, align 1, !range !6, !noundef !2
  %12 = trunc i8 %11 to i1
  br i1 %12, label %bb7, label %bb10

bb10:                                             ; preds = %bb3
  %13 = bitcast { i8*, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = bitcast { i8*, i64 }* %0 to {}**
  store {}* null, {}** %14, align 8
  br label %bb11

bb7:                                              ; preds = %bb3
  %15 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self, i32 0, i32 4
  store i8 1, i8* %15, align 1
  %_14 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self, i32 0, i32 2
  %16 = call { [0 x i8]*, i64 } @"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17h1461a16e3382c256E"(%"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %_14)
  %_13.0 = extractvalue { [0 x i8]*, i64 } %16, 0
  %_13.1 = extractvalue { [0 x i8]*, i64 } %16, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %17 = bitcast %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self to i64*
  %_16 = load i64, i64* %17, align 8
  %18 = getelementptr inbounds %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self, i32 0, i32 1
  %_17 = load i64, i64* %18, align 8
  %19 = bitcast { i64, i64 }* %_15 to i64*
  store i64 %_16, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_15, i32 0, i32 1
  store i64 %_17, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_15, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_15, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call { [0 x i8]*, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$13get_unchecked17h05b771c94a57aa6eE"([0 x i8]* align 1 %_13.0, i64 %_13.1, i64 %22, i64 %24)
  %string.0 = extractvalue { [0 x i8]*, i64 } %25, 0
  %string.1 = extractvalue { [0 x i8]*, i64 } %25, 1
  br label %bb9

bb9:                                              ; preds = %bb8
  %26 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %27 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %26, i32 0, i32 0
  store [0 x i8]* %string.0, [0 x i8]** %27, align 8
  %28 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %26, i32 0, i32 1
  store i64 %string.1, i64* %28, align 8
  br label %bb11

bb11:                                             ; preds = %bb9, %bb10
  %29 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8, !align !11
  %31 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = insertvalue { i8*, i64 } undef, i8* %30, 0
  %34 = insertvalue { i8*, i64 } %33, i64 %32, 1
  ret { i8*, i64 } %34
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$13get_unchecked17haa37b228be3c6997E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_6 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h4260a340848fa07cE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_6, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %len = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h60ece4000a586b69E(i8* %2, i64 %len)
  %_12.0 = extractvalue { [0 x i8]*, i64 } %3, 0
  %_12.1 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_12.0, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %_12.1, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$13get_unchecked17h80dc1b3d01333621E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_6 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h4260a340848fa07cE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_6, i64 %self
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_10 = call i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h39742ab9babcdd4cE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %len = sub i64 %_10, %self
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h60ece4000a586b69E(i8* %2, i64 %len)
  %_13.0 = extractvalue { [0 x i8]*, i64 } %3, 0
  %_13.1 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_13.0, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %_13.1, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hd2f61b9c77230dc7E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %_3 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h2d8f7369aebb6bcfE"([0 x i8]* align 1 %slice.0, i64 %slice.1, i64 %self)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %1 = bitcast { i8*, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = bitcast { i8*, i64 }* %0 to {}**
  store {}* null, {}** %2, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %3 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$13get_unchecked17h80dc1b3d01333621E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  %_8.0 = extractvalue { [0 x i8]*, i64 } %3, 0
  %_8.1 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 0
  store [0 x i8]* %_8.0, [0 x i8]** %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 1
  store i64 %_8.1, i64* %6, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !align !11
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = insertvalue { i8*, i64 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i64 } %11, i64 %10, 1
  ret { i8*, i64 } %12
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h680d1d8c4297561cE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_9 = alloca { i8*, i64 }, align 8
  %_5 = alloca { i64, i64 }, align 8
  %_7 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1edf460437969791E"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %_5 to i64*
  store i64 %self, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  store i64 %_7, i64* %2, align 8
  %3 = bitcast { i64, i64 }* %_5 to i64*
  %start1 = load i64, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %end = load i64, i64* %4, align 8
  %5 = call { i8*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hd2f61b9c77230dc7E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1)
  store { i8*, i64 } %5, { i8*, i64 }* %_9, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = bitcast { i8*, i64 }* %_9 to {}**
  %7 = load {}*, {}** %6, align 8
  %8 = icmp eq {}* %7, null
  %_12 = select i1 %8, i64 0, i64 1
  switch i64 %_12, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  call void @_ZN4core3str16slice_error_fail17h2805d168fae0f9a7E([0 x i8]* align 1 %slice.0, i64 %slice.1, i64 %start1, i64 %end, %"core::panic::location::Location"* align 8 %0) #14
  unreachable

bb5:                                              ; preds = %bb2
  %9 = bitcast { i8*, i64 }* %_9 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %s.0 = load [0 x i8]*, [0 x i8]** %10, align 8, !nonnull !2, !align !11, !noundef !2
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %s.1 = load i64, i64* %11, align 8
  %12 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %s.0, 0
  %13 = insertvalue { [0 x i8]*, i64 } %12, i64 %s.1, 1
  ret { [0 x i8]*, i64 } %13
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3str6traits48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$str$GT$3cmp17hdc5f11ee5de01fc2E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !2, !align !11, !noundef !2
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %other.0, [0 x i8]** %10, align 8
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %other.1, i64* %11, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %13 = load [0 x i8]*, [0 x i8]** %12, align 8, !nonnull !2, !align !11, !noundef !2
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %13, 0
  %17 = insertvalue { [0 x i8]*, i64 } %16, i64 %15, 1
  %_7.0 = extractvalue { [0 x i8]*, i64 } %17, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %17, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %18 = call i8 @"_ZN4core5slice3cmp56_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$u5b$T$u5d$$GT$3cmp17hda7818d3d8119787E"([0 x i8]* align 1 %_4.0, i64 %_4.1, [0 x i8]* align 1 %_7.0, i64 %_7.1), !range !8
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8 %18
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3str6traits55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$str$GT$11partial_cmp17h187b49de183c8d56E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_3 = call i8 @"_ZN4core3str6traits48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$str$GT$3cmp17hdc5f11ee5de01fc2E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1), !range !8
  br label %bb1

bb1:                                              ; preds = %start
  store i8 %_3, i8* %0, align 1
  %1 = load i8, i8* %0, align 1, !range !9, !noundef !2
  ret i8 %1
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h21badb017efc4902E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h680d1d8c4297561cE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3str7pattern8Searcher10next_match17hbf3f6ab3a7f74bb7E(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %self) unnamed_addr #0 {
start:
  %_7 = alloca { i64, i64 }, align 8
  %_2 = alloca %"core::str::pattern::SearchStep", align 8
  br label %bb1

bb1:                                              ; preds = %bb5, %start
  call void @"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hc7efef2acc7f55a5E"(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %_2, %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"core::str::pattern::SearchStep"* %_2 to i64*
  %_4 = load i64, i64* %1, align 8, !range !15, !noundef !2
  switch i64 %_4, label %bb5 [
    i64 0, label %bb3
    i64 2, label %bb4
  ]

bb5:                                              ; preds = %bb2
  br label %bb1

bb3:                                              ; preds = %bb2
  %2 = bitcast %"core::str::pattern::SearchStep"* %_2 to %"core::str::pattern::SearchStep::Match"*
  %3 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %2, i32 0, i32 1
  %a = load i64, i64* %3, align 8
  %4 = bitcast %"core::str::pattern::SearchStep"* %_2 to %"core::str::pattern::SearchStep::Match"*
  %5 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %4, i32 0, i32 2
  %b = load i64, i64* %5, align 8
  %6 = bitcast { i64, i64 }* %_7 to i64*
  store i64 %a, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 1
  store i64 %b, i64* %7, align 8
  %8 = bitcast %"core::option::Option<(usize, usize)>"* %0 to %"core::option::Option<(usize, usize)>::Some"*
  %9 = getelementptr inbounds %"core::option::Option<(usize, usize)>::Some", %"core::option::Option<(usize, usize)>::Some"* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = bitcast %"core::option::Option<(usize, usize)>"* %0 to i64*
  store i64 1, i64* %16, align 8
  br label %bb6

bb4:                                              ; preds = %bb2
  %17 = bitcast %"core::option::Option<(usize, usize)>"* %0 to i64*
  store i64 0, i64* %17, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h839047e1282d4346E([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %v.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %v.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !2, !align !11, !noundef !2
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char18from_u32_unchecked17hfec1897cf1e72108E(i32 %i) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char7convert18from_u32_unchecked17hdd44e4998b395382E(i32 %i), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char7convert18from_u32_unchecked17hdd44e4998b395382E(i32 %i) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  store i32 %i, i32* %0, align 4
  %1 = load i32, i32* %0, align 4, !range !10, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17h538d92ef0618bdc9E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb1819e1ecfe17ff5E"(%"core::ops::range::RangeInclusive<usize>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$9spec_next17hd87d5017d20a8eb3E"(%"core::ops::range::RangeInclusive<usize>"* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h1508669437a7a8acE(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* align 8 %self) unnamed_addr #0 {
start:
  %_23 = alloca %"core::option::Option<core::fmt::Arguments>", align 8
  %_8 = alloca { i64, i64 }, align 8
  %_5 = alloca { i64*, i64* }, align 8
  %_3 = alloca { i64, { i64, i64 } }, align 8
  %upper = alloca { i64, i64 }, align 8
  call void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h2b5b5b3deb77692dE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_3, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast { i64, { i64, i64 } }* %_3 to i64*
  %lower = load i64, i64* %0, align 8
  %1 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_3, i32 0, i32 1
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8, !range !1, !noundef !2
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 0
  store i64 %3, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 1
  store i64 %5, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_8, i32 0, i32 1
  store i64 %lower, i64* %8, align 8
  %9 = bitcast { i64, i64 }* %_8 to i64*
  store i64 1, i64* %9, align 8
  %10 = bitcast { i64*, i64* }* %_5 to { i64, i64 }**
  store { i64, i64 }* %upper, { i64, i64 }** %10, align 8
  %11 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_5, i32 0, i32 1
  %12 = bitcast i64** %11 to { i64, i64 }**
  store { i64, i64 }* %_8, { i64, i64 }** %12, align 8
  %13 = bitcast { i64*, i64* }* %_5 to { i64, i64 }**
  %left_val = load { i64, i64 }*, { i64, i64 }** %13, align 8, !nonnull !2, !align !5, !noundef !2
  %14 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_5, i32 0, i32 1
  %15 = bitcast i64** %14 to { i64, i64 }**
  %right_val = load { i64, i64 }*, { i64, i64 }** %15, align 8, !nonnull !2, !align !5, !noundef !2
  %_13 = call zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0a23a4d6bf61a837E"({ i64, i64 }* align 8 %left_val, { i64, i64 }* align 8 %right_val)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_12 = xor i1 %_13, true
  br i1 %_12, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  ret i64 %lower

bb3:                                              ; preds = %bb2
  %16 = bitcast %"core::option::Option<core::fmt::Arguments>"* %_23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 48, i1 false)
  %17 = bitcast %"core::option::Option<core::fmt::Arguments>"* %_23 to {}**
  store {}* null, {}** %17, align 8
  call void @_ZN4core9panicking13assert_failed17ha9f056c38184cb11E(i8 0, { i64, i64 }* align 8 %left_val, { i64, i64 }* align 8 %right_val, %"core::option::Option<core::fmt::Arguments>"* %_23, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc159 to %"core::panic::location::Location"*)) #14
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h8a12d7686c9d0b39E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h2bb7a2fe4379a0d9E(i64 %align), !range !12
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !12, !noundef !2
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17hd81dedcccff0f889E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !12, !noundef !2
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd06fc3738f741f4aE(i64 %_3), !range !13
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h76bc0d1c4fb6de0cE(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha664e7e7635b2d91E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hd41e9a838999b61cE"(i64 48, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h595bfece0785cd03E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h9aa1d0ac2f9d51f4E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !1, !noundef !2
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4b6a2f6c7f9f645eE"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc161 to %"core::panic::location::Location"*))
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !range !3, !noundef !2
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb9:                                              ; preds = %bb5
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h8a12d7686c9d0b39E(i64 %val, i64 1)
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
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17he9d7e16ab864d4fcE(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hd41e9a838999b61cE"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h595bfece0785cd03E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h9aa1d0ac2f9d51f4E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !1, !noundef !2
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4b6a2f6c7f9f645eE"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc161 to %"core::panic::location::Location"*))
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !range !3, !noundef !2
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb9:                                              ; preds = %bb5
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h8a12d7686c9d0b39E(i64 %val, i64 1)
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
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17h7f002af6fbc45bd4E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17hd81dedcccff0f889E({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h5024aac75d60a745E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h9851868588ccf95cE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %0 = call align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17hec7ab938b391ed47E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h14cefd9c32fb9e8eE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h7903cd18423ef45bE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h1c5c2bd32eb589c2E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h65fa8d128163af3dE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: uwtable
define i8 @"_ZN4core5slice3cmp56_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$u5b$T$u5d$$GT$3cmp17hda7818d3d8119787E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = call i8 @"_ZN49_$LT$u8$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hdbe27db103c83dfeE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1), !range !8
  br label %bb1

bb1:                                              ; preds = %start
  ret i8 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h3c6ab6e1e59416dcE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h60ece4000a586b69E(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h1c5c2bd32eb589c2E"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h65fa8d128163af3dE"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h769b93ad9ef1a36dE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 1, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %4 = getelementptr i8, i8* %ptr, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds i8, i8* %ptr, i64 %slice.1
  store i8* %6, i8** %0, align 8
  %7 = load i8*, i8** %0, align 8
  store i8* %7, i8** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  store i8* %5, i8** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load i8*, i8** %end, align 8
  %8 = bitcast { i8*, i8* }* %2 to i8**
  store i8* %_18, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  store i8* %_21, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !nonnull !2, !noundef !2
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = insertvalue { i8*, i8* } undef, i8* %11, 0
  %15 = insertvalue { i8*, i8* } %14, i8* %13, 1
  ret { i8*, i8* } %15
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h63d0f11e450d664aE"(i8* align 1 %0, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %3 = bitcast i8** %self to {}**
  %4 = load {}*, {}** %3, align 8
  %5 = icmp eq {}* %4, null
  %_2 = select i1 %5, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h538d92ef0618bdc9E() #14
          to label %unreachable unwind label %cleanup

bb3:                                              ; preds = %start
  %val = load i8*, i8** %self, align 8, !nonnull !2, !align !11, !noundef !2
  ret i8* %val

bb7:                                              ; preds = %cleanup
  %6 = bitcast i8** %self to {}**
  %7 = load {}*, {}** %6, align 8
  %8 = icmp eq {}* %7, null
  %_5 = select i1 %8, i64 0, i64 1
  %9 = icmp eq i64 %_5, 1
  br i1 %9, label %bb5, label %bb4

cleanup:                                          ; preds = %bb1
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb7

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb7
  br i1 true, label %bb6, label %bb4

bb4:                                              ; preds = %bb6, %bb5, %bb7
  %15 = bitcast { i8*, i32 }* %2 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb6:                                              ; preds = %bb5
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN4core6option15Option$LT$T$GT$3map17hc405858ea540bf78E"(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %_9 = alloca i8, align 1
  %_7 = alloca i32, align 4
  %2 = alloca i32, align 4
  %self = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %4, align 4
  store i8 1, i8* %_9, align 1
  %5 = bitcast { i32, i32 }* %self to i32*
  %6 = load i32, i32* %5, align 4, !range !14, !noundef !2
  %_3 = zext i32 %6 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %7 = bitcast i32* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  store i32 1114112, i32* %2, align 4
  br label %bb7

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %x = load i32, i32* %8, align 4
  store i8 0, i8* %_9, align 1
  store i32 %x, i32* %_7, align 4
  %9 = load i32, i32* %_7, align 4
  %_5 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hfb572943e281a18dE"(i32 %9), !range !10
  br label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_5, i32* %2, align 4
  br label %bb7

bb7:                                              ; preds = %bb4, %bb1
  %10 = load i8, i8* %_9, align 1, !range !6, !noundef !2
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %12 = load i32, i32* %2, align 4, !range !16, !noundef !2
  ret i32 %12

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h595bfece0785cd03E"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %_3 = load i64, i64* %5, align 8, !range !1, !noundef !2
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
  %12 = load i8, i8* %_7, align 1, !range !6, !noundef !2
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !range !1, !noundef !2
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h770196b5bb5f635eE"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2, i64 %err.0, i64 %err.1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %5, align 8, !range !1, !noundef !2
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
  %15 = load i8, i8* %_7, align 1, !range !6, !noundef !2
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  ret void

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17he37440f03370d69bE"(i8* %0) unnamed_addr #0 {
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
  %9 = load i8, i8* %_7, align 1, !range !6, !noundef !2
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hc0ab79362e20bd41E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !3, !noundef !2
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
  %t.1 = load i64, i64* %10, align 8, !range !12, !noundef !2
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !3, !noundef !2
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h538d92ef0618bdc9E() #14
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %16 = load i64, i64* %15, align 8, !range !3, !noundef !2
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
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h3e9b9d65109a3d73E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %1, i64 %2, i64* align 8 %op) unnamed_addr #0 {
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
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h9b60463770c1342fE"(i64* align 8 %op)
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
  %22 = load i8, i8* %_11, align 1, !range !6, !noundef !2
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h7bc8dabd0a65014aE"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %6 = load i64, i64* %5, align 8, !range !4, !noundef !2
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
  %e.1 = load i64, i64* %14, align 8, !range !3, !noundef !2
  store i8 0, i8* %_11, align 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !range !3, !noundef !2
  %21 = call { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17he4546dce69c51210E"(i64 %18, i64 %20)
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
  %24 = load i8, i8* %_11, align 1, !range !6, !noundef !2
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %29 = load i64, i64* %28, align 8, !range !4, !noundef !2
  %30 = insertvalue { i64, i64 } undef, i64 %27, 0
  %31 = insertvalue { i64, i64 } %30, i64 %29, 1
  ret { i64, i64 } %31

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hb2d1c91db467b731E"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2) unnamed_addr #0 {
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
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !2
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
  %t.1 = load i64, i64* %9, align 8, !range !12, !noundef !2
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
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h7d88c068bfb902a0E"()
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
  %22 = load i8, i8* %_11, align 1, !range !6, !noundef !2
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: cold noreturn uwtable
define void @_ZN4core9panicking13assert_failed17ha9f056c38184cb11E(i8 %kind, { i64, i64 }* align 8 %0, { i64, i64 }* align 8 %1, %"core::option::Option<core::fmt::Arguments>"* %args, %"core::panic::location::Location"* align 8 %2) unnamed_addr #3 {
start:
  %_13 = alloca %"core::option::Option<core::fmt::Arguments>", align 8
  %right = alloca { i64, i64 }*, align 8
  %left = alloca { i64, i64 }*, align 8
  store { i64, i64 }* %0, { i64, i64 }** %left, align 8
  store { i64, i64 }* %1, { i64, i64 }** %right, align 8
  %_7.0 = bitcast { i64, i64 }** %left to {}*
  %_10.0 = bitcast { i64, i64 }** %right to {}*
  %3 = bitcast %"core::option::Option<core::fmt::Arguments>"* %_13 to i8*
  %4 = bitcast %"core::option::Option<core::fmt::Arguments>"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 48, i1 false)
  call void @_ZN4core9panicking19assert_failed_inner17h232935602d3588d9E(i8 %kind, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), {}* align 1 %_10.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), %"core::option::Option<core::fmt::Arguments>"* %_13, %"core::panic::location::Location"* align 8 %2) #14
  unreachable
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h5b17a2aae5c320bcE"(i64 %t.0, i64 %t.1) unnamed_addr #1 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %t.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h63c1af6c00e1f9d3E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17he0d042400ea965d6E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2add7c937afb740fE"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h873017416275e56eE"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h80490b71e717e327E"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hb50bcc7ccdeecfb4E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17he9fef1bca1ff1283E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  store i8 1, i8* %_17, align 1
  %_3 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h14cefd9c32fb9e8eE"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb1 unwind label %cleanup

bb12:                                             ; preds = %bb9, %cleanup
  %1 = load i8, i8* %_17, align 1, !range !6, !noundef !2
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
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17heebd36a9969a4dddE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, i64 %_3)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_7 = invoke i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h65fa8d128163af3dE"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb3 unwind label %cleanup1

bb9:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h234718032647b967E"(%"alloc::vec::Vec<u8>"* %v) #15
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
  %_9 = invoke i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hb8d3194b443870abE"(%"alloc::vec::Vec<u8>"* align 8 %v)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
  %_11 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h14cefd9c32fb9e8eE"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  invoke void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17hc838b76c8a87a2e6E"(i8* %_7, i8* %_9, i64 %_11)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  %_15 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h14cefd9c32fb9e8eE"([0 x i8]* align 1 %s.0, i64 %s.1)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17hb3fd9ec6fb66f931E"(%"alloc::vec::Vec<u8>"* align 8 %v, i64 %_15)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  ret void

abort:                                            ; preds = %bb9
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
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
define zeroext i1 @"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hf91aec44a978e1ebE"({ i32*, i32* }* align 8 %self, i32 %c) unnamed_addr #0 {
start:
  %_4 = alloca i32, align 4
  store i32 %c, i32* %_4, align 4
  %0 = load i32, i32* %_4, align 4, !range !10, !noundef !2
  %1 = call zeroext i1 @"_ZN18parse_query_string9scan_part28_$u7b$$u7b$closure$u7d$$u7d$17h3110186b979125ebE"({ i32*, i32* }* align 8 %self, i32 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17h55a3ecefed17de62E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h48514addacd7a9cdE"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h14375520b9103638E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %_2 = alloca %"alloc::vec::Vec<u8>", align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !2, !align !11, !noundef !2
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd7707c9b49e95d0aE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %_2, [0 x i8]* align 1 %_4.0, i64 %_4.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN5alloc6string6String19from_utf8_unchecked17h27407292d0185968E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"alloc::vec::Vec<u8>"* %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hceb9967eefc1f8ffE"(%"alloc::vec::Vec<UrlKeyValue>"* sret(%"alloc::vec::Vec<UrlKeyValue>") %0, i64 %capacity) unnamed_addr #0 {
start:
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17ha7d5dca76f4da207E"(%"alloc::vec::Vec<UrlKeyValue>"* sret(%"alloc::vec::Vec<UrlKeyValue>") %0, i64 %capacity)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hb8d3194b443870abE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h56139e7e985d491aE"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h50ba1c14d66a99dcE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define %UrlKeyValue* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hf7b98d4673eea99eE"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %self to { i8*, i64 }*
  %ptr = call %UrlKeyValue* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h1b6a414b844af2a9E"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8d4f31ac90eccf49E"(%UrlKeyValue* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret %UrlKeyValue* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17ha7d5dca76f4da207E"(%"alloc::vec::Vec<UrlKeyValue>"* sret(%"alloc::vec::Vec<UrlKeyValue>") %0, i64 %capacity) unnamed_addr #0 {
start:
  %1 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h85fb5fde21db0d80E"(i64 %capacity)
  %_3.0 = extractvalue { i8*, i64 } %1, 0
  %_3.1 = extractvalue { i8*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %0 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_3.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_3.1, i64* %4, align 8
  %5 = getelementptr inbounds %"alloc::vec::Vec<UrlKeyValue>", %"alloc::vec::Vec<UrlKeyValue>"* %0, i32 0, i32 1
  store i64 0, i64* %5, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17heebd36a9969a4dddE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, i64 %capacity) unnamed_addr #0 {
start:
  %1 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h95859deeb6564992E"(i64 %capacity)
  %_3.0 = extractvalue { i8*, i64 } %1, 0
  %_3.1 = extractvalue { i8*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"alloc::vec::Vec<u8>"* %0 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_3.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_3.1, i64* %4, align 8
  %5 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %0, i32 0, i32 1
  store i64 0, i64* %5, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h48aff8d18af7d36bE"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<UrlKeyValue>", %"alloc::vec::Vec<UrlKeyValue>"* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb0e545bb89c88d99E"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %self, %UrlKeyValue* %value) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca i64, align 8
  %1 = alloca %UrlKeyValue*, align 8
  %2 = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  %_16 = alloca %UrlKeyValue, align 1
  store i8 1, i8* %_17, align 1
  %3 = getelementptr inbounds %"alloc::vec::Vec<UrlKeyValue>", %"alloc::vec::Vec<UrlKeyValue>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %3, align 8
  %_6 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %self to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %0, align 8
  %6 = load i64, i64* %0, align 8
  br label %bb1

bb10:                                             ; preds = %cleanup
  %7 = load i8, i8* %_17, align 1, !range !6, !noundef !2
  %8 = trunc i8 %7 to i1
  br i1 %8, label %bb9, label %bb8

cleanup:                                          ; preds = %bb6, %bb2, %bb4
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb10

bb1:                                              ; preds = %start
  %_3 = icmp eq i64 %_4, %6
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %_11 = invoke %UrlKeyValue* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hf7b98d4673eea99eE"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %self)
          to label %bb5 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_8 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %self to { i8*, i64 }*
  %14 = getelementptr inbounds %"alloc::vec::Vec<UrlKeyValue>", %"alloc::vec::Vec<UrlKeyValue>"* %self, i32 0, i32 1
  %_9 = load i64, i64* %14, align 8
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h03c28a2053c7797dE"({ i8*, i64 }* align 8 %_8, i64 %_9)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  br label %bb4

bb5:                                              ; preds = %bb4
  %15 = getelementptr inbounds %"alloc::vec::Vec<UrlKeyValue>", %"alloc::vec::Vec<UrlKeyValue>"* %self, i32 0, i32 1
  %_13 = load i64, i64* %15, align 8
  %16 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %_11, i64 %_13
  store %UrlKeyValue* %16, %UrlKeyValue** %1, align 8
  %_3.i = load %UrlKeyValue*, %UrlKeyValue** %1, align 8
  br label %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h62f9124ed3c2bbbfE.exit"

"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h62f9124ed3c2bbbfE.exit": ; preds = %bb5
  br label %bb6

bb6:                                              ; preds = %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h62f9124ed3c2bbbfE.exit"
  store i8 0, i8* %_17, align 1
  %17 = bitcast %UrlKeyValue* %_16 to i8*
  %18 = bitcast %UrlKeyValue* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 48, i1 false)
  invoke void @_ZN4core3ptr5write17hda3e491d8237333aE(%UrlKeyValue* %_3.i, %UrlKeyValue* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %19 = getelementptr inbounds %"alloc::vec::Vec<UrlKeyValue>", %"alloc::vec::Vec<UrlKeyValue>"* %self, i32 0, i32 1
  %20 = getelementptr inbounds %"alloc::vec::Vec<UrlKeyValue>", %"alloc::vec::Vec<UrlKeyValue>"* %self, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %19, align 8
  ret void

bb8:                                              ; preds = %bb9, %bb10
  %23 = bitcast { i8*, i32 }* %2 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = insertvalue { i8*, i32 } undef, i8* %24, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

bb9:                                              ; preds = %bb10
  invoke void @"_ZN4core3ptr52drop_in_place$LT$parse_query_string..UrlKeyValue$GT$17h269c1bf9ca049677E"(%UrlKeyValue* %value) #15
          to label %bb8 unwind label %abort

abort:                                            ; preds = %bb9
  %29 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h88051b4058831187E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h56139e7e985d491aE"({ i8*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h50ba1c14d66a99dcE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17hb3fd9ec6fb66f931E"(%"alloc::vec::Vec<u8>"* align 8 %self, i64 %new_len) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  store i64 %new_len, i64* %0, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define align 1 %"alloc::alloc::Global"* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17hc0d6766a79d8592cE"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %self to { i8*, i64 }*
  %0 = call align 1 %"alloc::alloc::Global"* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17hd0becdfe0365a88fE"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::alloc::Global"* %0
}

; Function Attrs: uwtable
define { [0 x %UrlKeyValue]*, i64 } @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17h35206a1b08c7ed4bE"(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* align 8 %0) unnamed_addr #1 {
start:
  %self = alloca %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"*, align 8
  store %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %0, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"** %self, align 8
  %1 = load %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"*, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"** %self, align 8, !nonnull !2, !align !5, !noundef !2
  %2 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %1, i32 0, i32 4
  %_3 = load %UrlKeyValue*, %UrlKeyValue** %2, align 8
  %_4 = call i64 @"_ZN83_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hf264a5609dc56101E"(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %3 = call { [0 x %UrlKeyValue]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hd5a9401c960c47a1E(%UrlKeyValue* %_3, i64 %_4)
  %4 = extractvalue { [0 x %UrlKeyValue]*, i64 } %3, 0
  %5 = extractvalue { [0 x %UrlKeyValue]*, i64 } %3, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = insertvalue { [0 x %UrlKeyValue]*, i64 } undef, [0 x %UrlKeyValue]* %4, 0
  %7 = insertvalue { [0 x %UrlKeyValue]*, i64 } %6, i64 %5, 1
  ret { [0 x %UrlKeyValue]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h35bf52583f4720eeE(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17hd81dedcccff0f889E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #17
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h946fa4baddfe1715E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17hd81dedcccff0f889E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #17
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h8dc5457d77ad5620E(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17h7f002af6fbc45bd4E({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !12, !noundef !2
  %8 = call i8* @_ZN5alloc5alloc5alloc17h946fa4baddfe1715E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !12, !noundef !2
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h35bf52583f4720eeE(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h2e05be5e65953885E"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17he37440f03370d69bE"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h593edc120490b60bE"(i8* %_16)
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
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h7dda78e3bff25158E"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h607368dd20f09b12E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc166 to %"core::panic::location::Location"*))
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
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h7dda78e3bff25158E"(i8* %_7, i64 0)
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
define internal { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17hec22d8ad1a4ad8e4E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1, i64 %2, i64 %3, i1 zeroext %zeroed) unnamed_addr #0 {
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
  %_6 = call i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %old_layout)
  br label %bb1

bb1:                                              ; preds = %start
  %10 = icmp eq i64 %_6, 0
  br i1 %10, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_9.0 = load i64, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_9.1 = load i64, i64* %12, align 8, !range !12, !noundef !2
  %13 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h8dc5457d77ad5620E(%"alloc::alloc::Global"* align 1 %self, i64 %_9.0, i64 %_9.1, i1 zeroext %zeroed)
  store { i8*, i64 } %13, { i8*, i64 }* %5, align 8
  br label %bb3

bb4:                                              ; preds = %bb1
  %_14 = call i64 @_ZN4core5alloc6layout6Layout5align17hd81dedcccff0f889E({ i64, i64 }* align 8 %old_layout)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_16 = call i64 @_ZN4core5alloc6layout6Layout5align17hd81dedcccff0f889E({ i64, i64 }* align 8 %new_layout)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_13 = icmp eq i64 %_14, %_16
  br i1 %_13, label %bb7, label %bb8

bb8:                                              ; preds = %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_56.0 = load i64, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_56.1 = load i64, i64* %15, align 8, !range !12, !noundef !2
  %16 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h8dc5457d77ad5620E(%"alloc::alloc::Global"* align 1 %self, i64 %_56.0, i64 %_56.1, i1 zeroext %zeroed)
  %_54.0 = extractvalue { i8*, i64 } %16, 0
  %_54.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb26

bb7:                                              ; preds = %bb6
  %new_size = call i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %new_layout)
  br label %bb9

bb9:                                              ; preds = %bb7
  %_23 = call i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %old_layout)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_21 = icmp uge i64 %new_size, %_23
  call void @llvm.assume(i1 %_21)
  br label %bb11

bb11:                                             ; preds = %bb10
  %_26 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %ptr)
  br label %bb12

bb12:                                             ; preds = %bb11
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_28.0 = load i64, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_28.1 = load i64, i64* %18, align 8, !range !12, !noundef !2
  %raw_ptr = call i8* @_ZN5alloc5alloc7realloc17h8b26c7fa3f7460edE(i8* %_26, i64 %_28.0, i64 %_28.1, i64 %new_size)
  br label %bb13

bb13:                                             ; preds = %bb12
  %_33 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h2e05be5e65953885E"(i8* %raw_ptr)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_32 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17he37440f03370d69bE"(i8* %_33)
  br label %bb15

bb15:                                             ; preds = %bb14
  %19 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h593edc120490b60bE"(i8* %_32)
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
  %23 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h607368dd20f09b12E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc168 to %"core::panic::location::Location"*))
  store { i8*, i64 } %23, { i8*, i64 }* %5, align 8
  br label %bb20

bb20:                                             ; preds = %bb19
  br label %bb37

bb37:                                             ; preds = %bb31, %bb20
  br label %bb38

bb24:                                             ; preds = %bb23, %bb17
  %24 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h7dda78e3bff25158E"(i8* %val, i64 %new_size)
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
  call void @_ZN4core10intrinsics11write_bytes17h287c3b09dd4a7f6aE(i8* %_3.i, i8 0, i64 %_45)
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
  %28 = call { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h12e23bc322b48953E"(i8* %_54.0, i64 %_54.1)
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
  %_64 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %ptr)
  br label %bb32

bb30:                                             ; preds = %bb27
  %34 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h607368dd20f09b12E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc170 to %"core::panic::location::Location"*))
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
  %_66 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h9e02be5eb4da71e6E"(i8* %val.0, i64 %val.1)
  br label %bb33

bb33:                                             ; preds = %bb32
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h585474ec754f1c31E(i8* %_64, i8* %_66, i64 %_6)
  br label %bb34

bb34:                                             ; preds = %bb33
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_72.0 = load i64, i64* %41, align 8
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_72.1 = load i64, i64* %42, align 8, !range !12, !noundef !2
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2d07371f2c213f1eE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %_72.0, i64 %_72.1)
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
define internal void @_ZN5alloc5alloc7dealloc17hd996a5b6bc27980fE(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17hd81dedcccff0f889E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #17
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc7realloc17h8b26c7fa3f7460edE(i8* %ptr, i64 %0, i64 %1, i64 %new_size) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_5 = call i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core5alloc6layout6Layout5align17hd81dedcccff0f889E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_realloc(i8* %ptr, i64 %_5, i64 %_7, i64 %new_size) #17
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h48400a7b5540eb93E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h71bbf8baa94f82f2E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h71bbf8baa94f82f2E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  call void @_ZN5alloc5slice4hack6to_vec17h2d5bf27c2c05e59aE(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5slice4hack6to_vec17h2d5bf27c2c05e59aE(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17he9fef1bca1ff1283E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd7707c9b49e95d0aE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h48400a7b5540eb93E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc6string6String19from_utf8_unchecked17h27407292d0185968E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"alloc::vec::Vec<u8>"* %bytes) unnamed_addr #0 {
start:
  %_2 = alloca %"alloc::vec::Vec<u8>", align 8
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_2 to i8*
  %2 = bitcast %"alloc::vec::Vec<u8>"* %bytes to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  %3 = bitcast %"alloc::string::String"* %0 to %"alloc::vec::Vec<u8>"*
  %4 = bitcast %"alloc::vec::Vec<u8>"* %3 to i8*
  %5 = bitcast %"alloc::vec::Vec<u8>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17h0744b2c93b49dcfdE(i64 %alloc_size) unnamed_addr #0 {
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
  %8 = load i64, i64* %7, align 8, !range !3, !noundef !2
  %9 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2add7c937afb740fE"(i64 %6, i64 %8)
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
  %15 = load i64, i64* %14, align 8, !range !4, !noundef !2
  %16 = insertvalue { i64, i64 } undef, i64 %13, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: noinline uwtable
define void @_ZN5alloc7raw_vec11finish_grow17hc1abee7e2f339650E(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, %"alloc::alloc::Global"* align 1 %alloc) unnamed_addr #4 {
start:
  %_41 = alloca i64*, align 8
  %old_layout = alloca { i64, i64 }, align 8
  %memory = alloca { i8*, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %_6 = alloca %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>", align 8
  %_5 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>", align 8
  %new_layout = alloca { i64, i64 }, align 8
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hb2d1c91db467b731E"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %_6, i64 %new_layout.0, i64 %new_layout.1)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h98b1f3073dc81a0cE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %_5, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to i64*
  %_9 = load i64, i64* %1, align 8, !range !1, !noundef !2
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
  %val.1 = load i64, i64* %5, align 8, !range !12, !noundef !2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %val.0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %val.1, i64* %7, align 8
  %_15 = call i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %new_layout)
  br label %bb7

bb5:                                              ; preds = %bb2
  %8 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %9 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %residual.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %residual.1 = load i64, i64* %11, align 8, !range !3, !noundef !2
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17had13c65ce3b5ade9E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc172 to %"core::panic::location::Location"*))
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb13, %bb6
  br label %bb24

bb7:                                              ; preds = %bb3
  %12 = call { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17h0744b2c93b49dcfdE(i64 %_15)
  %_14.0 = extractvalue { i64, i64 } %12, 0
  %_14.1 = extractvalue { i64, i64 } %12, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %13 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17haa6870a0e535e36aE"(i64 %_14.0, i64 %_14.1)
  store { i64, i64 } %13, { i64, i64 }* %_13, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !range !4, !noundef !2
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
  %19 = load i64, i64* %18, align 8, !range !3, !noundef !2
  %20 = icmp eq i64 %19, 0
  %_22 = select i1 %20, i64 0, i64 1
  %21 = icmp eq i64 %_22, 1
  br i1 %21, label %bb15, label %bb14

bb12:                                             ; preds = %bb9
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 0
  %residual.01 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %residual.12 = load i64, i64* %23, align 8, !range !3, !noundef !2
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd5b2481b0ba2094fE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.01, i64 %residual.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc174 to %"core::panic::location::Location"*))
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
  %33 = load i64, i64* %32, align 8, !range !12, !noundef !2
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %_30 = call i64 @_ZN4core5alloc6layout6Layout5align17hd81dedcccff0f889E({ i64, i64 }* align 8 %old_layout)
  br label %bb16

bb14:                                             ; preds = %bb10
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_39.0 = load i64, i64* %36, align 8
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_39.1 = load i64, i64* %37, align 8, !range !12, !noundef !2
  %38 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hff05a9d1cf14f5a4E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_39.0, i64 %_39.1)
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
  %42 = load i64*, i64** %_41, align 8, !nonnull !2, !align !5, !noundef !2
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h3e9b9d65109a3d73E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %_40.0, i64 %_40.1, i64* align 8 %42)
  br label %bb22

bb16:                                             ; preds = %bb15
  %_32 = call i64 @_ZN4core5alloc6layout6Layout5align17hd81dedcccff0f889E({ i64, i64 }* align 8 %new_layout)
  br label %bb17

bb17:                                             ; preds = %bb16
  %_29 = icmp eq i64 %_30, %_32
  call void @llvm.assume(i1 %_29)
  br label %bb18

bb18:                                             ; preds = %bb17
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_36.0 = load i64, i64* %43, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_36.1 = load i64, i64* %44, align 8, !range !12, !noundef !2
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_37.0 = load i64, i64* %45, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_37.1 = load i64, i64* %46, align 8, !range !12, !noundef !2
  %47 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h3452f346a021c186E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %ptr, i64 %_36.0, i64 %_36.1, i64 %_37.0, i64 %_37.1)
  store { i8*, i64 } %47, { i8*, i64 }* %memory, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  br label %bb21

bb22:                                             ; preds = %bb21
  br label %bb24
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h7d88c068bfb902a0E"() unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !2
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h9b60463770c1342fE"(i64* align 8 %0) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  %1 = bitcast i64** %_1 to { i64, i64 }**
  %_5 = load { i64, i64 }*, { i64, i64 }** %1, align 8, !nonnull !2, !align !5, !noundef !2
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %_4.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %_4.1 = load i64, i64* %3, align 8, !range !12, !noundef !2
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  store i64 %_4.0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %_4.1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %9 = load i64, i64* %8, align 8, !range !3, !noundef !2
  %10 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2add7c937afb740fE"(i64 %7, i64 %9)
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %start
  %13 = insertvalue { i64, i64 } undef, i64 %11, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc7raw_vec14handle_reserve17hfc7aab40dc296691E(i64 %result.0, i64 %result.1) unnamed_addr #0 {
start:
  %_2 = alloca { i64, i64 }, align 8
  %0 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h7bc8dabd0a65014aE"(i64 %result.0, i64 %result.1)
  store { i64, i64 } %0, { i64, i64 }* %_2, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %2 = load i64, i64* %1, align 8, !range !4, !noundef !2
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
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !2
  %7 = icmp eq i64 %6, 0
  %_5 = select i1 %7, i64 0, i64 1
  switch i64 %_5, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb3
  call void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #14
  unreachable

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 0
  %layout.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %layout.1 = load i64, i64* %9, align 8, !range !12, !noundef !2
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #14
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17he4546dce69c51210E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %e = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = call { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17h55a3ecefed17de62E({ i64, i64 }* align 8 %e)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h00f9634cdc431da6E"(i64 %capacity, i1 zeroext %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %result = alloca { i8*, i64 }, align 8
  %_15 = alloca { i64, i64 }, align 8
  %_10 = alloca { i64, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %_4 = alloca i8, align 1
  %2 = alloca { i8*, i64 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %init, align 1
  store i8 1, i8* %_37, align 1
  br label %bb4

bb32:                                             ; preds = %cleanup
  %4 = load i8, i8* %_37, align 1, !range !6, !noundef !2
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
  %11 = icmp eq i64 48, 0
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
  %13 = load i8, i8* %_4, align 1, !range !6, !noundef !2
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb5, label %bb7

bb7:                                              ; preds = %bb3
  %15 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha664e7e7635b2d91E(i64 %capacity)
          to label %bb8 unwind label %cleanup

bb5:                                              ; preds = %bb3
  store i8 0, i8* %_37, align 1
  %16 = invoke { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17he9cafb19f216fafcE"()
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store { i8*, i64 } %16, { i8*, i64 }* %2, align 8
  br label %bb29

bb29:                                             ; preds = %bb28, %bb6
  %17 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !nonnull !2, !noundef !2
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { i8*, i64 } undef, i8* %18, 0
  %22 = insertvalue { i8*, i64 } %21, i64 %20, 1
  ret { i8*, i64 } %22

bb8:                                              ; preds = %bb7
  store { i64, i64 } %15, { i64, i64 }* %_10, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1
  %24 = load i64, i64* %23, align 8, !range !3, !noundef !2
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
  %layout.1 = load i64, i64* %27, align 8, !range !12, !noundef !2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %layout.0, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %layout.1, i64* %29, align 8
  %_16 = invoke i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %layout)
          to label %bb12 unwind label %cleanup

bb9:                                              ; preds = %bb8
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #14
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb23, %bb14, %bb9
  unreachable

bb12:                                             ; preds = %bb11
  %30 = invoke { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17h0744b2c93b49dcfdE(i64 %_16)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  store { i64, i64 } %30, { i64, i64 }* %_15, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_15, i32 0, i32 1
  %32 = load i64, i64* %31, align 8, !range !4, !noundef !2
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
  %35 = load i8, i8* %init, align 1, !range !6, !noundef !2
  %36 = trunc i8 %35 to i1
  %_21 = zext i1 %36 to i64
  switch i64 %_21, label %bb18 [
    i64 0, label %bb19
    i64 1, label %bb17
  ]

bb14:                                             ; preds = %bb13
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #14
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb16
  unreachable

bb19:                                             ; preds = %bb16
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_23.0 = load i64, i64* %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_23.1 = load i64, i64* %38, align 8, !range !12, !noundef !2
  %39 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hff05a9d1cf14f5a4E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_23.0, i64 %_23.1)
          to label %bb20 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_25.0 = load i64, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_25.1 = load i64, i64* %41, align 8, !range !12, !noundef !2
  %42 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hf4f188d6fb67ea04E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_25.0, i64 %_25.1)
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
  %_33 = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9a31267f4ce48163E"(i8* %ptr.0, i64 %ptr.1)
          to label %bb26 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_30.0 = load i64, i64* %48, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_30.1 = load i64, i64* %49, align 8, !range !12, !noundef !2
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %_30.0, i64 %_30.1) #14
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_32 = invoke %UrlKeyValue* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfddfa18f8e3afa5aE"(i8* %_33)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_31 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hf0ec127cf3746201E"(%UrlKeyValue* %_32)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  %50 = bitcast { i8*, i64 }* %2 to i8**
  store i8* %_31, i8** %50, align 8
  %51 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %capacity, i64* %51, align 8
  %52 = bitcast { i8*, i64 }* %2 to %"alloc::alloc::Global"*
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
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17ha00e50b0307cea21E"(i64 %capacity, i1 zeroext %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %result = alloca { i8*, i64 }, align 8
  %_15 = alloca { i64, i64 }, align 8
  %_10 = alloca { i64, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %_4 = alloca i8, align 1
  %2 = alloca { i8*, i64 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %init, align 1
  store i8 1, i8* %_37, align 1
  br label %bb4

bb32:                                             ; preds = %cleanup
  %4 = load i8, i8* %_37, align 1, !range !6, !noundef !2
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
  %11 = icmp eq i64 1, 0
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
  %13 = load i8, i8* %_4, align 1, !range !6, !noundef !2
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb5, label %bb7

bb7:                                              ; preds = %bb3
  %15 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array17he9d7e16ab864d4fcE(i64 %capacity)
          to label %bb8 unwind label %cleanup

bb5:                                              ; preds = %bb3
  store i8 0, i8* %_37, align 1
  %16 = invoke { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h11d818c4f2d51288E"()
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store { i8*, i64 } %16, { i8*, i64 }* %2, align 8
  br label %bb29

bb29:                                             ; preds = %bb28, %bb6
  %17 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !nonnull !2, !noundef !2
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { i8*, i64 } undef, i8* %18, 0
  %22 = insertvalue { i8*, i64 } %21, i64 %20, 1
  ret { i8*, i64 } %22

bb8:                                              ; preds = %bb7
  store { i64, i64 } %15, { i64, i64 }* %_10, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1
  %24 = load i64, i64* %23, align 8, !range !3, !noundef !2
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
  %layout.1 = load i64, i64* %27, align 8, !range !12, !noundef !2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %layout.0, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %layout.1, i64* %29, align 8
  %_16 = invoke i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %layout)
          to label %bb12 unwind label %cleanup

bb9:                                              ; preds = %bb8
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #14
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb23, %bb14, %bb9
  unreachable

bb12:                                             ; preds = %bb11
  %30 = invoke { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17h0744b2c93b49dcfdE(i64 %_16)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  store { i64, i64 } %30, { i64, i64 }* %_15, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_15, i32 0, i32 1
  %32 = load i64, i64* %31, align 8, !range !4, !noundef !2
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
  %35 = load i8, i8* %init, align 1, !range !6, !noundef !2
  %36 = trunc i8 %35 to i1
  %_21 = zext i1 %36 to i64
  switch i64 %_21, label %bb18 [
    i64 0, label %bb19
    i64 1, label %bb17
  ]

bb14:                                             ; preds = %bb13
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #14
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb16
  unreachable

bb19:                                             ; preds = %bb16
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_23.0 = load i64, i64* %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_23.1 = load i64, i64* %38, align 8, !range !12, !noundef !2
  %39 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hff05a9d1cf14f5a4E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_23.0, i64 %_23.1)
          to label %bb20 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_25.0 = load i64, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_25.1 = load i64, i64* %41, align 8, !range !12, !noundef !2
  %42 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hf4f188d6fb67ea04E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_25.0, i64 %_25.1)
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
  %_33 = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb72e3776a1d9d716E"(i8* %ptr.0, i64 %ptr.1)
          to label %bb26 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_30.0 = load i64, i64* %48, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_30.1 = load i64, i64* %49, align 8, !range !12, !noundef !2
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %_30.0, i64 %_30.1) #14
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_32 = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %_33)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_31 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hac38e050594a0747E"(i8* %_32)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  %50 = bitcast { i8*, i64 }* %2 to i8**
  store i8* %_31, i8** %50, align 8
  %51 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %capacity, i64* %51, align 8
  %52 = bitcast { i8*, i64 }* %2 to %"alloc::alloc::Global"*
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h42acb10cc3e52d14E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_9 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 48, 0
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
  %4 = load i8, i8* %_2, align 1, !range !6, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha664e7e7635b2d91E(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hc0ab79362e20bd41E"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc176 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !2, !noundef !2
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hee330e247705ea51E"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h80490b71e717e327E"(i8* %_11)
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h5c8aa83f7c17d455E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
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
  %4 = load i8, i8* %_2, align 1, !range !6, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17he9d7e16ab864d4fcE(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hc0ab79362e20bd41E"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc176 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !2, !noundef !2
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h4b0ff505a15827b9E"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h80490b71e717e327E"(i8* %_11)
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
define { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hbc6c9c1834d1e03cE"({ i8*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #1 {
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
  %1 = icmp eq i64 48, 0
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %2 = bitcast { i64, i64 }* %_6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !3, !noundef !2
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2add7c937afb740fE"(i64 %5, i64 %7)
  %_5.0 = extractvalue { i64, i64 } %8, 0
  %_5.1 = extractvalue { i64, i64 } %8, 1
  br label %bb3

bb4:                                              ; preds = %bb1
  %9 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h3e0b0e2d8dfeb7ddE"(i64 %len, i64 %additional)
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
  %15 = load i64, i64* %14, align 8, !range !3, !noundef !2
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h770196b5bb5f635eE"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %_9, i64 %_10.0, i64 %_10.1, i64 %13, i64 %15)
  br label %bb6

bb6:                                              ; preds = %bb5
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2a4d10ad56170302E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %_8, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  %16 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to i64*
  %_14 = load i64, i64* %16, align 8, !range !1, !noundef !2
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
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_20 = load i64, i64* %19, align 8
  %_19 = mul i64 %_20, 2
  %cap = call i64 @_ZN4core3cmp3max17hbc66f78c7f702320E(i64 %_19, i64 %val)
  br label %bb12

bb10:                                             ; preds = %bb7
  %20 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %21 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %20, i32 0, i32 1
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %residual.0 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %residual.1 = load i64, i64* %23, align 8, !range !3, !noundef !2
  %24 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hab9ed6d6e00ebf70E"(i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc178 to %"core::panic::location::Location"*))
  store { i64, i64 } %24, { i64, i64 }* %0, align 8
  br label %bb11

bb11:                                             ; preds = %bb10
  br label %bb23

bb23:                                             ; preds = %bb21, %bb11
  br label %bb24

bb12:                                             ; preds = %bb8
  %cap1 = call i64 @_ZN4core3cmp3max17hbc66f78c7f702320E(i64 4, i64 %cap)
  br label %bb13

bb13:                                             ; preds = %bb12
  %25 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha664e7e7635b2d91E(i64 %cap1)
  %new_layout.0 = extractvalue { i64, i64 } %25, 0
  %new_layout.1 = extractvalue { i64, i64 } %25, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h42acb10cc3e52d14E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_30, { i8*, i64 }* align 8 %self)
  br label %bb15

bb15:                                             ; preds = %bb14
  %_33 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @_ZN5alloc7raw_vec11finish_grow17hc1abee7e2f339650E(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %_28, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30, %"alloc::alloc::Global"* align 1 %_33)
  br label %bb16

bb16:                                             ; preds = %bb15
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5ba8274b5050bb02E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %_27, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %_28)
  br label %bb17

bb17:                                             ; preds = %bb16
  %26 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to i64*
  %_34 = load i64, i64* %26, align 8, !range !1, !noundef !2
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
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h76d22a1fcee8b7aeE"({ i8*, i64 }* align 8 %self, i8* %val.0, i64 %val.1, i64 %cap1)
  br label %bb22

bb20:                                             ; preds = %bb17
  %31 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %32 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %31, i32 0, i32 1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %residual.02 = load i64, i64* %33, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %residual.13 = load i64, i64* %34, align 8, !range !3, !noundef !2
  %35 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8be44c8a00a39bbeE"(i64 %residual.02, i64 %residual.13, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc180 to %"core::panic::location::Location"*))
  store { i64, i64 } %35, { i64, i64 }* %0, align 8
  br label %bb21

bb21:                                             ; preds = %bb20
  br label %bb23

bb24:                                             ; preds = %bb3, %bb22, %bb23
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %39 = load i64, i64* %38, align 8, !range !4, !noundef !2
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h76d22a1fcee8b7aeE"({ i8*, i64 }* align 8 %self, i8* %ptr.0, i64 %ptr.1, i64 %cap) unnamed_addr #1 {
start:
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9a31267f4ce48163E"(i8* %ptr.0, i64 %ptr.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call %UrlKeyValue* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfddfa18f8e3afa5aE"(i8* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hf0ec127cf3746201E"(%UrlKeyValue* %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  %0 = bitcast { i8*, i64 }* %self to i8**
  store i8* %_4, i8** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %cap, i64* %1, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h03c28a2053c7797dE"({ i8*, i64 }* align 8 %self, i64 %len) unnamed_addr #4 {
start:
  %0 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hbc6c9c1834d1e03cE"({ i8*, i64 }* align 8 %self, i64 %len, i64 1)
  %_4.0 = extractvalue { i64, i64 } %0, 0
  %_4.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc7raw_vec14handle_reserve17hfc7aab40dc296691E(i64 %_4.0, i64 %_4.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h85fb5fde21db0d80E"(i64 %capacity) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !6, !noundef !2
  %1 = trunc i8 %0 to i1
  %2 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h00f9634cdc431da6E"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i8*, i64 } %2, 0
  %4 = extractvalue { i8*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i8*, i64 } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64 } %5, i64 %4, 1
  ret { i8*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h95859deeb6564992E"(i64 %capacity) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !6, !noundef !2
  %1 = trunc i8 %0 to i1
  %2 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17ha00e50b0307cea21E"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i8*, i64 } %2, 0
  %4 = extractvalue { i8*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i8*, i64 } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64 } %5, i64 %4, 1
  ret { i8*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hee4d90523e6adf3aE"(%UrlKeyValue* %ptr, i64 %capacity) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i64 }, align 8
  %_4 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hf0ec127cf3746201E"(%UrlKeyValue* %ptr)
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
  %7 = bitcast { i8*, i64 }* %1 to i8**
  store i8* %_4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  store i64 %capacity, i64* %8, align 8
  %9 = bitcast { i8*, i64 }* %1 to %"alloc::alloc::Global"*
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !nonnull !2, !noundef !2
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i8*, i64 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %13, 1
  ret { i8*, i64 } %15

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
define %UrlKeyValue* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h1b6a414b844af2a9E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  %1 = call %UrlKeyValue* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2e1aa5f87493c1b3E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %UrlKeyValue* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h56139e7e985d491aE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hebc4d388238c6116E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h11d818c4f2d51288E"() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i64 }, align 8
  %_2 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h26a27036c26f6c78E"()
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
  %7 = bitcast { i8*, i64 }* %1 to i8**
  store i8* %_2, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = bitcast { i8*, i64 }* %1 to %"alloc::alloc::Global"*
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !nonnull !2, !noundef !2
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i8*, i64 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %13, 1
  ret { i8*, i64 } %15

bb3:                                              ; preds = %bb2
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17he9cafb19f216fafcE"() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i64 }, align 8
  %_2 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h838129b73d066204E"()
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
  %7 = bitcast { i8*, i64 }* %1 to i8**
  store i8* %_2, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = bitcast { i8*, i64 }* %1 to %"alloc::alloc::Global"*
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !nonnull !2, !noundef !2
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i8*, i64 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %13, 1
  ret { i8*, i64 } %15

bb3:                                              ; preds = %bb2
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: uwtable
define align 1 %"alloc::alloc::Global"* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17hd0becdfe0365a88fE"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  ret %"alloc::alloc::Global"* %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h842c2f1c36fc9449E"(%"alloc::string::String"* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8167008c51fed85dE"(%"alloc::string::String"* align 8 %self)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1 %_5.0, i64 %_5.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h06f5951b682ffca3E"(i8* %self.0, i8* %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i8*, i8* } undef, i8* %self.0, 0
  %1 = insertvalue { i8*, i8* } %0, i8* %self.1, 1
  ret { i8*, i8* } %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h60a1a4e5e392d2d4E"(%"core::ops::range::RangeInclusive<usize>"* sret(%"core::ops::range::RangeInclusive<usize>") %0, %"core::ops::range::RangeInclusive<usize>"* %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::ops::range::RangeInclusive<usize>"* %0 to i8*
  %2 = bitcast %"core::ops::range::RangeInclusive<usize>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2d07371f2c213f1eE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !12, !noundef !2
  call void @_ZN5alloc5alloc7dealloc17hd996a5b6bc27980fE(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hf4f188d6fb67ea04E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h8dc5457d77ad5620E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h3452f346a021c186E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17hec22d8ad1a4ad8e4E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hff05a9d1cf14f5a4E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h8dc5457d77ad5620E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8167008c51fed85dE"(%"alloc::string::String"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  %0 = call { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h25495c2e01083b05E"(%"alloc::vec::Vec<u8>"* align 8 %_5)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h839047e1282d4346E([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h23dc48781f8c91d8E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8, !range !12, !noundef !2
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5041948ef3da5ee6E"({ i64, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %__self_0 = alloca i64*, align 8
  %0 = alloca i8, align 1
  %1 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %1, align 8, !range !1, !noundef !2
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc185 to [0 x i8]*), i64 4)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb4

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64* %4, i64** %__self_0, align 8
  %_11.0 = bitcast i64** %__self_0 to {}*
  %5 = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h29a45ea17f28be8eE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc181 to [0 x i8]*), i64 4, {}* align 1 %_11.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*))
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb1
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %7 = load i8, i8* %0, align 1, !range !6, !noundef !2
  %8 = trunc i8 %7 to i1
  ret i1 %8

bb4:                                              ; preds = %bb3
  br label %bb6
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h27f164e105c8f331E"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call %UrlKeyValue* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hf7b98d4673eea99eE"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<UrlKeyValue>", %"alloc::vec::Vec<UrlKeyValue>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x %UrlKeyValue]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hd5a9401c960c47a1E(%UrlKeyValue* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x %UrlKeyValue]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x %UrlKeyValue]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @"_ZN4core3ptr62drop_in_place$LT$$u5b$parse_query_string..UrlKeyValue$u5d$$GT$17he3a6cb2a79867b6eE"([0 x %UrlKeyValue]* %_2.0, i64 %_2.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1ff22a8330cf727E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hb8d3194b443870abE"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h8d0e9bf314c10a1dE(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0a23a4d6bf61a837E"({ i64, i64 }* align 8 %self, { i64, i64 }* align 8 %other) unnamed_addr #0 {
start:
  %_11 = alloca { i64*, i64* }, align 8
  %_10 = alloca i8, align 1
  %0 = alloca i8, align 1
  %1 = bitcast { i64, i64 }* %self to i64*
  %__self_tag = load i64, i64* %1, align 8, !range !1, !noundef !2
  %2 = bitcast { i64, i64 }* %other to i64*
  %__arg1_tag = load i64, i64* %2, align 8, !range !1, !noundef !2
  %_7 = icmp eq i64 %__self_tag, %__arg1_tag
  br i1 %_7, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %3 = bitcast { i64*, i64* }* %_11 to { i64, i64 }**
  store { i64, i64 }* %self, { i64, i64 }** %3, align 8
  %4 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_11, i32 0, i32 1
  %5 = bitcast i64** %4 to { i64, i64 }**
  store { i64, i64 }* %other, { i64, i64 }** %5, align 8
  %6 = bitcast { i64*, i64* }* %_11 to { i64, i64 }**
  %_20 = load { i64, i64 }*, { i64, i64 }** %6, align 8, !nonnull !2, !align !5, !noundef !2
  %7 = bitcast { i64, i64 }* %_20 to i64*
  %_15 = load i64, i64* %7, align 8, !range !1, !noundef !2
  %8 = icmp eq i64 %_15, 1
  br i1 %8, label %bb5, label %bb4

bb5:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_11, i32 0, i32 1
  %10 = bitcast i64** %9 to { i64, i64 }**
  %_21 = load { i64, i64 }*, { i64, i64 }** %10, align 8, !nonnull !2, !align !5, !noundef !2
  %11 = bitcast { i64, i64 }* %_21 to i64*
  %_14 = load i64, i64* %11, align 8, !range !1, !noundef !2
  %12 = icmp eq i64 %_14, 1
  br i1 %12, label %bb6, label %bb4

bb4:                                              ; preds = %bb5, %bb2
  store i8 1, i8* %_10, align 1
  br label %bb8

bb6:                                              ; preds = %bb5
  %13 = bitcast { i64*, i64* }* %_11 to { i64, i64 }**
  %_22 = load { i64, i64 }*, { i64, i64 }** %13, align 8, !nonnull !2, !align !5, !noundef !2
  %__self_0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_22, i32 0, i32 1
  %14 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_11, i32 0, i32 1
  %15 = bitcast i64** %14 to { i64, i64 }**
  %_23 = load { i64, i64 }*, { i64, i64 }** %15, align 8, !nonnull !2, !align !5, !noundef !2
  %__arg1_0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_23, i32 0, i32 1
  %16 = call zeroext i1 @"_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17h863cb8a13299eed4E"(i64* align 8 %__self_0, i64* align 8 %__arg1_0)
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %_10, align 1
  br label %bb7

bb8:                                              ; preds = %bb7, %bb4
  %18 = load i8, i8* %_10, align 1, !range !6, !noundef !2
  %19 = trunc i8 %18 to i1
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %0, align 1
  br label %bb3

bb7:                                              ; preds = %bb6
  br label %bb8

bb3:                                              ; preds = %bb8, %bb1
  %21 = load i8, i8* %0, align 1, !range !6, !noundef !2
  %22 = trunc i8 %21 to i1
  ret i1 %22
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17haab11cbc5787da16E"(i32* align 4 %self, i32* align 4 %other) unnamed_addr #0 {
start:
  %_11 = alloca { i32*, i32* }, align 8
  %_10 = alloca i8, align 1
  %0 = alloca i8, align 1
  %1 = load i32, i32* %self, align 4, !range !16, !noundef !2
  %2 = sub i32 %1, 1114112
  %3 = icmp eq i32 %2, 0
  %__self_tag = select i1 %3, i64 0, i64 1
  %4 = load i32, i32* %other, align 4, !range !16, !noundef !2
  %5 = sub i32 %4, 1114112
  %6 = icmp eq i32 %5, 0
  %__arg1_tag = select i1 %6, i64 0, i64 1
  %_7 = icmp eq i64 %__self_tag, %__arg1_tag
  br i1 %_7, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %7 = bitcast { i32*, i32* }* %_11 to i32**
  store i32* %self, i32** %7, align 8
  %8 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_11, i32 0, i32 1
  store i32* %other, i32** %8, align 8
  %9 = bitcast { i32*, i32* }* %_11 to i32**
  %_20 = load i32*, i32** %9, align 8, !nonnull !2, !align !7, !noundef !2
  %10 = load i32, i32* %_20, align 4, !range !16, !noundef !2
  %11 = sub i32 %10, 1114112
  %12 = icmp eq i32 %11, 0
  %_15 = select i1 %12, i64 0, i64 1
  %13 = icmp eq i64 %_15, 1
  br i1 %13, label %bb5, label %bb4

bb5:                                              ; preds = %bb2
  %14 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_11, i32 0, i32 1
  %_21 = load i32*, i32** %14, align 8, !nonnull !2, !align !7, !noundef !2
  %15 = load i32, i32* %_21, align 4, !range !16, !noundef !2
  %16 = sub i32 %15, 1114112
  %17 = icmp eq i32 %16, 0
  %_14 = select i1 %17, i64 0, i64 1
  %18 = icmp eq i64 %_14, 1
  br i1 %18, label %bb6, label %bb4

bb4:                                              ; preds = %bb5, %bb2
  store i8 1, i8* %_10, align 1
  br label %bb8

bb6:                                              ; preds = %bb5
  %19 = bitcast { i32*, i32* }* %_11 to i32**
  %_22 = load i32*, i32** %19, align 8, !nonnull !2, !align !7, !noundef !2
  %20 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_11, i32 0, i32 1
  %_23 = load i32*, i32** %20, align 8, !nonnull !2, !align !7, !noundef !2
  %21 = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17h76b46ec24d040ac0E"(i32* align 4 %_22, i32* align 4 %_23)
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %_10, align 1
  br label %bb7

bb8:                                              ; preds = %bb7, %bb4
  %23 = load i8, i8* %_10, align 1, !range !6, !noundef !2
  %24 = trunc i8 %23 to i1
  %25 = zext i1 %24 to i8
  store i8 %25, i8* %0, align 1
  br label %bb3

bb7:                                              ; preds = %bb6
  br label %bb8

bb3:                                              ; preds = %bb8, %bb1
  %26 = load i8, i8* %0, align 1, !range !6, !noundef !2
  %27 = trunc i8 %26 to i1
  ret i1 %27
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h25495c2e01083b05E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h88051b4058831187E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h3c6ab6e1e59416dcE(i8* %_2, i64 %_4)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hef912a8f72dcde5fE"(i8* align 1 %0, i64 %1) unnamed_addr #0 {
start:
  %2 = alloca { i8*, i64 }, align 8
  %self = alloca { i8*, i64 }, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i8*, i64 }* %self to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_2 = select i1 %7, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %8 = bitcast { i8*, i64 }* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = bitcast { i8*, i64 }* %2 to {}**
  store {}* null, {}** %9, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %10 = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 0
  %v.0 = load [0 x i8]*, [0 x i8]** %11, align 8, !nonnull !2, !align !11, !noundef !2
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 1
  %v.1 = load i64, i64* %12, align 8
  %13 = bitcast { i8*, i64 }* %2 to { [0 x i8]*, i64 }*
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 0
  store [0 x i8]* %v.0, [0 x i8]** %14, align 8
  %15 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 1
  store i64 %v.1, i64* %15, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %16 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8, !align !11
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = insertvalue { i8*, i64 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i64 } %20, i64 %19, 1
  ret { i8*, i64 } %21
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfada59c925c98eb7E"(i8* align 1 %0) unnamed_addr #0 {
start:
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %2 = bitcast i8** %self to {}**
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
  %5 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 8, i1 false)
  %6 = bitcast i8** %1 to {}**
  store {}* null, {}** %6, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !2, !align !11, !noundef !2
  store i8* %v, i8** %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %7 = load i8*, i8** %1, align 8, !align !11
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h2cd0a0a1032f70cdE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_4 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h4260a340848fa07cE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_4, i64 %self
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17hec7ab938b391ed47E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = icmp ult i64 %self, %slice.1
  br i1 %_3, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast i8** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i8** %0 to {}**
  store {}* null, {}** %2, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %_9 = call i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h2cd0a0a1032f70cdE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  store i8* %_9, i8** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %3 = load i8*, i8** %0, align 8, !align !11
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h98d6765e57d24b21E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h14375520b9103638E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83c5ca82feafea23E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h5c8aa83f7c17d455E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !3, !noundef !2
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
  %layout.1 = load i64, i64* %11, align 8, !range !12, !noundef !2
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2d07371f2c213f1eE"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h976f77da580b5953E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h42acb10cc3e52d14E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !3, !noundef !2
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
  %layout.1 = load i64, i64* %11, align 8, !range !12, !noundef !2
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2d07371f2c213f1eE"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h48514addacd7a9cdE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8, !range !3, !noundef !2
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
  %6 = call { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h23dc48781f8c91d8E"({ i64, i64 }* align 8 %self)
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
  %12 = load i64, i64* %11, align 8, !range !3, !noundef !2
  %13 = insertvalue { i64, i64 } undef, i64 %10, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h12e23bc322b48953E"(i8* %0, i64 %1) unnamed_addr #0 {
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
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2a4d10ad56170302E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %0, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !1, !noundef !2
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
  %e.1 = load i64, i64* %10, align 8, !range !3, !noundef !2
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %12, align 8
  %13 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %14 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %13, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8, !range !3, !noundef !2
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
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h593edc120490b60bE"(i8* %0) unnamed_addr #0 {
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
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5ba8274b5050bb02E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %0, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !1, !noundef !2
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
  %e.1 = load i64, i64* %14, align 8, !range !3, !noundef !2
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !range !3, !noundef !2
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
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h98b1f3073dc81a0cE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %0, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !1, !noundef !2
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
  %v.1 = load i64, i64* %5, align 8, !range !12, !noundef !2
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
  %e.1 = load i64, i64* %14, align 8, !range !3, !noundef !2
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !range !3, !noundef !2
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
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h9aa1d0ac2f9d51f4E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !1, !noundef !2
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
  %14 = load i64, i64* %13, align 8, !range !1, !noundef !2
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17haa6870a0e535e36aE"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !4, !noundef !2
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
  %e.1 = load i64, i64* %14, align 8, !range !3, !noundef !2
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !range !3, !noundef !2
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %26 = load i64, i64* %25, align 8, !range !4, !noundef !2
  %27 = insertvalue { i64, i64 } undef, i64 %24, 0
  %28 = insertvalue { i64, i64 } %27, i64 %26, 1
  ret { i64, i64 } %28
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d560d86f888d8e0E"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i32, i32 } @_ZN4core3str11validations15next_code_point17ha53a2de7f93ff1deE({ i8*, i8* }* align 8 %self)
  %_2.0 = extractvalue { i32, i32 } %0, 0
  %_2.1 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i32 @"_ZN4core6option15Option$LT$T$GT$3map17hc405858ea540bf78E"(i32 %_2.0, i32 %_2.1), !range !16
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hfb572943e281a18dE"(i32 %ch) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char18from_u32_unchecked17hfec1897cf1e72108E(i32 %ch), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: uwtable
define i64 @"_ZN83_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hf264a5609dc56101E"(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"*, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"** %self, align 8, !nonnull !2, !align !5, !noundef !2
  %0 = call i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h1508669437a7a8acE(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h9c6a69053636b4a6E"(%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>"* sret(%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>") %0) unnamed_addr #0 {
start:
  %1 = bitcast %"core::option::Option<alloc::vec::Vec<UrlKeyValue>>"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 24, i1 false)
  %2 = bitcast %"core::option::Option<alloc::vec::Vec<UrlKeyValue>>"* %0 to {}**
  store {}* null, {}** %2, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hb99b2fc51f42b8c1E"() unnamed_addr #0 {
start:
  %0 = alloca { i32, i32 }, align 4
  %1 = bitcast { i32, i32 }* %0 to i32*
  store i32 0, i32* %1, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %3 = load i32, i32* %2, align 4, !range !14, !noundef !2
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = insertvalue { i32, i32 } undef, i32 %3, 0
  %7 = insertvalue { i32, i32 } %6, i32 %5, 1
  ret { i32, i32 } %7
}

; Function Attrs: uwtable
define void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d59dd4a03b37d2dE"(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %guard = alloca i64*, align 8
  %1 = bitcast i64** %guard to %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"**
  store %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %self, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"** %1, align 8
  %2 = bitcast i64** %guard to %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"**
  %_7 = load %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"*, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"** %2, align 8, !nonnull !2, !align !5, !noundef !2
  %3 = invoke { [0 x %UrlKeyValue]*, i64 } @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17h35206a1b08c7ed4bE"(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* align 8 %_7)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr185drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$parse_query_string..UrlKeyValue$C$alloc..alloc..Global$GT$$GT$17hbc4ce0955e6b762fE"(i64** %guard) #15
          to label %bb5 unwind label %abort

cleanup:                                          ; preds = %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { [0 x %UrlKeyValue]*, i64 } %3, 0
  %_5.1 = extractvalue { [0 x %UrlKeyValue]*, i64 } %3, 1
  invoke void @"_ZN4core3ptr62drop_in_place$LT$$u5b$parse_query_string..UrlKeyValue$u5d$$GT$17he3a6cb2a79867b6eE"([0 x %UrlKeyValue]* %_5.0, i64 %_5.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  call void @"_ZN4core3ptr185drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$parse_query_string..UrlKeyValue$C$alloc..alloc..Global$GT$$GT$17hbc4ce0955e6b762fE"(i64** %guard)
  br label %bb3

abort:                                            ; preds = %bb4
  %9 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable

bb5:                                              ; preds = %bb4
  %10 = bitcast { i8*, i32 }* %0 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i32 } @"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78eb2a695cfec5f9E"(%"core::str::iter::CharIndices"* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %_14 = alloca { i64, i32 }, align 8
  %_4 = alloca i32, align 4
  %4 = alloca { i64, i32 }, align 8
  %_3 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %self, i32 0, i32 1
  %5 = bitcast { i8*, i8* }* %_3 to i8**
  %start1.i1 = load i8*, i8** %5, align 8, !nonnull !2, !noundef !2
  %_5.i2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i1)
  %6 = icmp eq i64 1, 0
  br i1 %6, label %bb3.i6, label %bb8.i9

bb3.i6:                                           ; preds = %start
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_3, i32 0, i32 1
  %_9.i4 = load i8*, i8** %7, align 8
  %_8.i5 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h853f611078f4366bE"(i8* %_9.i4)
  %_11.i13 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i1)
  %_10.i14 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h28036a1bfd6eb9a0E"(i8* %_11.i13)
  %8 = sub i64 %_8.i5, %_10.i14
  store i64 %8, i64* %1, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit15"

bb8.i9:                                           ; preds = %start
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_3, i32 0, i32 1
  %_15.i7 = load i8*, i8** %9, align 8
  %_14.i8 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h853f611078f4366bE"(i8* %_15.i7)
  %_17.i10 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i1)
  %_16.i11 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h28036a1bfd6eb9a0E"(i8* %_17.i10)
  %10 = sub nuw i64 %_14.i8, %_16.i11
  store i64 %10, i64* %0, align 8
  %diff.i12 = load i64, i64* %0, align 8
  %11 = udiv exact i64 %diff.i12, 1
  store i64 %11, i64* %1, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit15"

"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit15": ; preds = %bb8.i9, %bb3.i6
  %12 = load i64, i64* %1, align 8
  br label %bb1

bb1:                                              ; preds = %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit15"
  %_5 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %self, i32 0, i32 1
  %13 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d560d86f888d8e0E"({ i8*, i8* }* align 8 %_5), !range !16
  store i32 %13, i32* %_4, align 4
  br label %bb2

bb2:                                              ; preds = %bb1
  %14 = load i32, i32* %_4, align 4, !range !16, !noundef !2
  %15 = sub i32 %14, 1114112
  %16 = icmp eq i32 %15, 0
  %_6 = select i1 %16, i64 0, i64 1
  switch i64 %_6, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb5:                                              ; preds = %bb2
  %17 = bitcast { i64, i32 }* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 1114112, i32* %18, align 8
  br label %bb7

bb3:                                              ; preds = %bb2
  %ch = load i32, i32* %_4, align 4, !range !10, !noundef !2
  %19 = bitcast %"core::str::iter::CharIndices"* %self to i64*
  %index = load i64, i64* %19, align 8
  %_10 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %self, i32 0, i32 1
  %20 = bitcast { i8*, i8* }* %_10 to i8**
  %start1.i = load i8*, i8** %20, align 8, !nonnull !2, !noundef !2
  %_5.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i)
  %21 = icmp eq i64 1, 0
  br i1 %21, label %bb3.i, label %bb8.i

bb3.i:                                            ; preds = %bb3
  %22 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_10, i32 0, i32 1
  %_9.i = load i8*, i8** %22, align 8
  %_8.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h853f611078f4366bE"(i8* %_9.i)
  %_11.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i)
  %_10.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h28036a1bfd6eb9a0E"(i8* %_11.i)
  %23 = sub i64 %_8.i, %_10.i
  store i64 %23, i64* %3, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit"

bb8.i:                                            ; preds = %bb3
  %24 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_10, i32 0, i32 1
  %_15.i = load i8*, i8** %24, align 8
  %_14.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h853f611078f4366bE"(i8* %_15.i)
  %_17.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i)
  %_16.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h28036a1bfd6eb9a0E"(i8* %_17.i)
  %25 = sub nuw i64 %_14.i, %_16.i
  store i64 %25, i64* %2, align 8
  %diff.i = load i64, i64* %2, align 8
  %26 = udiv exact i64 %diff.i, 1
  store i64 %26, i64* %3, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit"

"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit": ; preds = %bb8.i, %bb3.i
  %27 = load i64, i64* %3, align 8
  br label %bb6

bb6:                                              ; preds = %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit"
  %_11 = sub i64 %12, %27
  %28 = bitcast %"core::str::iter::CharIndices"* %self to i64*
  %29 = bitcast %"core::str::iter::CharIndices"* %self to i64*
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, %_11
  store i64 %31, i64* %28, align 8
  %32 = bitcast { i64, i32 }* %_14 to i64*
  store i64 %index, i64* %32, align 8
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %_14, i32 0, i32 1
  store i32 %ch, i32* %33, align 8
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %_14, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %_14, i32 0, i32 1
  %37 = load i32, i32* %36, align 8, !range !10, !noundef !2
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 8, !range !16, !noundef !2
  %44 = insertvalue { i64, i32 } undef, i64 %41, 0
  %45 = insertvalue { i64, i32 } %44, i32 %43, 1
  ret { i64, i32 } %45
}

; Function Attrs: inlinehint uwtable
define void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7e95f51774d4eaf8E"(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* sret(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>") %0, %"alloc::vec::Vec<UrlKeyValue>"* %self) unnamed_addr #0 {
start:
  %1 = alloca i64, align 8
  %2 = alloca %UrlKeyValue*, align 8
  %_2.i = alloca %"alloc::vec::Vec<UrlKeyValue>", align 8
  %3 = alloca %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>", align 1
  %4 = alloca i8*, align 8
  %end = alloca %UrlKeyValue*, align 8
  %_3 = alloca %"alloc::vec::Vec<UrlKeyValue>", align 8
  %me = alloca %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<UrlKeyValue>>", align 8
  %5 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %_3 to i8*
  %6 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 24, i1 false)
  %7 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %_2.i to i8*
  %8 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  %9 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<UrlKeyValue>>"* %me to %"alloc::vec::Vec<UrlKeyValue>"*
  %10 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %9 to i8*
  %11 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %12 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<UrlKeyValue>>"* %me to %"alloc::vec::Vec<UrlKeyValue>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %_7 = call align 1 %"alloc::alloc::Global"* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17hc0d6766a79d8592cE"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %12)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN4core3ptr4read17h8ad1bf43cf560d50E(%"alloc::alloc::Global"* %_7)
  br label %bb4

bb4:                                              ; preds = %bb3
  %13 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"* %3 to %"alloc::alloc::Global"*
  br label %bb5

bb5:                                              ; preds = %bb4
  %_3.i1 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<UrlKeyValue>>"* %me to %"alloc::vec::Vec<UrlKeyValue>"*
  br label %bb6

bb6:                                              ; preds = %bb5
  %begin = call %UrlKeyValue* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hf7b98d4673eea99eE"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %_3.i1)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb7
  %14 = icmp eq i64 48, 0
  br i1 %14, label %bb9, label %bb13

bb9:                                              ; preds = %bb8
  %_18 = bitcast %UrlKeyValue* %begin to i8*
  %15 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<UrlKeyValue>>"* %me to %"alloc::vec::Vec<UrlKeyValue>"*
  br label %bb10

bb13:                                             ; preds = %bb8
  %16 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<UrlKeyValue>>"* %me to %"alloc::vec::Vec<UrlKeyValue>"*
  br label %bb14

bb14:                                             ; preds = %bb13
  %_27 = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h48aff8d18af7d36bE"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %16)
  br label %bb15

bb15:                                             ; preds = %bb14
  %17 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %begin, i64 %_27
  store %UrlKeyValue* %17, %UrlKeyValue** %2, align 8
  %_3.i = load %UrlKeyValue*, %UrlKeyValue** %2, align 8
  br label %bb16

bb16:                                             ; preds = %bb15
  store %UrlKeyValue* %_3.i, %UrlKeyValue** %end, align 8
  br label %bb17

bb17:                                             ; preds = %bb12, %bb16
  %18 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<UrlKeyValue>>"* %me to %"alloc::vec::Vec<UrlKeyValue>"*
  br label %bb18

bb10:                                             ; preds = %bb9
  %_21 = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h48aff8d18af7d36bE"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %15)
  br label %bb11

bb11:                                             ; preds = %bb10
  %19 = getelementptr i8, i8* %_18, i64 %_21
  store i8* %19, i8** %4, align 8
  %_17 = load i8*, i8** %4, align 8
  br label %bb12

bb12:                                             ; preds = %bb11
  %20 = bitcast i8* %_17 to %UrlKeyValue*
  store %UrlKeyValue* %20, %UrlKeyValue** %end, align 8
  br label %bb17

bb18:                                             ; preds = %bb17
  %_32 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %18 to { i8*, i64 }*
  %21 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_32, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  %_35 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf961fb2060301becE"(%UrlKeyValue* %begin)
  br label %bb20

bb20:                                             ; preds = %bb19
  %_41 = load %UrlKeyValue*, %UrlKeyValue** %end, align 8
  %24 = bitcast %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %0 to i8**
  store i8* %_35, i8** %24, align 8
  %25 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %0, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = bitcast %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %0 to %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"*
  %27 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %0, i32 0, i32 4
  store %UrlKeyValue* %begin, %UrlKeyValue** %27, align 8
  %28 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %0, i32 0, i32 5
  store %UrlKeyValue* %_41, %UrlKeyValue** %28, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1086f55135944a1E"(%"core::str::iter::Split<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"core::str::iter::Split<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self to %"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"*
  %0 = call { i8*, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17ha3fb3343aeb0f36fE"(%"core::str::iter::SplitInternal<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %_2)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96c8fe6a38386dbfE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !2, !noundef !2
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h50ba1c14d66a99dcE"(i8* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 1, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_11 = load i8*, i8** %5, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h769b93ad9ef1a36dE"(i8* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %6 = bitcast { i8*, i8* }* %self to i8**
  %_15 = load i8*, i8** %6, align 8, !nonnull !2, !noundef !2
  %_14 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_16 = load i8*, i8** %7, align 8
  %_12 = icmp eq i8* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %8, align 8, !nonnull !2, !noundef !2
  %old.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %_12.i)
  %9 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %9, align 8, !nonnull !2, !noundef !2
  %_15.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %_16.i)
  %10 = getelementptr inbounds i8, i8* %_15.i, i64 1
  store i8* %10, i8** %0, align 8
  %_3.i.i = load i8*, i8** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE"(i8* %_3.i.i)
  %11 = bitcast { i8*, i8* }* %self to i8**
  store i8* %_13.i, i8** %11, align 8
  store i8* %old.i, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %13 = bitcast i8** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = bitcast i8** %2 to {}**
  store {}* null, {}** %14, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %15 = load i8*, i8** %2, align 8, !align !11
  ret i8* %15

bb13:                                             ; preds = %bb12
  store i8* %12, i8** %2, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define void @"_ZN95_$LT$core..str..pattern..MultiCharEqPattern$LT$C$GT$$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h052d30d87d871f39E"(%"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* sret(%"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>") %0, i32* align 4 %self.0, i32* align 4 %self.1, [0 x i8]* align 1 %haystack.0, i64 %haystack.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_5 = alloca %"core::str::iter::CharIndices", align 8
  invoke void @"_ZN4core3str21_$LT$impl$u20$str$GT$12char_indices17he6530f1ebe9c80fbE"(%"core::str::iter::CharIndices"* sret(%"core::str::iter::CharIndices") %_5, [0 x i8]* align 1 %haystack.0, i64 %haystack.1)
          to label %bb1 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb2

bb1:                                              ; preds = %start
  %7 = bitcast %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %0 to { i32*, i32* }*
  %8 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %7, i32 0, i32 0
  store i32* %self.0, i32** %8, align 8
  %9 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %7, i32 0, i32 1
  store i32* %self.1, i32** %9, align 8
  %10 = getelementptr inbounds %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %0, i32 0, i32 1
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 0
  store [0 x i8]* %haystack.0, [0 x i8]** %11, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 1
  store i64 %haystack.1, i64* %12, align 8
  %13 = getelementptr inbounds %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %0, i32 0, i32 2
  %14 = bitcast %"core::str::iter::CharIndices"* %13 to i8*
  %15 = bitcast %"core::str::iter::CharIndices"* %_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  ret void

bb3:                                              ; preds = %bb2
  %16 = bitcast { i8*, i32 }* %1 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: inlinehint uwtable
define void @"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hc7efef2acc7f55a5E"(%"core::str::pattern::SearchStep"* sret(%"core::str::pattern::SearchStep") %0, %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %self) unnamed_addr #0 {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %_5 = alloca { i64, i32 }, align 8
  %s = getelementptr inbounds %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self, i32 0, i32 2
  %_4 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %s, i32 0, i32 1
  %5 = bitcast { i8*, i8* }* %_4 to i8**
  %start1.i1 = load i8*, i8** %5, align 8, !nonnull !2, !noundef !2
  %_5.i2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i1)
  %6 = icmp eq i64 1, 0
  br i1 %6, label %bb3.i6, label %bb8.i9

bb3.i6:                                           ; preds = %start
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 1
  %_9.i4 = load i8*, i8** %7, align 8
  %_8.i5 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h853f611078f4366bE"(i8* %_9.i4)
  %_11.i13 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i1)
  %_10.i14 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h28036a1bfd6eb9a0E"(i8* %_11.i13)
  %8 = sub i64 %_8.i5, %_10.i14
  store i64 %8, i64* %2, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit15"

bb8.i9:                                           ; preds = %start
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 1
  %_15.i7 = load i8*, i8** %9, align 8
  %_14.i8 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h853f611078f4366bE"(i8* %_15.i7)
  %_17.i10 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i1)
  %_16.i11 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h28036a1bfd6eb9a0E"(i8* %_17.i10)
  %10 = sub nuw i64 %_14.i8, %_16.i11
  store i64 %10, i64* %1, align 8
  %diff.i12 = load i64, i64* %1, align 8
  %11 = udiv exact i64 %diff.i12, 1
  store i64 %11, i64* %2, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit15"

"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit15": ; preds = %bb8.i9, %bb3.i6
  %12 = load i64, i64* %2, align 8
  br label %bb1

bb1:                                              ; preds = %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit15"
  %13 = call { i64, i32 } @"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78eb2a695cfec5f9E"(%"core::str::iter::CharIndices"* align 8 %s)
  store { i64, i32 } %13, { i64, i32 }* %_5, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %_5, i32 0, i32 1
  %15 = load i32, i32* %14, align 8, !range !16, !noundef !2
  %16 = sub i32 %15, 1114112
  %17 = icmp eq i32 %16, 0
  %_7 = select i1 %17, i64 0, i64 1
  %18 = icmp eq i64 %_7, 1
  br i1 %18, label %bb3, label %bb8

bb3:                                              ; preds = %bb2
  %19 = bitcast { i64, i32 }* %_5 to i64*
  %i = load i64, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %_5, i32 0, i32 1
  %c = load i32, i32* %20, align 8, !range !10, !noundef !2
  %_11 = getelementptr inbounds %"core::str::iter::CharIndices", %"core::str::iter::CharIndices"* %s, i32 0, i32 1
  %21 = bitcast { i8*, i8* }* %_11 to i8**
  %start1.i = load i8*, i8** %21, align 8, !nonnull !2, !noundef !2
  %_5.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i)
  %22 = icmp eq i64 1, 0
  br i1 %22, label %bb3.i, label %bb8.i

bb3.i:                                            ; preds = %bb3
  %23 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 1
  %_9.i = load i8*, i8** %23, align 8
  %_8.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h853f611078f4366bE"(i8* %_9.i)
  %_11.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i)
  %_10.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h28036a1bfd6eb9a0E"(i8* %_11.i)
  %24 = sub i64 %_8.i, %_10.i
  store i64 %24, i64* %4, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit"

bb8.i:                                            ; preds = %bb3
  %25 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 1
  %_15.i = load i8*, i8** %25, align 8
  %_14.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h853f611078f4366bE"(i8* %_15.i)
  %_17.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE"(i8* %start1.i)
  %_16.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h28036a1bfd6eb9a0E"(i8* %_17.i)
  %26 = sub nuw i64 %_14.i, %_16.i
  store i64 %26, i64* %3, align 8
  %diff.i = load i64, i64* %3, align 8
  %27 = udiv exact i64 %diff.i, 1
  store i64 %27, i64* %4, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit"

"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit": ; preds = %bb8.i, %bb3.i
  %28 = load i64, i64* %4, align 8
  br label %bb4

bb8:                                              ; preds = %bb2
  %29 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 2, i64* %29, align 8
  br label %bb10

bb10:                                             ; preds = %bb9, %bb8
  ret void

bb4:                                              ; preds = %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hba61a3e4acb5f5e1E.exit"
  %char_len = sub i64 %12, %28
  %_16 = bitcast %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self to { i32*, i32* }*
  %_15 = call zeroext i1 @"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hf91aec44a978e1ebE"({ i32*, i32* }* align 8 %_16, i32 %c)
  br label %bb5

bb5:                                              ; preds = %bb4
  br i1 %_15, label %bb6, label %bb7

bb7:                                              ; preds = %bb5
  %_23 = add i64 %i, %char_len
  %30 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Reject"*
  %31 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %30, i32 0, i32 1
  store i64 %i, i64* %31, align 8
  %32 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Reject"*
  %33 = getelementptr inbounds %"core::str::pattern::SearchStep::Reject", %"core::str::pattern::SearchStep::Reject"* %32, i32 0, i32 2
  store i64 %_23, i64* %33, align 8
  %34 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 1, i64* %34, align 8
  br label %bb9

bb6:                                              ; preds = %bb5
  %_19 = add i64 %i, %char_len
  %35 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Match"*
  %36 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %35, i32 0, i32 1
  store i64 %i, i64* %36, align 8
  %37 = bitcast %"core::str::pattern::SearchStep"* %0 to %"core::str::pattern::SearchStep::Match"*
  %38 = getelementptr inbounds %"core::str::pattern::SearchStep::Match", %"core::str::pattern::SearchStep::Match"* %37, i32 0, i32 2
  store i64 %_19, i64* %38, align 8
  %39 = bitcast %"core::str::pattern::SearchStep"* %0 to i64*
  store i64 0, i64* %39, align 8
  br label %bb9

bb9:                                              ; preds = %bb6, %bb7
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17hce4d42ba1ee826b1E"(%"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self, i32 0, i32 1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %2 = load [0 x i8]*, [0 x i8]** %1, align 8, !nonnull !2, !align !11, !noundef !2
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %6 = insertvalue { [0 x i8]*, i64 } %5, i64 %4, 1
  ret { [0 x i8]*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define void @"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h6eb553c9b9df927cE"(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, %"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self to %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"*
  call void @_ZN4core3str7pattern8Searcher10next_match17hbf3f6ab3a7f74bb7E(%"core::option::Option<(usize, usize)>"* sret(%"core::option::Option<(usize, usize)>") %0, %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17h1461a16e3382c256E"(%"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"core::str::pattern::CharPredicateSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* %self to %"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"*
  %0 = call { [0 x i8]*, i64 } @"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17hce4d42ba1ee826b1E"(%"core::str::pattern::MultiCharEqSearcher<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %_2)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: uwtable
define void @parse_query_string(%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>"* sret(%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>") %0, [0 x i8]* align 1 %begin.0, i64 %begin.1, [0 x i8]* align 1 %end.0, i64 %end.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_81 = alloca i8, align 1
  %_79 = alloca %"alloc::vec::Vec<UrlKeyValue>", align 8
  %_78 = alloca i64, align 8
  %_73 = alloca %"alloc::string::String", align 8
  %_72 = alloca %"alloc::string::String", align 8
  %_71 = alloca %UrlKeyValue, align 1
  %_66 = alloca i64, align 8
  %value_decoded = alloca %"alloc::string::String", align 8
  %key_decoded = alloca %"alloc::string::String", align 8
  %_56 = alloca { i8*, i8* }, align 8
  %_54 = alloca i32, align 4
  %_45 = alloca { i8*, i64 }, align 8
  %_37 = alloca { i8*, i64 }, align 8
  %_34 = alloca { [0 x i8]*, i64 }, align 8
  %_27 = alloca { i64, i64 }, align 8
  %iter1 = alloca %"core::ops::range::RangeInclusive<usize>", align 8
  %_24 = alloca %"core::ops::range::RangeInclusive<usize>", align 8
  %_23 = alloca %"core::ops::range::RangeInclusive<usize>", align 8
  %p = alloca { [0 x i8]*, i64 }, align 8
  %kv = alloca %"alloc::vec::Vec<UrlKeyValue>", align 8
  %_13 = alloca i8, align 1
  %_8 = alloca i32, align 4
  %iter = alloca { i8*, i8* }, align 8
  %elements = alloca i64, align 8
  store i8 0, i8* %_81, align 1
  store i64 1, i64* %elements, align 8
  %2 = call { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h361bf9e72f65bc18E"([0 x i8]* align 1 %begin.0, i64 %begin.1)
  %_5.0 = extractvalue { i8*, i8* } %2, 0
  %_5.1 = extractvalue { i8*, i8* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = call { i8*, i8* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h06f5951b682ffca3E"(i8* %_5.0, i8* %_5.1)
  %_4.0 = extractvalue { i8*, i8* } %3, 0
  %_4.1 = extractvalue { i8*, i8* } %3, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 0
  store i8* %_4.0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 1
  store i8* %_4.1, i8** %5, align 8
  br label %bb3

bb3:                                              ; preds = %bb12, %bb10, %bb2
  %6 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d560d86f888d8e0E"({ i8*, i8* }* align 8 %iter), !range !16
  store i32 %6, i32* %_8, align 4
  br label %bb4

bb4:                                              ; preds = %bb3
  %7 = load i32, i32* %_8, align 4, !range !16, !noundef !2
  %8 = sub i32 %7, 1114112
  %9 = icmp eq i32 %8, 0
  %_11 = select i1 %9, i64 0, i64 1
  switch i64 %_11, label %bb6 [
    i64 0, label %bb7
    i64 1, label %bb5
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb7:                                              ; preds = %bb4
  %_20 = load i64, i64* %elements, align 8
  %10 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_20, i64 1)
  %_21.0 = extractvalue { i64, i1 } %10, 0
  %_21.1 = extractvalue { i64, i1 } %10, 1
  %11 = call i1 @llvm.expect.i1(i1 %_21.1, i1 false)
  br i1 %11, label %panic2, label %bb13

bb5:                                              ; preds = %bb4
  %c = load i32, i32* %_8, align 4, !range !10, !noundef !2
  %12 = icmp eq i32 %c, 38
  br i1 %12, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  store i8 1, i8* %_13, align 1
  br label %bb10

bb9:                                              ; preds = %bb5
  %_15 = icmp eq i32 %c, 59
  %13 = zext i1 %_15 to i8
  store i8 %13, i8* %_13, align 1
  br label %bb10

bb10:                                             ; preds = %bb9, %bb8
  %14 = load i8, i8* %_13, align 1, !range !6, !noundef !2
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb11, label %bb3

bb11:                                             ; preds = %bb10
  %16 = load i64, i64* %elements, align 8
  %17 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %16, i64 1)
  %_17.0 = extractvalue { i64, i1 } %17, 0
  %_17.1 = extractvalue { i64, i1 } %17, 1
  %18 = call i1 @llvm.expect.i1(i1 %_17.1, i1 false)
  br i1 %18, label %panic, label %bb12

bb12:                                             ; preds = %bb11
  store i64 %_17.0, i64* %elements, align 8
  br label %bb3

panic:                                            ; preds = %bb11
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc187 to %"core::panic::location::Location"*)) #14
  unreachable

bb13:                                             ; preds = %bb7
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hceb9967eefc1f8ffE"(%"alloc::vec::Vec<UrlKeyValue>"* sret(%"alloc::vec::Vec<UrlKeyValue>") %kv, i64 %_21.0)
  br label %bb14

panic2:                                           ; preds = %bb7
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc189 to %"core::panic::location::Location"*)) #14
  unreachable

bb14:                                             ; preds = %bb13
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 0
  store [0 x i8]* %begin.0, [0 x i8]** %19, align 8
  %20 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 1
  store i64 %begin.1, i64* %20, align 8
  %_25 = load i64, i64* %elements, align 8
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hf14cdeab65d2c33aE"(%"core::ops::range::RangeInclusive<usize>"* sret(%"core::ops::range::RangeInclusive<usize>") %_24, i64 0, i64 %_25)
          to label %bb15 unwind label %cleanup

bb46:                                             ; preds = %bb48, %bb49, %cleanup
  invoke void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$parse_query_string..UrlKeyValue$GT$$GT$17h301b30b5b9c598aeE"(%"alloc::vec::Vec<UrlKeyValue>"* %kv) #15
          to label %bb47 unwind label %abort

cleanup:                                          ; preds = %bb35, %bb34, %bb33, %bb32, %bb30, %bb28, %bb27, %bb25, %bb23, %bb22, %bb19, %bb17, %bb15, %bb14
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  %23 = extractvalue { i8*, i32 } %21, 1
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %bb46

bb15:                                             ; preds = %bb14
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h60a1a4e5e392d2d4E"(%"core::ops::range::RangeInclusive<usize>"* sret(%"core::ops::range::RangeInclusive<usize>") %_23, %"core::ops::range::RangeInclusive<usize>"* %_24)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %26 = bitcast %"core::ops::range::RangeInclusive<usize>"* %iter1 to i8*
  %27 = bitcast %"core::ops::range::RangeInclusive<usize>"* %_23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 24, i1 false)
  br label %bb17

bb17:                                             ; preds = %bb42, %bb16
  %28 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb1819e1ecfe17ff5E"(%"core::ops::range::RangeInclusive<usize>"* align 8 %iter1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  store { i64, i64 } %28, { i64, i64 }* %_27, align 8
  %29 = bitcast { i64, i64 }* %_27 to i64*
  %_30 = load i64, i64* %29, align 8, !range !1, !noundef !2
  switch i64 %_30, label %bb20 [
    i64 0, label %bb43
    i64 1, label %bb19
  ]

bb20:                                             ; preds = %bb18
  unreachable

bb43:                                             ; preds = %bb21, %bb18
  %30 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %_79 to i8*
  %31 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %kv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false)
  %32 = bitcast %"core::option::Option<alloc::vec::Vec<UrlKeyValue>>"* %0 to %"core::option::Option<alloc::vec::Vec<UrlKeyValue>>::Some"*
  %33 = bitcast %"core::option::Option<alloc::vec::Vec<UrlKeyValue>>::Some"* %32 to %"alloc::vec::Vec<UrlKeyValue>"*
  %34 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %33 to i8*
  %35 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %_79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 24, i1 false)
  br label %bb45

bb19:                                             ; preds = %bb18
  %36 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_34, i32 0, i32 0
  store [0 x i8]* %end.0, [0 x i8]** %36, align 8
  %37 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_34, i32 0, i32 1
  store i64 %end.1, i64* %37, align 8
  %_31 = invoke zeroext i1 @"_ZN4core3cmp5impls70_$LT$impl$u20$core..cmp..PartialOrd$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ge17h27977cf8fff8995cE"({ [0 x i8]*, i64 }* align 8 %p, { [0 x i8]*, i64 }* align 8 %_34)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb19
  br i1 %_31, label %bb43, label %bb22

bb22:                                             ; preds = %bb21
  %38 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 0
  %key.0 = load [0 x i8]*, [0 x i8]** %38, align 8, !nonnull !2, !align !11, !noundef !2
  %39 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 1
  %key.1 = load i64, i64* %39, align 8
  %40 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 0
  %_39.0 = load [0 x i8]*, [0 x i8]** %40, align 8, !nonnull !2, !align !11, !noundef !2
  %41 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 1
  %_39.1 = load i64, i64* %41, align 8
  %42 = invoke { i8*, i64 } @scan_part([0 x i8]* align 1 %_39.0, i64 %_39.1, i32 38, i32 59)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_38.0 = extractvalue { i8*, i64 } %42, 0
  %_38.1 = extractvalue { i8*, i64 } %42, 1
  %43 = invoke { i8*, i64 } @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hef912a8f72dcde5fE"(i8* align 1 %_38.0, i64 %_38.1)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  store { i8*, i64 } %43, { i8*, i64 }* %_37, align 8
  %44 = bitcast { i8*, i64 }* %_37 to {}**
  %45 = load {}*, {}** %44, align 8
  %46 = icmp eq {}* %45, null
  %_40 = select i1 %46, i64 1, i64 0
  switch i64 %_40, label %bb26 [
    i64 0, label %bb25
    i64 1, label %bb27
  ]

bb26:                                             ; preds = %bb24
  unreachable

bb25:                                             ; preds = %bb24
  %47 = bitcast { i8*, i64 }* %_37 to { [0 x i8]*, i64 }*
  %48 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %47, i32 0, i32 0
  %val.0 = load [0 x i8]*, [0 x i8]** %48, align 8, !nonnull !2, !align !11, !noundef !2
  %49 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %47, i32 0, i32 1
  %val.1 = load i64, i64* %49, align 8
  %50 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 0
  %_47.0 = load [0 x i8]*, [0 x i8]** %50, align 8, !nonnull !2, !align !11, !noundef !2
  %51 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 1
  %_47.1 = load i64, i64* %51, align 8
  %52 = invoke { i8*, i64 } @scan_part([0 x i8]* align 1 %_47.0, i64 %_47.1, i32 61, i32 0)
          to label %bb28 unwind label %cleanup

bb27:                                             ; preds = %bb24
  invoke void @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h9c6a69053636b4a6E"(%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>"* sret(%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>") %0)
          to label %bb50 unwind label %cleanup

bb50:                                             ; preds = %bb27
  br label %bb44

bb44:                                             ; preds = %bb51, %bb50
  call void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$parse_query_string..UrlKeyValue$GT$$GT$17h301b30b5b9c598aeE"(%"alloc::vec::Vec<UrlKeyValue>"* %kv)
  br label %bb45

bb28:                                             ; preds = %bb25
  %_46.0 = extractvalue { i8*, i64 } %52, 0
  %_46.1 = extractvalue { i8*, i64 } %52, 1
  %53 = invoke { i8*, i64 } @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hef912a8f72dcde5fE"(i8* align 1 %_46.0, i64 %_46.1)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb28
  store { i8*, i64 } %53, { i8*, i64 }* %_45, align 8
  %54 = bitcast { i8*, i64 }* %_45 to {}**
  %55 = load {}*, {}** %54, align 8
  %56 = icmp eq {}* %55, null
  %_48 = select i1 %56, i64 1, i64 0
  switch i64 %_48, label %bb31 [
    i64 0, label %bb30
    i64 1, label %bb32
  ]

bb31:                                             ; preds = %bb29
  unreachable

bb30:                                             ; preds = %bb29
  %57 = bitcast { i8*, i64 }* %_45 to { [0 x i8]*, i64 }*
  %58 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %57, i32 0, i32 0
  %val.03 = load [0 x i8]*, [0 x i8]** %58, align 8, !nonnull !2, !align !11, !noundef !2
  %59 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %57, i32 0, i32 1
  %val.14 = load i64, i64* %59, align 8
  %60 = invoke { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h361bf9e72f65bc18E"([0 x i8]* align 1 %val.03, i64 %val.14)
          to label %bb33 unwind label %cleanup

bb32:                                             ; preds = %bb29
  invoke void @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h9c6a69053636b4a6E"(%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>"* sret(%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>") %0)
          to label %bb51 unwind label %cleanup

bb51:                                             ; preds = %bb32
  br label %bb44

bb45:                                             ; preds = %bb44, %bb43
  ret void

bb33:                                             ; preds = %bb30
  store { i8*, i8* } %60, { i8*, i8* }* %_56, align 8
  %61 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d560d86f888d8e0E"({ i8*, i8* }* align 8 %_56)
          to label %bb34 unwind label %cleanup, !range !16

bb34:                                             ; preds = %bb33
  store i32 %61, i32* %_54, align 4
  %has_value = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17haab11cbc5787da16E"(i32* align 4 %_54, i32* align 4 bitcast (<{ [4 x i8] }>* @alloc5 to i32*))
          to label %bb35 unwind label %cleanup

bb35:                                             ; preds = %bb34
  invoke void @decode_percent(%"alloc::string::String"* sret(%"alloc::string::String") %key_decoded, [0 x i8]* align 1 %key.0, i64 %key.1)
          to label %bb36 unwind label %cleanup

bb36:                                             ; preds = %bb35
  store i8 1, i8* %_81, align 1
  br i1 %has_value, label %bb37, label %bb39

bb39:                                             ; preds = %bb36
  invoke void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17h11ef733cb61fb8feE"(%"alloc::string::String"* sret(%"alloc::string::String") %value_decoded, [0 x i8]* align 1 %val.03, i64 %val.14)
          to label %bb53 unwind label %cleanup5

bb37:                                             ; preds = %bb36
  store i64 1, i64* %_66, align 8
  %62 = load i64, i64* %_66, align 8
  %63 = invoke { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h21badb017efc4902E"([0 x i8]* align 1 %val.03, i64 %val.14, i64 %62, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc191 to %"core::panic::location::Location"*))
          to label %bb38 unwind label %cleanup5

bb49:                                             ; preds = %cleanup5
  %64 = load i8, i8* %_81, align 1, !range !6, !noundef !2
  %65 = trunc i8 %64 to i1
  br i1 %65, label %bb48, label %bb46

cleanup5:                                         ; preds = %bb41, %bb40, %bb38, %bb37, %bb39
  %66 = landingpad { i8*, i32 }
          cleanup
  %67 = extractvalue { i8*, i32 } %66, 0
  %68 = extractvalue { i8*, i32 } %66, 1
  %69 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %bb49

bb38:                                             ; preds = %bb37
  %_64.0 = extractvalue { [0 x i8]*, i64 } %63, 0
  %_64.1 = extractvalue { [0 x i8]*, i64 } %63, 1
  invoke void @decode_percent(%"alloc::string::String"* sret(%"alloc::string::String") %value_decoded, [0 x i8]* align 1 %_64.0, i64 %_64.1)
          to label %bb52 unwind label %cleanup5

bb52:                                             ; preds = %bb38
  br label %bb40

bb40:                                             ; preds = %bb53, %bb52
  store i8 0, i8* %_81, align 1
  %71 = bitcast %"alloc::string::String"* %_72 to i8*
  %72 = bitcast %"alloc::string::String"* %key_decoded to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 24, i1 false)
  %73 = bitcast %"alloc::string::String"* %_73 to i8*
  %74 = bitcast %"alloc::string::String"* %value_decoded to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 24, i1 false)
  %75 = bitcast %UrlKeyValue* %_71 to %"alloc::string::String"*
  %76 = bitcast %"alloc::string::String"* %75 to i8*
  %77 = bitcast %"alloc::string::String"* %_72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %76, i8* align 8 %77, i64 24, i1 false)
  %78 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %_71, i32 0, i32 1
  %79 = bitcast %"alloc::string::String"* %78 to i8*
  %80 = bitcast %"alloc::string::String"* %_73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %79, i8* align 8 %80, i64 24, i1 false)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb0e545bb89c88d99E"(%"alloc::vec::Vec<UrlKeyValue>"* align 8 %kv, %UrlKeyValue* %_71)
          to label %bb41 unwind label %cleanup5

bb53:                                             ; preds = %bb39
  br label %bb40

bb41:                                             ; preds = %bb40
  store i64 1, i64* %_78, align 8
  %81 = load i64, i64* %_78, align 8
  %82 = invoke { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h21badb017efc4902E"([0 x i8]* align 1 %val.0, i64 %val.1, i64 %81, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc193 to %"core::panic::location::Location"*))
          to label %bb42 unwind label %cleanup5

bb42:                                             ; preds = %bb41
  %_76.0 = extractvalue { [0 x i8]*, i64 } %82, 0
  %_76.1 = extractvalue { [0 x i8]*, i64 } %82, 1
  %83 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 0
  store [0 x i8]* %_76.0, [0 x i8]** %83, align 8
  %84 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %p, i32 0, i32 1
  store i64 %_76.1, i64* %84, align 8
  store i8 0, i8* %_81, align 1
  br label %bb17

bb48:                                             ; preds = %bb49
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7e03d4d8fd0535f8E"(%"alloc::string::String"* %key_decoded) #15
          to label %bb46 unwind label %abort

abort:                                            ; preds = %bb48, %bb46
  %85 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable

bb47:                                             ; preds = %bb46
  %86 = bitcast { i8*, i32 }* %1 to i8**
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = insertvalue { i8*, i32 } undef, i8* %87, 0
  %91 = insertvalue { i8*, i32 } %90, i32 %89, 1
  resume { i8*, i32 } %91
}

; Function Attrs: uwtable
define { i8*, i64 } @scan_part([0 x i8]* align 1 %input.0, i64 %input.1, i32 %0, i32 %1) unnamed_addr #1 {
start:
  %_7 = alloca { i32*, i32* }, align 8
  %_5 = alloca %"core::str::iter::Split<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>", align 8
  %delim2 = alloca i32, align 4
  %delim1 = alloca i32, align 4
  store i32 %0, i32* %delim1, align 4
  store i32 %1, i32* %delim2, align 4
  %2 = bitcast { i32*, i32* }* %_7 to i32**
  store i32* %delim1, i32** %2, align 8
  %3 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_7, i32 0, i32 1
  store i32* %delim2, i32** %3, align 8
  %4 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_7, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8, !nonnull !2, !align !7, !noundef !2
  %6 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_7, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8, !nonnull !2, !align !7, !noundef !2
  call void @"_ZN4core3str21_$LT$impl$u20$str$GT$5split17hf723b88b029de2efE"(%"core::str::iter::Split<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* sret(%"core::str::iter::Split<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>") %_5, [0 x i8]* align 1 %input.0, i64 %input.1, i32* align 4 %5, i32* align 4 %7)
  br label %bb1

bb1:                                              ; preds = %start
  %8 = call { i8*, i64 } @"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1086f55135944a1E"(%"core::str::iter::Split<[closure@inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs:56:17: 56:20]>"* align 8 %_5)
  %9 = extractvalue { i8*, i64 } %8, 0
  %10 = extractvalue { i8*, i64 } %8, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = insertvalue { i8*, i64 } undef, i8* %9, 0
  %12 = insertvalue { i8*, i64 } %11, i64 %10, 1
  ret { i8*, i64 } %12
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN18parse_query_string9scan_part28_$u7b$$u7b$closure$u7d$$u7d$17h3110186b979125ebE"({ i32*, i32* }* align 8 %_1, i32 %c) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast { i32*, i32* }* %_1 to i32**
  %_9 = load i32*, i32** %1, align 8, !nonnull !2, !align !7, !noundef !2
  %_5 = load i32, i32* %_9, align 4, !range !10, !noundef !2
  %_3 = icmp eq i32 %c, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_1, i32 0, i32 1
  %_10 = load i32*, i32** %2, align 8, !nonnull !2, !align !7, !noundef !2
  %_8 = load i32, i32* %_10, align 4, !range !10, !noundef !2
  %_6 = icmp eq i32 %c, %_8
  %3 = zext i1 %_6 to i8
  store i8 %3, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %0, align 1, !range !6, !noundef !2
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

; Function Attrs: uwtable
define void @decode_percent(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %input.0, i64 %input.1) unnamed_addr #1 {
start:
  call void @"_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17h11ef733cb61fb8feE"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %input.0, i64 %input.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_32 = alloca %"core::fmt::Arguments", align 8
  %_24 = alloca [2 x { i8*, i64* }], align 8
  %_17 = alloca %"core::fmt::Arguments", align 8
  %pair = alloca %UrlKeyValue, align 1
  %_11 = alloca %"core::option::Option<UrlKeyValue>", align 1
  %iter = alloca %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", align 8
  %_9 = alloca %"alloc::vec::Vec<UrlKeyValue>", align 8
  %_8 = alloca %"alloc::vec::into_iter::IntoIter<UrlKeyValue>", align 8
  %kv = alloca %"alloc::vec::Vec<UrlKeyValue>", align 8
  %_3 = alloca %"core::option::Option<alloc::vec::Vec<UrlKeyValue>>", align 8
  call void @parse_query_string(%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>"* sret(%"core::option::Option<alloc::vec::Vec<UrlKeyValue>>") %_3, [0 x i8]* align 1 bitcast (<{ [23 x i8] }>* @alloc194 to [0 x i8]*), i64 23, [0 x i8]* align 1 bitcast (<{}>* @alloc43 to [0 x i8]*), i64 0)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"core::option::Option<alloc::vec::Vec<UrlKeyValue>>"* %_3 to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_6 = select i1 %3, i64 0, i64 1
  switch i64 %_6, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb1
  call void @_ZN4core3fmt9Arguments6new_v117h35233abad6e0f60bE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_32, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc41 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc43 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb16

bb4:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<alloc::vec::Vec<UrlKeyValue>>"* %_3 to %"core::option::Option<alloc::vec::Vec<UrlKeyValue>>::Some"*
  %5 = bitcast %"core::option::Option<alloc::vec::Vec<UrlKeyValue>>::Some"* %4 to %"alloc::vec::Vec<UrlKeyValue>"*
  %6 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %kv to i8*
  %7 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false)
  %8 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %_9 to i8*
  %9 = bitcast %"alloc::vec::Vec<UrlKeyValue>"* %kv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false)
  call void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7e95f51774d4eaf8E"(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* sret(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>") %_8, %"alloc::vec::Vec<UrlKeyValue>"* %_9)
  br label %bb5

bb5:                                              ; preds = %bb4
  %10 = bitcast %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %iter to i8*
  %11 = bitcast %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 32, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb15, %bb5
  invoke void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ebfd553d84ad36E"(%"core::option::Option<UrlKeyValue>"* sret(%"core::option::Option<UrlKeyValue>") %_11, %"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* align 8 %iter)
          to label %bb7 unwind label %cleanup

bb19:                                             ; preds = %bb20, %cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$parse_query_string..UrlKeyValue$GT$$GT$17h87ac37be4a2526dcE"(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %iter) #15
          to label %bb21 unwind label %abort

cleanup:                                          ; preds = %bb6
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = extractvalue { i8*, i32 } %12, 1
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  br label %bb19

bb7:                                              ; preds = %bb6
  %17 = bitcast %"core::option::Option<UrlKeyValue>"* %_11 to {}**
  %18 = load {}*, {}** %17, align 1
  %19 = icmp eq {}* %18, null
  %_14 = select i1 %19, i64 0, i64 1
  switch i64 %_14, label %bb9 [
    i64 0, label %bb10
    i64 1, label %bb8
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb10:                                             ; preds = %bb7
  call void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$parse_query_string..UrlKeyValue$GT$$GT$17h87ac37be4a2526dcE"(%"alloc::vec::into_iter::IntoIter<UrlKeyValue>"* %iter)
  br label %bb17

bb8:                                              ; preds = %bb7
  %20 = bitcast %"core::option::Option<UrlKeyValue>"* %_11 to %"core::option::Option<UrlKeyValue>::Some"*
  %21 = bitcast %"core::option::Option<UrlKeyValue>::Some"* %20 to %UrlKeyValue*
  %22 = bitcast %UrlKeyValue* %pair to i8*
  %23 = bitcast %UrlKeyValue* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %23, i64 48, i1 false)
  %_27 = bitcast %UrlKeyValue* %pair to %"alloc::string::String"*
  %24 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h67dc8c422d53217fE(%"alloc::string::String"* align 8 %_27)
          to label %bb11 unwind label %cleanup1

bb18:                                             ; preds = %cleanup1
  invoke void @"_ZN4core3ptr52drop_in_place$LT$parse_query_string..UrlKeyValue$GT$17h269c1bf9ca049677E"(%UrlKeyValue* %pair) #15
          to label %bb20 unwind label %abort

cleanup1:                                         ; preds = %bb13, %bb12, %bb11, %bb8
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  %27 = extractvalue { i8*, i32 } %25, 1
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %bb18

bb11:                                             ; preds = %bb8
  %_25.0 = extractvalue { i8*, i64* } %24, 0
  %_25.1 = extractvalue { i8*, i64* } %24, 1
  %_30 = getelementptr inbounds %UrlKeyValue, %UrlKeyValue* %pair, i32 0, i32 1
  %30 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h67dc8c422d53217fE(%"alloc::string::String"* align 8 %_30)
          to label %bb12 unwind label %cleanup1

bb12:                                             ; preds = %bb11
  %_28.0 = extractvalue { i8*, i64* } %30, 0
  %_28.1 = extractvalue { i8*, i64* } %30, 1
  %31 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_24, i64 0, i64 0
  %32 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %31, i32 0, i32 0
  store i8* %_25.0, i8** %32, align 8
  %33 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %31, i32 0, i32 1
  store i64* %_25.1, i64** %33, align 8
  %34 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_24, i64 0, i64 1
  %35 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %34, i32 0, i32 0
  store i8* %_28.0, i8** %35, align 8
  %36 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %34, i32 0, i32 1
  store i64* %_28.1, i64** %36, align 8
  %_21.0 = bitcast [2 x { i8*, i64* }]* %_24 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117h35233abad6e0f60bE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_17, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc46 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_21.0, i64 2)
          to label %bb13 unwind label %cleanup1

bb13:                                             ; preds = %bb12
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_17)
          to label %bb14 unwind label %cleanup1

bb14:                                             ; preds = %bb13
  invoke void @"_ZN4core3ptr52drop_in_place$LT$parse_query_string..UrlKeyValue$GT$17h269c1bf9ca049677E"(%UrlKeyValue* %pair)
          to label %bb15 unwind label %cleanup2

abort:                                            ; preds = %bb18, %bb19
  %37 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable

bb20:                                             ; preds = %cleanup2, %bb18
  br label %bb19

cleanup2:                                         ; preds = %bb14
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  %40 = extractvalue { i8*, i32 } %38, 1
  %41 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %bb20

bb15:                                             ; preds = %bb14
  br label %bb6

bb21:                                             ; preds = %bb19
  %43 = bitcast { i8*, i32 }* %0 to i8**
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = insertvalue { i8*, i32 } undef, i8* %44, 0
  %48 = insertvalue { i8*, i32 } %47, i32 %46, 1
  resume { i8*, i32 } %48

bb17:                                             ; preds = %bb16, %bb10
  ret void

bb16:                                             ; preds = %bb2
  call void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"* %_32)
  br label %bb17
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: uwtable
declare i32 @memcmp(i8*, i8*, i64) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E(%"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E(%"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #7

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #7

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #10

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core3str16slice_error_fail17h2805d168fae0f9a7E([0 x i8]* align 1, i64, i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noreturn uwtable
declare void @_ZN4core9panicking19assert_failed_inner17h232935602d3588d9E(i8, {}* align 1, [3 x i64]* align 8, {}* align 1, [3 x i64]* align 8, %"core::option::Option<core::fmt::Arguments>"*, %"core::panic::location::Location"* align 8) unnamed_addr #12

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #13

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #13

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #13

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #13

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #3

; Function Attrs: noreturn uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() unnamed_addr #12

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h29a45ea17f28be8eE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #8 = { nofree nosync nounwind readnone willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #11 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #12 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #13 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #14 = { noreturn }
attributes #15 = { noinline }
attributes #16 = { noinline noreturn nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i64 0, i64 2}
!2 = !{}
!3 = !{i64 0, i64 -9223372036854775807}
!4 = !{i64 0, i64 -9223372036854775806}
!5 = !{i64 8}
!6 = !{i8 0, i8 2}
!7 = !{i64 4}
!8 = !{i8 -1, i8 2}
!9 = !{i8 -1, i8 3}
!10 = !{i32 0, i32 1114112}
!11 = !{i64 1}
!12 = !{i64 1, i64 -9223372036854775807}
!13 = !{i64 1, i64 0}
!14 = !{i32 0, i32 2}
!15 = !{i64 0, i64 3}
!16 = !{i32 0, i32 1114113}

^0 = module: (path: "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.rs.bc", hash: (1816779236, 2409938901, 2083459434, 3150452939, 988590456))
^1 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hb2d1c91db467b731E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^22))))) ; guid = 111072659742738040
^2 = gv: (name: "_ZN4core3ptr4read17h8ad1bf43cf560d50E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11))) ; guid = 122190350337613300
^3 = gv: (name: "alloc179", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 165066350681872548
^4 = gv: (name: "_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$13get_unchecked17h80dc1b3d01333621E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 17, calls: ((callee: ^169), (callee: ^182), (callee: ^62))))) ; guid = 180484201802338913
^5 = gv: (name: "_ZN4core6option15Option$LT$T$GT$3map17hc405858ea540bf78E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, calls: ((callee: ^306))))) ; guid = 252332847929072294
^6 = gv: (name: "_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5041948ef3da5ee6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^40), (callee: ^89)), refs: (^139, ^194, ^322)))) ; guid = 276820150340896605
^7 = gv: (name: "_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h873017416275e56eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 337833561140108373
^8 = gv: (name: "alloc151", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^108)))) ; guid = 510647595337721622
^9 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^10 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5ba8274b5050bb02E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 667173562376606527
^11 = gv: (name: "_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE") ; guid = 682884734678583306
^12 = gv: (name: "_ZN4core5alloc6layout6Layout5array17ha664e7e7635b2d91E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^143), (callee: ^69), (callee: ^225), (callee: ^172), (callee: ^43)), refs: (^96)))) ; guid = 724907513740444570
^13 = gv: (name: "alloc146", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^309)))) ; guid = 761135232884969753
^14 = gv: (name: "_ZN4core3ptr5write17h3d16474df481e5c1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 794568575446095513
^15 = gv: (name: "_ZN4core3num20_$LT$impl$u20$u8$GT$21is_utf8_char_boundary17h3ec1d1c48ed0e125E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 827507064926825086
^16 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h11d818c4f2d51288E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^45)), refs: (^253)))) ; guid = 868419543950484707
^17 = gv: (name: "alloc127", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^67)))) ; guid = 897981293432157663
^18 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^19 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h7bc8dabd0a65014aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^341))))) ; guid = 1004637329246973380
^20 = gv: (name: "_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hef912a8f72dcde5fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35))) ; guid = 1105788006835397221
^21 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h56139e7e985d491aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^310))))) ; guid = 1115041149221494658
^22 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h7d88c068bfb902a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 1127075607605011830
^23 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h28036a1bfd6eb9a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 1190320380308996397
^24 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h1c5c2bd32eb589c2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^334), (callee: ^28), (callee: ^107))))) ; guid = 1272795239964142600
^25 = gv: (name: "_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfada59c925c98eb7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19))) ; guid = 1320163269830368539
^26 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h85fb5fde21db0d80E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^34))))) ; guid = 1348216642507461701
^27 = gv: (name: "_ZN4core3ptr4read17ha06bdca4d0ee02eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1427192713994087529
^28 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h769b93ad9ef1a36dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^85), (callee: ^184))))) ; guid = 1472434987255822136
^29 = gv: (name: "_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h23dc48781f8c91d8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7))) ; guid = 1499675747512509893
^30 = gv: (name: "alloc189", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^326)))) ; guid = 1519652567357655339
^31 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^32 = gv: (name: "_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hceb9967eefc1f8ffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^64))))) ; guid = 1566310351929753556
^33 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hff05a9d1cf14f5a4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^308))))) ; guid = 1594328371640900336
^34 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h00f9634cdc431da6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 127, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^12), (callee: ^217), (callee: ^100), (callee: ^11), (callee: ^201), (callee: ^33), (callee: ^327), (callee: ^134), (callee: ^335), (callee: ^212), (callee: ^135)), refs: (^253)))) ; guid = 1630600992577826859
^35 = gv: (name: "alloc193", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^326)))) ; guid = 1657653710701459839
^36 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h1710e7f042e9ba2dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^61), (callee: ^107))))) ; guid = 1726105494860370846
^37 = gv: (name: "_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h842c2f1c36fc9449E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^82), (callee: ^276))))) ; guid = 1764469286520378433
^38 = gv: (name: "scan_part", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23, calls: ((callee: ^280), (callee: ^269))))) ; guid = 1773110734405850010
^39 = gv: (name: "_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$9spec_next17hd87d5017d20a8eb3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^120), (callee: ^70), (callee: ^94), (callee: ^129), (callee: ^235))))) ; guid = 1816423354211799373
^40 = gv: (name: "_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE") ; guid = 1902152299201211586
^41 = gv: (name: "_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E") ; guid = 1967081855160219432
^42 = gv: (name: "_ZN4core3ptr4read17hab07edb9fb348465E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 2165262946400226021
^43 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h8a12d7686c9d0b39E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^251))))) ; guid = 2194253954636945534
^44 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h98b1f3073dc81a0cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 2225501728695475120
^45 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h26a27036c26f6c78E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^333), (callee: ^339))))) ; guid = 2269277353946810848
^46 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h7dda78e3bff25158E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^81), (callee: ^205), (callee: ^116))))) ; guid = 2319809068490089336
^47 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h853f611078f4366bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 2561469269024970688
^48 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^49 = gv: (name: "_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h495ca01c5b2144beE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^206), (callee: ^212), (callee: ^274), (callee: ^99)), refs: (^253)))) ; guid = 2615159079558076814
^50 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h9b60463770c1342fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^256))))) ; guid = 2622276928872336700
^51 = gv: (name: "alloc56", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^332)))) ; guid = 2648818852377373868
^52 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h69e80a9516f1281fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^181)), refs: (^8, ^263)))) ; guid = 2716684816795920785
^53 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h593edc120490b60bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2718736490800541666
^54 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17ha00e50b0307cea21E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 127, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^233), (callee: ^16), (callee: ^100), (callee: ^11), (callee: ^201), (callee: ^33), (callee: ^327), (callee: ^86), (callee: ^335), (callee: ^81), (callee: ^261)), refs: (^253)))) ; guid = 2753106958622280320
^55 = gv: (name: "_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hf91aec44a978e1ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^173))))) ; guid = 2842237099220759165
^56 = gv: (name: "alloc147", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2890188497993087061
^57 = gv: (name: "alloc176", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 2908472872269063057
^58 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h9070bfdfcba89b99E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^117))))) ; guid = 3068977631577088650
^59 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h67dc8c422d53217fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^192)), refs: (^37)))) ; guid = 3087952499074337691
^60 = gv: (name: "_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17haab11cbc5787da16E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, calls: ((callee: ^142))))) ; guid = 3169761038233006678
^61 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h73b40dd0329018c2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 3283158069254927940
^62 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h60ece4000a586b69E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^101), (callee: ^74))))) ; guid = 3334234497086021027
^63 = gv: (name: "alloc168", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^115)))) ; guid = 3413970195188622397
^64 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17ha7d5dca76f4da207E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^26))))) ; guid = 3599040109000435470
^65 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$13get_unchecked17h05b771c94a57aa6eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^121))))) ; guid = 3765611935362504608
^66 = gv: (name: "alloc170", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^115)))) ; guid = 3806023393304355574
^67 = gv: (name: "alloc126", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3844481239613455660
^68 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3894621086261895785
^69 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h595bfece0785cd03E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 4016329428348490398
^70 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h55931fdbc2bb188bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 4053715582470221619
^71 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83c5ca82feafea23E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^286), (callee: ^323))))) ; guid = 4175286283275274482
^72 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h4b0ff505a15827b9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^266), (callee: ^339))))) ; guid = 4296092347372230042
^73 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha48ff2731674b652E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^186))))) ; guid = 4299524563866684007
^74 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hdd2d4da2948b07b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 4400565378230800880
^75 = gv: (name: "_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6zeroed17h9e4201e1f5e0bfedE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^259))))) ; guid = 4560134959308550549
^76 = gv: (name: "_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17he9fef1bca1ff1283E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^176), (callee: ^238), (callee: ^334), (callee: ^307), (callee: ^268), (callee: ^254), (callee: ^315), (callee: ^337)), refs: (^253)))) ; guid = 4635813192009477783
^77 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^78 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hee330e247705ea51E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^189), (callee: ^339))))) ; guid = 4764964359834657282
^79 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h03c28a2053c7797dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^311), (callee: ^295))))) ; guid = 4869975787973402517
^80 = gv: (name: "_ZN49_$LT$u8$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hdbe27db103c83dfeE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 27, calls: ((callee: ^334), (callee: ^236), (callee: ^287)), refs: (^128)))) ; guid = 4908920086496704531
^81 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h315e116b94c1842aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 4921974296374697796
^82 = gv: (name: "_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8167008c51fed85dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^257), (callee: ^131))))) ; guid = 4970882817116472104
^83 = gv: (name: "alloc48", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5152911232051215348
^84 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h88051b4058831187E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^21), (callee: ^291))))) ; guid = 5346089954563918982
^85 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h431a0f6ac5db06eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 5363751700324970616
^86 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb72e3776a1d9d716E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^61), (callee: ^107))))) ; guid = 5379014877149598538
^87 = gv: (name: "_ZN4core3str11validations18utf8_acc_cont_byte17ha6f3f6a277a6b821E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 5455443963565523906
^88 = gv: (name: "_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h2b5b5b3deb77692dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^162), (callee: ^52))))) ; guid = 5605191406643314118
^89 = gv: (name: "_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h29a45ea17f28be8eE") ; guid = 5688815861685152092
^90 = gv: (name: "_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E") ; guid = 5691937269951177933
^91 = gv: (name: "_ZN4core3str16slice_error_fail17h2805d168fae0f9a7E") ; guid = 5788510974411133155
^92 = gv: (name: "_ZN4core3cmp3max17hbc66f78c7f702320E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^289))))) ; guid = 5851098177772201146
^93 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h76d22a1fcee8b7aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^134), (callee: ^212), (callee: ^135))))) ; guid = 5888111117324025855
^94 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h5024aac75d60a745E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 6013913548209364930
^95 = gv: (name: "_ZN4core3str6traits48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$str$GT$3cmp17hdc5f11ee5de01fc2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31, calls: ((callee: ^163))))) ; guid = 6029696469897290854
^96 = gv: (name: "alloc161", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^168)))) ; guid = 6032561992116016963
^97 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17hd0becdfe0365a88fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 6048508015760463403
^98 = gv: (name: "alloc187", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^326)))) ; guid = 6091794702636712643
^99 = gv: (name: "_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$parse_query_string..UrlKeyValue$GT$$GT$17h1d59568799fb134fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^204))))) ; guid = 6142692307540046242
^100 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h6ee15edaa8afaae8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 6151242017622409381
^101 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h2275c54a22bfe019E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 6159994441353020332
^102 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^103 = gv: (name: "_ZN4core10intrinsics11write_bytes17h287c3b09dd4a7f6aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 6459321130700614142
^104 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h9e02be5eb4da71e6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^36), (callee: ^81))))) ; guid = 6488060728165215049
^105 = gv: (name: "_ZN47_$LT$str$u20$as$u20$alloc..string..ToString$GT$9to_string17h11ef733cb61fb8feE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^178))))) ; guid = 6561099538043389859
^106 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^107 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8804cc0340b79e0fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 6597866976006160484
^108 = gv: (name: "alloc150", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6676482324846807656
^109 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hf7b98d4673eea99eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^155), (callee: ^213))))) ; guid = 6680870441465344722
^110 = gv: (name: "_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h3e7a86eb925669f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 75, calls: ((callee: ^147), (callee: ^65))))) ; guid = 6691579138095232147
^111 = gv: (name: "_ZN4core3str11validations15next_code_point17ha53a2de7f93ff1deE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 81, calls: ((callee: ^240), (callee: ^25), (callee: ^216), (callee: ^193), (callee: ^150), (callee: ^87)), refs: (^210, ^179, ^283)))) ; guid = 6712615681466141613
^112 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h60a1a4e5e392d2d4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 6729003315841175658
^113 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6750603403536955165
^114 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^115 = gv: (name: "alloc169", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6869226208352576743
^116 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf9f4d285eaeb76afE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 6882444636238742556
^117 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf961fb2060301becE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 6907297208502691799
^118 = gv: (name: "_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7e95f51774d4eaf8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 77, calls: ((callee: ^208), (callee: ^2), (callee: ^109), (callee: ^170), (callee: ^117))))) ; guid = 6965474442671743221
^119 = gv: (name: "decode_percent", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^105))))) ; guid = 6999349446261638459
^120 = gv: (name: "_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$8is_empty17h4057294f2e2d48d9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^275))))) ; guid = 7044634297174251169
^121 = gv: (name: "_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$13get_unchecked17haa37b228be3c6997E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 15, calls: ((callee: ^169), (callee: ^62))))) ; guid = 7128807769741622271
^122 = gv: (name: "alloc174", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 7159600920148516763
^123 = gv: (name: "alloc178", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 7341921704779417239
^124 = gv: (name: "_ZN4core4char18from_u32_unchecked17hfec1897cf1e72108E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^151))))) ; guid = 7366628134777220461
^125 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17hd5a9401c960c47a1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^185))))) ; guid = 7391425888036062597
^126 = gv: (name: "_ZN4core3ptr52drop_in_place$LT$parse_query_string..UrlKeyValue$GT$17h269c1bf9ca049677E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^250), (callee: ^337)), refs: (^253)))) ; guid = 7407320979977802647
^127 = gv: (name: "_ZN4core3ptr5write17hda3e491d8237333aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 7417190410014370524
^128 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7526330174190531270
^129 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h6313b1fd9ece08e5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 7577070649962579561
^130 = gv: (name: "_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17hb330fc0504bc6c2dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 7577509578054301255
^131 = gv: (name: "_ZN4core3str8converts19from_utf8_unchecked17h839047e1282d4346E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 13))) ; guid = 7590988412848617046
^132 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h770196b5bb5f635eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34))) ; guid = 7591871221420683114
^133 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h2e05be5e65953885E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^291), (callee: ^107))))) ; guid = 7631987916151984036
^134 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9a31267f4ce48163E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^61), (callee: ^117))))) ; guid = 7634384193454518777
^135 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hf0ec127cf3746201E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^117))))) ; guid = 7635301631042423724
^136 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8be44c8a00a39bbeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^329))))) ; guid = 7736670807234659348
^137 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h3452f346a021c186E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^248))))) ; guid = 7879011122344241391
^138 = gv: (name: "_ZN5alloc5alloc7realloc17h8b26c7fa3f7460edE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^100), (callee: ^260), (callee: ^271))))) ; guid = 8020659671162366426
^139 = gv: (name: "alloc185", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8136542661247590919
^140 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hab9ed6d6e00ebf70E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^7))))) ; guid = 8138909077157810801
^141 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h63c1af6c00e1f9d3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 8220553395961894624
^142 = gv: (name: "_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17h76b46ec24d040ac0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 8328058081482770143
^143 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hd41e9a838999b61cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 8344928928220682026
^144 = gv: (name: "alloc43", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8433316451551835574
^145 = gv: (name: "_ZN4core3cmp5impls70_$LT$impl$u20$core..cmp..PartialOrd$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ge17h27977cf8fff8995cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^241))))) ; guid = 8435664034709930635
^146 = gv: (name: "_ZN5alloc11collections15TryReserveError4kind17h55a3ecefed17de62E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^258))))) ; guid = 8605221612121019982
^147 = gv: (name: "_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17h1461a16e3382c256E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^196))))) ; guid = 8608579064773308163
^148 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h112c48ef860cf8e9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 8609236767863617210
^149 = gv: (name: "alloc148", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^56)))) ; guid = 8634380740824250402
^150 = gv: (name: "_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h63d0f11e450d664aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^298)), refs: (^253)))) ; guid = 8674376749709013740
^151 = gv: (name: "_ZN4core4char7convert18from_u32_unchecked17hdd44e4998b395382E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 8694140710032528656
^152 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h12e23bc322b48953E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37))) ; guid = 8735496031609275174
^153 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7e7f475ce03d1446E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^71))))) ; guid = 8736517323414321731
^154 = gv: (name: "_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h5381c2e216830016E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 8820382070547080686
^155 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h1b6a414b844af2a9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^282))))) ; guid = 8949123512891748078
^156 = gv: (name: "_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h9c6a69053636b4a6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 8963139885262806648
^157 = gv: (name: "_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h48400a7b5540eb93E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^188))))) ; guid = 9158602007426653804
^158 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1ff22a8330cf727E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^268), (callee: ^205))))) ; guid = 9175507770950022500
^159 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h3e9b9d65109a3d73E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^50))))) ; guid = 9266749183391877302
^160 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9309596499290048897
^161 = gv: (name: "_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h2853dd5970ad320dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 9323079926765272348
^162 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hee000238206e8453E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 9329436044989385498
^163 = gv: (name: "_ZN4core5slice3cmp56_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$u5b$T$u5d$$GT$3cmp17hda7818d3d8119787E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^80))))) ; guid = 9377204164922672977
^164 = gv: (name: "_ZN4core3ptr8metadata8metadata17hdf7e716fc2a74e42E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 9406070474302789149
^165 = gv: (name: "_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$parse_query_string..UrlKeyValue$GT$$GT$17h301b30b5b9c598aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^211), (callee: ^99), (callee: ^337)), refs: (^253)))) ; guid = 9471168930004090791
^166 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17he0d042400ea965d6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9496486964398654031
^167 = gv: (name: "_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0a23a4d6bf61a837E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^191))))) ; guid = 9537781300429102720
^168 = gv: (name: "alloc160", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9563302649345927357
^169 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h4260a340848fa07cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 9654091641330974682
^170 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h48aff8d18af7d36bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 9684336414949182418
^171 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hc0ab79362e20bd41E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^298)), refs: (^253)))) ; guid = 9747318231858885679
^172 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4b6a2f6c7f9f645eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^166))))) ; guid = 9858051436559020023
^173 = gv: (name: "_ZN18parse_query_string9scan_part28_$u7b$$u7b$closure$u7d$$u7d$17h3110186b979125ebE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 9937134645877440848
^174 = gv: (name: "_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hd2f61b9c77230dc7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^222), (callee: ^4))))) ; guid = 9946851126596016833
^175 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h2294f8b1e56158f9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 9956131339056721252
^176 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h14cefd9c32fb9e8eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 9980695151110238570
^177 = gv: (name: "_ZN4core3str7pattern8Searcher10next_match17hbf3f6ab3a7f74bb7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, calls: ((callee: ^244))))) ; guid = 10036291594126776043
^178 = gv: (name: "_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h98d6765e57d24b21E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^336))))) ; guid = 10076322507502082753
^179 = gv: (name: "alloc155", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^237)))) ; guid = 10076528026540847380
^180 = gv: (name: "_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h21badb017efc4902E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^303))))) ; guid = 10246326792847090368
^181 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^182 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h39742ab9babcdd4cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^164))))) ; guid = 10285425820777276522
^183 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^184 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h2f111abd0f04705bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 10319867499952416572
^185 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h3d7d7f6826a54c3bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 10322173152915313382
^186 = gv: (name: "_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h371347b6ff5fbf02E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^41), (callee: ^90), (callee: ^207), (callee: ^18), (callee: ^330))))) ; guid = 10347352129768766683
^187 = gv: (name: "_ZN4core3ptr62drop_in_place$LT$$u5b$parse_query_string..UrlKeyValue$u5d$$GT$17he3a6cb2a79867b6eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 72, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^126), (callee: ^337)), refs: (^253)))) ; guid = 10413249987849937990
^188 = gv: (name: "_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h71bbf8baa94f82f2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^247))))) ; guid = 10420235723894629575
^189 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h66ccbd658dd7673aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^212), (callee: ^107))))) ; guid = 10424294896046013691
^190 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h9851868588ccf95cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^267))))) ; guid = 10538887788412110649
^191 = gv: (name: "_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17h863cb8a13299eed4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 10707241559957550876
^192 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hb8ede81fd448f4c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 10725705129000699430
^193 = gv: (name: "_ZN4core3str11validations15utf8_first_byte17hc721e708a931d82dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 10822641956652777726
^194 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^73, ^130)))) ; guid = 10966544775360633327
^195 = gv: (name: "_ZN83_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hf264a5609dc56101E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^214))))) ; guid = 10971654735044283117
^196 = gv: (name: "_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17hce4d42ba1ee826b1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 11027417321218446028
^197 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h838129b73d066204E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^58), (callee: ^234))))) ; guid = 11060531702484048820
^198 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17h585474ec754f1c31E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 11073441216546461965
^199 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h35233abad6e0f60bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^199), (callee: ^281)), refs: (^144, ^51, ^13)))) ; guid = 11420399402779578249
^200 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17h35bf52583f4720eeE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^100), (callee: ^260), (callee: ^31))))) ; guid = 11487165358508503890
^201 = gv: (name: "_ZN5alloc7raw_vec11alloc_guard17h0744b2c93b49dcfdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 32, calls: ((callee: ^256))))) ; guid = 11609688678669483173
^202 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h76bc0d1c4fb6de0cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 11615973997568618996
^203 = gv: (name: "_ZN5alloc5alloc7dealloc17hd996a5b6bc27980fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^100), (callee: ^260), (callee: ^77))))) ; guid = 11662379946270705521
^204 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h976f77da580b5953E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^292), (callee: ^323))))) ; guid = 11682887661345832134
^205 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h8d0e9bf314c10a1dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^148))))) ; guid = 11714715488753635154
^206 = gv: (name: "_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17hfc4e1f05b40d1e3cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^2))))) ; guid = 11722015685204933140
^207 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E") ; guid = 11743839634310749277
^208 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17hc0d6766a79d8592cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^97))))) ; guid = 11770890106014614756
^209 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17he37440f03370d69bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 11967021912879688736
^210 = gv: (name: "alloc153", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^237)))) ; guid = 12135600838164043780
^211 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h27f164e105c8f331E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^109), (callee: ^125), (callee: ^187))))) ; guid = 12296079297198519304
^212 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfddfa18f8e3afa5aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 12297650897263418803
^213 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8d4f31ac90eccf49E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^175), (callee: ^242))))) ; guid = 12304780430054387667
^214 = gv: (name: "_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h1508669437a7a8acE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^88), (callee: ^167), (callee: ^245)), refs: (^305)))) ; guid = 12332202620669962480
^215 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b4beff5391aed09E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^6))))) ; guid = 12362003118659288287
^216 = gv: (name: "_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hb99b2fc51f42b8c1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 12401547296077233815
^217 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17he9cafb19f216fafcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^197)), refs: (^253)))) ; guid = 12407169240795969275
^218 = gv: (name: "_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d59dd4a03b37d2dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^270), (callee: ^340), (callee: ^187), (callee: ^337)), refs: (^253)))) ; guid = 12573403693555575539
^219 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h64328f446fcae46aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 12591397919449764216
^220 = gv: (name: "_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$parse_query_string..UrlKeyValue$GT$$GT$17h87ac37be4a2526dcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^218))))) ; guid = 12618124057007263911
^221 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hb50bcc7ccdeecfb4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^310), (callee: ^107))))) ; guid = 12646221024435299298
^222 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h2d8f7369aebb6bcfE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 46, calls: ((callee: ^190), (callee: ^284), (callee: ^15))))) ; guid = 12669522597803484030
^223 = gv: (name: "_ZN5alloc5alloc5alloc17h946fa4baddfe1715E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^100), (callee: ^260), (callee: ^183))))) ; guid = 12802818604110432766
^224 = gv: (name: "str.3", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12806883146122037735
^225 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h9aa1d0ac2f9d51f4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 12857280932818267937
^226 = gv: (name: "_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ebfd553d84ad36E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, calls: ((callee: ^27), (callee: ^181), (callee: ^75)), refs: (^17, ^160)))) ; guid = 13039768006316410711
^227 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h607368dd20f09b12E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^141))))) ; guid = 13159085130017080664
^228 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb0e545bb89c88d99E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 62, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^109), (callee: ^79), (callee: ^127), (callee: ^126), (callee: ^337)), refs: (^253)))) ; guid = 13178016653904004814
^229 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h7903cd18423ef45bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^24))))) ; guid = 13213233369493412070
^230 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h06f5951b682ffca3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 13276815301548384408
^231 = gv: (name: "_ZN5alloc7raw_vec11finish_grow17hc1abee7e2f339650E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 117, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^1), (callee: ^44), (callee: ^100), (callee: ^272), (callee: ^201), (callee: ^316), (callee: ^246), (callee: ^260), (callee: ^33), (callee: ^159), (callee: ^137)), refs: (^232, ^122)))) ; guid = 13325193994800816515
^232 = gv: (name: "alloc172", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 13345378264262014627
^233 = gv: (name: "_ZN4core5alloc6layout6Layout5array17he9d7e16ab864d4fcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^143), (callee: ^69), (callee: ^225), (callee: ^172), (callee: ^43)), refs: (^96)))) ; guid = 13400633932004875387
^234 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hb93af453d5622596E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 13537806739441808019
^235 = gv: (name: "_ZN4core3mem7replace17h6f3993a9fd622511E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^42), (callee: ^14)), refs: (^253)))) ; guid = 13724433828931237413
^236 = gv: (name: "memcmp") ; guid = 13767193220660627266
^237 = gv: (name: "alloc156", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13930475651752252902
^238 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17heebd36a9969a4dddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^314))))) ; guid = 14002197272685684912
^239 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14003602673269217145
^240 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96c8fe6a38386dbfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^81), (callee: ^291), (callee: ^28), (callee: ^107))))) ; guid = 14009519943710776157
^241 = gv: (name: "_ZN4core3cmp10PartialOrd2ge17ha263a147f8d1c9a2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^265))))) ; guid = 14020692136379464877
^242 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h2212de96a991c022E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 14136542647529533044
^243 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^244 = gv: (name: "_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hc7efef2acc7f55a5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 104, calls: ((callee: ^81), (callee: ^47), (callee: ^23), (callee: ^294), (callee: ^55))))) ; guid = 14468041876757398668
^245 = gv: (name: "_ZN4core9panicking13assert_failed17ha9f056c38184cb11E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^255)), refs: (^319)))) ; guid = 14541069946635896396
^246 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd5b2481b0ba2094fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^329))))) ; guid = 14541094176554371944
^247 = gv: (name: "_ZN5alloc5slice4hack6to_vec17h2d5bf27c2c05e59aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^76))))) ; guid = 14583430633877201147
^248 = gv: (name: "_ZN5alloc5alloc6Global9grow_impl17hec22d8ad1a4ad8e4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 134, calls: ((callee: ^100), (callee: ^308), (callee: ^260), (callee: ^81), (callee: ^138), (callee: ^133), (callee: ^209), (callee: ^53), (callee: ^227), (callee: ^46), (callee: ^103), (callee: ^152), (callee: ^104), (callee: ^198), (callee: ^323)), refs: (^63, ^66)))) ; guid = 14605580003742363953
^249 = gv: (name: "_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hf14cdeab65d2c33aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 14623611312388425913
^250 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7e03d4d8fd0535f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^307))))) ; guid = 14682048924246387674
^251 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h2bb7a2fe4379a0d9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 14697130196980072123
^252 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17h7f002af6fbc45bd4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^260), (callee: ^107))))) ; guid = 14755523521913665352
^253 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^254 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17hc838b76c8a87a2e6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^198))))) ; guid = 14879850887128721826
^255 = gv: (name: "_ZN4core9panicking19assert_failed_inner17h232935602d3588d9E") ; guid = 14952130605289471956
^256 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2add7c937afb740fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^7))))) ; guid = 14953557904078794511
^257 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h25495c2e01083b05E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^84), (callee: ^285))))) ; guid = 14971488861446978431
^258 = gv: (name: "_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h48514addacd7a9cdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 28, calls: ((callee: ^29))))) ; guid = 15005053075525228063
^259 = gv: (name: "_ZN4core10intrinsics11write_bytes17h3ff2156d5b5a098eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 15018746118060144865
^260 = gv: (name: "_ZN4core5alloc6layout6Layout5align17hd81dedcccff0f889E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^302), (callee: ^202))))) ; guid = 15088501725965827992
^261 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hac38e050594a0747E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^107))))) ; guid = 15148903116140636841
^262 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^68, ^304, ^83)))) ; guid = 15214211985465450920
^263 = gv: (name: "alloc149", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15278021047015106106
^264 = gv: (name: "alloc191", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^326)))) ; guid = 15282775929302014994
^265 = gv: (name: "_ZN4core3str6traits55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$str$GT$11partial_cmp17h187b49de183c8d56E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^95))))) ; guid = 15292565117245093631
^266 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd0e7c9815feaa970E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^81), (callee: ^107))))) ; guid = 15297563346943499876
^267 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17hec7ab938b391ed47E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^296))))) ; guid = 15332419189239854167
^268 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hb8d3194b443870abE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^21), (callee: ^291))))) ; guid = 15463946950264390525
^269 = gv: (name: "_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1086f55135944a1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^312))))) ; guid = 15492821327176828413
^270 = gv: (name: "_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17h35206a1b08c7ed4bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^195), (callee: ^125))))) ; guid = 15500447630288130783
^271 = gv: (name: "__rust_realloc") ; guid = 15507136812573830794
^272 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17had13c65ce3b5ade9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^7))))) ; guid = 15537411875766574916
^273 = gv: (name: "_ZN49_$LT$F$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h265915cba1117a88E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^325))))) ; guid = 15543313810198201218
^274 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hee4d90523e6adf3aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^135)), refs: (^253)))) ; guid = 15571217257474045280
^275 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17ha9b41b64c417f682E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 15676726082103297456
^276 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^277 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 112, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^288), (callee: ^199), (callee: ^118), (callee: ^226), (callee: ^220), (callee: ^59), (callee: ^126), (callee: ^318), (callee: ^337), (callee: ^324)), refs: (^253, ^144, ^278, ^301, ^262)))) ; guid = 15822663052811949562
^278 = gv: (name: "alloc194", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15923533868095986628
^279 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$12char_indices17he6530f1ebe9c80fbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^331))))) ; guid = 16037648503447875762
^280 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$5split17hf723b88b029de2efE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^284), (callee: ^273)), refs: (^253)))) ; guid = 16059936676522404165
^281 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^282 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2e1aa5f87493c1b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^212))))) ; guid = 16072252782895135542
^283 = gv: (name: "alloc157", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^237)))) ; guid = 16123567096827186860
^284 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1edf460437969791E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 15))) ; guid = 16126208993533262415
^285 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17h3c6ab6e1e59416dcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^62))))) ; guid = 16129998828598648640
^286 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h5c8aa83f7c17d455E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^233), (callee: ^171), (callee: ^72), (callee: ^313)), refs: (^57)))) ; guid = 16173367383753024660
^287 = gv: (name: "_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$isize$GT$3cmp17heac4c112e095896bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 16319075276644844644
^288 = gv: (name: "parse_query_string", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 239, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^331), (callee: ^230), (callee: ^290), (callee: ^181), (callee: ^32), (callee: ^249), (callee: ^165), (callee: ^112), (callee: ^299), (callee: ^145), (callee: ^38), (callee: ^20), (callee: ^156), (callee: ^60), (callee: ^119), (callee: ^105), (callee: ^180), (callee: ^228), (callee: ^250), (callee: ^337)), refs: (^253, ^98, ^224, ^30, ^239, ^264, ^35)))) ; guid = 16347145008845456345
^289 = gv: (name: "_ZN4core3cmp3Ord3max17h3d9cb7dd0a8b01b0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^154)), refs: (^253)))) ; guid = 16420058127580158143
^290 = gv: (name: "_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d560d86f888d8e0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^111), (callee: ^5))))) ; guid = 16488601919757456141
^291 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h50ba1c14d66a99dcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^175), (callee: ^242))))) ; guid = 16496560480830080128
^292 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h42acb10cc3e52d14E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^12), (callee: ^171), (callee: ^78), (callee: ^313)), refs: (^57)))) ; guid = 16499052989634488262
^293 = gv: (name: "alloc166", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^115)))) ; guid = 16659599964388097543
^294 = gv: (name: "_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78eb2a695cfec5f9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 105, calls: ((callee: ^81), (callee: ^47), (callee: ^23), (callee: ^290))))) ; guid = 16676677345194338121
^295 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve17hfc7aab40dc296691E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 25, calls: ((callee: ^19), (callee: ^11), (callee: ^335))))) ; guid = 16693707203225796440
^296 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h2cd0a0a1032f70cdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^169))))) ; guid = 16742728894602904696
^297 = gv: (name: "alloc180", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 16836336695376522728
^298 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h538d92ef0618bdc9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 16841988564348001418
^299 = gv: (name: "_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb1819e1ecfe17ff5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^39))))) ; guid = 16983137359721705705
^300 = gv: (name: "_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd7707c9b49e95d0aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^157))))) ; guid = 16994250430544772483
^301 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^113)))) ; guid = 17017390297247049824
^302 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd06fc3738f741f4aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^219))))) ; guid = 17078057666319829572
^303 = gv: (name: "_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h680d1d8c4297561cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31, calls: ((callee: ^284), (callee: ^174), (callee: ^91))))) ; guid = 17121554505384136734
^304 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17181315259036942311
^305 = gv: (name: "alloc159", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^320)))) ; guid = 17216614033924441828
^306 = gv: (name: "_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hfb572943e281a18dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^124))))) ; guid = 17224820479270340648
^307 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h234718032647b967E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^158), (callee: ^153), (callee: ^337)), refs: (^253)))) ; guid = 17333931329438481447
^308 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17h8dc5457d77ad5620E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^100), (callee: ^252), (callee: ^223), (callee: ^200), (callee: ^133), (callee: ^209), (callee: ^53), (callee: ^46), (callee: ^227)), refs: (^293)))) ; guid = 17342794361225358040
^309 = gv: (name: "alloc145", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17358274953303612815
^310 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hebc4d388238c6116E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^81))))) ; guid = 17471264239386214516
^311 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hbc6c9c1834d1e03cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 114, calls: ((callee: ^256), (callee: ^338), (callee: ^132), (callee: ^328), (callee: ^92), (callee: ^140), (callee: ^12), (callee: ^292), (callee: ^231), (callee: ^10), (callee: ^93), (callee: ^136)), refs: (^123, ^297)))) ; guid = 17510631183497546774
^312 = gv: (name: "_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17ha3fb3343aeb0f36fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 66, calls: ((callee: ^147), (callee: ^317), (callee: ^110), (callee: ^65))))) ; guid = 17530457031702149418
^313 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h80490b71e717e327E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^221))))) ; guid = 17595905707586986274
^314 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h95859deeb6564992E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^54))))) ; guid = 17597183861179000532
^315 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17hb3fd9ec6fb66f931E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 17613899709343813536
^316 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17haa6870a0e535e36aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 45))) ; guid = 17644236480719045893
^317 = gv: (name: "_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h6eb553c9b9df927cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^177))))) ; guid = 17670397064328178279
^318 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^319 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^215, ^161)))) ; guid = 17751692671738767827
^320 = gv: (name: "alloc158", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17778606088671881225
^321 = gv: (name: "_ZN5alloc6string6String19from_utf8_unchecked17h27407292d0185968E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9))) ; guid = 17779616397160788665
^322 = gv: (name: "alloc181", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17791903543836965558
^323 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2d07371f2c213f1eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^100), (callee: ^81), (callee: ^203))))) ; guid = 17840937846846992864
^324 = gv: (name: "_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE") ; guid = 17906690583868548313
^325 = gv: (name: "_ZN95_$LT$core..str..pattern..MultiCharEqPattern$LT$C$GT$$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h052d30d87d871f39E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^279)), refs: (^253)))) ; guid = 17913298427710806197
^326 = gv: (name: "alloc192", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18001499816744554529
^327 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hf4f188d6fb67ea04E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^308))))) ; guid = 18029492123869667643
^328 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2a4d10ad56170302E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 38))) ; guid = 18045137504570019712
^329 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h5b17a2aae5c320bcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 18090551448869643087
^330 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE") ; guid = 18145797040138870230
^331 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h361bf9e72f65bc18E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 30, calls: ((callee: ^229))))) ; guid = 18160762603942307970
^332 = gv: (name: "alloc55", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18178712752044155182
^333 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h00bcad0a48d374fdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^107))))) ; guid = 18185038245592869686
^334 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h65fa8d128163af3dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 18234706078215633702
^335 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^336 = gv: (name: "_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h14375520b9103638E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^300), (callee: ^321))))) ; guid = 18333961960622156547
^337 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^338 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h3e0b0e2d8dfeb7ddE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 18410027984414986701
^339 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h3269e9dba2066f33E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 18420654127919372146
^340 = gv: (name: "_ZN4core3ptr185drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$parse_query_string..UrlKeyValue$C$alloc..alloc..Global$GT$$GT$17hbc4ce0955e6b762fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^49))))) ; guid = 18425195983348491078
^341 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17he4546dce69c51210E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^146))))) ; guid = 18439234649982748584
^342 = blockcount: 1296
