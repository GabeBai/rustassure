; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zlsh.rs.bc'
source_filename = "zlsh.e0e39734-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"alloc::vec::into_iter::IntoIter<u64>" = type { %"core::marker::PhantomData<u64>", %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>", i64*, i64, i64*, i64* }
%"core::marker::PhantomData<u64>" = type {}
%"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>" = type { %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"alloc::vec::Vec<u64>" = type { { i64*, i64 }, i64 }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"alloc::vec::drain::Drain<u64>" = type { i64, i64, { i64*, i64* }, i64* }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err" = type { [1 x i64], { i64, i64 } }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>" = type { %"alloc::vec::drain::Drain<u64>", { i64*, i64* } }
%"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>" = type { %"alloc::vec::drain::Drain<u64>", { i64, i64 } }
%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]" = type { i64*, { i64*, i64 } }
%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]" = type { i64*, { i64*, i64 } }
%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]" = type { %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]" }
%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]" = type { %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]" }
%"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>" = type { [0 x i8] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u64]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::option::Option<core::fmt::Arguments>" = type { {}*, [5 x i64] }
%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, fn(u64) {core::mem::drop::<u64>}>::{closure#0}]" = type { {} }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], i64 }
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
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue" = type { {} }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<u64>>" = type { %"alloc::vec::Vec<u64>" }
%Zahl = type <{ i32, i32, i64, i64, %"alloc::vec::Vec<u64>" }>
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc128 = private unnamed_addr constant <{ [82 x i8] }> <{ [82 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/vec/into_iter.rs" }>, align 1
@alloc129 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [82 x i8] }>, <{ [82 x i8] }>* @alloc128, i32 0, i32 0, i32 0), [16 x i8] c"R\00\00\00\00\00\00\00\A0\00\00\00\1B\00\00\00" }>, align 8
@alloc40 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"capacity overflow" }>, align 1
@alloc41 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [17 x i8] }>, <{ [17 x i8] }>* @alloc40, i32 0, i32 0, i32 0), [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8
@alloc43 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc147 = private unnamed_addr constant <{ [94 x i8] }> <{ [94 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/vec/spec_from_iter_nested.rs" }>, align 1
@alloc148 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc147, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00;\00\00\00\12\00\00\00" }>, align 8
@alloc33 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc34 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc33, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc149 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc150 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc149, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc151 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc152 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc151, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc153 = private unnamed_addr constant <{ [73 x i8] }> <{ [73 x i8] c"assertion failed: 0 < pointee_size && pointee_size <= isize::MAX as usize" }>, align 1
@alloc154 = private unnamed_addr constant <{ [81 x i8] }> <{ [81 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/const_ptr.rs" }>, align 1
@alloc155 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [81 x i8] }>, <{ [81 x i8] }>* @alloc154, i32 0, i32 0, i32 0), [16 x i8] c"Q\00\00\00\00\00\00\00\EC\02\00\00\09\00\00\00" }>, align 8
@alloc156 = private unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/iter/traits/exact_size.rs" }>, align 1
@alloc157 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc156, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00p\00\00\00\09\00\00\00" }>, align 8
@alloc158 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc159 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc158, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc28 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c"dest is out of bounds" }>, align 1
@alloc29 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@alloc162 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/slice/index.rs" }>, align 1
@alloc161 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc162, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00^\02\00\002\00\00\00" }>, align 8
@alloc163 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc162, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00V\02\00\004\00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ({ i64, i64 }**)* @"_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h05490f30a3ef328eE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i64, i64 }**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79dfc4f52a9ef831E" to i8*) }>, align 8
@alloc167 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/vec/mod.rs" }>, align 1
@alloc168 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc167, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00^\07\00\00$\00\00\00" }>, align 8
@alloc173 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc170 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc173, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc172 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc173, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\D2\00\00\00\1B\00\00\00" }>, align 8
@alloc174 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc173, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\DF\00\00\00\1F\00\00\00" }>, align 8
@alloc183 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc176 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc183, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\C9\01\00\00\16\00\00\00" }>, align 8
@alloc178 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc183, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\CB\01\00\00\05\00\00\00" }>, align 8
@alloc180 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc183, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc182 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc183, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\86\01\00\00\1C\00\00\00" }>, align 8
@alloc184 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc183, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\90\01\00\00\13\00\00\00" }>, align 8
@alloc185 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Some" }>, align 1
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h5b56645ad4e0d471E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h155af4ab3d9e2b53E" to i8*) }>, align 8
@alloc189 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"None" }>, align 1
@alloc190 = private unnamed_addr constant <{ [84 x i8] }> <{ [84 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/vec/spec_extend.rs" }>, align 1
@alloc191 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [84 x i8] }>, <{ [84 x i8] }>* @alloc190, i32 0, i32 0, i32 0), [16 x i8] c"T\00\00\00\00\00\00\007\00\00\00\0D\00\00\00" }>, align 8
@alloc208 = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zlsh.rs" }>, align 1
@alloc193 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc208, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00\22\00\00\00\11\00\00\00" }>, align 8
@str.2 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc195 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc208, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00#\00\00\00\18\00\00\00" }>, align 8
@str.3 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc197 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc208, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00%\00\00\00\11\00\00\00" }>, align 8
@alloc199 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc208, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00'\00\00\00\1F\00\00\00" }>, align 8
@alloc201 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc208, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00*\00\00\00\0E\00\00\00" }>, align 8
@alloc203 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc208, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00-\00\00\00\16\00\00\00" }>, align 8
@str.4 = internal constant [36 x i8] c"attempt to shift right with overflow"
@alloc205 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc208, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00.\00\00\00\0D\00\00\00" }>, align 8
@str.5 = internal constant [35 x i8] c"attempt to shift left with overflow"
@alloc207 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc208, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00/\00\00\00\0D\00\00\00" }>, align 8
@alloc209 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc208, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\004\00\00\00\0D\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0ebfb6873de7304dE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = load i64, i64* %1, align 8
  %2 = icmp eq i64 %_2, 0
  br i1 %2, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %3 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %3, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = sub i64 %6, 1
  store i64 %7, i64* %4, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %8 = call { i64, i64 } @"_ZN103_$LT$core..iter..sources..repeat..Repeat$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aef950c7b4330a7E"(i64* align 8 %_3)
  store { i64, i64 } %8, { i64, i64 }* %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !range !1, !noundef !2
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = insertvalue { i64, i64 } undef, i64 %10, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haaa1545bd034460dE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, { i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %upper1 = alloca { i64, i64 }, align 8
  %_6 = alloca { i64, { i64, i64 } }, align 8
  %upper = alloca { i64, i64 }, align 8
  %_3 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
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
  %8 = load i64, i64* %7, align 8, !range !1, !noundef !2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %8, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  br label %bb10

bb2:                                              ; preds = %start
  %_7 = bitcast { i64, i64 }* %self to i64*
  call void @"_ZN103_$LT$core..iter..sources..repeat..Repeat$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb3eb50bee511d127E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_6, i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %13 = bitcast { i64, { i64, i64 } }* %_6 to i64*
  %lower = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_6, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8, !range !1, !noundef !2
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_10 = load i64, i64* %21, align 8
  %lower2 = call i64 @_ZN4core3cmp3min17h2580fc23e7272a6fE(i64 %lower, i64 %_10)
  br label %bb4

bb4:                                              ; preds = %bb3
  %22 = bitcast { i64, i64 }* %upper to i64*
  %_12 = load i64, i64* %22, align 8, !range !1, !noundef !2
  %23 = icmp eq i64 %_12, 1
  br i1 %23, label %bb6, label %bb5

bb6:                                              ; preds = %bb4
  %x = getelementptr inbounds { i64, i64 }, { i64, i64 }* %upper, i32 0, i32 1
  %_16 = load i64, i64* %x, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_17 = load i64, i64* %24, align 8
  %_15 = icmp ult i64 %_16, %_17
  br i1 %_15, label %bb7, label %bb8

bb5:                                              ; preds = %bb8, %bb4
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
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
  %_21.0 = load i64, i64* %31, align 8, !range !1, !noundef !2
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

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbbb189df500a05d4E"(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %self, i32 0, i32 4
  %_4 = load i64*, i64** %3, align 8
  %4 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %self, i32 0, i32 5
  %_5 = load i64*, i64** %4, align 8
  %_2 = icmp eq i64* %_4, %_5
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
  %5 = bitcast { i64, i64 }* %2 to i64*
  store i64 0, i64* %5, align 8
  br label %bb11

bb11:                                             ; preds = %bb10, %bb1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !range !1, !noundef !2
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11

bb3:                                              ; preds = %bb2
  %12 = icmp eq i64 8, 0
  br i1 %12, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
  %13 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %self, i32 0, i32 4
  %_11 = load i64*, i64** %13, align 8
  %_10 = bitcast i64* %_11 to i8*
  %14 = getelementptr i8, i8* %_10, i64 1
  store i8* %14, i8** %1, align 8
  %_9 = load i8*, i8** %1, align 8
  br label %bb5

bb7:                                              ; preds = %bb3
  %15 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %self, i32 0, i32 4
  %old = load i64*, i64** %15, align 8
  %16 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %self, i32 0, i32 4
  %_15 = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds i64, i64* %_15, i64 1
  store i64* %17, i64** %0, align 8
  %18 = load i64*, i64** %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  %19 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %self, i32 0, i32 4
  store i64* %18, i64** %19, align 8
  %_16 = call i64 @_ZN4core3ptr4read17h355a1efdb3d386f7E(i64* %old)
  br label %bb9

bb9:                                              ; preds = %bb8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %_16, i64* %20, align 8
  %21 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %21, align 8
  br label %bb10

bb10:                                             ; preds = %bb6, %bb9
  br label %bb11

bb5:                                              ; preds = %bb4
  %_8 = bitcast i8* %_9 to i64*
  %22 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %self, i32 0, i32 4
  store i64* %_8, i64** %22, align 8
  %_2.i = call i64 @"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6zeroed17h7a62c51541c182a0E"()
  br label %bb6

bb6:                                              ; preds = %bb5
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %_2.i, i64* %23, align 8
  %24 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %24, align 8
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h59193cb2a5f6fc44E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, %"alloc::vec::into_iter::IntoIter<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_11 = alloca { i64, i64 }, align 8
  %exact = alloca i64, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i64 8, 0
  br i1 %1, label %bb2, label %bb6

bb2:                                              ; preds = %bb1
  %2 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %self, i32 0, i32 5
  %_5 = load i64*, i64** %2, align 8
  %_4 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h7f7e8843fa1cf15bE"(i64* %_5)
  br label %bb3

bb6:                                              ; preds = %bb1
  %3 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %self, i32 0, i32 5
  %_8 = load i64*, i64** %3, align 8
  %4 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %self, i32 0, i32 4
  %_9 = load i64*, i64** %4, align 8
  %5 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h347f0078448b69c9E"(i64* %_8, i64* %_9)
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
  %16 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %self, i32 0, i32 4
  %_7 = load i64*, i64** %16, align 8
  %_6 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h7f7e8843fa1cf15bE"(i64* %_7)
  br label %bb4

bb4:                                              ; preds = %bb3
  %17 = sub i64 %_4, %_6
  store i64 %17, i64* %exact, align 8
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb8
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN103_$LT$core..iter..sources..repeat..Repeat$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aef950c7b4330a7E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_2 = call i64 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17h7f164ea357222821E"(i64* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_2, i64* %1, align 8
  %2 = bitcast { i64, i64 }* %0 to i64*
  store i64 1, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !range !1, !noundef !2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define void @"_ZN103_$LT$core..iter..sources..repeat..Repeat$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb3eb50bee511d127E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, i64* align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %_2 to i64*
  store i64 0, i64* %1, align 8
  %2 = bitcast { i64, { i64, i64 } }* %0 to i64*
  store i64 -1, i64* %2, align 8
  %3 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i32 0, i32 1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !range !1, !noundef !2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  ret void
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcb0ae38f736c2c46E"({ i64*, i64* }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = call align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45dccbd08791162fE"({ i64*, i64* }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { i64, i64 } @"_ZN4core6option19Option$LT$$RF$T$GT$6cloned17h0bbfcf1b6fceac98E"(i64* align 8 %_2)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: uwtable
define void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he2cebb9452f3906dE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, { i64*, i64* }* align 8 %self) unnamed_addr #1 {
start:
  call void @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfdade41cf55e6f18E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, { i64*, i64* }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h55c3058f0d609b58E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %vector, { i64, i64 }* align 8 %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_20 = alloca i8, align 1
  %_8 = alloca %"core::fmt::Arguments", align 8
  %_2 = alloca { i64, { i64, i64 } }, align 8
  %iterator = alloca { i64, i64 }*, align 8
  store { i64, i64 }* %0, { i64, i64 }** %iterator, align 8
  store i8 1, i8* %_20, align 1
  invoke void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0fdece510b777f9bE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_2, { i64, i64 }** align 8 %iterator)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %bb7, %cleanup
  %2 = load i8, i8* %_20, align 1, !range !3, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb9, label %bb8

cleanup:                                          ; preds = %bb5, %bb2, %bb3, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb10

bb1:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_2, i32 0, i32 1
  %10 = bitcast { i64, i64 }* %9 to i64*
  %_4 = load i64, i64* %10, align 8, !range !1, !noundef !2
  %11 = icmp eq i64 %_4, 1
  br i1 %11, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %12 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_2, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %upper = load i64, i64* %13, align 8
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17ha127bc49f1678515E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %vector, i64 %upper)
          to label %bb4 unwind label %cleanup

bb2:                                              ; preds = %bb1
  invoke void @_ZN4core3fmt9Arguments6new_v117ha3e5cf96ea88afe5E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_8, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc41 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc43 to [0 x { i8*, i64* }]*), i64 0)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb2
  invoke void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_8, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc148 to %"core::panic::location::Location"*)) #15
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb5
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, i8* %_20, align 1
  %_17 = load { i64, i64 }*, { i64, i64 }** %iterator, align 8, !nonnull !2, !align !4, !noundef !2
  invoke void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h0f5bf3a0ae0f3d9aE"(%"alloc::vec::Vec<u64>"* align 8 %vector, { i64, i64 }* align 8 %_17)
          to label %bb6 unwind label %cleanup1

bb7:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hcc96549207ef2686E"(%"alloc::vec::Vec<u64>"* %vector) #16
          to label %bb10 unwind label %abort

cleanup1:                                         ; preds = %bb4
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb7

bb6:                                              ; preds = %bb4
  ret void

abort:                                            ; preds = %bb7
  %19 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb8:                                              ; preds = %bb9, %bb10
  %20 = bitcast { i8*, i32 }* %1 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25

bb9:                                              ; preds = %bb10
  br label %bb8
}

; Function Attrs: uwtable
define void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6afc0ad2bf5f6bd6E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %vector, { i64*, i64* }* align 8 %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_20 = alloca i8, align 1
  %_8 = alloca %"core::fmt::Arguments", align 8
  %_2 = alloca { i64, { i64, i64 } }, align 8
  %iterator = alloca { i64*, i64* }*, align 8
  store { i64*, i64* }* %0, { i64*, i64* }** %iterator, align 8
  store i8 1, i8* %_20, align 1
  invoke void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha5597139e85dfe14E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_2, { i64*, i64* }** align 8 %iterator)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %bb7, %cleanup
  %2 = load i8, i8* %_20, align 1, !range !3, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb9, label %bb8

cleanup:                                          ; preds = %bb5, %bb2, %bb3, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb10

bb1:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_2, i32 0, i32 1
  %10 = bitcast { i64, i64 }* %9 to i64*
  %_4 = load i64, i64* %10, align 8, !range !1, !noundef !2
  %11 = icmp eq i64 %_4, 1
  br i1 %11, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %12 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_2, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %upper = load i64, i64* %13, align 8
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17ha127bc49f1678515E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %vector, i64 %upper)
          to label %bb4 unwind label %cleanup

bb2:                                              ; preds = %bb1
  invoke void @_ZN4core3fmt9Arguments6new_v117ha3e5cf96ea88afe5E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_8, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc41 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc43 to [0 x { i8*, i64* }]*), i64 0)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb2
  invoke void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_8, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc148 to %"core::panic::location::Location"*)) #15
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb5
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, i8* %_20, align 1
  %_17 = load { i64*, i64* }*, { i64*, i64* }** %iterator, align 8, !nonnull !2, !align !4, !noundef !2
  invoke void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf463eb803cac47a3E"(%"alloc::vec::Vec<u64>"* align 8 %vector, { i64*, i64* }* align 8 %_17)
          to label %bb6 unwind label %cleanup1

bb7:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hcc96549207ef2686E"(%"alloc::vec::Vec<u64>"* %vector) #16
          to label %bb10 unwind label %abort

cleanup1:                                         ; preds = %bb4
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb7

bb6:                                              ; preds = %bb4
  ret void

abort:                                            ; preds = %bb7
  %19 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb8:                                              ; preds = %bb9, %bb10
  %20 = bitcast { i8*, i32 }* %1 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25

