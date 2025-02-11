; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/error.rs.bc'
source_filename = "error.c25d8603-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked_mut::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"std::io::error::SimpleMessage" = type { { [0 x i8]*, i64 }, i8, [7 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>" = type { i8, [15 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os" = type { [1 x i32], i32 }
%"std::io::error::Custom" = type { { {}*, [3 x i64]* }, i8, [7 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom" = type { [1 x i64], %"std::io::error::Custom"* }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage" = type { [1 x i64], %"std::io::error::SimpleMessage"* }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple" = type { [1 x i8], i8 }
%"std::sys::unix::locks::pthread_mutex::Mutex" = type { %"core::cell::UnsafeCell<libc::unix::bsd::apple::pthread_mutex_t>" }
%"core::cell::UnsafeCell<libc::unix::bsd::apple::pthread_mutex_t>" = type { %"libc::unix::bsd::apple::pthread_mutex_t" }
%"libc::unix::bsd::apple::pthread_mutex_t" = type { i64, [56 x i8] }
%"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>" = type { %"core::marker::PhantomPinned", %"std::sys::unix::locks::pthread_mutex::Mutex", %"core::sync::atomic::AtomicUsize", i64, i32, [1 x i32] }
%"core::marker::PhantomPinned" = type {}
%"core::sync::atomic::AtomicUsize" = type { i64 }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"alloc::alloc::Global" = type {}
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void ({ i64*, i8* }*)* @"_ZN4core3ptr89drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StderrLock$GT$$GT$17h4cdbe5db933c8b3eE" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i64*, i8* }*, [0 x i8]*, i64)* @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hb8669bcfcb6dcba2E" to i8*), i8* bitcast (i1 ({ i64*, i8* }*, i32)* @_ZN4core3fmt5Write10write_char17h6a28ef2b658e9b5cE to i8*), i8* bitcast (i1 ({ i64*, i8* }*, %"core::fmt::Arguments"*)* @_ZN4core3fmt5Write9write_fmt17h8b58860b695f49d8E to i8*) }>, align 8
@alloc21 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"formatter error" }>, align 1
@alloc24 = private unnamed_addr constant <{ i8*, [9 x i8], [7 x i8] }> <{ i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc21, i32 0, i32 0, i32 0), [9 x i8] c"\0F\00\00\00\00\00\00\00(", [7 x i8] undef }>, align 8
@alloc148 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"internal error: entered unreachable code" }>, align 1
@alloc149 = private unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/io/error/repr_bitpacked.rs" }>, align 1
@alloc150 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc149, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\18\01\00\00\0D\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void ({ i64*, i8* }**)* @"_ZN4core3ptr101drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StderrLock$GT$$GT$17h0f0652d06e2e3322E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i64*, i8* }**, [0 x i8]*, i64)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h18b9a08a5fb7d6b9E" to i8*), i8* bitcast (i1 ({ i64*, i8* }**, i32)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfd715f8cde00410dE" to i8*), i8* bitcast (i1 ({ i64*, i8* }**, %"core::fmt::Arguments"*)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h3a7f67fea34cc699E" to i8*) }>, align 8
@alloc14 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc15 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc53 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc156 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc157 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc156, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc162 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/char/methods.rs" }>, align 1
@alloc159 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc162, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\8D\06\00\00\16\00\00\00" }>, align 8
@alloc161 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc162, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\A7\06\00\00\0A\00\00\00" }>, align 8
@alloc28 = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"encode_utf8: need " }>, align 1
@alloc30 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c" bytes to encode U+" }>, align 1
@alloc31 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c", but the buffer has " }>, align 1
@alloc29 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [18 x i8] }>, <{ [18 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [8 x i8] c"\12\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [19 x i8] }>, <{ [19 x i8] }>* @alloc30, i32 0, i32 0, i32 0), [8 x i8] c"\13\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc31, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@alloc163 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc162, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\A0\06\00\00\0E\00\00\00" }>, align 8
@alloc40 = private unnamed_addr constant <{ [50 x i8] }> <{ [50 x i8] c"there is no such thing as an acquire-release store" }>, align 1
@alloc41 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [50 x i8] }>, <{ [50 x i8] }>* @alloc40, i32 0, i32 0, i32 0), [8 x i8] c"2\00\00\00\00\00\00\00" }>, align 8
@alloc166 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/sync/atomic.rs" }>, align 1
@alloc165 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc166, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\B0\0B\00\00\17\00\00\00" }>, align 8
@alloc45 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"there is no such thing as an acquire store" }>, align 1
@alloc46 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [42 x i8] }>, <{ [42 x i8] }>* @alloc45, i32 0, i32 0, i32 0), [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@alloc167 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc166, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\AF\0B\00\00\18\00\00\00" }>, align 8
@alloc168 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h0170187a0888741bE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i8**, %"core::fmt::Formatter"*)* @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b44b4137ae08b95E" to i8*) }>, align 8
@alloc3 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"** Error: " }>, align 1
@alloc4 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc3, i32 0, i32 0, i32 0), [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@alloc176 = private unnamed_addr constant <{ [87 x i8] }> <{ [87 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/error.rs" }>, align 1
@alloc173 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc176, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0A\00\00\00\22\00\00\00" }>, align 8
@alloc175 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc176, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0B\00\00\00\1C\00\00\00" }>, align 8
@alloc8 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc9 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc8, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc177 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc176, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0C\00\00\00\16\00\00\00" }>, align 8
@alloc178 = private unnamed_addr constant <{ [38 x i8] }> <{ [38 x i8] c"This is a test error with a number: {}" }>, align 1
@alloc54 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc53 to i8*), [8 x i8] zeroinitializer }>, align 8
@alloc56 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"*\00\00\00" }>, align 4

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h825239139c42feafE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
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
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h747ac12ae87d23adE(i8* %_3.i, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h954451ea35475c73E"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = icmp ugt i64 %self.0, %self.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_10 = icmp ugt i64 %self.1, %slice.1
  br i1 %_10, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) #9
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h825239139c42feafE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
  %_20.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_20.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #9
  unreachable

