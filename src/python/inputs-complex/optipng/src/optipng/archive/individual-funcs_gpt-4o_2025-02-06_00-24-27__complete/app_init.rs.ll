; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_init.rs.bc'
source_filename = "app_init.f7889050-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[std::io::IoSlice]>>::get_unchecked_mut::{closure#0}]" = type { i64*, i64*, { [0 x { i8*, i64 }]*, i64 }* }
%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked_mut::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<std::fs::File, std::io::error::Error>" = type { i32, [3 x i32] }
%"std::fs::OpenOptions" = type { %"std::sys::unix::fs::OpenOptions" }
%"std::sys::unix::fs::OpenOptions" = type { i32, i16, i8, i8, i8, i8, i8, i8 }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"std::path::Path" = type { %"std::ffi::os_str::OsStr" }
%"std::ffi::os_str::OsStr" = type { %"std::sys::unix::os_str::Slice" }
%"std::sys::unix::os_str::Slice" = type { [0 x i8] }
%"core::result::Result<usize, std::io::error::Error>" = type { i64, [1 x i64] }
%"core::result::Result<usize, std::io::error::Error>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<usize, std::io::error::Error>::Err" = type { [1 x i64], i8* }
%"std::io::error::SimpleMessage" = type { { [0 x i8]*, i64 }, i8, [7 x i8] }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"std::io::error::ErrorData<&std::io::error::Custom>" = type { i8, [15 x i8] }
%"std::io::error::ErrorData<&std::io::error::Custom>::Os" = type { [1 x i32], i32 }
%"std::io::error::Custom" = type { { {}*, [3 x i64]* }, i8, [7 x i8] }
%"std::io::error::ErrorData<&std::io::error::Custom>::Custom" = type { [1 x i64], %"std::io::error::Custom"* }
%"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage" = type { [1 x i64], %"std::io::error::SimpleMessage"* }
%"std::io::error::ErrorData<&std::io::error::Custom>::Simple" = type { [1 x i8], i8 }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>" = type { i8, [15 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os" = type { [1 x i32], i32 }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom" = type { [1 x i64], %"std::io::error::Custom"* }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage" = type { [1 x i64], %"std::io::error::SimpleMessage"* }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple" = type { [1 x i8], i8 }
%"std::sys::unix::locks::pthread_mutex::Mutex" = type { %"core::cell::UnsafeCell<libc::unix::bsd::apple::pthread_mutex_t>" }
%"core::cell::UnsafeCell<libc::unix::bsd::apple::pthread_mutex_t>" = type { %"libc::unix::bsd::apple::pthread_mutex_t" }
%"libc::unix::bsd::apple::pthread_mutex_t" = type { i64, [56 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>" = type { %"core::marker::PhantomPinned", %"std::sys::unix::locks::pthread_mutex::Mutex", %"core::sync::atomic::AtomicUsize", %"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>", i32, [1 x i32] }
%"core::marker::PhantomPinned" = type {}
%"core::sync::atomic::AtomicUsize" = type { i64 }
%"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>" = type { i64, %"core::cell::UnsafeCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>" }
%"core::cell::UnsafeCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>" = type { %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>" }
%"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>" = type { %"std::io::buffered::bufwriter::BufWriter<std::io::stdio::StdoutRaw>" }
%"std::io::buffered::bufwriter::BufWriter<std::io::stdio::StdoutRaw>" = type { %"std::io::stdio::StdoutRaw", %"alloc::vec::Vec<u8>", i8, [7 x i8] }
%"std::io::stdio::StdoutRaw" = type { %"std::sys::unix::stdio::Stdout" }
%"std::sys::unix::stdio::Stdout" = type { {} }
%"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>" = type { %"core::marker::PhantomPinned", %"std::sys::unix::locks::pthread_mutex::Mutex", %"core::sync::atomic::AtomicUsize", i64, i32, [1 x i32] }
%"core::fmt::Opaque" = type {}
%OpngOptions = type <{ i8, %"core::option::Option<alloc::string::String>" }>
%"core::option::Option<alloc::string::String>" = type { {}*, [2 x i64] }
%"core::cell::BorrowMutError" = type {}
%"core::option::Option<alloc::string::String>::Some" = type { %"alloc::string::String" }
%"core::result::Result<std::fs::File, std::io::error::Error>::Ok" = type { [1 x i32], i32 }
%"core::result::Result<std::fs::File, std::io::error::Error>::Err" = type { [1 x i64], i8* }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[std::io::IoSlice]>" = type { [2 x i64] }
%"std::io::stdio::StderrRaw" = type { %"std::sys::unix::stdio::Stderr" }
%"std::sys::unix::stdio::Stderr" = type { {} }
%"core::cell::UnsafeCell<std::io::stdio::StderrRaw>" = type { %"std::io::stdio::StderrRaw" }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc57 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"#" }>, align 1
@alloc52 = private unnamed_addr constant <{ [28 x i8] }> <{ [28 x i8] c"failed to write whole buffer" }>, align 1
@alloc55 = private unnamed_addr constant <{ i8*, [9 x i8], [7 x i8] }> <{ i8* getelementptr inbounds (<{ [28 x i8] }>, <{ [28 x i8] }>* @alloc52, i32 0, i32 0, i32 0), [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@alloc200 = private unnamed_addr constant <{ [73 x i8] }> <{ [73 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/io/mod.rs" }>, align 1
@alloc186 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [73 x i8] }>, <{ [73 x i8] }>* @alloc200, i32 0, i32 0, i32 0), [16 x i8] c"I\00\00\00\00\00\00\00\03\06\00\00!\00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void ({ i32*, i8* }*)* @"_ZN4core3ptr76drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17h3fcb60c8153243b0E" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i32*, i8* }*, [0 x i8]*, i64)* @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5013b670335e625E" to i8*), i8* bitcast (i1 ({ i32*, i8* }*, i32)* @_ZN4core3fmt5Write10write_char17hf18274146b21fa21E to i8*), i8* bitcast (i1 ({ i32*, i8* }*, %"core::fmt::Arguments"*)* @_ZN4core3fmt5Write9write_fmt17h40f603cd2b9124b5E to i8*) }>, align 8
@alloc84 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"formatter error" }>, align 1
@alloc87 = private unnamed_addr constant <{ i8*, [9 x i8], [7 x i8] }> <{ i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc84, i32 0, i32 0, i32 0), [9 x i8] c"\0F\00\00\00\00\00\00\00(", [7 x i8] undef }>, align 8
@alloc195 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"internal error: entered unreachable code" }>, align 1
@alloc193 = private unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/io/error/repr_bitpacked.rs" }>, align 1
@alloc194 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\18\01\00\00\0D\00\00\00" }>, align 8
@alloc32 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc197 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [73 x i8] }>, <{ [73 x i8] }>* @alloc200, i32 0, i32 0, i32 0), [16 x i8] c"I\00\00\00\00\00\00\00\1A\05\00\00\16\00\00\00" }>, align 8
@alloc72 = private unnamed_addr constant <{ [39 x i8] }> <{ [39 x i8] c"advancing io slices beyond their length" }>, align 1
@alloc73 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [39 x i8] }>, <{ [39 x i8] }>* @alloc72, i32 0, i32 0, i32 0), [8 x i8] c"'\00\00\00\00\00\00\00" }>, align 8
@alloc199 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [73 x i8] }>, <{ [73 x i8] }>* @alloc200, i32 0, i32 0, i32 0), [16 x i8] c"I\00\00\00\00\00\00\00\1C\05\00\00\0D\00\00\00" }>, align 8
@alloc201 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [73 x i8] }>, <{ [73 x i8] }>* @alloc200, i32 0, i32 0, i32 0), [16 x i8] c"I\00\00\00\00\00\00\00\1E\05\00\00\0D\00\00\00" }>, align 8
@alloc77 = private unnamed_addr constant <{ [35 x i8] }> <{ [35 x i8] c"advancing IoSlice beyond its length" }>, align 1
@alloc78 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [35 x i8] }>, <{ [35 x i8] }>* @alloc77, i32 0, i32 0, i32 0), [8 x i8] c"#\00\00\00\00\00\00\00" }>, align 8
@alloc202 = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/sys/unix/io.rs" }>, align 1
@alloc203 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc202, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00\19\00\00\00\0D\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void ({ i32*, i8* }**)* @"_ZN4core3ptr88drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17ha6371ef0e44556dbE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i32*, i8* }**, [0 x i8]*, i64)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h234b5e7e77c0a8a5E" to i8*), i8* bitcast (i1 ({ i32*, i8* }**, i32)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h7bc21248e3a6f935E" to i8*), i8* bitcast (i1 ({ i32*, i8* }**, %"core::fmt::Arguments"*)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h12d294efb252aeacE" to i8*) }>, align 8
@alloc45 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc46 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc45, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc209 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc210 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc209, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc211 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc212 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc211, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc214 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"already borrowed" }>, align 1
@alloc219 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/char/methods.rs" }>, align 1
@alloc216 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc219, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\8D\06\00\00\16\00\00\00" }>, align 8
@alloc218 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc219, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\A7\06\00\00\0A\00\00\00" }>, align 8
@alloc89 = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"encode_utf8: need " }>, align 1
@alloc91 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c" bytes to encode U+" }>, align 1
@alloc92 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c", but the buffer has " }>, align 1
@alloc90 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [18 x i8] }>, <{ [18 x i8] }>* @alloc89, i32 0, i32 0, i32 0), [8 x i8] c"\12\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [19 x i8] }>, <{ [19 x i8] }>* @alloc91, i32 0, i32 0, i32 0), [8 x i8] c"\13\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc92, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@alloc220 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc219, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\A0\06\00\00\0E\00\00\00" }>, align 8
@alloc35 = private unnamed_addr constant <{ [50 x i8] }> <{ [50 x i8] c"there is no such thing as an acquire-release store" }>, align 1
@alloc36 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [50 x i8] }>, <{ [50 x i8] }>* @alloc35, i32 0, i32 0, i32 0), [8 x i8] c"2\00\00\00\00\00\00\00" }>, align 8
@alloc223 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/sync/atomic.rs" }>, align 1
@alloc222 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc223, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\B0\0B\00\00\17\00\00\00" }>, align 8
@alloc40 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"there is no such thing as an acquire store" }>, align 1
@alloc41 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [42 x i8] }>, <{ [42 x i8] }>* @alloc40, i32 0, i32 0, i32 0), [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@alloc224 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc223, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\AF\0B\00\00\18\00\00\00" }>, align 8
@alloc225 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc226 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc225, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%"core::cell::BorrowMutError"*)* @"_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17h3715c04bfaa1915aE" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 (%"core::cell::BorrowMutError"*, %"core::fmt::Formatter"*)* @"_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4c633e1f2b589beE" to i8*) }>, align 8
@alloc230 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc231 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc230, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc232 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc233 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc232, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc236 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/io/stdio.rs" }>, align 1
@alloc235 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc236, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\B4\03\00\00\14\00\00\00" }>, align 8
@alloc237 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc236, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\D5\02\00\00\14\00\00\00" }>, align 8
@_ZN8app_init9OPERATION17h5b4d9160dad8e8c9E = internal global <{ [1 x i8] }> zeroinitializer, align 1
@_ZN8app_init7OPTIONS17he3e98ae44fbfbaabE = internal global <{ [9 x i8], [16 x i8] }> <{ [9 x i8] zeroinitializer, [16 x i8] undef }>, align 1
@_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E = internal global <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
@_ZN8app_init8LOG_FILE17hbd0aa6523203ecbcE = internal global <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
@_ZN8app_init13START_OF_LINE17h9550fafba1136657E = internal global <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 1
@vtable.3 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr43drop_in_place$LT$std..io..stdio..Stderr$GT$17h9bf3616f38b09887E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (void (%"core::result::Result<usize, std::io::error::Error>"*, i64**, [0 x i8]*, i64)* @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h0011fa7b38da11e0E" to i8*), i8* bitcast (void (%"core::result::Result<usize, std::io::error::Error>"*, i64**, [0 x { i8*, i64 }]*, i64)* @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17hf3af2e6af2845347E" to i8*), i8* bitcast (i1 (i64**)* @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17he2b4ecec69b0a281E" to i8*), i8* bitcast (i8* (i64**)* @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17h7992706991de5191E" to i8*), i8* bitcast (i8* (i64**, [0 x i8]*, i64)* @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$9write_all17h702c0f002293f94eE" to i8*), i8* bitcast (i8* (i64**, [0 x { i8*, i64 }]*, i64)* @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$18write_all_vectored17h9189afaccfc6fb2aE" to i8*), i8* bitcast (i8* (i64**, %"core::fmt::Arguments"*)* @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$9write_fmt17h2e372dc2e8c5e300E" to i8*) }>, align 8
@vtable.4 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr43drop_in_place$LT$std..io..stdio..Stdout$GT$17hdbc054bfa3c30915E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (void (%"core::result::Result<usize, std::io::error::Error>"*, i64**, [0 x i8]*, i64)* @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5write17h628433167d250765E" to i8*), i8* bitcast (void (%"core::result::Result<usize, std::io::error::Error>"*, i64**, [0 x { i8*, i64 }]*, i64)* @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$14write_vectored17h45043cb923f6a35fE" to i8*), i8* bitcast (i1 (i64**)* @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$17is_write_vectored17h3c1884429c1f579cE" to i8*), i8* bitcast (i8* (i64**)* @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5flush17hec9c3680ba2cdec3E" to i8*), i8* bitcast (i8* (i64**, [0 x i8]*, i64)* @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_all17h6e298a41850813b5E" to i8*), i8* bitcast (i8* (i64**, [0 x { i8*, i64 }]*, i64)* @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$18write_all_vectored17hae6401ad0f82425fE" to i8*), i8* bitcast (i8* (i64**, %"core::fmt::Arguments"*)* @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17hcd7b542de78799a1E" to i8*) }>, align 8
@alloc22 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c"Can't open log file: " }>, align 1
@alloc24 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc23 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@vtable.5 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8* }> <{ i8* bitcast (void (i32*)* @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h855fa266bcf9ed11E" to i8*), [16 x i8] c"\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", i8* bitcast (void (%"core::result::Result<usize, std::io::error::Error>"*, i32*, [0 x i8]*, i64)* @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17hd94b558b9f504037E" to i8*), i8* bitcast (void (%"core::result::Result<usize, std::io::error::Error>"*, i32*, [0 x { i8*, i64 }]*, i64)* @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$14write_vectored17h0814d528b93795aeE" to i8*), i8* bitcast (i1 (i32*)* @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$17is_write_vectored17hbc2005173f584d95E" to i8*), i8* bitcast (i8* (i32*)* @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5flush17hd98c033a51a5835cE" to i8*), i8* bitcast (i8* (i32*, [0 x i8]*, i64)* @_ZN3std2io5Write9write_all17hb7d563b886527188E to i8*), i8* bitcast (i8* (i32*, [0 x { i8*, i64 }]*, i64)* @_ZN3std2io5Write18write_all_vectored17hd4f1e3ded7c717e8E to i8*), i8* bitcast (i8* (i32*, %"core::fmt::Arguments"*)* @_ZN3std2io5Write9write_fmt17hba94d4ea6a66aa81E to i8*) }>, align 8
@alloc6 = private unnamed_addr constant <{ [66 x i8] }> <{ [66 x i8] c"** Warning: The option -log is deprecated; use shell redirection\0A\0A" }>, align 1

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17he13a3cbbe10adff7E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %_5 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hb1e78d66d045e917E"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_5, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hf5496138af89cc5eE(i8* %2, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x { i8*, i64 }]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h293e1daabac328bbE"(i64 %self.0, i64 %self.1, [0 x { i8*, i64 }]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[std::io::IoSlice]>>::get_unchecked_mut::{closure#0}]", align 8
  %1 = bitcast [0 x { i8*, i64 }]* %slice.0 to { i8*, i64 }*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i64 %self.0
  store { i8*, i64 }* %2, { i8*, i64 }** %0, align 8
  %_3.i = load { i8*, i64 }*, { i8*, i64 }** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x { i8*, i64 }]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h66eebd9e10e613d0E({ i8*, i64 }* %_3.i, i64 %_8)
  %4 = extractvalue { [0 x { i8*, i64 }]*, i64 } %3, 0
  %5 = extractvalue { [0 x { i8*, i64 }]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x { i8*, i64 }]*, i64 } undef, [0 x { i8*, i64 }]* %4, 0
  %7 = insertvalue { [0 x { i8*, i64 }]*, i64 } %6, i64 %5, 1
  ret { [0 x { i8*, i64 }]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hf4afd9fef57bafcaE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked_mut::{closure#0}]", align 8
  %1 = bitcast [0 x i8]* %slice.0 to i8*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds i8, i8* %1, i64 %self.0
  store i8* %2, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4a15cbeb3736a310E(i8* %_3.i, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h0130d27659345181E"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = icmp ugt i64 %self.0, %self.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_10 = icmp ugt i64 %self.1, %slice.1
  br i1 %_10, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) #12
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hf4afd9fef57bafcaE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
  %_20.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_20.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #12
  unreachable

bb5:                                              ; preds = %bb4
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_20.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_20.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he633258d2339e032E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_5 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %_5 to i64*
  store i64 0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  store i64 %self, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h0130d27659345181E"(i64 %4, i64 %6, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %7, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h511baaed3cd28ee6E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %_5 = call i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hd11c91ba2205fcb8E"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast { i64, i64 }* %_3 to i64*
  store i64 %self, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %_5, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17he13a3cbbe10adff7E"(i64 %3, i64 %5, [0 x i8]* %slice.0, i64 %slice.1)
  %7 = extractvalue { [0 x i8]*, i64 } %6, 0
  %8 = extractvalue { [0 x i8]*, i64 } %6, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  ret { [0 x i8]*, i64 } %10
}

; Function Attrs: inlinehint uwtable
define { [0 x { i8*, i64 }]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h74544c302c60e2a8E"(i64 %self, [0 x { i8*, i64 }]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = call i64 @_ZN4core3ptr8metadata8metadata17hbe8f7735c8392d8bE([0 x { i8*, i64 }]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %_3 to i64*
  store i64 %self, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { [0 x { i8*, i64 }]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h293e1daabac328bbE"(i64 %4, i64 %6, [0 x { i8*, i64 }]* %slice.0, i64 %slice.1)
  %8 = extractvalue { [0 x { i8*, i64 }]*, i64 } %7, 0
  %9 = extractvalue { [0 x { i8*, i64 }]*, i64 } %7, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = insertvalue { [0 x { i8*, i64 }]*, i64 } undef, [0 x { i8*, i64 }]* %8, 0
  %11 = insertvalue { [0 x { i8*, i64 }]*, i64 } %10, i64 %9, 1
  ret { [0 x { i8*, i64 }]*, i64 } %11
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h9479ddb808c7aba7E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ugt i64 %self, %slice.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h511baaed3cd28ee6E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  %_11.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_11.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb3

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #12
  unreachable

bb3:                                              ; preds = %bb2
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_11.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_11.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x { i8*, i64 }]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7d110d70f0319aaE"(i64 %self, [0 x { i8*, i64 }]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = icmp ugt i64 %self, %slice.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = call { [0 x { i8*, i64 }]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h74544c302c60e2a8E"(i64 %self, [0 x { i8*, i64 }]* %slice.0, i64 %slice.1)
  %_14.0 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 0
  %_14.1 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 1
  br label %bb3

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #12
  unreachable

bb3:                                              ; preds = %bb2
  %2 = insertvalue { [0 x { i8*, i64 }]*, i64 } undef, [0 x { i8*, i64 }]* %_14.0, 0
  %3 = insertvalue { [0 x { i8*, i64 }]*, i64 } %2, i64 %_14.1, 1
  ret { [0 x { i8*, i64 }]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9f63f4f712331f62E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h559871e8f99d473bE"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he3bd7a0e2d50ff1dE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h7f325184d2fe0c34E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hca7daa0a6e8ddd66E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h1391703948a6cb22E"()
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
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hf59dcd200c49c374E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h5687c84855f9962eE"()
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
define void @_ZN3std2fs11OpenOptions4open17h2e6ca5e738cae3e1E(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %0, %"std::fs::OpenOptions"* align 4 %self, %"alloc::string::String"* align 8 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %path = alloca %"alloc::string::String"*, align 8
  store %"alloc::string::String"* %1, %"alloc::string::String"** %path, align 8
  %3 = invoke { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h3e4ec17de82e6f64E"(%"alloc::string::String"** align 8 %path)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { %"std::path::Path"*, i64 } %3, 0
  %_5.1 = extractvalue { %"std::path::Path"*, i64 } %3, 1
  invoke void @_ZN3std2fs11OpenOptions5_open17h0e3ad3dc10bbdff0E(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %0, %"std::fs::OpenOptions"* align 4 %self, %"std::path::Path"* align 1 %_5.0, i64 %_5.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  br label %bb3

bb5:                                              ; preds = %bb4
  %9 = bitcast { i8*, i32 }* %2 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define i8* @_ZN3std2io5Write18write_all_vectored17hd4f1e3ded7c717e8E(i32* align 4 %self, [0 x { i8*, i64 }]* align 8 %0, i64 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_25 = alloca i8, align 1
  %e = alloca i8**, align 8
  %_10 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %3 = alloca i8*, align 8
  %bufs = alloca { [0 x { i8*, i64 }]*, i64 }, align 8
  %4 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 0
  store [0 x { i8*, i64 }]* %0, [0 x { i8*, i64 }]** %4, align 8
  %5 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  call void @_ZN3std2io7IoSlice14advance_slices17h3c6851be6b75002aE({ [0 x { i8*, i64 }]*, i64 }* align 8 %bufs, i64 0)
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb21, %bb1
  %6 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 0
  %_9.0 = load [0 x { i8*, i64 }]*, [0 x { i8*, i64 }]** %6, align 8, !nonnull !1, !align !3, !noundef !1
  %7 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 1
  %_9.1 = load i64, i64* %7, align 8
  %_8 = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17hd4dd33221d458d4dE"([0 x { i8*, i64 }]* align 8 %_9.0, i64 %_9.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_7 = xor i1 %_8, true
  br i1 %_7, label %bb4, label %bb17

bb17:                                             ; preds = %bb3
  %8 = bitcast i8** %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = bitcast i8** %3 to {}**
  store {}* null, {}** %9, align 8
  br label %bb19

bb4:                                              ; preds = %bb3
  %10 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 0
  %_12.0 = load [0 x { i8*, i64 }]*, [0 x { i8*, i64 }]** %10, align 8, !nonnull !1, !align !3, !noundef !1
  %11 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 1
  %_12.1 = load i64, i64* %11, align 8
  call void @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$14write_vectored17h0814d528b93795aeE"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>") %_10, i32* align 4 %self, [0 x { i8*, i64 }]* align 8 %_12.0, i64 %_12.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %12 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_10 to i64*
  %_13 = load i64, i64* %12, align 8, !range !4, !noundef !1
  switch i64 %_13, label %bb7 [
    i64 0, label %bb6
    i64 1, label %bb12
  ]

bb7:                                              ; preds = %bb5
  unreachable

bb6:                                              ; preds = %bb5
  %13 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_10 to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %14 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %bb8, label %bb10

bb12:                                             ; preds = %bb5
  %17 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_10 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %18 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %17, i32 0, i32 1
  store i8** %18, i8*** %e, align 8
  %_32 = load i8**, i8*** %e, align 8, !nonnull !1, !align !3, !noundef !1
  %19 = invoke i8 @_ZN3std2io5error5Error4kind17h96909353db6d870fE(i8** align 8 %_32)
          to label %bb13 unwind label %cleanup, !range !5

bb27:                                             ; preds = %cleanup
  %20 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_10 to i64*
  %_35 = load i64, i64* %20, align 8, !range !4, !noundef !1
  %21 = icmp eq i64 %_35, 1
  br i1 %21, label %bb25, label %bb20

cleanup:                                          ; preds = %bb10, %bb8, %bb13, %bb12
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  %24 = extractvalue { i8*, i32 } %22, 1
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %bb27

bb13:                                             ; preds = %bb12
  store i8 %19, i8* %_25, align 1
  %_23 = invoke zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17he87b92875e856290E"(i8* align 1 %_25, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc57, i32 0, i32 0, i32 0))
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  br i1 %_23, label %bb15, label %bb16

bb16:                                             ; preds = %bb14
  %27 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_10 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %28 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %27, i32 0, i32 1
  %e1 = load i8*, i8** %28, align 8, !nonnull !1, !noundef !1
  store i8* %e1, i8** %3, align 8
  br label %bb18

bb15:                                             ; preds = %bb14
  br label %bb24

bb24:                                             ; preds = %bb11, %bb15
  %29 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_10 to i64*
  %_34 = load i64, i64* %29, align 8, !range !4, !noundef !1
  %30 = icmp eq i64 %_34, 1
  br i1 %30, label %bb22, label %bb21

bb18:                                             ; preds = %bb9, %bb16
  br label %bb19

bb8:                                              ; preds = %bb6
  %_14 = invoke i8* @_ZN3std2io5error5Error19from_static_message17h95f63902794961a2E(%"std::io::error::SimpleMessage"* align 8 bitcast (<{ i8*, [9 x i8], [7 x i8] }>* @alloc55 to %"std::io::error::SimpleMessage"*))
          to label %bb9 unwind label %cleanup

bb10:                                             ; preds = %bb6
  %31 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_10 to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %32 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %31, i32 0, i32 1
  %n = load i64, i64* %32, align 8
  invoke void @_ZN3std2io7IoSlice14advance_slices17h3c6851be6b75002aE({ [0 x { i8*, i64 }]*, i64 }* align 8 %bufs, i64 %n)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  br label %bb24

bb22:                                             ; preds = %bb24
  br i1 true, label %bb23, label %bb21

bb21:                                             ; preds = %bb23, %bb22, %bb24
  br label %bb2

bb23:                                             ; preds = %bb22
  %33 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_10 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %34 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %33, i32 0, i32 1
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbcc30389f9487c3fE"(i8** %34)
  br label %bb21

bb9:                                              ; preds = %bb8
  store i8* %_14, i8** %3, align 8
  br label %bb18

bb25:                                             ; preds = %bb27
  br i1 true, label %bb26, label %bb20

bb20:                                             ; preds = %bb26, %bb25, %bb27
  %35 = bitcast { i8*, i32 }* %2 to i8**
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = insertvalue { i8*, i32 } undef, i8* %36, 0
  %40 = insertvalue { i8*, i32 } %39, i32 %38, 1
  resume { i8*, i32 } %40

bb26:                                             ; preds = %bb25
  %41 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_10 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %42 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %41, i32 0, i32 1
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbcc30389f9487c3fE"(i8** %42) #13
          to label %bb20 unwind label %abort

abort:                                            ; preds = %bb26
  %43 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb19:                                             ; preds = %bb18, %bb17
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

; Function Attrs: uwtable
define i8* @_ZN3std2io5Write9write_all17hb7d563b886527188E(i32* align 4 %self, [0 x i8]* align 1 %0, i64 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_24 = alloca i8, align 1
  %e = alloca i8**, align 8
  %_18 = alloca i64, align 8
  %_6 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %3 = alloca i8*, align 8
  %buf = alloca { [0 x i8]*, i64 }, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %bb20, %start
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  %_5.0 = load [0 x i8]*, [0 x i8]** %6, align 8, !nonnull !1, !align !6, !noundef !1
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_5.1 = load i64, i64* %7, align 8
  %_4 = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h374e53a7e32bd91aE"([0 x i8]* align 1 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb3, label %bb16

bb16:                                             ; preds = %bb2
  %8 = bitcast i8** %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = bitcast i8** %3 to {}**
  store {}* null, {}** %9, align 8
  br label %bb18

bb3:                                              ; preds = %bb2
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  %_8.0 = load [0 x i8]*, [0 x i8]** %10, align 8, !nonnull !1, !align !6, !noundef !1
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_8.1 = load i64, i64* %11, align 8
  call void @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17hd94b558b9f504037E"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>") %_6, i32* align 4 %self, [0 x i8]* align 1 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %12 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to i64*
  %_9 = load i64, i64* %12, align 8, !range !4, !noundef !1
  switch i64 %_9, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb11
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  %13 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %14 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %bb7, label %bb9

bb11:                                             ; preds = %bb4
  %17 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %18 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %17, i32 0, i32 1
  store i8** %18, i8*** %e, align 8
  %_31 = load i8**, i8*** %e, align 8, !nonnull !1, !align !3, !noundef !1
  %19 = invoke i8 @_ZN3std2io5error5Error4kind17h96909353db6d870fE(i8** align 8 %_31)
          to label %bb12 unwind label %cleanup, !range !5

bb26:                                             ; preds = %cleanup
  %20 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to i64*
  %_34 = load i64, i64* %20, align 8, !range !4, !noundef !1
  %21 = icmp eq i64 %_34, 1
  br i1 %21, label %bb24, label %bb19

cleanup:                                          ; preds = %bb9, %bb7, %bb12, %bb11
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  %24 = extractvalue { i8*, i32 } %22, 1
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %bb26

bb12:                                             ; preds = %bb11
  store i8 %19, i8* %_24, align 1
  %_22 = invoke zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17he87b92875e856290E"(i8* align 1 %_24, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc57, i32 0, i32 0, i32 0))
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  br i1 %_22, label %bb14, label %bb15

bb15:                                             ; preds = %bb13
  %27 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %28 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %27, i32 0, i32 1
  %e1 = load i8*, i8** %28, align 8, !nonnull !1, !noundef !1
  store i8* %e1, i8** %3, align 8
  br label %bb17

bb14:                                             ; preds = %bb13
  br label %bb23

bb23:                                             ; preds = %bb10, %bb14
  %29 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to i64*
  %_33 = load i64, i64* %29, align 8, !range !4, !noundef !1
  %30 = icmp eq i64 %_33, 1
  br i1 %30, label %bb21, label %bb20

bb17:                                             ; preds = %bb8, %bb15
  br label %bb18

bb7:                                              ; preds = %bb5
  %_10 = invoke i8* @_ZN3std2io5error5Error19from_static_message17h95f63902794961a2E(%"std::io::error::SimpleMessage"* align 8 bitcast (<{ i8*, [9 x i8], [7 x i8] }>* @alloc55 to %"std::io::error::SimpleMessage"*))
          to label %bb8 unwind label %cleanup

bb9:                                              ; preds = %bb5
  %31 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %32 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %31, i32 0, i32 1
  %n = load i64, i64* %32, align 8
  %33 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  %_17.0 = load [0 x i8]*, [0 x i8]** %33, align 8, !nonnull !1, !align !6, !noundef !1
  %34 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_17.1 = load i64, i64* %34, align 8
  store i64 %n, i64* %_18, align 8
  %35 = load i64, i64* %_18, align 8
  %36 = invoke { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h63f8f81bf38f054fE"([0 x i8]* align 1 %_17.0, i64 %_17.1, i64 %35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc186 to %"core::panic::location::Location"*))
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %_16.0 = extractvalue { [0 x i8]*, i64 } %36, 0
  %_16.1 = extractvalue { [0 x i8]*, i64 } %36, 1
  %37 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  store [0 x i8]* %_16.0, [0 x i8]** %37, align 8
  %38 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  store i64 %_16.1, i64* %38, align 8
  br label %bb23

bb21:                                             ; preds = %bb23
  br i1 true, label %bb22, label %bb20

bb20:                                             ; preds = %bb22, %bb21, %bb23
  br label %bb1

bb22:                                             ; preds = %bb21
  %39 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %40 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %39, i32 0, i32 1
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbcc30389f9487c3fE"(i8** %40)
  br label %bb20

bb8:                                              ; preds = %bb7
  store i8* %_10, i8** %3, align 8
  br label %bb17

bb24:                                             ; preds = %bb26
  br i1 true, label %bb25, label %bb19

bb19:                                             ; preds = %bb25, %bb24, %bb26
  %41 = bitcast { i8*, i32 }* %2 to i8**
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = insertvalue { i8*, i32 } undef, i8* %42, 0
  %46 = insertvalue { i8*, i32 } %45, i32 %44, 1
  resume { i8*, i32 } %46

bb25:                                             ; preds = %bb24
  %47 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %48 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %47, i32 0, i32 1
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbcc30389f9487c3fE"(i8** %48) #13
          to label %bb19 unwind label %abort

abort:                                            ; preds = %bb25
  %49 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb18:                                             ; preds = %bb17, %bb16
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

; Function Attrs: uwtable
define i8* @_ZN3std2io5Write9write_fmt17hba94d4ea6a66aa81E(i32* align 4 %self, %"core::fmt::Arguments"* %fmt) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %_10 = alloca %"core::fmt::Arguments", align 8
  %_6 = alloca i8, align 1
  %_5 = alloca i8*, align 8
  %output = alloca { i32*, i8* }, align 8
  %1 = alloca i8*, align 8
  %2 = bitcast i8** %_5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %3 = bitcast i8** %_5 to {}**
  store {}* null, {}** %3, align 8
  store i8 1, i8* %_18, align 1
  %4 = bitcast { i32*, i8* }* %output to i32**
  store i32* %self, i32** %4, align 8
  %5 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %output, i32 0, i32 1
  %6 = load i8*, i8** %_5, align 8
  store i8* %6, i8** %5, align 8
  %_7.0 = bitcast { i32*, i8* }* %output to {}*
  %7 = bitcast %"core::fmt::Arguments"* %_10 to i8*
  %8 = bitcast %"core::fmt::Arguments"* %fmt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 48, i1 false)
  %9 = invoke zeroext i1 @_ZN4core3fmt5write17hda8e8eb84b49cbfcE({}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.0 to [3 x i64]*), %"core::fmt::Arguments"* %_10)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr76drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17h3fcb60c8153243b0E"({ i32*, i8* }* %output) #13
          to label %bb11 unwind label %abort

cleanup:                                          ; preds = %bb7, %bb2, %start
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb10

bb1:                                              ; preds = %start
  %15 = zext i1 %9 to i8
  store i8 %15, i8* %_6, align 1
  %16 = load i8, i8* %_6, align 1, !range !7, !noundef !1
  %17 = trunc i8 %16 to i1
  %_11 = zext i1 %17 to i64
  switch i64 %_11, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %18 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 8, i1 false)
  %19 = bitcast i8** %1 to {}**
  store {}* null, {}** %19, align 8
  br label %bb14

bb2:                                              ; preds = %bb1
  %_13 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %output, i32 0, i32 1
  %_12 = invoke zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h4ae8165072afc20aE"(i8** align 8 %_13)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb2
  br i1 %_12, label %bb6, label %bb7

bb7:                                              ; preds = %bb5
  %_14 = invoke i8* @_ZN3std2io5error5Error19from_static_message17h95f63902794961a2E(%"std::io::error::SimpleMessage"* align 8 bitcast (<{ i8*, [9 x i8], [7 x i8] }>* @alloc87 to %"std::io::error::SimpleMessage"*))
          to label %bb8 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i8 0, i8* %_18, align 1
  %20 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %output, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %1, align 8
  br label %bb9

bb9:                                              ; preds = %bb8, %bb6
  br label %bb14

bb8:                                              ; preds = %bb7
  store i8* %_14, i8** %1, align 8
  br label %bb9

abort:                                            ; preds = %bb10
  %22 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb11:                                             ; preds = %bb10
  %23 = bitcast { i8*, i32 }* %0 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = insertvalue { i8*, i32 } undef, i8* %24, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

bb14:                                             ; preds = %bb9, %bb4
  %29 = load i8, i8* %_18, align 1, !range !7, !noundef !1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %bb13, label %bb12

bb12:                                             ; preds = %bb13, %bb14
  %31 = load i8*, i8** %1, align 8
  ret i8* %31

bb13:                                             ; preds = %bb14
  %32 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %output, i32 0, i32 1
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h5667141b3eedb478E"(i8** %32)
  br label %bb12
}

; Function Attrs: inlinehint uwtable
define void @_ZN3std2io5error14repr_bitpacked11decode_repr17h88e7000b4a4b9900E(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %0, i8* %ptr) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %_34 = alloca i64*, align 8
  %_19 = alloca i64*, align 8
  %bits = alloca i64, align 8
  store i8 1, i8* %_37, align 1
  %_4 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdba444df0d760f77E"(i8* %ptr)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
  %2 = load i8, i8* %_37, align 1, !range !7, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb21, label %bb19

cleanup:                                          ; preds = %bb6, %bb9, %bb15, %bb13, %bb11, %bb8, %bb5, %bb3, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb22

bb1:                                              ; preds = %start
  %9 = invoke i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h56293f0583b4021bE"({}* %_4)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i64 %9, i64* %bits, align 8
  %_7 = load i64, i64* %bits, align 8
  %_6 = and i64 %_7, 3
  switch i64 %_6, label %bb3 [
    i64 2, label %bb4
    i64 3, label %bb5
    i64 0, label %bb8
    i64 1, label %bb11
  ]

bb3:                                              ; preds = %bb2
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [40 x i8] }>* @alloc195 to [0 x i8]*), i64 40, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc194 to %"core::panic::location::Location"*)) #12
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %bb2
  %_11 = load i64, i64* %bits, align 8
  %_9 = ashr i64 %_11, 32
  %code = trunc i64 %_9 to i32
  %10 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to %"std::io::error::ErrorData<&std::io::error::Custom>::Os"*
  %11 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Os", %"std::io::error::ErrorData<&std::io::error::Custom>::Os"* %10, i32 0, i32 1
  store i32 %code, i32* %11, align 4
  %12 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to i8*
  store i8 0, i8* %12, align 8
  br label %bb17

bb5:                                              ; preds = %bb2
  %_15 = load i64, i64* %bits, align 8
  %_14 = lshr i64 %_15, 32
  %kind_bits = trunc i64 %_14 to i32
  %_17 = invoke i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h9aa1b78d6b8bd439E(i32 %kind_bits)
          to label %bb6 unwind label %cleanup, !range !8

bb8:                                              ; preds = %bb2
  %_25 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd984f048e187e599E"(i8* %ptr)
          to label %bb9 unwind label %cleanup

bb11:                                             ; preds = %bb2
  %_30 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdba444df0d760f77E"(i8* %ptr)
          to label %bb12 unwind label %cleanup

unreachable:                                      ; preds = %bb3
  unreachable

bb12:                                             ; preds = %bb11
  %13 = bitcast {}* %_30 to i8*
  br label %bb13

bb13:                                             ; preds = %bb12
  %_28 = invoke i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17hc0c88ad39c4faae3E"(i8* %13, i64 1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %14 = bitcast i8* %_28 to %"std::io::error::Custom"*
  br label %bb15

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_37, align 1
  %15 = bitcast i64** %_34 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %14, %"std::io::error::Custom"** %15, align 8
  %16 = load i64*, i64** %_34, align 8
  %17 = bitcast i64* %16 to %"std::io::error::Custom"*
  %_32 = invoke align 8 %"std::io::error::Custom"* @"_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17ha04cf63aad7a4452E"(%"std::io::error::Custom"* %17)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %18 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"*
  %19 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Custom", %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"* %18, i32 0, i32 1
  store %"std::io::error::Custom"* %_32, %"std::io::error::Custom"** %19, align 8
  %20 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to i8*
  store i8 3, i8* %20, align 8
  br label %bb17

bb17:                                             ; preds = %bb7, %bb10, %bb16, %bb4
  %21 = load i8, i8* %_37, align 1, !range !7, !noundef !1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb20, label %bb18

bb9:                                              ; preds = %bb8
  %_24 = invoke %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he29c9ece348c0394E"(i64* %_25)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %23 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage"*
  %24 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage", %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage"* %23, i32 0, i32 1
  store %"std::io::error::SimpleMessage"* %_24, %"std::io::error::SimpleMessage"** %24, align 8
  %25 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to i8*
  store i8 2, i8* %25, align 8
  br label %bb17

bb6:                                              ; preds = %bb5
  store i64* %bits, i64** %_19, align 8
  %26 = load i64*, i64** %_19, align 8, !nonnull !1, !align !3, !noundef !1
  %kind = invoke i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h03024bc934d31354E"(i8 %_17, i64* align 8 %26)
          to label %bb7 unwind label %cleanup, !range !5

bb7:                                              ; preds = %bb6
  %27 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to %"std::io::error::ErrorData<&std::io::error::Custom>::Simple"*
  %28 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Simple", %"std::io::error::ErrorData<&std::io::error::Custom>::Simple"* %27, i32 0, i32 1
  store i8 %kind, i8* %28, align 1
  %29 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to i8*
  store i8 1, i8* %29, align 8
  br label %bb17

bb19:                                             ; preds = %bb21, %bb22
  %30 = bitcast { i8*, i32 }* %1 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %35 = insertvalue { i8*, i32 } %34, i32 %33, 1
  resume { i8*, i32 } %35

bb21:                                             ; preds = %bb22
  br label %bb19

bb18:                                             ; preds = %bb20, %bb17
  ret void

bb20:                                             ; preds = %bb17
  br label %bb18
}