bb9:                                              ; preds = %bb10
  br label %bb8
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hd02c5eff9c078171E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hcccc86cdcc8fe55dE"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h14c162554b4585ffE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17ha607e08d74bfed15E"(i64* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %pointer, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hdfeb6485dd485402E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h22e51980fce2d37aE"(i64 %kind.0, i64 %kind.1) unnamed_addr #0 {
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

; Function Attrs: uwtable
define void @"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d03aa3b22f48d33E"(i64** align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = bitcast i64** %self to %"alloc::vec::drain::Drain<u64>"**
  %_29 = load %"alloc::vec::drain::Drain<u64>"*, %"alloc::vec::drain::Drain<u64>"** %2, align 8, !nonnull !2, !align !4, !noundef !2
  %3 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %_29, i32 0, i32 1
  %_3 = load i64, i64* %3, align 8
  %_2 = icmp ugt i64 %_3, 0
  br i1 %_2, label %bb1, label %bb12

bb12:                                             ; preds = %bb11, %start
  ret void

bb1:                                              ; preds = %start
  %4 = bitcast i64** %self to %"alloc::vec::drain::Drain<u64>"**
  %_30 = load %"alloc::vec::drain::Drain<u64>"*, %"alloc::vec::drain::Drain<u64>"** %4, align 8, !nonnull !2, !align !4, !noundef !2
  %_5 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %_30, i32 0, i32 3
  %source_vec = call align 8 %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h94a07f837a5b7ca6E"(i64** align 8 %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %start1 = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h74d6523b246fbc73E"(%"alloc::vec::Vec<u64>"* align 8 %source_vec)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = bitcast i64** %self to %"alloc::vec::drain::Drain<u64>"**
  %_31 = load %"alloc::vec::drain::Drain<u64>"*, %"alloc::vec::drain::Drain<u64>"** %5, align 8, !nonnull !2, !align !4, !noundef !2
  %6 = bitcast %"alloc::vec::drain::Drain<u64>"* %_31 to i64*
  %tail = load i64, i64* %6, align 8
  %_9 = icmp ne i64 %tail, %start1
  br i1 %_9, label %bb4, label %bb10

bb10:                                             ; preds = %bb9, %bb3
  %7 = bitcast i64** %self to %"alloc::vec::drain::Drain<u64>"**
  %_33 = load %"alloc::vec::drain::Drain<u64>"*, %"alloc::vec::drain::Drain<u64>"** %7, align 8, !nonnull !2, !align !4, !noundef !2
  %8 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %_33, i32 0, i32 1
  %_28 = load i64, i64* %8, align 8
  %_26 = add i64 %start1, %_28
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h8a1c9676e8e6bb59E"(%"alloc::vec::Vec<u64>"* align 8 %source_vec, i64 %_26)
  br label %bb11

bb4:                                              ; preds = %bb3
  %_13 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h2b6ba0d2e8922c4cE"(%"alloc::vec::Vec<u64>"* align 8 %source_vec)
  br label %bb5

bb5:                                              ; preds = %bb4
  %9 = getelementptr inbounds i64, i64* %_13, i64 %tail
  store i64* %9, i64** %0, align 8
  %10 = load i64*, i64** %0, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  %_17 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %source_vec)
  br label %bb7

bb7:                                              ; preds = %bb6
  %11 = getelementptr inbounds i64, i64* %_17, i64 %start1
  store i64* %11, i64** %1, align 8
  %_3.i = load i64*, i64** %1, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  %12 = bitcast i64** %self to %"alloc::vec::drain::Drain<u64>"**
  %_32 = load %"alloc::vec::drain::Drain<u64>"*, %"alloc::vec::drain::Drain<u64>"** %12, align 8, !nonnull !2, !align !4, !noundef !2
  %13 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %_32, i32 0, i32 1
  %_23 = load i64, i64* %13, align 8
  call void @_ZN4core10intrinsics4copy17he9a56c2125e60031E(i64* %10, i64* %_3.i, i64 %_23)
  br label %bb9

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  br label %bb12
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h38ca7156e695bdecE"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
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
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h347fe0459a7b7c9eE"(i64 %e.0, i64 %e.1)
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
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h485328733def4862E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf1d8af553a1db5a7E"()
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
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h814b9c6cd8ef5a22E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17he2922890a4506acdE"()
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
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h882bca9521e1618dE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
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
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h22e51980fce2d37aE"(i64 %e.0, i64 %e.1)
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
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9eff75c1714e6ae9E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
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
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h22e51980fce2d37aE"(i64 %e.0, i64 %e.1)
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
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hb6bae26eda8e93eeE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
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
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h347fe0459a7b7c9eE"(i64 %e.0, i64 %e.1)
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
define void @"_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9fc4f76a02dd4e61E"(i64** align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_5 = alloca { i64*, i64 }, align 8
  %1 = bitcast i64** %self to %"alloc::vec::into_iter::IntoIter<u64>"**
  %_10 = load %"alloc::vec::into_iter::IntoIter<u64>"*, %"alloc::vec::into_iter::IntoIter<u64>"** %1, align 8, !nonnull !2, !align !4, !noundef !2
  %_4 = bitcast %"alloc::vec::into_iter::IntoIter<u64>"* %_10 to %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"*
  store i8 1, i8* %_13, align 1
  call void @"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17h1a90d641e72e6449E"(%"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"* align 1 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast i64** %self to %"alloc::vec::into_iter::IntoIter<u64>"**
  %_11 = load %"alloc::vec::into_iter::IntoIter<u64>"*, %"alloc::vec::into_iter::IntoIter<u64>"** %2, align 8, !nonnull !2, !align !4, !noundef !2
  %3 = bitcast %"alloc::vec::into_iter::IntoIter<u64>"* %_11 to i64**
  %_7 = load i64*, i64** %3, align 8, !nonnull !2, !noundef !2
  %_6 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_7)
          to label %bb2 unwind label %cleanup

bb7:                                              ; preds = %cleanup
  %4 = load i8, i8* %_13, align 1, !range !3, !noundef !2
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
  %11 = bitcast i64** %self to %"alloc::vec::into_iter::IntoIter<u64>"**
  %_12 = load %"alloc::vec::into_iter::IntoIter<u64>"*, %"alloc::vec::into_iter::IntoIter<u64>"** %11, align 8, !nonnull !2, !align !4, !noundef !2
  %12 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %_12, i32 0, i32 3
  %_8 = load i64, i64* %12, align 8
  store i8 0, i8* %_13, align 1
  %13 = invoke { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17h0b23c66b0538d14fE"(i64* %_6, i64 %_8)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store { i64*, i64 } %13, { i64*, i64 }* %_5, align 8
  invoke void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h6433f96bc4f219d6E"({ i64*, i64 }* %_5)
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
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h155af4ab3d9e2b53E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %0 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h599c2612415919aaE"(i64* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79dfc4f52a9ef831E"({ i64, i64 }** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %0 = call zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha6f44b17f44c3cbcE"({ i64, i64 }* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h8d2ba1f6c4334240E"(i64 %start1, i64 %n) unnamed_addr #0 {
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
define void @_ZN4core10intrinsics11write_bytes17h1ed791f56c447e39E(i8* %dst, i8 %val, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 1, %count
  call void @llvm.memset.p0i8.i64(i8* align 1 %dst, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics11write_bytes17hb619019bf20dea26E(i64* %dst, i8 %val, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 8, %count
  %1 = bitcast i64* %dst to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17hc0a2c61b7d6615a3E(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics4copy17he9a56c2125e60031E(i64* %src, i64* %dst, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 8, %count
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3Ord3max17haf4aa5821043b74bE(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h9ca20890d3838bdfE"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !7

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
  %_7 = load i8, i8* %_3, align 1, !range !7, !noundef !2
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !3, !noundef !2
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
  %14 = load i8, i8* %_8, align 1, !range !3, !noundef !2
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !3, !noundef !2
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
define i64 @_ZN4core3cmp3Ord3min17h596bc0b8740aabd7E(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h9ca20890d3838bdfE"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !7

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
  %_7 = load i8, i8* %_3, align 1, !range !7, !noundef !2
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !3, !noundef !2
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
  %14 = load i8, i8* %_8, align 1, !range !3, !noundef !2
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !3, !noundef !2
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
define i64 @_ZN4core3cmp3max17hba5c91fa02894991E(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3cmp3Ord3max17haf4aa5821043b74bE(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3min17h2580fc23e7272a6fE(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3cmp3Ord3min17h596bc0b8740aabd7E(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h9ca20890d3838bdfE"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
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
  %1 = load i8, i8* %0, align 1, !range !7, !noundef !2
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
define internal zeroext i1 @"_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17hbc1f45ff66abbee6E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp eq i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h007c06ed80be614aE"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h599c2612415919aaE"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !2
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
define internal void @_ZN4core3fmt9Arguments6new_v117ha3e5cf96ea88afe5E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !3, !noundef !2
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
  call void @_ZN4core3fmt9Arguments6new_v117ha3e5cf96ea88afe5E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc34 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc43 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc150 to %"core::panic::location::Location"*)) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17had3781665bf2abd9E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !8, !noundef !2
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hb4ac2e3ca966372bE(i64 %_3), !range !9
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h6b0285f81f763503E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !8, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6zeroed17h7a62c51541c182a0E"() unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %u = alloca i64, align 8
  %1 = bitcast i64* %0 to {}*
  %2 = load i64, i64* %0, align 8
  store i64 %2, i64* %u, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN4core10intrinsics11write_bytes17hb619019bf20dea26E(i64* %u, i8 0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = load i64, i64* %u, align 8
  ret i64 %3
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17h1a90d641e72e6449E"(%"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"* align 1 %slot) unnamed_addr #0 {
start:
  %_3 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"* %slot to %"alloc::alloc::Global"*
  call void @_ZN4core3ptr4read17hf24200b430c4d96bE(%"alloc::alloc::Global"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3mem4drop17hdf796f89cc5237dbE(i64 %_x) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h74e092b125f5f507E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h37bae00cb83fddf5E(i64* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !3, !noundef !2
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
  invoke void @_ZN4core3ptr5write17h9a1bb2229837665eE(i64* %dest, i64 %src)
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
define { i64*, i64* } @_ZN4core3mem7replace17hbb420bee04c12a96E({ i64*, i64* }* align 8 %dest, i64* %src.0, i64* %src.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %1 = invoke { i64*, i64* } @_ZN4core3ptr4read17h717dceec1f6dd7a6E({ i64*, i64* }* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %2 = load i8, i8* %_7, align 1, !range !3, !noundef !2
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
  %result.0 = extractvalue { i64*, i64* } %1, 0
  %result.1 = extractvalue { i64*, i64* } %1, 1
  store i8 0, i8* %_7, align 1
  invoke void @_ZN4core3ptr5write17hf88b093efb1b26bcE({ i64*, i64* }* %dest, i64* %src.0, i64* %src.1)
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
  %14 = insertvalue { i64*, i64* } undef, i64* %result.0, 0
  %15 = insertvalue { i64*, i64* } %14, i64* %result.1, 1
  ret { i64*, i64* } %15

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
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h073f9849c143df64E"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %12 = load i8, i8* %11, align 8, !range !3, !noundef !2
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !3, !noundef !2
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
  %27 = load i8, i8* %2, align 1, !range !3, !noundef !2
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
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h33d95dceeef77553E"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %12 = load i8, i8* %11, align 8, !range !3, !noundef !2
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !3, !noundef !2
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
  %27 = load i8, i8* %2, align 1, !range !3, !noundef !2
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
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hb4ac2e3ca966372bE(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !9, !noundef !2
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h7e37a4e4651f44daE(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ops8function5FnMut8call_mut17h565b47b213da413dE({}* align 1 %_1, i64 %0) unnamed_addr #0 {
start:
  %_2 = alloca i64, align 8
  store i64 %0, i64* %_2, align 8
  %1 = load i64, i64* %_2, align 8
  call void @_ZN4core3mem4drop17hdf796f89cc5237dbE(i64 %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr133drop_in_place$LT$alloc..vec..splice..Splice$LT$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$17h4ba1df2db6e5ffe1E"(%"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN81_$LT$alloc..vec..splice..Splice$LT$I$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h634f24b90f3cf657E"(%"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %_1 to %"alloc::vec::drain::Drain<u64>"*
  invoke void @"_ZN4core3ptr56drop_in_place$LT$alloc..vec..drain..Drain$LT$u64$GT$$GT$17h4e08a37df18486fdE"(%"alloc::vec::drain::Drain<u64>"* %1) #16
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
  %7 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %_1 to %"alloc::vec::drain::Drain<u64>"*
  call void @"_ZN4core3ptr56drop_in_place$LT$alloc..vec..drain..Drain$LT$u64$GT$$GT$17h4e08a37df18486fdE"(%"alloc::vec::drain::Drain<u64>"* %7)
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

; Function Attrs: uwtable
define void @"_ZN4core3ptr141drop_in_place$LT$alloc..vec..splice..Splice$LT$core..iter..adapters..take..Take$LT$core..iter..sources..repeat..Repeat$LT$u64$GT$$GT$$GT$$GT$17h68c9650c81b102ebE"(%"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN81_$LT$alloc..vec..splice..Splice$LT$I$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77db0f3ffd1bcad6E"(%"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %_1 to %"alloc::vec::drain::Drain<u64>"*
  invoke void @"_ZN4core3ptr56drop_in_place$LT$alloc..vec..drain..Drain$LT$u64$GT$$GT$17h4e08a37df18486fdE"(%"alloc::vec::drain::Drain<u64>"* %1) #16
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
  %7 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %_1 to %"alloc::vec::drain::Drain<u64>"*
  call void @"_ZN4core3ptr56drop_in_place$LT$alloc..vec..drain..Drain$LT$u64$GT$$GT$17h4e08a37df18486fdE"(%"alloc::vec::drain::Drain<u64>"* %7)
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

; Function Attrs: uwtable
define void @"_ZN4core3ptr150drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u64$C$alloc..alloc..Global$GT$$GT$17hd0b5db3f8d10d5b8E"(i64** %_1) unnamed_addr #1 {
start:
  call void @"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d03aa3b22f48d33E"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr157drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u64$C$alloc..alloc..Global$GT$$GT$17h3ee068f77c56d1ecE"(i64** %_1) unnamed_addr #1 {
start:
  call void @"_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9fc4f76a02dd4e61E"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hea2d5f800a2a97b2E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h7a88f918b0e1ca96E"(i64* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h6626084540b0679dE({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i64]*, i64 } %0, 0
  %2 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %1, 0
  %4 = insertvalue { [0 x i64]*, i64 } %3, i64 %2, 1
  ret { [0 x i64]*, i64 } %4
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr248drop_in_place$LT$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1f9b6d2a991eaa41E"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %_1) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]", %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hcf687a028ba03102E"({ i64*, i64 }* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h05618a034e263affE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17heef4d8b69c845379E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h392b4b1d8367a6b9E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i64* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17ha53cd90235d29ee9E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr256drop_in_place$LT$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..take..Take$LT$core..iter..sources..repeat..Repeat$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$17h49cc0b291bf3681dE"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %_1) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]", %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hcf687a028ba03102E"({ i64*, i64 }* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h5b56645ad4e0d471E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr345drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h46a267e93d30fb57E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_1 to %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"*
  call void @"_ZN4core3ptr248drop_in_place$LT$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1f9b6d2a991eaa41E"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr353drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..take..Take$LT$core..iter..sources..repeat..Repeat$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf28108b88d5e9a3aE"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_1 to %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"*
  call void @"_ZN4core3ptr256drop_in_place$LT$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..take..Take$LT$core..iter..sources..repeat..Repeat$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$17h49cc0b291bf3681dE"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hcc96549207ef2686E"(%"alloc::vec::Vec<u64>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdbc9ce3bd9624f09E"(%"alloc::vec::Vec<u64>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u64>"* %_1 to { i64*, i64 }*
  invoke void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h6433f96bc4f219d6E"({ i64*, i64 }* %1) #16
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
  call void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h6433f96bc4f219d6E"({ i64*, i64 }* %7)
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
define i64 @_ZN4core3ptr4read17h355a1efdb3d386f7E(i64* %src) unnamed_addr #0 {
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
define i64 @_ZN4core3ptr4read17h37bae00cb83fddf5E(i64* %src) unnamed_addr #0 {
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
define { i64*, i64* } @_ZN4core3ptr4read17h717dceec1f6dd7a6E({ i64*, i64* }* %src) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i8* }, align 8
  %tmp = alloca { i8*, i8* }, align 8
  %1 = bitcast { i8*, i8* }* %0 to {}*
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %0, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %0, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = insertvalue { i8*, i8* } undef, i8* %3, 0
  %7 = insertvalue { i8*, i8* } %6, i8* %5, 1
  store { i8*, i8* } %7, { i8*, i8* }* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %8 = bitcast { i8*, i8* }* %tmp to { i64*, i64* }*
  br label %bb2

bb2:                                              ; preds = %bb1
  %9 = bitcast { i64*, i64* }* %8 to i8*
  %10 = bitcast { i64*, i64* }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %tmp, i32 0, i32 0
  %_6.0 = load i8*, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %tmp, i32 0, i32 1
  %_6.1 = load i8*, i8** %12, align 8
  %_3.0.i = bitcast i8* %_6.0 to i64*
  %_3.1.i = bitcast i8* %_6.1 to i64*
  %13 = insertvalue { i64*, i64* } undef, i64* %_3.0.i, 0
  %14 = insertvalue { i64*, i64* } %13, i64* %_3.1.i, 1
  %15 = extractvalue { i64*, i64* } %14, 0
  %16 = extractvalue { i64*, i64* } %14, 1
  %17 = extractvalue { i64*, i64* } %14, 0
  %18 = extractvalue { i64*, i64* } %14, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %19 = insertvalue { i64*, i64* } undef, i64* %17, 0
  %20 = insertvalue { i64*, i64* } %19, i64* %18, 1
  ret { i64*, i64* } %20
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr4read17hf24200b430c4d96bE(%"alloc::alloc::Global"* %src) unnamed_addr #0 {
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

; Function Attrs: uwtable
define void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h6433f96bc4f219d6E"({ i64*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf27165bc7988b8faE"({ i64*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr56drop_in_place$LT$alloc..vec..drain..Drain$LT$u64$GT$$GT$17h4e08a37df18486fdE"(%"alloc::vec::drain::Drain<u64>"* %_1) unnamed_addr #1 {
start:
  call void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1221557c8a95d414E"(%"alloc::vec::drain::Drain<u64>"* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h05490f30a3ef328eE"({ i64, i64 }** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h15b36b7e91bf40fcE(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h9a1bb2229837665eE(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hf88b093efb1b26bcE({ i64*, i64* }* %dst, i64* %0, i64* %1) unnamed_addr #0 {
start:
  %src = alloca { i64*, i64* }, align 8
  %2 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %src, i32 0, i32 0
  store i64* %0, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %src, i32 0, i32 1
  store i64* %1, i64** %3, align 8
  %4 = bitcast { i64*, i64* }* %dst to i8*
  %5 = bitcast { i64*, i64* }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hcf687a028ba03102E"({ i64*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09344b461ea63133E"({ i64*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr63drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u64$GT$$GT$17h241259f6d8b02b9fE"(%"alloc::vec::into_iter::IntoIter<u64>"* %_1) unnamed_addr #1 {
start:
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9805297b2723d811E"(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h0f7baa0ba19a9e48E"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %_2 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h47e1858e3578403aE"(i64* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i64* %_2, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h42cc3a76d6969522E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hf1eb6dc024fd7d85E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hdfeb6485dd485402E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h91563643ef6ec401E"(i64* %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hcccc86cdcc8fe55dE"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf19f074fc33154a0E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h0604376a9acb9b97E"() unnamed_addr #0 {
start:
  %_1 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h36f140a2e92eaf7cE"()
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i64* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17ha607e08d74bfed15E"(i64* %_1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hdf7f878a2664572eE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hb298fa398a8db322E"(i64* %self) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbca20b5ea01f3198E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hef7c1f3e2d97b812E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hdf7f878a2664572eE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he75c52e1726a6f8aE"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hef7c1f3e2d97b812E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hdf7f878a2664572eE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17h0a745b9bc1c634d6E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h6626084540b0679dE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17ha53cd90235d29ee9E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17heef4d8b69c845379E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hef7c1f3e2d97b812E({}* %data_address) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h14c162554b4585ffE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h47e1858e3578403aE"(i64* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  store i64* %ptr, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hac8610c1422ded95E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hf368f096c2fa2626E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbca20b5ea01f3198E"(i8* %ptr)
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
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h14c162554b4585ffE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hf1eb6dc024fd7d85E"(i64* %self) unnamed_addr #0 {
start:
  %_3 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast i64* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h14c162554b4585ffE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hf4487885f60c386dE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3b58e9b0c6f24721E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i64*
  %1 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h47e1858e3578403aE"(i64* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define align 8 %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h94a07f837a5b7ca6E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_6 = load i64*, i64** %self, align 8, !nonnull !2, !noundef !2
  %_5 = call %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3ed0d883726319cbE"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::vec::Vec<u64>"* %_5
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3b58e9b0c6f24721E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3ed0d883726319cbE"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"alloc::vec::Vec<u64>"*
  ret %"alloc::vec::Vec<u64>"* %_2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %self) unnamed_addr #0 {
start:
  ret i64* %self
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf19f074fc33154a0E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h36f140a2e92eaf7cE"() unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i64** %0 to i64*
  store i64 8, i64* %1, align 8
  %2 = load i64*, i64** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h47e1858e3578403aE"(i64* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hb55d07d8a25c2dc5E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hb4268720f0aed392E"(i8* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf19f074fc33154a0E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hb4268720f0aed392E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3b58e9b0c6f24721E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h14c162554b4585ffE"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hf6536e1de9644067E"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf19f074fc33154a0E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h05618a034e263affE(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hac8610c1422ded95E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h6da986bf6b225047E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h7f7e8843fa1cf15bE"(i64* %self) unnamed_addr #0 {
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
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h7a88f918b0e1ca96E"(i64* %self) unnamed_addr #0 {
start:
  %0 = bitcast i64* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h6ea6c74964f87fedE"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h0a745b9bc1c634d6E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h6da986bf6b225047E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h347f0078448b69c9E"(i64* %self, i64* %origin) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %_6 = alloca i8, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp ult i64 0, 8
  br i1 %_7, label %bb3, label %bb2

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_6, align 1
  br label %bb4

bb3:                                              ; preds = %bb1
  %_9 = icmp ule i64 8, 9223372036854775807
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_6, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %2 = load i8, i8* %_6, align 1, !range !3, !noundef !2
  %3 = trunc i8 %2 to i1
  %_5 = xor i1 %3, true
  br i1 %_5, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  %4 = ptrtoint i64* %self to i64
  %5 = ptrtoint i64* %origin to i64
  %6 = sub nuw i64 %4, %5
  %7 = udiv exact i64 %6, 8
  store i64 %7, i64* %0, align 8
  %8 = load i64, i64* %0, align 8
  br label %bb7

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [73 x i8] }>* @alloc153 to [0 x i8]*), i64 73, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc155 to %"core::panic::location::Location"*)) #15
  unreachable

bb7:                                              ; preds = %bb6
  ret i64 %8
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17h7e56f9ef08367da7E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb7e4fb03610a387aE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h214ce92f03489d29E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h0f85c756f85fc86fE(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_23 = alloca %"core::option::Option<core::fmt::Arguments>", align 8
  %_8 = alloca { i64, i64 }, align 8
  %_5 = alloca { i64*, i64* }, align 8
  %_3 = alloca { i64, { i64, i64 } }, align 8
  %upper = alloca { i64, i64 }, align 8
  call void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h59193cb2a5f6fc44E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_3, %"alloc::vec::into_iter::IntoIter<u64>"* align 8 %self)
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
  %left_val = load { i64, i64 }*, { i64, i64 }** %13, align 8, !nonnull !2, !align !4, !noundef !2
  %14 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_5, i32 0, i32 1
  %15 = bitcast i64** %14 to { i64, i64 }**
  %right_val = load { i64, i64 }*, { i64, i64 }** %15, align 8, !nonnull !2, !align !4, !noundef !2
  %_13 = call zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hfd1c2585084e97f7E"({ i64, i64 }* align 8 %left_val, { i64, i64 }* align 8 %right_val)
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
  call void @_ZN4core9panicking13assert_failed17h76e8f3e0b0cd7e40E(i8 0, { i64, i64 }* align 8 %left_val, { i64, i64 }* align 8 %right_val, %"core::option::Option<core::fmt::Arguments>"* %_23, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc157 to %"core::panic::location::Location"*)) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator4fold17h8c17173c11899dbcE({ i64, i64 }* align 8 %0, %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_10 = alloca i64, align 8
  %_4 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }*, align 8
  store { i64, i64 }* %0, { i64, i64 }** %self, align 8
  store i8 1, i8* %_13, align 1
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %2 = invoke { i64, i64 } @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcf0b3c295bf1063E"({ i64, i64 }** align 8 %self)
          to label %bb2 unwind label %cleanup

bb13:                                             ; preds = %cleanup
  %3 = load i8, i8* %_13, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb12, label %bb9

cleanup:                                          ; preds = %bb3, %bb1
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb13

bb2:                                              ; preds = %bb1
  store { i64, i64 } %2, { i64, i64 }* %_4, align 8
  %10 = bitcast { i64, i64 }* %_4 to i64*
  %_6 = load i64, i64* %10, align 8, !range !1, !noundef !2
  %11 = icmp eq i64 %_6, 1
  br i1 %11, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %x = load i64, i64* %12, align 8
  store i8 0, i8* %_13, align 1
  %13 = bitcast i64* %_10 to {}*
  store i64 %x, i64* %_10, align 8
  %14 = load i64, i64* %_10, align 8
  invoke void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h72d61b0cc8fe5484E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* align 8 %f, i64 %14)
          to label %bb4 unwind label %cleanup

bb5:                                              ; preds = %bb2
  br label %bb6

bb6:                                              ; preds = %bb5
  invoke void @"_ZN4core3ptr353drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..take..Take$LT$core..iter..sources..repeat..Repeat$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf28108b88d5e9a3aE"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %f)
          to label %bb7 unwind label %cleanup1

bb10:                                             ; preds = %bb9, %cleanup1
  br label %bb11

cleanup1:                                         ; preds = %bb6
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb10

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb7
  ret void

bb4:                                              ; preds = %bb3
  store i8 1, i8* %_13, align 1
  br label %bb1

bb9:                                              ; preds = %bb12, %bb13
  invoke void @"_ZN4core3ptr353drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..take..Take$LT$core..iter..sources..repeat..Repeat$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf28108b88d5e9a3aE"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %f) #16
          to label %bb10 unwind label %abort

bb12:                                             ; preds = %bb13
  br label %bb9

abort:                                            ; preds = %bb9
  %20 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb11:                                             ; preds = %bb10
  %21 = bitcast { i8*, i32 }* %1 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator4fold17h907a2d54d003cc94E({ i64*, i64* }* align 8 %0, %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_10 = alloca i64, align 8
  %_4 = alloca { i64, i64 }, align 8
  %self = alloca { i64*, i64* }*, align 8
  store { i64*, i64* }* %0, { i64*, i64* }** %self, align 8
  store i8 1, i8* %_13, align 1
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %2 = invoke { i64, i64 } @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda01c1178cf63315E"({ i64*, i64* }** align 8 %self)
          to label %bb2 unwind label %cleanup

bb13:                                             ; preds = %cleanup
  %3 = load i8, i8* %_13, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb12, label %bb9

cleanup:                                          ; preds = %bb3, %bb1
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb13

bb2:                                              ; preds = %bb1
  store { i64, i64 } %2, { i64, i64 }* %_4, align 8
  %10 = bitcast { i64, i64 }* %_4 to i64*
  %_6 = load i64, i64* %10, align 8, !range !1, !noundef !2
  %11 = icmp eq i64 %_6, 1
  br i1 %11, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %x = load i64, i64* %12, align 8
  store i8 0, i8* %_13, align 1
  %13 = bitcast i64* %_10 to {}*
  store i64 %x, i64* %_10, align 8
  %14 = load i64, i64* %_10, align 8
  invoke void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h4f0cf08a252bbe29E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* align 8 %f, i64 %14)
          to label %bb4 unwind label %cleanup

bb5:                                              ; preds = %bb2
  br label %bb6

bb6:                                              ; preds = %bb5
  invoke void @"_ZN4core3ptr345drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h46a267e93d30fb57E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %f)
          to label %bb7 unwind label %cleanup1

bb10:                                             ; preds = %bb9, %cleanup1
  br label %bb11

cleanup1:                                         ; preds = %bb6
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb10

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb7
  ret void

bb4:                                              ; preds = %bb3
  store i8 1, i8* %_13, align 1
  br label %bb1

bb9:                                              ; preds = %bb12, %bb13
  invoke void @"_ZN4core3ptr345drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h46a267e93d30fb57E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %f) #16
          to label %bb10 unwind label %abort

bb12:                                             ; preds = %bb13
  br label %bb9

abort:                                            ; preds = %bb9
  %20 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb11:                                             ; preds = %bb10
  %21 = bitcast { i8*, i32 }* %1 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator4fold17hef711757b3f3b51eE(%"alloc::vec::drain::Drain<u64>"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_10 = alloca i64, align 8
  %_4 = alloca { i64, i64 }, align 8
  %f = alloca %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, fn(u64) {core::mem::drop::<u64>}>::{closure#0}]", align 1
  %self = alloca %"alloc::vec::drain::Drain<u64>"*, align 8
  store %"alloc::vec::drain::Drain<u64>"* %0, %"alloc::vec::drain::Drain<u64>"** %self, align 8
  store i8 1, i8* %_13, align 1
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %2 = invoke { i64, i64 } @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7d02c0796d6d95E"(%"alloc::vec::drain::Drain<u64>"** align 8 %self)
          to label %bb2 unwind label %cleanup

bb13:                                             ; preds = %cleanup
  %3 = load i8, i8* %_13, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb12, label %bb9

cleanup:                                          ; preds = %bb3, %bb1
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb13

bb2:                                              ; preds = %bb1
  store { i64, i64 } %2, { i64, i64 }* %_4, align 8
  %10 = bitcast { i64, i64 }* %_4 to i64*
  %_6 = load i64, i64* %10, align 8, !range !1, !noundef !2
  %11 = icmp eq i64 %_6, 1
  br i1 %11, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %x = load i64, i64* %12, align 8
  store i8 0, i8* %_13, align 1
  %13 = bitcast i64* %_10 to {}*
  store i64 %x, i64* %_10, align 8
  %14 = load i64, i64* %_10, align 8
  invoke void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20723e21836942d7E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, fn(u64) {core::mem::drop::<u64>}>::{closure#0}]"* align 1 %f, i64 %14)
          to label %bb4 unwind label %cleanup

bb5:                                              ; preds = %bb2
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb7
  ret void

bb4:                                              ; preds = %bb3
  store i8 1, i8* %_13, align 1
  br label %bb1

bb9:                                              ; preds = %bb12, %bb13
  br label %bb10

bb12:                                             ; preds = %bb13
  br label %bb9

bb10:                                             ; preds = %bb9
  br label %bb11

bb11:                                             ; preds = %bb10
  %15 = bitcast { i8*, i32 }* %1 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator4take17he3c65c0263a49a3bE(i64 %self, i64 %n) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN4core4iter8adapters4take13Take$LT$I$GT$3new17hdae59aad045beea2E"(i64 %self, i64 %n)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: uwtable
define align 8 { i64*, i64* }* @_ZN4core4iter6traits8iterator8Iterator6by_ref17h42f1382844f2dc70E({ i64*, i64* }* align 8 %self) unnamed_addr #1 {
start:
  ret { i64*, i64* }* %self
}

; Function Attrs: uwtable
define align 8 %"alloc::vec::drain::Drain<u64>"* @_ZN4core4iter6traits8iterator8Iterator6by_ref17h86ac8f9e082ce814E(%"alloc::vec::drain::Drain<u64>"* align 8 %self) unnamed_addr #1 {
start:
  ret %"alloc::vec::drain::Drain<u64>"* %self
}

; Function Attrs: uwtable
define align 8 { i64, i64 }* @_ZN4core4iter6traits8iterator8Iterator6by_ref17hba63dafe221223aeE({ i64, i64 }* align 8 %self) unnamed_addr #1 {
start:
  ret { i64, i64 }* %self
}

; Function Attrs: uwtable
define { i64*, i64* } @_ZN4core4iter6traits8iterator8Iterator6cloned17h2a823b4660008c44E(i64* %self.0, i64* %self.1) unnamed_addr #1 {
start:
  %0 = call { i64*, i64* } @"_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17hc0f7073862311c63E"(i64* %self.0, i64* %self.1)
  %1 = extractvalue { i64*, i64* } %0, 0
  %2 = extractvalue { i64*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64*, i64* } undef, i64* %1, 0
  %4 = insertvalue { i64*, i64* } %3, i64* %2, 1
  ret { i64*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7collect17h0f10ad3435f5859fE(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  call void @"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h72697105d5fd5220E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7collect17h93231e8b1d0e395eE(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  call void @"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hb1521135d7152037E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64*, i64* }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator8for_each17h2f7ec01230e30098E({ i64, i64 }* align 8 %self, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  %_7 = alloca %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]", align 8
  %_6 = alloca %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]", align 8
  store i8 1, i8* %_8, align 1
  %1 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %_7 to i8*
  %2 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  invoke void @_ZN4core4iter6traits8iterator8Iterator8for_each4call17h99766c0f8e416c9dE(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* sret(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]") %_6, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %_7)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_8, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  invoke void @_ZN4core4iter6traits8iterator8Iterator4fold17h8c17173c11899dbcE({ i64, i64 }* align 8 %self, %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_6)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb4, %bb5
  %10 = bitcast { i8*, i32 }* %0 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator8for_each17h506233f2145f1973E(%"alloc::vec::drain::Drain<u64>"* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  store i8 1, i8* %_8, align 1
  invoke void @_ZN4core4iter6traits8iterator8Iterator8for_each4call17h699cf68bf93ab492E()
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %1 = load i8, i8* %_8, align 1, !range !3, !noundef !2
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
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
  store i8 0, i8* %_8, align 1
  invoke void @_ZN4core4iter6traits8iterator8Iterator4fold17hef711757b3f3b51eE(%"alloc::vec::drain::Drain<u64>"* align 8 %self)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb4, %bb5
  %8 = bitcast { i8*, i32 }* %0 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator8for_each17h56a7d803fcd4c3a0E({ i64*, i64* }* align 8 %self, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  %_7 = alloca %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]", align 8
  %_6 = alloca %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]", align 8
  store i8 1, i8* %_8, align 1
  %1 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %_7 to i8*
  %2 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  invoke void @_ZN4core4iter6traits8iterator8Iterator8for_each4call17h2cd46b7f559946ffE(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* sret(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]") %_6, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %_7)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_8, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  invoke void @_ZN4core4iter6traits8iterator8Iterator4fold17h907a2d54d003cc94E({ i64*, i64* }* align 8 %self, %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_6)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb4, %bb5
  %10 = bitcast { i8*, i32 }* %0 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator8for_each4call17h2cd46b7f559946ffE(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* sret(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]") %0, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %f) unnamed_addr #0 {
start:
  %1 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %0 to %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"*
  %2 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %1 to i8*
  %3 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator8for_each4call17h699cf68bf93ab492E() unnamed_addr #0 {
start:
  %0 = alloca %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, fn(u64) {core::mem::drop::<u64>}>::{closure#0}]", align 1
  %1 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, fn(u64) {core::mem::drop::<u64>}>::{closure#0}]"* %0 to {}*
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator8for_each4call17h99766c0f8e416c9dE(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* sret(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]") %0, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %f) unnamed_addr #0 {
start:
  %1 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %0 to %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"*
  %2 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %1 to i8*
  %3 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20723e21836942d7E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, fn(u64) {core::mem::drop::<u64>}>::{closure#0}]"* align 1 %_1, i64 %item) unnamed_addr #0 {
start:
  %_5 = alloca i64, align 8
  %_4 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, fn(u64) {core::mem::drop::<u64>}>::{closure#0}]"* %_1 to {}*
  store i64 %item, i64* %_5, align 8
  %0 = load i64, i64* %_5, align 8
  call void @_ZN4core3ops8function5FnMut8call_mut17h565b47b213da413dE({}* align 1 %_4, i64 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h4f0cf08a252bbe29E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* align 8 %_1, i64 %item) unnamed_addr #0 {
start:
  %_5 = alloca i64, align 8
  %_4 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_1 to %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"*
  store i64 %item, i64* %_5, align 8
  %0 = load i64, i64* %_5, align 8
  call void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend28_$u7b$$u7b$closure$u7d$$u7d$17h874a05c60fe722efE"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* align 8 %_4, i64 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h72d61b0cc8fe5484E"(%"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* align 8 %_1, i64 %item) unnamed_addr #0 {
start:
  %_5 = alloca i64, align 8
  %_4 = bitcast %"[closure@core::iter::traits::iterator::Iterator::for_each::call<u64, [closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]>::{closure#0}]"* %_1 to %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"*
  store i64 %item, i64* %_5, align 8
  %0 = load i64, i64* %_5, align 8
  call void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend28_$u7b$$u7b$closure$u7d$$u7d$17h896e8553fd93c82eE"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* align 8 %_4, i64 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core4iter7sources6repeat6repeat17hdbf5b88a8b500eb2E(i64 %elt) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %elt, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN4core4iter8adapters4take13Take$LT$I$GT$3new17hdae59aad045beea2E"(i64 %iter, i64 %n) unnamed_addr #1 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %iter, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %n, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: uwtable
define { i64*, i64* } @"_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17hc0f7073862311c63E"(i64* %it.0, i64* %it.1) unnamed_addr #1 {
start:
  %0 = alloca { i64*, i64* }, align 8
  %1 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %0, i32 0, i32 0
  store i64* %it.0, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %0, i32 0, i32 1
  store i64* %it.1, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %0, i32 0, i32 0
  %4 = load i64*, i64** %3, align 8, !nonnull !2, !noundef !2
  %5 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %0, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8
  %7 = insertvalue { i64*, i64* } undef, i64* %4, 0
  %8 = insertvalue { i64*, i64* } %7, i64* %6, 1
  ret { i64*, i64* } %8
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb6df292ad97f565cE(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h6b0285f81f763503E(i64 %align), !range !8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !8, !noundef !2
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h2838213951b77698E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !8, !noundef !2
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17had3781665bf2abd9E(i64 %_3), !range !9
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h7e37a4e4651f44daE(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h50040ca9c2c02076E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h33d95dceeef77553E"(i64 8, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17hc61ed44b2535bb66E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0b9f57c1ae05675dE"(i64 %_4.0, i64 %_4.1)
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h485328733def4862E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc159 to %"core::panic::location::Location"*))
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
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb6df292ad97f565cE(i64 %val, i64 8)
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
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17h4207c5fa08baa585E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h2838213951b77698E({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h14c162554b4585ffE"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17h7f164ea357222821E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hdddf026b5086cf3cE"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hfce5af5b490d81a7E"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i64]* %self.0 to i64*
  ret i64* %0
}

; Function Attrs: uwtable
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11copy_within17h4c3910a700168aadE"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %src.0, i64 %src.1, i64 %dest, %"core::panic::location::Location"* align 8 %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca { i8*, i32 }, align 8
  %_44 = alloca i8, align 1
  %_22 = alloca %"core::fmt::Arguments", align 8
  %_8 = alloca i64, align 8
  store i8 1, i8* %_44, align 1
  %_9 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17ha1c15ecebb058b37E"([0 x i64]* align 8 %self.0, i64 %self.1)
          to label %bb1 unwind label %cleanup

bb12:                                             ; preds = %cleanup
  %4 = load i8, i8* %_44, align 1, !range !3, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb11, label %bb10

cleanup:                                          ; preds = %bb1, %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb12

bb1:                                              ; preds = %start
  store i64 %_9, i64* %_8, align 8
  store i8 0, i8* %_44, align 1
  %11 = load i64, i64* %_8, align 8
  %12 = invoke { i64, i64 } @_ZN4core5slice5index5range17hc12b5ca9b3b7b3a3E(i64 %src.0, i64 %src.1, i64 %11, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { i64, i64 } %12, 0
  %_6.1 = extractvalue { i64, i64 } %12, 1
  %count = sub i64 %_6.1, %_6.0
  %_17 = sub i64 %self.1, %count
  %_15 = icmp ule i64 %dest, %_17
  %_14 = xor i1 %_15, true
  br i1 %_14, label %bb3, label %bb5

bb10:                                             ; preds = %bb11, %bb12
  %13 = bitcast { i8*, i32 }* %3 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

bb11:                                             ; preds = %bb12
  br label %bb10

bb5:                                              ; preds = %bb2
  %ptr = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hfce5af5b490d81a7E"([0 x i64]* align 8 %self.0, i64 %self.1)
  br label %bb6

bb3:                                              ; preds = %bb2
  call void @_ZN4core3fmt9Arguments6new_v117ha3e5cf96ea88afe5E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_22, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc29 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc43 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_22, %"core::panic::location::Location"* align 8 %0) #15
  unreachable

bb6:                                              ; preds = %bb5
  %19 = getelementptr inbounds i64, i64* %ptr, i64 %_6.0
  store i64* %19, i64** %2, align 8
  %_3.i = load i64*, i64** %2, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  %20 = getelementptr inbounds i64, i64* %ptr, i64 %dest
  store i64* %20, i64** %1, align 8
  %_3.i1 = load i64*, i64** %1, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  call void @_ZN4core10intrinsics4copy17he9a56c2125e60031E(i64* %_3.i, i64* %_3.i1, i64 %count)
  br label %bb9

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17ha1c15ecebb058b37E"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
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
define { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1b447e272cb0c9cdE"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h7974c8328f0f3bdbE"([0 x i64]* align 8 %self.0, i64 %self.1)
  %1 = extractvalue { i64*, i64* } %0, 0
  %2 = extractvalue { i64*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64*, i64* } undef, i64* %1, 0
  %4 = insertvalue { i64*, i64* } %3, i64* %2, 1
  ret { i64*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17he7106af8f19e595fE"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i64]* %self.0 to i64*
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h0995ce11762e281aE"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i64*, i64* } @"_ZN4core5slice4iter16IterMut$LT$T$GT$3new17hf22ccf298d4f9e05E"([0 x i64]* align 8 %self.0, i64 %self.1)
  %1 = extractvalue { i64*, i64* } %0, 0
  %2 = extractvalue { i64*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64*, i64* } undef, i64* %1, 0
  %4 = insertvalue { i64*, i64* } %3, i64* %2, 1
  ret { i64*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hccf2b5e41ba3dc74E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hea2d5f800a2a97b2E(i64* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h0a3c7ac3cfb7ea2aE(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h392b4b1d8367a6b9E(i64* %data, i64 %len)
  %_7.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_7.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h7974c8328f0f3bdbE"([0 x i64]* align 8 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i64*, align 8
  %2 = alloca { i64*, i64* }, align 8
  %ptr = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17he7106af8f19e595fE"([0 x i64]* align 8 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h6ea6c74964f87fedE"(i64* %ptr)
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
  %_18 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h47e1858e3578403aE"(i64* %ptr)
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

; Function Attrs: uwtable
define { [0 x i64]*, i64 } @"_ZN4core5slice4iter13Iter$LT$T$GT$8as_slice17hd50136211af01830E"({ i64*, i64* }* align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %_5.i = alloca i64, align 8
  %1 = bitcast { i64*, i64* }* %self to i64**
  %_4.i = load i64*, i64** %1, align 8, !nonnull !2, !noundef !2
  %_3.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_4.i)
  %2 = bitcast { i64*, i64* }* %self to i64**
  %start1.i = load i64*, i64** %2, align 8, !nonnull !2, !noundef !2
  %_9.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %start1.i)
  %3 = icmp eq i64 8, 0
  br i1 %3, label %bb4.i, label %bb9.i

bb4.i:                                            ; preds = %start
  %4 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_13.i = load i64*, i64** %4, align 8
  %_12.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h7f7e8843fa1cf15bE"(i64* %_13.i)
  %_15.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %start1.i)
  %_14.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hb298fa398a8db322E"(i64* %_15.i)
  %5 = sub i64 %_12.i, %_14.i
  store i64 %5, i64* %_5.i, align 8
  br label %"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17hd7eab4bf80fcb220E.exit"

bb9.i:                                            ; preds = %start
  %6 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_19.i = load i64*, i64** %6, align 8
  %_18.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h7f7e8843fa1cf15bE"(i64* %_19.i)
  %_21.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %start1.i)
  %_20.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hb298fa398a8db322E"(i64* %_21.i)
  %7 = sub nuw i64 %_18.i, %_20.i
  store i64 %7, i64* %0, align 8
  %diff.i = load i64, i64* %0, align 8
  %8 = udiv exact i64 %diff.i, 8
  store i64 %8, i64* %_5.i, align 8
  br label %"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17hd7eab4bf80fcb220E.exit"

"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17hd7eab4bf80fcb220E.exit": ; preds = %bb9.i, %bb4.i
  %9 = load i64, i64* %_5.i, align 8
  %10 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hccf2b5e41ba3dc74E(i64* %_3.i, i64 %9)
  %11 = extractvalue { [0 x i64]*, i64 } %10, 0
  %12 = extractvalue { [0 x i64]*, i64 } %10, 1
  %13 = extractvalue { [0 x i64]*, i64 } %10, 0
  %14 = extractvalue { [0 x i64]*, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17hd7eab4bf80fcb220E.exit"
  %15 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %13, 0
  %16 = insertvalue { [0 x i64]*, i64 } %15, i64 %14, 1
  ret { [0 x i64]*, i64 } %16
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN4core5slice4iter16IterMut$LT$T$GT$3new17hf22ccf298d4f9e05E"([0 x i64]* align 8 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i64*, align 8
  %2 = alloca { i64*, i64* }, align 8
  %ptr = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hfce5af5b490d81a7E"([0 x i64]* align 8 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he75c52e1726a6f8aE"(i64* %ptr)
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
  %_3.i = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %5 = getelementptr inbounds i64, i64* %ptr, i64 %slice.1
  store i64* %5, i64** %0, align 8
  %_3.i1 = load i64*, i64** %0, align 8
  store i64* %_3.i1, i64** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h47e1858e3578403aE"(i64* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  %6 = bitcast i8* %_3.i to i64*
  store i64* %6, i64** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_20 = load i64*, i64** %end, align 8
  %7 = bitcast { i64*, i64* }* %2 to i64**
  store i64* %_18, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 1
  store i64* %_20, i64** %8, align 8
  %9 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8, !nonnull !2, !noundef !2
  %11 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = insertvalue { i64*, i64* } undef, i64* %10, 0
  %14 = insertvalue { i64*, i64* } %13, i64* %12, 1
  ret { i64*, i64* } %14
}

; Function Attrs: uwtable
define { i64*, i64* } @"_ZN4core5slice4iter95_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$mut$u20$$u5b$T$u5d$$GT$9into_iter17hfbe1619c48346eb0E"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h0995ce11762e281aE"([0 x i64]* align 8 %self.0, i64 %self.1)
  %1 = extractvalue { i64*, i64* } %0, 0
  %2 = extractvalue { i64*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64*, i64* } undef, i64* %1, 0
  %4 = insertvalue { i64*, i64* } %3, i64* %2, 1
  ret { i64*, i64* } %4
}

; Function Attrs: uwtable
define { i64, i64 } @_ZN4core5slice5index5range17hc12b5ca9b3b7b3a3E(i64 %0, i64 %1, i64 %bounds, %"core::panic::location::Location"* align 8 %2) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %end3 = alloca i64, align 8
  %end = alloca { i64, i8* }, align 8
  %start2 = alloca i64, align 8
  %start1 = alloca { i64, i8* }, align 8
  %4 = alloca { i64, i64 }, align 8
  %range = alloca { i64, i64 }, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %range, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %range, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = invoke { i64, i8* } @"_ZN91_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$11start_bound17h186f3a9aed19cc75E"({ i64, i64 }* align 8 %range)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
  br label %bb23

cleanup:                                          ; preds = %bb19, %bb17, %bb13, %bb12, %bb6, %bb8, %bb5, %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb22

bb1:                                              ; preds = %start
  store { i64, i8* } %7, { i64, i8* }* %start1, align 8
  %13 = bitcast { i64, i8* }* %start1 to i64*
  %_7 = load i64, i64* %13, align 8, !range !10, !noundef !2
  switch i64 %_7, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb5
    i64 2, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %14 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %start1, i32 0, i32 1
  %15 = bitcast i8** %14 to i64**
  %_36 = load i64*, i64** %15, align 8, !nonnull !2, !align !4, !noundef !2
  %start5 = load i64, i64* %_36, align 8
  store i64 %start5, i64* %start2, align 8
  br label %bb8

bb5:                                              ; preds = %bb1
  %16 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %start1, i32 0, i32 1
  %17 = bitcast i8** %16 to i64**
  %start4 = load i64*, i64** %17, align 8, !nonnull !2, !align !4, !noundef !2
  %_11 = load i64, i64* %start4, align 8
  %18 = invoke { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h073f9849c143df64E"(i64 %_11, i64 1)
          to label %bb6 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i64 0, i64* %start2, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb2, %bb4
  %19 = invoke { i64, i8* } @"_ZN91_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$9end_bound17h319c129f7ce1b880E"({ i64, i64 }* align 8 %range)
          to label %bb9 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_10.0 = extractvalue { i64, i64 } %18, 0
  %_10.1 = extractvalue { i64, i64 } %18, 1
  %20 = invoke i64 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h5906cf3d266dbfbcE"(i64 %_10.0, i64 %_10.1)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  store i64 %20, i64* %start2, align 8
  br label %bb8

bb9:                                              ; preds = %bb8
  store { i64, i8* } %19, { i64, i8* }* %end, align 8
  %21 = bitcast { i64, i8* }* %end to i64*
  %_16 = load i64, i64* %21, align 8, !range !10, !noundef !2
  switch i64 %_16, label %bb11 [
    i64 0, label %bb12
    i64 1, label %bb15
    i64 2, label %bb10
  ]

bb11:                                             ; preds = %bb9
  unreachable

bb12:                                             ; preds = %bb9
  %22 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %end, i32 0, i32 1
  %23 = bitcast i8** %22 to i64**
  %end7 = load i64*, i64** %23, align 8, !nonnull !2, !align !4, !noundef !2
  %_19 = load i64, i64* %end7, align 8
  %24 = invoke { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h073f9849c143df64E"(i64 %_19, i64 1)
          to label %bb13 unwind label %cleanup

bb15:                                             ; preds = %bb9
  %25 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %end, i32 0, i32 1
  %26 = bitcast i8** %25 to i64**
  %_37 = load i64*, i64** %26, align 8, !nonnull !2, !align !4, !noundef !2
  %end6 = load i64, i64* %_37, align 8
  store i64 %end6, i64* %end3, align 8
  br label %bb16

bb10:                                             ; preds = %bb9
  store i64 %bounds, i64* %end3, align 8
  br label %bb16

bb16:                                             ; preds = %bb14, %bb10, %bb15
  %_23 = load i64, i64* %start2, align 8
  %_24 = load i64, i64* %end3, align 8
  %_22 = icmp ugt i64 %_23, %_24
  br i1 %_22, label %bb17, label %bb18

bb13:                                             ; preds = %bb12
  %_18.0 = extractvalue { i64, i64 } %24, 0
  %_18.1 = extractvalue { i64, i64 } %24, 1
  %27 = invoke i64 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h799bc5f22861f5c3E"(i64 %_18.0, i64 %_18.1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  store i64 %27, i64* %end3, align 8
  br label %bb16

bb18:                                             ; preds = %bb16
  %_29 = load i64, i64* %end3, align 8
  %_28 = icmp ugt i64 %_29, %bounds
  br i1 %_28, label %bb19, label %bb20

bb17:                                             ; preds = %bb16
  %_26 = load i64, i64* %start2, align 8
  %_27 = load i64, i64* %end3, align 8
  invoke void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64 %_26, i64 %_27, %"core::panic::location::Location"* align 8 %2) #15
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb19, %bb17
  unreachable

bb20:                                             ; preds = %bb18
  %_34 = load i64, i64* %start2, align 8
  %_35 = load i64, i64* %end3, align 8
  %28 = bitcast { i64, i64 }* %4 to i64*
  store i64 %_34, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %_35, i64* %29, align 8
  br label %bb21

bb19:                                             ; preds = %bb18
  %_32 = load i64, i64* %end3, align 8
  invoke void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64 %_32, i64 %bounds, %"core::panic::location::Location"* align 8 %2) #15
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %30 = bitcast { i8*, i32 }* %3 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %35 = insertvalue { i8*, i32 } %34, i32 %33, 1
  resume { i8*, i32 } %35

bb21:                                             ; preds = %bb20
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = insertvalue { i64, i64 } undef, i64 %37, 0
  %41 = insertvalue { i64, i64 } %40, i64 %39, 1
  ret { i64, i64 } %41
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core5slice5index5range28_$u7b$$u7b$closure$u7d$$u7d$17h24993b879f7fd36aE"() unnamed_addr #0 {
start:
  call void @_ZN4core5slice5index29slice_end_index_overflow_fail17hd9f8613ba6d0623fE(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc161 to %"core::panic::location::Location"*)) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core5slice5index5range28_$u7b$$u7b$closure$u7d$$u7d$17h4a061c969f9c7b19E"() unnamed_addr #0 {
start:
  call void @_ZN4core5slice5index31slice_start_index_overflow_fail17h9fb6b8af19a48ee5E(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc163 to %"core::panic::location::Location"*)) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h6595f7e228cdf65bE"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h0808a719721b8924E"(i64 %index, [0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8f05377fc4d425e3E"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = call align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5e206b37fdba6e4cE"(i64 %index, [0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %_4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h5906cf3d266dbfbcE"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %2 = alloca i64, align 8
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
  %6 = call i64 @"_ZN4core5slice5index5range28_$u7b$$u7b$closure$u7d$$u7d$17h4a061c969f9c7b19E"()
  store i64 %6, i64* %2, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %x = load i64, i64* %7, align 8
  store i64 %x, i64* %2, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %8 = load i8, i8* %_7, align 1, !range !3, !noundef !2
  %9 = trunc i8 %8 to i1
  br i1 %9, label %bb6, label %bb5

bb4:                                              ; preds = %bb1
  br label %bb7

bb5:                                              ; preds = %bb6, %bb7
  %10 = load i64, i64* %2, align 8
  ret i64 %10

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h799bc5f22861f5c3E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %2 = alloca i64, align 8
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
  %6 = call i64 @"_ZN4core5slice5index5range28_$u7b$$u7b$closure$u7d$$u7d$17h24993b879f7fd36aE"()
  store i64 %6, i64* %2, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %x = load i64, i64* %7, align 8
  store i64 %x, i64* %2, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %8 = load i8, i8* %_7, align 1, !range !3, !noundef !2
  %9 = trunc i8 %8 to i1
  br i1 %9, label %bb6, label %bb5

bb4:                                              ; preds = %bb1
  br label %bb7

bb5:                                              ; preds = %bb6, %bb7
  %10 = load i64, i64* %2, align 8
  ret i64 %10

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$3map17hc380c0a558e65177E"(i64* align 8 %0) unnamed_addr #0 {
start:
  %_9 = alloca i8, align 1
  %_7 = alloca i64*, align 8
  %1 = alloca { i64, i64 }, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  store i8 1, i8* %_9, align 1
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
  %5 = bitcast { i64, i64 }* %1 to i64*
  store i64 0, i64* %5, align 8
  br label %bb7

bb3:                                              ; preds = %start
  %x = load i64*, i64** %self, align 8, !nonnull !2, !align !4, !noundef !2
  store i8 0, i8* %_9, align 1
  store i64* %x, i64** %_7, align 8
  %6 = load i64*, i64** %_7, align 8, !nonnull !2, !align !4, !noundef !2
  %_5 = call i64 @"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h3604d3b69750a8dcE"(i64* align 8 %6)
  br label %bb4

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 %_5, i64* %7, align 8
  %8 = bitcast { i64, i64 }* %1 to i64*
  store i64 1, i64* %8, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb1
  %9 = load i8, i8* %_9, align 1, !range !3, !noundef !2
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !range !1, !noundef !2
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = insertvalue { i64, i64 } undef, i64 %12, 0
  %16 = insertvalue { i64, i64 } %15, i64 %14, 1
  ret { i64, i64 } %16

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h3d60cbc6440ac409E"(i8* %0) unnamed_addr #0 {
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
  %9 = load i8, i8* %_7, align 1, !range !3, !noundef !2
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17hc61ed44b2535bb66E"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %12 = load i8, i8* %_7, align 1, !range !3, !noundef !2
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
define void @"_ZN4core6option15Option$LT$T$GT$5ok_or17hecf594c0334c6cf3E"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2, i64 %err.0, i64 %err.1) unnamed_addr #0 {
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
  %15 = load i8, i8* %_7, align 1, !range !3, !noundef !2
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  ret void

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN4core6option19Option$LT$$RF$T$GT$6cloned17h0bbfcf1b6fceac98E"(i64* align 8 %0) unnamed_addr #1 {
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
  %t = load i64*, i64** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %_4 = call i64 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17h7f164ea357222821E"(i64* align 8 %t)
  br label %bb4

bb4:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 %_4, i64* %6, align 8
  %7 = bitcast { i64, i64 }* %1 to i64*
  store i64 1, i64* %7, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb1
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !range !1, !noundef !2
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = insertvalue { i64, i64 } undef, i64 %9, 0
  %13 = insertvalue { i64, i64 } %12, i64 %11, 1
  ret { i64, i64 } %13
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h961c2f8de70600a8E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %t.1 = load i64, i64* %10, align 8, !range !8, !noundef !2
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !5, !noundef !2
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h7e56f9ef08367da7E() #15
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
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h16224feea74bd347E"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %21 = call { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h7766f66a518f54bcE"(i64 %18, i64 %20)
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
  %24 = load i8, i8* %_11, align 1, !range !3, !noundef !2
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
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h4b566dfee0cb4379E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %1, i64 %2, i64* align 8 %op) unnamed_addr #0 {
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
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h369c81d653370301E"(i64* align 8 %op)
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
  %22 = load i8, i8* %_11, align 1, !range !3, !noundef !2
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h5fa137ee12a47e20E"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2) unnamed_addr #0 {
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
  %t.1 = load i64, i64* %9, align 8, !range !8, !noundef !2
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
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17ha74fa823ee0ac032E"()
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
  %22 = load i8, i8* %_11, align 1, !range !3, !noundef !2
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: cold noreturn uwtable
define void @_ZN4core9panicking13assert_failed17h76e8f3e0b0cd7e40E(i8 %kind, { i64, i64 }* align 8 %0, { i64, i64 }* align 8 %1, %"core::option::Option<core::fmt::Arguments>"* %args, %"core::panic::location::Location"* align 8 %2) unnamed_addr #3 {
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
  call void @_ZN4core9panicking19assert_failed_inner17h232935602d3588d9E(i8 %kind, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*), {}* align 1 %_10.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*), %"core::option::Option<core::fmt::Arguments>"* %_13, %"core::panic::location::Location"* align 8 %2) #15
  unreachable
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h347fe0459a7b7c9eE"(i64 %t.0, i64 %t.1) unnamed_addr #1 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %t.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17he2922890a4506acdE"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf1d8af553a1db5a7E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h65fb77e5bf83133eE"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h22e51980fce2d37aE"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf294684df75f71b7E"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hd02c5eff9c078171E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17h808f041122b565dcE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17hf547ee5724bc9901E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17ha127bc49f1678515E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64 %capacity) unnamed_addr #0 {
start:
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h34655f54910eae96E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64 %capacity)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17h2471cd9ff78bbd99E({ i64*, i64 }* align 8 %self, i64 %increment) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %1 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = add i64 %2, %increment
  store i64 %3, i64* %0, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64*, i64 } @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop3new17h657db2b924f26b74E(i64* align 8 %len) unnamed_addr #0 {
start:
  %0 = alloca { i64*, i64 }, align 8
  %_2 = load i64, i64* %len, align 8
  %1 = bitcast { i64*, i64 }* %0 to i64**
  store i64* %len, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 1
  store i64 %_2, i64* %2, align 8
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 0
  %4 = load i64*, i64** %3, align 8, !nonnull !2, !align !4, !noundef !2
  %5 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64*, i64 } undef, i64* %4, 0
  %8 = insertvalue { i64*, i64 } %7, i64 %6, 1
  ret { i64*, i64 } %8
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h2271225a68686aa6E"({ i64*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he75c52e1726a6f8aE"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h27320a33b538f2e7E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %n, i64 %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h06fb4b22af2a8326E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %n)
          to label %bb1 unwind label %cleanup

bb27:                                             ; preds = %bb23, %cleanup
  %4 = load i8, i8* %_39, align 1, !range !3, !noundef !2
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
  %_8 = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_10 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h74d6523b246fbc73E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %11 = getelementptr inbounds i64, i64* %_8, i64 %_10
  store i64* %11, i64** %2, align 8
  %_3.i = load i64*, i64** %2, align 8
  br label %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"

"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit": ; preds = %bb3
  br label %bb4

bb4:                                              ; preds = %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"
  store i64* %_3.i, i64** %ptr, align 8
  %_14 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %12 = invoke { i64*, i64 } @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop3new17h657db2b924f26b74E(i64* align 8 %_14)
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
  %19 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8918a649cea5b0e9E"(i64 %16, i64 %18)
          to label %bb6 unwind label %cleanup1

bb23:                                             ; preds = %cleanup1
  invoke void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hcf687a028ba03102E"({ i64*, i64 }* %local_len) #16
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
  %27 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb7e4fb03610a387aE"({ i64, i64 }* align 8 %iter)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  store { i64, i64 } %27, { i64, i64 }* %_19, align 8
  %28 = bitcast { i64, i64 }* %_19 to i64*
  %_22 = load i64, i64* %28, align 8, !range !1, !noundef !2
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
  %_25 = invoke i64 @"_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4next17hfa8b6095ac3f8e37E"(i64* align 8 %value)
          to label %bb12 unwind label %cleanup1

bb12:                                             ; preds = %bb9
  invoke void @_ZN4core3ptr5write17h15b36b7e91bf40fcE(i64* %_24, i64 %_25)
          to label %bb13 unwind label %cleanup1

bb13:                                             ; preds = %bb12
  %_28 = load i64*, i64** %ptr, align 8
  %29 = getelementptr inbounds i64, i64* %_28, i64 1
  store i64* %29, i64** %1, align 8
  %_3.i2 = load i64*, i64** %1, align 8
  br label %bb14

bb14:                                             ; preds = %bb13
  store i64* %_3.i2, i64** %ptr, align 8
  invoke void @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17h2471cd9ff78bbd99E({ i64*, i64 }* align 8 %local_len, i64 1)
          to label %bb15 unwind label %cleanup1

bb15:                                             ; preds = %bb14
  br label %bb7

bb20:                                             ; preds = %bb19, %bb11
  invoke void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hcf687a028ba03102E"({ i64*, i64 }* %local_len)
          to label %bb21 unwind label %cleanup

bb16:                                             ; preds = %bb11
  %_34 = load i64*, i64** %ptr, align 8
  store i8 0, i8* %_39, align 1
  %_36 = load i64, i64* %value, align 8
  %_35 = invoke i64 @"_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4last17hf6ad763d3707aa5dE"(i64 %_36)
          to label %bb17 unwind label %cleanup1

bb17:                                             ; preds = %bb16
  invoke void @_ZN4core3ptr5write17h15b36b7e91bf40fcE(i64* %_34, i64 %_35)
          to label %bb18 unwind label %cleanup1

bb18:                                             ; preds = %bb17
  invoke void @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17h2471cd9ff78bbd99E({ i64*, i64 }* align 8 %local_len, i64 1)
          to label %bb19 unwind label %cleanup1

bb19:                                             ; preds = %bb18
  br label %bb20

abort:                                            ; preds = %bb23
  %30 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb21:                                             ; preds = %bb20
  %31 = load i8, i8* %_39, align 1, !range !3, !noundef !2
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
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h34655f54910eae96E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, i64 %capacity) unnamed_addr #0 {
start:
  %1 = call { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h7c4caffa3be1f2ddE"(i64 %capacity)
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
define i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h74d6523b246fbc73E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h2bb82a49bcebec10E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %value) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca i64, align 8
  %1 = alloca i64*, align 8
  %2 = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  store i8 1, i8* %_17, align 1
  %3 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %3, align 8
  %_6 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %4 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_6, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %0, align 8
  %6 = load i64, i64* %0, align 8
  br label %bb1

bb10:                                             ; preds = %cleanup
  %7 = load i8, i8* %_17, align 1, !range !3, !noundef !2
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
  %_11 = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb5 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_8 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %14 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_9 = load i64, i64* %14, align 8
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h636fec5044e5aa43E"({ i64*, i64 }* align 8 %_8, i64 %_9)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  br label %bb4

bb5:                                              ; preds = %bb4
  %15 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_13 = load i64, i64* %15, align 8
  %16 = getelementptr inbounds i64, i64* %_11, i64 %_13
  store i64* %16, i64** %1, align 8
  %_3.i = load i64*, i64** %1, align 8
  br label %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"

"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit": ; preds = %bb5
  br label %bb6

bb6:                                              ; preds = %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"
  store i8 0, i8* %_17, align 1
  invoke void @_ZN4core3ptr5write17h15b36b7e91bf40fcE(i64* %_3.i, i64 %value)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %17 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %18 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %17, align 8
  ret void

bb8:                                              ; preds = %bb9, %bb10
  %21 = bitcast { i8*, i32 }* %2 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

bb9:                                              ; preds = %bb10
  br label %bb8
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17hd8fcf8d5b35e4bc3E"(%"alloc::vec::drain::Drain<u64>"* sret(%"alloc::vec::drain::Drain<u64>") %0, %"alloc::vec::Vec<u64>"* align 8 %self, i64 %range.0, i64 %range.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64*, align 8
  %2 = alloca { i8*, i32 }, align 8
  %_30 = alloca i8, align 1
  %_9 = alloca i64, align 8
  store i8 1, i8* %_30, align 1
  %len = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h74d6523b246fbc73E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb11:                                             ; preds = %cleanup
  %3 = load i8, i8* %_30, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb10, label %bb9

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb3, %bb2, %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb11

bb1:                                              ; preds = %start
  store i8 0, i8* %_30, align 1
  store i64 %len, i64* %_9, align 8
  %10 = load i64, i64* %_9, align 8
  %11 = invoke { i64, i64 } @_ZN4core5slice5index5range17hc12b5ca9b3b7b3a3E(i64 %range.0, i64 %range.1, i64 %10, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc168 to %"core::panic::location::Location"*))
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_7.0 = extractvalue { i64, i64 } %11, 0
  %_7.1 = extractvalue { i64, i64 } %11, 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h8a1c9676e8e6bb59E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %_7.0)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_16 = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %12 = getelementptr inbounds i64, i64* %_16, i64 %_7.0
  store i64* %12, i64** %1, align 8
  %_3.i = load i64*, i64** %1, align 8
  br label %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"

"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit": ; preds = %bb4
  br label %bb5

bb5:                                              ; preds = %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"
  %_19 = sub i64 %_7.1, %_7.0
  %13 = invoke { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h0a3c7ac3cfb7ea2aE(i64* %_3.i, i64 %_19)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %range_slice.0 = extractvalue { [0 x i64]*, i64 } %13, 0
  %range_slice.1 = extractvalue { [0 x i64]*, i64 } %13, 1
  %_23 = sub i64 %len, %_7.1
  %14 = invoke { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1b447e272cb0c9cdE"([0 x i64]* align 8 %range_slice.0, i64 %range_slice.1)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %_26.0 = extractvalue { i64*, i64* } %14, 0
  %_26.1 = extractvalue { i64*, i64* } %14, 1
  %_28 = invoke i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h193d62a968d82789E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %15 = bitcast %"alloc::vec::drain::Drain<u64>"* %0 to i64*
  store i64 %_7.1, i64* %15, align 8
  %16 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %0, i32 0, i32 1
  store i64 %_23, i64* %16, align 8
  %17 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %0, i32 0, i32 2
  %18 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %17, i32 0, i32 0
  store i64* %_26.0, i64** %18, align 8
  %19 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %17, i32 0, i32 1
  store i64* %_26.1, i64** %19, align 8
  %20 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %0, i32 0, i32 3
  store i64* %_28, i64** %20, align 8
  ret void

bb9:                                              ; preds = %bb10, %bb11
  %21 = bitcast { i8*, i32 }* %2 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

bb10:                                             ; preds = %bb11
  br label %bb9
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h2b6ba0d2e8922c4cE"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h2271225a68686aa6E"({ i64*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he75c52e1726a6f8aE"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hffc6f37656fe65efE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %new_len, i64 %value) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %_13 = alloca i64, align 8
  store i8 1, i8* %_18, align 1
  %len = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h74d6523b246fbc73E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb11:                                             ; preds = %cleanup
  %1 = load i8, i8* %_18, align 1, !range !3, !noundef !2
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
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hadb7819affcbe82fE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %new_len)
          to label %bb5 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_10 = sub i64 %new_len, %len
  store i8 0, i8* %_18, align 1
  store i64 %value, i64* %_13, align 8
  %8 = load i64, i64* %_13, align 8
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h27320a33b538f2e7E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %_10, i64 %8)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  br label %bb6

bb6:                                              ; preds = %bb5, %bb3
  %9 = load i8, i8* %_18, align 1, !range !3, !noundef !2
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

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6splice17h107286da2c650633E"(%"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* sret(%"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>") %0, %"alloc::vec::Vec<u64>"* align 8 %self, i64 %range.0, i64 %range.1, i64 %replace_with.0, i64 %replace_with.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_4 = alloca %"alloc::vec::drain::Drain<u64>", align 8
  store i8 1, i8* %_9, align 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17hd8fcf8d5b35e4bc3E"(%"alloc::vec::drain::Drain<u64>"* sret(%"alloc::vec::drain::Drain<u64>") %_4, %"alloc::vec::Vec<u64>"* align 8 %self, i64 %range.0, i64 %range.1)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %2 = load i8, i8* %_9, align 1, !range !3, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb5, label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb6

bb1:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %9 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb1274a140a98129bE"(i64 %replace_with.0, i64 %replace_with.1)
          to label %bb2 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr56drop_in_place$LT$alloc..vec..drain..Drain$LT$u64$GT$$GT$17h4e08a37df18486fdE"(%"alloc::vec::drain::Drain<u64>"* %_4) #16
          to label %bb6 unwind label %abort

cleanup1:                                         ; preds = %bb1
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %_7.0 = extractvalue { i64, i64 } %9, 0
  %_7.1 = extractvalue { i64, i64 } %9, 1
  %15 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %0 to %"alloc::vec::drain::Drain<u64>"*
  %16 = bitcast %"alloc::vec::drain::Drain<u64>"* %15 to i8*
  %17 = bitcast %"alloc::vec::drain::Drain<u64>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 40, i1 false)
  %18 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %0, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %_7.0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %_7.1, i64* %20, align 8
  ret void

abort:                                            ; preds = %bb3
  %21 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb4:                                              ; preds = %bb5, %bb6
  %22 = bitcast { i8*, i32 }* %1 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = insertvalue { i8*, i32 } undef, i8* %23, 0
  %27 = insertvalue { i8*, i32 } %26, i32 %25, 1
  resume { i8*, i32 } %27

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6splice17hd7bf371d89211219E"(%"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* sret(%"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>") %0, %"alloc::vec::Vec<u64>"* align 8 %self, i64 %range.0, i64 %range.1, i64* %replace_with.0, i64* %replace_with.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_4 = alloca %"alloc::vec::drain::Drain<u64>", align 8
  store i8 1, i8* %_9, align 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17hd8fcf8d5b35e4bc3E"(%"alloc::vec::drain::Drain<u64>"* sret(%"alloc::vec::drain::Drain<u64>") %_4, %"alloc::vec::Vec<u64>"* align 8 %self, i64 %range.0, i64 %range.1)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %2 = load i8, i8* %_9, align 1, !range !3, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb5, label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb6

bb1:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %9 = invoke { i64*, i64* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he0d560f3f694ca17E"(i64* %replace_with.0, i64* %replace_with.1)
          to label %bb2 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1
  invoke void @"_ZN4core3ptr56drop_in_place$LT$alloc..vec..drain..Drain$LT$u64$GT$$GT$17h4e08a37df18486fdE"(%"alloc::vec::drain::Drain<u64>"* %_4) #16
          to label %bb6 unwind label %abort

cleanup1:                                         ; preds = %bb1
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %_7.0 = extractvalue { i64*, i64* } %9, 0
  %_7.1 = extractvalue { i64*, i64* } %9, 1
  %15 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %0 to %"alloc::vec::drain::Drain<u64>"*
  %16 = bitcast %"alloc::vec::drain::Drain<u64>"* %15 to i8*
  %17 = bitcast %"alloc::vec::drain::Drain<u64>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 40, i1 false)
  %18 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %0, i32 0, i32 1
  %19 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %18, i32 0, i32 0
  store i64* %_7.0, i64** %19, align 8
  %20 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %18, i32 0, i32 1
  store i64* %_7.1, i64** %20, align 8
  ret void

abort:                                            ; preds = %bb3
  %21 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb4:                                              ; preds = %bb5, %bb6
  %22 = bitcast { i8*, i32 }* %1 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = insertvalue { i8*, i32 } undef, i8* %23, 0
  %27 = insertvalue { i8*, i32 } %26, i32 %25, 1
  resume { i8*, i32 } %27

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h06fb4b22af2a8326E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %additional) unnamed_addr #1 {
start:
  %_4 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h65f2e1013bc612d5E"({ i64*, i64 }* align 8 %_4, i64 %_5, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h8a1c9676e8e6bb59E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %new_len) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  store i64 %new_len, i64* %0, align 8
  ret void
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hadb7819affcbe82fE"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %len) unnamed_addr #1 {
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
  %_11 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %self)
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
  %4 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h392b4b1d8367a6b9E(i64* %_3.i, i64 %remaining_len)
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
define align 1 %"alloc::alloc::Global"* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17h4c6bea7b0350910eE"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %0 = call align 1 %"alloc::alloc::Global"* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17hf20364eb6d69466bE"({ i64*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::alloc::Global"* %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h14104c8fef8225bfE"(%"alloc::vec::drain::Drain<u64>"* align 8 %self, { i64*, i64* }* align 8 %replace_with) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %_25 = alloca { i64, i64 }, align 8
  %_20 = alloca i64*, align 8
  %iter = alloca { i64*, i64* }, align 8
  %1 = alloca i8, align 1
  %_5 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %self, i32 0, i32 3
  %_4 = call align 8 %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h94a07f837a5b7ca6E"(i64** align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %_4, i32 0, i32 1
  %range_start = load i64, i64* %2, align 8
  %3 = bitcast %"alloc::vec::drain::Drain<u64>"* %self to i64*
  %range_end = load i64, i64* %3, align 8
  %_11 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = getelementptr inbounds i64, i64* %_11, i64 %range_start
  store i64* %4, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %_14 = sub i64 %range_end, %range_start
  %5 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h0a3c7ac3cfb7ea2aE(i64* %_3.i, i64 %_14)
  %_9.0 = extractvalue { [0 x i64]*, i64 } %5, 0
  %_9.1 = extractvalue { [0 x i64]*, i64 } %5, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %6 = call { i64*, i64* } @"_ZN4core5slice4iter95_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$mut$u20$$u5b$T$u5d$$GT$9into_iter17hfbe1619c48346eb0E"([0 x i64]* align 8 %_9.0, i64 %_9.1)
  %_17.0 = extractvalue { i64*, i64* } %6, 0
  %_17.1 = extractvalue { i64*, i64* } %6, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %7 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 0
  store i64* %_17.0, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 1
  store i64* %_17.1, i64** %8, align 8
  br label %bb6

bb6:                                              ; preds = %bb13, %bb5
  %9 = call align 8 i64* @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1575b91de992716fE"({ i64*, i64* }* align 8 %iter)
  store i64* %9, i64** %_20, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  %10 = bitcast i64** %_20 to {}**
  %11 = load {}*, {}** %10, align 8
  %12 = icmp eq {}* %11, null
  %_23 = select i1 %12, i64 0, i64 1
  switch i64 %_23, label %bb9 [
    i64 0, label %bb10
    i64 1, label %bb8
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb10:                                             ; preds = %bb7
  store i8 1, i8* %1, align 1
  br label %bb16

bb8:                                              ; preds = %bb7
  %place = load i64*, i64** %_20, align 8, !nonnull !2, !align !4, !noundef !2
  %13 = call { i64, i64 } @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcb0ae38f736c2c46E"({ i64*, i64* }* align 8 %replace_with)
  store { i64, i64 } %13, { i64, i64 }* %_25, align 8
  br label %bb11

bb11:                                             ; preds = %bb8
  %14 = bitcast { i64, i64 }* %_25 to i64*
  %_27 = load i64, i64* %14, align 8, !range !1, !noundef !2
  %15 = icmp eq i64 %_27, 1
  br i1 %15, label %bb12, label %bb14

bb12:                                             ; preds = %bb11
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_25, i32 0, i32 1
  %new_item = load i64, i64* %16, align 8
  call void @_ZN4core3ptr5write17h15b36b7e91bf40fcE(i64* %place, i64 %new_item)
  br label %bb13

bb14:                                             ; preds = %bb11
  store i8 0, i8* %1, align 1
  br label %bb15

bb15:                                             ; preds = %bb14
  br label %bb16

bb16:                                             ; preds = %bb15, %bb10
  %17 = load i8, i8* %1, align 1, !range !3, !noundef !2
  %18 = trunc i8 %17 to i1
  ret i1 %18

bb13:                                             ; preds = %bb12
  %19 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %_4, i32 0, i32 1
  %20 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %_4, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %19, align 8
  br label %bb6
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h6ed006078d9593daE"(%"alloc::vec::drain::Drain<u64>"* align 8 %self, %"alloc::vec::into_iter::IntoIter<u64>"* align 8 %replace_with) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %_25 = alloca { i64, i64 }, align 8
  %_20 = alloca i64*, align 8
  %iter = alloca { i64*, i64* }, align 8
  %1 = alloca i8, align 1
  %_5 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %self, i32 0, i32 3
  %_4 = call align 8 %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h94a07f837a5b7ca6E"(i64** align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %_4, i32 0, i32 1
  %range_start = load i64, i64* %2, align 8
  %3 = bitcast %"alloc::vec::drain::Drain<u64>"* %self to i64*
  %range_end = load i64, i64* %3, align 8
  %_11 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = getelementptr inbounds i64, i64* %_11, i64 %range_start
  store i64* %4, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %_14 = sub i64 %range_end, %range_start
  %5 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h0a3c7ac3cfb7ea2aE(i64* %_3.i, i64 %_14)
  %_9.0 = extractvalue { [0 x i64]*, i64 } %5, 0
  %_9.1 = extractvalue { [0 x i64]*, i64 } %5, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %6 = call { i64*, i64* } @"_ZN4core5slice4iter95_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$mut$u20$$u5b$T$u5d$$GT$9into_iter17hfbe1619c48346eb0E"([0 x i64]* align 8 %_9.0, i64 %_9.1)
  %_17.0 = extractvalue { i64*, i64* } %6, 0
  %_17.1 = extractvalue { i64*, i64* } %6, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %7 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 0
  store i64* %_17.0, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 1
  store i64* %_17.1, i64** %8, align 8
  br label %bb6

bb6:                                              ; preds = %bb13, %bb5
  %9 = call align 8 i64* @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1575b91de992716fE"({ i64*, i64* }* align 8 %iter)
  store i64* %9, i64** %_20, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  %10 = bitcast i64** %_20 to {}**
  %11 = load {}*, {}** %10, align 8
  %12 = icmp eq {}* %11, null
  %_23 = select i1 %12, i64 0, i64 1
  switch i64 %_23, label %bb9 [
    i64 0, label %bb10
    i64 1, label %bb8
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb10:                                             ; preds = %bb7
  store i8 1, i8* %1, align 1
  br label %bb16

bb8:                                              ; preds = %bb7
  %place = load i64*, i64** %_20, align 8, !nonnull !2, !align !4, !noundef !2
  %13 = call { i64, i64 } @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbbb189df500a05d4E"(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %replace_with)
  store { i64, i64 } %13, { i64, i64 }* %_25, align 8
  br label %bb11

bb11:                                             ; preds = %bb8
  %14 = bitcast { i64, i64 }* %_25 to i64*
  %_27 = load i64, i64* %14, align 8, !range !1, !noundef !2
  %15 = icmp eq i64 %_27, 1
  br i1 %15, label %bb12, label %bb14

bb12:                                             ; preds = %bb11
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_25, i32 0, i32 1
  %new_item = load i64, i64* %16, align 8
  call void @_ZN4core3ptr5write17h15b36b7e91bf40fcE(i64* %place, i64 %new_item)
  br label %bb13

bb14:                                             ; preds = %bb11
  store i8 0, i8* %1, align 1
  br label %bb15

bb15:                                             ; preds = %bb14
  br label %bb16

bb16:                                             ; preds = %bb15, %bb10
  %17 = load i8, i8* %1, align 1, !range !3, !noundef !2
  %18 = trunc i8 %17 to i1
  ret i1 %18

bb13:                                             ; preds = %bb12
  %19 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %_4, i32 0, i32 1
  %20 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %_4, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %19, align 8
  br label %bb6
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17he05773dd746b7f5eE"(%"alloc::vec::drain::Drain<u64>"* align 8 %self, { i64, i64 }* align 8 %replace_with) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %_25 = alloca { i64, i64 }, align 8
  %_20 = alloca i64*, align 8
  %iter = alloca { i64*, i64* }, align 8
  %1 = alloca i8, align 1
  %_5 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %self, i32 0, i32 3
  %_4 = call align 8 %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h94a07f837a5b7ca6E"(i64** align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %_4, i32 0, i32 1
  %range_start = load i64, i64* %2, align 8
  %3 = bitcast %"alloc::vec::drain::Drain<u64>"* %self to i64*
  %range_end = load i64, i64* %3, align 8
  %_11 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = getelementptr inbounds i64, i64* %_11, i64 %range_start
  store i64* %4, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %_14 = sub i64 %range_end, %range_start
  %5 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h0a3c7ac3cfb7ea2aE(i64* %_3.i, i64 %_14)
  %_9.0 = extractvalue { [0 x i64]*, i64 } %5, 0
  %_9.1 = extractvalue { [0 x i64]*, i64 } %5, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %6 = call { i64*, i64* } @"_ZN4core5slice4iter95_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$mut$u20$$u5b$T$u5d$$GT$9into_iter17hfbe1619c48346eb0E"([0 x i64]* align 8 %_9.0, i64 %_9.1)
  %_17.0 = extractvalue { i64*, i64* } %6, 0
  %_17.1 = extractvalue { i64*, i64* } %6, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %7 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 0
  store i64* %_17.0, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 1
  store i64* %_17.1, i64** %8, align 8
  br label %bb6

bb6:                                              ; preds = %bb13, %bb5
  %9 = call align 8 i64* @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1575b91de992716fE"({ i64*, i64* }* align 8 %iter)
  store i64* %9, i64** %_20, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  %10 = bitcast i64** %_20 to {}**
  %11 = load {}*, {}** %10, align 8
  %12 = icmp eq {}* %11, null
  %_23 = select i1 %12, i64 0, i64 1
  switch i64 %_23, label %bb9 [
    i64 0, label %bb10
    i64 1, label %bb8
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb10:                                             ; preds = %bb7
  store i8 1, i8* %1, align 1
  br label %bb16

bb8:                                              ; preds = %bb7
  %place = load i64*, i64** %_20, align 8, !nonnull !2, !align !4, !noundef !2
  %13 = call { i64, i64 } @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0ebfb6873de7304dE"({ i64, i64 }* align 8 %replace_with)
  store { i64, i64 } %13, { i64, i64 }* %_25, align 8
  br label %bb11

bb11:                                             ; preds = %bb8
  %14 = bitcast { i64, i64 }* %_25 to i64*
  %_27 = load i64, i64* %14, align 8, !range !1, !noundef !2
  %15 = icmp eq i64 %_27, 1
  br i1 %15, label %bb12, label %bb14

bb12:                                             ; preds = %bb11
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_25, i32 0, i32 1
  %new_item = load i64, i64* %16, align 8
  call void @_ZN4core3ptr5write17h15b36b7e91bf40fcE(i64* %place, i64 %new_item)
  br label %bb13

bb14:                                             ; preds = %bb11
  store i8 0, i8* %1, align 1
  br label %bb15

bb15:                                             ; preds = %bb14
  br label %bb16

bb16:                                             ; preds = %bb15, %bb10
  %17 = load i8, i8* %1, align 1, !range !3, !noundef !2
  %18 = trunc i8 %17 to i1
  ret i1 %18

bb13:                                             ; preds = %bb12
  %19 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %_4, i32 0, i32 1
  %20 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %_4, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %19, align 8
  br label %bb6
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h39cc00f9db221524E"(%"alloc::vec::drain::Drain<u64>"* align 8 %self, i64 %additional) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %_5 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %self, i32 0, i32 3
  %_4 = call align 8 %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h94a07f837a5b7ca6E"(i64** align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"alloc::vec::drain::Drain<u64>"* %self to i64*
  %_7 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %self, i32 0, i32 1
  %_8 = load i64, i64* %3, align 8
  %len = add i64 %_7, %_8
  %_10 = bitcast %"alloc::vec::Vec<u64>"* %_4 to { i64*, i64 }*
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h65f2e1013bc612d5E"({ i64*, i64 }* align 8 %_10, i64 %len, i64 %additional)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast %"alloc::vec::drain::Drain<u64>"* %self to i64*
  %_14 = load i64, i64* %4, align 8
  %new_tail_start = add i64 %_14, %additional
  %_17 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h2b6ba0d2e8922c4cE"(%"alloc::vec::Vec<u64>"* align 8 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = bitcast %"alloc::vec::drain::Drain<u64>"* %self to i64*
  %_19 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds i64, i64* %_17, i64 %_19
  store i64* %6, i64** %0, align 8
  %7 = load i64*, i64** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %_21 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %_4)
  br label %bb5

bb5:                                              ; preds = %bb4
  %8 = getelementptr inbounds i64, i64* %_21, i64 %new_tail_start
  store i64* %8, i64** %1, align 8
  %_3.i = load i64*, i64** %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  %9 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %self, i32 0, i32 1
  %_27 = load i64, i64* %9, align 8
  call void @_ZN4core10intrinsics4copy17he9a56c2125e60031E(i64* %7, i64* %_3.i, i64 %_27)
  br label %bb7

bb7:                                              ; preds = %bb6
  %10 = bitcast %"alloc::vec::drain::Drain<u64>"* %self to i64*
  store i64 %new_tail_start, i64* %10, align 8
  ret void
}

; Function Attrs: uwtable
define { [0 x i64]*, i64 } @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17hc333a34fc9536abdE"(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %0) unnamed_addr #1 {
start:
  %self = alloca %"alloc::vec::into_iter::IntoIter<u64>"*, align 8
  store %"alloc::vec::into_iter::IntoIter<u64>"* %0, %"alloc::vec::into_iter::IntoIter<u64>"** %self, align 8
  %1 = load %"alloc::vec::into_iter::IntoIter<u64>"*, %"alloc::vec::into_iter::IntoIter<u64>"** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %2 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %1, i32 0, i32 4
  %_3 = load i64*, i64** %2, align 8
  %_4 = call i64 @"_ZN83_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h292479058215d3b7E"(%"alloc::vec::into_iter::IntoIter<u64>"** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %3 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h392b4b1d8367a6b9E(i64* %_3, i64 %_4)
  %4 = extractvalue { [0 x i64]*, i64 } %3, 0
  %5 = extractvalue { [0 x i64]*, i64 } %3, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %4, 0
  %7 = insertvalue { [0 x i64]*, i64 } %6, i64 %5, 1
  ret { [0 x i64]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h2be197d3914171c1E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h2838213951b77698E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h29d9a259c3d0c6d2E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h2838213951b77698E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hc585ff888641763eE(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17h4207c5fa08baa585E({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !8, !noundef !2
  %8 = call i8* @_ZN5alloc5alloc5alloc17h29d9a259c3d0c6d2E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !8, !noundef !2
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h2be197d3914171c1E(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hf368f096c2fa2626E"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h3d60cbc6440ac409E"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17he652a589f2403fa1E"(i8* %_16)
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
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hf6536e1de9644067E"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h814b9c6cd8ef5a22E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc170 to %"core::panic::location::Location"*))
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
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hf6536e1de9644067E"(i8* %_7, i64 0)
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
define internal { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h2dfe74846b11dbf7E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1, i64 %2, i64 %3, i1 zeroext %zeroed) unnamed_addr #0 {
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
  %_6 = call i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %old_layout)
  br label %bb1

bb1:                                              ; preds = %start
  %10 = icmp eq i64 %_6, 0
  br i1 %10, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_9.0 = load i64, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_9.1 = load i64, i64* %12, align 8, !range !8, !noundef !2
  %13 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hc585ff888641763eE(%"alloc::alloc::Global"* align 1 %self, i64 %_9.0, i64 %_9.1, i1 zeroext %zeroed)
  store { i8*, i64 } %13, { i8*, i64 }* %5, align 8
  br label %bb3

bb4:                                              ; preds = %bb1
  %_14 = call i64 @_ZN4core5alloc6layout6Layout5align17h2838213951b77698E({ i64, i64 }* align 8 %old_layout)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_16 = call i64 @_ZN4core5alloc6layout6Layout5align17h2838213951b77698E({ i64, i64 }* align 8 %new_layout)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_13 = icmp eq i64 %_14, %_16
  br i1 %_13, label %bb7, label %bb8

bb8:                                              ; preds = %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_56.0 = load i64, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_56.1 = load i64, i64* %15, align 8, !range !8, !noundef !2
  %16 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hc585ff888641763eE(%"alloc::alloc::Global"* align 1 %self, i64 %_56.0, i64 %_56.1, i1 zeroext %zeroed)
  %_54.0 = extractvalue { i8*, i64 } %16, 0
  %_54.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb26

bb7:                                              ; preds = %bb6
  %new_size = call i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %new_layout)
  br label %bb9

bb9:                                              ; preds = %bb7
  %_23 = call i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %old_layout)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_21 = icmp uge i64 %new_size, %_23
  call void @llvm.assume(i1 %_21)
  br label %bb11

bb11:                                             ; preds = %bb10
  %_26 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf19f074fc33154a0E"(i8* %ptr)
  br label %bb12

bb12:                                             ; preds = %bb11
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_28.0 = load i64, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_28.1 = load i64, i64* %18, align 8, !range !8, !noundef !2
  %raw_ptr = call i8* @_ZN5alloc5alloc7realloc17hd8f4f7ee22f02e53E(i8* %_26, i64 %_28.0, i64 %_28.1, i64 %new_size)
  br label %bb13

bb13:                                             ; preds = %bb12
  %_33 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hf368f096c2fa2626E"(i8* %raw_ptr)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_32 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h3d60cbc6440ac409E"(i8* %_33)
  br label %bb15

bb15:                                             ; preds = %bb14
  %19 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17he652a589f2403fa1E"(i8* %_32)
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
  %23 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h814b9c6cd8ef5a22E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc172 to %"core::panic::location::Location"*))
  store { i8*, i64 } %23, { i8*, i64 }* %5, align 8
  br label %bb20

bb20:                                             ; preds = %bb19
  br label %bb37

bb37:                                             ; preds = %bb31, %bb20
  br label %bb38

bb24:                                             ; preds = %bb23, %bb17
  %24 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hf6536e1de9644067E"(i8* %val, i64 %new_size)
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
  call void @_ZN4core10intrinsics11write_bytes17h1ed791f56c447e39E(i8* %_3.i, i8 0, i64 %_45)
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
  %28 = call { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2a8c3427576e1a33E"(i8* %_54.0, i64 %_54.1)
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
  %_64 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf19f074fc33154a0E"(i8* %ptr)
  br label %bb32

bb30:                                             ; preds = %bb27
  %34 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h814b9c6cd8ef5a22E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc174 to %"core::panic::location::Location"*))
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
  %_66 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hb55d07d8a25c2dc5E"(i8* %val.0, i64 %val.1)
  br label %bb33

bb33:                                             ; preds = %bb32
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hc0a2c61b7d6615a3E(i8* %_64, i8* %_66, i64 %_6)
  br label %bb34

bb34:                                             ; preds = %bb33
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_72.0 = load i64, i64* %41, align 8
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_72.1 = load i64, i64* %42, align 8, !range !8, !noundef !2
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hbc3bca3d7c1cb6a2E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %_72.0, i64 %_72.1)
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
define internal void @_ZN5alloc5alloc7dealloc17hfb380eae2ed94d06E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h2838213951b77698E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc7realloc17hd8f4f7ee22f02e53E(i8* %ptr, i64 %0, i64 %1, i64 %new_size) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_5 = call i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core5alloc6layout6Layout5align17h2838213951b77698E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_realloc(i8* %ptr, i64 %_5, i64 %_7, i64 %new_size) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17he7c8ad98e27ad642E(i64 %alloc_size) unnamed_addr #0 {
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
  %9 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h65fb77e5bf83133eE"(i64 %6, i64 %8)
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
define void @_ZN5alloc7raw_vec11finish_grow17h0059efbaf33a9819E(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, %"alloc::alloc::Global"* align 1 %alloc) unnamed_addr #4 {
start:
  %_41 = alloca i64*, align 8
  %old_layout = alloca { i64, i64 }, align 8
  %memory = alloca { i8*, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %_6 = alloca %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>", align 8
  %_5 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>", align 8
  %new_layout = alloca { i64, i64 }, align 8
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h5fa137ee12a47e20E"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %_6, i64 %new_layout.0, i64 %new_layout.1)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6c119e8c5cd2d2bbE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %_5, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %_6)
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
  %val.1 = load i64, i64* %5, align 8, !range !8, !noundef !2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %val.0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %val.1, i64* %7, align 8
  %_15 = call i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %new_layout)
  br label %bb7

bb5:                                              ; preds = %bb2
  %8 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %9 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %residual.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %residual.1 = load i64, i64* %11, align 8, !range !5, !noundef !2
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h882bca9521e1618dE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc176 to %"core::panic::location::Location"*))
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb13, %bb6
  br label %bb24

bb7:                                              ; preds = %bb3
  %12 = call { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17he7c8ad98e27ad642E(i64 %_15)
  %_14.0 = extractvalue { i64, i64 } %12, 0
  %_14.1 = extractvalue { i64, i64 } %12, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %13 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h18299dc549e96d17E"(i64 %_14.0, i64 %_14.1)
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
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hb6bae26eda8e93eeE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.01, i64 %residual.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc178 to %"core::panic::location::Location"*))
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
  %33 = load i64, i64* %32, align 8, !range !8, !noundef !2
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %_30 = call i64 @_ZN4core5alloc6layout6Layout5align17h2838213951b77698E({ i64, i64 }* align 8 %old_layout)
  br label %bb16

bb14:                                             ; preds = %bb10
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_39.0 = load i64, i64* %36, align 8
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_39.1 = load i64, i64* %37, align 8, !range !8, !noundef !2
  %38 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h8f23828e99b985a3E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_39.0, i64 %_39.1)
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
  %42 = load i64*, i64** %_41, align 8, !nonnull !2, !align !4, !noundef !2
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h4b566dfee0cb4379E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %_40.0, i64 %_40.1, i64* align 8 %42)
  br label %bb22

bb16:                                             ; preds = %bb15
  %_32 = call i64 @_ZN4core5alloc6layout6Layout5align17h2838213951b77698E({ i64, i64 }* align 8 %new_layout)
  br label %bb17

bb17:                                             ; preds = %bb16
  %_29 = icmp eq i64 %_30, %_32
  call void @llvm.assume(i1 %_29)
  br label %bb18

bb18:                                             ; preds = %bb17
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_36.0 = load i64, i64* %43, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_36.1 = load i64, i64* %44, align 8, !range !8, !noundef !2
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_37.0 = load i64, i64* %45, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_37.1 = load i64, i64* %46, align 8, !range !8, !noundef !2
  %47 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17he4de12af940ac85fE"(%"alloc::alloc::Global"* align 1 %alloc, i8* %ptr, i64 %_36.0, i64 %_36.1, i64 %_37.0, i64 %_37.1)
  store { i8*, i64 } %47, { i8*, i64 }* %memory, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  br label %bb21

bb22:                                             ; preds = %bb21
  br label %bb24
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h369c81d653370301E"(i64* align 8 %0) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  %1 = bitcast i64** %_1 to { i64, i64 }**
  %_5 = load { i64, i64 }*, { i64, i64 }** %1, align 8, !nonnull !2, !align !4, !noundef !2
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %_4.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %_4.1 = load i64, i64* %3, align 8, !range !8, !noundef !2
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  store i64 %_4.0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %_4.1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %9 = load i64, i64* %8, align 8, !range !5, !noundef !2
  %10 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h65fb77e5bf83133eE"(i64 %7, i64 %9)
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %start
  %13 = insertvalue { i64, i64 } undef, i64 %11, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17ha74fa823ee0ac032E"() unnamed_addr #0 {
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
define internal void @_ZN5alloc7raw_vec14handle_reserve17h05ee0cf68f29c529E(i64 %result.0, i64 %result.1) unnamed_addr #0 {
start:
  %_2 = alloca { i64, i64 }, align 8
  %0 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h16224feea74bd347E"(i64 %result.0, i64 %result.1)
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
  call void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #15
  unreachable

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 0
  %layout.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %layout.1 = load i64, i64* %9, align 8, !range !8, !noundef !2
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h7766f66a518f54bcE"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %e = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = call { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17h808f041122b565dcE({ i64, i64 }* align 8 %e)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h6cf40bcafd9167c7E"(i64 %capacity, i1 zeroext %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %4 = load i8, i8* %_37, align 1, !range !3, !noundef !2
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
  %13 = load i8, i8* %_4, align 1, !range !3, !noundef !2
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb5, label %bb7

bb7:                                              ; preds = %bb3
  %15 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h50040ca9c2c02076E(i64 %capacity)
          to label %bb8 unwind label %cleanup

bb5:                                              ; preds = %bb3
  store i8 0, i8* %_37, align 1
  %16 = invoke { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h63ff5415347253efE"()
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
  %layout.1 = load i64, i64* %27, align 8, !range !8, !noundef !2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %layout.0, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %layout.1, i64* %29, align 8
  %_16 = invoke i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %layout)
          to label %bb12 unwind label %cleanup

bb9:                                              ; preds = %bb8
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #15
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb23, %bb14, %bb9
  unreachable

bb12:                                             ; preds = %bb11
  %30 = invoke { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17he7c8ad98e27ad642E(i64 %_16)
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
  %35 = load i8, i8* %init, align 1, !range !3, !noundef !2
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
  %_23.1 = load i64, i64* %38, align 8, !range !8, !noundef !2
  %39 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h8f23828e99b985a3E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_23.0, i64 %_23.1)
          to label %bb20 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_25.0 = load i64, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_25.1 = load i64, i64* %41, align 8, !range !8, !noundef !2
  %42 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h5733a0dbd1358ca2E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_25.0, i64 %_25.1)
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
  %_33 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hf4487885f60c386dE"(i8* %ptr.0, i64 %ptr.1)
          to label %bb26 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_30.0 = load i64, i64* %48, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_30.1 = load i64, i64* %49, align 8, !range !8, !noundef !2
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %_30.0, i64 %_30.1) #15
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_32 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_33)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_31 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h0f7baa0ba19a9e48E"(i64* %_32)
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
define zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17hc6dbd60ead5829cfE"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #1 {
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2e7aba5d9856bcbdE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i64*, i64 }* align 8 %self) unnamed_addr #1 {
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
  %4 = load i8, i8* %_2, align 1, !range !3, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h50040ca9c2c02076E(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h961c2f8de70600a8E"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc180 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i64*, i64 }* %self to i64**
  %_12 = load i64*, i64** %11, align 8, !nonnull !2, !noundef !2
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h42cc3a76d6969522E"(i64* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf294684df75f71b7E"(i8* %_11)
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
define { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h798ab129177cbe39E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #1 {
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
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h65fb77e5bf83133eE"(i64 %5, i64 %7)
  %_5.0 = extractvalue { i64, i64 } %8, 0
  %_5.1 = extractvalue { i64, i64 } %8, 1
  br label %bb3

bb4:                                              ; preds = %bb1
  %9 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h073f9849c143df64E"(i64 %len, i64 %additional)
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
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17hecf594c0334c6cf3E"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %_9, i64 %_10.0, i64 %_10.1, i64 %13, i64 %15)
  br label %bb6

bb6:                                              ; preds = %bb5
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h694c14cc22a13c82E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %_8, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %_9)
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
  %19 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_20 = load i64, i64* %19, align 8
  %_19 = mul i64 %_20, 2
  %cap = call i64 @_ZN4core3cmp3max17hba5c91fa02894991E(i64 %_19, i64 %val)
  br label %bb12

bb10:                                             ; preds = %bb7
  %20 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %21 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %20, i32 0, i32 1
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %residual.0 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %residual.1 = load i64, i64* %23, align 8, !range !5, !noundef !2
  %24 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9eff75c1714e6ae9E"(i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc182 to %"core::panic::location::Location"*))
  store { i64, i64 } %24, { i64, i64 }* %0, align 8
  br label %bb11

bb11:                                             ; preds = %bb10
  br label %bb23

bb23:                                             ; preds = %bb21, %bb11
  br label %bb24

bb12:                                             ; preds = %bb8
  %cap1 = call i64 @_ZN4core3cmp3max17hba5c91fa02894991E(i64 4, i64 %cap)
  br label %bb13

bb13:                                             ; preds = %bb12
  %25 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h50040ca9c2c02076E(i64 %cap1)
  %new_layout.0 = extractvalue { i64, i64 } %25, 0
  %new_layout.1 = extractvalue { i64, i64 } %25, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2e7aba5d9856bcbdE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_30, { i64*, i64 }* align 8 %self)
  br label %bb15

bb15:                                             ; preds = %bb14
  %_33 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
  call void @_ZN5alloc7raw_vec11finish_grow17h0059efbaf33a9819E(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %_28, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30, %"alloc::alloc::Global"* align 1 %_33)
  br label %bb16

bb16:                                             ; preds = %bb15
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hbd3b67fb7bd25fc1E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %_27, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %_28)
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
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hcb020f10d55df1f0E"({ i64*, i64 }* align 8 %self, i8* %val.0, i64 %val.1, i64 %cap1)
  br label %bb22

bb20:                                             ; preds = %bb17
  %31 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %32 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %31, i32 0, i32 1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %residual.02 = load i64, i64* %33, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %residual.13 = load i64, i64* %34, align 8, !range !5, !noundef !2
  %35 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h38ca7156e695bdecE"(i64 %residual.02, i64 %residual.13, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc184 to %"core::panic::location::Location"*))
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hcb020f10d55df1f0E"({ i64*, i64 }* align 8 %self, i8* %ptr.0, i64 %ptr.1, i64 %cap) unnamed_addr #1 {
start:
  %_6 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hf4487885f60c386dE"(i8* %ptr.0, i64 %ptr.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = call i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h0f7baa0ba19a9e48E"(i64* %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  %0 = bitcast { i64*, i64 }* %self to i64**
  store i64* %_4, i64** %0, align 8
  %1 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  store i64 %cap, i64* %1, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h636fec5044e5aa43E"({ i64*, i64 }* align 8 %self, i64 %len) unnamed_addr #4 {
start:
  %0 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h798ab129177cbe39E"({ i64*, i64 }* align 8 %self, i64 %len, i64 1)
  %_4.0 = extractvalue { i64, i64 } %0, 0
  %_4.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc7raw_vec14handle_reserve17h05ee0cf68f29c529E(i64 %_4.0, i64 %_4.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h7c4caffa3be1f2ddE"(i64 %capacity) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !3, !noundef !2
  %1 = trunc i8 %0 to i1
  %2 = call { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h6cf40bcafd9167c7E"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i64*, i64 } %2, 0
  %4 = extractvalue { i64*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i64*, i64 } undef, i64* %3, 0
  %6 = insertvalue { i64*, i64 } %5, i64 %4, 1
  ret { i64*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17h0b23c66b0538d14fE"(i64* %ptr, i64 %capacity) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i64*, i64 }, align 8
  %_4 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h0f7baa0ba19a9e48E"(i64* %ptr)
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
define i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h2271225a68686aa6E"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64*, i64 }* %self to i64**
  %_2 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  %1 = call i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h91563643ef6ec401E"(i64* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: uwtable
define { i64*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h63ff5415347253efE"() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i64*, i64 }, align 8
  %_2 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h0604376a9acb9b97E"()
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h65f2e1013bc612d5E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #0 {
start:
  %_4 = call zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17hc6dbd60ead5829cfE"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb4

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb2:                                              ; preds = %bb1
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdbd44275d4d686f0E"({ i64*, i64 }* align 8 %self, i64 %len, i64 %additional)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: cold uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdbd44275d4d686f0E"({ i64*, i64 }* align 8 %slf, i64 %len, i64 %additional) unnamed_addr #5 {
start:
  %0 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h798ab129177cbe39E"({ i64*, i64 }* align 8 %slf, i64 %len, i64 %additional)
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc7raw_vec14handle_reserve17h05ee0cf68f29c529E(i64 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: uwtable
define align 1 %"alloc::alloc::Global"* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17hf20364eb6d69466bE"({ i64*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
  ret %"alloc::alloc::Global"* %0
}

; Function Attrs: inlinehint uwtable
define align 8 { i64, i64 }* @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h163f36a556067b90E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  ret { i64, i64 }* %self
}

; Function Attrs: inlinehint uwtable
define align 8 { i64*, i64* }* @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2f997382ee8474d1E"({ i64*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  ret { i64*, i64* }* %self
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8918a649cea5b0e9E"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb1274a140a98129bE"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he0d560f3f694ca17E"(i64* %self.0, i64* %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64*, i64* } undef, i64* %self.0, 0
  %1 = insertvalue { i64*, i64* } %0, i64* %self.1, 1
  ret { i64*, i64* } %1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hbc3bca3d7c1cb6a2E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf19f074fc33154a0E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !8, !noundef !2
  call void @_ZN5alloc5alloc7dealloc17hfb380eae2ed94d06E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h5733a0dbd1358ca2E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hc585ff888641763eE(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17he4de12af940ac85fE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h2dfe74846b11dbf7E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h8f23828e99b985a3E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hc585ff888641763eE(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17ha96bdc89805af1ddE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8, !range !8, !noundef !2
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha6f44b17f44c3cbcE"({ i64, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
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
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc189 to [0 x i8]*), i64 4)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb4

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64* %4, i64** %__self_0, align 8
  %_11.0 = bitcast i64** %__self_0 to {}*
  %5 = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h29a45ea17f28be8eE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc185 to [0 x i8]*), i64 4, {}* align 1 %_11.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*))
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb1
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %7 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %8 = trunc i8 %7 to i1
  ret i1 %8

bb4:                                              ; preds = %bb3
  br label %bb6
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdbc9ce3bd9624f09E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h392b4b1d8367a6b9E(i64* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hfd1c2585084e97f7E"({ i64, i64 }* align 8 %self, { i64, i64 }* align 8 %other) unnamed_addr #0 {
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
  %_20 = load { i64, i64 }*, { i64, i64 }** %6, align 8, !nonnull !2, !align !4, !noundef !2
  %7 = bitcast { i64, i64 }* %_20 to i64*
  %_15 = load i64, i64* %7, align 8, !range !1, !noundef !2
  %8 = icmp eq i64 %_15, 1
  br i1 %8, label %bb5, label %bb4

bb5:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_11, i32 0, i32 1
  %10 = bitcast i64** %9 to { i64, i64 }**
  %_21 = load { i64, i64 }*, { i64, i64 }** %10, align 8, !nonnull !2, !align !4, !noundef !2
  %11 = bitcast { i64, i64 }* %_21 to i64*
  %_14 = load i64, i64* %11, align 8, !range !1, !noundef !2
  %12 = icmp eq i64 %_14, 1
  br i1 %12, label %bb6, label %bb4

bb4:                                              ; preds = %bb5, %bb2
  store i8 1, i8* %_10, align 1
  br label %bb8

bb6:                                              ; preds = %bb5
  %13 = bitcast { i64*, i64* }* %_11 to { i64, i64 }**
  %_22 = load { i64, i64 }*, { i64, i64 }** %13, align 8, !nonnull !2, !align !4, !noundef !2
  %__self_0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_22, i32 0, i32 1
  %14 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_11, i32 0, i32 1
  %15 = bitcast i64** %14 to { i64, i64 }**
  %_23 = load { i64, i64 }*, { i64, i64 }** %15, align 8, !nonnull !2, !align !4, !noundef !2
  %__arg1_0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_23, i32 0, i32 1
  %16 = call zeroext i1 @"_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17hbc1f45ff66abbee6E"(i64* align 8 %__self_0, i64* align 8 %__arg1_0)
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %_10, align 1
  br label %bb7

bb8:                                              ; preds = %bb7, %bb4
  %18 = load i8, i8* %_10, align 1, !range !3, !noundef !2
  %19 = trunc i8 %18 to i1
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %0, align 1
  br label %bb3

bb7:                                              ; preds = %bb6
  br label %bb8

bb3:                                              ; preds = %bb8, %bb1
  %21 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %22 = trunc i8 %21 to i1
  ret i1 %22
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7d02c0796d6d95E"(%"alloc::vec::drain::Drain<u64>"** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load %"alloc::vec::drain::Drain<u64>"*, %"alloc::vec::drain::Drain<u64>"** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %0 = call { i64, i64 } @"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h20bf3cea0bb00e9aE"(%"alloc::vec::drain::Drain<u64>"* align 8 %_3)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda01c1178cf63315E"({ i64*, i64* }** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load { i64*, i64* }*, { i64*, i64* }** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %0 = call { i64, i64 } @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcb0ae38f736c2c46E"({ i64*, i64* }* align 8 %_3)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcf0b3c295bf1063E"({ i64, i64 }** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %0 = call { i64, i64 } @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0ebfb6873de7304dE"({ i64, i64 }* align 8 %_3)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: uwtable
define void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0fdece510b777f9bE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, { i64, i64 }** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !nonnull !2, !align !4, !noundef !2
  call void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haaa1545bd034460dE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, { i64, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha5597139e85dfe14E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, { i64*, i64* }** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load { i64*, i64* }*, { i64*, i64* }** %self, align 8, !nonnull !2, !align !4, !noundef !2
  call void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he2cebb9452f3906dE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, { i64*, i64* }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd777101b3d0e6ba3E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h2b6ba0d2e8922c4cE"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hccf2b5e41ba3dc74E(i64* %_2, i64 %_4)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h3b1e88122a3d9fc5E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_7 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h0a3c7ac3cfb7ea2aE(i64* %_5, i64 %_7)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %3 = insertvalue { [0 x i64]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h0808a719721b8924E"(i64 %self, [0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
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
define align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5e206b37fdba6e4cE"(i64 %self, [0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
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
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf27165bc7988b8faE"({ i64*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2e7aba5d9856bcbdE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i64*, i64 }* align 8 %self)
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
  %layout.1 = load i64, i64* %11, align 8, !range !8, !noundef !2
  %_7 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hbc3bca3d7c1cb6a2E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17hf547ee5724bc9901E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
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
  %6 = call { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17ha96bdc89805af1ddE"({ i64, i64 }* align 8 %self)
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

; Function Attrs: uwtable
define void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1221557c8a95d414E"(%"alloc::vec::drain::Drain<u64>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca { i8*, i32 }, align 8
  %_guard = alloca i64*, align 8
  %vec = alloca i64*, align 8
  %iter = alloca { i64*, i64* }, align 8
  %_4 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %self, i32 0, i32 2
  %4 = call { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1b447e272cb0c9cdE"([0 x i64]* align 8 bitcast (<{}>* @alloc43 to [0 x i64]*), i64 0)
  %_5.0 = extractvalue { i64*, i64* } %4, 0
  %_5.1 = extractvalue { i64*, i64* } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = call { i64*, i64* } @_ZN4core3mem7replace17hbb420bee04c12a96E({ i64*, i64* }* align 8 %_4, i64* %_5.0, i64* %_5.1)
  store { i64*, i64* } %5, { i64*, i64* }* %iter, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = bitcast { i64*, i64* }* %iter to i64**
  %start1.i = load i64*, i64** %6, align 8, !nonnull !2, !noundef !2
  %_5.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %start1.i)
  %7 = icmp eq i64 8, 0
  br i1 %7, label %bb3.i, label %bb8.i

bb3.i:                                            ; preds = %bb2
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 1
  %_9.i = load i64*, i64** %8, align 8
  %_8.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h7f7e8843fa1cf15bE"(i64* %_9.i)
  %_11.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %start1.i)
  %_10.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hb298fa398a8db322E"(i64* %_11.i)
  %9 = sub i64 %_8.i, %_10.i
  store i64 %9, i64* %2, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h5405221627547a07E.exit"

bb8.i:                                            ; preds = %bb2
  %10 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 1
  %_15.i = load i64*, i64** %10, align 8
  %_14.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h7f7e8843fa1cf15bE"(i64* %_15.i)
  %_17.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %start1.i)
  %_16.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hb298fa398a8db322E"(i64* %_17.i)
  %11 = sub nuw i64 %_14.i, %_16.i
  store i64 %11, i64* %1, align 8
  %diff.i = load i64, i64* %1, align 8
  %12 = udiv exact i64 %diff.i, 8
  store i64 %12, i64* %2, align 8
  br label %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h5405221627547a07E.exit"

"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h5405221627547a07E.exit": ; preds = %bb8.i, %bb3.i
  %13 = load i64, i64* %2, align 8
  br label %bb3

bb3:                                              ; preds = %"_ZN102_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h5405221627547a07E.exit"
  %14 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %self, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8, !nonnull !2, !noundef !2
  store i64* %15, i64** %vec, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %16 = icmp eq i64 8, 0
  br i1 %16, label %bb5, label %bb10

bb5:                                              ; preds = %bb4
  %vec1 = call align 8 %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h94a07f837a5b7ca6E"(i64** align 8 %vec)
  br label %bb6

bb10:                                             ; preds = %bb4
  %17 = bitcast i64** %_guard to %"alloc::vec::drain::Drain<u64>"**
  store %"alloc::vec::drain::Drain<u64>"* %self, %"alloc::vec::drain::Drain<u64>"** %17, align 8
  %18 = icmp eq i64 %13, 0
  br i1 %18, label %bb11, label %bb12

bb11:                                             ; preds = %bb10
  call void @"_ZN4core3ptr150drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u64$C$alloc..alloc..Global$GT$$GT$17hd0b5db3f8d10d5b8E"(i64** %_guard)
  br label %bb22

bb12:                                             ; preds = %bb10
  %19 = invoke { [0 x i64]*, i64 } @"_ZN4core5slice4iter13Iter$LT$T$GT$8as_slice17hd50136211af01830E"({ i64*, i64* }* align 8 %iter)
          to label %bb13 unwind label %cleanup

bb25:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr150drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u64$C$alloc..alloc..Global$GT$$GT$17hd0b5db3f8d10d5b8E"(i64** %_guard) #16
          to label %bb26 unwind label %abort

cleanup:                                          ; preds = %bb18, %bb16, %bb15, %bb14, %bb13, %bb12
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  %22 = extractvalue { i8*, i32 } %20, 1
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %bb25

bb13:                                             ; preds = %bb12
  %_34.0 = extractvalue { [0 x i64]*, i64 } %19, 0
  %_34.1 = extractvalue { [0 x i64]*, i64 } %19, 1
  %drop_ptr = invoke i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17he7106af8f19e595fE"([0 x i64]* align 8 %_34.0, i64 %_34.1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_38 = invoke align 8 %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h94a07f837a5b7ca6E"(i64** align 8 %vec)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %vec_ptr = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %_38)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %drop_offset = invoke i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h347f0078448b69c9E"(i64* %drop_ptr, i64* %vec_ptr)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %25 = getelementptr inbounds i64, i64* %vec_ptr, i64 %drop_offset
  store i64* %25, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"

"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit": ; preds = %bb17
  br label %bb18

bb18:                                             ; preds = %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"
  %26 = invoke { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h392b4b1d8367a6b9E(i64* %_3.i, i64 %13)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %to_drop.0 = extractvalue { [0 x i64]*, i64 } %26, 0
  %to_drop.1 = extractvalue { [0 x i64]*, i64 } %26, 1
  br label %bb20

bb20:                                             ; preds = %bb19
  call void @"_ZN4core3ptr150drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u64$C$alloc..alloc..Global$GT$$GT$17hd0b5db3f8d10d5b8E"(i64** %_guard)
  br label %bb21

abort:                                            ; preds = %bb25
  %27 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb26:                                             ; preds = %bb25
  %28 = bitcast { i8*, i32 }* %3 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = insertvalue { i8*, i32 } undef, i8* %29, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33

bb21:                                             ; preds = %bb20
  br label %bb24

bb24:                                             ; preds = %bb23, %bb21
  ret void

bb22:                                             ; preds = %bb11
  br label %bb23

bb23:                                             ; preds = %bb9, %bb22
  br label %bb24

bb6:                                              ; preds = %bb5
  %old_len = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h74d6523b246fbc73E"(%"alloc::vec::Vec<u64>"* align 8 %vec1)
  br label %bb7

bb7:                                              ; preds = %bb6
  %_20 = add i64 %old_len, %13
  %34 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %self, i32 0, i32 1
  %_23 = load i64, i64* %34, align 8
  %_19 = add i64 %_20, %_23
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h8a1c9676e8e6bb59E"(%"alloc::vec::Vec<u64>"* align 8 %vec1, i64 %_19)
  br label %bb8

bb8:                                              ; preds = %bb7
  %35 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %self, i32 0, i32 1
  %_28 = load i64, i64* %35, align 8
  %_26 = add i64 %old_len, %_28
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hadb7819affcbe82fE"(%"alloc::vec::Vec<u64>"* align 8 %vec1, i64 %_26)
  br label %bb9

bb9:                                              ; preds = %bb8
  br label %bb23
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0b9f57c1ae05675dE"(i64 %0, i64 %1) unnamed_addr #0 {
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
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h18299dc549e96d17E"(i64 %0, i64 %1) unnamed_addr #0 {
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
define { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2a8c3427576e1a33E"(i8* %0, i64 %1) unnamed_addr #0 {
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
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h694c14cc22a13c82E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %0, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
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
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6c119e8c5cd2d2bbE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %0, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
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
  %v.1 = load i64, i64* %5, align 8, !range !8, !noundef !2
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
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hbd3b67fb7bd25fc1E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %0, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self) unnamed_addr #0 {
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
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17he652a589f2403fa1E"(i8* %0) unnamed_addr #0 {
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
define align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1e4b6d8d94b641a4E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  store i8 1, i8* %_8, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd777101b3d0e6ba3E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_8, align 1, !range !3, !noundef !2
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
  %10 = invoke align 8 i64* @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h6595f7e228cdf65bE"([0 x i64]* align 8 %_5.0, i64 %_5.1, i64 %index, %"core::panic::location::Location"* align 8 %0)
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

; Function Attrs: uwtable
define void @"_ZN81_$LT$alloc..vec..splice..Splice$LT$I$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h634f24b90f3cf657E"(%"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_33 = alloca %"alloc::vec::Vec<u64>", align 8
  %collected = alloca %"alloc::vec::into_iter::IntoIter<u64>", align 8
  %_20 = alloca { i64, { i64, i64 } }, align 8
  %_5 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %_4 = call align 8 %"alloc::vec::drain::Drain<u64>"* @_ZN4core4iter6traits8iterator8Iterator6by_ref17h86ac8f9e082ce814E(%"alloc::vec::drain::Drain<u64>"* align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core4iter6traits8iterator8Iterator8for_each17h506233f2145f1973E(%"alloc::vec::drain::Drain<u64>"* align 8 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %2 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %1, i32 0, i32 1
  %_6 = load i64, i64* %2, align 8
  %3 = icmp eq i64 %_6, 0
  br i1 %3, label %bb3, label %bb7

bb3:                                              ; preds = %bb2
  %4 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %_10 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %4, i32 0, i32 3
  %_9 = call align 8 %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h94a07f837a5b7ca6E"(i64** align 8 %_10)
  br label %bb4

bb7:                                              ; preds = %bb2
  %_15 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %_17 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self, i32 0, i32 1
  %_14 = call zeroext i1 @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h14104c8fef8225bfE"(%"alloc::vec::drain::Drain<u64>"* align 8 %_15, { i64*, i64* }* align 8 %_17)
  br label %bb8

bb8:                                              ; preds = %bb7
  %_13 = xor i1 %_14, true
  br i1 %_13, label %bb9, label %bb10

bb10:                                             ; preds = %bb8
  %_21 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self, i32 0, i32 1
  call void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he2cebb9452f3906dE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_20, { i64*, i64* }* align 8 %_21)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb28

bb28:                                             ; preds = %bb6, %bb27, %bb15, %bb9
  ret void

bb11:                                             ; preds = %bb10
  %5 = bitcast { i64, { i64, i64 } }* %_20 to i64*
  %lower_bound = load i64, i64* %5, align 8
  %_22 = icmp ugt i64 %lower_bound, 0
  br i1 %_22, label %bb12, label %bb17

bb17:                                             ; preds = %bb16, %bb11
  %_36 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self, i32 0, i32 1
  %_35 = call align 8 { i64*, i64* }* @_ZN4core4iter6traits8iterator8Iterator6by_ref17h42f1382844f2dc70E({ i64*, i64* }* align 8 %_36)
  br label %bb18

bb12:                                             ; preds = %bb11
  %_25 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  call void @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h39cc00f9db221524E"(%"alloc::vec::drain::Drain<u64>"* align 8 %_25, i64 %lower_bound)
  br label %bb13

bb13:                                             ; preds = %bb12
  %_29 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %_31 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self, i32 0, i32 1
  %_28 = call zeroext i1 @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h14104c8fef8225bfE"(%"alloc::vec::drain::Drain<u64>"* align 8 %_29, { i64*, i64* }* align 8 %_31)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_27 = xor i1 %_28, true
  br i1 %_27, label %bb15, label %bb16

bb16:                                             ; preds = %bb14
  br label %bb17

bb15:                                             ; preds = %bb14
  br label %bb28

bb18:                                             ; preds = %bb17
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17h93231e8b1d0e395eE(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %_33, { i64*, i64* }* align 8 %_35)
  br label %bb19

bb19:                                             ; preds = %bb18
  call void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3dd34f7d7f41ab96E"(%"alloc::vec::into_iter::IntoIter<u64>"* sret(%"alloc::vec::into_iter::IntoIter<u64>") %collected, %"alloc::vec::Vec<u64>"* %_33)
  br label %bb20

bb20:                                             ; preds = %bb19
  %_38 = invoke i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h0f85c756f85fc86fE(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %collected)
          to label %bb21 unwind label %cleanup

bb29:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u64$GT$$GT$17h241259f6d8b02b9fE"(%"alloc::vec::into_iter::IntoIter<u64>"* %collected) #16
          to label %bb30 unwind label %abort

cleanup:                                          ; preds = %bb24, %bb23, %bb22, %bb20
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb29

bb21:                                             ; preds = %bb20
  %_37 = icmp ugt i64 %_38, 0
  br i1 %_37, label %bb22, label %bb26

bb26:                                             ; preds = %bb25, %bb21
  call void @"_ZN4core3ptr63drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u64$GT$$GT$17h241259f6d8b02b9fE"(%"alloc::vec::into_iter::IntoIter<u64>"* %collected)
  br label %bb27

bb22:                                             ; preds = %bb21
  %_41 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %_42 = invoke i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h0f85c756f85fc86fE(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %collected)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  invoke void @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h39cc00f9db221524E"(%"alloc::vec::drain::Drain<u64>"* align 8 %_41, i64 %_42)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_45 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %filled = invoke zeroext i1 @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h6ed006078d9593daE"(%"alloc::vec::drain::Drain<u64>"* align 8 %_45, %"alloc::vec::into_iter::IntoIter<u64>"* align 8 %collected)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  br label %bb26

abort:                                            ; preds = %bb29
  %11 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb30:                                             ; preds = %bb29
  %12 = bitcast { i8*, i32 }* %0 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17

bb27:                                             ; preds = %bb26
  br label %bb28

bb4:                                              ; preds = %bb3
  %_12 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %self, i32 0, i32 1
  %_11 = call align 8 { i64*, i64* }* @_ZN4core4iter6traits8iterator8Iterator6by_ref17h42f1382844f2dc70E({ i64*, i64* }* align 8 %_12)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h405de3bba56835d6E"(%"alloc::vec::Vec<u64>"* align 8 %_9, { i64*, i64* }* align 8 %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb28
}

; Function Attrs: uwtable
define void @"_ZN81_$LT$alloc..vec..splice..Splice$LT$I$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77db0f3ffd1bcad6E"(%"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_33 = alloca %"alloc::vec::Vec<u64>", align 8
  %collected = alloca %"alloc::vec::into_iter::IntoIter<u64>", align 8
  %_20 = alloca { i64, { i64, i64 } }, align 8
  %_5 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %_4 = call align 8 %"alloc::vec::drain::Drain<u64>"* @_ZN4core4iter6traits8iterator8Iterator6by_ref17h86ac8f9e082ce814E(%"alloc::vec::drain::Drain<u64>"* align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core4iter6traits8iterator8Iterator8for_each17h506233f2145f1973E(%"alloc::vec::drain::Drain<u64>"* align 8 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %2 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %1, i32 0, i32 1
  %_6 = load i64, i64* %2, align 8
  %3 = icmp eq i64 %_6, 0
  br i1 %3, label %bb3, label %bb7

bb3:                                              ; preds = %bb2
  %4 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %_10 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %4, i32 0, i32 3
  %_9 = call align 8 %"alloc::vec::Vec<u64>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h94a07f837a5b7ca6E"(i64** align 8 %_10)
  br label %bb4

bb7:                                              ; preds = %bb2
  %_15 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %_17 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self, i32 0, i32 1
  %_14 = call zeroext i1 @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17he05773dd746b7f5eE"(%"alloc::vec::drain::Drain<u64>"* align 8 %_15, { i64, i64 }* align 8 %_17)
  br label %bb8

bb8:                                              ; preds = %bb7
  %_13 = xor i1 %_14, true
  br i1 %_13, label %bb9, label %bb10

bb10:                                             ; preds = %bb8
  %_21 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self, i32 0, i32 1
  call void @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haaa1545bd034460dE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_20, { i64, i64 }* align 8 %_21)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb28

bb28:                                             ; preds = %bb6, %bb27, %bb15, %bb9
  ret void

bb11:                                             ; preds = %bb10
  %5 = bitcast { i64, { i64, i64 } }* %_20 to i64*
  %lower_bound = load i64, i64* %5, align 8
  %_22 = icmp ugt i64 %lower_bound, 0
  br i1 %_22, label %bb12, label %bb17

bb17:                                             ; preds = %bb16, %bb11
  %_36 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self, i32 0, i32 1
  %_35 = call align 8 { i64, i64 }* @_ZN4core4iter6traits8iterator8Iterator6by_ref17hba63dafe221223aeE({ i64, i64 }* align 8 %_36)
  br label %bb18

bb12:                                             ; preds = %bb11
  %_25 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  call void @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h39cc00f9db221524E"(%"alloc::vec::drain::Drain<u64>"* align 8 %_25, i64 %lower_bound)
  br label %bb13

bb13:                                             ; preds = %bb12
  %_29 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %_31 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self, i32 0, i32 1
  %_28 = call zeroext i1 @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17he05773dd746b7f5eE"(%"alloc::vec::drain::Drain<u64>"* align 8 %_29, { i64, i64 }* align 8 %_31)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_27 = xor i1 %_28, true
  br i1 %_27, label %bb15, label %bb16

bb16:                                             ; preds = %bb14
  br label %bb17

bb15:                                             ; preds = %bb14
  br label %bb28

bb18:                                             ; preds = %bb17
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17h0f10ad3435f5859fE(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %_33, { i64, i64 }* align 8 %_35)
  br label %bb19

bb19:                                             ; preds = %bb18
  call void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3dd34f7d7f41ab96E"(%"alloc::vec::into_iter::IntoIter<u64>"* sret(%"alloc::vec::into_iter::IntoIter<u64>") %collected, %"alloc::vec::Vec<u64>"* %_33)
  br label %bb20

bb20:                                             ; preds = %bb19
  %_38 = invoke i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h0f85c756f85fc86fE(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %collected)
          to label %bb21 unwind label %cleanup

bb29:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u64$GT$$GT$17h241259f6d8b02b9fE"(%"alloc::vec::into_iter::IntoIter<u64>"* %collected) #16
          to label %bb30 unwind label %abort

cleanup:                                          ; preds = %bb24, %bb23, %bb22, %bb20
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb29

bb21:                                             ; preds = %bb20
  %_37 = icmp ugt i64 %_38, 0
  br i1 %_37, label %bb22, label %bb26

bb26:                                             ; preds = %bb25, %bb21
  call void @"_ZN4core3ptr63drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u64$GT$$GT$17h241259f6d8b02b9fE"(%"alloc::vec::into_iter::IntoIter<u64>"* %collected)
  br label %bb27

bb22:                                             ; preds = %bb21
  %_41 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %_42 = invoke i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h0f85c756f85fc86fE(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %collected)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  invoke void @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h39cc00f9db221524E"(%"alloc::vec::drain::Drain<u64>"* align 8 %_41, i64 %_42)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_45 = bitcast %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self to %"alloc::vec::drain::Drain<u64>"*
  %filled = invoke zeroext i1 @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h6ed006078d9593daE"(%"alloc::vec::drain::Drain<u64>"* align 8 %_45, %"alloc::vec::into_iter::IntoIter<u64>"* align 8 %collected)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  br label %bb26

abort:                                            ; preds = %bb29
  %11 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb30:                                             ; preds = %bb29
  %12 = bitcast { i8*, i32 }* %0 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17

bb27:                                             ; preds = %bb26
  br label %bb28

bb4:                                              ; preds = %bb3
  %_12 = getelementptr inbounds %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>", %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %self, i32 0, i32 1
  %_11 = call align 8 { i64, i64 }* @_ZN4core4iter6traits8iterator8Iterator6by_ref17hba63dafe221223aeE({ i64, i64 }* align 8 %_12)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17hde449936d6764516E"(%"alloc::vec::Vec<u64>"* align 8 %_9, { i64, i64 }* align 8 %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb28
}

; Function Attrs: uwtable
define i64 @"_ZN83_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h292479058215d3b7E"(%"alloc::vec::into_iter::IntoIter<u64>"** align 8 %self) unnamed_addr #1 {
start:
  %_3 = load %"alloc::vec::into_iter::IntoIter<u64>"*, %"alloc::vec::into_iter::IntoIter<u64>"** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %0 = call i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h0f85c756f85fc86fE(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09344b461ea63133E"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_2 = load i64, i64* %0, align 8
  %1 = bitcast { i64*, i64 }* %self to i64**
  %_3 = load i64*, i64** %1, align 8, !nonnull !2, !align !4, !noundef !2
  store i64 %_2, i64* %_3, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h571f269440e94725E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  store i8 1, i8* %_10, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h3b1e88122a3d9fc5E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_10, align 1, !range !3, !noundef !2
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
  %_4 = invoke align 8 i64* @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8f05377fc4d425e3E"([0 x i64]* align 8 %_7.0, i64 %_7.1, i64 %index, %"core::panic::location::Location"* align 8 %0)
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
define i64 @"_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4last17hf6ad763d3707aa5dE"(i64 %self) unnamed_addr #1 {
start:
  ret i64 %self
}

; Function Attrs: uwtable
define i64 @"_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4next17hfa8b6095ac3f8e37E"(i64* align 8 %self) unnamed_addr #1 {
start:
  %0 = call i64 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17h7f164ea357222821E"(i64* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: uwtable
define void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9805297b2723d811E"(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %guard = alloca i64*, align 8
  %1 = bitcast i64** %guard to %"alloc::vec::into_iter::IntoIter<u64>"**
  store %"alloc::vec::into_iter::IntoIter<u64>"* %self, %"alloc::vec::into_iter::IntoIter<u64>"** %1, align 8
  %2 = bitcast i64** %guard to %"alloc::vec::into_iter::IntoIter<u64>"**
  %_7 = load %"alloc::vec::into_iter::IntoIter<u64>"*, %"alloc::vec::into_iter::IntoIter<u64>"** %2, align 8, !nonnull !2, !align !4, !noundef !2
  %3 = invoke { [0 x i64]*, i64 } @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17hc333a34fc9536abdE"(%"alloc::vec::into_iter::IntoIter<u64>"* align 8 %_7)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr157drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u64$C$alloc..alloc..Global$GT$$GT$17h3ee068f77c56d1ecE"(i64** %guard) #16
          to label %bb5 unwind label %abort

cleanup:                                          ; preds = %start
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
  %_5.0 = extractvalue { [0 x i64]*, i64 } %3, 0
  %_5.1 = extractvalue { [0 x i64]*, i64 } %3, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @"_ZN4core3ptr157drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u64$C$alloc..alloc..Global$GT$$GT$17h3ee068f77c56d1ecE"(i64** %guard)
  br label %bb3

abort:                                            ; preds = %bb4
  %9 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
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
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h214ce92f03489d29E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h007c06ed80be614aE"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hdddf026b5086cf3cE"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h8d2ba1f6c4334240E"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17h74e092b125f5f507E(i64* align 8 %_10, i64 %n)
  br label %bb5

bb5:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_8, i64* %2, align 8
  %3 = bitcast { i64, i64 }* %0 to i64*
  store i64 1, i64* %3, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !range !1, !noundef !2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i64, i64 } undef, i64 %5, 0
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1
  ret { i64, i64 } %9
}

; Function Attrs: inlinehint uwtable
define void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3dd34f7d7f41ab96E"(%"alloc::vec::into_iter::IntoIter<u64>"* sret(%"alloc::vec::into_iter::IntoIter<u64>") %0, %"alloc::vec::Vec<u64>"* %self) unnamed_addr #0 {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %3 = alloca %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>", align 1
  %_2.i = alloca %"alloc::vec::Vec<u64>", align 8
  %4 = alloca i8*, align 8
  %end = alloca i64*, align 8
  %_3 = alloca %"alloc::vec::Vec<u64>", align 8
  %me = alloca %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<u64>>", align 8
  %5 = bitcast %"alloc::vec::Vec<u64>"* %_3 to i8*
  %6 = bitcast %"alloc::vec::Vec<u64>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 24, i1 false)
  %7 = bitcast %"alloc::vec::Vec<u64>"* %_2.i to i8*
  %8 = bitcast %"alloc::vec::Vec<u64>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  %9 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<u64>>"* %me to %"alloc::vec::Vec<u64>"*
  %10 = bitcast %"alloc::vec::Vec<u64>"* %9 to i8*
  %11 = bitcast %"alloc::vec::Vec<u64>"* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %12 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<u64>>"* %me to %"alloc::vec::Vec<u64>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %_7 = call align 1 %"alloc::alloc::Global"* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17h4c6bea7b0350910eE"(%"alloc::vec::Vec<u64>"* align 8 %12)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN4core3ptr4read17hf24200b430c4d96bE(%"alloc::alloc::Global"* %_7)
  br label %bb4

bb4:                                              ; preds = %bb3
  %13 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"* %3 to %"alloc::alloc::Global"*
  br label %bb5

bb5:                                              ; preds = %bb4
  %_3.i1 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<u64>>"* %me to %"alloc::vec::Vec<u64>"*
  br label %bb6

bb6:                                              ; preds = %bb5
  %begin = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %_3.i1)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb7
  %14 = icmp eq i64 8, 0
  br i1 %14, label %bb9, label %bb13

bb9:                                              ; preds = %bb8
  %_18 = bitcast i64* %begin to i8*
  %15 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<u64>>"* %me to %"alloc::vec::Vec<u64>"*
  br label %bb10

bb13:                                             ; preds = %bb8
  %16 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<u64>>"* %me to %"alloc::vec::Vec<u64>"*
  br label %bb14

bb14:                                             ; preds = %bb13
  %_27 = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h74d6523b246fbc73E"(%"alloc::vec::Vec<u64>"* align 8 %16)
  br label %bb15

bb15:                                             ; preds = %bb14
  %17 = getelementptr inbounds i64, i64* %begin, i64 %_27
  store i64* %17, i64** %2, align 8
  %_3.i = load i64*, i64** %2, align 8
  br label %bb16

bb16:                                             ; preds = %bb15
  store i64* %_3.i, i64** %end, align 8
  br label %bb17

bb17:                                             ; preds = %bb12, %bb16
  %18 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::vec::Vec<u64>>"* %me to %"alloc::vec::Vec<u64>"*
  br label %bb18

bb10:                                             ; preds = %bb9
  %_21 = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h74d6523b246fbc73E"(%"alloc::vec::Vec<u64>"* align 8 %15)
  br label %bb11

bb11:                                             ; preds = %bb10
  %19 = getelementptr i8, i8* %_18, i64 %_21
  store i8* %19, i8** %4, align 8
  %_17 = load i8*, i8** %4, align 8
  br label %bb12

bb12:                                             ; preds = %bb11
  %20 = bitcast i8* %_17 to i64*
  store i64* %20, i64** %end, align 8
  br label %bb17

bb18:                                             ; preds = %bb17
  %_32 = bitcast %"alloc::vec::Vec<u64>"* %18 to { i64*, i64 }*
  %21 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_32, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  %_35 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h47e1858e3578403aE"(i64* %begin)
  br label %bb20

bb20:                                             ; preds = %bb19
  %_41 = load i64*, i64** %end, align 8
  %24 = bitcast %"alloc::vec::into_iter::IntoIter<u64>"* %0 to i64**
  store i64* %_35, i64** %24, align 8
  %25 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %0, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = bitcast %"alloc::vec::into_iter::IntoIter<u64>"* %0 to %"core::mem::manually_drop::ManuallyDrop<alloc::alloc::Global>"*
  %27 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %0, i32 0, i32 4
  store i64* %begin, i64** %27, align 8
  %28 = getelementptr inbounds %"alloc::vec::into_iter::IntoIter<u64>", %"alloc::vec::into_iter::IntoIter<u64>"* %0, i32 0, i32 5
  store i64* %_41, i64** %28, align 8
  ret void
}

; Function Attrs: uwtable
define { i64, i8* } @"_ZN91_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$11start_bound17h186f3a9aed19cc75E"({ i64, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca { i64, i8* }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %1 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %2 = bitcast i8** %1 to i64**
  store i64* %_3, i64** %2, align 8
  %3 = bitcast { i64, i8* }* %0 to i64*
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !range !10, !noundef !2
  %6 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = insertvalue { i64, i8* } undef, i64 %5, 0
  %9 = insertvalue { i64, i8* } %8, i8* %7, 1
  ret { i64, i8* } %9
}

; Function Attrs: uwtable
define { i64, i8* } @"_ZN91_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$9end_bound17h319c129f7ce1b880E"({ i64, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca { i64, i8* }, align 8
  %_3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %1 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %2 = bitcast i8** %1 to i64**
  store i64* %_3, i64** %2, align 8
  %3 = bitcast { i64, i8* }* %0 to i64*
  store i64 1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !range !10, !noundef !2
  %6 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = insertvalue { i64, i8* } undef, i64 %5, 0
  %9 = insertvalue { i64, i8* } %8, i8* %7, 1
  ret { i64, i8* } %9
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45dccbd08791162fE"({ i64*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = bitcast { i64*, i64* }* %self to i64**
  %_6 = load i64*, i64** %3, align 8, !nonnull !2, !noundef !2
  %_5 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he75c52e1726a6f8aE"(i64* %_5)
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
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h6ea6c74964f87fedE"(i64* %_11)
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
  %_14 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_16 = load i64*, i64** %7, align 8
  %_12 = icmp eq i64* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i64*, i64* }* %self to i64**
  %_12.i = load i64*, i64** %8, align 8, !nonnull !2, !noundef !2
  %old.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_12.i)
  %9 = bitcast { i64*, i64* }* %self to i64**
  %_16.i = load i64*, i64** %9, align 8, !nonnull !2, !noundef !2
  %_15.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_16.i)
  %10 = getelementptr inbounds i64, i64* %_15.i, i64 1
  store i64* %10, i64** %0, align 8
  %_3.i.i = load i64*, i64** %0, align 8
  %_13.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h47e1858e3578403aE"(i64* %_3.i.i)
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
define void @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfdade41cf55e6f18E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %0, { i64*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %1 = alloca i64, align 8
  %_23 = alloca { i64, i64 }, align 8
  %exact = alloca i64, align 8
  %2 = bitcast { i64*, i64* }* %self to i64**
  %start1 = load i64*, i64** %2, align 8, !nonnull !2, !noundef !2
  %_6 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %start1)
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = icmp eq i64 8, 0
  br i1 %3, label %bb3, label %bb8

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_10 = load i64*, i64** %4, align 8
  %_9 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h7f7e8843fa1cf15bE"(i64* %_10)
  br label %bb4

bb8:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_16 = load i64*, i64** %5, align 8
  %_15 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h7f7e8843fa1cf15bE"(i64* %_16)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_18 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %start1)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_17 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hb298fa398a8db322E"(i64* %_18)
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
  %13 = load i64, i64* %12, align 8, !range !1, !noundef !2
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_23, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  ret void

bb4:                                              ; preds = %bb3
  %_12 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %start1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_11 = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hb298fa398a8db322E"(i64* %_12)
  br label %bb6

bb6:                                              ; preds = %bb5
  %18 = sub i64 %_9, %_11
  store i64 %18, i64* %exact, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define void @"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h405de3bba56835d6E"(%"alloc::vec::Vec<u64>"* align 8 %self, { i64*, i64* }* align 8 %iter) unnamed_addr #0 {
start:
  %_4 = call align 8 { i64*, i64* }* @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2f997382ee8474d1E"({ i64*, i64* }* align 8 %iter)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf463eb803cac47a3E"(%"alloc::vec::Vec<u64>"* align 8 %self, { i64*, i64* }* align 8 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17hde449936d6764516E"(%"alloc::vec::Vec<u64>"* align 8 %self, { i64, i64 }* align 8 %iter) unnamed_addr #0 {
start:
  %_4 = call align 8 { i64, i64 }* @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h163f36a556067b90E"({ i64, i64 }* align 8 %iter)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h0f5bf3a0ae0f3d9aE"(%"alloc::vec::Vec<u64>"* align 8 %self, { i64, i64 }* align 8 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1575b91de992716fE"({ i64*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = bitcast { i64*, i64* }* %self to i64**
  %_6 = load i64*, i64** %3, align 8, !nonnull !2, !noundef !2
  %_5 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he75c52e1726a6f8aE"(i64* %_5)
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
  %_10 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he75c52e1726a6f8aE"(i64* %_11)
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
  %_14 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %_17 = load i64*, i64** %7, align 8
  %_12 = icmp eq i64* %_14, %_17
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i64*, i64* }* %self to i64**
  %_11.i = load i64*, i64** %8, align 8, !nonnull !2, !noundef !2
  %old.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_11.i)
  %9 = bitcast { i64*, i64* }* %self to i64**
  %_15.i = load i64*, i64** %9, align 8, !nonnull !2, !noundef !2
  %_14.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE"(i64* %_15.i)
  %10 = getelementptr inbounds i64, i64* %_14.i, i64 1
  store i64* %10, i64** %0, align 8
  %_3.i1.i = load i64*, i64** %0, align 8
  %_12.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h47e1858e3578403aE"(i64* %_3.i1.i)
  %11 = bitcast { i64*, i64* }* %self to i64**
  store i64* %_12.i, i64** %11, align 8
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
define void @"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h72697105d5fd5220E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64, i64 }* align 8 %iter) unnamed_addr #0 {
start:
  %_2 = call align 8 { i64, i64 }* @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h163f36a556067b90E"({ i64, i64 }* align 8 %iter)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h9792be60e85363cbE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64, i64 }* align 8 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hb1521135d7152037E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64*, i64* }* align 8 %iter) unnamed_addr #0 {
start:
  %_2 = call align 8 { i64*, i64* }* @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2f997382ee8474d1E"({ i64*, i64* }* align 8 %iter)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h438a8e809d02647fE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64*, i64* }* align 8 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h20bf3cea0bb00e9aE"(%"alloc::vec::drain::Drain<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = getelementptr inbounds %"alloc::vec::drain::Drain<u64>", %"alloc::vec::drain::Drain<u64>"* %self, i32 0, i32 2
  %_2 = call align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45dccbd08791162fE"({ i64*, i64* }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$3map17hc380c0a558e65177E"(i64* align 8 %_2)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h3604d3b69750a8dcE"(i64* align 8 %elt) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3ptr4read17h355a1efdb3d386f7E(i64* %elt)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: uwtable
define void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h0f5bf3a0ae0f3d9aE"(%"alloc::vec::Vec<u64>"* align 8 %self, { i64, i64 }* align 8 %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64*, align 8
  %2 = alloca { i8*, i32 }, align 8
  %_36 = alloca i8, align 1
  %_27 = alloca %"core::fmt::Arguments", align 8
  %_25 = alloca %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]", align 8
  %_5 = alloca { i64, { i64, i64 } }, align 8
  %high = alloca { i64, i64 }, align 8
  %iterator = alloca { i64, i64 }*, align 8
  store { i64, i64 }* %0, { i64, i64 }** %iterator, align 8
  store i8 1, i8* %_36, align 1
  invoke void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0fdece510b777f9bE"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_5, { i64, i64 }** align 8 %iterator)
          to label %bb1 unwind label %cleanup

bb13:                                             ; preds = %cleanup
  %3 = load i8, i8* %_36, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb12, label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb4, %bb3, %bb10, %bb9, %bb2, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb13

bb1:                                              ; preds = %start
  %10 = bitcast { i64, { i64, i64 } }* %_5 to i64*
  %low = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_5, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8, !range !1, !noundef !2
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %high, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %high, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = bitcast { i64, i64 }* %high to i64*
  %_7 = load i64, i64* %18, align 8, !range !1, !noundef !2
  %19 = icmp eq i64 %_7, 1
  br i1 %19, label %bb2, label %bb9

bb2:                                              ; preds = %bb1
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %high, i32 0, i32 1
  %additional = load i64, i64* %20, align 8
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h06fb4b22af2a8326E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %additional)
          to label %bb3 unwind label %cleanup

bb9:                                              ; preds = %bb1
  invoke void @_ZN4core3fmt9Arguments6new_v117ha3e5cf96ea88afe5E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_27, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc41 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc43 to [0 x { i8*, i64* }]*), i64 0)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  invoke void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_27, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc191 to %"core::panic::location::Location"*)) #15
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb10
  unreachable

bb3:                                              ; preds = %bb2
  %_16 = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_18 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h74d6523b246fbc73E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %21 = getelementptr inbounds i64, i64* %_16, i64 %_18
  store i64* %21, i64** %1, align 8
  %_3.i = load i64*, i64** %1, align 8
  br label %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"

"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit": ; preds = %bb5
  br label %bb6

bb6:                                              ; preds = %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"
  %_22 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %22 = invoke { i64*, i64 } @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop3new17h657db2b924f26b74E(i64* align 8 %_22)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %local_len.0 = extractvalue { i64*, i64 } %22, 0
  %local_len.1 = extractvalue { i64*, i64 } %22, 1
  store i8 0, i8* %_36, align 1
  %_24 = load { i64, i64 }*, { i64, i64 }** %iterator, align 8, !nonnull !2, !align !4, !noundef !2
  %23 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %_25 to i64**
  store i64* %_3.i, i64** %23, align 8
  %24 = getelementptr inbounds %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]", %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %_25, i32 0, i32 1
  %25 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %24, i32 0, i32 0
  store i64* %local_len.0, i64** %25, align 8
  %26 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %24, i32 0, i32 1
  store i64 %local_len.1, i64* %26, align 8
  invoke void @_ZN4core4iter6traits8iterator8Iterator8for_each17h2f7ec01230e30098E({ i64, i64 }* align 8 %_24, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %_25)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  ret void

bb11:                                             ; preds = %bb12, %bb13
  %27 = bitcast { i8*, i32 }* %2 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %32 = insertvalue { i8*, i32 } %31, i32 %30, 1
  resume { i8*, i32 } %32

bb12:                                             ; preds = %bb13
  br label %bb11
}

; Function Attrs: uwtable
define void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf463eb803cac47a3E"(%"alloc::vec::Vec<u64>"* align 8 %self, { i64*, i64* }* align 8 %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64*, align 8
  %2 = alloca { i8*, i32 }, align 8
  %_36 = alloca i8, align 1
  %_27 = alloca %"core::fmt::Arguments", align 8
  %_25 = alloca %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]", align 8
  %_5 = alloca { i64, { i64, i64 } }, align 8
  %high = alloca { i64, i64 }, align 8
  %iterator = alloca { i64*, i64* }*, align 8
  store { i64*, i64* }* %0, { i64*, i64* }** %iterator, align 8
  store i8 1, i8* %_36, align 1
  invoke void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha5597139e85dfe14E"({ i64, { i64, i64 } }* sret({ i64, { i64, i64 } }) %_5, { i64*, i64* }** align 8 %iterator)
          to label %bb1 unwind label %cleanup

bb13:                                             ; preds = %cleanup
  %3 = load i8, i8* %_36, align 1, !range !3, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb12, label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb4, %bb3, %bb10, %bb9, %bb2, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb13

bb1:                                              ; preds = %start
  %10 = bitcast { i64, { i64, i64 } }* %_5 to i64*
  %low = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %_5, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8, !range !1, !noundef !2
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %high, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %high, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = bitcast { i64, i64 }* %high to i64*
  %_7 = load i64, i64* %18, align 8, !range !1, !noundef !2
  %19 = icmp eq i64 %_7, 1
  br i1 %19, label %bb2, label %bb9

bb2:                                              ; preds = %bb1
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %high, i32 0, i32 1
  %additional = load i64, i64* %20, align 8
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h06fb4b22af2a8326E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %additional)
          to label %bb3 unwind label %cleanup

bb9:                                              ; preds = %bb1
  invoke void @_ZN4core3fmt9Arguments6new_v117ha3e5cf96ea88afe5E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_27, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc41 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc43 to [0 x { i8*, i64* }]*), i64 0)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  invoke void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_27, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc191 to %"core::panic::location::Location"*)) #15
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb10
  unreachable

bb3:                                              ; preds = %bb2
  %_16 = invoke i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_18 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h74d6523b246fbc73E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %21 = getelementptr inbounds i64, i64* %_16, i64 %_18
  store i64* %21, i64** %1, align 8
  %_3.i = load i64*, i64** %1, align 8
  br label %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"

"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit": ; preds = %bb5
  br label %bb6

bb6:                                              ; preds = %"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hba9774d4cd581bd4E.exit"
  %_22 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %22 = invoke { i64*, i64 } @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop3new17h657db2b924f26b74E(i64* align 8 %_22)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %local_len.0 = extractvalue { i64*, i64 } %22, 0
  %local_len.1 = extractvalue { i64*, i64 } %22, 1
  store i8 0, i8* %_36, align 1
  %_24 = load { i64*, i64* }*, { i64*, i64* }** %iterator, align 8, !nonnull !2, !align !4, !noundef !2
  %23 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %_25 to i64**
  store i64* %_3.i, i64** %23, align 8
  %24 = getelementptr inbounds %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]", %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %_25, i32 0, i32 1
  %25 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %24, i32 0, i32 0
  store i64* %local_len.0, i64** %25, align 8
  %26 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %24, i32 0, i32 1
  store i64 %local_len.1, i64* %26, align 8
  invoke void @_ZN4core4iter6traits8iterator8Iterator8for_each17h56a7d803fcd4c3a0E({ i64*, i64* }* align 8 %_24, %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %_25)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  ret void

bb11:                                             ; preds = %bb12, %bb13
  %27 = bitcast { i8*, i32 }* %2 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %32 = insertvalue { i8*, i32 } %31, i32 %30, 1
  resume { i8*, i32 } %32

bb12:                                             ; preds = %bb13
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend28_$u7b$$u7b$closure$u7d$$u7d$17h874a05c60fe722efE"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* align 8 %_1, i64 %element) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %_1 to i64**
  %_4 = load i64*, i64** %1, align 8
  call void @_ZN4core3ptr5write17h15b36b7e91bf40fcE(i64* %_4, i64 %element)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %_1 to i64**
  %_7 = load i64*, i64** %2, align 8
  %3 = getelementptr inbounds i64, i64* %_7, i64 1
  store i64* %3, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %_1 to i64**
  store i64* %_3.i, i64** %4, align 8
  %_9 = getelementptr inbounds %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]", %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>>::spec_extend::{closure#0}]"* %_1, i32 0, i32 1
  call void @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17h2471cd9ff78bbd99E({ i64*, i64 }* align 8 %_9, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend28_$u7b$$u7b$closure$u7d$$u7d$17h896e8553fd93c82eE"(%"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* align 8 %_1, i64 %element) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %_1 to i64**
  %_4 = load i64*, i64** %1, align 8
  call void @_ZN4core3ptr5write17h15b36b7e91bf40fcE(i64* %_4, i64 %element)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %_1 to i64**
  %_7 = load i64*, i64** %2, align 8
  %3 = getelementptr inbounds i64, i64* %_7, i64 1
  store i64* %3, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %_1 to i64**
  store i64* %_3.i, i64** %4, align 8
  %_9 = getelementptr inbounds %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]", %"[closure@<alloc::vec::Vec<u64> as alloc::vec::spec_extend::SpecExtend<u64, &mut core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>>::spec_extend::{closure#0}]"* %_1, i32 0, i32 1
  call void @_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17h2471cd9ff78bbd99E({ i64*, i64 }* align 8 %_9, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h438a8e809d02647fE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64*, i64* }* align 8 %iterator) unnamed_addr #1 {
start:
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6afc0ad2bf5f6bd6E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64*, i64* }* align 8 %iterator)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h9792be60e85363cbE"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64, i64 }* align 8 %iterator) unnamed_addr #1 {
start:
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h55c3058f0d609b58E"(%"alloc::vec::Vec<u64>"* sret(%"alloc::vec::Vec<u64>") %0, { i64, i64 }* align 8 %iterator)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h193d62a968d82789E"(%"alloc::vec::Vec<u64>"* align 8 %reference) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::vec::Vec<u64>"**
  store %"alloc::vec::Vec<u64>"* %reference, %"alloc::vec::Vec<u64>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  ret i64* %2
}

; Function Attrs: uwtable
define void @libzahl_realloc(%Zahl* align 1 %a, i64 %size) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 3
  %_4 = load i64, i64* %0, align 1
  %_3 = icmp ult i64 %_4, %size
  br i1 %_3, label %bb1, label %bb3

bb3:                                              ; preds = %bb2, %start
  ret void

bb1:                                              ; preds = %start
  %_7 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hffc6f37656fe65efE"(%"alloc::vec::Vec<u64>"* align 8 %_7, i64 %size, i64 0)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 3
  store i64 %size, i64* %1, align 1
  br label %bb3
}

; Function Attrs: uwtable
define void @zlsh(%Zahl* align 1 %a, %Zahl* align 1 %b, i64 %bits) unnamed_addr #1 {
start:
  %_66 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_62 = alloca { i64, i64 }, align 8
  %_52 = alloca { i64, i64 }, align 8
  %_50 = alloca %"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>", align 8
  %_39 = alloca { i64, i64 }, align 8
  %_37 = alloca %"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>", align 8
  %_34 = alloca { i64, i64 }, align 8
  %carry = alloca i64, align 8
  store i64 0, i64* %carry, align 8
  %_6 = call zeroext i1 @zzero(%Zahl* align 1 %b)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_6, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_10.0 = lshr i64 %bits, 6
  br label %bb4

bb2:                                              ; preds = %bb1
  %0 = bitcast %Zahl* %a to i32*
  store i32 0, i32* %0, align 1
  br label %bb40

bb40:                                             ; preds = %bb39, %bb2
  ret void

bb4:                                              ; preds = %bb3
  %bits1 = and i64 %bits, 63
  %1 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %bits1)
  %_16.0 = extractvalue { i64, i1 } %1, 0
  %_16.1 = extractvalue { i64, i1 } %1, 1
  %2 = call i1 @llvm.expect.i1(i1 %_16.1, i1 false)
  br i1 %2, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  %3 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_21 = load i64, i64* %3, align 1
  %4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_21, i64 %_10.0)
  %_23.0 = extractvalue { i64, i1 } %4, 0
  %_23.1 = extractvalue { i64, i1 } %4, 1
  %5 = call i1 @llvm.expect.i1(i1 %_23.1, i1 false)
  br i1 %5, label %panic2, label %bb6

panic:                                            ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc193 to %"core::panic::location::Location"*)) #15
  unreachable