bb5:                                              ; preds = %bb4
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_20.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_20.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb1c5c86386f83361E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
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
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h954451ea35475c73E"(i64 %4, i64 %6, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %7, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h187f5571d7344a3fE"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h635efe4aaa691188E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5288c7b78bf2ee88E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hd6916dd0de9fc495E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: uwtable
define i8* @_ZN3std2io5Write9write_fmt17h96a2c7434784f954E(i64** align 8 %self, %"core::fmt::Arguments"* %fmt) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %_10 = alloca %"core::fmt::Arguments", align 8
  %_6 = alloca i8, align 1
  %_5 = alloca i8*, align 8
  %output = alloca { i64*, i8* }, align 8
  %1 = alloca i8*, align 8
  %2 = bitcast i8** %_5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %3 = bitcast i8** %_5 to {}**
  store {}* null, {}** %3, align 8
  store i8 1, i8* %_18, align 1
  %4 = bitcast { i64*, i8* }* %output to i64***
  store i64** %self, i64*** %4, align 8
  %5 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %output, i32 0, i32 1
  %6 = load i8*, i8** %_5, align 8
  store i8* %6, i8** %5, align 8
  %_7.0 = bitcast { i64*, i8* }* %output to {}*
  %7 = bitcast %"core::fmt::Arguments"* %_10 to i8*
  %8 = bitcast %"core::fmt::Arguments"* %fmt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 48, i1 false)
  %9 = invoke zeroext i1 @_ZN4core3fmt5write17hda8e8eb84b49cbfcE({}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.0 to [3 x i64]*), %"core::fmt::Arguments"* %_10)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr89drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StderrLock$GT$$GT$17h4cdbe5db933c8b3eE"({ i64*, i8* }* %output) #10
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
  %16 = load i8, i8* %_6, align 1, !range !2, !noundef !1
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
  %_13 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %output, i32 0, i32 1
  %_12 = invoke zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h40592274e4207f45E"(i8** align 8 %_13)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb2
  br i1 %_12, label %bb6, label %bb7

bb7:                                              ; preds = %bb5
  %_14 = invoke i8* @_ZN3std2io5error5Error19from_static_message17h0f28e0afe90c9652E(%"std::io::error::SimpleMessage"* align 8 bitcast (<{ i8*, [9 x i8], [7 x i8] }>* @alloc24 to %"std::io::error::SimpleMessage"*))
          to label %bb8 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i8 0, i8* %_18, align 1
  %20 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %output, i32 0, i32 1
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
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
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
  %29 = load i8, i8* %_18, align 1, !range !2, !noundef !1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %bb13, label %bb12

bb12:                                             ; preds = %bb13, %bb14
  %31 = load i8*, i8** %1, align 8
  ret i8* %31

bb13:                                             ; preds = %bb14
  %32 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %output, i32 0, i32 1
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17haa78d0e8fd947bd4E"(i8** %32)
  br label %bb12
}

; Function Attrs: inlinehint uwtable
define void @_ZN3std2io5error14repr_bitpacked11decode_repr17h61b7df7288367aadE(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %0, i8* %ptr) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %_34 = alloca i64*, align 8
  %_19 = alloca i64*, align 8
  %bits = alloca i64, align 8
  store i8 1, i8* %_37, align 1
  %_4 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hbd45e830f0ce0a63E"(i8* %ptr)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
  %2 = load i8, i8* %_37, align 1, !range !2, !noundef !1
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
  %9 = invoke i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h387fccd9a866ca54E"({}* %_4)
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
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [40 x i8] }>* @alloc148 to [0 x i8]*), i64 40, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc150 to %"core::panic::location::Location"*)) #9
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
  %_17 = invoke i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17hbb50ee03007da2ddE(i32 %kind_bits)
          to label %bb6 unwind label %cleanup, !range !3

bb8:                                              ; preds = %bb2
  %_25 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h44be960d8ac8bbb0E"(i8* %ptr)
          to label %bb9 unwind label %cleanup

bb11:                                             ; preds = %bb2
  %_30 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hbd45e830f0ce0a63E"(i8* %ptr)
          to label %bb12 unwind label %cleanup

unreachable:                                      ; preds = %bb3
  unreachable

bb12:                                             ; preds = %bb11
  %13 = bitcast {}* %_30 to i8*
  br label %bb13

bb13:                                             ; preds = %bb12
  %_28 = invoke i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17hadf4d2b5d06771ddE"(i8* %13, i64 1)
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
  %_32 = invoke align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hfb9fd11515401f0aE"(%"std::io::error::Custom"* %17)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %18 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"*
  %19 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"* %18, i32 0, i32 1
  store %"std::io::error::Custom"* %_32, %"std::io::error::Custom"** %19, align 8
  %20 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 3, i8* %20, align 8
  br label %bb17

bb17:                                             ; preds = %bb7, %bb10, %bb16, %bb4
  %21 = load i8, i8* %_37, align 1, !range !2, !noundef !1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb20, label %bb18

bb9:                                              ; preds = %bb8
  %_24 = invoke %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hccd87793698c0592E"(i64* %_25)
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
  %26 = load i64*, i64** %_19, align 8, !nonnull !1, !align !4, !noundef !1
  %kind = invoke i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h2a4cc16dbce76124E"(i8 %_17, i64* align 8 %26)
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
define i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h151b2ed445615eaeE"(i64* align 8 %_1) unnamed_addr #0 {
start:
  call void @_ZN4core4hint21unreachable_unchecked17h69648cd6b9db53aaE() #9
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17hbb50ee03007da2ddE(i32 %0) unnamed_addr #0 {
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
  %2 = load i8, i8* %1, align 1, !range !3, !noundef !1
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
define internal i8* @_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17h2dff74e4c782f619E(%"std::io::error::SimpleMessage"* align 8 %m) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = bitcast %"std::io::error::SimpleMessage"* %m to {}*
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc17749afc2a3ab5fE"({}* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3std2io5error5Error19from_static_message17h0f28e0afe90c9652E(%"std::io::error::SimpleMessage"* align 8 %msg) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_2 = call i8* @_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17h2dff74e4c782f619E(%"std::io::error::SimpleMessage"* align 8 %msg)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3std3sys4unix5locks13pthread_mutex5Mutex6unlock17h7f2af354e648242bE(%"std::sys::unix::locks::pthread_mutex::Mutex"* align 8 %self) unnamed_addr #0 {
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