; Function Attrs: inlinehint uwtable
define void @_ZN3std2io5error14repr_bitpacked11decode_repr17hd96e8d88669bc4afE(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %0, i8* %ptr) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %_34 = alloca i64*, align 8
  %_19 = alloca i64*, align 8
  %bits = alloca i64, align 8
  store i8 1, i8* %_37, align 1
  %_4 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdba444df0d760f77E"(i8* %ptr)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
  %2 = load i8, i8* %_37, align 1, !range !7, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb21, label %bb19

cleanup:                                          ; preds = %bb6, %bb9, %bb15, %bb13, %bb11, %bb8, %bb5, %bb3, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb22

bb1:                                              ; preds = %start
  %9 = invoke i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h56293f0583b4021bE"({}* %_4)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i64 %9, i64* %bits, align 8
  %_7 = load i64, i64* %bits, align 8
  %_6 = and i64 %_7, 3
  switch i64 %_6, label %bb3 [
    i64 2, label %bb4
    i64 3, label %bb5
    i64 0, label %bb8
    i64 1, label %bb11
  ]

bb3:                                              ; preds = %bb2
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [40 x i8] }>* @alloc195 to [0 x i8]*), i64 40, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc194 to %"core::panic::location::Location"*)) #12
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %bb2
  %_11 = load i64, i64* %bits, align 8
  %_9 = ashr i64 %_11, 32
  %code = trunc i64 %_9 to i32
  %10 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os"*
  %11 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os"* %10, i32 0, i32 1
  store i32 %code, i32* %11, align 4
  %12 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 0, i8* %12, align 8
  br label %bb17

bb5:                                              ; preds = %bb2
  %_15 = load i64, i64* %bits, align 8
  %_14 = lshr i64 %_15, 32
  %kind_bits = trunc i64 %_14 to i32
  %_17 = invoke i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h9aa1b78d6b8bd439E(i32 %kind_bits)
          to label %bb6 unwind label %cleanup, !range !8

bb8:                                              ; preds = %bb2
  %_25 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd984f048e187e599E"(i8* %ptr)
          to label %bb9 unwind label %cleanup

bb11:                                             ; preds = %bb2
  %_30 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdba444df0d760f77E"(i8* %ptr)
          to label %bb12 unwind label %cleanup

unreachable:                                      ; preds = %bb3
  unreachable

bb12:                                             ; preds = %bb11
  %13 = bitcast {}* %_30 to i8*
  br label %bb13

bb13:                                             ; preds = %bb12
  %_28 = invoke i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17hc0c88ad39c4faae3E"(i8* %13, i64 1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %14 = bitcast i8* %_28 to %"std::io::error::Custom"*
  br label %bb15

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_37, align 1
  %15 = bitcast i64** %_34 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %14, %"std::io::error::Custom"** %15, align 8
  %16 = load i64*, i64** %_34, align 8
  %17 = bitcast i64* %16 to %"std::io::error::Custom"*
  %_32 = invoke align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h8ea10c2d12b1b3dbE"(%"std::io::error::Custom"* %17)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %18 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"*
  %19 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"* %18, i32 0, i32 1
  store %"std::io::error::Custom"* %_32, %"std::io::error::Custom"** %19, align 8
  %20 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 3, i8* %20, align 8
  br label %bb17

bb17:                                             ; preds = %bb7, %bb10, %bb16, %bb4
  %21 = load i8, i8* %_37, align 1, !range !7, !noundef !1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb20, label %bb18

bb9:                                              ; preds = %bb8
  %_24 = invoke %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he29c9ece348c0394E"(i64* %_25)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %23 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage"*
  %24 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage"* %23, i32 0, i32 1
  store %"std::io::error::SimpleMessage"* %_24, %"std::io::error::SimpleMessage"** %24, align 8
  %25 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 2, i8* %25, align 8
  br label %bb17

bb6:                                              ; preds = %bb5
  store i64* %bits, i64** %_19, align 8
  %26 = load i64*, i64** %_19, align 8, !nonnull !1, !align !3, !noundef !1
  %kind = invoke i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17hd21beb12ef3ed36aE"(i8 %_17, i64* align 8 %26)
          to label %bb7 unwind label %cleanup, !range !5

bb7:                                              ; preds = %bb6
  %27 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple"*
  %28 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple"* %27, i32 0, i32 1
  store i8 %kind, i8* %28, align 1
  %29 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 1, i8* %29, align 8
  br label %bb17

bb19:                                             ; preds = %bb21, %bb22
  %30 = bitcast { i8*, i32 }* %1 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %35 = insertvalue { i8*, i32 } %34, i32 %33, 1
  resume { i8*, i32 } %35

bb21:                                             ; preds = %bb22
  br label %bb19

bb18:                                             ; preds = %bb20, %bb17
  ret void

bb20:                                             ; preds = %bb17
  br label %bb18
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h5e979f9ce7864a41E"(i64* align 8 %_1) unnamed_addr #0 {
start:
  call void @_ZN4core4hint21unreachable_unchecked17hb6fd994646e11b3dE() #12
  unreachable
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h8904ebebfd28dba6E"(i64* align 8 %_1) unnamed_addr #0 {
start:
  call void @_ZN4core4hint21unreachable_unchecked17hb6fd994646e11b3dE() #12
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h9aa1b78d6b8bd439E(i32 %0) unnamed_addr #0 {
start:
  %1 = alloca i8, align 1
  %ek = alloca i32, align 4
  store i32 %0, i32* %ek, align 4
  %_5 = load i32, i32* %ek, align 4
  %_4 = icmp eq i32 %_5, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_10 = load i32, i32* %ek, align 4
  %_9 = icmp eq i32 %_10, 1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 0, i8* %1, align 1
  br label %bb83

bb83:                                             ; preds = %bb81, %bb82, %bb79, %bb77, %bb75, %bb73, %bb71, %bb69, %bb67, %bb65, %bb63, %bb61, %bb59, %bb57, %bb55, %bb53, %bb51, %bb49, %bb47, %bb45, %bb43, %bb41, %bb39, %bb37, %bb35, %bb33, %bb31, %bb29, %bb27, %bb25, %bb23, %bb21, %bb19, %bb17, %bb15, %bb13, %bb11, %bb9, %bb7, %bb5, %bb3, %bb1
  %2 = load i8, i8* %1, align 1, !range !8, !noundef !1
  ret i8 %2

bb4:                                              ; preds = %bb2
  %_15 = load i32, i32* %ek, align 4
  %_14 = icmp eq i32 %_15, 2
  br i1 %_14, label %bb5, label %bb6

bb3:                                              ; preds = %bb2
  store i8 1, i8* %1, align 1
  br label %bb83

bb6:                                              ; preds = %bb4
  %_20 = load i32, i32* %ek, align 4
  %_19 = icmp eq i32 %_20, 3
  br i1 %_19, label %bb7, label %bb8

bb5:                                              ; preds = %bb4
  store i8 2, i8* %1, align 1
  br label %bb83

bb8:                                              ; preds = %bb6
  %_25 = load i32, i32* %ek, align 4
  %_24 = icmp eq i32 %_25, 4
  br i1 %_24, label %bb9, label %bb10

bb7:                                              ; preds = %bb6
  store i8 3, i8* %1, align 1
  br label %bb83

bb10:                                             ; preds = %bb8
  %_30 = load i32, i32* %ek, align 4
  %_29 = icmp eq i32 %_30, 5
  br i1 %_29, label %bb11, label %bb12

bb9:                                              ; preds = %bb8
  store i8 4, i8* %1, align 1
  br label %bb83

bb12:                                             ; preds = %bb10
  %_35 = load i32, i32* %ek, align 4
  %_34 = icmp eq i32 %_35, 6
  br i1 %_34, label %bb13, label %bb14

bb11:                                             ; preds = %bb10
  store i8 5, i8* %1, align 1
  br label %bb83

bb14:                                             ; preds = %bb12
  %_40 = load i32, i32* %ek, align 4
  %_39 = icmp eq i32 %_40, 7
  br i1 %_39, label %bb15, label %bb16

bb13:                                             ; preds = %bb12
  store i8 6, i8* %1, align 1
  br label %bb83

bb16:                                             ; preds = %bb14
  %_45 = load i32, i32* %ek, align 4
  %_44 = icmp eq i32 %_45, 8
  br i1 %_44, label %bb17, label %bb18

bb15:                                             ; preds = %bb14
  store i8 7, i8* %1, align 1
  br label %bb83

bb18:                                             ; preds = %bb16
  %_50 = load i32, i32* %ek, align 4
  %_49 = icmp eq i32 %_50, 9
  br i1 %_49, label %bb19, label %bb20

bb17:                                             ; preds = %bb16
  store i8 8, i8* %1, align 1
  br label %bb83

bb20:                                             ; preds = %bb18
  %_55 = load i32, i32* %ek, align 4
  %_54 = icmp eq i32 %_55, 10
  br i1 %_54, label %bb21, label %bb22

bb19:                                             ; preds = %bb18
  store i8 9, i8* %1, align 1
  br label %bb83

bb22:                                             ; preds = %bb20
  %_60 = load i32, i32* %ek, align 4
  %_59 = icmp eq i32 %_60, 11
  br i1 %_59, label %bb23, label %bb24

bb21:                                             ; preds = %bb20
  store i8 10, i8* %1, align 1
  br label %bb83

bb24:                                             ; preds = %bb22
  %_65 = load i32, i32* %ek, align 4
  %_64 = icmp eq i32 %_65, 12
  br i1 %_64, label %bb25, label %bb26

bb23:                                             ; preds = %bb22
  store i8 11, i8* %1, align 1
  br label %bb83

bb26:                                             ; preds = %bb24
  %_70 = load i32, i32* %ek, align 4
  %_69 = icmp eq i32 %_70, 13
  br i1 %_69, label %bb27, label %bb28

bb25:                                             ; preds = %bb24
  store i8 12, i8* %1, align 1
  br label %bb83

bb28:                                             ; preds = %bb26
  %_75 = load i32, i32* %ek, align 4
  %_74 = icmp eq i32 %_75, 14
  br i1 %_74, label %bb29, label %bb30

bb27:                                             ; preds = %bb26
  store i8 13, i8* %1, align 1
  br label %bb83

bb30:                                             ; preds = %bb28
  %_80 = load i32, i32* %ek, align 4
  %_79 = icmp eq i32 %_80, 15
  br i1 %_79, label %bb31, label %bb32

bb29:                                             ; preds = %bb28
  store i8 14, i8* %1, align 1
  br label %bb83

bb32:                                             ; preds = %bb30
  %_85 = load i32, i32* %ek, align 4
  %_84 = icmp eq i32 %_85, 16
  br i1 %_84, label %bb33, label %bb34

bb31:                                             ; preds = %bb30
  store i8 15, i8* %1, align 1
  br label %bb83

bb34:                                             ; preds = %bb32
  %_90 = load i32, i32* %ek, align 4
  %_89 = icmp eq i32 %_90, 17
  br i1 %_89, label %bb35, label %bb36

bb33:                                             ; preds = %bb32
  store i8 16, i8* %1, align 1
  br label %bb83

bb36:                                             ; preds = %bb34
  %_95 = load i32, i32* %ek, align 4
  %_94 = icmp eq i32 %_95, 18
  br i1 %_94, label %bb37, label %bb38

bb35:                                             ; preds = %bb34
  store i8 17, i8* %1, align 1
  br label %bb83

bb38:                                             ; preds = %bb36
  %_100 = load i32, i32* %ek, align 4
  %_99 = icmp eq i32 %_100, 19
  br i1 %_99, label %bb39, label %bb40

bb37:                                             ; preds = %bb36
  store i8 18, i8* %1, align 1
  br label %bb83

bb40:                                             ; preds = %bb38
  %_105 = load i32, i32* %ek, align 4
  %_104 = icmp eq i32 %_105, 20
  br i1 %_104, label %bb41, label %bb42

bb39:                                             ; preds = %bb38
  store i8 19, i8* %1, align 1
  br label %bb83

bb42:                                             ; preds = %bb40
  %_110 = load i32, i32* %ek, align 4
  %_109 = icmp eq i32 %_110, 21
  br i1 %_109, label %bb43, label %bb44

bb41:                                             ; preds = %bb40
  store i8 20, i8* %1, align 1
  br label %bb83

bb44:                                             ; preds = %bb42
  %_115 = load i32, i32* %ek, align 4
  %_114 = icmp eq i32 %_115, 22
  br i1 %_114, label %bb45, label %bb46

bb43:                                             ; preds = %bb42
  store i8 21, i8* %1, align 1
  br label %bb83

bb46:                                             ; preds = %bb44
  %_120 = load i32, i32* %ek, align 4
  %_119 = icmp eq i32 %_120, 23
  br i1 %_119, label %bb47, label %bb48

bb45:                                             ; preds = %bb44
  store i8 22, i8* %1, align 1
  br label %bb83

bb48:                                             ; preds = %bb46
  %_125 = load i32, i32* %ek, align 4
  %_124 = icmp eq i32 %_125, 24
  br i1 %_124, label %bb49, label %bb50

bb47:                                             ; preds = %bb46
  store i8 23, i8* %1, align 1
  br label %bb83

bb50:                                             ; preds = %bb48
  %_130 = load i32, i32* %ek, align 4
  %_129 = icmp eq i32 %_130, 25
  br i1 %_129, label %bb51, label %bb52

bb49:                                             ; preds = %bb48
  store i8 24, i8* %1, align 1
  br label %bb83

bb52:                                             ; preds = %bb50
  %_135 = load i32, i32* %ek, align 4
  %_134 = icmp eq i32 %_135, 26
  br i1 %_134, label %bb53, label %bb54

bb51:                                             ; preds = %bb50
  store i8 25, i8* %1, align 1
  br label %bb83

bb54:                                             ; preds = %bb52
  %_140 = load i32, i32* %ek, align 4
  %_139 = icmp eq i32 %_140, 27
  br i1 %_139, label %bb55, label %bb56

bb53:                                             ; preds = %bb52
  store i8 26, i8* %1, align 1
  br label %bb83

bb56:                                             ; preds = %bb54
  %_145 = load i32, i32* %ek, align 4
  %_144 = icmp eq i32 %_145, 28
  br i1 %_144, label %bb57, label %bb58

bb55:                                             ; preds = %bb54
  store i8 27, i8* %1, align 1
  br label %bb83

bb58:                                             ; preds = %bb56
  %_150 = load i32, i32* %ek, align 4
  %_149 = icmp eq i32 %_150, 29
  br i1 %_149, label %bb59, label %bb60

bb57:                                             ; preds = %bb56
  store i8 28, i8* %1, align 1
  br label %bb83

bb60:                                             ; preds = %bb58
  %_155 = load i32, i32* %ek, align 4
  %_154 = icmp eq i32 %_155, 30
  br i1 %_154, label %bb61, label %bb62