bb6:                                              ; preds = %bb5
  %6 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_23.0, i64 1)
  %_24.0 = extractvalue { i64, i1 } %6, 0
  %_24.1 = extractvalue { i64, i1 } %6, 1
  %7 = call i1 @llvm.expect.i1(i1 %_24.1, i1 false)
  br i1 %7, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc195 to %"core::panic::location::Location"*)) #15
  unreachable

bb7:                                              ; preds = %bb6
  call void @libzahl_realloc(%Zahl* align 1 %a, i64 %_24.0)
  br label %bb8

panic3:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc195 to %"core::panic::location::Location"*)) #15
  unreachable

bb8:                                              ; preds = %bb7
  %_25 = icmp eq %Zahl* %a, %b
  br i1 %_25, label %bb9, label %bb11

bb11:                                             ; preds = %bb8
  %_38 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %8 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_43 = load i64, i64* %8, align 1
  %9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_10.0, i64 %_43)
  %_44.0 = extractvalue { i64, i1 } %9, 0
  %_44.1 = extractvalue { i64, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_44.1, i1 false)
  br i1 %10, label %panic4, label %bb12

bb9:                                              ; preds = %bb8
  %_33 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %11 = call { [0 x i64]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h3b1e88122a3d9fc5E"(%"alloc::vec::Vec<u64>"* align 8 %_33)
  %_32.0 = extractvalue { [0 x i64]*, i64 } %11, 0
  %_32.1 = extractvalue { [0 x i64]*, i64 } %11, 1
  br label %bb10

bb10:                                             ; preds = %bb9
  %12 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_35 = load i64, i64* %12, align 1
  %13 = bitcast { i64, i64 }* %_34 to i64*
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_34, i32 0, i32 1
  store i64 %_35, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_34, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_34, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11copy_within17h4c3910a700168aadE"([0 x i64]* align 8 %_32.0, i64 %_32.1, i64 %16, i64 %18, i64 %_10.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc197 to %"core::panic::location::Location"*))
  br label %bb17

bb17:                                             ; preds = %bb16, %bb10
  %_51 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %19 = bitcast { i64, i64 }* %_52 to i64*
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_52, i32 0, i32 1
  store i64 %_10.0, i64* %20, align 8
  %_55 = call i64 @_ZN4core4iter7sources6repeat6repeat17hdbf5b88a8b500eb2E(i64 0)
  br label %bb18

bb12:                                             ; preds = %bb11
  %21 = bitcast { i64, i64 }* %_39 to i64*
  store i64 %_10.0, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_39, i32 0, i32 1
  store i64 %_44.0, i64* %22, align 8
  %_49 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 4
  %23 = call { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd777101b3d0e6ba3E"(%"alloc::vec::Vec<u64>"* align 8 %_49)
  %_48.0 = extractvalue { [0 x i64]*, i64 } %23, 0
  %_48.1 = extractvalue { [0 x i64]*, i64 } %23, 1
  br label %bb13

panic4:                                           ; preds = %bb11
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc199 to %"core::panic::location::Location"*)) #15
  unreachable