; Function Attrs: uwtable
define align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17hef5a7c126fba5c78E"(%"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"** align 8 %self) unnamed_addr #1 {
start:
  %0 = load %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"*, %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"** %self, align 8, !nonnull !1, !align !4, !noundef !1
  ret %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h801fde248672e718E(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h855a68e335dc603cE(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hdfcef21c14494668E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8f72ac16898a715dE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17h95563247ab5b73c0E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h89daa0c8eff73a18E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h855a68e335dc603cE(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h89daa0c8eff73a18E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8f72ac16898a715dE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define zeroext i1 @_ZN4core3fmt5Write10write_char17h6a28ef2b658e9b5cE({ i64*, i8* }* align 8 %self, i32 %c) unnamed_addr #1 {
start:
  %_10 = alloca [4 x i8], align 1
  %0 = getelementptr inbounds [4 x i8], [4 x i8]* %_10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 4, i1 false)
  %_7.0 = bitcast [4 x i8]* %_10 to [0 x i8]*
  %1 = call { [0 x i8]*, i64 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h846229c9119ace72E"(i32 %c, [0 x i8]* align 1 %_7.0, i64 4)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hb8669bcfcb6dcba2E"({ i64*, i8* }* align 8 %self, [0 x i8]* align 1 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %2
}

; Function Attrs: uwtable
define zeroext i1 @_ZN4core3fmt5Write9write_fmt17h8b58860b695f49d8E({ i64*, i8* }* align 8 %0, %"core::fmt::Arguments"* %args) unnamed_addr #1 {
start:
  %_6 = alloca %"core::fmt::Arguments", align 8
  %self = alloca { i64*, i8* }*, align 8
  store { i64*, i8* }* %0, { i64*, i8* }** %self, align 8
  %_3.0 = bitcast { i64*, i8* }** %self to {}*
  %1 = bitcast %"core::fmt::Arguments"* %_6 to i8*
  %2 = bitcast %"core::fmt::Arguments"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 48, i1 false)
  %3 = call zeroext i1 @_ZN4core3fmt5write17hda8e8eb84b49cbfcE({}* align 1 %_3.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.1 to [3 x i64]*), %"core::fmt::Arguments"* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %3
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hb94de3a5cabc8abcE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !2, !noundef !1
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
  call void @_ZN4core3fmt9Arguments6new_v117hb94de3a5cabc8abcE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc15 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc53 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc157 to %"core::panic::location::Location"*)) #9
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hcab78408442a2124E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !7, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h5b522da69300ce81E(i64 %_3), !range !8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h8c8a55a035ee1da9E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !7, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h5b522da69300ce81E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !8, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h5cf914e4c3dc7af5E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr101drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StderrLock$GT$$GT$17h0f0652d06e2e3322E"({ i64*, i8* }** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h07a88348c497ad1eE"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1) unnamed_addr #1 {
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
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17ha04735c8f4238eedE"(%"std::io::error::Custom"** %3)
  br label %bb1

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17ha4432bcfb0fccc37E"({ {}*, [3 x i64]* }* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %2 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  %4 = load {}*, {}** %3, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  %6 = load [3 x i64]*, [3 x i64]** %5, align 8, !nonnull !1, !align !4, !noundef !1
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
  %14 = load i64*, i64** %13, align 8, !nonnull !1, !align !4, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17h82bc110c6932106dE(i8* %12, i64* align 8 %14) #10
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
  %24 = load i64*, i64** %23, align 8, !nonnull !1, !align !4, !noundef !1
  call void @_ZN5alloc5alloc8box_free17h82bc110c6932106dE(i8* %22, i64* align 8 %24)
  br label %bb1