bb59:                                             ; preds = %bb58
  store i8 29, i8* %1, align 1
  br label %bb83

bb62:                                             ; preds = %bb60
  %_160 = load i32, i32* %ek, align 4
  %_159 = icmp eq i32 %_160, 31
  br i1 %_159, label %bb63, label %bb64

bb61:                                             ; preds = %bb60
  store i8 30, i8* %1, align 1
  br label %bb83

bb64:                                             ; preds = %bb62
  %_165 = load i32, i32* %ek, align 4
  %_164 = icmp eq i32 %_165, 32
  br i1 %_164, label %bb65, label %bb66

bb63:                                             ; preds = %bb62
  store i8 31, i8* %1, align 1
  br label %bb83

bb66:                                             ; preds = %bb64
  %_170 = load i32, i32* %ek, align 4
  %_169 = icmp eq i32 %_170, 33
  br i1 %_169, label %bb67, label %bb68

bb65:                                             ; preds = %bb64
  store i8 32, i8* %1, align 1
  br label %bb83

bb68:                                             ; preds = %bb66
  %_175 = load i32, i32* %ek, align 4
  %_174 = icmp eq i32 %_175, 34
  br i1 %_174, label %bb69, label %bb70

bb67:                                             ; preds = %bb66
  store i8 33, i8* %1, align 1
  br label %bb83

bb70:                                             ; preds = %bb68
  %_180 = load i32, i32* %ek, align 4
  %_179 = icmp eq i32 %_180, 35
  br i1 %_179, label %bb71, label %bb72

bb69:                                             ; preds = %bb68
  store i8 34, i8* %1, align 1
  br label %bb83

bb72:                                             ; preds = %bb70
  %_185 = load i32, i32* %ek, align 4
  %_184 = icmp eq i32 %_185, 39
  br i1 %_184, label %bb73, label %bb74

bb71:                                             ; preds = %bb70
  store i8 35, i8* %1, align 1
  br label %bb83

bb74:                                             ; preds = %bb72
  %_190 = load i32, i32* %ek, align 4
  %_189 = icmp eq i32 %_190, 37
  br i1 %_189, label %bb75, label %bb76

bb73:                                             ; preds = %bb72
  store i8 39, i8* %1, align 1
  br label %bb83

bb76:                                             ; preds = %bb74
  %_195 = load i32, i32* %ek, align 4
  %_194 = icmp eq i32 %_195, 36
  br i1 %_194, label %bb77, label %bb78

bb75:                                             ; preds = %bb74
  store i8 37, i8* %1, align 1
  br label %bb83

bb78:                                             ; preds = %bb76
  %_200 = load i32, i32* %ek, align 4
  %_199 = icmp eq i32 %_200, 38
  br i1 %_199, label %bb79, label %bb80

bb77:                                             ; preds = %bb76
  store i8 36, i8* %1, align 1
  br label %bb83

bb80:                                             ; preds = %bb78
  %_205 = load i32, i32* %ek, align 4
  %_204 = icmp eq i32 %_205, 40
  br i1 %_204, label %bb81, label %bb82

bb79:                                             ; preds = %bb78
  store i8 38, i8* %1, align 1
  br label %bb83

bb82:                                             ; preds = %bb80
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false)
  store i8 41, i8* %1, align 1
  br label %bb83