bb13:                                             ; preds = %bb12
  %24 = call { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1b447e272cb0c9cdE"([0 x i64]* align 8 %_48.0, i64 %_48.1)
  %_46.0 = extractvalue { i64*, i64* } %24, 0
  %_46.1 = extractvalue { i64*, i64* } %24, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  %25 = call { i64*, i64* } @_ZN4core4iter6traits8iterator8Iterator6cloned17h2a823b4660008c44E(i64* %_46.0, i64* %_46.1)
  %_45.0 = extractvalue { i64*, i64* } %25, 0
  %_45.1 = extractvalue { i64*, i64* } %25, 1
  br label %bb15

bb15:                                             ; preds = %bb14
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_39, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_39, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6splice17hd7bf371d89211219E"(%"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* sret(%"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>") %_37, %"alloc::vec::Vec<u64>"* align 8 %_38, i64 %27, i64 %29, i64* %_45.0, i64* %_45.1)
  br label %bb16

bb16:                                             ; preds = %bb15
  call void @"_ZN4core3ptr133drop_in_place$LT$alloc..vec..splice..Splice$LT$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$17h4ba1df2db6e5ffe1E"(%"alloc::vec::splice::Splice<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<u64>>>"* %_37)
  br label %bb17

bb18:                                             ; preds = %bb17
  %30 = call { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator4take17he3c65c0263a49a3bE(i64 %_55, i64 %_10.0)
  %_54.0 = extractvalue { i64, i64 } %30, 0
  %_54.1 = extractvalue { i64, i64 } %30, 1
  br label %bb19

bb19:                                             ; preds = %bb18
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_52, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_52, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6splice17h107286da2c650633E"(%"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* sret(%"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>") %_50, %"alloc::vec::Vec<u64>"* align 8 %_51, i64 %32, i64 %34, i64 %_54.0, i64 %_54.1)
  br label %bb20