abort:                                            ; preds = %bb4
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
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
define void @"_ZN4core3ptr126drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..stdio..StderrRaw$GT$$GT$$GT$17h924c249418d72fa2E"(i64** %_1) unnamed_addr #1 {
start:
  call void @"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4dc802d3f436b07E"(i64** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h747ac12ae87d23adE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h4d8e31a68c59cb1cE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h0170187a0888741bE"(i8** %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hdf52327587ca5a42E"(i8** %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h084ddc42c5cc6661E"(%"std::io::error::Custom"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::Custom"* %_1 to { {}*, [3 x i64]* }*
  call void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17ha4432bcfb0fccc37E"({ {}*, [3 x i64]* }* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StderrLock$GT$17haeca41ccc81c77bcE"(i64** %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr126drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..stdio..StderrRaw$GT$$GT$$GT$17h924c249418d72fa2E"(i64** %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hdf52327587ca5a42E"(i8** %_1) unnamed_addr #1 {
start:
  call void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h509294d3fb45ef47E"(i8** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17ha04735c8f4238eedE"(%"std::io::error::Custom"** %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %2 = bitcast i64** %1 to %"std::io::error::Custom"**
  %3 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %2, align 8
  invoke void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h084ddc42c5cc6661E"(%"std::io::error::Custom"* %3)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %4 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %5 = load i64*, i64** %4, align 8, !nonnull !1, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17h8c319f8debf22b10E(i64* %5) #10
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
  call void @_ZN5alloc5alloc8box_free17h8c319f8debf22b10E(i64* %12)
  br label %bb1

abort:                                            ; preds = %bb4
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
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
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h20054020875be07dE"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %_2 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h11d7c091c36aacfdE"(%"std::io::error::Custom"* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i64* %_2, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h4c6e424fdc1c8de7E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h0119334c4bc2e1a2E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hd6916dd0de9fc495E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h60fe0c5a5c8af549E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha27165a4d01c1975E"(i8* %self.0, i64* align 8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hd6916dd0de9fc495E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h635efe4aaa691188E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfc60be931c959f1fE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h1cea64db3e4ff43eE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h70e49bbc6b595316E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17he54e276368b1dfd6E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hd082f2447a6a2292E"({ i8*, i64* }* align 8 %self)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17hadf4d2b5d06771ddE"(i8* %self, i64 %count) unnamed_addr #0 {
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
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h387fccd9a866ca54E"({}* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to {}**
  store {}* %self, {}** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17haa78d0e8fd947bd4E"(i8** %_1) unnamed_addr #1 {
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
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h0170187a0888741bE"(i8** %_1)
  br label %bb1
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr89drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StderrLock$GT$$GT$17h4cdbe5db933c8b3eE"({ i64*, i8* }* %_1) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17haa78d0e8fd947bd4E"(i8** %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h4d8e31a68c59cb1cE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h11d7c091c36aacfdE"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %ptr, %"std::io::error::Custom"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5288c7b78bf2ee88E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h76a241d987de652bE"(%"std::io::error::SimpleMessage"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::SimpleMessage"**
  store %"std::io::error::SimpleMessage"* %ptr, %"std::io::error::SimpleMessage"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc17749afc2a3ab5fE"({}* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to {}**
  store {}* %ptr, {}** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h0119334c4bc2e1a2E"(i64* %self) unnamed_addr #0 {
start:
  %_3 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1f9e00c68a9f66c1E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"std::io::error::Custom"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5288c7b78bf2ee88E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h44be960d8ac8bbb0E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hbd45e830f0ce0a63E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3 to %"std::io::error::SimpleMessage"*
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h76a241d987de652bE"(%"std::io::error::SimpleMessage"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha27165a4d01c1975E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5ec04eacdd15c9ceE"(i8* %self.0, i64* align 8 %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5288c7b78bf2ee88E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1f9e00c68a9f66c1E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::Custom"*
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5ec04eacdd15c9ceE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hbd45e830f0ce0a63E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to {}*
  ret {}* %_2
}

; Function Attrs: inlinehint uwtable
define %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hccd87793698c0592E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::SimpleMessage"*
  ret %"std::io::error::SimpleMessage"* %_2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfc60be931c959f1fE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h70e49bbc6b595316E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1f9e00c68a9f66c1E"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hd082f2447a6a2292E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !1, !align !4, !noundef !1
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5ec04eacdd15c9ceE"(i8* %_3.0, i64* align 8 %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17hcac3ec745098b7edE"({}* %_1.0, [3 x i64]* align 8 %_1.1) unnamed_addr #1 {
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
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts23from_utf8_unchecked_mut17hf9511cc14111a91eE([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %v.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %v.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core4char7methods15encode_utf8_raw17h8f10cccbaed3ef0cE(i32 %0, [0 x i8]* align 1 %dst.0, i64 %dst.1) unnamed_addr #0 {
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
  %1 = call i64 @_ZN4core4char7methods8len_utf817h4c20d9261029ccceE(i32 %_5)
  store i64 %1, i64* %len, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = load i64, i64* %len, align 8
  %2 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0307a0b4acdd0613E"([0 x i8]* align 1 %dst.0, i64 %dst.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc159 to %"core::panic::location::Location"*))
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
  %9 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h801fde248672e718E(i64* align 8 %len)
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
  %39 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hc5655d2077f2733dE"([0 x i8]* align 1 %dst.0, i64 %dst.1, i64 %38, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc161 to %"core::panic::location::Location"*))
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
  %66 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17h95563247ab5b73c0E(i32* align 4 %code)
  %_80.0 = extractvalue { i8*, i64* } %66, 0
  %_80.1 = extractvalue { i8*, i64* } %66, 1
  br label %bb13

bb13:                                             ; preds = %bb12
  store i64 %dst.1, i64* %_86, align 8
  %67 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h801fde248672e718E(i64* align 8 %_86)
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
  call void @_ZN4core3fmt9Arguments6new_v117hb94de3a5cabc8abcE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_69, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc29 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_73.0, i64 3)
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_69, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc163 to %"core::panic::location::Location"*)) #9
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h846229c9119ace72E"(i32 %self, [0 x i8]* align 1 %dst.0, i64 %dst.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core4char7methods15encode_utf8_raw17h8f10cccbaed3ef0cE(i32 %self, [0 x i8]* align 1 %dst.0, i64 %dst.1)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts23from_utf8_unchecked_mut17hf9511cc14111a91eE([0 x i8]* align 1 %_7.0, i64 %_7.1)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_5.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_5.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4char7methods8len_utf817h4c20d9261029ccceE(i32 %code) unnamed_addr #0 {
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
define internal void @_ZN4core4hint21unreachable_unchecked17h69648cd6b9db53aaE() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core4sync6atomic11AtomicUsize5store17h6c637ac27ba8a91bE(%"core::sync::atomic::AtomicUsize"* align 8 %self, i64 %val, i8 %order) unnamed_addr #0 {
start:
  %_6 = bitcast %"core::sync::atomic::AtomicUsize"* %self to i64*
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core4sync6atomic12atomic_store17h50dd2108a8067861E(i64* %_6, i64 %val, i8 %order)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4sync6atomic12atomic_store17h50dd2108a8067861E(i64* %dst, i64 %val, i8 %0) unnamed_addr #0 {
start:
  %_20 = alloca %"core::fmt::Arguments", align 8
  %_12 = alloca %"core::fmt::Arguments", align 8
  %order = alloca i8, align 1
  store i8 %0, i8* %order, align 1
  %1 = load i8, i8* %order, align 1, !range !10, !noundef !1
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
  call void @_ZN4core3fmt9Arguments6new_v117hb94de3a5cabc8abcE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_12, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc46 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc53 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb10

bb1:                                              ; preds = %start
  call void @_ZN4core3fmt9Arguments6new_v117hb94de3a5cabc8abcE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_20, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc41 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc53 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb11

bb7:                                              ; preds = %start
  store atomic i64 %val, i64* %dst seq_cst, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb12

bb12:                                             ; preds = %bb4, %bb6, %bb8
  ret void

bb11:                                             ; preds = %bb1
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_20, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc165 to %"core::panic::location::Location"*)) #9
  unreachable

bb10:                                             ; preds = %bb9
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc167 to %"core::panic::location::Location"*)) #9
  unreachable

bb6:                                              ; preds = %bb5
  br label %bb12

bb4:                                              ; preds = %bb3
  br label %bb12
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h159b4e7fe4f5f0f5E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h8c8a55a035ee1da9E(i64 %align), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !7, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17hb1868f7846e1a182E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h4fac547e25bc37a5E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !7, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hcab78408442a2124E(i64 %_3), !range !8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h5cf914e4c3dc7af5E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0307a0b4acdd0613E"([0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8453cce6feec8d6bE"([0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hc5655d2077f2733dE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb1c5c86386f83361E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h2a4cc16dbce76124E"(i8 %0, i64* align 8 %f) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8, align 1
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  store i8 1, i8* %_7, align 1
  %2 = load i8, i8* %self, align 1, !range !3, !noundef !1
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
  %5 = call i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h151b2ed445615eaeE"(i64* align 8 %f), !range !5
  store i8 %5, i8* %1, align 1
  br label %bb4

bb3:                                              ; preds = %start
  %x = load i8, i8* %self, align 1, !range !5, !noundef !1
  store i8 %x, i8* %1, align 1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %6 = load i8, i8* %_7, align 1, !range !2, !noundef !1
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
define zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h0e4cd903fe251967E"(i8** align 8 %self) unnamed_addr #0 {
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
  %5 = load i8, i8* %0, align 1, !range !2, !noundef !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h40592274e4207f45E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = call zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h0e4cd903fe251967E"(i8** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_2, true
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13d1b97e19ea26e8E"(i8* %0, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %e = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %3 = bitcast i8** %self to {}**
  %4 = load {}*, {}** %3, align 8
  %5 = icmp eq {}* %4, null
  %_2 = select i1 %5, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
  %6 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  store i8* %6, i8** %e, align 8
  %_7.0 = bitcast i8** %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 bitcast (<{ [43 x i8] }>* @alloc168 to [0 x i8]*), i64 43, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*), %"core::panic::location::Location"* align 8 %1) #9
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h0170187a0888741bE"(i8** %e) #10
          to label %bb5 unwind label %abort

cleanup:                                          ; preds = %bb1
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

abort:                                            ; preds = %bb4
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb5:                                              ; preds = %bb4
  %13 = bitcast { i8*, i32 }* %2 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfd715f8cde00410dE"({ i64*, i8* }** align 8 %self, i32 %c) unnamed_addr #1 {
start:
  %_5 = load { i64*, i8* }*, { i64*, i8* }** %self, align 8, !nonnull !1, !align !4, !noundef !1
  %0 = call zeroext i1 @_ZN4core3fmt5Write10write_char17h6a28ef2b658e9b5cE({ i64*, i8* }* align 8 %_5, i32 %c)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h3a7f67fea34cc699E"({ i64*, i8* }** align 8 %self, %"core::fmt::Arguments"* %args) unnamed_addr #1 {
start:
  %_4 = alloca %"core::fmt::Arguments", align 8
  %_5 = load { i64*, i8* }*, { i64*, i8* }** %self, align 8, !nonnull !1, !align !4, !noundef !1
  %0 = bitcast %"core::fmt::Arguments"* %_4 to i8*
  %1 = bitcast %"core::fmt::Arguments"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 48, i1 false)
  %2 = call zeroext i1 @_ZN4core3fmt5Write9write_fmt17h8b58860b695f49d8E({ i64*, i8* }* align 8 %_5, %"core::fmt::Arguments"* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h18b9a08a5fb7d6b9E"({ i64*, i8* }** align 8 %self, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %_5 = load { i64*, i8* }*, { i64*, i8* }** %self, align 8, !nonnull !1, !align !4, !noundef !1
  %0 = call zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hb8669bcfcb6dcba2E"({ i64*, i8* }* align 8 %_5, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17h56e454f4608a1f93E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hb1868f7846e1a182E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h4fac547e25bc37a5E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #12
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17h82bc110c6932106dE(i8* %0, i64* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17he54e276368b1dfd6E"({ i8*, i64* }* align 8 %ptr)
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
  %18 = load i64, i64* %17, align 8, !range !8, !invariant.load !1
  store i64 %15, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17he54e276368b1dfd6E"({ i8*, i64* }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !1
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !8, !invariant.load !1
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h159b4e7fe4f5f0f5E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !1, !align !4, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h60fe0c5a5c8af549E"(i8* %_17.0, i64* align 8 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h187f5571d7344a3fE"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2360b5db3532a2daE"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
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
define void @_ZN5alloc5alloc8box_free17h8c319f8debf22b10E(i64* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca i64*, align 8
  store i64* %0, i64** %ptr, align 8
  %_5 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h1cea64db3e4ff43eE"(i64** align 8 %ptr)
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
  %_9 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h1cea64db3e4ff43eE"(i64** align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64 8, i64* %1, align 8
  %align = load i64, i64* %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h159b4e7fe4f5f0f5E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  %_17 = load i64*, i64** %ptr, align 8, !nonnull !1, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h4c6e424fdc1c8de7E"(i64* %_17)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h187f5571d7344a3fE"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2360b5db3532a2daE"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
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
define align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h5ee3f96ec62763b2E"(%"std::io::error::Custom"* %raw) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hf82efeefafdbc2e1E"(%"std::io::error::Custom"* %raw)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hf82efeefafdbc2e1E"(%"std::io::error::Custom"* %raw) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca %"std::io::error::Custom"*, align 8
  %_3 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h20054020875be07dE"(%"std::io::error::Custom"* %raw)
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
  %9 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %1, align 8, !nonnull !1, !align !4, !noundef !1
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

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2360b5db3532a2daE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hb1868f7846e1a182E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfc60be931c959f1fE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !7, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h56e454f4608a1f93E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: uwtable
define align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb2699898309e3d2bE"(i64** align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %_5.i = bitcast i64** %self to %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"**
  %_4.i = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17hef5a7c126fba5c78E"(%"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"** align 8 %_5.i)
  %1 = bitcast i64** %0 to %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"**
  store %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %_4.i, %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !align !4, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i64* %2 to %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  ret %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %3
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h509294d3fb45ef47E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>", align 8
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  call void @_ZN3std2io5error14repr_bitpacked11decode_repr17h61b7df7288367aadE(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %_2, i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h07a88348c497ad1eE"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hfb9fd11515401f0aE"(%"std::io::error::Custom"* %p) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h5ee3f96ec62763b2E"(%"std::io::error::Custom"* %p)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hb8669bcfcb6dcba2E"({ i64*, i8* }* align 8 %self, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8*, align 8
  %_3 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = bitcast { i64*, i8* }* %self to i64***
  %_12 = load i64**, i64*** %3, align 8, !nonnull !1, !align !4, !noundef !1
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
  %12 = call i8* @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$9write_all17hbb22fb5976509560E"(i64** align 8 %_12, [0 x i8]* align 1 %_6.0, i64 %_6.1)
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
  %16 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %self, i32 0, i32 1
  invoke void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17haa78d0e8fd947bd4E"(i8** %16)
          to label %bb7 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  %17 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %self, i32 0, i32 1
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
  %30 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %self, i32 0, i32 1
  %31 = load i8*, i8** %_10, align 8
  store i8* %31, i8** %30, align 8
  store i8 1, i8* %2, align 1
  br label %bb8

bb8:                                              ; preds = %bb7, %bb5
  %32 = load i8, i8* %2, align 1, !range !2, !noundef !1
  %33 = trunc i8 %32 to i1
  ret i1 %33
}

; Function Attrs: inlinehint uwtable
define void @"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4dc802d3f436b07E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_15 = alloca i8, align 1
  %_4 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb2699898309e3d2bE"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %_4, i32 0, i32 4
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = load i32, i32* %_3, align 4
  %1 = sub i32 %0, 1
  store i32 %1, i32* %_3, align 4
  %_9 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb2699898309e3d2bE"(i64** align 8 %self)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_8 = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %_9, i32 0, i32 4
  br label %bb4

bb4:                                              ; preds = %bb3
  %_6 = load i32, i32* %_8, align 4
  %2 = icmp eq i32 %_6, 0
  br i1 %2, label %bb5, label %bb10

bb5:                                              ; preds = %bb4
  %_13 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb2699898309e3d2bE"(i64** align 8 %self)
  br label %bb6

bb10:                                             ; preds = %bb4
  br label %bb11

bb11:                                             ; preds = %bb9, %bb10
  ret void

bb6:                                              ; preds = %bb5
  %_12 = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %_13, i32 0, i32 2
  store i8 0, i8* %_15, align 1
  %3 = load i8, i8* %_15, align 1, !range !10, !noundef !1
  call void @_ZN4core4sync6atomic11AtomicUsize5store17h6c637ac27ba8a91bE(%"core::sync::atomic::AtomicUsize"* align 8 %_12, i64 0, i8 %3)
  br label %bb7

bb7:                                              ; preds = %bb6
  %_18 = call align 8 %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* @"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb2699898309e3d2bE"(i64** align 8 %self)
  br label %bb8

bb8:                                              ; preds = %bb7
  %_17 = bitcast %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::stdio::StderrRaw>>"* %_18 to %"std::sys::unix::locks::pthread_mutex::Mutex"*
  call void @_ZN3std3sys4unix5locks13pthread_mutex5Mutex6unlock17h7f2af354e648242bE(%"std::sys::unix::locks::pthread_mutex::Mutex"* align 8 %_17)
  br label %bb9

bb9:                                              ; preds = %bb8
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8453cce6feec8d6bE"([0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %slice.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %slice.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: uwtable
define void @error([0 x i8]* align 1 %fmt.0, i64 %fmt.1, %"core::fmt::Arguments"* %args) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_23 = alloca %"core::fmt::Arguments", align 8
  %_19 = alloca %"core::fmt::Arguments", align 8
  %_9 = alloca %"core::fmt::Arguments", align 8
  %handle = alloca i64*, align 8
  %stderr = alloca i64*, align 8
  %1 = call align 8 i64* @_ZN3std2io5stdio6stderr17h08dad0c978786954E()
  store i64* %1, i64** %stderr, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call align 8 i64* @_ZN3std2io5stdio6Stderr4lock17ha47dbb63e31dd24fE(i64** align 8 %stderr)
  store i64* %2, i64** %handle, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  invoke void @_ZN4core3fmt9Arguments6new_v117hb94de3a5cabc8abcE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_9, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc4 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc53 to [0 x { i8*, i64* }]*), i64 0)
          to label %bb3 unwind label %cleanup

bb11:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StderrLock$GT$17haeca41ccc81c77bcE"(i64** %handle) #10
          to label %bb12 unwind label %abort

cleanup:                                          ; preds = %bb10, %bb9, %bb8, %bb7, %bb6, %bb5, %bb4, %bb3, %bb2
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb11

bb3:                                              ; preds = %bb2
  %_7 = invoke i8* @_ZN3std2io5Write9write_fmt17h96a2c7434784f954E(i64** align 8 %handle, %"core::fmt::Arguments"* %_9)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13d1b97e19ea26e8E"(i8* %_7, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc173 to %"core::panic::location::Location"*))
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %8 = bitcast %"core::fmt::Arguments"* %_19 to i8*
  %9 = bitcast %"core::fmt::Arguments"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 48, i1 false)
  %_17 = invoke i8* @_ZN3std2io5Write9write_fmt17h96a2c7434784f954E(i64** align 8 %handle, %"core::fmt::Arguments"* %_19)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13d1b97e19ea26e8E"(i8* %_17, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc175 to %"core::panic::location::Location"*))
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @_ZN4core3fmt9Arguments6new_v117hb94de3a5cabc8abcE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_23, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc9 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc53 to [0 x { i8*, i64* }]*), i64 0)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_21 = invoke i8* @_ZN3std2io5Write9write_fmt17h96a2c7434784f954E(i64** align 8 %handle, %"core::fmt::Arguments"* %_23)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13d1b97e19ea26e8E"(i8* %_21, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc177 to %"core::panic::location::Location"*))
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  invoke void @_ZN3std7process4exit17h2ee3ae188f456f9bE(i32 1) #9
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb10
  unreachable