bb81:                                             ; preds = %bb80
  store i8 40, i8* %1, align 1
  br label %bb83
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17h8ed040dc97b45fe5E(%"std::io::error::SimpleMessage"* align 8 %m) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = bitcast %"std::io::error::SimpleMessage"* %m to {}*
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h73a3dfa469709b0bE"({}* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3std2io5error14repr_bitpacked4Repr4data17ha4601f9b04a2284aE(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %0, i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  call void @_ZN3std2io5error14repr_bitpacked11decode_repr17h88e7000b4a4b9900E(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %0, i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17ha04cf63aad7a4452E"(%"std::io::error::Custom"* %c) unnamed_addr #0 {
start:
  ret %"std::io::error::Custom"* %c
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3std2io5error5Error19from_static_message17h95f63902794961a2E(%"std::io::error::SimpleMessage"* align 8 %msg) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_2 = call i8* @_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17h8ed040dc97b45fe5E(%"std::io::error::SimpleMessage"* align 8 %msg)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3std2io5error5Error4kind17h96909353db6d870fE(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"std::io::error::ErrorData<&std::io::error::Custom>", align 8
  %0 = alloca i8, align 1
  call void @_ZN3std2io5error14repr_bitpacked4Repr4data17ha4601f9b04a2284aE(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %_2, i8** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to i8*
  %2 = load i8, i8* %1, align 8, !range !9, !noundef !1
  %_4 = zext i8 %2 to i64
  switch i64 %_4, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb7
    i64 2, label %bb2
    i64 3, label %bb6
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %3 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to %"std::io::error::ErrorData<&std::io::error::Custom>::Os"*
  %4 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Os", %"std::io::error::ErrorData<&std::io::error::Custom>::Os"* %3, i32 0, i32 1
  %code = load i32, i32* %4, align 4
  %5 = call i8 @_ZN3std3sys4unix17decode_error_kind17h93afa0014deda228E(i32 %code), !range !5
  store i8 %5, i8* %0, align 1
  br label %bb5

bb7:                                              ; preds = %bb1
  %6 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to %"std::io::error::ErrorData<&std::io::error::Custom>::Simple"*
  %7 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Simple", %"std::io::error::ErrorData<&std::io::error::Custom>::Simple"* %6, i32 0, i32 1
  %kind = load i8, i8* %7, align 1, !range !5, !noundef !1
  store i8 %kind, i8* %0, align 1
  br label %bb8

bb2:                                              ; preds = %bb1
  %8 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage"*
  %9 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage", %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage"* %8, i32 0, i32 1
  %m = load %"std::io::error::SimpleMessage"*, %"std::io::error::SimpleMessage"** %9, align 8, !nonnull !1, !align !3, !noundef !1
  %10 = getelementptr inbounds %"std::io::error::SimpleMessage", %"std::io::error::SimpleMessage"* %m, i32 0, i32 1
  %11 = load i8, i8* %10, align 8, !range !5, !noundef !1
  store i8 %11, i8* %0, align 1
  br label %bb8

bb6:                                              ; preds = %bb1
  %12 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"*
  %13 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Custom", %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"* %12, i32 0, i32 1
  %c = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %13, align 8, !nonnull !1, !align !3, !noundef !1
  %14 = getelementptr inbounds %"std::io::error::Custom", %"std::io::error::Custom"* %c, i32 0, i32 1
  %15 = load i8, i8* %14, align 8, !range !5, !noundef !1
  store i8 %15, i8* %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb5, %bb6, %bb2, %bb7
  %16 = load i8, i8* %0, align 1, !range !5, !noundef !1
  ret i8 %16

bb5:                                              ; preds = %bb4
  br label %bb8
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$9write_all17h028a20e5e6d93486E"({ {}*, [3 x i64]* }* align 8 %self, [0 x i8]* align 1 %buf.0, i64 %buf.1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %self, i32 0, i32 0
  %_5.0 = load {}*, {}** %0, align 8, !nonnull !1, !align !6, !noundef !1
  %1 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %self, i32 0, i32 1
  %_5.1 = load [3 x i64]*, [3 x i64]** %1, align 8, !nonnull !1, !align !3, !noundef !1
  %2 = bitcast {}* %_5.0 to i8*
  %3 = bitcast [3 x i64]* %_5.1 to i64*
  %_6.0 = bitcast i8* %2 to {}*
  %_6.1 = bitcast i64* %3 to [3 x i64]*
  %4 = bitcast [3 x i64]* %_6.1 to i8* ({}*, [0 x i8]*, i64)**
  %5 = getelementptr inbounds i8* ({}*, [0 x i8]*, i64)*, i8* ({}*, [0 x i8]*, i64)** %4, i64 7
  %6 = load i8* ({}*, [0 x i8]*, i64)*, i8* ({}*, [0 x i8]*, i64)** %5, align 8, !invariant.load !1, !nonnull !1
  %7 = call i8* %6({}* align 1 %_6.0, [0 x i8]* align 1 %buf.0, i64 %buf.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3std2io7IoSlice14advance_slices17h3c6851be6b75002aE({ [0 x { i8*, i64 }]*, i64 }* align 8 %bufs, i64 %n) unnamed_addr #0 {
start:
  %_44 = alloca %"core::fmt::Arguments", align 8
  %_35 = alloca i64, align 8
  %_9 = alloca i64*, align 8
  %iter = alloca { i64*, i64* }, align 8
  %accumulated_len = alloca i64, align 8
  %remove = alloca i64, align 8
  store i64 0, i64* %remove, align 8
  store i64 0, i64* %accumulated_len, align 8
  %0 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 0
  %_61.0 = load [0 x { i8*, i64 }]*, [0 x { i8*, i64 }]** %0, align 8, !nonnull !1, !align !3, !noundef !1
  %1 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 1
  %_61.1 = load i64, i64* %1, align 8
  %2 = call { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h3efbb778d3c694a5E"([0 x { i8*, i64 }]* align 8 %_61.0, i64 %_61.1)
  %_6.0 = extractvalue { i64*, i64* } %2, 0
  %_6.1 = extractvalue { i64*, i64* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = call { i64*, i64* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h12be4f10922ea187E"(i64* %_6.0, i64* %_6.1)
  %_5.0 = extractvalue { i64*, i64* } %3, 0
  %_5.1 = extractvalue { i64*, i64* } %3, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 0
  store i64* %_5.0, i64** %4, align 8
  %5 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 1
  store i64* %_5.1, i64** %5, align 8
  br label %bb3

bb3:                                              ; preds = %bb10, %bb2
  %6 = call align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfaa9fe2fd53f53bbE"({ i64*, i64* }* align 8 %iter)
  store i64* %6, i64** %_9, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %7 = bitcast i64** %_9 to {}**
  %8 = load {}*, {}** %7, align 8
  %9 = icmp eq {}* %8, null
  %_12 = select i1 %9, i64 0, i64 1
  switch i64 %_12, label %bb6 [
    i64 0, label %bb11
    i64 1, label %bb5
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb11:                                             ; preds = %bb8, %bb4
  %10 = call { [0 x { i8*, i64 }]*, i64 } @_ZN4core3mem7replace17h694f2a01683d02aeE({ [0 x { i8*, i64 }]*, i64 }* align 8 %bufs, [0 x { i8*, i64 }]* align 8 bitcast (<{}>* @alloc32 to [0 x { i8*, i64 }]*), i64 0)
  %_30.0 = extractvalue { [0 x { i8*, i64 }]*, i64 } %10, 0
  %_30.1 = extractvalue { [0 x { i8*, i64 }]*, i64 } %10, 1
  br label %bb12

bb5:                                              ; preds = %bb4
  %11 = bitcast i64** %_9 to { i8*, i64 }**
  %buf = load { i8*, i64 }*, { i8*, i64 }** %11, align 8, !nonnull !1, !align !3, !noundef !1
  %_16 = load i64, i64* %accumulated_len, align 8
  %12 = call { [0 x i8]*, i64 } @"_ZN60_$LT$std..io..IoSlice$u20$as$u20$core..ops..deref..Deref$GT$5deref17h423d647567a68c90E"({ i8*, i64 }* align 8 %buf)
  %_19.0 = extractvalue { [0 x i8]*, i64 } %12, 0
  %_19.1 = extractvalue { [0 x i8]*, i64 } %12, 1
  br label %bb7

bb7:                                              ; preds = %bb5
  %_15 = add i64 %_16, %_19.1
  %_14 = icmp ugt i64 %_15, %n
  br i1 %_14, label %bb8, label %bb9

bb9:                                              ; preds = %bb7
  %13 = call { [0 x i8]*, i64 } @"_ZN60_$LT$std..io..IoSlice$u20$as$u20$core..ops..deref..Deref$GT$5deref17h423d647567a68c90E"({ i8*, i64 }* align 8 %buf)
  %_24.0 = extractvalue { [0 x i8]*, i64 } %13, 0
  %_24.1 = extractvalue { [0 x i8]*, i64 } %13, 1
  br label %bb10

bb8:                                              ; preds = %bb7
  br label %bb11

bb10:                                             ; preds = %bb9
  %14 = load i64, i64* %accumulated_len, align 8
  %15 = add i64 %14, %_24.1
  store i64 %15, i64* %accumulated_len, align 8
  %16 = load i64, i64* %remove, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %remove, align 8
  br label %bb3

bb12:                                             ; preds = %bb11
  %_36 = load i64, i64* %remove, align 8
  store i64 %_36, i64* %_35, align 8
  %18 = load i64, i64* %_35, align 8
  %19 = call { [0 x { i8*, i64 }]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hcdda3fbbd97ce8c5E"([0 x { i8*, i64 }]* align 8 %_30.0, i64 %_30.1, i64 %18, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc197 to %"core::panic::location::Location"*))
  %_28.0 = extractvalue { [0 x { i8*, i64 }]*, i64 } %19, 0
  %_28.1 = extractvalue { [0 x { i8*, i64 }]*, i64 } %19, 1
  br label %bb13

bb13:                                             ; preds = %bb12
  %20 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 0
  store [0 x { i8*, i64 }]* %_28.0, [0 x { i8*, i64 }]** %20, align 8
  %21 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 1
  store i64 %_28.1, i64* %21, align 8
  %22 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 0
  %_62.0 = load [0 x { i8*, i64 }]*, [0 x { i8*, i64 }]** %22, align 8, !nonnull !1, !align !3, !noundef !1
  %23 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 1
  %_62.1 = load i64, i64* %23, align 8
  %_37 = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17hd4dd33221d458d4dE"([0 x { i8*, i64 }]* align 8 %_62.0, i64 %_62.1)
  br label %bb14

bb14:                                             ; preds = %bb13
  br i1 %_37, label %bb15, label %bb19

bb19:                                             ; preds = %bb14
  %24 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 0
  %_63.0 = load [0 x { i8*, i64 }]*, [0 x { i8*, i64 }]** %24, align 8, !nonnull !1, !align !3, !noundef !1
  %25 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 1
  %_63.1 = load i64, i64* %25, align 8
  %_54 = icmp ult i64 0, %_63.1
  %26 = call i1 @llvm.expect.i1(i1 %_54, i1 true)
  br i1 %26, label %bb20, label %panic

bb15:                                             ; preds = %bb14
  %_42 = load i64, i64* %accumulated_len, align 8
  %_40 = icmp eq i64 %n, %_42
  %_39 = xor i1 %_40, true
  br i1 %_39, label %bb16, label %bb18

bb18:                                             ; preds = %bb15
  br label %bb22

bb16:                                             ; preds = %bb15
  call void @_ZN4core3fmt9Arguments6new_v117h7eb7cea42e61e2ceE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_44, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc73 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc32 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb17

bb17:                                             ; preds = %bb16
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_44, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc199 to %"core::panic::location::Location"*)) #12
  unreachable

bb22:                                             ; preds = %bb21, %bb18
  ret void

bb20:                                             ; preds = %bb19
  %27 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 0
  %_64.0 = load [0 x { i8*, i64 }]*, [0 x { i8*, i64 }]** %27, align 8, !nonnull !1, !align !3, !noundef !1
  %28 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %bufs, i32 0, i32 1
  %_64.1 = load i64, i64* %28, align 8
  %_51 = getelementptr inbounds [0 x { i8*, i64 }], [0 x { i8*, i64 }]* %_64.0, i64 0, i64 0
  %_57 = load i64, i64* %accumulated_len, align 8
  %_55 = sub i64 %n, %_57
  call void @_ZN3std2io7IoSlice7advance17h15c4fdc56d37f59aE({ i8*, i64 }* align 8 %_51, i64 %_55)
  br label %bb21

panic:                                            ; preds = %bb19
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_63.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc201 to %"core::panic::location::Location"*)) #12
  unreachable

bb21:                                             ; preds = %bb20
  br label %bb22
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3std2io7IoSlice7advance17h15c4fdc56d37f59aE({ i8*, i64 }* align 8 %self, i64 %n) unnamed_addr #0 {
start:
  call void @_ZN3std3sys4unix2io7IoSlice7advance17h1503f8034e14cda9E({ i8*, i64 }* align 8 %self, i64 %n)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str103_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$alloc..string..String$GT$6as_ref17hcf0c69c7bb683e5dE"(%"alloc::string::String"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h72d7c8c4763ce3a9E"(%"alloc::string::String"* align 8 %self)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17hd475d9cce21113e2E"([0 x i8]* align 1 %_4.0, i64 %_4.1)
  %2 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 0
  %3 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %2, 0
  %5 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %4, i64 %3, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @_ZN3std3ffi6os_str5OsStr10from_inner17h8d0b0c0777a76ae3E(%"std::sys::unix::os_str::Slice"* align 1 %inner.0, i64 %inner.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast %"std::sys::unix::os_str::Slice"* %inner.0 to %"std::ffi::os_str::OsStr"*
  %0 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %_2.0, 0
  %1 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, i64 %inner.1, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17hd475d9cce21113e2E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice8from_str17h811789b5e4c0b2d7E([0 x i8]* align 1 %self.0, i64 %self.1)
  %_3.0 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %0, 0
  %_3.1 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { %"std::ffi::os_str::OsStr"*, i64 } @_ZN3std3ffi6os_str5OsStr10from_inner17h8d0b0c0777a76ae3E(%"std::sys::unix::os_str::Slice"* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 0
  %3 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %2, 0
  %5 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %4, i64 %3, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN3std3sys4unix2fd8FileDesc17is_write_vectored17h0366847868c3bf85E(i32* align 4 %self) unnamed_addr #0 {
start:
  ret i1 true
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN3std3sys4unix2fs4File17is_write_vectored17h5e2dda830b611d0bE(i32* align 4 %self) unnamed_addr #0 {
start:
  %0 = call zeroext i1 @_ZN3std3sys4unix2fd8FileDesc17is_write_vectored17h0366847868c3bf85E(i32* align 4 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3std3sys4unix2io7IoSlice7advance17h1503f8034e14cda9E({ i8*, i64 }* align 8 %self, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_7 = alloca %"core::fmt::Arguments", align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_4 = load i64, i64* %1, align 8
  %_3 = icmp ult i64 %_4, %n
  br i1 %_3, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = sub i64 %4, %n
  store i64 %5, i64* %2, align 8
  %6 = bitcast { i8*, i64 }* %self to i8**
  %_16 = load i8*, i8** %6, align 8
  %7 = getelementptr inbounds i8, i8* %_16, i64 %n
  store i8* %7, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core3fmt9Arguments6new_v117h7eb7cea42e61e2ceE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_7, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc78 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc32 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_7, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc203 to %"core::panic::location::Location"*)) #12
  unreachable

bb4:                                              ; preds = %bb3
  %8 = bitcast { i8*, i64 }* %self to i8**
  store i8* %_3.i, i8** %8, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN3std3sys4unix2io7IoSlice8as_slice17hc4acce903ac3801dE({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_4 = load i8*, i8** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %1, align 8
  %2 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h40c10930c1cdede6E(i8* %_4, i64 %_5)
  %3 = extractvalue { [0 x i8]*, i64 } %2, 0
  %4 = extractvalue { [0 x i8]*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %3, 0
  %6 = insertvalue { [0 x i8]*, i64 } %5, i64 %4, 1
  ret { [0 x i8]*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3std3sys4unix5locks13pthread_mutex5Mutex6unlock17h32a92a711fd8fc24E(%"std::sys::unix::locks::pthread_mutex::Mutex"* align 8 %self) unnamed_addr #0 {
start:
  %_4 = bitcast %"std::sys::unix::locks::pthread_mutex::Mutex"* %self to %"core::cell::UnsafeCell<libc::unix::bsd::apple::pthread_mutex_t>"*
  %_2.i = bitcast %"core::cell::UnsafeCell<libc::unix::bsd::apple::pthread_mutex_t>"* %_4 to %"libc::unix::bsd::apple::pthread_mutex_t"*
  br label %bb1

bb1:                                              ; preds = %start
  %r = call i32 @pthread_mutex_unlock(%"libc::unix::bsd::apple::pthread_mutex_t"* %_2.i)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice13from_u8_slice17hc92fab724f5a2a37E([0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %0 = alloca { %"std::sys::unix::os_str::Slice"*, i64 }, align 8
  %1 = bitcast { %"std::sys::unix::os_str::Slice"*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %s.1, i64* %3, align 8
  %4 = getelementptr inbounds { %"std::sys::unix::os_str::Slice"*, i64 }, { %"std::sys::unix::os_str::Slice"*, i64 }* %0, i32 0, i32 0
  %5 = load %"std::sys::unix::os_str::Slice"*, %"std::sys::unix::os_str::Slice"** %4, align 8, !nonnull !1, !align !6, !noundef !1
  %6 = getelementptr inbounds { %"std::sys::unix::os_str::Slice"*, i64 }, { %"std::sys::unix::os_str::Slice"*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } undef, %"std::sys::unix::os_str::Slice"* %5, 0
  %9 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } %8, i64 %7, 1
  ret { %"std::sys::unix::os_str::Slice"*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define internal { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice8from_str17h811789b5e4c0b2d7E([0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %s.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !6, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  %_3.0 = extractvalue { [0 x i8]*, i64 } %8, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = call { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice13from_u8_slice17hc92fab724f5a2a37E([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %10 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %9, 0
  %11 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %9, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %12 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } undef, %"std::sys::unix::os_str::Slice"* %10, 0
  %13 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } %12, i64 %11, 1
  ret { %"std::sys::unix::os_str::Slice"*, i64 } %13
}

; Function Attrs: uwtable
define { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17hfe605c3750d2953cE(%"alloc::string::String"* align 8 %s) unnamed_addr #1 {
start:
  %0 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str103_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$alloc..string..String$GT$6as_ref17hcf0c69c7bb683e5dE"(%"alloc::string::String"* align 8 %s)
  %_4.0 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 0
  %_4.1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2.0 = bitcast %"std::ffi::os_str::OsStr"* %_4.0 to %"std::path::Path"*
  %1 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %_2.0, 0
  %2 = insertvalue { %"std::path::Path"*, i64 } %1, i64 %_4.1, 1
  ret { %"std::path::Path"*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN3std4path95_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$alloc..string..String$GT$6as_ref17h0e7ddb53d51fa760E"(%"alloc::string::String"* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17hfe605c3750d2953cE(%"alloc::string::String"* align 8 %self)
  %1 = extractvalue { %"std::path::Path"*, i64 } %0, 0
  %2 = extractvalue { %"std::path::Path"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %1, 0
  %4 = insertvalue { %"std::path::Path"*, i64 } %3, i64 %2, 1
  ret { %"std::path::Path"*, i64 } %4
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6335719c142d890bE"(%"alloc::string::String"** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load %"alloc::string::String"*, %"alloc::string::String"** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %0 = call zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17hc3b2cc45a5a85a28E"(%"alloc::string::String"* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$17is_write_vectored17hbc2005173f584d95E"(i32* align 4 %self) unnamed_addr #0 {
start:
  %0 = call zeroext i1 @_ZN3std3sys4unix2fs4File17is_write_vectored17h5e2dda830b611d0bE(i32* align 4 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* @"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h191fc28bd97479c3E"(%"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"** align 8 %self) unnamed_addr #1 {
start:
  %0 = load %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"*, %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"** %self, align 8, !nonnull !1, !align !3, !noundef !1
  ret %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %0
}

; Function Attrs: uwtable
define align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h19946a2cb55f9717E"(%"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"** align 8 %self) unnamed_addr #1 {
start:
  %0 = load %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"*, %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"** %self, align 8, !nonnull !1, !align !3, !noundef !1
  ret %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h81758a42a9451b8eE(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h32d9f9b734aa1a1cE(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17heb5ea38a5c804908E(%"alloc::string::String"** align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h853d1c16ed84482fE(%"alloc::string::String"** align 8 %x, i1 (%"alloc::string::String"**, %"core::fmt::Formatter"*)* @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6335719c142d890bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17hf71b42590e397d56E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hc675a6748facd6cbE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h32d9f9b734aa1a1cE(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i64*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i64* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !6, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !6, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h853d1c16ed84482fE(%"alloc::string::String"** align 8 %x, i1 (%"alloc::string::String"**, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (%"alloc::string::String"**, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"alloc::string::String"** %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !6, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !6, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hc675a6748facd6cbE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !6, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !6, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: uwtable
define zeroext i1 @_ZN4core3fmt5Write10write_char17hf18274146b21fa21E({ i32*, i8* }* align 8 %self, i32 %c) unnamed_addr #1 {
start:
  %_10 = alloca [4 x i8], align 1
  %0 = getelementptr inbounds [4 x i8], [4 x i8]* %_10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 4, i1 false)
  %_7.0 = bitcast [4 x i8]* %_10 to [0 x i8]*
  %1 = call { [0 x i8]*, i64 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817hbfad75e3083eb411E"(i32 %c, [0 x i8]* align 1 %_7.0, i64 4)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5013b670335e625E"({ i32*, i8* }* align 8 %self, [0 x i8]* align 1 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %2
}

; Function Attrs: uwtable
define zeroext i1 @_ZN4core3fmt5Write9write_fmt17h40f603cd2b9124b5E({ i32*, i8* }* align 8 %0, %"core::fmt::Arguments"* %args) unnamed_addr #1 {
start:
  %_6 = alloca %"core::fmt::Arguments", align 8
  %self = alloca { i32*, i8* }*, align 8
  store { i32*, i8* }* %0, { i32*, i8* }** %self, align 8
  %_3.0 = bitcast { i32*, i8* }** %self to {}*
  %1 = bitcast %"core::fmt::Arguments"* %_6 to i8*
  %2 = bitcast %"core::fmt::Arguments"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 48, i1 false)
  %3 = call zeroext i1 @_ZN4core3fmt5write17hda8e8eb84b49cbfcE({}* align 1 %_3.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.1 to [3 x i64]*), %"core::fmt::Arguments"* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %3
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h7eb7cea42e61e2ceE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h7eb7cea42e61e2ceE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc46 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc32 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc210 to %"core::panic::location::Location"*)) #12
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h490f01cbb07059e0E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !10, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h3cfa8d842853cc0bE(i64 %_3), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h49a0ead2ca2faefaE(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !10, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3mem4drop17hb782bd4186d80dacE(i64 %_x) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x { i8*, i64 }]*, i64 } @_ZN4core3mem7replace17h694f2a01683d02aeE({ [0 x { i8*, i64 }]*, i64 }* align 8 %dest, [0 x { i8*, i64 }]* align 8 %src.0, i64 %src.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %1 = invoke { [0 x { i8*, i64 }]*, i64 } @_ZN4core3ptr4read17h2739f3d1b6406410E({ [0 x { i8*, i64 }]*, i64 }* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %2 = load i8, i8* %_7, align 1, !range !7, !noundef !1
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
  %result.0 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 0
  %result.1 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 1
  store i8 0, i8* %_7, align 1
  invoke void @_ZN4core3ptr5write17hf558c943139e42aeE({ [0 x { i8*, i64 }]*, i64 }* %dest, [0 x { i8*, i64 }]* align 8 %src.0, i64 %src.1)
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
  %14 = insertvalue { [0 x { i8*, i64 }]*, i64 } undef, [0 x { i8*, i64 }]* %result.0, 0
  %15 = insertvalue { [0 x { i8*, i64 }]*, i64 } %14, i64 %result.1, 1
  ret { [0 x { i8*, i64 }]*, i64 } %15

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
define i64 @_ZN4core3mem7replace17hdc10bd87ee79c8c9E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h62b112df643f5835E(i64* %dest)
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
  invoke void @_ZN4core3ptr5write17h61f8c0ac28daacaaE(i64* %dest, i64 %src)
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
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h30b7817a704645e9E"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %32 = load i64, i64* %31, align 8, !range !4, !noundef !1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h3cfa8d842853cc0bE(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !11, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h1446aa56054e4d91E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17hf3dcbc82fa4a65cdE"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1 to i8*
  %1 = load i8, i8* %0, align 8, !range !9, !noundef !1
  %_2 = zext i8 %1 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb1
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  %2 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"*
  %3 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"* %2, i32 0, i32 1
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h8f638237e8f7d475E"(%"std::io::error::Custom"** %3)
  br label %bb1

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hd06212b6e7718bcbE"({ {}*, [3 x i64]* }* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %2 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  %4 = load {}*, {}** %3, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  %6 = load [3 x i64]*, [3 x i64]** %5, align 8, !nonnull !1, !align !3, !noundef !1
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
  %14 = load i64*, i64** %13, align 8, !nonnull !1, !align !3, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17h948611b27832f3e9E(i8* %12, i64* align 8 %14) #13
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
  %24 = load i64*, i64** %23, align 8, !nonnull !1, !align !3, !noundef !1
  call void @_ZN5alloc5alloc8box_free17h948611b27832f3e9E(i8* %22, i64* align 8 %24)
  br label %bb1

abort:                                            ; preds = %bb4
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
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
define void @"_ZN4core3ptr121drop_in_place$LT$core..cell..RefMut$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$17h708b126b94a0e9a2E"({ i64*, i64* }* %_1) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h9c68f93afc1f90ffE"(i64** %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr126drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..stdio..StderrRaw$GT$$GT$$GT$17h536df2d0e6e2daf0E"(i64** %_1) unnamed_addr #1 {
start:
  call void @"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd1631ce6bb78a3c6E"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr175drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$$GT$17hd69dd0c8b645bfdbE"(i64** %_1) unnamed_addr #1 {
start:
  call void @"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18697e1a1ab7fc0E"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hf5496138af89cc5eE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h16e4f65d70db209fE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h015725d57c06165eE({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4a15cbeb3736a310E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hc2b52e138bb7e931E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x { i8*, i64 }]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h66eebd9e10e613d0E({ i8*, i64 }* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x { i8*, i64 }]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hc5cd74ce997cd04fE({}* %0, i64 %len)
  %2 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 0
  %3 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x { i8*, i64 }]*, i64 } undef, [0 x { i8*, i64 }]* %2, 0
  %5 = insertvalue { [0 x { i8*, i64 }]*, i64 } %4, i64 %3, 1
  ret { [0 x { i8*, i64 }]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h855fa266bcf9ed11E"(i32* %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17hc8acbc773e6cbcdaE"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2e76aae1ee3c059eE"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h04561dd14eec157aE"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$app_init..OpngOptions$GT$17hc22d75426cbacf83E"(%OpngOptions* %_1) unnamed_addr #1 {
start:
  %_3 = alloca %"core::option::Option<alloc::string::String>", align 8
  %_2 = alloca %"core::option::Option<alloc::string::String>", align 8
  %0 = getelementptr inbounds %OpngOptions, %OpngOptions* %_1, i32 0, i32 1
  %1 = bitcast %"core::option::Option<alloc::string::String>"* %_3 to i8*
  %2 = bitcast %"core::option::Option<alloc::string::String>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 1 %2, i64 24, i1 false)
  call void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h9afe40cd32628c2bE"(%"core::option::Option<alloc::string::String>"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbcc30389f9487c3fE"(i8** %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h839cd6c3bc013ae4E"(i8** %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr43drop_in_place$LT$dyn$u20$std..io..Write$GT$17h597c4ffe7d614d01E"({}* %_1.0, [3 x i64]* align 8 %_1.1) unnamed_addr #1 {
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
define void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h1682b26494ead3e9E"(%"std::io::error::Custom"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::Custom"* %_1 to { {}*, [3 x i64]* }*
  call void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hd06212b6e7718bcbE"({ {}*, [3 x i64]* }* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr43drop_in_place$LT$std..io..stdio..Stderr$GT$17h9bf3616f38b09887E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr43drop_in_place$LT$std..io..stdio..Stdout$GT$17hdbc054bfa3c30915E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h9c68f93afc1f90ffE"(i64** %_1) unnamed_addr #1 {
start:
  call void @"_ZN66_$LT$core..cell..BorrowRefMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8df1aceeaa3cb6b8E"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17hc8acbc773e6cbcdaE"(i32* %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17ha8b3411ae4b7aa58E"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h04561dd14eec157aE"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19f3f7744290703cE"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17ha4cf620e0d9263c7E"({ i8*, i64 }* %1) #13
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
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17ha4cf620e0d9263c7E"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
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
define internal void @"_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17h3715c04bfaa1915aE"(%"core::cell::BorrowMutError"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StderrLock$GT$17h5be255f0d20cb83fE"(i64** %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr126drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..stdio..StderrRaw$GT$$GT$$GT$17h536df2d0e6e2daf0E"(i64** %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StdoutLock$GT$17h65700637ac23defcE"(i64** %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr175drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$$GT$17hd69dd0c8b645bfdbE"(i64** %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17h352197120760a572E"(i32* %_1) unnamed_addr #1 {
start:
  call void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5fd0ec86b0eb8f27E"(i32* align 4 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17ha8b3411ae4b7aa58E"(i32* %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17h352197120760a572E"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x { i8*, i64 }]*, i64 } @_ZN4core3ptr4read17h2739f3d1b6406410E({ [0 x { i8*, i64 }]*, i64 }* %src) unnamed_addr #0 {
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
  %8 = bitcast { i8*, i64 }* %tmp to { [0 x { i8*, i64 }]*, i64 }*
  br label %bb2

bb2:                                              ; preds = %bb1
  %9 = bitcast { [0 x { i8*, i64 }]*, i64 }* %8 to i8*
  %10 = bitcast { [0 x { i8*, i64 }]*, i64 }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 0
  %_6.0 = load i8*, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 1
  %_6.1 = load i64, i64* %12, align 8
  %_3.0.i = bitcast i8* %_6.0 to i64*
  %13 = bitcast i64* %_3.0.i to [0 x { i8*, i64 }]*
  %14 = insertvalue { [0 x { i8*, i64 }]*, i64 } undef, [0 x { i8*, i64 }]* %13, 0
  %15 = insertvalue { [0 x { i8*, i64 }]*, i64 } %14, i64 %_6.1, 1
  %16 = extractvalue { [0 x { i8*, i64 }]*, i64 } %15, 0
  %17 = extractvalue { [0 x { i8*, i64 }]*, i64 } %15, 1
  %18 = extractvalue { [0 x { i8*, i64 }]*, i64 } %15, 0
  %19 = extractvalue { [0 x { i8*, i64 }]*, i64 } %15, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %20 = insertvalue { [0 x { i8*, i64 }]*, i64 } undef, [0 x { i8*, i64 }]* %18, 0
  %21 = insertvalue { [0 x { i8*, i64 }]*, i64 } %20, i64 %19, 1
  ret { [0 x { i8*, i64 }]*, i64 } %21
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17h62b112df643f5835E(i64* %src) unnamed_addr #0 {
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
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17ha4cf620e0d9263c7E"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7af7f0c1107626bE"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h839cd6c3bc013ae4E"(i8** %_1) unnamed_addr #1 {
start:
  call void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17he48fbf5ecf2f4706E"(i8** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h61f8c0ac28daacaaE(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hf558c943139e42aeE({ [0 x { i8*, i64 }]*, i64 }* %dst, [0 x { i8*, i64 }]* align 8 %0, i64 %1) unnamed_addr #0 {
start:
  %src = alloca { [0 x { i8*, i64 }]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %src, i32 0, i32 0
  store [0 x { i8*, i64 }]* %0, [0 x { i8*, i64 }]** %2, align 8
  %3 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %src, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = bitcast { [0 x { i8*, i64 }]*, i64 }* %dst to i8*
  %5 = bitcast { [0 x { i8*, i64 }]*, i64 }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Write$GT$$GT$17hd3b493f123442ae2E"({ {}*, [3 x i64]* }* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %2 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  %4 = load {}*, {}** %3, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  %6 = load [3 x i64]*, [3 x i64]** %5, align 8, !nonnull !1, !align !3, !noundef !1
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
  %14 = load i64*, i64** %13, align 8, !nonnull !1, !align !3, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17h5a5b86c60fe670e8E(i8* %12, i64* align 8 %14) #13
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
  %24 = load i64*, i64** %23, align 8, !nonnull !1, !align !3, !noundef !1
  call void @_ZN5alloc5alloc8box_free17h5a5b86c60fe670e8E(i8* %22, i64* align 8 %24)
  br label %bb1

abort:                                            ; preds = %bb4
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
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
define void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h8f638237e8f7d475E"(%"std::io::error::Custom"** %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %2 = bitcast i64** %1 to %"std::io::error::Custom"**
  %3 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %2, align 8
  invoke void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h1682b26494ead3e9E"(%"std::io::error::Custom"* %3)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %4 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %5 = load i64*, i64** %4, align 8, !nonnull !1, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17h6fcb83b366e3b68fE(i64* %5) #13
          to label %bb2 unwind label %abort

cleanup:                                          ; preds = %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %11 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %12 = load i64*, i64** %11, align 8, !nonnull !1, !noundef !1
  call void @_ZN5alloc5alloc8box_free17h6fcb83b366e3b68fE(i64* %12)
  br label %bb1

abort:                                            ; preds = %bb4
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb2:                                              ; preds = %bb4
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h2ea6e57e5a193dffE"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %_2 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h2f12e35b27fbef5aE"(%"std::io::error::Custom"* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i64* %_2, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h170bf1cf91d533c6E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9ac722e7e7097da6E"(i8* %self.0, i64* align 8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h7f325184d2fe0c34E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h6b863512d9a0de7aE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd2edebc444501a85E"(i8* %self.0, i64* align 8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h7f325184d2fe0c34E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hb8f24f63da55940fE"(i64* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h55ec7e42e1a3f356E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h7f325184d2fe0c34E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hef2467b1789e7155E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb05e94e6c33e38d2E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h7f325184d2fe0c34E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h559871e8f99d473bE"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17heefb7bd75996c6e2E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h0124106d22e8d006E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hdc9b0f74e131248fE"({ i8*, i64* }* align 8 %self)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h295b8970d951fa9aE"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h124ad5cb85e290beE"({ i8*, i64* }* align 8 %self)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hfaee2dfe606f79ceE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h666184a115f59898E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h9afe40cd32628c2bE"(%"core::option::Option<alloc::string::String>"* %_1) unnamed_addr #1 {
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
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2e76aae1ee3c059eE"(%"alloc::string::String"* %5)
  br label %bb1
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr72drop_in_place$LT$core..cell..RefMut$LT$std..io..stdio..StderrRaw$GT$$GT$17h279a34b05c74f409E"({ i8*, i64* }* %_1) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h9c68f93afc1f90ffE"(i64** %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr76drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17h3fcb60c8153243b0E"({ i32*, i8* }* %_1) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h5667141b3eedb478E"(i8** %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17hc0c88ad39c4faae3E"(i8* %self, i64 %count) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = sub i64 0, %count
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr i8, i8* %self, i64 %1
  store i8* %2, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %_3.i
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h327ffeade0f1136dE"(i8* %self, i8* %other) unnamed_addr #0 {
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
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h56293f0583b4021bE"({}* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to {}**
  store {}* %self, {}** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h42548a1211fde40fE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h52a96e575e2561c7E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h327ffeade0f1136dE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6ba16440390f7b68E"({ i8*, i64 }* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast { i8*, i64 }* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h52a96e575e2561c7E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h327ffeade0f1136dE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h5667141b3eedb478E"(i8** %_1) unnamed_addr #1 {
start:
  %0 = bitcast i8** %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbcc30389f9487c3fE"(i8** %_1)
  br label %bb1
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h89895170f10c9252E"(%"core::result::Result<std::fs::File, std::io::error::Error>"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_1 to i32*
  %1 = load i32, i32* %0, align 8, !range !12, !noundef !1
  %_2 = zext i32 %1 to i64
  %2 = icmp eq i64 %_2, 0
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_1 to %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"*
  %4 = getelementptr inbounds %"core::result::Result<std::fs::File, std::io::error::Error>::Ok", %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"* %3, i32 0, i32 1
  call void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h855fa266bcf9ed11E"(i32* %4)
  br label %bb1

bb3:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_1 to %"core::result::Result<std::fs::File, std::io::error::Error>::Err"*
  %6 = getelementptr inbounds %"core::result::Result<std::fs::File, std::io::error::Error>::Err", %"core::result::Result<std::fs::File, std::io::error::Error>::Err"* %5, i32 0, i32 1
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbcc30389f9487c3fE"(i8** %6)
  br label %bb1

bb1:                                              ; preds = %bb3, %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr88drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17ha6371ef0e44556dbE"({ i32*, i8* }** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h015725d57c06165eE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata14from_raw_parts17h0955954a666328c1E({}* %data_address) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h52a96e575e2561c7E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hc2b52e138bb7e931E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define { [0 x { i8*, i64 }]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hc5cd74ce997cd04fE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[std::io::IoSlice]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[std::io::IoSlice]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[std::io::IoSlice]>"* %_3 to { [0 x { i8*, i64 }]*, i64 }*
  %10 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x { i8*, i64 }]*, [0 x { i8*, i64 }]** %10, align 8
  %12 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x { i8*, i64 }]*, i64 } undef, [0 x { i8*, i64 }]* %11, 0
  %15 = insertvalue { [0 x { i8*, i64 }]*, i64 } %14, i64 %13, 1
  ret { [0 x { i8*, i64 }]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr8metadata8metadata17hbe8f7735c8392d8bE([0 x { i8*, i64 }]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[std::io::IoSlice]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[std::io::IoSlice]>"* %_2 to { [0 x { i8*, i64 }]*, i64 }*
  %1 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %0, i32 0, i32 0
  store [0 x { i8*, i64 }]* %ptr.0, [0 x { i8*, i64 }]** %1, align 8
  %2 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %0, i32 0, i32 1
  store i64 %ptr.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[std::io::IoSlice]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr8metadata8metadata17hcf934f57fb16a4caE([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h05ac08102a57f7e3E"({ i8*, i64 }* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to { i8*, i64 }**
  store { i8*, i64 }* %ptr, { i8*, i64 }** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h2f12e35b27fbef5aE"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %ptr, %"std::io::error::Custom"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6897bfdf0fcde530E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h73a3dfa469709b0bE"({}* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to {}**
  store {}* %ptr, {}** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hbedb5387757f733bE"(%"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"**
  store %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* %ptr, %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hccd176ffe703aedcE"(%"std::io::stdio::StderrRaw"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to %"std::io::stdio::StderrRaw"**
  store %"std::io::stdio::StderrRaw"* %ptr, %"std::io::stdio::StderrRaw"** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he3bd7a0e2d50ff1dE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf3cd52ff9d9f14f9E"(%"std::io::error::SimpleMessage"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::SimpleMessage"**
  store %"std::io::error::SimpleMessage"* %ptr, %"std::io::error::SimpleMessage"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hdc5284ada1ef4b2cE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h42548a1211fde40fE"(i8* %ptr)
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
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he3bd7a0e2d50ff1dE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h55ec7e42e1a3f356E"(i64* %self) unnamed_addr #0 {
start:
  %_3 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5a784c78d1356b1E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"std::io::error::Custom"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he3bd7a0e2d50ff1dE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9ac722e7e7097da6E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha0b3bc36720c56bdE"(i8* %self.0, i64* align 8 %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he3bd7a0e2d50ff1dE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb05e94e6c33e38d2E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17heefb7bd75996c6e2E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he3bd7a0e2d50ff1dE"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd2edebc444501a85E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1194823079248d4eE"(i8* %self.0, i64* align 8 %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he3bd7a0e2d50ff1dE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd984f048e187e599E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdba444df0d760f77E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3 to %"std::io::error::SimpleMessage"*
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf3cd52ff9d9f14f9E"(%"std::io::error::SimpleMessage"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1194823079248d4eE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; Function Attrs: inlinehint uwtable
define %"std::io::stdio::StderrRaw"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h24d7779ce72be3deE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to %"std::io::stdio::StderrRaw"*
  ret %"std::io::stdio::StderrRaw"* %_2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h553b9e3d1103a44fE"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to { i8*, i64 }*
  ret { i8*, i64 }* %_2
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha0b3bc36720c56bdE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; Function Attrs: inlinehint uwtable
define %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5a784c78d1356b1E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::Custom"*
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha9e5c81b0923be49E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hac12bba64214e5f1E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"*
  ret %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* %_2
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdba444df0d760f77E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to {}*
  ret {}* %_2
}

; Function Attrs: inlinehint uwtable
define %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he29c9ece348c0394E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::SimpleMessage"*
  ret %"std::io::error::SimpleMessage"* %_2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17heefb7bd75996c6e2E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h124ad5cb85e290beE"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !1, !align !3, !noundef !1
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha0b3bc36720c56bdE"(i8* %_3.0, i64* align 8 %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h2512a9c06c793938E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hac12bba64214e5f1E"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* %_2
}

; Function Attrs: inlinehint uwtable
define align 1 %"std::io::stdio::StderrRaw"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h539d154252cbe34fE"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"std::io::stdio::StderrRaw"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h24d7779ce72be3deE"(i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::stdio::StderrRaw"* %_2
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h666184a115f59898E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5a784c78d1356b1E"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hdc9b0f74e131248fE"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !1, !align !3, !noundef !1
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1194823079248d4eE"(i8* %_3.0, i64* align 8 %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17ha6652acbdb6bbd75E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h786c84c2fd51fba1E"(i8* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17heefb7bd75996c6e2E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h786c84c2fd51fba1E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha9e5c81b0923be49E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he3bd7a0e2d50ff1dE"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hb649989cc5007125E"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17heefb7bd75996c6e2E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4a15cbeb3736a310E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6897bfdf0fcde530E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h5557809d92077015E"({}* %_1.0, [3 x i64]* align 8 %_1.1) unnamed_addr #1 {
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
define void @"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Write$GT$$GT$$GT$17hb62ed27a62093f12E"({ i8*, i8* }* %_1) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i8* }* %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %4 = bitcast { i8*, i8* }* %_1 to { {}*, [3 x i64]* }*
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Write$GT$$GT$17hd3b493f123442ae2E"({ {}*, [3 x i64]* }* %4)
  br label %bb1
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17hc26a314f1ec23718E"(i8* %self, i8* %other) unnamed_addr #0 {
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
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h16e4f65d70db209fE"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hc88f9f269db5e270E"({ i8*, i64 }* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast { i8*, i64 }* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h0955954a666328c1E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17hc26a314f1ec23718E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hd11c91ba2205fcb8E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3ptr8metadata8metadata17hcf934f57fb16a4caE([0 x i8]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hb1e78d66d045e917E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17ha0c77a16fa79b61dE([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %v.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %v.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !6, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts23from_utf8_unchecked_mut17h46a5f332736e1ae5E([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %v.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %v.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal align 8 i64* @_ZN4core4cell12BorrowRefMut3new17h59303c7bcde35183E(i64* align 8 %borrow) unnamed_addr #0 {
start:
  %_7 = alloca i64*, align 8
  %0 = alloca i64*, align 8
  %_2 = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17h374f88892666f857E"(i64* align 8 %borrow)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i64 %_2, 0
  br i1 %1, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h045c7d61baecc206E"(i64* align 8 %borrow, i64 -1)
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
  %5 = load i64*, i64** %_7, align 8, !nonnull !1, !align !3, !noundef !1
  store i64* %5, i64** %0, align 8
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17h374f88892666f857E"(i64* align 8 %self) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core4cell13Cell$LT$T$GT$3set17h045c7d61baecc206E"(i64* align 8 %self, i64 %val) unnamed_addr #0 {
start:
  %old = call i64 @"_ZN4core4cell13Cell$LT$T$GT$7replace17h00f6ff02089d9a8fE"(i64* align 8 %self, i64 %val)
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core3mem4drop17hb782bd4186d80dacE(i64 %old)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: uwtable
define i64 @"_ZN4core4cell13Cell$LT$T$GT$7replace17h00f6ff02089d9a8fE"(i64* align 8 %self, i64 %val) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  store i8 1, i8* %_9, align 1
  br label %bb1

bb5:                                              ; preds = %cleanup
  %1 = load i8, i8* %_9, align 1, !range !7, !noundef !1
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
  %8 = invoke i64 @_ZN4core3mem7replace17hdc10bd87ee79c8c9E(i64* align 8 %self, i64 %val)
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
define { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h0b92cb711ed0cd42E"(i64* align 8 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17h09a4aba8f711545fE"(i64* align 8 %self)
  %_2.0 = extractvalue { i8*, i8* } %1, 0
  %_2.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h6b7bafcbaa4b8672E"(i8* %_2.0, i8* %_2.1, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc214 to [0 x i8]*), i64 16, %"core::panic::location::Location"* align 8 %0)
  %3 = extractvalue { i8*, i64* } %2, 0
  %4 = extractvalue { i8*, i64* } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = insertvalue { i8*, i64* } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64* } %5, i64* %4, 1
  ret { i8*, i64* } %6
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h3c1f8bc39dbc8e32E"(%"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>"* align 8 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { i64*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17hd01a8d28bf1c546dE"(%"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>"* align 8 %self)
  %_2.0 = extractvalue { i64*, i8* } %1, 0
  %_2.1 = extractvalue { i64*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i64*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h81727a5510e9480fE"(i64* %_2.0, i8* %_2.1, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc214 to [0 x i8]*), i64 16, %"core::panic::location::Location"* align 8 %0)
  %3 = extractvalue { i64*, i64* } %2, 0
  %4 = extractvalue { i64*, i64* } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = insertvalue { i64*, i64* } undef, i64* %3, 0
  %6 = insertvalue { i64*, i64* } %5, i64* %4, 1
  ret { i64*, i64* } %6
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17h09a4aba8f711545fE"(i64* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca { i8*, i64* }, align 8
  %b = alloca i64*, align 8
  %_2 = alloca i64*, align 8
  %1 = alloca { i8*, i8* }, align 8
  %2 = call align 8 i64* @_ZN4core4cell12BorrowRefMut3new17h59303c7bcde35183E(i64* align 8 %self)
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
  %8 = load i64*, i64** %_2, align 8, !nonnull !1, !align !3, !noundef !1
  store i64* %8, i64** %b, align 8
  %9 = bitcast i64* %self to i8*
  %10 = getelementptr i8, i8* %9, i64 8
  %_9 = bitcast i8* %10 to %"core::cell::UnsafeCell<std::io::stdio::StderrRaw>"*
  %_2.i = bitcast %"core::cell::UnsafeCell<std::io::stdio::StderrRaw>"* %_9 to %"std::io::stdio::StderrRaw"*
  br label %bb5

bb8:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h9c68f93afc1f90ffE"(i64** %b) #13
          to label %bb9 unwind label %abort

cleanup:                                          ; preds = %bb5
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb8

bb5:                                              ; preds = %bb4
  %value = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hccd176ffe703aedcE"(%"std::io::stdio::StderrRaw"* %_2.i)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12 = load i64*, i64** %b, align 8, !nonnull !1, !align !3, !noundef !1
  %16 = bitcast { i8*, i64* }* %_10 to i8**
  store i8* %value, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  store i64* %_12, i64** %17, align 8
  %18 = bitcast { i8*, i8* }* %1 to { i8*, i64* }*
  %19 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !nonnull !1, !noundef !1
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_10, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8, !nonnull !1, !align !3, !noundef !1
  %23 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %18, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %18, i32 0, i32 1
  store i64* %22, i64** %24, align 8
  br label %bb7

abort:                                            ; preds = %bb8
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb9:                                              ; preds = %bb8
  %26 = bitcast { i8*, i32 }* %0 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

bb7:                                              ; preds = %bb6, %bb2
  %32 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = insertvalue { i8*, i8* } undef, i8* %33, 0
  %37 = insertvalue { i8*, i8* } %36, i8* %35, 1
  ret { i8*, i8* } %37
}

; Function Attrs: inlinehint uwtable
define { i64*, i8* } @"_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17hd01a8d28bf1c546dE"(%"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>"* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_10 = alloca { i64*, i64* }, align 8
  %b = alloca i64*, align 8
  %_2 = alloca i64*, align 8
  %1 = alloca { i64*, i8* }, align 8
  %_4 = bitcast %"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>"* %self to i64*
  %2 = call align 8 i64* @_ZN4core4cell12BorrowRefMut3new17h59303c7bcde35183E(i64* align 8 %_4)
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
  %6 = bitcast { i64*, i8* }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = bitcast { i64*, i8* }* %1 to {}**
  store {}* null, {}** %7, align 8
  br label %bb7

bb4:                                              ; preds = %bb1
  %8 = load i64*, i64** %_2, align 8, !nonnull !1, !align !3, !noundef !1
  store i64* %8, i64** %b, align 8
  %_9 = getelementptr inbounds %"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>", %"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>"* %self, i32 0, i32 1
  %_2.i = bitcast %"core::cell::UnsafeCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>"* %_9 to %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"*
  br label %bb5

bb8:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h9c68f93afc1f90ffE"(i64** %b) #13
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
  %value = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hbedb5387757f733bE"(%"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* %_2.i)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12 = load i64*, i64** %b, align 8, !nonnull !1, !align !3, !noundef !1
  %14 = bitcast { i64*, i64* }* %_10 to i64**
  store i64* %value, i64** %14, align 8
  %15 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_10, i32 0, i32 1
  store i64* %_12, i64** %15, align 8
  %16 = bitcast { i64*, i8* }* %1 to { i64*, i64* }*
  %17 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_10, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8, !nonnull !1, !noundef !1
  %19 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_10, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8, !nonnull !1, !align !3, !noundef !1
  %21 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %16, i32 0, i32 0
  store i64* %18, i64** %21, align 8
  %22 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %16, i32 0, i32 1
  store i64* %20, i64** %22, align 8
  br label %bb7

abort:                                            ; preds = %bb8
  %23 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
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
  %30 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %1, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %1, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = insertvalue { i64*, i8* } undef, i64* %31, 0
  %35 = insertvalue { i64*, i8* } %34, i8* %33, 1
  ret { i64*, i8* } %35
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core4char7methods15encode_utf8_raw17hc79f70714063bc45E(i32 %0, [0 x i8]* align 1 %dst.0, i64 %dst.1) unnamed_addr #0 {
start:
  %_91 = alloca i64, align 8
  %_86 = alloca i64, align 8
  %_76 = alloca [3 x { i8*, i64* }], align 8
  %_69 = alloca %"core::fmt::Arguments", align 8
  %_6 = alloca { i64, { [0 x i8]*, i64 } }, align 8
  %len = alloca i64, align 8
  %code = alloca i32, align 4
  store i32 %0, i32* %code, align 4
  %_5 = load i32, i32* %code, align 4
  %1 = call i64 @_ZN4core4char7methods8len_utf817h587cf1510e4942daE(i32 %_5)
  store i64 %1, i64* %len, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = load i64, i64* %len, align 8
  %2 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17heecf19c5c2a2b2cbE"([0 x i8]* align 1 %dst.0, i64 %dst.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc216 to %"core::panic::location::Location"*))
  %_9.0 = extractvalue { [0 x i8]*, i64 } %2, 0
  %_9.1 = extractvalue { [0 x i8]*, i64 } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast { i64, { [0 x i8]*, i64 } }* %_6 to i64*
  store i64 %_7, i64* %3, align 8
  %4 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 0
  store [0 x i8]* %_9.0, [0 x i8]** %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 1
  store i64 %_9.1, i64* %6, align 8
  %7 = bitcast { i64, { [0 x i8]*, i64 } }* %_6 to i64*
  %8 = load i64, i64* %7, align 8
  switch i64 %8, label %bb4 [
    i64 1, label %bb3
    i64 2, label %bb5
    i64 3, label %bb6
    i64 4, label %bb7
  ]

bb4:                                              ; preds = %bb7, %bb6, %bb5, %bb3, %bb2
  %9 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h81758a42a9451b8eE(i64* align 8 %len)
  %_77.0 = extractvalue { i8*, i64* } %9, 0
  %_77.1 = extractvalue { i8*, i64* } %9, 1
  br label %bb12

bb3:                                              ; preds = %bb2
  %10 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 0
  %_94.0 = load [0 x i8]*, [0 x i8]** %11, align 8, !nonnull !1, !align !6, !noundef !1
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 1
  %_94.1 = load i64, i64* %12, align 8
  %_14 = icmp uge i64 %_94.1, 1
  br i1 %_14, label %bb8, label %bb4

bb5:                                              ; preds = %bb2
  %13 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 0
  %_95.0 = load [0 x i8]*, [0 x i8]** %14, align 8, !nonnull !1, !align !6, !noundef !1
  %15 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 1
  %_95.1 = load i64, i64* %15, align 8
  %_17 = icmp uge i64 %_95.1, 2
  br i1 %_17, label %bb9, label %bb4

bb6:                                              ; preds = %bb2
  %16 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %17 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %16, i32 0, i32 0
  %_96.0 = load [0 x i8]*, [0 x i8]** %17, align 8, !nonnull !1, !align !6, !noundef !1
  %18 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %16, i32 0, i32 1
  %_96.1 = load i64, i64* %18, align 8
  %_20 = icmp uge i64 %_96.1, 3
  br i1 %_20, label %bb10, label %bb4

bb7:                                              ; preds = %bb2
  %19 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %20 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %19, i32 0, i32 0
  %_97.0 = load [0 x i8]*, [0 x i8]** %20, align 8, !nonnull !1, !align !6, !noundef !1
  %21 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %19, i32 0, i32 1
  %_97.1 = load i64, i64* %21, align 8
  %_23 = icmp uge i64 %_97.1, 4
  br i1 %_23, label %bb11, label %bb4

bb11:                                             ; preds = %bb7
  %22 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %22, i32 0, i32 0
  %_104.0 = load [0 x i8]*, [0 x i8]** %23, align 8, !nonnull !1, !align !6, !noundef !1
  %24 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %22, i32 0, i32 1
  %_104.1 = load i64, i64* %24, align 8
  %a = getelementptr inbounds [0 x i8], [0 x i8]* %_104.0, i64 0, i64 0
  %25 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %26 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %25, i32 0, i32 0
  %_105.0 = load [0 x i8]*, [0 x i8]** %26, align 8, !nonnull !1, !align !6, !noundef !1
  %27 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %25, i32 0, i32 1
  %_105.1 = load i64, i64* %27, align 8
  %b = getelementptr inbounds [0 x i8], [0 x i8]* %_105.0, i64 0, i64 1
  %28 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %29 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 0
  %_106.0 = load [0 x i8]*, [0 x i8]** %29, align 8, !nonnull !1, !align !6, !noundef !1
  %30 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 1
  %_106.1 = load i64, i64* %30, align 8
  %c = getelementptr inbounds [0 x i8], [0 x i8]* %_106.0, i64 0, i64 2
  %31 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %32 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %31, i32 0, i32 0
  %_107.0 = load [0 x i8]*, [0 x i8]** %32, align 8, !nonnull !1, !align !6, !noundef !1
  %33 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %31, i32 0, i32 1
  %_107.1 = load i64, i64* %33, align 8
  %d = getelementptr inbounds [0 x i8], [0 x i8]* %_107.0, i64 0, i64 3
  %_56 = load i32, i32* %code, align 4
  %_55 = lshr i32 %_56, 18
  %_54 = and i32 %_55, 7
  %_53 = trunc i32 %_54 to i8
  %34 = or i8 %_53, -16
  store i8 %34, i8* %a, align 1
  %_60 = load i32, i32* %code, align 4
  %_59 = lshr i32 %_60, 12
  %_58 = and i32 %_59, 63
  %_57 = trunc i32 %_58 to i8
  %35 = or i8 %_57, -128
  store i8 %35, i8* %b, align 1
  %_64 = load i32, i32* %code, align 4
  %_63 = lshr i32 %_64, 6
  %_62 = and i32 %_63, 63
  %_61 = trunc i32 %_62 to i8
  %36 = or i8 %_61, -128
  store i8 %36, i8* %c, align 1
  %_67 = load i32, i32* %code, align 4
  %_66 = and i32 %_67, 63
  %_65 = trunc i32 %_66 to i8
  %37 = or i8 %_65, -128
  store i8 %37, i8* %d, align 1
  br label %bb16

bb16:                                             ; preds = %bb8, %bb9, %bb10, %bb11
  %_92 = load i64, i64* %len, align 8
  store i64 %_92, i64* %_91, align 8
  %38 = load i64, i64* %_91, align 8
  %39 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8662b319fdac7640E"([0 x i8]* align 1 %dst.0, i64 %dst.1, i64 %38, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc218 to %"core::panic::location::Location"*))
  %_89.0 = extractvalue { [0 x i8]*, i64 } %39, 0
  %_89.1 = extractvalue { [0 x i8]*, i64 } %39, 1
  br label %bb17

bb10:                                             ; preds = %bb6
  %40 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %41 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 0
  %_101.0 = load [0 x i8]*, [0 x i8]** %41, align 8, !nonnull !1, !align !6, !noundef !1
  %42 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 1
  %_101.1 = load i64, i64* %42, align 8
  %a1 = getelementptr inbounds [0 x i8], [0 x i8]* %_101.0, i64 0, i64 0
  %43 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %44 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 0
  %_102.0 = load [0 x i8]*, [0 x i8]** %44, align 8, !nonnull !1, !align !6, !noundef !1
  %45 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 1
  %_102.1 = load i64, i64* %45, align 8
  %b2 = getelementptr inbounds [0 x i8], [0 x i8]* %_102.0, i64 0, i64 1
  %46 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %47 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %46, i32 0, i32 0
  %_103.0 = load [0 x i8]*, [0 x i8]** %47, align 8, !nonnull !1, !align !6, !noundef !1
  %48 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %46, i32 0, i32 1
  %_103.1 = load i64, i64* %48, align 8
  %c3 = getelementptr inbounds [0 x i8], [0 x i8]* %_103.0, i64 0, i64 2
  %_41 = load i32, i32* %code, align 4
  %_40 = lshr i32 %_41, 12
  %_39 = and i32 %_40, 15
  %_38 = trunc i32 %_39 to i8
  %49 = or i8 %_38, -32
  store i8 %49, i8* %a1, align 1
  %_45 = load i32, i32* %code, align 4
  %_44 = lshr i32 %_45, 6
  %_43 = and i32 %_44, 63
  %_42 = trunc i32 %_43 to i8
  %50 = or i8 %_42, -128
  store i8 %50, i8* %b2, align 1
  %_48 = load i32, i32* %code, align 4
  %_47 = and i32 %_48, 63
  %_46 = trunc i32 %_47 to i8
  %51 = or i8 %_46, -128
  store i8 %51, i8* %c3, align 1
  br label %bb16

bb9:                                              ; preds = %bb5
  %52 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %53 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %52, i32 0, i32 0
  %_99.0 = load [0 x i8]*, [0 x i8]** %53, align 8, !nonnull !1, !align !6, !noundef !1
  %54 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %52, i32 0, i32 1
  %_99.1 = load i64, i64* %54, align 8
  %a4 = getelementptr inbounds [0 x i8], [0 x i8]* %_99.0, i64 0, i64 0
  %55 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %56 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %55, i32 0, i32 0
  %_100.0 = load [0 x i8]*, [0 x i8]** %56, align 8, !nonnull !1, !align !6, !noundef !1
  %57 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %55, i32 0, i32 1
  %_100.1 = load i64, i64* %57, align 8
  %b5 = getelementptr inbounds [0 x i8], [0 x i8]* %_100.0, i64 0, i64 1
  %_31 = load i32, i32* %code, align 4
  %_30 = lshr i32 %_31, 6
  %_29 = and i32 %_30, 31
  %_28 = trunc i32 %_29 to i8
  %58 = or i8 %_28, -64
  store i8 %58, i8* %a4, align 1
  %_34 = load i32, i32* %code, align 4
  %_33 = and i32 %_34, 63
  %_32 = trunc i32 %_33 to i8
  %59 = or i8 %_32, -128
  store i8 %59, i8* %b5, align 1
  br label %bb16

bb8:                                              ; preds = %bb3
  %60 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %61 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %60, i32 0, i32 0
  %_98.0 = load [0 x i8]*, [0 x i8]** %61, align 8, !nonnull !1, !align !6, !noundef !1
  %62 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %60, i32 0, i32 1
  %_98.1 = load i64, i64* %62, align 8
  %a6 = getelementptr inbounds [0 x i8], [0 x i8]* %_98.0, i64 0, i64 0
  %_25 = load i32, i32* %code, align 4
  %63 = trunc i32 %_25 to i8
  store i8 %63, i8* %a6, align 1
  br label %bb16

bb17:                                             ; preds = %bb16
  %64 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_89.0, 0
  %65 = insertvalue { [0 x i8]*, i64 } %64, i64 %_89.1, 1
  ret { [0 x i8]*, i64 } %65

bb12:                                             ; preds = %bb4
  %66 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17hf71b42590e397d56E(i32* align 4 %code)
  %_80.0 = extractvalue { i8*, i64* } %66, 0
  %_80.1 = extractvalue { i8*, i64* } %66, 1
  br label %bb13

bb13:                                             ; preds = %bb12
  store i64 %dst.1, i64* %_86, align 8
  %67 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h81758a42a9451b8eE(i64* align 8 %_86)
  %_83.0 = extractvalue { i8*, i64* } %67, 0
  %_83.1 = extractvalue { i8*, i64* } %67, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  %68 = getelementptr inbounds [3 x { i8*, i64* }], [3 x { i8*, i64* }]* %_76, i64 0, i64 0
  %69 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %68, i32 0, i32 0
  store i8* %_77.0, i8** %69, align 8
  %70 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %68, i32 0, i32 1
  store i64* %_77.1, i64** %70, align 8
  %71 = getelementptr inbounds [3 x { i8*, i64* }], [3 x { i8*, i64* }]* %_76, i64 0, i64 1
  %72 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %71, i32 0, i32 0
  store i8* %_80.0, i8** %72, align 8
  %73 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %71, i32 0, i32 1
  store i64* %_80.1, i64** %73, align 8
  %74 = getelementptr inbounds [3 x { i8*, i64* }], [3 x { i8*, i64* }]* %_76, i64 0, i64 2
  %75 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %74, i32 0, i32 0
  store i8* %_83.0, i8** %75, align 8
  %76 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %74, i32 0, i32 1
  store i64* %_83.1, i64** %76, align 8
  %_73.0 = bitcast [3 x { i8*, i64* }]* %_76 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h7eb7cea42e61e2ceE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_69, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc90 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_73.0, i64 3)
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_69, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc220 to %"core::panic::location::Location"*)) #12
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817hbfad75e3083eb411E"(i32 %self, [0 x i8]* align 1 %dst.0, i64 %dst.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core4char7methods15encode_utf8_raw17hc79f70714063bc45E(i32 %self, [0 x i8]* align 1 %dst.0, i64 %dst.1)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts23from_utf8_unchecked_mut17h46a5f332736e1ae5E([0 x i8]* align 1 %_7.0, i64 %_7.1)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_5.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_5.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4char7methods8len_utf817h587cf1510e4942daE(i32 %code) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %_2 = icmp ult i32 %code, 128
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_4 = icmp ult i32 %code, 2048
  br i1 %_4, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i64 1, i64* %0, align 8
  br label %bb9

bb9:                                              ; preds = %bb8, %bb1
  %1 = load i64, i64* %0, align 8
  ret i64 %1

bb4:                                              ; preds = %bb2
  %_6 = icmp ult i32 %code, 65536
  br i1 %_6, label %bb5, label %bb6

bb3:                                              ; preds = %bb2
  store i64 2, i64* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb3
  br label %bb9

bb6:                                              ; preds = %bb4
  store i64 4, i64* %0, align 8
  br label %bb7

bb5:                                              ; preds = %bb4
  store i64 3, i64* %0, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  br label %bb8
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17hb6fd994646e11b3dE() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core4sync6atomic11AtomicUsize5store17h2850ebe00d36fab1E(%"core::sync::atomic::AtomicUsize"* align 8 %self, i64 %val, i8 %order) unnamed_addr #0 {
start:
  %_6 = bitcast %"core::sync::atomic::AtomicUsize"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core4sync6atomic12atomic_store17h7790fd9c9a95319fE(i64* %_6, i64 %val, i8 %order)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4sync6atomic12atomic_store17h7790fd9c9a95319fE(i64* %dst, i64 %val, i8 %0) unnamed_addr #0 {
start:
  %_20 = alloca %"core::fmt::Arguments", align 8
  %_12 = alloca %"core::fmt::Arguments", align 8
  %order = alloca i8, align 1
  store i8 %0, i8* %order, align 1
  %1 = load i8, i8* %order, align 1, !range !13, !noundef !1
  %_4 = zext i8 %1 to i64
  switch i64 %_4, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb5
    i64 2, label %bb9
    i64 3, label %bb1
    i64 4, label %bb7
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store atomic i64 %val, i64* %dst monotonic, align 8
  br label %bb4

bb5:                                              ; preds = %start
  store atomic i64 %val, i64* %dst release, align 8
  br label %bb6

bb9:                                              ; preds = %start
  call void @_ZN4core3fmt9Arguments6new_v117h7eb7cea42e61e2ceE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_12, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc41 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc32 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb10

bb1:                                              ; preds = %start
  call void @_ZN4core3fmt9Arguments6new_v117h7eb7cea42e61e2ceE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_20, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc36 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc32 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb11

bb7:                                              ; preds = %start
  store atomic i64 %val, i64* %dst seq_cst, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb12

bb12:                                             ; preds = %bb4, %bb6, %bb8
  ret void

bb11:                                             ; preds = %bb1
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_20, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc222 to %"core::panic::location::Location"*)) #12
  unreachable

bb10:                                             ; preds = %bb9
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc224 to %"core::panic::location::Location"*)) #12
  unreachable

bb6:                                              ; preds = %bb5
  br label %bb12

bb4:                                              ; preds = %bb3
  br label %bb12
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9928e0dbb21af256E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h49a0ead2ca2faefaE(i64 %align), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !10, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h993aac43da226c97E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h1293a397cca9536dE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !10, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h490f01cbb07059e0E(i64 %_3), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h1446aa56054e4d91E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h6540345c97a8f11bE(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h30b7817a704645e9E"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h84c0859d4f4031f0E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf8ee27d89771cba5E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !4, !noundef !1
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hca7daa0a6e8ddd66E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc226 to %"core::panic::location::Location"*))
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
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9928e0dbb21af256E(i64 %val, i64 1)
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
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17hde797e31f0e4b8e4E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h1293a397cca9536dE({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he3bd7a0e2d50ff1dE"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h3efbb778d3c694a5E"([0 x { i8*, i64 }]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h61431bedb4daf3d2E"([0 x { i8*, i64 }]* align 8 %self.0, i64 %self.1)
  %1 = extractvalue { i64*, i64* } %0, 0
  %2 = extractvalue { i64*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64*, i64* } undef, i64* %1, 0
  %4 = insertvalue { i64*, i64* } %3, i64* %2, 1
  ret { i64*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 }* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hf1c2a33756e33c59E"([0 x { i8*, i64 }]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x { i8*, i64 }]* %self.0 to { i8*, i64 }*
  ret { i8*, i64 }* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h374e53a7e32bd91aE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = icmp eq i64 %self.1, 0
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17hd4dd33221d458d4dE"([0 x { i8*, i64 }]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = icmp eq i64 %self.1, 0
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h40c10930c1cdede6E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hf5496138af89cc5eE(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h61431bedb4daf3d2E"([0 x { i8*, i64 }]* align 8 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }*, align 8
  %1 = alloca i8*, align 8
  %end = alloca { i8*, i64 }*, align 8
  %2 = alloca { i64*, i64* }, align 8
  %ptr = call { i8*, i64 }* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hf1c2a33756e33c59E"([0 x { i8*, i64 }]* align 8 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hc88f9f269db5e270E"({ i8*, i64 }* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 16, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %_11 = bitcast { i8*, i64 }* %ptr to i8*
  %4 = getelementptr i8, i8* %_11, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %ptr, i64 %slice.1
  store { i8*, i64 }* %6, { i8*, i64 }** %0, align 8
  %7 = load { i8*, i64 }*, { i8*, i64 }** %0, align 8
  store { i8*, i64 }* %7, { i8*, i64 }** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h05ac08102a57f7e3E"({ i8*, i64 }* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  %8 = bitcast i8* %5 to { i8*, i64 }*
  store { i8*, i64 }* %8, { i8*, i64 }** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load { i8*, i64 }*, { i8*, i64 }** %end, align 8
  %9 = bitcast { i64*, i64* }* %2 to i64**
  store i64* %_18, i64** %9, align 8
  %10 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 1
  %11 = bitcast i64** %10 to { i8*, i64 }**
  store { i8*, i64 }* %_21, { i8*, i64 }** %11, align 8
  %12 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8, !nonnull !1, !noundef !1
  %14 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = insertvalue { i64*, i64* } undef, i64* %13, 0
  %17 = insertvalue { i64*, i64* } %16, i64* %15, 1
  ret { i64*, i64* } %17
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h63f8f81bf38f054fE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h9479ddb808c7aba7E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8662b319fdac7640E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he633258d2339e032E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x { i8*, i64 }]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hcdda3fbbd97ce8c5E"([0 x { i8*, i64 }]* align 8 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x { i8*, i64 }]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7d110d70f0319aaE"(i64 %index, [0 x { i8*, i64 }]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x { i8*, i64 }]*, i64 } undef, [0 x { i8*, i64 }]* %_4.0, 0
  %3 = insertvalue { [0 x { i8*, i64 }]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x { i8*, i64 }]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17heecf19c5c2a2b2cbE"([0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb220f29ff9752764E"([0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h03024bc934d31354E"(i8 %0, i64* align 8 %f) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8, align 1
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  store i8 1, i8* %_7, align 1
  %2 = load i8, i8* %self, align 1, !range !8, !noundef !1
  %3 = sub i8 %2, 41
  %4 = icmp eq i8 %3, 0
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = call i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h8904ebebfd28dba6E"(i64* align 8 %f), !range !5
  store i8 %5, i8* %1, align 1
  br label %bb4

bb3:                                              ; preds = %start
  %x = load i8, i8* %self, align 1, !range !5, !noundef !1
  store i8 %x, i8* %1, align 1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %6 = load i8, i8* %_7, align 1, !range !7, !noundef !1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb6, label %bb5

bb4:                                              ; preds = %bb1
  br label %bb7

bb5:                                              ; preds = %bb6, %bb7
  %8 = load i8, i8* %1, align 1, !range !5, !noundef !1
  ret i8 %8

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17hd21beb12ef3ed36aE"(i8 %0, i64* align 8 %f) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8, align 1
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  store i8 1, i8* %_7, align 1
  %2 = load i8, i8* %self, align 1, !range !8, !noundef !1
  %3 = sub i8 %2, 41
  %4 = icmp eq i8 %3, 0
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = call i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h5e979f9ce7864a41E"(i64* align 8 %f), !range !5
  store i8 %5, i8* %1, align 1
  br label %bb4

bb3:                                              ; preds = %start
  %x = load i8, i8* %self, align 1, !range !5, !noundef !1
  store i8 %x, i8* %1, align 1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %6 = load i8, i8* %_7, align 1, !range !7, !noundef !1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb6, label %bb5

bb4:                                              ; preds = %bb1
  br label %bb7

bb5:                                              ; preds = %bb6, %bb7
  %8 = load i8, i8* %1, align 1, !range !5, !noundef !1
  ret i8 %8

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h587c46710daeb373E"(i8* %0) unnamed_addr #0 {
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
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h84c0859d4f4031f0E"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %_3 = load i64, i64* %5, align 8, !range !4, !noundef !1
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
  %15 = load i64, i64* %14, align 8, !range !4, !noundef !1
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17he5a9359e42bfe3e6E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %t.1 = load i64, i64* %10, align 8, !range !10, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !2, !noundef !1
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17hb6fd994646e11b3dE() #12
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
define zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h0cbc102efe7ed932E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast i8** %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_2, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %0, align 1, !range !7, !noundef !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h6b7bafcbaa4b8672E"(i8* %0, i8* %1, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %t.1 = load i64*, i64** %11, align 8, !nonnull !1, !align !3, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %t.0, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %t.1, 1
  ret { i8*, i64* } %13

bb1:                                              ; preds = %start
  %_7.0 = bitcast %"core::cell::BorrowMutError"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*), %"core::panic::location::Location"* align 8 %2) #12
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
define { i64*, i64* } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h81727a5510e9480fE"(i64* %0, i8* %1, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %e = alloca %"core::cell::BorrowMutError", align 1
  %self = alloca { i64*, i8* }, align 8
  %4 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %self, i32 0, i32 0
  store i64* %0, i64** %4, align 8
  %5 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %self, i32 0, i32 1
  store i8* %1, i8** %5, align 8
  %6 = bitcast { i64*, i8* }* %self to {}**
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
  %9 = bitcast { i64*, i8* }* %self to { i64*, i64* }*
  %10 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %9, i32 0, i32 0
  %t.0 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %11 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %9, i32 0, i32 1
  %t.1 = load i64*, i64** %11, align 8, !nonnull !1, !align !3, !noundef !1
  %12 = insertvalue { i64*, i64* } undef, i64* %t.0, 0
  %13 = insertvalue { i64*, i64* } %12, i64* %t.1, 1
  ret { i64*, i64* } %13

bb1:                                              ; preds = %start
  %_7.0 = bitcast %"core::cell::BorrowMutError"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*), %"core::panic::location::Location"* align 8 %2) #12
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
define zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h4ae8165072afc20aE"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = call zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h0cbc102efe7ed932E"(i8** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_2, true
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h7bc21248e3a6f935E"({ i32*, i8* }** align 8 %self, i32 %c) unnamed_addr #1 {
start:
  %_5 = load { i32*, i8* }*, { i32*, i8* }** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %0 = call zeroext i1 @_ZN4core3fmt5Write10write_char17hf18274146b21fa21E({ i32*, i8* }* align 8 %_5, i32 %c)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h12d294efb252aeacE"({ i32*, i8* }** align 8 %self, %"core::fmt::Arguments"* %args) unnamed_addr #1 {
start:
  %_4 = alloca %"core::fmt::Arguments", align 8
  %_5 = load { i32*, i8* }*, { i32*, i8* }** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %0 = bitcast %"core::fmt::Arguments"* %_4 to i8*
  %1 = bitcast %"core::fmt::Arguments"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 48, i1 false)
  %2 = call zeroext i1 @_ZN4core3fmt5Write9write_fmt17h40f603cd2b9124b5E({ i32*, i8* }* align 8 %_5, %"core::fmt::Arguments"* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h234b5e7e77c0a8a5E"({ i32*, i8* }** align 8 %self, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %_5 = load { i32*, i8* }*, { i32*, i8* }** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %0 = call zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5013b670335e625E"({ i32*, i8* }* align 8 %_5, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h1391703948a6cb22E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h5687c84855f9962eE"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h48450d861f26819aE"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9f63f4f712331f62E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h3e4ec17de82e6f64E"(%"alloc::string::String"** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load %"alloc::string::String"*, %"alloc::string::String"** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %0 = call { %"std::path::Path"*, i64 } @"_ZN3std4path95_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$alloc..string..String$GT$6as_ref17h0e7ddb53d51fa760E"(%"alloc::string::String"* align 8 %_3)
  %1 = extractvalue { %"std::path::Path"*, i64 } %0, 0
  %2 = extractvalue { %"std::path::Path"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %1, 0
  %4 = insertvalue { %"std::path::Path"*, i64 } %3, i64 %2, 1
  ret { %"std::path::Path"*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17he2b4ecec69b0a281E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_4 = alloca i64**, align 8
  store i64** %self, i64*** %_4, align 8
  %0 = call zeroext i1 @"_ZN61_$LT$$RF$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h26ff1d5352e807ebE"(i64*** align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$17is_write_vectored17h3c1884429c1f579cE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_4 = alloca i64**, align 8
  store i64** %self, i64*** %_4, align 8
  %0 = call zeroext i1 @"_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$17is_write_vectored17hafaf373b6f3c8e00E"(i64*** align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hd9b7eea1f7daee83E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hd9fba3ae2c31de52E"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h42548a1211fde40fE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17he48c4f13bb4c420cE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hd9fba3ae2c31de52E"({ i8*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h42548a1211fde40fE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h731c7ea5b37b6350E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h993aac43da226c97E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h1293a397cca9536dE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #15
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc15exchange_malloc17hb1a6a980d63d968fE(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %_6 = alloca { i8*, i64 }, align 8
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9928e0dbb21af256E(i64 %size, i64 %align)
  %layout.0 = extractvalue { i64, i64 } %0, 0
  %layout.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h9955128df4e45a1eE"(%"alloc::alloc::Global"* align 1 bitcast (<{}>* @alloc32 to %"alloc::alloc::Global"*), i64 %layout.0, i64 %layout.1)
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
  %7 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17ha6652acbdb6bbd75E"(i8* %ptr.0, i64 %ptr.1)
  br label %bb6

bb3:                                              ; preds = %bb2
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #12
  unreachable

bb6:                                              ; preds = %bb5
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h4d15ecd8fae24d06E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h993aac43da226c97E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h1293a397cca9536dE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #15
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h75f38bbdd1f0fef9E(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h993aac43da226c97E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17hde797e31f0e4b8e4E({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !10, !noundef !1
  %8 = call i8* @_ZN5alloc5alloc5alloc17h4d15ecd8fae24d06E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !10, !noundef !1
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h731c7ea5b37b6350E(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hdc5284ada1ef4b2cE"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h587c46710daeb373E"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h43385b31c8fffcb5E"(i8* %_16)
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
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hb649989cc5007125E"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hf59dcd200c49c374E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc231 to %"core::panic::location::Location"*))
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
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hb649989cc5007125E"(i8* %_7, i64 0)
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
define internal void @_ZN5alloc5alloc7dealloc17h975fa396ba184a79E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h993aac43da226c97E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h1293a397cca9536dE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #15
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17h5a5b86c60fe670e8E(i8* %0, i64* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h0124106d22e8d006E"({ i8*, i64* }* align 8 %ptr)
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
  %18 = load i64, i64* %17, align 8, !range !11, !invariant.load !1
  store i64 %15, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h0124106d22e8d006E"({ i8*, i64* }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !1
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !11, !invariant.load !1
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9928e0dbb21af256E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !1, !align !3, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h6b863512d9a0de7aE"(i8* %_17.0, i64* align 8 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9f63f4f712331f62E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2ee388ff77b408cE"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
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
define void @_ZN5alloc5alloc8box_free17h6fcb83b366e3b68fE(i64* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca i64*, align 8
  store i64* %0, i64** %ptr, align 8
  %_5 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hfaee2dfe606f79ceE"(i64** align 8 %ptr)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb10

bb1:                                              ; preds = %start
  store i64 24, i64* %2, align 8
  %size = load i64, i64* %2, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_9 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hfaee2dfe606f79ceE"(i64** align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64 8, i64* %1, align 8
  %align = load i64, i64* %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9928e0dbb21af256E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  %_17 = load i64*, i64** %ptr, align 8, !nonnull !1, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hb8f24f63da55940fE"(i64* %_17)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9f63f4f712331f62E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2ee388ff77b408cE"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %10 = bitcast { i8*, i32 }* %3 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17h948611b27832f3e9E(i8* %0, i64* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h295b8970d951fa9aE"({ i8*, i64* }* align 8 %ptr)
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
  %18 = load i64, i64* %17, align 8, !range !11, !invariant.load !1
  store i64 %15, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h295b8970d951fa9aE"({ i8*, i64* }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !1
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !11, !invariant.load !1
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9928e0dbb21af256E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !1, !align !3, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h170bf1cf91d533c6E"(i8* %_17.0, i64* align 8 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9f63f4f712331f62E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2ee388ff77b408cE"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
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
define align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h8bcea1455c8c783dE"(%"std::io::error::Custom"* %raw) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hde854a813c4859c9E"(%"std::io::error::Custom"* %raw)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hde854a813c4859c9E"(%"std::io::error::Custom"* %raw) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca %"std::io::error::Custom"*, align 8
  %_3 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h2ea6e57e5a193dffE"(%"std::io::error::Custom"* %raw)
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
  %7 = bitcast %"std::io::error::Custom"** %1 to i64**
  store i64* %_3, i64** %7, align 8
  %8 = bitcast %"std::io::error::Custom"** %1 to %"alloc::alloc::Global"*
  %9 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %1, align 8, !nonnull !1, !align !3, !noundef !1
  ret %"std::io::error::Custom"* %9

bb3:                                              ; preds = %bb2
  %10 = bitcast { i8*, i32 }* %0 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15
}

; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hefbbb68ccdf34fa7E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
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
  %4 = load i8, i8* %_2, align 1, !range !7, !noundef !1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h6540345c97a8f11bE(i64 %_8)
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
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17he5a9359e42bfe3e6E"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc233 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hef2467b1789e7155E"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h48450d861f26819aE"(i8* %_11)
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
define i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hd9fba3ae2c31de52E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h559871e8f99d473bE"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17hc3b2cc45a5a85a28E"(%"alloc::string::String"* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h72d7c8c4763ce3a9E"(%"alloc::string::String"* align 8 %self)
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
define internal { [0 x i8]*, i64 } @"_ZN60_$LT$std..io..IoSlice$u20$as$u20$core..ops..deref..Deref$GT$5deref17h423d647567a68c90E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN3std3sys4unix2io7IoSlice8as_slice17hc4acce903ac3801dE({ i8*, i64 }* align 8 %self)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN60_$LT$std..io..stdio..StderrRaw$u20$as$u20$std..io..Write$GT$17is_write_vectored17hdf4609a09707c2f8E"(%"std::io::stdio::StderrRaw"* align 1 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"std::io::stdio::StderrRaw"* %self to %"std::sys::unix::stdio::Stderr"*
  %0 = call zeroext i1 @"_ZN64_$LT$std..sys..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h134b7a32060be090E"(%"std::sys::unix::stdio::Stderr"* align 1 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN61_$LT$$RF$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h26ff1d5352e807ebE"(i64*** align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_3 = alloca i64*, align 8
  %_5 = load i64**, i64*** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %1 = call align 8 i64* @_ZN3std2io5stdio6Stderr4lock17ha47dbb63e31dd24fE(i64** align 8 %_5)
  store i64* %1, i64** %_3, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %2 = invoke zeroext i1 @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$17is_write_vectored17h5aec6b36aee6ffffE"(i64** align 8 %_3)
          to label %bb2 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StderrLock$GT$17h5be255f0d20cb83fE"(i64** %_3) #13
          to label %bb5 unwind label %abort

cleanup:                                          ; preds = %bb1
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  call void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StderrLock$GT$17h5be255f0d20cb83fE"(i64** %_3)
  br label %bb3

abort:                                            ; preds = %bb4
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb5:                                              ; preds = %bb4
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb3:                                              ; preds = %bb2
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$17is_write_vectored17hafaf373b6f3c8e00E"(i64*** align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_3 = alloca i64*, align 8
  %_5 = load i64**, i64*** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %1 = call align 8 i64* @_ZN3std2io5stdio6Stdout4lock17h1216f85b7533c3b9E(i64** align 8 %_5)
  store i64* %1, i64** %_3, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %2 = invoke zeroext i1 @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$17is_write_vectored17h1b22519f7657e156E"(i64** align 8 %_3)
          to label %bb2 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StdoutLock$GT$17h65700637ac23defcE"(i64** %_3) #13
          to label %bb5 unwind label %abort

cleanup:                                          ; preds = %bb1
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  call void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StdoutLock$GT$17h65700637ac23defcE"(i64** %_3)
  br label %bb3

abort:                                            ; preds = %bb4
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb5:                                              ; preds = %bb4
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb3:                                              ; preds = %bb2
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$17is_write_vectored17h5aec6b36aee6ffffE"(i64** align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_5 = alloca { i8*, i64* }, align 8
  %_7 = call align 8 i64* @"_ZN98_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9ad896508e606388E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h0b92cb711ed0cd42E"(i64* align 8 %_7, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc235 to %"core::panic::location::Location"*))
  store { i8*, i64* } %1, { i8*, i64* }* %_5, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = invoke align 1 %"std::io::stdio::StderrRaw"* @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hc146b7c04c947ca9E"({ i8*, i64* }* align 8 %_5)
          to label %bb3 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr72drop_in_place$LT$core..cell..RefMut$LT$std..io..stdio..StderrRaw$GT$$GT$17h279a34b05c74f409E"({ i8*, i64* }* %_5) #13
          to label %bb7 unwind label %abort

cleanup:                                          ; preds = %bb3, %bb2
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb6

bb3:                                              ; preds = %bb2
  %7 = invoke zeroext i1 @"_ZN60_$LT$std..io..stdio..StderrRaw$u20$as$u20$std..io..Write$GT$17is_write_vectored17hdf4609a09707c2f8E"(%"std::io::stdio::StderrRaw"* align 1 %_3)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @"_ZN4core3ptr72drop_in_place$LT$core..cell..RefMut$LT$std..io..stdio..StderrRaw$GT$$GT$17h279a34b05c74f409E"({ i8*, i64* }* %_5)
  br label %bb5

abort:                                            ; preds = %bb6
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb7:                                              ; preds = %bb6
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb5:                                              ; preds = %bb4
  ret i1 %7
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$17is_write_vectored17h1b22519f7657e156E"(i64** align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_5 = alloca { i64*, i64* }, align 8
  %_7 = call align 8 %"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>"* @"_ZN98_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hbfaef221e0cf0cadE"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64*, i64* } @"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h3c1f8bc39dbc8e32E"(%"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>"* align 8 %_7, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc237 to %"core::panic::location::Location"*))
  store { i64*, i64* } %1, { i64*, i64* }* %_5, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = invoke align 8 %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h508959b287b1f691E"({ i64*, i64* }* align 8 %_5)
          to label %bb3 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr121drop_in_place$LT$core..cell..RefMut$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$17h708b126b94a0e9a2E"({ i64*, i64* }* %_5) #13
          to label %bb7 unwind label %abort

cleanup:                                          ; preds = %bb3, %bb2
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb6

bb3:                                              ; preds = %bb2
  %7 = invoke zeroext i1 @"_ZN85_$LT$std..io..buffered..linewriter..LineWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$17is_write_vectored17h5181ccaf3eee0d25E"(%"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* align 8 %_3)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @"_ZN4core3ptr121drop_in_place$LT$core..cell..RefMut$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$17h708b126b94a0e9a2E"({ i64*, i64* }* %_5)
  br label %bb5

abort:                                            ; preds = %bb6
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb7:                                              ; preds = %bb6
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb5:                                              ; preds = %bb4
  ret i1 %7
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h12be4f10922ea187E"(i64* %self.0, i64* %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64*, i64* } undef, i64* %self.0, 0
  %1 = insertvalue { i64*, i64* } %0, i64* %self.1, 1
  ret { i64*, i64* } %1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2ee388ff77b408cE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h993aac43da226c97E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17heefb7bd75996c6e2E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !10, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h975fa396ba184a79E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h9955128df4e45a1eE"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h75f38bbdd1f0fef9E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN64_$LT$std..sys..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h134b7a32060be090E"(%"std::sys::unix::stdio::Stderr"* align 1 %self) unnamed_addr #0 {
start:
  ret i1 true
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h72d7c8c4763ce3a9E"(%"alloc::string::String"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  %0 = call { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he87b06eedc25b654E"(%"alloc::vec::Vec<u8>"* align 8 %_5)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17ha0c77a16fa79b61dE([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN66_$LT$core..cell..BorrowRefMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8df1aceeaa3cb6b8E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_8 = load i64*, i64** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %borrow = call i64 @"_ZN4core4cell13Cell$LT$T$GT$3get17h374f88892666f857E"(i64* align 8 %_8)
  br label %bb1

bb1:                                              ; preds = %start
  %_9 = load i64*, i64** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %_6 = add i64 %borrow, 1
  call void @"_ZN4core4cell13Cell$LT$T$GT$3set17h045c7d61baecc206E"(i64* align 8 %_9, i64 %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17he87b92875e856290E"(i8* align 1 %self, i8* align 1 %other) unnamed_addr #0 {
start:
  %0 = load i8, i8* %self, align 1, !range !5, !noundef !1
  %__self_tag = zext i8 %0 to i64
  %1 = load i8, i8* %other, align 1, !range !5, !noundef !1
  %__arg1_tag = zext i8 %1 to i64
  %2 = icmp eq i64 %__self_tag, %__arg1_tag
  ret i1 %2
}

; Function Attrs: uwtable
define align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h84a640399dfdf8edE"(i64** align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %_5.i = bitcast i64** %self to %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"**
  %_4.i = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h19946a2cb55f9717E"(%"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"** align 8 %_5.i)
  %1 = bitcast i64** %0 to %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"**
  store %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %_4.i, %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !align !3, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i64* %2 to %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  ret %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %3
}

; Function Attrs: uwtable
define align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hdd16e6d5a7de95c4E"(i64** align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %_5.i = bitcast i64** %self to %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"**
  %_4.i = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* @"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h191fc28bd97479c3E"(%"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"** align 8 %_5.i)
  %1 = bitcast i64** %0 to %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"**
  store %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %_4.i, %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !align !3, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i64* %2 to %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  ret %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %3
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5fd0ec86b0eb8f27E"(i32* align 4 %self) unnamed_addr #0 {
start:
  %_3 = load i32, i32* %self, align 4
  %_2 = call i32 @close(i32 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19f3f7744290703cE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hd9b7eea1f7daee83E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4a15cbeb3736a310E(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h508959b287b1f691E"({ i64*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast { i64*, i64* }* %self to i64**
  %0 = call align 8 %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h2512a9c06c793938E"(i64** align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* %0
}

; Function Attrs: inlinehint uwtable
define align 1 %"std::io::stdio::StderrRaw"* @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hc146b7c04c947ca9E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast { i8*, i64* }* %self to i8**
  %0 = call align 1 %"std::io::stdio::StderrRaw"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h539d154252cbe34fE"(i8** align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::stdio::StderrRaw"* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he87b06eedc25b654E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17he48c4f13bb4c420cE"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h40c10930c1cdede6E(i8* %_2, i64 %_4)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7af7f0c1107626bE"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hefbbb68ccdf34fa7E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
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
  %layout.1 = load i64, i64* %11, align 8, !range !10, !noundef !1
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2ee388ff77b408cE"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17he48fbf5ecf2f4706E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>", align 8
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  call void @_ZN3std2io5error14repr_bitpacked11decode_repr17hd96e8d88669bc4afE(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %_2, i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17hf3dcbc82fa4a65cdE"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h8ea10c2d12b1b3dbE"(%"std::io::error::Custom"* %p) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h8bcea1455c8c783dE"(%"std::io::error::Custom"* %p)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h43385b31c8fffcb5E"(i8* %0) unnamed_addr #0 {
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
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf8ee27d89771cba5E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !4, !noundef !1
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
  %14 = load i64, i64* %13, align 8, !range !4, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5013b670335e625E"({ i32*, i8* }* align 8 %self, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8*, align 8
  %_3 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = bitcast { i32*, i8* }* %self to i32**
  %_12 = load i32*, i32** %3, align 8, !nonnull !1, !align !14, !noundef !1
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %s.1, i64* %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %7 = load [0 x i8]*, [0 x i8]** %6, align 8, !nonnull !1, !align !6, !noundef !1
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  %_6.0 = extractvalue { [0 x i8]*, i64 } %11, 0
  %_6.1 = extractvalue { [0 x i8]*, i64 } %11, 1
  br label %bb1

bb1:                                              ; preds = %start
  %12 = call i8* @_ZN3std2io5Write9write_all17hb7d563b886527188E(i32* align 4 %_12, [0 x i8]* align 1 %_6.0, i64 %_6.1)
  store i8* %12, i8** %_3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %13 = bitcast i8** %_3 to {}**
  %14 = load {}*, {}** %13, align 8
  %15 = icmp eq {}* %14, null
  %_8 = select i1 %15, i64 0, i64 1
  switch i64 %_8, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb5:                                              ; preds = %bb2
  store i8 0, i8* %2, align 1
  br label %bb8

bb3:                                              ; preds = %bb2
  %e = load i8*, i8** %_3, align 8, !nonnull !1, !noundef !1
  store i8* %e, i8** %_10, align 8
  %16 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %self, i32 0, i32 1
  invoke void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h5667141b3eedb478E"(i8** %16)
          to label %bb7 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  %17 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %self, i32 0, i32 1
  %18 = load i8*, i8** %_10, align 8
  store i8* %18, i8** %17, align 8
  %19 = bitcast { i8*, i32 }* %1 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

cleanup:                                          ; preds = %bb3
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  %27 = extractvalue { i8*, i32 } %25, 1
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %bb6

bb7:                                              ; preds = %bb3
  %30 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %self, i32 0, i32 1
  %31 = load i8*, i8** %_10, align 8
  store i8* %31, i8** %30, align 8
  store i8 1, i8* %2, align 1
  br label %bb8

bb8:                                              ; preds = %bb7, %bb5
  %32 = load i8, i8* %2, align 1, !range !7, !noundef !1
  %33 = trunc i8 %32 to i1
  ret i1 %33
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$17is_write_vectored17hd6274c84933501f1E"(%"std::io::buffered::bufwriter::BufWriter<std::io::stdio::StdoutRaw>"* align 8 %self) unnamed_addr #1 {
start:
  ret i1 true
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN85_$LT$std..io..buffered..linewriter..LineWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$17is_write_vectored17h5181ccaf3eee0d25E"(%"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* align 8 %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>"* %self to %"std::io::buffered::bufwriter::BufWriter<std::io::stdio::StdoutRaw>"*
  %0 = call zeroext i1 @"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$17is_write_vectored17hd6274c84933501f1E"(%"std::io::buffered::bufwriter::BufWriter<std::io::stdio::StdoutRaw>"* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfaa9fe2fd53f53bbE"({ i64*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }*, align 8
  %1 = alloca { i8*, i64 }*, align 8
  %2 = alloca i64*, align 8
  %3 = bitcast { i64*, i64* }* %self to i64**
  %_6 = load i64*, i64** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call { i8*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h553b9e3d1103a44fE"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6ba16440390f7b68E"({ i8*, i64 }* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 16, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %6 = bitcast i64** %5 to { i8*, i64 }**
  %_11 = load { i8*, i64 }*, { i8*, i64 }** %6, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hc88f9f269db5e270E"({ i8*, i64 }* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %7 = bitcast { i64*, i64* }* %self to i64**
  %_15 = load i64*, i64** %7, align 8, !nonnull !1, !noundef !1
  %_14 = call { i8*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h553b9e3d1103a44fE"(i64* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %9 = bitcast i64** %8 to { i8*, i64 }**
  %_16 = load { i8*, i64 }*, { i8*, i64 }** %9, align 8
  %_12 = icmp eq { i8*, i64 }* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %10 = bitcast { i64*, i64* }* %self to i64**
  %_12.i = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %old.i = call { i8*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h553b9e3d1103a44fE"(i64* %_12.i)
  %11 = bitcast { i64*, i64* }* %self to i64**
  %_16.i = load i64*, i64** %11, align 8, !nonnull !1, !noundef !1
  %_15.i = call { i8*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h553b9e3d1103a44fE"(i64* %_16.i)
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_15.i, i64 1
  store { i8*, i64 }* %12, { i8*, i64 }** %0, align 8
  %_3.i.i = load { i8*, i64 }*, { i8*, i64 }** %0, align 8
  %_13.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h05ac08102a57f7e3E"({ i8*, i64 }* %_3.i.i)
  %13 = bitcast { i64*, i64* }* %self to i64**
  store i64* %_13.i, i64** %13, align 8
  store { i8*, i64 }* %old.i, { i8*, i64 }** %1, align 8
  %14 = load { i8*, i64 }*, { i8*, i64 }** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %15 = bitcast i64** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = bitcast i64** %2 to {}**
  store {}* null, {}** %16, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %17 = load i64*, i64** %2, align 8, !align !3
  ret i64* %17

bb13:                                             ; preds = %bb12
  %18 = bitcast i64** %2 to { i8*, i64 }**
  store { i8*, i64 }* %14, { i8*, i64 }** %18, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define void @"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd1631ce6bb78a3c6E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_15 = alloca i8, align 1
  %_4 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h84a640399dfdf8edE"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %_4, i32 0, i32 4
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = load i32, i32* %_3, align 4
  %1 = sub i32 %0, 1
  store i32 %1, i32* %_3, align 4
  %_9 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h84a640399dfdf8edE"(i64** align 8 %self)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_8 = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %_9, i32 0, i32 4
  br label %bb4

bb4:                                              ; preds = %bb3
  %_6 = load i32, i32* %_8, align 4
  %2 = icmp eq i32 %_6, 0
  br i1 %2, label %bb5, label %bb10

bb5:                                              ; preds = %bb4
  %_13 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h84a640399dfdf8edE"(i64** align 8 %self)
  br label %bb6

bb10:                                             ; preds = %bb4
  br label %bb11

bb11:                                             ; preds = %bb9, %bb10
  ret void

bb6:                                              ; preds = %bb5
  %_12 = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %_13, i32 0, i32 2
  store i8 0, i8* %_15, align 1
  %3 = load i8, i8* %_15, align 1, !range !13, !noundef !1
  call void @_ZN4core4sync6atomic11AtomicUsize5store17h2850ebe00d36fab1E(%"core::sync::atomic::AtomicUsize"* align 8 %_12, i64 0, i8 %3)
  br label %bb7

bb7:                                              ; preds = %bb6
  %_18 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h84a640399dfdf8edE"(i64** align 8 %self)
  br label %bb8

bb8:                                              ; preds = %bb7
  %_17 = bitcast %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %_18 to %"std::sys::unix::locks::pthread_mutex::Mutex"*
  call void @_ZN3std3sys4unix5locks13pthread_mutex5Mutex6unlock17h32a92a711fd8fc24E(%"std::sys::unix::locks::pthread_mutex::Mutex"* align 8 %_17)
  br label %bb9

bb9:                                              ; preds = %bb8
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define void @"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18697e1a1ab7fc0E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_15 = alloca i8, align 1
  %_4 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hdd16e6d5a7de95c4E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %_4, i32 0, i32 4
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = load i32, i32* %_3, align 4
  %1 = sub i32 %0, 1
  store i32 %1, i32* %_3, align 4
  %_9 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hdd16e6d5a7de95c4E"(i64** align 8 %self)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_8 = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %_9, i32 0, i32 4
  br label %bb4

bb4:                                              ; preds = %bb3
  %_6 = load i32, i32* %_8, align 4
  %2 = icmp eq i32 %_6, 0
  br i1 %2, label %bb5, label %bb10

bb5:                                              ; preds = %bb4
  %_13 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hdd16e6d5a7de95c4E"(i64** align 8 %self)
  br label %bb6

bb10:                                             ; preds = %bb4
  br label %bb11

bb11:                                             ; preds = %bb9, %bb10
  ret void

bb6:                                              ; preds = %bb5
  %_12 = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %_13, i32 0, i32 2
  store i8 0, i8* %_15, align 1
  %3 = load i8, i8* %_15, align 1, !range !13, !noundef !1
  call void @_ZN4core4sync6atomic11AtomicUsize5store17h2850ebe00d36fab1E(%"core::sync::atomic::AtomicUsize"* align 8 %_12, i64 0, i8 %3)
  br label %bb7

bb7:                                              ; preds = %bb6
  %_18 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hdd16e6d5a7de95c4E"(i64** align 8 %self)
  br label %bb8

bb8:                                              ; preds = %bb7
  %_17 = bitcast %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %_18 to %"std::sys::unix::locks::pthread_mutex::Mutex"*
  call void @_ZN3std3sys4unix5locks13pthread_mutex5Mutex6unlock17h32a92a711fd8fc24E(%"std::sys::unix::locks::pthread_mutex::Mutex"* align 8 %_17)
  br label %bb9

bb9:                                              ; preds = %bb8
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb220f29ff9752764E"([0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %slice.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %slice.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: uwtable
define align 8 i64* @"_ZN98_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9ad896508e606388E"(i64** align 8 %self) unnamed_addr #1 {
start:
  %_2 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h84a640399dfdf8edE"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %_2, i32 0, i32 3
  ret i64* %0
}

; Function Attrs: uwtable
define align 8 %"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>"* @"_ZN98_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hbfaef221e0cf0cadE"(i64** align 8 %self) unnamed_addr #1 {
start:
  %_2 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hdd16e6d5a7de95c4E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %_2, i32 0, i32 3
  ret %"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>"* %0
}

; Function Attrs: uwtable
define void @app_init() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %2 = alloca { i8*, i32 }, align 8
  %x.i = alloca i32, align 4
  %3 = alloca { i8*, i32 }, align 8
  %_51 = alloca [1 x { i8*, i64* }], align 8
  %_44 = alloca %"core::fmt::Arguments", align 8
  %_38 = alloca i8*, align 8
  %_30 = alloca { i8*, i8* }, align 8
  %_26 = alloca %"std::fs::OpenOptions", align 4
  %_22 = alloca %"core::result::Result<std::fs::File, std::io::error::Error>", align 8
  %log_name = alloca %"alloc::string::String"*, align 8
  %_17 = alloca { i8*, i8* }, align 8
  %_12 = alloca { i8*, i8* }, align 8
  %_4 = alloca { i8*, i8* }, align 8
  store i8 1, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @_ZN8app_init13START_OF_LINE17h9550fafba1136657E, i32 0, i32 0, i32 0), align 1
  %4 = load i8, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @_ZN8app_init9OPERATION17h5b4d9160dad8e8c9E, i32 0, i32 0, i32 0), align 1, !range !15, !noundef !1
  %_3 = zext i8 %4 to i64
  switch i64 %_3, label %bb1 [
    i64 1, label %bb2
    i64 2, label %bb2
  ]

bb1:                                              ; preds = %start
  %5 = load i8, i8* getelementptr inbounds (%OpngOptions, %OpngOptions* bitcast (<{ [9 x i8], [16 x i8] }>* @_ZN8app_init7OPTIONS17he3e98ae44fbfbaabE to %OpngOptions*), i32 0, i32 0), align 1, !range !7, !noundef !1
  %_10 = trunc i8 %5 to i1
  %_9 = xor i1 %_10, true
  br i1 %_9, label %bb5, label %bb8

bb2:                                              ; preds = %start, %start
  %_7 = call align 8 i64* @_ZN3std2io5stdio6stdout17hcce4545e19a53cc3E()
  br label %bb3

bb8:                                              ; preds = %bb1
  %6 = bitcast { i8*, i8* }* %_17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = bitcast { i8*, i8* }* %_17 to {}**
  store {}* null, {}** %7, align 8
  invoke void @"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Write$GT$$GT$$GT$17hb62ed27a62093f12E"({ i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*))
          to label %bb29 unwind label %cleanup1

bb5:                                              ; preds = %bb1
  %_15 = call align 8 i64* @_ZN3std2io5stdio6stderr17h08dad0c978786954E()
  br label %bb6

bb6:                                              ; preds = %bb5
  %_4.i8 = invoke i8* @_ZN5alloc5alloc15exchange_malloc17hb1a6a980d63d968fE(i64 8, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6af4c788f21fe831E.exit" unwind label %cleanup.i9

cleanup.i9:                                       ; preds = %bb6
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = bitcast { i8*, i32 }* %0 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6af4c788f21fe831E.exit": ; preds = %bb6
  %19 = bitcast i8* %_4.i8 to i64**
  %20 = bitcast i64** %19 to i64*
  store i64* %_15, i64** %19, align 8
  br label %bb7

bb7:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6af4c788f21fe831E.exit"
  %21 = bitcast i64** %19 to {}*
  %22 = bitcast {}* %21 to i8*
  %_13.0 = bitcast i8* %22 to {}*
  %23 = bitcast { i8*, i8* }* %_12 to { {}*, [3 x i64]* }*
  %24 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %23, i32 0, i32 0
  store {}* %_13.0, {}** %24, align 8
  %25 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %23, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* @vtable.3 to [3 x i64]*), [3 x i64]** %25, align 8
  invoke void @"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Write$GT$$GT$$GT$17hb62ed27a62093f12E"({ i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*))
          to label %bb27 unwind label %cleanup

bb26:                                             ; preds = %cleanup
  %26 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_12, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8, !align !6
  %28 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_12, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %27, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 0), align 8
  store i8* %29, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 1), align 8
  br label %bb23

cleanup:                                          ; preds = %bb7
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  %32 = extractvalue { i8*, i32 } %30, 1
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %bb26

bb27:                                             ; preds = %bb7
  %35 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_12, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8, !align !6
  %37 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_12, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %36, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 0), align 8
  store i8* %38, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 1), align 8
  br label %bb9

bb23:                                             ; preds = %bb35, %bb36, %bb24, %bb28, %bb26
  %39 = bitcast { i8*, i32 }* %3 to i8**
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = insertvalue { i8*, i32 } undef, i8* %40, 0
  %44 = insertvalue { i8*, i32 } %43, i32 %42, 1
  resume { i8*, i32 } %44

bb9:                                              ; preds = %bb25, %bb29, %bb27
  %45 = load {}*, {}** getelementptr inbounds (%OpngOptions, %OpngOptions* bitcast (<{ [9 x i8], [16 x i8] }>* @_ZN8app_init7OPTIONS17he3e98ae44fbfbaabE to %OpngOptions*), i32 0, i32 1, i32 0), align 1
  %46 = icmp eq {}* %45, null
  %_20 = select i1 %46, i64 0, i64 1
  %47 = icmp eq i64 %_20, 1
  br i1 %47, label %bb10, label %bb22

bb28:                                             ; preds = %cleanup1
  %48 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_17, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8, !align !6
  %50 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_17, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %49, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 0), align 8
  store i8* %51, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 1), align 8
  br label %bb23

cleanup1:                                         ; preds = %bb8
  %52 = landingpad { i8*, i32 }
          cleanup
  %53 = extractvalue { i8*, i32 } %52, 0
  %54 = extractvalue { i8*, i32 } %52, 1
  %55 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %bb28

bb29:                                             ; preds = %bb8
  %57 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_17, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8, !align !6
  %59 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_17, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  store i8* %58, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 0), align 8
  store i8* %60, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 1), align 8
  br label %bb9

bb3:                                              ; preds = %bb2
  %_4.i5 = invoke i8* @_ZN5alloc5alloc15exchange_malloc17hb1a6a980d63d968fE(i64 8, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2a63b30601cea7a5E.exit" unwind label %cleanup.i6

cleanup.i6:                                       ; preds = %bb3
  %61 = landingpad { i8*, i32 }
          cleanup
  %62 = extractvalue { i8*, i32 } %61, 0
  %63 = extractvalue { i8*, i32 } %61, 1
  %64 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = bitcast { i8*, i32 }* %1 to i8**
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = insertvalue { i8*, i32 } undef, i8* %67, 0
  %71 = insertvalue { i8*, i32 } %70, i32 %69, 1
  resume { i8*, i32 } %71

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2a63b30601cea7a5E.exit": ; preds = %bb3
  %72 = bitcast i8* %_4.i5 to i64**
  %73 = bitcast i64** %72 to i64*
  store i64* %_7, i64** %72, align 8
  br label %bb4

bb4:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2a63b30601cea7a5E.exit"
  %74 = bitcast i64** %72 to {}*
  %75 = bitcast {}* %74 to i8*
  %_5.0 = bitcast i8* %75 to {}*
  %76 = bitcast { i8*, i8* }* %_4 to { {}*, [3 x i64]* }*
  %77 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %76, i32 0, i32 0
  store {}* %_5.0, {}** %77, align 8
  %78 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %76, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* @vtable.4 to [3 x i64]*), [3 x i64]** %78, align 8
  invoke void @"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Write$GT$$GT$$GT$17hb62ed27a62093f12E"({ i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*))
          to label %bb25 unwind label %cleanup2

bb24:                                             ; preds = %cleanup2
  %79 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8, !align !6
  %81 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  store i8* %80, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 0), align 8
  store i8* %82, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 1), align 8
  br label %bb23

cleanup2:                                         ; preds = %bb4
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  %85 = extractvalue { i8*, i32 } %83, 1
  %86 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  br label %bb24

bb25:                                             ; preds = %bb4
  %88 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8, !align !6
  %90 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  store i8* %89, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 0), align 8
  store i8* %91, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E to { i8*, i8* }*), i32 0, i32 1), align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  store %"alloc::string::String"* bitcast (%"core::option::Option<alloc::string::String>"* getelementptr inbounds (%OpngOptions, %OpngOptions* bitcast (<{ [9 x i8], [16 x i8] }>* @_ZN8app_init7OPTIONS17he3e98ae44fbfbaabE to %OpngOptions*), i32 0, i32 1) to %"alloc::string::String"*), %"alloc::string::String"** %log_name, align 8
  call void @_ZN3std2fs11OpenOptions3new17hbda300ef53f08e65E(%"std::fs::OpenOptions"* sret(%"std::fs::OpenOptions") %_26)
  br label %bb11

bb22:                                             ; preds = %bb32, %bb9
  ret void

bb11:                                             ; preds = %bb10
  %_24 = call align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions6append17h1de25127eff0818aE(%"std::fs::OpenOptions"* align 4 %_26, i1 zeroext true)
  br label %bb12

bb12:                                             ; preds = %bb11
  %_27 = load %"alloc::string::String"*, %"alloc::string::String"** %log_name, align 8, !nonnull !1, !align !3, !noundef !1
  call void @_ZN3std2fs11OpenOptions4open17h2e6ca5e738cae3e1E(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %_22, %"std::fs::OpenOptions"* align 4 %_24, %"alloc::string::String"* align 8 %_27)
  br label %bb13

bb13:                                             ; preds = %bb12
  %92 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_22 to i32*
  %93 = load i32, i32* %92, align 8, !range !12, !noundef !1
  %_28 = zext i32 %93 to i64
  switch i64 %_28, label %bb15 [
    i64 0, label %bb16
    i64 1, label %bb14
  ]

bb15:                                             ; preds = %bb13
  unreachable

bb16:                                             ; preds = %bb13
  %94 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_22 to %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"*
  %95 = getelementptr inbounds %"core::result::Result<std::fs::File, std::io::error::Error>::Ok", %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"* %94, i32 0, i32 1
  %file = load i32, i32* %95, align 4, !range !16, !noundef !1
  store i32 %file, i32* %x.i, align 4
  %_4.i = invoke i8* @_ZN5alloc5alloc15exchange_malloc17hb1a6a980d63d968fE(i64 4, i64 4)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h244ff2420d453ef4E.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb16
  %96 = landingpad { i8*, i32 }
          cleanup
  %97 = extractvalue { i8*, i32 } %96, 0
  %98 = extractvalue { i8*, i32 } %96, 1
  %99 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  invoke void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h855fa266bcf9ed11E"(i32* %x.i) #13
          to label %bb3.i unwind label %abort.i

abort.i:                                          ; preds = %cleanup.i
  %101 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb3.i:                                            ; preds = %cleanup.i
  %102 = bitcast { i8*, i32 }* %2 to i8**
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = insertvalue { i8*, i32 } undef, i8* %103, 0
  %107 = insertvalue { i8*, i32 } %106, i32 %105, 1
  br label %cleanup3.body

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h244ff2420d453ef4E.exit": ; preds = %bb16
  %_5.i = bitcast i8* %_4.i to i32*
  %108 = load i32, i32* %x.i, align 4, !range !16, !noundef !1
  store i32 %108, i32* %_5.i, align 4
  br label %bb17

bb14:                                             ; preds = %bb13
  %109 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17heb5ea38a5c804908E(%"alloc::string::String"** align 8 %log_name)
          to label %bb20 unwind label %cleanup3

bb36:                                             ; preds = %bb30, %cleanup3.body
  %110 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_22 to i32*
  %111 = load i32, i32* %110, align 8, !range !12, !noundef !1
  %_57 = zext i32 %111 to i64
  %112 = icmp eq i64 %_57, 0
  br i1 %112, label %bb23, label %bb35

cleanup3:                                         ; preds = %bb19, %bb18, %bb21, %bb20, %bb14
  %113 = landingpad { i8*, i32 }
          cleanup
  br label %cleanup3.body

cleanup3.body:                                    ; preds = %cleanup3, %bb3.i
  %eh.lpad-body = phi { i8*, i32 } [ %113, %cleanup3 ], [ %107, %bb3.i ]
  %114 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  %115 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  %116 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  br label %bb36

bb20:                                             ; preds = %bb14
  %_52.0 = extractvalue { i8*, i64* } %109, 0
  %_52.1 = extractvalue { i8*, i64* } %109, 1
  %118 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_51, i64 0, i64 0
  %119 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %118, i32 0, i32 0
  store i8* %_52.0, i8** %119, align 8
  %120 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %118, i32 0, i32 1
  store i64* %_52.1, i64** %120, align 8
  %_48.0 = bitcast [1 x { i8*, i64* }]* %_51 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117h7eb7cea42e61e2ceE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_44, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc23 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_48.0, i64 1)
          to label %bb21 unwind label %cleanup3

bb21:                                             ; preds = %bb20
  invoke void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"* %_44)
          to label %bb37 unwind label %cleanup3

bb37:                                             ; preds = %bb21
  br label %bb34

bb34:                                             ; preds = %bb19, %bb31, %bb37
  %121 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_22 to i32*
  %122 = load i32, i32* %121, align 8, !range !12, !noundef !1
  %_56 = zext i32 %122 to i64
  %123 = icmp eq i64 %_56, 0
  br i1 %123, label %bb32, label %bb33

bb17:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h244ff2420d453ef4E.exit"
  %124 = bitcast i32* %_5.i to {}*
  %125 = bitcast {}* %124 to i8*
  %_31.0 = bitcast i8* %125 to {}*
  %126 = bitcast { i8*, i8* }* %_30 to { {}*, [3 x i64]* }*
  %127 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %126, i32 0, i32 0
  store {}* %_31.0, {}** %127, align 8
  %128 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %126, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* @vtable.5 to [3 x i64]*), [3 x i64]** %128, align 8
  invoke void @"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Write$GT$$GT$$GT$17hb62ed27a62093f12E"({ i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8LOG_FILE17hbd0aa6523203ecbcE to { i8*, i8* }*))
          to label %bb31 unwind label %cleanup4

bb30:                                             ; preds = %cleanup4
  %129 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_30, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8, !align !6
  %131 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_30, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  store i8* %130, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8LOG_FILE17hbd0aa6523203ecbcE to { i8*, i8* }*), i32 0, i32 0), align 8
  store i8* %132, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8LOG_FILE17hbd0aa6523203ecbcE to { i8*, i8* }*), i32 0, i32 1), align 8
  br label %bb36

cleanup4:                                         ; preds = %bb17
  %133 = landingpad { i8*, i32 }
          cleanup
  %134 = extractvalue { i8*, i32 } %133, 0
  %135 = extractvalue { i8*, i32 } %133, 1
  %136 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  br label %bb30

bb31:                                             ; preds = %bb17
  %138 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_30, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8, !align !6
  %140 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_30, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  store i8* %139, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8LOG_FILE17hbd0aa6523203ecbcE to { i8*, i8* }*), i32 0, i32 0), align 8
  store i8* %141, i8** getelementptr inbounds ({ i8*, i8* }, { i8*, i8* }* bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8LOG_FILE17hbd0aa6523203ecbcE to { i8*, i8* }*), i32 0, i32 1), align 8
  %142 = load {}*, {}** bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8LOG_FILE17hbd0aa6523203ecbcE to {}**), align 8
  %143 = icmp eq {}* %142, null
  %_36 = select i1 %143, i64 0, i64 1
  %144 = icmp eq i64 %_36, 1
  br i1 %144, label %bb18, label %bb34

bb18:                                             ; preds = %bb31
  %145 = invoke i8* @"_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$9write_all17h028a20e5e6d93486E"({ {}*, [3 x i64]* }* align 8 bitcast (<{ [8 x i8], [8 x i8] }>* @_ZN8app_init8LOG_FILE17hbd0aa6523203ecbcE to { {}*, [3 x i64]* }*), [0 x i8]* align 1 bitcast (<{ [66 x i8] }>* @alloc6 to [0 x i8]*), i64 66)
          to label %bb19 unwind label %cleanup3

bb19:                                             ; preds = %bb18
  store i8* %145, i8** %_38, align 8
  invoke void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h5667141b3eedb478E"(i8** %_38)
          to label %bb34 unwind label %cleanup3

bb35:                                             ; preds = %bb36
  invoke void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h89895170f10c9252E"(%"core::result::Result<std::fs::File, std::io::error::Error>"* %_22) #13
          to label %bb23 unwind label %abort

abort:                                            ; preds = %bb35
  %146 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb32:                                             ; preds = %bb33, %bb34
  br label %bb22

bb33:                                             ; preds = %bb34
  call void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h89895170f10c9252E"(%"core::result::Result<std::fs::File, std::io::error::Error>"* %_22)
  br label %bb32
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  call void @app_init()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2fs11OpenOptions5_open17h0e3ad3dc10bbdff0E(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>"), %"std::fs::OpenOptions"* align 4, %"std::path::Path"* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$14write_vectored17h0814d528b93795aeE"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>"), i32* align 4, [0 x { i8*, i64 }]* align 8, i64) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #5

; Function Attrs: uwtable
declare void @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17hd94b558b9f504037E"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>"), i32* align 4, [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt5write17hda8e8eb84b49cbfcE({}* align 1, [3 x i64]* align 8, %"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare i8 @_ZN3std3sys4unix17decode_error_kind17h93afa0014deda228E(i32) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #7

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare i32 @pthread_mutex_unlock(%"libc::unix::bsd::apple::pthread_mutex_t"*) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: uwtable
declare zeroext i1 @"_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4c633e1f2b589beE"(%"core::cell::BorrowMutError"* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #10

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #11

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #10

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #10

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare align 8 i64* @_ZN3std2io5stdio6Stderr4lock17ha47dbb63e31dd24fE(i64** align 8) unnamed_addr #1

; Function Attrs: uwtable
declare align 8 i64* @_ZN3std2io5stdio6Stdout4lock17h1216f85b7533c3b9E(i64** align 8) unnamed_addr #1

; Function Attrs: uwtable
declare i32 @close(i32) unnamed_addr #1

; Function Attrs: uwtable
declare align 8 i64* @_ZN3std2io5stdio6stderr17h08dad0c978786954E() unnamed_addr #1

; Function Attrs: uwtable
declare void @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h0011fa7b38da11e0E"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>"), i64** align 8, [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17hf3af2e6af2845347E"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>"), i64** align 8, [0 x { i8*, i64 }]* align 8, i64) unnamed_addr #1

; Function Attrs: uwtable
declare i8* @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17h7992706991de5191E"(i64** align 8) unnamed_addr #1

; Function Attrs: uwtable
declare i8* @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$9write_all17h702c0f002293f94eE"(i64** align 8, [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare i8* @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$18write_all_vectored17h9189afaccfc6fb2aE"(i64** align 8, [0 x { i8*, i64 }]* align 8, i64) unnamed_addr #1

; Function Attrs: uwtable
declare i8* @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$9write_fmt17h2e372dc2e8c5e300E"(i64** align 8, %"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: uwtable
declare align 8 i64* @_ZN3std2io5stdio6stdout17hcce4545e19a53cc3E() unnamed_addr #1

; Function Attrs: uwtable
declare void @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5write17h628433167d250765E"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>"), i64** align 8, [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$14write_vectored17h45043cb923f6a35fE"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>"), i64** align 8, [0 x { i8*, i64 }]* align 8, i64) unnamed_addr #1

; Function Attrs: uwtable
declare i8* @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5flush17hec9c3680ba2cdec3E"(i64** align 8) unnamed_addr #1

; Function Attrs: uwtable
declare i8* @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_all17h6e298a41850813b5E"(i64** align 8, [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare i8* @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$18write_all_vectored17hae6401ad0f82425fE"(i64** align 8, [0 x { i8*, i64 }]* align 8, i64) unnamed_addr #1

; Function Attrs: uwtable
declare i8* @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17hcd7b542de78799a1E"(i64** align 8, %"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2fs11OpenOptions3new17hbda300ef53f08e65E(%"std::fs::OpenOptions"* sret(%"std::fs::OpenOptions")) unnamed_addr #1

; Function Attrs: uwtable
declare align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions6append17h1de25127eff0818aE(%"std::fs::OpenOptions"* align 4, i1 zeroext) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: uwtable
declare i8* @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5flush17hd98c033a51a5835cE"(i32* align 4) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #11 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #12 = { noreturn }
attributes #13 = { noinline }
attributes #14 = { noinline noreturn nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 0, i64 -9223372036854775807}
!3 = !{i64 8}
!4 = !{i64 0, i64 2}
!5 = !{i8 0, i8 41}
!6 = !{i64 1}
!7 = !{i8 0, i8 2}
!8 = !{i8 0, i8 42}
!9 = !{i8 0, i8 4}
!10 = !{i64 1, i64 -9223372036854775807}
!11 = !{i64 1, i64 0}
!12 = !{i32 0, i32 2}
!13 = !{i8 0, i8 5}
!14 = !{i64 4}
!15 = !{i8 0, i8 3}
!16 = !{i32 0, i32 -1}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_init.rs.bc", hash: (1875520031, 588613703, 2939926691, 2992360469, 29481276))
^1 = gv: (name: "_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17hc3b2cc45a5a85a28E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^131), (callee: ^314))))) ; guid = 32472151122349019
^2 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3set17h045c7d61baecc206E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^112), (callee: ^373))))) ; guid = 46590525727689302
^3 = gv: (name: "alloc32", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 74751378439687202
^4 = gv: (name: "_ZN66_$LT$core..cell..BorrowRefMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8df1aceeaa3cb6b8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8, calls: ((callee: ^60), (callee: ^2))))) ; guid = 79123450234377922
^5 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h63f8f81bf38f054fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^338))))) ; guid = 90435606298733387
^6 = gv: (name: "_ZN4core3str8converts23from_utf8_unchecked_mut17h46a5f332736e1ae5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 119388158106618777
^7 = gv: (name: "alloc197", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^200)))) ; guid = 139442591294830914
^8 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h7bc21248e3a6f935E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^180))))) ; guid = 140142338594448867
^9 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17he48fbf5ecf2f4706E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^161), (callee: ^243))))) ; guid = 204429449957910471
^10 = gv: (name: "alloc232", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 427242684846536804
^11 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 564871848123955463
^12 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hccd176ffe703aedcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 574016532740387380
^13 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^14 = gv: (name: "close") ; guid = 694551982725885809
^15 = gv: (name: "_ZN4core3ptr88drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17ha6371ef0e44556dbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 751562443878362291
^16 = gv: (name: "_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h191fc28bd97479c3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 844801181616655420
^17 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h0124106d22e8d006E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^304))))) ; guid = 861309489721472371
^18 = gv: (name: "_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5write17h628433167d250765E") ; guid = 880718462412438472
^19 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7d110d70f0319aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^263), (callee: ^169))))) ; guid = 973724827835076314
^20 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17he13a3cbbe10adff7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^317), (callee: ^63))))) ; guid = 982025288252284375
^21 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^22 = gv: (name: "_ZN4core3ptr121drop_in_place$LT$core..cell..RefMut$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$17h708b126b94a0e9a2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^181))))) ; guid = 1054406877438479592
^23 = gv: (name: "_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h3e4ec17de82e6f64E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^126))))) ; guid = 1090650993112846873
^24 = gv: (name: "alloc230", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1096462647531205303
^25 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h5e979f9ce7864a41E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^215))))) ; guid = 1118608526616460283
^26 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h015725d57c06165eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1119955374628959087
^27 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h24d7779ce72be3deE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 1171277183074775896
^28 = gv: (name: "alloc201", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^200)))) ; guid = 1178902621202453142
^29 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h9955128df4e45a1eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^148))))) ; guid = 1223728356463179049
^30 = gv: (name: "_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$17is_write_vectored17hafaf373b6f3c8e00E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 29, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^312), (callee: ^246), (callee: ^103), (callee: ^376)), refs: (^289)))) ; guid = 1227382790834460367
^31 = gv: (name: "alloc209", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1261847220875843713
^32 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^125)))) ; guid = 1369492369002935508
^33 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^34 = gv: (name: "alloc52", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1524271190000610326
^35 = gv: (name: "_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hd06212b6e7718bcbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^256), (callee: ^376)), refs: (^289)))) ; guid = 1548920029259427865
^36 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h124ad5cb85e290beE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^189))))) ; guid = 1569427708403866673
^37 = gv: (name: "alloc235", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 1590193430822664907
^38 = gv: (name: "_ZN3std3sys4unix2fs4File17is_write_vectored17h5e2dda830b611d0bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^45))))) ; guid = 1674539091210281168
^39 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he3bd7a0e2d50ff1dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1696325068291500306
^40 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h61431bedb4daf3d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^130), (callee: ^184), (callee: ^326))))) ; guid = 1819512681125125288
^41 = gv: (name: "_ZN3std3sys4unix17decode_error_kind17h93afa0014deda228E") ; guid = 1880844458205596798
^42 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h539d154252cbe34fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^27))))) ; guid = 1898883507053062543
^43 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h56293f0583b4021bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 1911143234424108649
^44 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17hd01a8d28bf1c546dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^127), (callee: ^181), (callee: ^114), (callee: ^376)), refs: (^289)))) ; guid = 1912463291276470727
^45 = gv: (name: "_ZN3std3sys4unix2fd8FileDesc17is_write_vectored17h0366847868c3bf85E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 1940730352273889753
^46 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha9e5c81b0923be49E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1993904662361533781
^47 = gv: (name: "_ZN3std2fs11OpenOptions4open17h2e6ca5e738cae3e1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^23), (callee: ^220)), refs: (^289)))) ; guid = 2069657893831381382
^48 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdba444df0d760f77E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 2081385792602356370
^49 = gv: (name: "_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17hd94b558b9f504037E") ; guid = 2195838735450565152
^50 = gv: (name: "alloc84", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2198166212631272067
^51 = gv: (name: "alloc55", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^34)))) ; guid = 2419778131859838001
^52 = gv: (name: "alloc226", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^232)))) ; guid = 2504143930122951143
^53 = gv: (name: "_ZN4core3str8converts19from_utf8_unchecked17ha0c77a16fa79b61dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 13))) ; guid = 2539008595264863871
^54 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^55 = gv: (name: "_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb220f29ff9752764E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 2595051093413568546
^56 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h43385b31c8fffcb5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2630619803779324583
^57 = gv: (name: "alloc90", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^140, ^185, ^294)))) ; guid = 2648440037136193616
^58 = gv: (name: "_ZN4core4char7methods8len_utf817h587cf1510e4942daE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 19))) ; guid = 2720421507711974761
^59 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hb649989cc5007125E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^132), (callee: ^135), (callee: ^297))))) ; guid = 2756413444432344338
^60 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$3get17h374f88892666f857E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 2759115282870596096
^61 = gv: (name: "alloc220", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^100)))) ; guid = 2889913409357452250
^62 = gv: (name: "alloc214", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2892422138610916976
^63 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17hf5496138af89cc5eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^222), (callee: ^26))))) ; guid = 3023870631997367636
^64 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hefbbb68ccdf34fa7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^331), (callee: ^296), (callee: ^226), (callee: ^366)), refs: (^225)))) ; guid = 3127398925005136946
^65 = gv: (name: "_ZN4core3ptr43drop_in_place$LT$std..io..stdio..Stderr$GT$17h9bf3616f38b09887E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 3195094404705445038
^66 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h2ea6e57e5a193dffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^334))))) ; guid = 3255320052897970454
^67 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h52a96e575e2561c7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 3300106629782981208
^68 = gv: (name: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he633258d2339e032E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^237))))) ; guid = 3329859513320542903
^69 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h993aac43da226c97E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 3343304389165964979
^70 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h293e1daabac328bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^372))))) ; guid = 3376153215914921484
^71 = gv: (name: "_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hc146b7c04c947ca9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^42))))) ; guid = 3422987389444448205
^72 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17hc26a314f1ec23718E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 3435540372357992110
^73 = gv: (name: "_ZN85_$LT$std..io..buffered..linewriter..LineWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$17is_write_vectored17h5181ccaf3eee0d25E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^360))))) ; guid = 3472804020518940115
^74 = gv: (name: "_ZN3std3sys4unix2io7IoSlice8as_slice17hc4acce903ac3801dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^254))))) ; guid = 3630938646554746186
^75 = gv: (name: "_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5fd0ec86b0eb8f27E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^14))))) ; guid = 3757863741881683815
^76 = gv: (name: "_ZN3std2io7IoSlice14advance_slices17h3c6851be6b75002aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 107, calls: ((callee: ^171), (callee: ^361), (callee: ^146), (callee: ^113), (callee: ^309), (callee: ^310), (callee: ^299), (callee: ^265), (callee: ^322), (callee: ^280), (callee: ^371)), refs: (^3, ^7, ^291, ^106, ^28)))) ; guid = 3803373849379846130
^77 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h6b863512d9a0de7aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^105), (callee: ^224))))) ; guid = 3854650963569182352
^78 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbcc30389f9487c3fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^288))))) ; guid = 4020907877681065315
^79 = gv: (name: "_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$9write_all17h028a20e5e6d93486E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 4186931994171092927
^80 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h8ea10c2d12b1b3dbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^176))))) ; guid = 4236233864029852678
^81 = gv: (name: "_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$18write_all_vectored17h9189afaccfc6fb2aE") ; guid = 4273483483368840016
^82 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr17h88e7000b4a4b9900E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 86, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^48), (callee: ^43), (callee: ^195), (callee: ^109), (callee: ^257), (callee: ^186), (callee: ^319), (callee: ^370), (callee: ^198)), refs: (^289, ^201, ^336)))) ; guid = 4294139730622335357
^83 = gv: (name: "vtable.3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^65, ^141, ^199, ^332, ^234, ^128, ^81, ^260)))) ; guid = 4324534252681000519
^84 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h666184a115f59898E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^206))))) ; guid = 4349469860375888343
^85 = gv: (name: "alloc222", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^187)))) ; guid = 4485598458959758540
^86 = gv: (name: "_ZN3std3ffi6os_str5OsStr10from_inner17h8d0b0c0777a76ae3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 4495258785379085687
^87 = gv: (name: "_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5013b670335e625E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^219), (callee: ^302)), refs: (^289)))) ; guid = 4497979473917451429
^88 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^230, ^212)))) ; guid = 4500264257673183532
^89 = gv: (name: "_ZN4core3ptr8metadata8metadata17hcf934f57fb16a4caE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 4557444633230727360
^90 = gv: (name: "_ZN3std2io5stdio6stderr17h08dad0c978786954E") ; guid = 4580043322057719956
^91 = gv: (name: "_ZN4core3ptr76drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17h3fcb60c8153243b0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^302))))) ; guid = 4580398925182867465
^92 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^93 = gv: (name: "_ZN5alloc5alloc15exchange_malloc17hb1a6a980d63d968fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23, calls: ((callee: ^120), (callee: ^29), (callee: ^275), (callee: ^374)), refs: (^3)))) ; guid = 4683820294287101049
^94 = gv: (name: "alloc224", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^187)))) ; guid = 4753844547451459771
^95 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^159)))) ; guid = 4871341709374711952
^96 = gv: (name: "_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17he87b92875e856290E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 4916813904750904382
^97 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7af7f0c1107626bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^64), (callee: ^344))))) ; guid = 5013975420174204389
^98 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h853d1c16ed84482fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 5025495485681178057
^99 = gv: (name: "_ZN8app_init8CON_FILE17hfac897aa86e7c1f5E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 5142006188625598197
^100 = gv: (name: "alloc219", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5408281244262844464
^101 = gv: (name: "_ZN3std2io5Write18write_all_vectored17hd4f1e3ded7c717e8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 102, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^76), (callee: ^299), (callee: ^147), (callee: ^290), (callee: ^96), (callee: ^324), (callee: ^78), (callee: ^376)), refs: (^289, ^335, ^51)))) ; guid = 5453340725948266555
^102 = gv: (name: "_ZN3std3sys4unix6os_str5Slice13from_u8_slice17hc92fab724f5a2a37E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14))) ; guid = 5473291904183060818
^103 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StdoutLock$GT$17h65700637ac23defcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^346))))) ; guid = 5505865163710076022
^104 = gv: (name: "alloc236", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5531476759023663133
^105 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd2edebc444501a85E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^142), (callee: ^39))))) ; guid = 5544953091112420946
^106 = gv: (name: "alloc199", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^200)))) ; guid = 5561242399946187756
^107 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h490f01cbb07059e0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^203))))) ; guid = 5677671212751114987
^108 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he87b06eedc25b654E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^168), (callee: ^254))))) ; guid = 5709131730123226818
^109 = gv: (name: "_ZN3std2io5error14repr_bitpacked14kind_from_prim17h9aa1b78d6b8bd439E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 213))) ; guid = 5723799940832149630
^110 = gv: (name: "_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17hcd7b542de78799a1E") ; guid = 5741111565791719503
^111 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17h731c7ea5b37b6350E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^69), (callee: ^347), (callee: ^33))))) ; guid = 5820383213758943513
^112 = gv: (name: "_ZN4core4cell13Cell$LT$T$GT$7replace17h00f6ff02089d9a8fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^151)), refs: (^289)))) ; guid = 5836171698504657296
^113 = gv: (name: "_ZN4core3mem7replace17h694f2a01683d02aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^208), (callee: ^231)), refs: (^289)))) ; guid = 5941885041579750263
^114 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hbedb5387757f733bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 6016646690762109594
^115 = gv: (name: "_ZN4core3fmt5Write9write_fmt17h40f603cd2b9124b5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^167)), refs: (^235)))) ; guid = 6040057203310583397
^116 = gv: (name: "alloc212", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^282)))) ; guid = 6129686756473045470
^117 = gv: (name: "_ZN3std2io5error14repr_bitpacked4Repr4data17ha4601f9b04a2284aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^82))))) ; guid = 6230316256813973504
^118 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h327ffeade0f1136dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 6371691488360668318
^119 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^120 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9928e0dbb21af256E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^258))))) ; guid = 6414142027655261960
^121 = gv: (name: "_ZN4core3ptr5write17h61f8c0ac28daacaaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 6445147598105250144
^122 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9ac722e7e7097da6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^189), (callee: ^39))))) ; guid = 6503398220763899854
^123 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hac12bba64214e5f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 6571138593570336590
^124 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^125 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6613668375047498289
^126 = gv: (name: "_ZN3std4path95_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$alloc..string..String$GT$6as_ref17h0e7ddb53d51fa760E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^271))))) ; guid = 6724806145990314967
^127 = gv: (name: "_ZN4core4cell12BorrowRefMut3new17h59303c7bcde35183E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 19, calls: ((callee: ^60), (callee: ^2))))) ; guid = 6739349233610915386
^128 = gv: (name: "_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$9write_all17h702c0f002293f94eE") ; guid = 6817438216468936729
^129 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^130 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hf1c2a33756e33c59E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 6869677328152562178
^131 = gv: (name: "_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h72d7c8c4763ce3a9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^108), (callee: ^53))))) ; guid = 6895592275070288675
^132 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17heefb7bd75996c6e2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 6908068852102726413
^133 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h553b9e3d1103a44fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 7070067650488010023
^134 = gv: (name: "_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_all17h6e298a41850813b5E") ; guid = 7138419049412383034
^135 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h4a15cbeb3736a310E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^209))))) ; guid = 7319319241616598106
^136 = gv: (name: "_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$18write_all_vectored17hae6401ad0f82425fE") ; guid = 7358288131499196771
^137 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2e76aae1ee3c059eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^276))))) ; guid = 7588232043058498674
^138 = gv: (name: "_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18697e1a1ab7fc0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 30, calls: ((callee: ^303), (callee: ^188), (callee: ^179))))) ; guid = 7608381544318312101
^139 = gv: (name: "alloc87", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^50)))) ; guid = 7614709368023700160
^140 = gv: (name: "alloc89", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7629424158463339958
^141 = gv: (name: "_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17he2b4ecec69b0a281E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^295))))) ; guid = 7631390390197546869
^142 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1194823079248d4eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 7645954905657767071
^143 = gv: (name: "_ZN4core3ptr8metadata8metadata17hbe8f7735c8392d8bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 7665173707311256384
^144 = gv: (name: "_ZN4core3ptr4read17h62b112df643f5835E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 7792860472798773504
^145 = gv: (name: "_ZN60_$LT$std..io..stdio..StderrRaw$u20$as$u20$std..io..Write$GT$17is_write_vectored17hdf4609a09707c2f8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^293))))) ; guid = 7799353751178862064
^146 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfaa9fe2fd53f53bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 59, calls: ((callee: ^133), (callee: ^236), (callee: ^184), (callee: ^326))))) ; guid = 7804489116544171123
^147 = gv: (name: "_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$14write_vectored17h0814d528b93795aeE") ; guid = 7843070306335212392
^148 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17h75f38bbdd1f0fef9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^69), (callee: ^268), (callee: ^320), (callee: ^111), (callee: ^210), (callee: ^205), (callee: ^56), (callee: ^59), (callee: ^154)), refs: (^239)))) ; guid = 7903633023677287841
^149 = gv: (name: "_ZN4core3ptr43drop_in_place$LT$std..io..stdio..Stdout$GT$17hdbc054bfa3c30915E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 7980292575343944171
^150 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hb8f24f63da55940fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^273), (callee: ^224))))) ; guid = 8155204174142782253
^151 = gv: (name: "_ZN4core3mem7replace17hdc10bd87ee79c8c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^144), (callee: ^121)), refs: (^289)))) ; guid = 8157514296593906468
^152 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h0cbc102efe7ed932E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 8203883172603310352
^153 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h3c1f8bc39dbc8e32E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^44), (callee: ^223)), refs: (^62)))) ; guid = 8288628060660425813
^154 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hf59dcd200c49c374E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^266))))) ; guid = 8324979887556705365
^155 = gv: (name: "_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$17is_write_vectored17h3c1884429c1f579cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^30))))) ; guid = 8328778588656322688
^156 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E") ; guid = 8401561645110503840
^157 = gv: (name: "_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17hc8acbc773e6cbcdaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^192))))) ; guid = 8406321417607914849
^158 = gv: (name: "vtable.4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^149, ^155, ^18, ^286, ^251, ^134, ^136, ^110)))) ; guid = 8512964370024605235
^159 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8592639429655474797
^160 = gv: (name: "_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17h352197120760a572E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^75))))) ; guid = 8646672868435121378
^161 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr17hd96e8d88669bc4afE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 86, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^48), (callee: ^43), (callee: ^195), (callee: ^109), (callee: ^257), (callee: ^186), (callee: ^80), (callee: ^370), (callee: ^211)), refs: (^289, ^201, ^336)))) ; guid = 8648148134602478350
^162 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hf4afd9fef57bafcaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^135))))) ; guid = 8668090355729746611
^163 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h170bf1cf91d533c6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^122), (callee: ^224))))) ; guid = 8681847504871858502
^164 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf3cd52ff9d9f14f9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 8728881856896564666
^165 = gv: (name: "_ZN3std2io5stdio6stdout17hcce4545e19a53cc3E") ; guid = 8804596820496859176
^166 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h4ae8165072afc20aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^152))))) ; guid = 8811195412567429479
^167 = gv: (name: "_ZN4core3fmt5write17hda8e8eb84b49cbfcE") ; guid = 8840068324628476335
^168 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17he48c4f13bb4c420cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^272), (callee: ^298))))) ; guid = 8934670178117280819
^169 = gv: (name: "_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E") ; guid = 9009382022939071342
^170 = gv: (name: "_ZN4core3ptr43drop_in_place$LT$dyn$u20$std..io..Write$GT$17h597c4ffe7d614d01E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 9098967643944983596
^171 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h3efbb778d3c694a5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^40))))) ; guid = 9226599908975566866
^172 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^180, ^115, ^91, ^87)))) ; guid = 9246371339168506579
^173 = gv: (name: "_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h9afe40cd32628c2bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^137))))) ; guid = 9321690365806868938
^174 = gv: (name: "app_init", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 284, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^165), (callee: ^197), (callee: ^90), (callee: ^93), (callee: ^350), (callee: ^216), (callee: ^47), (callee: ^249), (callee: ^376), (callee: ^270), (callee: ^265), (callee: ^362), (callee: ^79), (callee: ^302), (callee: ^178)), refs: (^289, ^99, ^83, ^158, ^279, ^311, ^229, ^333, ^305, readonly ^228, writeonly ^283)))) ; guid = 9378636177994685955
^175 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf8ee27d89771cba5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 9381323333087671317
^176 = gv: (name: "_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h8bcea1455c8c783dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^252))))) ; guid = 9395711474624533864
^177 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hb05e94e6c33e38d2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^132), (callee: ^39))))) ; guid = 9432113667366832739
^178 = gv: (name: "_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h89895170f10c9252E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^249), (callee: ^78))))) ; guid = 9656779448880391317
^179 = gv: (name: "_ZN3std3sys4unix5locks13pthread_mutex5Mutex6unlock17h32a92a711fd8fc24E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^340))))) ; guid = 9716378825519464518
^180 = gv: (name: "_ZN4core3fmt5Write10write_char17hf18274146b21fa21E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^349), (callee: ^87))))) ; guid = 9734477587595872331
^181 = gv: (name: "_ZN4core3ptr45drop_in_place$LT$core..cell..BorrowRefMut$GT$17h9c68f93afc1f90ffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^4))))) ; guid = 9852744841918086409
^182 = gv: (name: "_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h84a640399dfdf8edE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^281))))) ; guid = 9915155438239732110
^183 = gv: (name: "alloc78", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^342)))) ; guid = 9935807375123666148
^184 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hc88f9f269db5e270E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^369), (callee: ^72))))) ; guid = 9984810285040511384
^185 = gv: (name: "alloc91", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10001350060816828701
^186 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17hc0c88ad39c4faae3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 10035746184250410151
^187 = gv: (name: "alloc223", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10038404862031914329
^188 = gv: (name: "_ZN4core4sync6atomic11AtomicUsize5store17h2850ebe00d36fab1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^247))))) ; guid = 10042968751518409634
^189 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha0b3bc36720c56bdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 10071655469204303454
^190 = gv: (name: "_ZN98_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9ad896508e606388E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^182))))) ; guid = 10074345692849306245
^191 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10088844992358163909
^192 = gv: (name: "_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17ha8b3411ae4b7aa58E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^160))))) ; guid = 10094649978599308231
^193 = gv: (name: "_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd1631ce6bb78a3c6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 30, calls: ((callee: ^182), (callee: ^188), (callee: ^179))))) ; guid = 10132905987552914624
^194 = gv: (name: "_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h508959b287b1f691E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^356))))) ; guid = 10193406598107495836
^195 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^196 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^197 = gv: (name: "_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Write$GT$$GT$$GT$17hb62ed27a62093f12E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^348))))) ; guid = 10321013006124985659
^198 = gv: (name: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h03024bc934d31354E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^221))))) ; guid = 10340209469905981510
^199 = gv: (name: "_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h0011fa7b38da11e0E") ; guid = 10364088069630810064
^200 = gv: (name: "alloc200", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10426807736676906030
^201 = gv: (name: "alloc194", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^204)))) ; guid = 10479375382731648671
^202 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h32d9f9b734aa1a1cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 10492148443156346016
^203 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h3cfa8d842853cc0bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 10501836133963862987
^204 = gv: (name: "alloc193", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10510099448485699121
^205 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h587c46710daeb373E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 10527048761035800616
^206 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5a784c78d1356b1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 10573338232019291870
^207 = gv: (name: "_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h5557809d92077015E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 10576742953400712968
^208 = gv: (name: "_ZN4core3ptr4read17h2739f3d1b6406410E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32))) ; guid = 10628793588792428473
^209 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hc2b52e138bb7e931E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 10652504355206872941
^210 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hdc5284ada1ef4b2cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^298), (callee: ^39))))) ; guid = 10670085250763170673
^211 = gv: (name: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17hd21beb12ef3ed36aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^25))))) ; guid = 10744759260890537246
^212 = gv: (name: "_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4c633e1f2b589beE") ; guid = 10803726208494417663
^213 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hd11c91ba2205fcb8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^89))))) ; guid = 10808185448854737637
^214 = gv: (name: "_ZN5alloc5alloc8box_free17h5a5b86c60fe670e8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^17), (callee: ^120), (callee: ^77), (callee: ^274), (callee: ^344)), refs: (^289)))) ; guid = 10849467312359861971
^215 = gv: (name: "_ZN4core4hint21unreachable_unchecked17hb6fd994646e11b3dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 10869715447509431670
^216 = gv: (name: "_ZN3std2fs11OpenOptions6append17h1de25127eff0818aE") ; guid = 10892941150264520947
^217 = gv: (name: "_ZN3std2io5Write9write_fmt17hba94d4ea6a66aa81E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 73, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^167), (callee: ^91), (callee: ^166), (callee: ^324), (callee: ^376), (callee: ^302)), refs: (^289, ^172, ^139)))) ; guid = 10939329596329019676
^218 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^219 = gv: (name: "_ZN3std2io5Write9write_all17hb7d563b886527188E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 113, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^327), (callee: ^49), (callee: ^290), (callee: ^96), (callee: ^324), (callee: ^5), (callee: ^78), (callee: ^376)), refs: (^289, ^335, ^51, ^285)))) ; guid = 10980798979405235627
^220 = gv: (name: "_ZN3std2fs11OpenOptions5_open17h0e3ad3dc10bbdff0E") ; guid = 11051774061196640197
^221 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h8904ebebfd28dba6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^215))))) ; guid = 11112174217185719320
^222 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h16e4f65d70db209fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 11146790939577097148
^223 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17h81727a5510e9480fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^218)), refs: (^289, ^88)))) ; guid = 11325638167867387348
^224 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h7f325184d2fe0c34E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 11613407108372068274
^225 = gv: (name: "alloc233", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 11667951717950211062
^226 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hef2467b1789e7155E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^177), (callee: ^224))))) ; guid = 11712258444281101268
^227 = gv: (name: "alloc237", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 11750993053038484628
^228 = gv: (name: "_ZN8app_init9OPERATION17h5b4d9160dad8e8c9E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 11757209221560458899
^229 = gv: (name: "vtable.5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^101, ^219, ^217, ^357, ^249, ^147, ^49, ^250)))) ; guid = 11806920842896624782
^230 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17h3715c04bfaa1915aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 11841773608588823215
^231 = gv: (name: "_ZN4core3ptr5write17hf558c943139e42aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 11871085879261867514
^232 = gv: (name: "alloc225", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11949447692574651331
^233 = gv: (name: "_ZN4core3fmt10ArgumentV113new_upper_hex17hf71b42590e397d56E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^306)), refs: (^156)))) ; guid = 12105153282315627318
^234 = gv: (name: "_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17h7992706991de5191E") ; guid = 12340885004616451533
^235 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15, ^8, ^248, ^375)))) ; guid = 12364783469120193708
^236 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6ba16440390f7b68E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^67), (callee: ^118))))) ; guid = 12389944695778580479
^237 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h0130d27659345181E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^325), (callee: ^162), (callee: ^363))))) ; guid = 12466384464985422087
^238 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hfaee2dfe606f79ceE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^84))))) ; guid = 12476720063382207877
^239 = gv: (name: "alloc231", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^24)))) ; guid = 12516560681284092401
^240 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12541052164573315798
^241 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17h6b7bafcbaa4b8672E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^218)), refs: (^289, ^88)))) ; guid = 12659173042390218310
^242 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17heecf19c5c2a2b2cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^55))))) ; guid = 12708472725053286215
^243 = gv: (name: "_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17hf3dcbc82fa4a65cdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^308))))) ; guid = 12763081464158450057
^244 = gv: (name: "alloc218", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^100)))) ; guid = 12839479262536525298
^245 = gv: (name: "_ZN4core3ptr72drop_in_place$LT$core..cell..RefMut$LT$std..io..stdio..StderrRaw$GT$$GT$17h279a34b05c74f409E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^181))))) ; guid = 12847011457225154641
^246 = gv: (name: "_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$17is_write_vectored17h1b22519f7657e156E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^318), (callee: ^153), (callee: ^194), (callee: ^22), (callee: ^73), (callee: ^376)), refs: (^289, ^227)))) ; guid = 12889844781695365547
^247 = gv: (name: "_ZN4core4sync6atomic12atomic_store17h7790fd9c9a95319fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, calls: ((callee: ^265), (callee: ^322)), refs: (^3, ^95, ^313, ^85, ^94)))) ; guid = 12901599218567759708
^248 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h12d294efb252aeacE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^115))))) ; guid = 12961394815272912203
^249 = gv: (name: "_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h855fa266bcf9ed11E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^157))))) ; guid = 13034209301231933458
^250 = gv: (name: "_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5flush17hd98c033a51a5835cE") ; guid = 13058620015528250793
^251 = gv: (name: "_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5flush17hec9c3680ba2cdec3E") ; guid = 13094454887262755236
^252 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hde854a813c4859c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^66)), refs: (^289)))) ; guid = 13114085097955471988
^253 = gv: (name: "_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6335719c142d890bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^1))))) ; guid = 13115209260585702688
^254 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17h40c10930c1cdede6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^63))))) ; guid = 13178444438377474903
^255 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h511baaed3cd28ee6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^213), (callee: ^20))))) ; guid = 13242815266600699096
^256 = gv: (name: "_ZN5alloc5alloc8box_free17h948611b27832f3e9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^358), (callee: ^120), (callee: ^163), (callee: ^274), (callee: ^344)), refs: (^289)))) ; guid = 13242920896337935944
^257 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd984f048e187e599E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^48), (callee: ^164))))) ; guid = 13246700801777087360
^258 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h49a0ead2ca2faefaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 13309056009754863315
^259 = gv: (name: "_ZN3std2io5stdio6Stderr4lock17ha47dbb63e31dd24fE") ; guid = 13311832374565760935
^260 = gv: (name: "_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$9write_fmt17h2e372dc2e8c5e300E") ; guid = 13331029374296667673
^261 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h1446aa56054e4d91E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13448129974187758327
^262 = gv: (name: "_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17h8ed040dc97b45fe5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^329))))) ; guid = 13654118047061378560
^263 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h74544c302c60e2a8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^143), (callee: ^70))))) ; guid = 13718765027160153001
^264 = gv: (name: "alloc210", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 13771659752812472875
^265 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h7eb7cea42e61e2ceE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^265), (callee: ^322)), refs: (^3, ^32, ^264)))) ; guid = 13820969952156234301
^266 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h5687c84855f9962eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 13895555980811187947
^267 = gv: (name: "_ZN4core3ptr126drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..stdio..StderrRaw$GT$$GT$$GT$17h536df2d0e6e2daf0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^193))))) ; guid = 13916135067489936247
^268 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17hde797e31f0e4b8e4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^347), (callee: ^39))))) ; guid = 13921440976502285287
^269 = gv: (name: "alloc72", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13951804615584846197
^270 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17heb5ea38a5c804908E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^98)), refs: (^253)))) ; guid = 13957500806790399970
^271 = gv: (name: "_ZN3std4path4Path3new17hfe605c3750d2953cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^345))))) ; guid = 13987038176281445797
^272 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hd9fba3ae2c31de52E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^359))))) ; guid = 14073120396554377571
^273 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h55ec7e42e1a3f356E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^206), (callee: ^39))))) ; guid = 14321617134991320845
^274 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9f63f4f712331f62E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^359), (callee: ^39))))) ; guid = 14358063693042277797
^275 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17ha6652acbdb6bbd75E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^316), (callee: ^132))))) ; guid = 14372336228427747852
^276 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h04561dd14eec157aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^355), (callee: ^292), (callee: ^376)), refs: (^289)))) ; guid = 14392944075420023608
^277 = gv: (name: "_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h1682b26494ead3e9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^35))))) ; guid = 14421602817900731981
^278 = gv: (name: "_ZN5alloc5alloc7dealloc17h975fa396ba184a79E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^69), (callee: ^347), (callee: ^92))))) ; guid = 14509983919123380732
^279 = gv: (name: "_ZN8app_init7OPTIONS17he3e98ae44fbfbaabE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 14560546027866455277
^280 = gv: (name: "_ZN3std2io7IoSlice7advance17h15c4fdc56d37f59aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^352))))) ; guid = 14611518464916826664
^281 = gv: (name: "_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h19946a2cb55f9717E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 14634362254659177327
^282 = gv: (name: "alloc211", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14636409773749153755
^283 = gv: (name: "_ZN8app_init13START_OF_LINE17h9550fafba1136657E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 14664321151547579747
^284 = gv: (name: "_ZN5alloc5alloc8box_free17h6fcb83b366e3b68fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^238), (callee: ^120), (callee: ^150), (callee: ^274), (callee: ^344)), refs: (^289)))) ; guid = 14672029831056395816
^285 = gv: (name: "alloc186", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^200)))) ; guid = 14695518232980004790
^286 = gv: (name: "_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$14write_vectored17h45043cb923f6a35fE") ; guid = 14729020450927211890
^287 = gv: (name: "_ZN3std3sys4unix6os_str5Slice8from_str17h811789b5e4c0b2d7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 21, calls: ((callee: ^102))))) ; guid = 14753998322891735699
^288 = gv: (name: "_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h839cd6c3bc013ae4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^9))))) ; guid = 14762604631671360295
^289 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^290 = gv: (name: "_ZN3std2io5error5Error4kind17h96909353db6d870fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 37, calls: ((callee: ^117), (callee: ^41))))) ; guid = 14875296727086373767
^291 = gv: (name: "alloc73", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^269)))) ; guid = 14930851390756243048
^292 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17ha4cf620e0d9263c7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^97))))) ; guid = 14959659793853952466
^293 = gv: (name: "_ZN64_$LT$std..sys..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h134b7a32060be090E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 14979083034101993553
^294 = gv: (name: "alloc92", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14990797930321928553
^295 = gv: (name: "_ZN61_$LT$$RF$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h26ff1d5352e807ebE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 29, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^259), (callee: ^301), (callee: ^368), (callee: ^376)), refs: (^289)))) ; guid = 15006334402553600687
^296 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17he5a9359e42bfe3e6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^215)), refs: (^289)))) ; guid = 15033500947620774281
^297 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6897bfdf0fcde530E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 15077413355604028747
^298 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h42548a1211fde40fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^67), (callee: ^118))))) ; guid = 15089677747845585942
^299 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17hd4dd33221d458d4dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 15123083550457082966
^300 = gv: (name: "_ZN4core4char7methods15encode_utf8_raw17hc79f70714063bc45E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 216, calls: ((callee: ^58), (callee: ^242), (callee: ^339), (callee: ^328), (callee: ^233), (callee: ^265), (callee: ^322)), refs: (^364, ^244, ^57, ^61)))) ; guid = 15144415978554585185
^301 = gv: (name: "_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$17is_write_vectored17h5aec6b36aee6ffffE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^190), (callee: ^367), (callee: ^71), (callee: ^245), (callee: ^145), (callee: ^376)), refs: (^289, ^37)))) ; guid = 15184505314478153694
^302 = gv: (name: "_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h5667141b3eedb478E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^78))))) ; guid = 15223563437385974849
^303 = gv: (name: "_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hdd16e6d5a7de95c4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^16))))) ; guid = 15256207920637942882
^304 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hdc9b0f74e131248fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^142))))) ; guid = 15273821072859498619
^305 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15308224359482241862
^306 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hc675a6748facd6cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 15366937914687002431
^307 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hca7daa0a6e8ddd66E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^323))))) ; guid = 15384680300506610886
^308 = gv: (name: "_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h8f638237e8f7d475E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^277), (callee: ^284), (callee: ^376)), refs: (^289)))) ; guid = 15442494375026922620
^309 = gv: (name: "_ZN60_$LT$std..io..IoSlice$u20$as$u20$core..ops..deref..Deref$GT$5deref17h423d647567a68c90E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^74))))) ; guid = 15573911390877072775
^310 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hcdda3fbbd97ce8c5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^19))))) ; guid = 15627465978109241985
^311 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^191, ^11)))) ; guid = 15657413870449514031
^312 = gv: (name: "_ZN3std2io5stdio6Stdout4lock17h1216f85b7533c3b9E") ; guid = 15720880710867777721
^313 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^240)))) ; guid = 15769032852695086683
^314 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^315 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^174))))) ; guid = 15822663052811949562
^316 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h786c84c2fd51fba1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^46), (callee: ^39))))) ; guid = 15836621100254547515
^317 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hb1e78d66d045e917E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 15898070609732536519
^318 = gv: (name: "_ZN98_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hbfaef221e0cf0cadE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^303))))) ; guid = 15914466853039419801
^319 = gv: (name: "_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17ha04cf63aad7a4452E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15918246431601786413
^320 = gv: (name: "_ZN5alloc5alloc5alloc17h4d15ecd8fae24d06E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^69), (callee: ^347), (callee: ^196))))) ; guid = 15939955136381213544
^321 = gv: (name: "alloc202", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16044496604330069813
^322 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^323 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h1391703948a6cb22E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 16147129871496698487
^324 = gv: (name: "_ZN3std2io5error5Error19from_static_message17h95f63902794961a2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^262))))) ; guid = 16163444151217842884
^325 = gv: (name: "_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E") ; guid = 16237673211549674151
^326 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h05ac08102a57f7e3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 16263355454546317787
^327 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h374e53a7e32bd91aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 16275722983946368257
^328 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8662b319fdac7640E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^68))))) ; guid = 16322156391106031190
^329 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h73a3dfa469709b0bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 16336852894686263237
^330 = gv: (name: "alloc203", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^321)))) ; guid = 16352405775498195134
^331 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h6540345c97a8f11bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^354), (callee: ^365), (callee: ^175), (callee: ^307), (callee: ^120)), refs: (^52)))) ; guid = 16373553582843673714
^332 = gv: (name: "_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17hf3af2e6af2845347E") ; guid = 16577052093049329944
^333 = gv: (name: "_ZN8app_init8LOG_FILE17hbd0aa6523203ecbcE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 16590241317736534995
^334 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h2f12e35b27fbef5aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 16746461285787216190
^335 = gv: (name: "alloc57", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16888777529406519846
^336 = gv: (name: "alloc195", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16914613239085133323
^337 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hd9b7eea1f7daee83E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^272), (callee: ^298))))) ; guid = 16915222201448684449
^338 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h9479ddb808c7aba7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^255), (callee: ^169))))) ; guid = 16940690622642017662
^339 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h81758a42a9451b8eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^202)), refs: (^21)))) ; guid = 16963300136993275373
^340 = gv: (name: "pthread_mutex_unlock") ; guid = 16969792673662370541
^341 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hc5cd74ce997cd04fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 17016385323556276554
^342 = gv: (name: "alloc77", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17017045467913688889
^343 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$app_init..OpngOptions$GT$17hc22d75426cbacf83E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^173))))) ; guid = 17024940972385743139
^344 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2ee388ff77b408cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^69), (callee: ^132), (callee: ^278))))) ; guid = 17038580232539806652
^345 = gv: (name: "_ZN3std3ffi6os_str103_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$alloc..string..String$GT$6as_ref17hcf0c69c7bb683e5dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^131), (callee: ^353))))) ; guid = 17168370560750146793
^346 = gv: (name: "_ZN4core3ptr175drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$$GT$17hd69dd0c8b645bfdbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^138))))) ; guid = 17213440987354010007
^347 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h1293a397cca9536dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^107), (callee: ^261))))) ; guid = 17217306066575825917
^348 = gv: (name: "_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Write$GT$$GT$17hd3b493f123442ae2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^214), (callee: ^376)), refs: (^289)))) ; guid = 17254111709896308682
^349 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817hbfad75e3083eb411E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^300), (callee: ^6))))) ; guid = 17300547883567056785
^350 = gv: (name: "_ZN3std2fs11OpenOptions3new17hbda300ef53f08e65E") ; guid = 17307161273710883078
^351 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$14try_borrow_mut17h09a4aba8f711545fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 68, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^127), (callee: ^181), (callee: ^12), (callee: ^376)), refs: (^289)))) ; guid = 17312776012756386315
^352 = gv: (name: "_ZN3std3sys4unix2io7IoSlice7advance17h1503f8034e14cda9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, calls: ((callee: ^265), (callee: ^322)), refs: (^3, ^183, ^330)))) ; guid = 17431197852204425311
^353 = gv: (name: "_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17hd475d9cce21113e2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^287), (callee: ^86))))) ; guid = 17437119586848387067
^354 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h30b7817a704645e9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 17451762585788704960
^355 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19f3f7744290703cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^337), (callee: ^135))))) ; guid = 17471749639971424932
^356 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h2512a9c06c793938E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^123))))) ; guid = 17542687059229484137
^357 = gv: (name: "_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$17is_write_vectored17hbc2005173f584d95E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^38))))) ; guid = 17588816327051807151
^358 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h295b8970d951fa9aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^36))))) ; guid = 17601785458368709014
^359 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h559871e8f99d473bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^132))))) ; guid = 17701282490805192264
^360 = gv: (name: "_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$17is_write_vectored17hd6274c84933501f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 17827391899266434829
^361 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h12be4f10922ea187E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 17904563584955539624
^362 = gv: (name: "_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE") ; guid = 17906690583868548313
^363 = gv: (name: "_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E") ; guid = 17978184489729322003
^364 = gv: (name: "alloc216", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^100)))) ; guid = 17994503325199477955
^365 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h84c0859d4f4031f0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 18039109737092950625
^366 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h48450d861f26819aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^274))))) ; guid = 18051830730275668444
^367 = gv: (name: "_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h0b92cb711ed0cd42E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^351), (callee: ^241)), refs: (^62)))) ; guid = 18070243368697479108
^368 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StderrLock$GT$17h5be255f0d20cb83fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^267))))) ; guid = 18096883711383316331
^369 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h0955954a666328c1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 18130226537115529836
^370 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17he29c9ece348c0394E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 18146619069954259271
^371 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^372 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h66eebd9e10e613d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^341))))) ; guid = 18173855205996064985
^373 = gv: (name: "_ZN4core3mem4drop17hb782bd4186d80dacE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 18187117201945887784
^374 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^375 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h234b5e7e77c0a8a5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^87))))) ; guid = 18350090851700278112
^376 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^377 = blockcount: 1165