bb20:                                             ; preds = %bb19
  call void @"_ZN4core3ptr141drop_in_place$LT$alloc..vec..splice..Splice$LT$core..iter..adapters..take..Take$LT$core..iter..sources..repeat..Repeat$LT$u64$GT$$GT$$GT$$GT$17h68c9650c81b102ebE"(%"alloc::vec::splice::Splice<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<u64>>>"* %_50)
  br label %bb21

bb21:                                             ; preds = %bb20
  %35 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_57 = load i64, i64* %35, align 1
  %36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_57, i64 %_10.0)
  %_59.0 = extractvalue { i64, i1 } %36, 0
  %_59.1 = extractvalue { i64, i1 } %36, 1
  %37 = call i1 @llvm.expect.i1(i1 %_59.1, i1 false)
  br i1 %37, label %panic5, label %bb22

bb22:                                             ; preds = %bb21
  %38 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  store i64 %_59.0, i64* %38, align 1
  %39 = icmp eq i64 %bits1, 0
  br i1 %39, label %bb38, label %bb23

panic5:                                           ; preds = %bb21
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc201 to %"core::panic::location::Location"*)) #15
  unreachable

bb38:                                             ; preds = %bb37, %bb29, %bb22
  %_92 = call i32 @zsignum(%Zahl* align 1 %b)
  br label %bb39