abort:                                            ; preds = %bb11
  %10 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #11
  unreachable

bb12:                                             ; preds = %bb11
  %11 = bitcast { i8*, i32 }* %0 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_11 = alloca [1 x { i8*, i64* }], align 8
  %_4 = alloca %"core::fmt::Arguments", align 8
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hdfcef21c14494668E(i32* align 4 bitcast (<{ [4 x i8] }>* @alloc56 to i32*))
  %_12.0 = extractvalue { i8*, i64* } %0, 0
  %_12.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_11, i64 0, i64 0
  %2 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %1, i32 0, i32 0
  store i8* %_12.0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %1, i32 0, i32 1
  store i64* %_12.1, i64** %3, align 8
  %_8.0 = bitcast [1 x { i8*, i64* }]* %_11 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hb94de3a5cabc8abcE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_4, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc54 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 %_8.0, i64 1)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @error([0 x i8]* align 1 bitcast (<{ [38 x i8] }>* @alloc178 to [0 x i8]*), i64 38, %"core::fmt::Arguments"* %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt5write17hda8e8eb84b49cbfcE({}* align 1, [3 x i64]* align 8, %"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare i32 @pthread_mutex_unlock(%"libc::unix::bsd::apple::pthread_mutex_t"*) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b44b4137ae08b95E"(i8** align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #7

; Function Attrs: uwtable
declare i8* @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$9write_all17hbb22fb5976509560E"(i64** align 8, [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare align 8 i64* @_ZN3std2io5stdio6stderr17h08dad0c978786954E() unnamed_addr #1

; Function Attrs: uwtable
declare align 8 i64* @_ZN3std2io5stdio6Stderr4lock17ha47dbb63e31dd24fE(i64** align 8) unnamed_addr #1

; Function Attrs: noreturn uwtable
declare void @_ZN3std7process4exit17h2ee3ae188f456f9bE(i32) unnamed_addr #8

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #8 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #9 = { noreturn }
attributes #10 = { noinline }
attributes #11 = { noinline noreturn nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i8 0, i8 2}
!3 = !{i8 0, i8 42}
!4 = !{i64 8}
!5 = !{i8 0, i8 41}
!6 = !{i64 1}
!7 = !{i64 1, i64 -9223372036854775807}
!8 = !{i64 1, i64 0}
!9 = !{i8 0, i8 4}
!10 = !{i8 0, i8 5}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/error.rs.bc", hash: (631231805, 1476813270, 1700367526, 602937594, 588534322))
^1 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h825239139c42feafE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^12))))) ; guid = 15921380440080980
^2 = gv: (name: "_ZN3std2io5error5Error19from_static_message17h0f28e0afe90c9652E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^10))))) ; guid = 45782687103345214
^3 = gv: (name: "_ZN4core4char7methods8len_utf817h4c20d9261029ccceE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 19))) ; guid = 141223119066228038
^4 = gv: (name: "alloc167", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^137)))) ; guid = 357721529866994696
^5 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 498294102331522956
^6 = gv: (name: "_ZN4core3fmt5Write10write_char17h6a28ef2b658e9b5cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^144), (callee: ^154))))) ; guid = 606884497262790054
^7 = gv: (name: "alloc159", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^75)))) ; guid = 610606527141976647
^8 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^9 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^10 = gv: (name: "_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17h2dff74e4c782f619E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^136))))) ; guid = 1036199604552703039
^11 = gv: (name: "alloc177", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^146)))) ; guid = 1309631284674198713
^12 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h747ac12ae87d23adE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^14))))) ; guid = 1329448866796375221
^13 = gv: (name: "_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b44b4137ae08b95E") ; guid = 1554767068307508203
^14 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h4d8e31a68c59cb1cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1570450705450718493
^15 = gv: (name: "_ZN3std2io5error14repr_bitpacked14kind_from_prim17hbb50ee03007da2ddE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 213))) ; guid = 1706009741564006628
^16 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h387fccd9a866ca54E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 1837061825291783414
^17 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h5cf914e4c3dc7af5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 2021753923486835749
^18 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2280728758883936932
^19 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^67)))) ; guid = 2330027070442864856
^20 = gv: (name: "_ZN5alloc5alloc8box_free17h8c319f8debf22b10E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^149), (callee: ^128), (callee: ^34), (callee: ^23), (callee: ^101)), refs: (^121)))) ; guid = 2441662256087987540
^21 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h11d7c091c36aacfdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 2474912156637833747
^22 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h5288c7b78bf2ee88E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 2517956673603646378
^23 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h187f5571d7344a3fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^41), (callee: ^22))))) ; guid = 2520093632103428695
^24 = gv: (name: "alloc150", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^25)))) ; guid = 2524881722356402986
^25 = gv: (name: "alloc149", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2605064063727914474
^26 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5ec04eacdd15c9ceE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 2911392081966294644
^27 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hd082f2447a6a2292E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^26))))) ; guid = 2994620467951417470
^28 = gv: (name: "_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h5ee3f96ec62763b2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^80))))) ; guid = 2997179660795496568
^29 = gv: (name: "alloc157", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^97)))) ; guid = 3170123118489207274
^30 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfc60be931c959f1fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 3336850628506113465
^31 = gv: (name: "_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8453cce6feec8d6bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 3401462609313060151
^32 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h18b9a08a5fb7d6b9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^154))))) ; guid = 3804962298197959477
^33 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1f9e00c68a9f66c1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3913602297881289657
^34 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h4c6e424fdc1c8de7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^83), (callee: ^78))))) ; guid = 3920051726841314408
^35 = gv: (name: "_ZN3std2io5Write9write_fmt17h96a2c7434784f954E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 73, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^79), (callee: ^38), (callee: ^52), (callee: ^2), (callee: ^153), (callee: ^115)), refs: (^121, ^81, ^5)))) ; guid = 3936559182232896054
^36 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h855a68e335dc603cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 3978783655560798453
^37 = gv: (name: "_ZN3std7process4exit17h2ee3ae188f456f9bE") ; guid = 4021329395204393920
^38 = gv: (name: "_ZN4core3ptr89drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StderrLock$GT$$GT$17h4cdbe5db933c8b3eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^115))))) ; guid = 4048014274995677118
^39 = gv: (name: "alloc175", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^146)))) ; guid = 4114540148521633562
^40 = gv: (name: "alloc54", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^42)))) ; guid = 4126574183472487734
^41 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h635efe4aaa691188E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^30))))) ; guid = 4212544060697790533
^42 = gv: (name: "alloc53", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4220965997300283600
^43 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^118)))) ; guid = 4226158224919686315
^44 = gv: (name: "alloc165", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^137)))) ; guid = 4282731137305942400
^45 = gv: (name: "_ZN4core3ptr126drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..stdio..StderrRaw$GT$$GT$$GT$17h924c249418d72fa2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^74))))) ; guid = 4310570808273404001
^46 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h70e49bbc6b595316E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^33))))) ; guid = 4579117095710011963
^47 = gv: (name: "_ZN3std2io5stdio6stderr17h08dad0c978786954E") ; guid = 4580043322057719956
^48 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^49 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hcab78408442a2124E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^93))))) ; guid = 4703970278399690674
^50 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h69648cd6b9db53aaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 4719366589821421646
^51 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^57)))) ; guid = 4729392644399298049
^52 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h40592274e4207f45E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^86))))) ; guid = 4754738603452300254
^53 = gv: (name: "_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hdf52327587ca5a42E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^106))))) ; guid = 5171534387257652504
^54 = gv: (name: "alloc148", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5172998744510274457
^55 = gv: (name: "_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17ha4432bcfb0fccc37E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^108), (callee: ^153)), refs: (^121)))) ; guid = 5256993979121159537
^56 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h4fac547e25bc37a5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^49), (callee: ^17))))) ; guid = 5426260517451345635
^57 = gv: (name: "alloc3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5755901750582564442
^58 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0307a0b4acdd0613E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^31))))) ; guid = 5901284648138555633
^59 = gv: (name: "_ZN4core3ptr101drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StderrLock$GT$$GT$17h0f0652d06e2e3322E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 6041478934958047233
^60 = gv: (name: "_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h084ddc42c5cc6661E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^55))))) ; guid = 6092868240588961919
^61 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h0170187a0888741bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^53))))) ; guid = 6112386350727268302
^62 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h8f72ac16898a715dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 6195949825120519506
^63 = gv: (name: "_ZN4core3fmt10ArgumentV113new_upper_hex17h95563247ab5b73c0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^66)), refs: (^77)))) ; guid = 6251473560151481014
^64 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h3a7f67fea34cc699E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^130))))) ; guid = 6366124047236198259
^65 = gv: (name: "alloc163", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^75)))) ; guid = 6474067660418782677
^66 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h89daa0c8eff73a18E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 6486690034286869998
^67 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6574788712094419744
^68 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^69 = gv: (name: "alloc30", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7102617048764643739
^70 = gv: (name: "_ZN4core5alloc6layout6Layout4size17hb1868f7846e1a182E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 7723652198134500914
^71 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hdfcef21c14494668E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^62)), refs: (^110)))) ; guid = 7861014853083288531
^72 = gv: (name: "_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb2699898309e3d2bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^119))))) ; guid = 7976108839639164530
^73 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^61, ^13)))) ; guid = 8260555758219771363
^74 = gv: (name: "_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4dc802d3f436b07E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 30, calls: ((callee: ^72), (callee: ^143), (callee: ^100))))) ; guid = 8288956826259421453
^75 = gv: (name: "alloc162", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8292721943031860909
^76 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^139)))) ; guid = 8330150197845601653
^77 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E") ; guid = 8401561645110503840
^78 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hd6916dd0de9fc495E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 8740351831708747051
^79 = gv: (name: "_ZN4core3fmt5write17hda8e8eb84b49cbfcE") ; guid = 8840068324628476335
^80 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hf82efeefafdbc2e1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^127)), refs: (^121)))) ; guid = 9036500644752516225
^81 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6, ^130, ^38, ^154)))) ; guid = 9100811876288736018
^82 = gv: (name: "error", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^47), (callee: ^111), (callee: ^126), (callee: ^85), (callee: ^35), (callee: ^142), (callee: ^37), (callee: ^153)), refs: (^121, ^42, ^51, ^114, ^39, ^76, ^11)))) ; guid = 9168935602946596555
^83 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h0119334c4bc2e1a2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^33), (callee: ^22))))) ; guid = 9428656729518020348
^84 = gv: (name: "alloc161", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^75)))) ; guid = 9525741719233121148
^85 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StderrLock$GT$17haeca41ccc81c77bcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^45))))) ; guid = 10150428632804030156
^86 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h0e4cd903fe251967E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 10219349085771177220
^87 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^88 = gv: (name: "_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$9write_all17hbb22fb5976509560E") ; guid = 10571095619077475703
^89 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h954451ea35475c73E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^134), (callee: ^1), (callee: ^150))))) ; guid = 10669218147031710541
^90 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10820692062840262601
^91 = gv: (name: "_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17hcac3ec745098b7edE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 10945988800680586435
^92 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^93 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h5b522da69300ce81E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 11128751057562094927
^94 = gv: (name: "alloc168", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11137921112914697304
^95 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h44be960d8ac8bbb0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^103), (callee: ^151))))) ; guid = 11295135537065443279
^96 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hccd87793698c0592E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 11417646796551022014
^97 = gv: (name: "alloc156", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11782766981489827496
^98 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h801fde248672e718E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^36)), refs: (^9)))) ; guid = 11957595946353730692
^99 = gv: (name: "_ZN4core3str8converts23from_utf8_unchecked_mut17hf9511cc14111a91eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 12058775125017379416
^100 = gv: (name: "_ZN3std3sys4unix5locks13pthread_mutex5Mutex6unlock17h7f2af354e648242bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^141))))) ; guid = 12162566320699943416
^101 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2360b5db3532a2daE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^70), (callee: ^30), (callee: ^122))))) ; guid = 12261790322399587887
^102 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^116)))) ; guid = 12506271051015387081
^103 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hbd45e830f0ce0a63E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 12570234623057764925
^104 = gv: (name: "alloc56", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12647451546351271540
^105 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfd715f8cde00410dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^6))))) ; guid = 12652918549104573626
^106 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h509294d3fb45ef47E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^125), (callee: ^124))))) ; guid = 12670415781348090555
^107 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha27165a4d01c1975E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^26), (callee: ^22))))) ; guid = 12720010568040179566
^108 = gv: (name: "_ZN5alloc5alloc8box_free17h82bc110c6932106dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^112), (callee: ^128), (callee: ^148), (callee: ^23), (callee: ^101)), refs: (^121)))) ; guid = 12723611440621500648
^109 = gv: (name: "_ZN4core4sync6atomic12atomic_store17h50dd2108a8067861E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, calls: ((callee: ^126), (callee: ^131)), refs: (^42, ^102, ^43, ^44, ^4)))) ; guid = 12781228699108765609
^110 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^111 = gv: (name: "_ZN3std2io5stdio6Stderr4lock17ha47dbb63e31dd24fE") ; guid = 13311832374565760935
^112 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17he54e276368b1dfd6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^27))))) ; guid = 13514704777224221754
^113 = gv: (name: "alloc178", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13636309114499872275
^114 = gv: (name: "alloc173", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^146)))) ; guid = 14112726243425143690
^115 = gv: (name: "_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17haa78d0e8fd947bd4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^61))))) ; guid = 14369024868615309374
^116 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14382146203980231744
^117 = gv: (name: "_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17ha04735c8f4238eedE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^60), (callee: ^20), (callee: ^153)), refs: (^121)))) ; guid = 14521784309551165442
^118 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14635232598219617306
^119 = gv: (name: "_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17hef5a7c126fba5c78E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 14762061216023200071
^120 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^90, ^69, ^123)))) ; guid = 14798877415205336586
^121 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^122 = gv: (name: "_ZN5alloc5alloc7dealloc17h56e454f4608a1f93E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^70), (callee: ^56), (callee: ^48))))) ; guid = 14961334206484294379
^123 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14985392592827923012
^124 = gv: (name: "_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h07a88348c497ad1eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^117))))) ; guid = 15269748824952313361
^125 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr17h61b7df7288367aadE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 86, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^103), (callee: ^16), (callee: ^87), (callee: ^15), (callee: ^95), (callee: ^140), (callee: ^155), (callee: ^96), (callee: ^132)), refs: (^121, ^24, ^54)))) ; guid = 15364238590454216020
^126 = gv: (name: "_ZN4core3fmt9Arguments6new_v117hb94de3a5cabc8abcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^126), (callee: ^131)), refs: (^42, ^19, ^29)))) ; guid = 15455485505242115869
^127 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h20054020875be07dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^21))))) ; guid = 15680433159645569427
^128 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h159b4e7fe4f5f0f5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^133))))) ; guid = 15817878245597372236
^129 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^71), (callee: ^126), (callee: ^82)), refs: (^104, ^40, ^113)))) ; guid = 15822663052811949562
^130 = gv: (name: "_ZN4core3fmt5Write9write_fmt17h8b58860b695f49d8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^79)), refs: (^135)))) ; guid = 16031394909310963394
^131 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^132 = gv: (name: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h2a4cc16dbce76124E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^147))))) ; guid = 16073353301414178101
^133 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h8c8a55a035ee1da9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 16181490439189255242
^134 = gv: (name: "_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E") ; guid = 16237673211549674151
^135 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^59, ^105, ^64, ^32)))) ; guid = 16306370184898744768
^136 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc17749afc2a3ab5fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 16319356906726098714
^137 = gv: (name: "alloc166", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16696175945566599915
^138 = gv: (name: "_ZN4core4char7methods15encode_utf8_raw17h8f10cccbaed3ef0cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 216, calls: ((callee: ^3), (callee: ^58), (callee: ^98), (callee: ^152), (callee: ^63), (callee: ^126), (callee: ^131)), refs: (^7, ^84, ^120, ^65)))) ; guid = 16758096745255277027
^139 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16777245367997969179
^140 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17hadf4d2b5d06771ddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 16956604196469393955
^141 = gv: (name: "pthread_mutex_unlock") ; guid = 16969792673662370541
^142 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13d1b97e19ea26e8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^92), (callee: ^61), (callee: ^153)), refs: (^121, ^73, ^94)))) ; guid = 17161820131608688600
^143 = gv: (name: "_ZN4core4sync6atomic11AtomicUsize5store17h6c637ac27ba8a91bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^109))))) ; guid = 17198495876636456493
^144 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h846229c9119ace72E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^138), (callee: ^99))))) ; guid = 17275562345276130885
^145 = gv: (name: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb1c5c86386f83361E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^89))))) ; guid = 17398854445582702351
^146 = gv: (name: "alloc176", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17685203045700275901
^147 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h151b2ed445615eaeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^50))))) ; guid = 17746494994381440505
^148 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h60fe0c5a5c8af549E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^107), (callee: ^78))))) ; guid = 17929297138777736328
^149 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h1cea64db3e4ff43eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^46))))) ; guid = 17942741654055191732
^150 = gv: (name: "_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E") ; guid = 17978184489729322003
^151 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h76a241d987de652bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 18225908904694545335
^152 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hc5655d2077f2733dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^145))))) ; guid = 18368379802037029949
^153 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^154 = gv: (name: "_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hb8669bcfcb6dcba2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^88), (callee: ^115)), refs: (^121)))) ; guid = 18405007759837601059
^155 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hfb9fd11515401f0aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^28))))) ; guid = 18437718742662162667
^156 = blockcount: 447