bb23:                                             ; preds = %bb22
  %40 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_64 = load i64, i64* %40, align 1
  %41 = bitcast { i64, i64 }* %_62 to i64*
  store i64 %_10.0, i64* %41, align 8
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_62, i32 0, i32 1
  store i64 %_64, i64* %42, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_62, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_62, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8918a649cea5b0e9E"(i64 %44, i64 %46)
  %_61.0 = extractvalue { i64, i64 } %47, 0
  %_61.1 = extractvalue { i64, i64 } %47, 1
  br label %bb24

bb24:                                             ; preds = %bb23
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0
  store i64 %_61.0, i64* %48, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1
  store i64 %_61.1, i64* %49, align 8
  br label %bb25

bb25:                                             ; preds = %bb34, %bb24
  %50 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb7e4fb03610a387aE"({ i64, i64 }* align 8 %iter)
  store { i64, i64 } %50, { i64, i64 }* %_66, align 8
  br label %bb26

bb26:                                             ; preds = %bb25
  %51 = bitcast { i64, i64 }* %_66 to i64*
  %_69 = load i64, i64* %51, align 8, !range !1, !noundef !2
  switch i64 %_69, label %bb28 [
    i64 0, label %bb29
    i64 1, label %bb27
  ]

bb28:                                             ; preds = %bb26
  unreachable

bb29:                                             ; preds = %bb26
  %_87 = load i64, i64* %carry, align 8
  %52 = icmp eq i64 %_87, 0
  br i1 %52, label %bb38, label %bb35

bb27:                                             ; preds = %bb26
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_66, i32 0, i32 1
  %i = load i64, i64* %53, align 8
  %_73 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_72 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1e4b6d8d94b641a4E"(%"alloc::vec::Vec<u64>"* align 8 %_73, i64 %i, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc203 to %"core::panic::location::Location"*))
  br label %bb30

bb30:                                             ; preds = %bb27
  %_71 = load i64, i64* %_72, align 8
  %54 = and i64 %_16.0, -64
  %_76.1 = icmp ne i64 %54, 0
  %55 = and i64 %_16.0, 63
  %_76.0 = lshr i64 %_71, %55
  %56 = call i1 @llvm.expect.i1(i1 %_76.1, i1 false)
  br i1 %56, label %panic6, label %bb31

bb31:                                             ; preds = %bb30
  %_79 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_78 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h571f269440e94725E"(%"alloc::vec::Vec<u64>"* align 8 %_79, i64 %i, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc205 to %"core::panic::location::Location"*))
  br label %bb32

panic6:                                           ; preds = %bb30
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([36 x i8]* @str.4 to [0 x i8]*), i64 36, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc203 to %"core::panic::location::Location"*)) #15
  unreachable

bb32:                                             ; preds = %bb31
  %57 = load i64, i64* %_78, align 8
  %58 = and i64 %bits1, -64
  %_81.1 = icmp ne i64 %58, 0
  %59 = and i64 %bits1, 63
  %_81.0 = shl i64 %57, %59
  %60 = call i1 @llvm.expect.i1(i1 %_81.1, i1 false)
  br i1 %60, label %panic7, label %bb33

bb33:                                             ; preds = %bb32
  store i64 %_81.0, i64* %_78, align 8
  %_82 = load i64, i64* %carry, align 8
  %_84 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_83 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h571f269440e94725E"(%"alloc::vec::Vec<u64>"* align 8 %_84, i64 %i, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc207 to %"core::panic::location::Location"*))
  br label %bb34

panic7:                                           ; preds = %bb32
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.5 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc205 to %"core::panic::location::Location"*)) #15
  unreachable

bb34:                                             ; preds = %bb33
  %61 = load i64, i64* %_83, align 8
  %62 = or i64 %61, %_82
  store i64 %62, i64* %_83, align 8
  store i64 %_76.0, i64* %carry, align 8
  br label %bb25

bb35:                                             ; preds = %bb29
  %_89 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_90 = load i64, i64* %carry, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h2bb82a49bcebec10E"(%"alloc::vec::Vec<u64>"* align 8 %_89, i64 %_90)
  br label %bb36

bb36:                                             ; preds = %bb35
  %63 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %64 = load i64, i64* %63, align 1
  %65 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 1)
  %_91.0 = extractvalue { i64, i1 } %65, 0
  %_91.1 = extractvalue { i64, i1 } %65, 1
  %66 = call i1 @llvm.expect.i1(i1 %_91.1, i1 false)
  br i1 %66, label %panic8, label %bb37

bb37:                                             ; preds = %bb36
  %67 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  store i64 %_91.0, i64* %67, align 1
  br label %bb38

panic8:                                           ; preds = %bb36
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc209 to %"core::panic::location::Location"*)) #15
  unreachable

bb39:                                             ; preds = %bb38
  %68 = bitcast %Zahl* %a to i32*
  store i32 %_92, i32* %68, align 1
  br label %bb40
}

; Function Attrs: uwtable
define zeroext i1 @zzero(%Zahl* align 1 %b) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_2 = load i64, i64* %0, align 1
  %1 = icmp eq i64 %_2, 0
  ret i1 %1
}

; Function Attrs: uwtable
define i32 @zsignum(%Zahl* align 1 %b) unnamed_addr #1 {
start:
  %0 = alloca i32, align 4
  %1 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_2 = load i64, i64* %1, align 1
  %2 = icmp eq i64 %_2, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i32 0, i32* %0, align 4
  br label %bb3

bb2:                                              ; preds = %start
  %3 = bitcast %Zahl* %b to i32*
  %4 = load i32, i32* %3, align 1
  store i32 %4, i32* %0, align 4
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %5 = load i32, i32* %0, align 4
  ret i32 %5
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #9

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

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index29slice_end_index_overflow_fail17hd9f8613ba6d0623fE(%"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index31slice_start_index_overflow_fail17h9fb6b8af19a48ee5E(%"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: noreturn uwtable
declare void @_ZN4core9panicking19assert_failed_inner17h232935602d3588d9E(i8, {}* align 1, [3 x i64]* align 8, {}* align 1, [3 x i64]* align 8, %"core::option::Option<core::fmt::Arguments>"*, %"core::panic::location::Location"* align 8) unnamed_addr #13

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #14

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #14

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #14

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #14

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #3

; Function Attrs: noreturn uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() unnamed_addr #13

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h29a45ea17f28be8eE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #11

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { cold uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nosync nounwind readnone willreturn }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #13 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #14 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #15 = { noreturn }
attributes #16 = { noinline }
attributes #17 = { noinline noreturn nounwind }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i64 0, i64 2}
!2 = !{}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}
!5 = !{i64 0, i64 -9223372036854775807}
!6 = !{i64 0, i64 -9223372036854775806}
!7 = !{i8 -1, i8 2}
!8 = !{i64 1, i64 -9223372036854775807}
!9 = !{i64 1, i64 0}
!10 = !{i64 0, i64 3}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zlsh.rs.bc", hash: (3725843538, 3055027642, 2629178635, 1451367677, 1277268294))
^1 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h636fec5044e5aa43E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^14), (callee: ^311))))) ; guid = 34130476600859604
^2 = gv: (name: "alloc178", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 63778881789060551
^3 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17he7106af8f19e595fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 90726227400388093
^4 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hef7c1f3e2d97b812E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 319254666274561896
^5 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h7c4caffa3be1f2ddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^105))))) ; guid = 434477480638387784
^6 = gv: (name: "alloc156", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 436805283323906120
^7 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd777101b3d0e6ba3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^197), (callee: ^324))))) ; guid = 473555272683659994
^8 = gv: (name: "alloc163", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^186)))) ; guid = 556936953020007048
^9 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h0995ce11762e281aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^31))))) ; guid = 600248599547055324
^10 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^11 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17h4207c5fa08baa585E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^193), (callee: ^270))))) ; guid = 621778587382811959
^12 = gv: (name: "_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE") ; guid = 682884734678583306
^13 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hb6bae26eda8e93eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^282))))) ; guid = 689959151695192149
^14 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h798ab129177cbe39E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 114, calls: ((callee: ^255), (callee: ^158), (callee: ^139), (callee: ^285), (callee: ^41), (callee: ^29), (callee: ^258), (callee: ^99), (callee: ^168), (callee: ^86), (callee: ^134), (callee: ^219)), refs: (^307, ^278)))) ; guid = 705021137589335386
^15 = gv: (name: "alloc147", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 880515906955524625
^16 = gv: (name: "_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h9ca20890d3838bdfE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 912449253306459119
^17 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^18 = gv: (name: "alloc183", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 970297543217507167
^19 = gv: (name: "_ZN4core3ptr248drop_in_place$LT$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1f9b6d2a991eaa41E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^296))))) ; guid = 982758306124733261
^20 = gv: (name: "alloc157", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 991232818812289057
^21 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^22 = gv: (name: "alloc148", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 1074025320621611573
^23 = gv: (name: "_ZN4core10intrinsics11write_bytes17h1ed791f56c447e39E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1198638788207694579
^24 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hd02c5eff9c078171E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^27), (callee: ^270))))) ; guid = 1233147988214497049
^25 = gv: (name: "alloc152", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^263)))) ; guid = 1333068131056372326
^26 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^27 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hcccc86cdcc8fe55dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^288))))) ; guid = 1566409742466531033
^28 = gv: (name: "alloc189", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1610074569120343733
^29 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9eff75c1714e6ae9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^175))))) ; guid = 1694978697978337033
^30 = gv: (name: "_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hfd1c2585084e97f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^155))))) ; guid = 1702902635450235912
^31 = gv: (name: "_ZN4core5slice4iter16IterMut$LT$T$GT$3new17hf22ccf298d4f9e05E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42, calls: ((callee: ^75), (callee: ^299), (callee: ^207))))) ; guid = 1778958379483785007
^32 = gv: (name: "_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17h6433f96bc4f219d6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^257))))) ; guid = 1807757211792843779
^33 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h163f36a556067b90E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 1863233246224879087
^34 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdbd44275d4d686f0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^14), (callee: ^311))))) ; guid = 1889273017621318191
^35 = gv: (name: "_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE") ; guid = 1902152299201211586
^36 = gv: (name: "_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E") ; guid = 1967081855160219432
^37 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h961c2f8de70600a8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^346)), refs: (^308)))) ; guid = 2007323775473396208
^38 = gv: (name: "_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6afc0ad2bf5f6bd6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 55, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^171), (callee: ^48), (callee: ^57), (callee: ^336), (callee: ^333), (callee: ^361), (callee: ^373)), refs: (^308, ^355, ^133, ^22)))) ; guid = 2068151092761790995
^39 = gv: (name: "alloc191", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^167)))) ; guid = 2088537827793691163
^40 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h34655f54910eae96E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^5))))) ; guid = 2122454947561589964
^41 = gv: (name: "_ZN4core3cmp3max17hba5c91fa02894991E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^70))))) ; guid = 2149439587736068667
^42 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^283, ^213)))) ; guid = 2182137456769217569
^43 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h8f23828e99b985a3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^76))))) ; guid = 2280782144845764454
^44 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3b58e9b0c6f24721E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 2296309620899147502
^45 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17hc61ed44b2535bb66E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 2364398904005598292
^46 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17hc6dbd60ead5829cfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 2428845784857365459
^47 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h2bb82a49bcebec10E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 55, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^271), (callee: ^1), (callee: ^68)), refs: (^308)))) ; guid = 2430657430766339727
^48 = gv: (name: "_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17ha127bc49f1678515E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^40))))) ; guid = 2456686530782645210
^49 = gv: (name: "alloc180", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 2507524290004674586
^50 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^51 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17heef4d8b69c845379E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2590012647818659568
^52 = gv: (name: "_ZN81_$LT$alloc..vec..splice..Splice$LT$I$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77db0f3ffd1bcad6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 88, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^360), (callee: ^124), (callee: ^95), (callee: ^89), (callee: ^240), (callee: ^83), (callee: ^100), (callee: ^77), (callee: ^267), (callee: ^260), (callee: ^325), (callee: ^372), (callee: ^373), (callee: ^309)), refs: (^308)))) ; guid = 2639928653205166606
^53 = gv: (name: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h5906cf3d266dbfbcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 27, calls: ((callee: ^170))))) ; guid = 2659403467643124225
^54 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h2271225a68686aa6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^358))))) ; guid = 2705878192552701826
^55 = gv: (name: "_ZN4core3ptr157drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u64$C$alloc..alloc..Global$GT$$GT$17h3ee068f77c56d1ecE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^266))))) ; guid = 2719032345348294813
^56 = gv: (name: "alloc158", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2741573722544458449
^57 = gv: (name: "_ZN4core3fmt9Arguments6new_v117ha3e5cf96ea88afe5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^57), (callee: ^336)), refs: (^355, ^208, ^294)))) ; guid = 2875695458238776058
^58 = gv: (name: "_ZN4core5slice5index31slice_start_index_overflow_fail17h9fb6b8af19a48ee5E") ; guid = 3017212603691262100
^59 = gv: (name: "_ZN4core3cmp3Ord3min17h596bc0b8740aabd7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^16)), refs: (^308)))) ; guid = 3031313763391367546
^60 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17had3781665bf2abd9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^214))))) ; guid = 3042052298433073071
^61 = gv: (name: "_ZN4core4iter7sources6repeat6repeat17hdbf5b88a8b500eb2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 3045467828557031266
^62 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h65f2e1013bc612d5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^46), (callee: ^34))))) ; guid = 3240317386201299330
^63 = gv: (name: "alloc153", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3256470096171884076
^64 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8918a649cea5b0e9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 3410266635794089885
^65 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h72d61b0cc8fe5484E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^111))))) ; guid = 3447200333403174477
^66 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h06fb4b22af2a8326E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^62))))) ; guid = 3462709407667090741
^67 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator4fold17hef711757b3f3b51eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 49, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^354), (callee: ^248)), refs: (^308)))) ; guid = 3610691276495743350
^68 = gv: (name: "_ZN4core3ptr5write17h15b36b7e91bf40fcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 3839979426501096377
^69 = gv: (name: "_ZN4core3mem4drop17hdf796f89cc5237dbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3841421208894234325
^70 = gv: (name: "_ZN4core3cmp3Ord3max17haf4aa5821043b74bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^16)), refs: (^308)))) ; guid = 3947900155864172530
^71 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hdfeb6485dd485402E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 3995219876571059194
^72 = gv: (name: "_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda01c1178cf63315E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^87))))) ; guid = 4057596027107321557
^73 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h63ff5415347253efE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^204)), refs: (^308)))) ; guid = 4149518842345822466
^74 = gv: (name: "_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend28_$u7b$$u7b$closure$u7d$$u7d$17h874a05c60fe722efE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^68), (callee: ^316))))) ; guid = 4233167325635470026
^75 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hfce5af5b490d81a7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 4346114486642697891
^76 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17hc585ff888641763eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^305), (callee: ^11), (callee: ^113), (callee: ^166), (callee: ^357), (callee: ^160), (callee: ^317), (callee: ^226), (callee: ^302)), refs: (^284)))) ; guid = 4359796890899074184
^77 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator7collect17h0f10ad3435f5859fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^163))))) ; guid = 4399378596195646713
^78 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8f05377fc4d425e3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^224))))) ; guid = 4405051810112961724
^79 = gv: (name: "alloc193", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^201)))) ; guid = 4419408690592750077
^80 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^344)))) ; guid = 4556361354952231614
^81 = gv: (name: "alloc207", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^201)))) ; guid = 4564339486875270805
^82 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^83 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator6by_ref17hba63dafe221223aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 4695791636660636133
^84 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17he4de12af940ac85fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^223))))) ; guid = 4812786249713164721
^85 = gv: (name: "alloc128", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4836905639834178642
^86 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hbd3b67fb7bd25fc1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 4900779323186464850
^87 = gv: (name: "_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcb0ae38f736c2c46E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^310), (callee: ^165))))) ; guid = 4920977032320596421
^88 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator7collect17h93231e8b1d0e395eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^340))))) ; guid = 4923658341117033809
^89 = gv: (name: "_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17he05773dd746b7f5eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, calls: ((callee: ^95), (callee: ^271), (callee: ^114), (callee: ^289), (callee: ^157), (callee: ^366), (callee: ^68))))) ; guid = 4943903638013374172
^90 = gv: (name: "_ZN91_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$11start_bound17h186f3a9aed19cc75E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 4972502514208164634
^91 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17ha1c15ecebb058b37E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 5132287728104265624
^92 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb6df292ad97f565cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^94))))) ; guid = 5394293583127572672
^93 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 5436943481773832288
^94 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h6b0285f81f763503E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 5457022505438806679
^95 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_mut17h94a07f837a5b7ca6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^349))))) ; guid = 5524790289381162570
^96 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17hc0a2c61b7d6615a3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 5627000204934025468
^97 = gv: (name: "_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h29a45ea17f28be8eE") ; guid = 5688815861685152092
^98 = gv: (name: "_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E") ; guid = 5691937269951177933
^99 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2e7aba5d9856bcbdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^258), (callee: ^37), (callee: ^152), (callee: ^151)), refs: (^49)))) ; guid = 5718865432131713697
^100 = gv: (name: "_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h39cc00f9db221524E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37, calls: ((callee: ^95), (callee: ^62), (callee: ^197), (callee: ^271), (callee: ^156))))) ; guid = 5842277439052381290
^101 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h74d6523b246fbc73E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 5846937056174620906
^102 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$9allocator17h4c6bea7b0350910eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^342))))) ; guid = 5904964817759279675
^103 = gv: (name: "_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h3b1e88122a3d9fc5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^271), (callee: ^114))))) ; guid = 5953397035488912595
^104 = gv: (name: "_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17hc0f7073862311c63E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 6002651552036583263
^105 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h6cf40bcafd9167c7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 127, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^258), (callee: ^73), (callee: ^305), (callee: ^12), (callee: ^177), (callee: ^43), (callee: ^312), (callee: ^109), (callee: ^371), (callee: ^150), (callee: ^297)), refs: (^308)))) ; guid = 6132634106736273249
^106 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h347f0078448b69c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^210)), refs: (^138, ^63)))) ; guid = 6134651997642542439
^107 = gv: (name: "_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9805297b2723d811E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^239), (callee: ^55), (callee: ^373)), refs: (^308)))) ; guid = 6161168810032249575
^108 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h6da986bf6b225047E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 6176188189378375280
^109 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hf4487885f60c386dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^44), (callee: ^207))))) ; guid = 6218132342444262978
^110 = gv: (name: "_ZN81_$LT$alloc..vec..splice..Splice$LT$I$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h634f24b90f3cf657E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 88, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^360), (callee: ^124), (callee: ^95), (callee: ^254), (callee: ^280), (callee: ^341), (callee: ^100), (callee: ^88), (callee: ^267), (callee: ^260), (callee: ^325), (callee: ^372), (callee: ^373), (callee: ^375)), refs: (^308)))) ; guid = 6221324475846103957
^111 = gv: (name: "_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend28_$u7b$$u7b$closure$u7d$$u7d$17h896e8553fd93c82eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^68), (callee: ^316))))) ; guid = 6250856141865377141
^112 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17h0b23c66b0538d14fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^297)), refs: (^308)))) ; guid = 6263949723140071898
^113 = gv: (name: "_ZN5alloc5alloc5alloc17h29d9a259c3d0c6d2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^305), (callee: ^193), (callee: ^211))))) ; guid = 6268715252232542181
^114 = gv: (name: "_ZN4core5slice3raw18from_raw_parts_mut17h0a3c7ac3cfb7ea2aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^129))))) ; guid = 6334671719205328829
^115 = gv: (name: "_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h9792be60e85363cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^230))))) ; guid = 6353166199944405452
^116 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^117 = gv: (name: "_ZN103_$LT$core..iter..sources..repeat..Repeat$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb3eb50bee511d127E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15))) ; guid = 6405032937587831547
^118 = gv: (name: "_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h3604d3b69750a8dcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^339))))) ; guid = 6431241103377516443
^119 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^120 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6577970379779253964
^121 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$8as_slice17hd50136211af01830E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, calls: ((callee: ^150), (callee: ^180), (callee: ^331), (callee: ^324))))) ; guid = 6585535043519832043
^122 = gv: (name: "_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h571f269440e94725E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^103), (callee: ^78)), refs: (^308)))) ; guid = 6628813663852274601
^123 = gv: (name: "_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d03aa3b22f48d33E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 49, calls: ((callee: ^95), (callee: ^101), (callee: ^221), (callee: ^197), (callee: ^271), (callee: ^156))))) ; guid = 6635158591543674248
^124 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each17h506233f2145f1973E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^200), (callee: ^67)), refs: (^308)))) ; guid = 6726851094894989453
^125 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6splice17hd7bf371d89211219E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 50, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^217), (callee: ^362), (callee: ^286), (callee: ^373)), refs: (^308)))) ; guid = 6730660944623027826
^126 = gv: (name: "alloc205", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^201)))) ; guid = 6751713053969362102
^127 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17h36f140a2e92eaf7cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^207))))) ; guid = 6763047675055635919
^128 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdbc9ce3bd9624f09E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^271), (callee: ^129))))) ; guid = 6807910299069911361
^129 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h392b4b1d8367a6b9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^365))))) ; guid = 6827033448182367657
^130 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^131 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h369c81d653370301E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^255))))) ; guid = 6850526390762751392
^132 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h214ce92f03489d29E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^205), (callee: ^196), (callee: ^249), (callee: ^287))))) ; guid = 6889758264557099925
^133 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^120)))) ; guid = 6900966221511070410
^134 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hcb020f10d55df1f0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^109), (callee: ^150), (callee: ^297))))) ; guid = 6989372007118579067
^135 = gv: (name: "_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0fdece510b777f9bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^240))))) ; guid = 7036050602008885152
^136 = gv: (name: "_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop3new17h657db2b924f26b74E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 13))) ; guid = 7043987508934008048
^137 = gv: (name: "alloc185", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7044670742199425135
^138 = gv: (name: "alloc155", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^191)))) ; guid = 7058040092764772186
^139 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17hecf594c0334c6cf3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34))) ; guid = 7144116516006308982
^140 = gv: (name: "_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1e4b6d8d94b641a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^7), (callee: ^188)), refs: (^308)))) ; guid = 7169950591405427885
^141 = gv: (name: "str.4", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7176237241529103379
^142 = gv: (name: "_ZN4core3ptr133drop_in_place$LT$alloc..vec..splice..Splice$LT$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$17h4ba1df2db6e5ffe1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^110), (callee: ^286), (callee: ^373)), refs: (^308)))) ; guid = 7190421628310667893
^143 = gv: (name: "alloc172", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^292)))) ; guid = 7313718887486362300
^144 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2f997382ee8474d1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 7352030019085502454
^145 = gv: (name: "_ZN4core3ptr150drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u64$C$alloc..alloc..Global$GT$$GT$17hd0b5db3f8d10d5b8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^123))))) ; guid = 7354675246345492944
^146 = gv: (name: "_ZN4core10intrinsics11write_bytes17hb619019bf20dea26E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 7359655430972526898
^147 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7429903524027139000
^148 = gv: (name: "_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcf0b3c295bf1063E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^366))))) ; guid = 7456498848143833727
^149 = gv: (name: "_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1221557c8a95d414E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 110, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^176), (callee: ^290), (callee: ^150), (callee: ^180), (callee: ^331), (callee: ^95), (callee: ^145), (callee: ^121), (callee: ^3), (callee: ^271), (callee: ^106), (callee: ^129), (callee: ^373), (callee: ^101), (callee: ^221), (callee: ^251)), refs: (^308, ^355)))) ; guid = 7539768880383831312
^150 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7a39eda093e669faE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 7602106059079807823
^151 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf294684df75f71b7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^24))))) ; guid = 7658660986283324417
^152 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h42cc3a76d6969522E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^364), (callee: ^71))))) ; guid = 7770632709784668237
^153 = gv: (name: "alloc195", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^201)))) ; guid = 7851458136879500974
^154 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h6626084540b0679dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 7905044456214846976
^155 = gv: (name: "_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17hbc1f45ff66abbee6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 7970535124706495106
^156 = gv: (name: "_ZN4core10intrinsics4copy17he9a56c2125e60031E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 7987875097024368378
^157 = gv: (name: "_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1575b91de992716fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^150), (callee: ^299), (callee: ^207))))) ; guid = 8003543201574317724
^158 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h073f9849c143df64E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 8154256500715948627
^159 = gv: (name: "_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4next17hfa8b6095ac3f8e37E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^182))))) ; guid = 8174398365479946025
^160 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h3d60cbc6440ac409E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 8205955690980457885
^161 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79dfc4f52a9ef831E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^253))))) ; guid = 8209176909417334963
^162 = gv: (name: "_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6zeroed17h7a62c51541c182a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^146))))) ; guid = 8254357281356054544
^163 = gv: (name: "_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h72697105d5fd5220E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^33), (callee: ^115))))) ; guid = 8283402771197048596
^164 = gv: (name: "alloc197", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^201)))) ; guid = 8305984827703139484
^165 = gv: (name: "_ZN4core6option19Option$LT$$RF$T$GT$6cloned17h0bbfcf1b6fceac98E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 27, calls: ((callee: ^182))))) ; guid = 8365147891448042982
^166 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17h2be197d3914171c1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^305), (callee: ^193), (callee: ^26))))) ; guid = 8367399215144216207
^167 = gv: (name: "alloc190", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8396730461268834740
^168 = gv: (name: "_ZN5alloc7raw_vec11finish_grow17h0059efbaf33a9819E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 117, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^199), (callee: ^334), (callee: ^305), (callee: ^203), (callee: ^177), (callee: ^265), (callee: ^13), (callee: ^193), (callee: ^43), (callee: ^261), (callee: ^84)), refs: (^198, ^2)))) ; guid = 8426311948275462677
^169 = gv: (name: "_ZN4core6option15Option$LT$T$GT$3map17hc380c0a558e65177E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37, calls: ((callee: ^118))))) ; guid = 8431649190768454799
^170 = gv: (name: "_ZN4core5slice5index5range28_$u7b$$u7b$closure$u7d$$u7d$17h4a061c969f9c7b19E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^58)), refs: (^8)))) ; guid = 8435086919236298958
^171 = gv: (name: "_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha5597139e85dfe14E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^280))))) ; guid = 8510068094596051991
^172 = gv: (name: "_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h59193cb2a5f6fc44E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^180), (callee: ^106))))) ; guid = 8598775823024724455
^173 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h16224feea74bd347E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^353))))) ; guid = 8616883660936779522
^174 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h4f0cf08a252bbe29E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^74))))) ; guid = 8764676998687671685
^175 = gv: (name: "_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h22e51980fce2d37aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 8787103348774811874
^176 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1b447e272cb0c9cdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^335))))) ; guid = 8795873544263013970
^177 = gv: (name: "_ZN5alloc7raw_vec11alloc_guard17he7c8ad98e27ad642E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 32, calls: ((callee: ^255))))) ; guid = 8839474173480882307
^178 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb1274a140a98129bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 8843457465082462888
^179 = gv: (name: "str.3", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8856734559094362537
^180 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h7f7e8843fa1cf15bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 8931306085723193321
^181 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hffc6f37656fe65efE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^101), (callee: ^251), (callee: ^227)), refs: (^308)))) ; guid = 8942523769583288535
^182 = gv: (name: "_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$u64$GT$5clone17h7f164ea357222821E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 8945260260336832153
^183 = gv: (name: "_ZN5alloc5alloc7realloc17hd8f4f7ee22f02e53E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^305), (callee: ^193), (callee: ^323))))) ; guid = 9162671117595107222
^184 = gv: (name: "_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h438a8e809d02647fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^38))))) ; guid = 9170258564805450440
^185 = gv: (name: "_ZN4core3ptr4read17h717dceec1f6dd7a6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32))) ; guid = 9192811001930837054
^186 = gv: (name: "alloc162", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9286686725055711194
^187 = gv: (name: "libzahl_realloc", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^181))))) ; guid = 9296568666965528725
^188 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h6595f7e228cdf65bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^303))))) ; guid = 9300535759866441228
^189 = gv: (name: "_ZN5alloc5alloc7dealloc17hfb380eae2ed94d06E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^305), (callee: ^193), (callee: ^82))))) ; guid = 9303706088861257618
^190 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hac8610c1422ded95E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 9317555047554607101
^191 = gv: (name: "alloc154", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9320078943794462852
^192 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator4fold17h907a2d54d003cc94E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 59, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^72), (callee: ^174), (callee: ^281), (callee: ^373)), refs: (^308)))) ; guid = 9380099356505033422
^193 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h2838213951b77698E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^60), (callee: ^337))))) ; guid = 9422788057332034667
^194 = gv: (name: "_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbbb189df500a05d4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 57, calls: ((callee: ^339), (callee: ^162))))) ; guid = 9444697254293312883
^195 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each4call17h2cd46b7f559946ffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 9456150548904497895
^196 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hdddf026b5086cf3cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 9500731043417874601
^197 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h2b6ba0d2e8922c4cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^54), (callee: ^299))))) ; guid = 9501981212198961120
^198 = gv: (name: "alloc176", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 9626685838956370082
^199 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h5fa137ee12a47e20E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^209))))) ; guid = 9656585218499788092
^200 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each4call17h699cf68bf93ab492E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 9695632813358231137
^201 = gv: (name: "alloc208", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9714822091775068641
^202 = gv: (name: "_ZN4core3ptr4read17h37bae00cb83fddf5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 9749193289214348471
^203 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h882bca9521e1618dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^175))))) ; guid = 9781914478598211660
^204 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h0604376a9acb9b97E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^127), (callee: ^252))))) ; guid = 9813193607919592024
^205 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h007c06ed80be614aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 9983952836944460104
^206 = gv: (name: "alloc129", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^85)))) ; guid = 10074438769722152368
^207 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h47e1858e3578403aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 10076892418022691531
^208 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^343)))) ; guid = 10154846503139745889
^209 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17ha74fa823ee0ac032E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 10241717689199003049
^210 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^211 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^212 = gv: (name: "alloc203", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^201)))) ; guid = 10345805796003081334
^213 = gv: (name: "_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h5b56645ad4e0d471E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 10387920233025118121
^214 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hb4ac2e3ca966372bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 10470920102548836199
^215 = gv: (name: "alloc174", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^292)))) ; guid = 10553099731645516356
^216 = gv: (name: "alloc201", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^201)))) ; guid = 10631121027125532939
^217 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17hd8fcf8d5b35e4bc3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 59, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^101), (callee: ^350), (callee: ^221), (callee: ^271), (callee: ^114), (callee: ^176), (callee: ^236)), refs: (^308, ^232)))) ; guid = 10632247008231425277
^218 = gv: (name: "_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17hf547ee5724bc9901E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 28, calls: ((callee: ^304))))) ; guid = 10704289693059279720
^219 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h38ca7156e695bdecE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^282))))) ; guid = 10796910659900302546
^220 = gv: (name: "_ZN4core3ptr141drop_in_place$LT$alloc..vec..splice..Splice$LT$core..iter..adapters..take..Take$LT$core..iter..sources..repeat..Repeat$LT$u64$GT$$GT$$GT$$GT$17h68c9650c81b102ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^52), (callee: ^286), (callee: ^373)), refs: (^308)))) ; guid = 10867738885819657124
^221 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h8a1c9676e8e6bb59E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 10903163044538847110
^222 = gv: (name: "_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h599c2612415919aaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^36), (callee: ^98), (callee: ^233), (callee: ^21), (callee: ^367))))) ; guid = 10955873396551839840
^223 = gv: (name: "_ZN5alloc5alloc6Global9grow_impl17h2dfe74846b11dbf7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 134, calls: ((callee: ^305), (callee: ^76), (callee: ^193), (callee: ^288), (callee: ^183), (callee: ^357), (callee: ^160), (callee: ^317), (callee: ^302), (callee: ^226), (callee: ^23), (callee: ^319), (callee: ^376), (callee: ^96), (callee: ^262)), refs: (^143, ^215)))) ; guid = 10997844356223280694
^224 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5e206b37fdba6e4cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^368))))) ; guid = 11084031515270568631
^225 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h33d95dceeef77553E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 11183483232629921220
^226 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hf6536e1de9644067E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^288), (callee: ^272), (callee: ^190))))) ; guid = 11224859330620973437
^227 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h27320a33b538f2e7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 103, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^66), (callee: ^271), (callee: ^101), (callee: ^136), (callee: ^64), (callee: ^296), (callee: ^332), (callee: ^159), (callee: ^68), (callee: ^316), (callee: ^274), (callee: ^373)), refs: (^308)))) ; guid = 11263576166320260751
^228 = gv: (name: "_ZN4core3ptr5write17hf88b093efb1b26bcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 11264523661939430349
^229 = gv: (name: "_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h20bf3cea0bb00e9aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^310), (callee: ^169))))) ; guid = 11375191489595341423
^230 = gv: (name: "_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h55c3058f0d609b58E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 55, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^135), (callee: ^48), (callee: ^57), (callee: ^336), (callee: ^318), (callee: ^361), (callee: ^373)), refs: (^308, ^355, ^133, ^22)))) ; guid = 11390281847176369547
^231 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6splice17h107286da2c650633E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 50, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^217), (callee: ^178), (callee: ^286), (callee: ^373)), refs: (^308)))) ; guid = 11430425901418021404
^232 = gv: (name: "alloc168", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^330)))) ; guid = 11681332268623488519
^233 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E") ; guid = 11743839634310749277
^234 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h485328733def4862E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^315))))) ; guid = 11744839347130463632
^235 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each17h2f7ec01230e30098E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^321), (callee: ^328)), refs: (^308)))) ; guid = 11789693042396509383
^236 = gv: (name: "_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h193d62a968d82789E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 11867478934844131518
^237 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17hea2d5f800a2a97b2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^241), (callee: ^154))))) ; guid = 11996570171599554757
^238 = gv: (name: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h799bc5f22861f5c3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 27, calls: ((callee: ^329))))) ; guid = 12164370814311208009
^239 = gv: (name: "_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17hc333a34fc9536abdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^277), (callee: ^129))))) ; guid = 12216406365981877649
^240 = gv: (name: "_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haaa1545bd034460dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 80, calls: ((callee: ^117), (callee: ^269))))) ; guid = 12369532624775639769
^241 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h7a88f918b0e1ca96E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 12401618053777824224
^242 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hdf7f878a2664572eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 12438920144943465221
^243 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h0a745b9bc1c634d6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 12468515752780016360
^244 = gv: (name: "_ZN103_$LT$core..iter..sources..repeat..Repeat$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aef950c7b4330a7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^182))))) ; guid = 12497206028507206189
^245 = gv: (name: "_ZN4core3ops8function5FnMut8call_mut17h565b47b213da413dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^69))))) ; guid = 12518667689574476734
^246 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0b9f57c1ae05675dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 12541719425963256614
^247 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hb4268720f0aed392E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^44), (callee: ^270))))) ; guid = 12558465275989104721
^248 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20723e21836942d7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^245))))) ; guid = 12568903516323150075
^249 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h8d2ba1f6c4334240E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 12580459379289904215
^250 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11copy_within17h4c3910a700168aadE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 55, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^91), (callee: ^350), (callee: ^75), (callee: ^57), (callee: ^336), (callee: ^156)), refs: (^308, ^355, ^80)))) ; guid = 12586452147691200557
^251 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hadb7819affcbe82fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^271), (callee: ^129))))) ; guid = 12696873111966725222
^252 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17ha607e08d74bfed15E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 12724949804916481826
^253 = gv: (name: "_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha6f44b17f44c3cbcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^35), (callee: ^97)), refs: (^28, ^42, ^137)))) ; guid = 12753951761166487139
^254 = gv: (name: "_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h14104c8fef8225bfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, calls: ((callee: ^95), (callee: ^271), (callee: ^114), (callee: ^289), (callee: ^157), (callee: ^87), (callee: ^68))))) ; guid = 12841813248916549332
^255 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h65fb77e5bf83133eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^175))))) ; guid = 12848858672273959596
^256 = gv: (name: "zlsh", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 217, calls: ((callee: ^93), (callee: ^210), (callee: ^187), (callee: ^103), (callee: ^250), (callee: ^61), (callee: ^7), (callee: ^176), (callee: ^322), (callee: ^125), (callee: ^142), (callee: ^352), (callee: ^231), (callee: ^220), (callee: ^320), (callee: ^64), (callee: ^332), (callee: ^140), (callee: ^122), (callee: ^47)), refs: (^79, ^147, ^153, ^179, ^164, ^268, ^216, ^212, ^126, ^141, ^81, ^374, ^327)))) ; guid = 12865527316353931809
^257 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf27165bc7988b8faE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^99), (callee: ^262))))) ; guid = 12871457382405627096
^258 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h50040ca9c2c02076E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^225), (callee: ^45), (callee: ^246), (callee: ^234), (callee: ^92)), refs: (^301)))) ; guid = 13025672660588830450
^259 = gv: (name: "_ZN4core3ptr4read17hf24200b430c4d96bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11))) ; guid = 13029293896184885752
^260 = gv: (name: "_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h0f85c756f85fc86fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^172), (callee: ^30), (callee: ^306)), refs: (^20)))) ; guid = 13101635469637000114
^261 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h4b566dfee0cb4379E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^131))))) ; guid = 13113622020638453025
^262 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hbc3bca3d7c1cb6a2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^305), (callee: ^288), (callee: ^189))))) ; guid = 13182138541671648695
^263 = gv: (name: "alloc151", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13189152364098819420
^264 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each17h56a7d803fcd4c3a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^195), (callee: ^192)), refs: (^308)))) ; guid = 13197517649325697833
^265 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h18299dc549e96d17E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 45))) ; guid = 13202579468703042710
^266 = gv: (name: "_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9fc4f76a02dd4e61E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^347), (callee: ^150), (callee: ^112), (callee: ^32)), refs: (^308)))) ; guid = 13277375633017635062
^267 = gv: (name: "_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3dd34f7d7f41ab96E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 77, calls: ((callee: ^102), (callee: ^259), (callee: ^271), (callee: ^101), (callee: ^207))))) ; guid = 13289553109913172379
^268 = gv: (name: "alloc199", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^201)))) ; guid = 13309496407656536281
^269 = gv: (name: "_ZN4core3cmp3min17h2580fc23e7272a6fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^59))))) ; guid = 13423413286227601518
^270 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h14c162554b4585ffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 13439113707182911562
^271 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17ha7d7482cd8a64a04E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^54), (callee: ^299))))) ; guid = 13476120414993629703
^272 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h05618a034e263affE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^51))))) ; guid = 13476495628528405651
^273 = gv: (name: "_ZN4core3ptr5write17h9a1bb2229837665eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 13496079988924165295
^274 = gv: (name: "_ZN86_$LT$alloc..vec..ExtendElement$LT$T$GT$$u20$as$u20$alloc..vec..ExtendWith$LT$T$GT$$GT$4last17hf6ad763d3707aa5dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 13512762011217209601
^275 = gv: (name: "alloc161", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^186)))) ; guid = 13528679742679769834
^276 = gv: (name: "_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h05490f30a3ef328eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13538801388461354206
^277 = gv: (name: "_ZN83_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h292479058215d3b7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^260))))) ; guid = 13593972800428381687
^278 = gv: (name: "alloc184", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 13599655624022411219
^279 = gv: (name: "_ZN91_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$9end_bound17h319c129f7ce1b880E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 13631461807149774238
^280 = gv: (name: "_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he2cebb9452f3906dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^369))))) ; guid = 13686684595259968182
^281 = gv: (name: "_ZN4core3ptr345drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h46a267e93d30fb57E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^19))))) ; guid = 13778743171558912983
^282 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h347fe0459a7b7c9eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 13796819096842322448
^283 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h155af4ab3d9e2b53E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^222))))) ; guid = 13911566283182208730
^284 = gv: (name: "alloc170", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^292)))) ; guid = 13927354676088411842
^285 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h694c14cc22a13c82E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 38))) ; guid = 13939371325332478346
^286 = gv: (name: "_ZN4core3ptr56drop_in_place$LT$alloc..vec..drain..Drain$LT$u64$GT$$GT$17h4e08a37df18486fdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^149))))) ; guid = 13990559824507478580
^287 = gv: (name: "_ZN4core3mem7replace17h74e092b125f5f507E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^202), (callee: ^273)), refs: (^308)))) ; guid = 14002209177076935878
^288 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf19f074fc33154a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 14054953342970720589
^289 = gv: (name: "_ZN4core5slice4iter95_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$mut$u20$$u5b$T$u5d$$GT$9into_iter17hfbe1619c48346eb0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^9))))) ; guid = 14096579116811572459
^290 = gv: (name: "_ZN4core3mem7replace17hbb420bee04c12a96E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^185), (callee: ^228)), refs: (^308)))) ; guid = 14138360233029903605
^291 = gv: (name: "_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09344b461ea63133E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 14174619960891308059
^292 = gv: (name: "alloc173", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14318807331091213883
^293 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^294 = gv: (name: "alloc150", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^356)))) ; guid = 14389845868573843689
^295 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17he2922890a4506acdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 14396290564388403263
^296 = gv: (name: "_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hcf687a028ba03102E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^291))))) ; guid = 14427970200635849998
^297 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h0f7baa0ba19a9e48E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^207))))) ; guid = 14445461406005296158
^298 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^161, ^276)))) ; guid = 14479279578861245750
^299 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he75c52e1726a6f8aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^4), (callee: ^242))))) ; guid = 14495023424982120810
^300 = gv: (name: "llvm.memmove.p0i8.p0i8.i64") ; guid = 14505345675339193263
^301 = gv: (name: "alloc159", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^56)))) ; guid = 14547064108618971487
^302 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h814b9c6cd8ef5a22E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^295))))) ; guid = 14603154131851441918
^303 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h0808a719721b8924E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^368))))) ; guid = 14647876919602320986
^304 = gv: (name: "_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17ha96bdc89805af1ddE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7))) ; guid = 14708518953896448940
^305 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h8520273d448a0a63E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 14745500438119102509
^306 = gv: (name: "_ZN4core9panicking13assert_failed17h76e8f3e0b0cd7e40E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^314)), refs: (^298)))) ; guid = 14765964612232140938
^307 = gv: (name: "alloc182", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 14790812744421394260
^308 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^309 = gv: (name: "_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17hde449936d6764516E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^33), (callee: ^318))))) ; guid = 14863519208955141428
^310 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45dccbd08791162fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^150), (callee: ^299), (callee: ^345), (callee: ^207))))) ; guid = 14867502969386756309
^311 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve17h05ee0cf68f29c529E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 25, calls: ((callee: ^173), (callee: ^12), (callee: ^371))))) ; guid = 14867965287258791831
^312 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h5733a0dbd1358ca2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^76))))) ; guid = 14877798771618784433
^313 = gv: (name: "_ZN4core5slice5index29slice_end_index_overflow_fail17hd9f8613ba6d0623fE") ; guid = 14929508646688709846
^314 = gv: (name: "_ZN4core9panicking19assert_failed_inner17h232935602d3588d9E") ; guid = 14952130605289471956
^315 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf1d8af553a1db5a7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15014424371091670324
^316 = gv: (name: "_ZN5alloc3vec15set_len_on_drop12SetLenOnDrop13increment_len17h2471cd9ff78bbd99E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 15019890055341183931
^317 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17he652a589f2403fa1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 15029408156207387239
^318 = gv: (name: "_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h0f5bf3a0ae0f3d9aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 73, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^135), (callee: ^66), (callee: ^57), (callee: ^336), (callee: ^271), (callee: ^101), (callee: ^136), (callee: ^235)), refs: (^308, ^355, ^133, ^39)))) ; guid = 15242507547420032611
^319 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2a8c3427576e1a33E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37))) ; guid = 15264429611783663907
^320 = gv: (name: "zsignum", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 15352537659571043505
^321 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator8for_each4call17h99766c0f8e416c9dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 15394263118713580390
^322 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator6cloned17h2a823b4660008c44E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^104))))) ; guid = 15436460407702113807
^323 = gv: (name: "__rust_realloc") ; guid = 15507136812573830794
^324 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hccf2b5e41ba3dc74E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^237))))) ; guid = 15522108778927716155
^325 = gv: (name: "_ZN4core3ptr63drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u64$GT$$GT$17h241259f6d8b02b9fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^107))))) ; guid = 15556115259144076553
^326 = gv: (name: "_ZN4core3ptr353drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u64$C$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..take..Take$LT$core..iter..sources..repeat..Repeat$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf28108b88d5e9a3aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^351))))) ; guid = 15716166458122653811
^327 = gv: (name: "alloc209", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^201)))) ; guid = 15718800784031841717
^328 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator4fold17h8c17173c11899dbcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 59, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^148), (callee: ^65), (callee: ^326), (callee: ^373)), refs: (^308)))) ; guid = 15776099148531762514
^329 = gv: (name: "_ZN4core5slice5index5range28_$u7b$$u7b$closure$u7d$$u7d$17h24993b879f7fd36aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^313)), refs: (^275)))) ; guid = 15787679009687305872
^330 = gv: (name: "alloc167", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15846432499193572048
^331 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hb298fa398a8db322E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 15936569152744361616
^332 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb7e4fb03610a387aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^132))))) ; guid = 15960536009652884234
^333 = gv: (name: "_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf463eb803cac47a3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 73, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^171), (callee: ^66), (callee: ^57), (callee: ^336), (callee: ^271), (callee: ^101), (callee: ^136), (callee: ^264)), refs: (^308, ^355, ^133, ^39)))) ; guid = 15976771834074194148
^334 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6c119e8c5cd2d2bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 15978663444785541641
^335 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h7974c8328f0f3bdbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42, calls: ((callee: ^3), (callee: ^345), (callee: ^207))))) ; guid = 16051807515057328552
^336 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^337 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h7e37a4e4651f44daE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 16076819545373835900
^338 = gv: (name: "_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E") ; guid = 16237673211549674151
^339 = gv: (name: "_ZN4core3ptr4read17h355a1efdb3d386f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 16339404347198628125
^340 = gv: (name: "_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hb1521135d7152037E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^144), (callee: ^184))))) ; guid = 16371127075559012767
^341 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator6by_ref17h42f1382844f2dc70E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 16392994630173711237
^342 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$9allocator17hf20364eb6d69466bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 16611000610299270187
^343 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16699618191939587885
^344 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16812783070235748606
^345 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h6ea6c74964f87fedE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^243), (callee: ^108))))) ; guid = 16872711168842225185
^346 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h7e56f9ef08367da7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 17225802659918855872
^347 = gv: (name: "_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17h1a90d641e72e6449E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^259))))) ; guid = 17376264762433393918
^348 = gv: (name: "_ZN4core4iter8adapters4take13Take$LT$I$GT$3new17hdae59aad045beea2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 17439216087908939626
^349 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3ed0d883726319cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 17493681980502970985
^350 = gv: (name: "_ZN4core5slice5index5range17hc12b5ca9b3b7b3a3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 102, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^90), (callee: ^158), (callee: ^279), (callee: ^53), (callee: ^238), (callee: ^338), (callee: ^363)), refs: (^308)))) ; guid = 17516966899134344317
^351 = gv: (name: "_ZN4core3ptr256drop_in_place$LT$$LT$alloc..vec..Vec$LT$u64$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$u64$C$$RF$mut$u20$core..iter..adapters..take..Take$LT$core..iter..sources..repeat..Repeat$LT$u64$GT$$GT$$GT$$GT$..spec_extend..$u7b$$u7b$closure$u7d$$u7d$$GT$17h49cc0b291bf3681dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^296))))) ; guid = 17529951865214149733
^352 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator4take17he3c65c0263a49a3bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^348))))) ; guid = 17536724739192058756
^353 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h7766f66a518f54bcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^359))))) ; guid = 17574853253142457198
^354 = gv: (name: "_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7d02c0796d6d95E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^229))))) ; guid = 17610779230693686966
^355 = gv: (name: "alloc43", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17620344421967208032
^356 = gv: (name: "alloc149", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17647552018457760531
^357 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hf368f096c2fa2626E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^370), (callee: ^270))))) ; guid = 17738696189210635278
^358 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h91563643ef6ec401E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^150))))) ; guid = 17768800933355392421
^359 = gv: (name: "_ZN5alloc11collections15TryReserveError4kind17h808f041122b565dcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^218))))) ; guid = 17772108043323304710
^360 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator6by_ref17h86ac8f9e082ce814E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 17873948099244161559
^361 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hcc96549207ef2686E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^128), (callee: ^32), (callee: ^373)), refs: (^308)))) ; guid = 17898051417689741226
^362 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he0d560f3f694ca17E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 17958416972244704302
^363 = gv: (name: "_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E") ; guid = 17978184489729322003
^364 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hf1eb6dc024fd7d85E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^150), (callee: ^270))))) ; guid = 18006044460302593790
^365 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17ha53cd90235d29ee9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 18017825493803853238
^366 = gv: (name: "_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0ebfb6873de7304dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^244))))) ; guid = 18067023916134185687
^367 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE") ; guid = 18145797040138870230
^368 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^369 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfdade41cf55e6f18E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^150), (callee: ^180), (callee: ^331))))) ; guid = 18162457094807965745
^370 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbca20b5ea01f3198E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^4), (callee: ^242))))) ; guid = 18281208651647515591
^371 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^372 = gv: (name: "_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h6ed006078d9593daE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, calls: ((callee: ^95), (callee: ^271), (callee: ^114), (callee: ^289), (callee: ^157), (callee: ^194), (callee: ^68))))) ; guid = 18379867185637234978
^373 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^374 = gv: (name: "str.5", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18399364785794339880
^375 = gv: (name: "_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h405de3bba56835d6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^144), (callee: ^333))))) ; guid = 18412024338377819962
^376 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hb55d07d8a25c2dc5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^247), (callee: ^288))))) ; guid = 18437716148754382274
^377 = blockcount: 1532
