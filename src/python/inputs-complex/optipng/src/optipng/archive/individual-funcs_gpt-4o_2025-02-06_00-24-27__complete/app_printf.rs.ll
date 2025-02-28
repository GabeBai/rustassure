; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_printf.rs.bc'
source_filename = "app_printf.1a1700d9-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked_mut::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<std::fs::File, std::io::error::Error>" = type { i32, [3 x i32] }
%"std::fs::OpenOptions" = type { %"std::sys::unix::fs::OpenOptions" }
%"std::sys::unix::fs::OpenOptions" = type { i32, i16, i8, i8, i8, i8, i8, i8 }
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
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::result::Result<std::fs::File, std::io::error::Error>::Ok" = type { [1 x i32], i32 }
%"core::result::Result<std::fs::File, std::io::error::Error>::Err" = type { [1 x i64], i8* }
%"core::ffi::c_str::CStr" = type { [0 x i8] }
%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>" = type { i64, [2 x i64] }
%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>::Ok" = type { [1 x i64], { %"core::ffi::c_str::CStr"*, i64 } }
%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<&str, core::str::error::Utf8Error>" = type { i64, [2 x i64] }
%"core::str::error::Utf8Error" = type { i64, { i8, i8 }, [6 x i8] }
%"core::result::Result<&str, core::str::error::Utf8Error>::Ok" = type { [1 x i64], { [0 x i8]*, i64 } }
%"core::result::Result<&str, core::str::error::Utf8Error>::Err" = type { [1 x i64], %"core::str::error::Utf8Error" }
%"alloc::alloc::Global" = type {}
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc56 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"#" }>, align 1
@alloc154 = private unnamed_addr constant <{ [73 x i8] }> <{ [73 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/io/mod.rs" }>, align 1
@alloc155 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [73 x i8] }>, <{ [73 x i8] }>* @alloc154, i32 0, i32 0, i32 0), [16 x i8] c"I\00\00\00\00\00\00\00\03\06\00\00!\00\00\00" }>, align 8
@alloc51 = private unnamed_addr constant <{ [28 x i8] }> <{ [28 x i8] c"failed to write whole buffer" }>, align 1
@alloc54 = private unnamed_addr constant <{ i8*, [9 x i8], [7 x i8] }> <{ i8* getelementptr inbounds (<{ [28 x i8] }>, <{ [28 x i8] }>* @alloc51, i32 0, i32 0, i32 0), [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void ({ i32*, i8* }*)* @"_ZN4core3ptr76drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17hefad052bcce69b60E" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i32*, i8* }*, [0 x i8]*, i64)* @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h7b271491e933e825E" to i8*), i8* bitcast (i1 ({ i32*, i8* }*, i32)* @_ZN4core3fmt5Write10write_char17hfb3b251316e04a32E to i8*), i8* bitcast (i1 ({ i32*, i8* }*, %"core::fmt::Arguments"*)* @_ZN4core3fmt5Write9write_fmt17h42f5e0206ee92856E to i8*) }>, align 8
@alloc44 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"formatter error" }>, align 1
@alloc47 = private unnamed_addr constant <{ i8*, [9 x i8], [7 x i8] }> <{ i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc44, i32 0, i32 0, i32 0), [9 x i8] c"\0F\00\00\00\00\00\00\00(", [7 x i8] undef }>, align 8
@alloc164 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"internal error: entered unreachable code" }>, align 1
@alloc162 = private unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/io/error/repr_bitpacked.rs" }>, align 1
@alloc163 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc162, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\18\01\00\00\0D\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void ({ i32*, i8* }**)* @"_ZN4core3ptr88drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17h5276a8dd061061a1E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i32*, i8* }**, [0 x i8]*, i64)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h1f7e603327a3635eE" to i8*), i8* bitcast (i1 ({ i32*, i8* }**, i32)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c6a91e5fa829c01E" to i8*), i8* bitcast (i1 ({ i32*, i8* }**, %"core::fmt::Arguments"*)* @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h20997298d531c714E" to i8*) }>, align 8
@alloc37 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc38 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc37, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc66 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc170 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc171 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc176 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/char/methods.rs" }>, align 1
@alloc173 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc176, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\8D\06\00\00\16\00\00\00" }>, align 8
@alloc175 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc176, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\A7\06\00\00\0A\00\00\00" }>, align 8
@alloc25 = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"encode_utf8: need " }>, align 1
@alloc27 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c" bytes to encode U+" }>, align 1
@alloc28 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c", but the buffer has " }>, align 1
@alloc26 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [18 x i8] }>, <{ [18 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [8 x i8] c"\12\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [19 x i8] }>, <{ [19 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [8 x i8] c"\13\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@alloc177 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc176, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\A0\06\00\00\0E\00\00\00" }>, align 8
@alloc178 = private unnamed_addr constant <{ [77 x i8] }> <{ [77 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/slice/mod.rs" }>, align 1
@alloc179 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc178, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00\BC\08\00\00\1E\00\00\00" }>, align 8
@alloc184 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h206c7047db625ec7E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i8**, %"core::fmt::Formatter"*)* @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b44b4137ae08b95E" to i8*) }>, align 8
@vtable.3 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ({ i64, i64 }*)* @"_ZN4core3ptr60drop_in_place$LT$core..ffi..c_str..FromBytesWithNulError$GT$17he077ef2188f912e8E" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i64, i64 }*, %"core::fmt::Formatter"*)* @"_ZN76_$LT$core..ffi..c_str..FromBytesWithNulError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha415981aae704dc3E" to i8*) }>, align 8
@_ZN10app_printf8CON_FILE17hd0c0b5f64d4d128fE = internal global <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 4
@_ZN10app_printf8LOG_FILE17h26aa95a52def706bE = internal global <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 4
@_ZN10app_printf13START_OF_LINE17h7688011a3ea639f5E = internal global <{ [1 x i8] }> zeroinitializer, align 1
@alloc20 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc19 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc66 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc20, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc189 = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"console_output.txt" }>, align 1
@alloc195 = private unnamed_addr constant <{ [92 x i8] }> <{ [92 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_printf.rs" }>, align 1
@alloc191 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [92 x i8] }>, <{ [92 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"\\\00\00\00\00\00\00\00\1F\00\00\00<\00\00\00" }>, align 8
@alloc192 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"log_output.txt" }>, align 1
@alloc194 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [92 x i8] }>, <{ [92 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"\\\00\00\00\00\00\00\00 \00\00\008\00\00\00" }>, align 8
@alloc4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"Hello, {}!\0A\00" }>, align 1
@alloc196 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [92 x i8] }>, <{ [92 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"\\\00\00\00\00\00\00\00#\00\00\00<\00\00\00" }>, align 8
@alloc63 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"world" }>, align 1
@alloc64 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [5 x i8] }>, <{ [5 x i8] }>* @alloc63, i32 0, i32 0, i32 0), [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h83124e64370848cbE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %_5 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hbb929624e324d5deE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_5, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h09d07e1d0398e94aE(i8* %2, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h6f75b4a1f2732d02E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
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
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h0623d136129415f0E(i8* %_3.i, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h01cf060d5d62a3dbE"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = icmp ugt i64 %self.0, %self.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_10 = icmp ugt i64 %self.1, %slice.1
  br i1 %_10, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) #8
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h6f75b4a1f2732d02E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
  %_20.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_20.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #8
  unreachable

bb5:                                              ; preds = %bb4
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_20.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_20.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6a709caf37e5a708E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
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
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h01cf060d5d62a3dbE"(i64 %4, i64 %6, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %7, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17he71168dfad17af8fE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %_5 = call i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hc9f6ae962b951f24E"([0 x i8]* %slice.0, i64 %slice.1)
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
  %6 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h83124e64370848cbE"(i64 %3, i64 %5, [0 x i8]* %slice.0, i64 %slice.1)
  %7 = extractvalue { [0 x i8]*, i64 } %6, 0
  %8 = extractvalue { [0 x i8]*, i64 } %6, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  ret { [0 x i8]*, i64 } %10
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h1f16265975d640ffE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ugt i64 %self, %slice.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17he71168dfad17af8fE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  %_11.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_11.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb3

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #8
  unreachable

bb3:                                              ; preds = %bb2
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_11.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_11.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hec6ffa8d002ac2d9E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h42b10e885587883dE"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0d1b1308892cd8a3E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hd929d1cedd96eab3E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: uwtable
define void @_ZN3std2fs11OpenOptions4open17h88cee8dac2af0e3eE(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %0, %"std::fs::OpenOptions"* align 4 %self, %"std::path::Path"* align 1 %1, i64 %2) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %path = alloca { %"std::path::Path"*, i64 }, align 8
  %4 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %path, i32 0, i32 0
  store %"std::path::Path"* %1, %"std::path::Path"** %4, align 8
  %5 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %path, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = invoke { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h67027b11c872b5c5E"({ %"std::path::Path"*, i64 }* align 8 %path)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1, %start
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { %"std::path::Path"*, i64 } %6, 0
  %_5.1 = extractvalue { %"std::path::Path"*, i64 } %6, 1
  invoke void @_ZN3std2fs11OpenOptions5_open17h0e3ad3dc10bbdff0E(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %0, %"std::fs::OpenOptions"* align 4 %self, %"std::path::Path"* align 1 %_5.0, i64 %_5.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  br label %bb3

bb5:                                              ; preds = %bb4
  %12 = bitcast { i8*, i32 }* %3 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @_ZN3std2fs4File6create17hd3e64c992787e6efE(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %0, [0 x i8]* align 1 %1, i64 %2) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %_9 = alloca %"std::fs::OpenOptions", align 4
  %path = alloca { [0 x i8]*, i64 }, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %path, i32 0, i32 0
  store [0 x i8]* %1, [0 x i8]** %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %path, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  invoke void @_ZN3std2fs11OpenOptions3new17hbda300ef53f08e65E(%"std::fs::OpenOptions"* sret(%"std::fs::OpenOptions") %_9)
          to label %bb1 unwind label %cleanup

bb8:                                              ; preds = %cleanup
  br label %bb9

cleanup:                                          ; preds = %bb5, %bb4, %bb3, %bb2, %bb1, %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb8

bb1:                                              ; preds = %start
  %_7 = invoke align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions5write17h9e0c85648c320637E(%"std::fs::OpenOptions"* align 4 %_9, i1 zeroext true)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_5 = invoke align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions6create17h4db1e62c676d6014E(%"std::fs::OpenOptions"* align 4 %_7, i1 zeroext true)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_3 = invoke align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions8truncate17h706fc3bcfe62838dE(%"std::fs::OpenOptions"* align 4 %_5, i1 zeroext true)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %11 = invoke { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17hdcadebc575a702beE"({ [0 x i8]*, i64 }* align 8 %path)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %_10.0 = extractvalue { %"std::path::Path"*, i64 } %11, 0
  %_10.1 = extractvalue { %"std::path::Path"*, i64 } %11, 1
  invoke void @_ZN3std2fs11OpenOptions4open17h88cee8dac2af0e3eE(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %0, %"std::fs::OpenOptions"* align 4 %_3, %"std::path::Path"* align 1 %_10.0, i64 %_10.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  br label %bb7

bb9:                                              ; preds = %bb8
  %12 = bitcast { i8*, i32 }* %3 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17

bb7:                                              ; preds = %bb6
  ret void
}

; Function Attrs: uwtable
define i8* @_ZN3std2io5Write9write_all17h8264eb175e3e6a00E(i32* align 4 %self, [0 x i8]* align 1 %0, i64 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %_5.0 = load [0 x i8]*, [0 x i8]** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_5.1 = load i64, i64* %7, align 8
  %_4 = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17hb167d4d08323098dE"([0 x i8]* align 1 %_5.0, i64 %_5.1)
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
  %_8.0 = load [0 x i8]*, [0 x i8]** %10, align 8, !nonnull !1, !align !2, !noundef !1
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_8.1 = load i64, i64* %11, align 8
  call void @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17hd94b558b9f504037E"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>") %_6, i32* align 4 %self, [0 x i8]* align 1 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %12 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to i64*
  %_9 = load i64, i64* %12, align 8, !range !3, !noundef !1
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
  %_31 = load i8**, i8*** %e, align 8, !nonnull !1, !align !4, !noundef !1
  %19 = invoke i8 @_ZN3std2io5error5Error4kind17h83ae50bf53d71387E(i8** align 8 %_31)
          to label %bb12 unwind label %cleanup, !range !5

bb26:                                             ; preds = %cleanup
  %20 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to i64*
  %_34 = load i64, i64* %20, align 8, !range !3, !noundef !1
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
  %_22 = invoke zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h93e3d4c72d434fc7E"(i8* align 1 %_24, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc56, i32 0, i32 0, i32 0))
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
  %_33 = load i64, i64* %29, align 8, !range !3, !noundef !1
  %30 = icmp eq i64 %_33, 1
  br i1 %30, label %bb21, label %bb20

bb17:                                             ; preds = %bb8, %bb15
  br label %bb18

bb7:                                              ; preds = %bb5
  %_10 = invoke i8* @_ZN3std2io5error5Error19from_static_message17h9a4c47b15b2c7fe2E(%"std::io::error::SimpleMessage"* align 8 bitcast (<{ i8*, [9 x i8], [7 x i8] }>* @alloc54 to %"std::io::error::SimpleMessage"*))
          to label %bb8 unwind label %cleanup

bb9:                                              ; preds = %bb5
  %31 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %32 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %31, i32 0, i32 1
  %n = load i64, i64* %32, align 8
  %33 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  %_17.0 = load [0 x i8]*, [0 x i8]** %33, align 8, !nonnull !1, !align !2, !noundef !1
  %34 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_17.1 = load i64, i64* %34, align 8
  store i64 %n, i64* %_18, align 8
  %35 = load i64, i64* %_18, align 8
  %36 = invoke { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h92109e9951a70df4E"([0 x i8]* align 1 %_17.0, i64 %_17.1, i64 %35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc155 to %"core::panic::location::Location"*))
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
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h206c7047db625ec7E"(i8** %40)
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
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h206c7047db625ec7E"(i8** %48) #9
          to label %bb19 unwind label %abort

abort:                                            ; preds = %bb25
  %49 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #10
  unreachable

bb18:                                             ; preds = %bb17, %bb16
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

; Function Attrs: uwtable
define i8* @_ZN3std2io5Write9write_fmt17hea42df662b3e1a19E(i32* align 4 %self, %"core::fmt::Arguments"* %fmt) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  invoke void @"_ZN4core3ptr76drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17hefad052bcce69b60E"({ i32*, i8* }* %output) #9
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
  %16 = load i8, i8* %_6, align 1, !range !6, !noundef !1
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
  %_12 = invoke zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17hf7f1026e5b529c26E"(i8** align 8 %_13)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb2
  br i1 %_12, label %bb6, label %bb7

bb7:                                              ; preds = %bb5
  %_14 = invoke i8* @_ZN3std2io5error5Error19from_static_message17h9a4c47b15b2c7fe2E(%"std::io::error::SimpleMessage"* align 8 bitcast (<{ i8*, [9 x i8], [7 x i8] }>* @alloc47 to %"std::io::error::SimpleMessage"*))
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
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #10
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
  %29 = load i8, i8* %_18, align 1, !range !6, !noundef !1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %bb13, label %bb12

bb12:                                             ; preds = %bb13, %bb14
  %31 = load i8*, i8** %1, align 8
  ret i8* %31

bb13:                                             ; preds = %bb14
  %32 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %output, i32 0, i32 1
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9842be98c6a3622bE"(i8** %32)
  br label %bb12
}

; Function Attrs: inlinehint uwtable
define void @_ZN3std2io5error14repr_bitpacked11decode_repr17he78912d6c22c2323E(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %0, i8* %ptr) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %_34 = alloca i64*, align 8
  %_19 = alloca i64*, align 8
  %bits = alloca i64, align 8
  store i8 1, i8* %_37, align 1
  %_4 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h8e02a4fd457d2d3eE"(i8* %ptr)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
  %2 = load i8, i8* %_37, align 1, !range !6, !noundef !1
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
  %9 = invoke i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h9aba1af0e59fe448E"({}* %_4)
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
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [40 x i8] }>* @alloc164 to [0 x i8]*), i64 40, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc163 to %"core::panic::location::Location"*)) #8
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
  %_17 = invoke i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h14a3e5714eb09cd4E(i32 %kind_bits)
          to label %bb6 unwind label %cleanup, !range !7

bb8:                                              ; preds = %bb2
  %_25 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h7bf6ece6388a9f03E"(i8* %ptr)
          to label %bb9 unwind label %cleanup

bb11:                                             ; preds = %bb2
  %_30 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h8e02a4fd457d2d3eE"(i8* %ptr)
          to label %bb12 unwind label %cleanup

unreachable:                                      ; preds = %bb3
  unreachable

bb12:                                             ; preds = %bb11
  %13 = bitcast {}* %_30 to i8*
  br label %bb13

bb13:                                             ; preds = %bb12
  %_28 = invoke i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17h74a4d033da812ad8E"(i8* %13, i64 1)
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
  %_32 = invoke align 8 %"std::io::error::Custom"* @"_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17h5b7f241c000866f3E"(%"std::io::error::Custom"* %17)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %18 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"*
  %19 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Custom", %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"* %18, i32 0, i32 1
  store %"std::io::error::Custom"* %_32, %"std::io::error::Custom"** %19, align 8
  %20 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to i8*
  store i8 3, i8* %20, align 8
  br label %bb17

bb17:                                             ; preds = %bb7, %bb10, %bb16, %bb4
  %21 = load i8, i8* %_37, align 1, !range !6, !noundef !1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb20, label %bb18

bb9:                                              ; preds = %bb8
  %_24 = invoke %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0a4919ce08e1f7f6E"(i64* %_25)
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
  %26 = load i64*, i64** %_19, align 8, !nonnull !1, !align !4, !noundef !1
  %kind = invoke i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h0c07fa02ce8a53f7E"(i8 %_17, i64* align 8 %26)
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
define void @_ZN3std2io5error14repr_bitpacked11decode_repr17hfec5c779dd1f96afE(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %0, i8* %ptr) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %_34 = alloca i64*, align 8
  %_19 = alloca i64*, align 8
  %bits = alloca i64, align 8
  store i8 1, i8* %_37, align 1
  %_4 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h8e02a4fd457d2d3eE"(i8* %ptr)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
  %2 = load i8, i8* %_37, align 1, !range !6, !noundef !1
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
  %9 = invoke i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h9aba1af0e59fe448E"({}* %_4)
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
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [40 x i8] }>* @alloc164 to [0 x i8]*), i64 40, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc163 to %"core::panic::location::Location"*)) #8
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
  %_17 = invoke i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h14a3e5714eb09cd4E(i32 %kind_bits)
          to label %bb6 unwind label %cleanup, !range !7

bb8:                                              ; preds = %bb2
  %_25 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h7bf6ece6388a9f03E"(i8* %ptr)
          to label %bb9 unwind label %cleanup

bb11:                                             ; preds = %bb2
  %_30 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h8e02a4fd457d2d3eE"(i8* %ptr)
          to label %bb12 unwind label %cleanup

unreachable:                                      ; preds = %bb3
  unreachable

bb12:                                             ; preds = %bb11
  %13 = bitcast {}* %_30 to i8*
  br label %bb13

bb13:                                             ; preds = %bb12
  %_28 = invoke i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17h74a4d033da812ad8E"(i8* %13, i64 1)
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
  %_32 = invoke align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hcd69089d35e1f843E"(%"std::io::error::Custom"* %17)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %18 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"*
  %19 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"* %18, i32 0, i32 1
  store %"std::io::error::Custom"* %_32, %"std::io::error::Custom"** %19, align 8
  %20 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 3, i8* %20, align 8
  br label %bb17

bb17:                                             ; preds = %bb7, %bb10, %bb16, %bb4
  %21 = load i8, i8* %_37, align 1, !range !6, !noundef !1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb20, label %bb18

bb9:                                              ; preds = %bb8
  %_24 = invoke %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0a4919ce08e1f7f6E"(i64* %_25)
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
  %kind = invoke i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17haa4ef6892ae589b3E"(i8 %_17, i64* align 8 %26)
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
define i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h9f665e8463d69faaE"(i64* align 8 %_1) unnamed_addr #0 {
start:
  call void @_ZN4core4hint21unreachable_unchecked17h2b9726d4dcabccc4E() #8
  unreachable
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17ha81a29f092dce1a3E"(i64* align 8 %_1) unnamed_addr #0 {
start:
  call void @_ZN4core4hint21unreachable_unchecked17h2b9726d4dcabccc4E() #8
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h14a3e5714eb09cd4E(i32 %0) unnamed_addr #0 {
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
  %2 = load i8, i8* %1, align 1, !range !7, !noundef !1
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
define internal i8* @_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17he4b16d9ff1b409daE(%"std::io::error::SimpleMessage"* align 8 %m) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = bitcast %"std::io::error::SimpleMessage"* %m to {}*
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8926761e7e2c8d27E"({}* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3std2io5error14repr_bitpacked4Repr4data17h97d98abdea52ae7cE(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %0, i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  call void @_ZN3std2io5error14repr_bitpacked11decode_repr17he78912d6c22c2323E(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %0, i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17h5b7f241c000866f3E"(%"std::io::error::Custom"* %c) unnamed_addr #0 {
start:
  ret %"std::io::error::Custom"* %c
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3std2io5error5Error19from_static_message17h9a4c47b15b2c7fe2E(%"std::io::error::SimpleMessage"* align 8 %msg) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_2 = call i8* @_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17he4b16d9ff1b409daE(%"std::io::error::SimpleMessage"* align 8 %msg)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3std2io5error5Error4kind17h83ae50bf53d71387E(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"std::io::error::ErrorData<&std::io::error::Custom>", align 8
  %0 = alloca i8, align 1
  call void @_ZN3std2io5error14repr_bitpacked4Repr4data17h97d98abdea52ae7cE(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %_2, i8** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to i8*
  %2 = load i8, i8* %1, align 8, !range !8, !noundef !1
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
  %m = load %"std::io::error::SimpleMessage"*, %"std::io::error::SimpleMessage"** %9, align 8, !nonnull !1, !align !4, !noundef !1
  %10 = getelementptr inbounds %"std::io::error::SimpleMessage", %"std::io::error::SimpleMessage"* %m, i32 0, i32 1
  %11 = load i8, i8* %10, align 8, !range !5, !noundef !1
  store i8 %11, i8* %0, align 1
  br label %bb8

bb6:                                              ; preds = %bb1
  %12 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"*
  %13 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Custom", %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"* %12, i32 0, i32 1
  %c = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %13, align 8, !nonnull !1, !align !4, !noundef !1
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
define internal { %"std::ffi::os_str::OsStr"*, i64 } @_ZN3std3ffi6os_str5OsStr10from_inner17h45f485f04e095950E(%"std::sys::unix::os_str::Slice"* align 1 %inner.0, i64 %inner.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast %"std::sys::unix::os_str::Slice"* %inner.0 to %"std::ffi::os_str::OsStr"*
  %0 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %_2.0, 0
  %1 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, i64 %inner.1, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h6664aa7effb67ca5E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice8from_str17h5c1a6214e73601e7E([0 x i8]* align 1 %self.0, i64 %self.1)
  %_3.0 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %0, 0
  %_3.1 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { %"std::ffi::os_str::OsStr"*, i64 } @_ZN3std3ffi6os_str5OsStr10from_inner17h45f485f04e095950E(%"std::sys::unix::os_str::Slice"* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 0
  %3 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %2, 0
  %5 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %4, i64 %3, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice13from_u8_slice17h522a2202369cd838E([0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %0 = alloca { %"std::sys::unix::os_str::Slice"*, i64 }, align 8
  %1 = bitcast { %"std::sys::unix::os_str::Slice"*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %s.1, i64* %3, align 8
  %4 = getelementptr inbounds { %"std::sys::unix::os_str::Slice"*, i64 }, { %"std::sys::unix::os_str::Slice"*, i64 }* %0, i32 0, i32 0
  %5 = load %"std::sys::unix::os_str::Slice"*, %"std::sys::unix::os_str::Slice"** %4, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = getelementptr inbounds { %"std::sys::unix::os_str::Slice"*, i64 }, { %"std::sys::unix::os_str::Slice"*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } undef, %"std::sys::unix::os_str::Slice"* %5, 0
  %9 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } %8, i64 %7, 1
  ret { %"std::sys::unix::os_str::Slice"*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define internal { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice8from_str17h5c1a6214e73601e7E([0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %s.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !2, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  %_3.0 = extractvalue { [0 x i8]*, i64 } %8, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = call { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice13from_u8_slice17h522a2202369cd838E([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %10 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %9, 0
  %11 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %9, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %12 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } undef, %"std::sys::unix::os_str::Slice"* %10, 0
  %13 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } %12, i64 %11, 1
  ret { %"std::sys::unix::os_str::Slice"*, i64 } %13
}

; Function Attrs: uwtable
define { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17he53b29d921dbe3ccE([0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %0 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h6664aa7effb67ca5E"([0 x i8]* align 1 %s.0, i64 %s.1)
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
define internal { %"std::path::Path"*, i64 } @"_ZN3std4path77_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$str$GT$6as_ref17h185debae33f20390E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17he53b29d921dbe3ccE([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { %"std::path::Path"*, i64 } %0, 0
  %2 = extractvalue { %"std::path::Path"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %1, 0
  %4 = insertvalue { %"std::path::Path"*, i64 } %3, i64 %2, 1
  ret { %"std::path::Path"*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hf7daecba15230d4fE"({ [0 x i8]*, i64 }* align 8 %self, { [0 x i8]*, i64 }* align 8 %other) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_5.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !2, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_5.1 = load i64, i64* %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !1, !align !2, !noundef !1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 1
  %_6.1 = load i64, i64* %3, align 8
  %4 = call zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h8e5e03f1e5f8cf08E"([0 x i8]* align 1 %_5.0, i64 %_5.1, [0 x i8]* align 1 %_6.0, i64 %_6.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5651ff741c820ab4E(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hc2e010b249077924E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h74d70abc60e097f4E(%"core::fmt::Arguments"* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h818401c9b813c235E(%"core::fmt::Arguments"* align 8 %x, i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2165ef06e41cd052E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17ha2bbcb05e3c885c7E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h36dfd60a45892ca4E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h36dfd60a45892ca4E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h818401c9b813c235E(%"core::fmt::Arguments"* align 8 %x, i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"core::fmt::Arguments"* %x to %"core::fmt::Opaque"*
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hc2e010b249077924E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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

; Function Attrs: uwtable
define zeroext i1 @_ZN4core3fmt5Write10write_char17hfb3b251316e04a32E({ i32*, i8* }* align 8 %self, i32 %c) unnamed_addr #1 {
start:
  %_10 = alloca [4 x i8], align 1
  %0 = getelementptr inbounds [4 x i8], [4 x i8]* %_10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 4, i1 false)
  %_7.0 = bitcast [4 x i8]* %_10 to [0 x i8]*
  %1 = call { [0 x i8]*, i64 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817hce02478a29eb6840E"(i32 %c, [0 x i8]* align 1 %_7.0, i64 4)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h7b271491e933e825E"({ i32*, i8* }* align 8 %self, [0 x i8]* align 1 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %2
}

; Function Attrs: uwtable
define zeroext i1 @_ZN4core3fmt5Write9write_fmt17h42f5e0206ee92856E({ i32*, i8* }* align 8 %0, %"core::fmt::Arguments"* %args) unnamed_addr #1 {
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
define internal void @_ZN4core3fmt9Arguments6new_v117h696734b3c45d6598E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !6, !noundef !1
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
  call void @_ZN4core3fmt9Arguments6new_v117h696734b3c45d6598E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc38 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc66 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc171 to %"core::panic::location::Location"*)) #8
  unreachable
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem11size_of_val17hec400aecbbee09aaE([0 x i8]* align 1 %val.0, i64 %val.1) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = mul nsw i64 %val.1, 1
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hc3f15774d482c110E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !9, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17he412ea7acbb62449E(i64 %_3), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h4f40df62a3851f69E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !9, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17he412ea7acbb62449E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !10, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h6e871c14d1992d06E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17ha21cfead50faafb3E"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1 to i8*
  %1 = load i8, i8* %0, align 8, !range !8, !noundef !1
  %_2 = zext i8 %1 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb1
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  %2 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"*
  %3 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"* %2, i32 0, i32 1
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h0c7ba28ef191ecc4E"(%"std::io::error::Custom"** %3)
  br label %bb1

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h58a4310148227d80E"({ {}*, [3 x i64]* }* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  invoke void @_ZN5alloc5alloc8box_free17hff03ad0395b78d08E(i8* %12, i64* align 8 %14) #9
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
  call void @_ZN5alloc5alloc8box_free17hff03ad0395b78d08E(i8* %22, i64* align 8 %24)
  br label %bb1

abort:                                            ; preds = %bb4
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #10
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
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h09d07e1d0398e94aE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hab6c5db2af664999E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h4639b98d462208dcE({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h0623d136129415f0E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hd30cd3bd871bf764E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17haaa8d082f4d713d6E"(i32* %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17h095303ae63bf432cE"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h206c7047db625ec7E"(i8** %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17haa855c808c9fe14dE"(i8** %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h99885cc922a75f8eE"(%"std::io::error::Custom"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::Custom"* %_1 to { {}*, [3 x i64]* }*
  call void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h58a4310148227d80E"({ {}*, [3 x i64]* }* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17h095303ae63bf432cE"(i32* %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17h078ab3515fab31feE"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17hfd22f7d0299cea58E"(i32* %_1) unnamed_addr #1 {
start:
  call void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0eab8648c5207a68E"(i32* align 4 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17h078ab3515fab31feE"(i32* %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17hfd22f7d0299cea58E"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17haa855c808c9fe14dE"(i8** %_1) unnamed_addr #1 {
start:
  call void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94c5bb3f3e4c5eedE"(i8** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr60drop_in_place$LT$core..ffi..c_str..FromBytesWithNulError$GT$17he077ef2188f912e8E"({ i64, i64 }* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$std..fs..File$GT$$GT$17hf0b14623842a6238E"(i32* %_1) unnamed_addr #1 {
start:
  %0 = load i32, i32* %_1, align 4
  %1 = sub i32 %0, -1
  %2 = icmp eq i32 %1, 0
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  call void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17haaa8d082f4d713d6E"(i32* %_1)
  br label %bb1
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h0c7ba28ef191ecc4E"(%"std::io::error::Custom"** %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %2 = bitcast i64** %1 to %"std::io::error::Custom"**
  %3 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %2, align 8
  invoke void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h99885cc922a75f8eE"(%"std::io::error::Custom"* %3)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %4 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %5 = load i64*, i64** %4, align 8, !nonnull !1, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17h317078e0445f2419E(i64* %5) #9
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
  call void @_ZN5alloc5alloc8box_free17h317078e0445f2419E(i64* %12)
  br label %bb1

abort:                                            ; preds = %bb4
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #10
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
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hb245f2f2ff488267E"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %_2 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hbcc35e2ba5d6c33aE"(%"std::io::error::Custom"* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i64* %_2, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5b9a3ab9a812120aE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3ec51a21d6fd3bc0E"(i8* %self.0, i64* align 8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hd929d1cedd96eab3E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h65de133268774e69E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h4316773830efbef3E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hd929d1cedd96eab3E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h42b10e885587883dE"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9478288ccde16b0bE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h9620819bb112db65E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h60a7b9c7b07fb21fE"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hc15ddc01d041eb3cE"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h530e88550ed562d5E"({ i8*, i64* }* align 8 %self)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr76drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17hefad052bcce69b60E"({ i32*, i8* }* %_1) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32*, i8* }, { i32*, i8* }* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9842be98c6a3622bE"(i8** %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17h74a4d033da812ad8E"(i8* %self, i64 %count) unnamed_addr #0 {
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
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h9aba1af0e59fe448E"({}* %self) unnamed_addr #0 {
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
define void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9842be98c6a3622bE"(i8** %_1) unnamed_addr #1 {
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
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h206c7047db625ec7E"(i8** %_1)
  br label %bb1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr88drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17h5276a8dd061061a1E"({ i32*, i8* }** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h4639b98d462208dcE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hd30cd3bd871bf764E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i64 @_ZN4core3ptr8metadata8metadata17h8fb35c9adc0581b3E([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0d1b1308892cd8a3E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8926761e7e2c8d27E"({}* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to {}**
  store {}* %ptr, {}** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb4dd112ee5809f6bE"(%"std::io::error::SimpleMessage"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::SimpleMessage"**
  store %"std::io::error::SimpleMessage"* %ptr, %"std::io::error::SimpleMessage"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hbcc35e2ba5d6c33aE"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %ptr, %"std::io::error::Custom"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3ec51a21d6fd3bc0E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3dbe951874dd56daE"(i8* %self.0, i64* align 8 %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0d1b1308892cd8a3E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h4316773830efbef3E"(i64* %self) unnamed_addr #0 {
start:
  %_3 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25c7bf101d6a8fc9E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"std::io::error::Custom"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0d1b1308892cd8a3E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h7bf6ece6388a9f03E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h8e02a4fd457d2d3eE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3 to %"std::io::error::SimpleMessage"*
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb4dd112ee5809f6bE"(%"std::io::error::SimpleMessage"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0a4919ce08e1f7f6E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::SimpleMessage"*
  ret %"std::io::error::SimpleMessage"* %_2
}

; Function Attrs: inlinehint uwtable
define %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25c7bf101d6a8fc9E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::Custom"*
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3dbe951874dd56daE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h8e02a4fd457d2d3eE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to {}*
  ret {}* %_2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9478288ccde16b0bE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h530e88550ed562d5E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !1, !align !4, !noundef !1
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3dbe951874dd56daE"(i8* %_3.0, i64* align 8 %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h60a7b9c7b07fb21fE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25c7bf101d6a8fc9E"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h701405129b07bcc3E"({}* %_1.0, [3 x i64]* align 8 %_1.1) unnamed_addr #1 {
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
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hab6c5db2af664999E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hc9f6ae962b951f24E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3ptr8metadata8metadata17h8fb35c9adc0581b3E([0 x i8]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hbb929624e324d5deE"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$9ends_with17hdd3888a3f5937f41E"([0 x i8]* align 1 %self.0, i64 %self.1, i32 %pat) unnamed_addr #1 {
start:
  %0 = call zeroext i1 @"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_suffix_of17h605990844dae5f7dE"(i32 %pat, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts23from_utf8_unchecked_mut17hcfedd46768fa574fE([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %v.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %v.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core4char7methods15encode_utf8_raw17h88522f8ec777341aE(i32 %0, [0 x i8]* align 1 %dst.0, i64 %dst.1) unnamed_addr #0 {
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
  %1 = call i64 @_ZN4core4char7methods8len_utf817h0ed5d6d68ddd25f1E(i32 %_5)
  store i64 %1, i64* %len, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = load i64, i64* %len, align 8
  %2 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hc25a523302806ebfE"([0 x i8]* align 1 %dst.0, i64 %dst.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc173 to %"core::panic::location::Location"*))
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
  %9 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5651ff741c820ab4E(i64* align 8 %len)
  %_77.0 = extractvalue { i8*, i64* } %9, 0
  %_77.1 = extractvalue { i8*, i64* } %9, 1
  br label %bb12

bb3:                                              ; preds = %bb2
  %10 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 0
  %_94.0 = load [0 x i8]*, [0 x i8]** %11, align 8, !nonnull !1, !align !2, !noundef !1
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 1
  %_94.1 = load i64, i64* %12, align 8
  %_14 = icmp uge i64 %_94.1, 1
  br i1 %_14, label %bb8, label %bb4

bb5:                                              ; preds = %bb2
  %13 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 0
  %_95.0 = load [0 x i8]*, [0 x i8]** %14, align 8, !nonnull !1, !align !2, !noundef !1
  %15 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 1
  %_95.1 = load i64, i64* %15, align 8
  %_17 = icmp uge i64 %_95.1, 2
  br i1 %_17, label %bb9, label %bb4

bb6:                                              ; preds = %bb2
  %16 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %17 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %16, i32 0, i32 0
  %_96.0 = load [0 x i8]*, [0 x i8]** %17, align 8, !nonnull !1, !align !2, !noundef !1
  %18 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %16, i32 0, i32 1
  %_96.1 = load i64, i64* %18, align 8
  %_20 = icmp uge i64 %_96.1, 3
  br i1 %_20, label %bb10, label %bb4

bb7:                                              ; preds = %bb2
  %19 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %20 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %19, i32 0, i32 0
  %_97.0 = load [0 x i8]*, [0 x i8]** %20, align 8, !nonnull !1, !align !2, !noundef !1
  %21 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %19, i32 0, i32 1
  %_97.1 = load i64, i64* %21, align 8
  %_23 = icmp uge i64 %_97.1, 4
  br i1 %_23, label %bb11, label %bb4

bb11:                                             ; preds = %bb7
  %22 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %22, i32 0, i32 0
  %_104.0 = load [0 x i8]*, [0 x i8]** %23, align 8, !nonnull !1, !align !2, !noundef !1
  %24 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %22, i32 0, i32 1
  %_104.1 = load i64, i64* %24, align 8
  %a = getelementptr inbounds [0 x i8], [0 x i8]* %_104.0, i64 0, i64 0
  %25 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %26 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %25, i32 0, i32 0
  %_105.0 = load [0 x i8]*, [0 x i8]** %26, align 8, !nonnull !1, !align !2, !noundef !1
  %27 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %25, i32 0, i32 1
  %_105.1 = load i64, i64* %27, align 8
  %b = getelementptr inbounds [0 x i8], [0 x i8]* %_105.0, i64 0, i64 1
  %28 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %29 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 0
  %_106.0 = load [0 x i8]*, [0 x i8]** %29, align 8, !nonnull !1, !align !2, !noundef !1
  %30 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 1
  %_106.1 = load i64, i64* %30, align 8
  %c = getelementptr inbounds [0 x i8], [0 x i8]* %_106.0, i64 0, i64 2
  %31 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %32 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %31, i32 0, i32 0
  %_107.0 = load [0 x i8]*, [0 x i8]** %32, align 8, !nonnull !1, !align !2, !noundef !1
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
  %39 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h7f39d3cae57f9afeE"([0 x i8]* align 1 %dst.0, i64 %dst.1, i64 %38, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc175 to %"core::panic::location::Location"*))
  %_89.0 = extractvalue { [0 x i8]*, i64 } %39, 0
  %_89.1 = extractvalue { [0 x i8]*, i64 } %39, 1
  br label %bb17

bb10:                                             ; preds = %bb6
  %40 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %41 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 0
  %_101.0 = load [0 x i8]*, [0 x i8]** %41, align 8, !nonnull !1, !align !2, !noundef !1
  %42 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 1
  %_101.1 = load i64, i64* %42, align 8
  %a1 = getelementptr inbounds [0 x i8], [0 x i8]* %_101.0, i64 0, i64 0
  %43 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %44 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 0
  %_102.0 = load [0 x i8]*, [0 x i8]** %44, align 8, !nonnull !1, !align !2, !noundef !1
  %45 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 1
  %_102.1 = load i64, i64* %45, align 8
  %b2 = getelementptr inbounds [0 x i8], [0 x i8]* %_102.0, i64 0, i64 1
  %46 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %47 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %46, i32 0, i32 0
  %_103.0 = load [0 x i8]*, [0 x i8]** %47, align 8, !nonnull !1, !align !2, !noundef !1
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
  %_99.0 = load [0 x i8]*, [0 x i8]** %53, align 8, !nonnull !1, !align !2, !noundef !1
  %54 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %52, i32 0, i32 1
  %_99.1 = load i64, i64* %54, align 8
  %a4 = getelementptr inbounds [0 x i8], [0 x i8]* %_99.0, i64 0, i64 0
  %55 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %56 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %55, i32 0, i32 0
  %_100.0 = load [0 x i8]*, [0 x i8]** %56, align 8, !nonnull !1, !align !2, !noundef !1
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
  %_98.0 = load [0 x i8]*, [0 x i8]** %61, align 8, !nonnull !1, !align !2, !noundef !1
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
  %66 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17ha2bbcb05e3c885c7E(i32* align 4 %code)
  %_80.0 = extractvalue { i8*, i64* } %66, 0
  %_80.1 = extractvalue { i8*, i64* } %66, 1
  br label %bb13

bb13:                                             ; preds = %bb12
  store i64 %dst.1, i64* %_86, align 8
  %67 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5651ff741c820ab4E(i64* align 8 %_86)
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
  call void @_ZN4core3fmt9Arguments6new_v117h696734b3c45d6598E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_69, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc26 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_73.0, i64 3)
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_69, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc177 to %"core::panic::location::Location"*)) #8
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817hce02478a29eb6840E"(i32 %self, [0 x i8]* align 1 %dst.0, i64 %dst.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core4char7methods15encode_utf8_raw17h88522f8ec777341aE(i32 %self, [0 x i8]* align 1 %dst.0, i64 %dst.1)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts23from_utf8_unchecked_mut17hcfedd46768fa574fE([0 x i8]* align 1 %_7.0, i64 %_7.1)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_5.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_5.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4char7methods8len_utf817h0ed5d6d68ddd25f1E(i32 %code) unnamed_addr #0 {
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
define internal void @_ZN4core4hint21unreachable_unchecked17h2b9726d4dcabccc4E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h18532ca503f1fac3E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h4f40df62a3851f69E(i64 %align), !range !9
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
define internal i64 @_ZN4core5alloc6layout6Layout4size17hb5284bffecf27b4bE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h9645eb236e0f3c25E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !9, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hc3f15774d482c110E(i64 %_3), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h6e871c14d1992d06E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h70455f1c15db6741E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17hb167d4d08323098dE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = icmp eq i64 %self.1, 0
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h3b0d4d8be3791fbcE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %0, i64 %1) unnamed_addr #1 {
start:
  %_19 = alloca i64, align 8
  %_16 = alloca { [0 x i8]*, i64 }, align 8
  %_5 = alloca { i64, i64 }, align 8
  %2 = alloca i8, align 1
  %needle = alloca { [0 x i8]*, i64 }, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %needle, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %needle, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %needle, i32 0, i32 0
  %_9.0 = load [0 x i8]*, [0 x i8]** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %needle, i32 0, i32 1
  %_9.1 = load i64, i64* %6, align 8
  %7 = bitcast { i64, i64 }* %_5 to i64*
  store i64 %self.1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  store i64 %_9.1, i64* %8, align 8
  %9 = bitcast { i64, i64 }* %_5 to i64*
  %m = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %n = load i64, i64* %10, align 8
  %_10 = icmp uge i64 %m, %n
  br i1 %_10, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %2, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %_20 = sub i64 %m, %n
  store i64 %_20, i64* %_19, align 8
  %11 = load i64, i64* %_19, align 8
  %12 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h92109e9951a70df4E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %11, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc179 to %"core::panic::location::Location"*))
  %_17.0 = extractvalue { [0 x i8]*, i64 } %12, 0
  %_17.1 = extractvalue { [0 x i8]*, i64 } %12, 1
  br label %bb4

bb4:                                              ; preds = %bb2
  %13 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_16, i32 0, i32 0
  store [0 x i8]* %_17.0, [0 x i8]** %13, align 8
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_16, i32 0, i32 1
  store i64 %_17.1, i64* %14, align 8
  %_13 = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hf7daecba15230d4fE"({ [0 x i8]*, i64 }* align 8 %needle, { [0 x i8]*, i64 }* align 8 %_16)
  br label %bb5

bb5:                                              ; preds = %bb4
  %15 = zext i1 %_13 to i8
  store i8 %15, i8* %2, align 1
  br label %bb3

bb3:                                              ; preds = %bb5, %bb1
  %16 = load i8, i8* %2, align 1, !range !6, !noundef !1
  %17 = trunc i8 %16 to i1
  ret i1 %17
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h8e5e03f1e5f8cf08E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = call zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h40264316e526e2eaE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h92109e9951a70df4E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h1f16265975d640ffE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h7f39d3cae57f9afeE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6a709caf37e5a708E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hc25a523302806ebfE"([0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h0e51b7daea98768bE"([0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h0c07fa02ce8a53f7E"(i8 %0, i64* align 8 %f) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8, align 1
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  store i8 1, i8* %_7, align 1
  %2 = load i8, i8* %self, align 1, !range !7, !noundef !1
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
  %5 = call i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h9f665e8463d69faaE"(i64* align 8 %f), !range !5
  store i8 %5, i8* %1, align 1
  br label %bb4

bb3:                                              ; preds = %start
  %x = load i8, i8* %self, align 1, !range !5, !noundef !1
  store i8 %x, i8* %1, align 1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %6 = load i8, i8* %_7, align 1, !range !6, !noundef !1
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
define i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17haa4ef6892ae589b3E"(i8 %0, i64* align 8 %f) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8, align 1
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  store i8 1, i8* %_7, align 1
  %2 = load i8, i8* %self, align 1, !range !7, !noundef !1
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
  %5 = call i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17ha81a29f092dce1a3E"(i64* align 8 %f), !range !5
  store i8 %5, i8* %1, align 1
  br label %bb4

bb3:                                              ; preds = %start
  %x = load i8, i8* %self, align 1, !range !5, !noundef !1
  store i8 %x, i8* %1, align 1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %6 = load i8, i8* %_7, align 1, !range !6, !noundef !1
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
define zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17hc976edce79139c93E"(i8** align 8 %self) unnamed_addr #0 {
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
  %5 = load i8, i8* %0, align 1, !range !6, !noundef !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17hf7f1026e5b529c26E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = call zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17hc976edce79139c93E"(i8** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_2, true
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd12c98282aebfb6aE"(%"core::result::Result<std::fs::File, std::io::error::Error>"* %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %e = alloca i8*, align 8
  %2 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %self to i32*
  %3 = load i32, i32* %2, align 8, !range !11, !noundef !1
  %_2 = zext i32 %3 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %4 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %self to %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"*
  %5 = getelementptr inbounds %"core::result::Result<std::fs::File, std::io::error::Error>::Ok", %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"* %4, i32 0, i32 1
  %t = load i32, i32* %5, align 4, !range !12, !noundef !1
  ret i32 %t

bb1:                                              ; preds = %start
  %6 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %self to %"core::result::Result<std::fs::File, std::io::error::Error>::Err"*
  %7 = getelementptr inbounds %"core::result::Result<std::fs::File, std::io::error::Error>::Err", %"core::result::Result<std::fs::File, std::io::error::Error>::Err"* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8, !nonnull !1, !noundef !1
  store i8* %8, i8** %e, align 8
  %_7.0 = bitcast i8** %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 bitcast (<{ [43 x i8] }>* @alloc184 to [0 x i8]*), i64 43, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*), %"core::panic::location::Location"* align 8 %0) #8
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h206c7047db625ec7E"(i8** %e) #9
          to label %bb5 unwind label %abort

cleanup:                                          ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

abort:                                            ; preds = %bb4
  %14 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #10
  unreachable

bb5:                                              ; preds = %bb4
  %15 = bitcast { i8*, i32 }* %1 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: inlinehint uwtable
define { %"core::ffi::c_str::CStr"*, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hee29ec1d5ed52a2dE"(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %e = alloca { i64, i64 }, align 8
  %2 = bitcast %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* %self to i64*
  %_2 = load i64, i64* %2, align 8, !range !3, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* %self to %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>::Ok"*
  %4 = getelementptr inbounds %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>::Ok", %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>::Ok"* %3, i32 0, i32 1
  %5 = getelementptr inbounds { %"core::ffi::c_str::CStr"*, i64 }, { %"core::ffi::c_str::CStr"*, i64 }* %4, i32 0, i32 0
  %t.0 = load %"core::ffi::c_str::CStr"*, %"core::ffi::c_str::CStr"** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = getelementptr inbounds { %"core::ffi::c_str::CStr"*, i64 }, { %"core::ffi::c_str::CStr"*, i64 }* %4, i32 0, i32 1
  %t.1 = load i64, i64* %6, align 8
  %7 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %t.0, 0
  %8 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %7, i64 %t.1, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %8

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* %self to %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>::Err", %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !range !3, !noundef !1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %_7.0 = bitcast { i64, i64 }* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 bitcast (<{ [43 x i8] }>* @alloc184 to [0 x i8]*), i64 43, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.3 to [3 x i64]*), %"core::panic::location::Location"* align 8 %0) #8
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  %19 = extractvalue { i8*, i32 } %17, 1
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb4
  %22 = bitcast { i8*, i32 }* %1 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = insertvalue { i8*, i32 } undef, i8* %23, 0
  %27 = insertvalue { i8*, i32 } %26, i32 %25, 1
  resume { i8*, i32 } %27
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17he985572dca75029eE"(%"core::result::Result<&str, core::str::error::Utf8Error>"* %self, [0 x i8]* align 1 %default.0, i64 %default.1) unnamed_addr #0 {
start:
  %_6 = alloca i8, align 1
  %e = alloca %"core::str::error::Utf8Error", align 8
  %0 = alloca { [0 x i8]*, i64 }, align 8
  store i8 1, i8* %_6, align 1
  %1 = bitcast %"core::result::Result<&str, core::str::error::Utf8Error>"* %self to i64*
  %_3 = load i64, i64* %1, align 8, !range !3, !noundef !1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<&str, core::str::error::Utf8Error>"* %self to %"core::result::Result<&str, core::str::error::Utf8Error>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", %"core::result::Result<&str, core::str::error::Utf8Error>::Ok"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 0
  %t.0 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !2, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 1
  %t.1 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %t.0, [0 x i8]** %6, align 8
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %t.1, i64* %7, align 8
  br label %bb7

bb1:                                              ; preds = %start
  %8 = bitcast %"core::result::Result<&str, core::str::error::Utf8Error>"* %self to %"core::result::Result<&str, core::str::error::Utf8Error>::Err"*
  %9 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Err", %"core::result::Result<&str, core::str::error::Utf8Error>::Err"* %8, i32 0, i32 1
  %10 = bitcast %"core::str::error::Utf8Error"* %e to i8*
  %11 = bitcast %"core::str::error::Utf8Error"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  store i8 0, i8* %_6, align 1
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %default.0, [0 x i8]** %12, align 8
  %13 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %default.1, i64* %13, align 8
  br label %bb4

bb4:                                              ; preds = %bb1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %14 = load i8, i8* %_6, align 1, !range !6, !noundef !1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %16 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %17 = load [0 x i8]*, [0 x i8]** %16, align 8, !nonnull !1, !align !2, !noundef !1
  %18 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %17, 0
  %21 = insertvalue { [0 x i8]*, i64 } %20, i64 %19, 1
  ret { [0 x i8]*, i64 } %21

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c6a91e5fa829c01E"({ i32*, i8* }** align 8 %self, i32 %c) unnamed_addr #1 {
start:
  %_5 = load { i32*, i8* }*, { i32*, i8* }** %self, align 8, !nonnull !1, !align !4, !noundef !1
  %0 = call zeroext i1 @_ZN4core3fmt5Write10write_char17hfb3b251316e04a32E({ i32*, i8* }* align 8 %_5, i32 %c)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h20997298d531c714E"({ i32*, i8* }** align 8 %self, %"core::fmt::Arguments"* %args) unnamed_addr #1 {
start:
  %_4 = alloca %"core::fmt::Arguments", align 8
  %_5 = load { i32*, i8* }*, { i32*, i8* }** %self, align 8, !nonnull !1, !align !4, !noundef !1
  %0 = bitcast %"core::fmt::Arguments"* %_4 to i8*
  %1 = bitcast %"core::fmt::Arguments"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 48, i1 false)
  %2 = call zeroext i1 @_ZN4core3fmt5Write9write_fmt17h42f5e0206ee92856E({ i32*, i8* }* align 8 %_5, %"core::fmt::Arguments"* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h1f7e603327a3635eE"({ i32*, i8* }** align 8 %self, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %_5 = load { i32*, i8* }*, { i32*, i8* }** %self, align 8, !nonnull !1, !align !4, !noundef !1
  %0 = call zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h7b271491e933e825E"({ i32*, i8* }* align 8 %_5, [0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_suffix_of17h605990844dae5f7dE"(i32 %self, [0 x i8]* align 1 %haystack.0, i64 %haystack.1) unnamed_addr #0 {
start:
  %_9 = alloca [4 x i8], align 1
  %0 = getelementptr inbounds [4 x i8], [4 x i8]* %_9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 4, i1 false)
  %_6.0 = bitcast [4 x i8]* %_9 to [0 x i8]*
  %1 = call { [0 x i8]*, i64 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817hce02478a29eb6840E"(i32 %self, [0 x i8]* align 1 %_6.0, i64 4)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$12is_suffix_of17h71e3d5bbeb4999f3E"([0 x i8]* align 1 %_4.0, i64 %_4.1, [0 x i8]* align 1 %haystack.0, i64 %haystack.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h67027b11c872b5c5E"({ %"std::path::Path"*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %self, i32 0, i32 0
  %_3.0 = load %"std::path::Path"*, %"std::path::Path"** %0, align 8, !nonnull !1, !align !2, !noundef !1
  %1 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %self, i32 0, i32 1
  %_3.1 = load i64, i64* %1, align 8
  %2 = call { %"std::path::Path"*, i64 } @"_ZN79_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..path..Path$GT$$GT$6as_ref17hbbf76715b6b15f37E"(%"std::path::Path"* align 1 %_3.0, i64 %_3.1)
  %3 = extractvalue { %"std::path::Path"*, i64 } %2, 0
  %4 = extractvalue { %"std::path::Path"*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %3, 0
  %6 = insertvalue { %"std::path::Path"*, i64 } %5, i64 %4, 1
  ret { %"std::path::Path"*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17hdcadebc575a702beE"({ [0 x i8]*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_3.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !2, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_3.1 = load i64, i64* %1, align 8
  %2 = call { %"std::path::Path"*, i64 } @"_ZN3std4path77_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$str$GT$6as_ref17h185debae33f20390E"([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %3 = extractvalue { %"std::path::Path"*, i64 } %2, 0
  %4 = extractvalue { %"std::path::Path"*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %3, 0
  %6 = insertvalue { %"std::path::Path"*, i64 } %5, i64 %4, 1
  ret { %"std::path::Path"*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$12is_suffix_of17h71e3d5bbeb4999f3E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %haystack.0, i64 %haystack.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %haystack.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %haystack.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %10, align 8
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %self.1, i64* %11, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %13 = load [0 x i8]*, [0 x i8]** %12, align 8, !nonnull !1, !align !2, !noundef !1
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %13, 0
  %17 = insertvalue { [0 x i8]*, i64 } %16, i64 %15, 1
  %_7.0 = extractvalue { [0 x i8]*, i64 } %17, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %17, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %18 = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h3b0d4d8be3791fbcE"([0 x i8]* align 1 %_4.0, i64 %_4.1, [0 x i8]* align 1 %_7.0, i64 %_7.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i1 %18
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17h3e7e14dac2872220E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hb5284bffecf27b4bE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h9645eb236e0f3c25E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #11
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17h317078e0445f2419E(i64* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca i64*, align 8
  store i64* %0, i64** %ptr, align 8
  %_5 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h9620819bb112db65E"(i64** align 8 %ptr)
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
  %_9 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h9620819bb112db65E"(i64** align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64 8, i64* %1, align 8
  %align = load i64, i64* %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h18532ca503f1fac3E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  %_17 = load i64*, i64** %ptr, align 8, !nonnull !1, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h65de133268774e69E"(i64* %_17)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hec6ffa8d002ac2d9E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hff8567e6c512c46fE"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
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
define void @_ZN5alloc5alloc8box_free17hff03ad0395b78d08E(i8* %0, i64* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hc15ddc01d041eb3cE"({ i8*, i64* }* align 8 %ptr)
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
  %18 = load i64, i64* %17, align 8, !range !10, !invariant.load !1
  store i64 %15, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hc15ddc01d041eb3cE"({ i8*, i64* }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !1
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !10, !invariant.load !1
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h18532ca503f1fac3E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !1, !align !4, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5b9a3ab9a812120aE"(i8* %_17.0, i64* align 8 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hec6ffa8d002ac2d9E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hff8567e6c512c46fE"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
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
define align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17hb56d9f3e7a4ff5feE"(%"std::io::error::Custom"* %raw) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hc325c796e9c27875E"(%"std::io::error::Custom"* %raw)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hc325c796e9c27875E"(%"std::io::error::Custom"* %raw) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca %"std::io::error::Custom"*, align 8
  %_3 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hb245f2f2ff488267E"(%"std::io::error::Custom"* %raw)
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
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hff8567e6c512c46fE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hb5284bffecf27b4bE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9478288ccde16b0bE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !9, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h3e7e14dac2872220E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h93e3d4c72d434fc7E"(i8* align 1 %self, i8* align 1 %other) unnamed_addr #0 {
start:
  %0 = load i8, i8* %self, align 1, !range !5, !noundef !1
  %__self_tag = zext i8 %0 to i64
  %1 = load i8, i8* %other, align 1, !range !5, !noundef !1
  %__arg1_tag = zext i8 %1 to i64
  %2 = icmp eq i64 %__self_tag, %__arg1_tag
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0eab8648c5207a68E"(i32* align 4 %self) unnamed_addr #0 {
start:
  %_3 = load i32, i32* %self, align 4
  %_2 = call i32 @close(i32 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h40264316e526e2eaE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %_3 = icmp ne i64 %self.1, %other.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %size = call i64 @_ZN4core3mem11size_of_val17hec400aecbbee09aaE([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6, %bb1
  %1 = load i8, i8* %0, align 1, !range !6, !noundef !1
  %2 = trunc i8 %1 to i1
  ret i1 %2

bb3:                                              ; preds = %bb2
  %_12 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h70455f1c15db6741E"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_15 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h70455f1c15db6741E"([0 x i8]* align 1 %other.0, i64 %other.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_10 = call i32 @memcmp(i8* %_12, i8* %_15, i64 %size)
  br label %bb6

bb6:                                              ; preds = %bb5
  %3 = icmp eq i32 %_10, 0
  %4 = zext i1 %3 to i8
  store i8 %4, i8* %0, align 1
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94c5bb3f3e4c5eedE"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>", align 8
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  call void @_ZN3std2io5error14repr_bitpacked11decode_repr17hfec5c779dd1f96afE(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %_2, i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17ha21cfead50faafb3E"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hcd69089d35e1f843E"(%"std::io::error::Custom"* %p) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17hb56d9f3e7a4ff5feE"(%"std::io::error::Custom"* %p)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN79_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..path..Path$GT$$GT$6as_ref17hbbf76715b6b15f37E"(%"std::path::Path"* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %self.0, 0
  %1 = insertvalue { %"std::path::Path"*, i64 } %0, i64 %self.1, 1
  ret { %"std::path::Path"*, i64 } %1
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h7b271491e933e825E"({ i32*, i8* }* align 8 %self, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8*, align 8
  %_3 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = bitcast { i32*, i8* }* %self to i32**
  %_12 = load i32*, i32** %3, align 8, !nonnull !1, !align !13, !noundef !1
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %s.1, i64* %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %7 = load [0 x i8]*, [0 x i8]** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  %_6.0 = extractvalue { [0 x i8]*, i64 } %11, 0
  %_6.1 = extractvalue { [0 x i8]*, i64 } %11, 1
  br label %bb1

bb1:                                              ; preds = %start
  %12 = call i8* @_ZN3std2io5Write9write_all17h8264eb175e3e6a00E(i32* align 4 %_12, [0 x i8]* align 1 %_6.0, i64 %_6.1)
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
  invoke void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9842be98c6a3622bE"(i8** %16)
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
  %32 = load i8, i8* %2, align 1, !range !6, !noundef !1
  %33 = trunc i8 %32 to i1
  ret i1 %33
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h0e51b7daea98768bE"([0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %slice.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %slice.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: uwtable
define void @app_printf(%"core::ffi::c_str::CStr"* align 1 %fmt.0, i64 %fmt.1, %"core::fmt::Arguments"* %args) unnamed_addr #1 {
start:
  %_39 = alloca [1 x { i8*, i64* }], align 8
  %_32 = alloca %"core::fmt::Arguments", align 8
  %_30 = alloca i8*, align 8
  %_23 = alloca [1 x { i8*, i64* }], align 8
  %_16 = alloca %"core::fmt::Arguments", align 8
  %_14 = alloca i8*, align 8
  %_4 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  call void @_ZN4core3ffi5c_str4CStr6to_str17hea60223ec5ea4793E(%"core::result::Result<&str, core::str::error::Utf8Error>"* sret(%"core::result::Result<&str, core::str::error::Utf8Error>") %_4, %"core::ffi::c_str::CStr"* align 1 %fmt.0, i64 %fmt.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17he985572dca75029eE"(%"core::result::Result<&str, core::str::error::Utf8Error>"* %_4, [0 x i8]* align 1 bitcast (<{}>* @alloc66 to [0 x i8]*), i64 0)
  %fmt_str.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %fmt_str.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$9ends_with17hdd3888a3f5937f41E"([0 x i8]* align 1 %fmt_str.0, i64 %fmt_str.1, i32 10)
  br label %bb3

bb3:                                              ; preds = %bb2
  %1 = zext i1 %_8 to i8
  store i8 %1, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @_ZN10app_printf13START_OF_LINE17h7688011a3ea639f5E, i32 0, i32 0, i32 0), align 1
  %2 = load i32, i32* bitcast (<{ [4 x i8] }>* @_ZN10app_printf8CON_FILE17hd0c0b5f64d4d128fE to i32*), align 4
  %3 = sub i32 %2, -1
  %4 = icmp eq i32 %3, 0
  %_12 = select i1 %4, i64 0, i64 1
  %5 = icmp eq i64 %_12, 1
  br i1 %5, label %bb4, label %bb8

bb4:                                              ; preds = %bb3
  %6 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h74d70abc60e097f4E(%"core::fmt::Arguments"* align 8 %args)
  %_24.0 = extractvalue { i8*, i64* } %6, 0
  %_24.1 = extractvalue { i8*, i64* } %6, 1
  br label %bb5

bb8:                                              ; preds = %bb7, %bb3
  %7 = load i32, i32* bitcast (<{ [4 x i8] }>* @_ZN10app_printf8LOG_FILE17h26aa95a52def706bE to i32*), align 4
  %8 = sub i32 %7, -1
  %9 = icmp eq i32 %8, 0
  %_28 = select i1 %9, i64 0, i64 1
  %10 = icmp eq i64 %_28, 1
  br i1 %10, label %bb9, label %bb13

bb5:                                              ; preds = %bb4
  %11 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_23, i64 0, i64 0
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 0
  store i8* %_24.0, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 1
  store i64* %_24.1, i64** %13, align 8
  %_20.0 = bitcast [1 x { i8*, i64* }]* %_23 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h696734b3c45d6598E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc19 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_20.0, i64 1)
  br label %bb6

bb6:                                              ; preds = %bb5
  %14 = call i8* @_ZN3std2io5Write9write_fmt17hea42df662b3e1a19E(i32* align 4 bitcast (<{ [4 x i8] }>* @_ZN10app_printf8CON_FILE17hd0c0b5f64d4d128fE to i32*), %"core::fmt::Arguments"* %_16)
  store i8* %14, i8** %_14, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9842be98c6a3622bE"(i8** %_14)
  br label %bb8

bb9:                                              ; preds = %bb8
  %15 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h74d70abc60e097f4E(%"core::fmt::Arguments"* align 8 %args)
  %_40.0 = extractvalue { i8*, i64* } %15, 0
  %_40.1 = extractvalue { i8*, i64* } %15, 1
  br label %bb10

bb13:                                             ; preds = %bb12, %bb8
  ret void

bb10:                                             ; preds = %bb9
  %16 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_39, i64 0, i64 0
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 0
  store i8* %_40.0, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %16, i32 0, i32 1
  store i64* %_40.1, i64** %18, align 8
  %_36.0 = bitcast [1 x { i8*, i64* }]* %_39 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h696734b3c45d6598E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_32, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc19 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_36.0, i64 1)
  br label %bb11

bb11:                                             ; preds = %bb10
  %19 = call i8* @_ZN3std2io5Write9write_fmt17hea42df662b3e1a19E(i32* align 4 bitcast (<{ [4 x i8] }>* @_ZN10app_printf8LOG_FILE17h26aa95a52def706bE to i32*), %"core::fmt::Arguments"* %_32)
  store i8* %19, i8** %_30, align 8
  br label %bb12

bb12:                                             ; preds = %bb11
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9842be98c6a3622bE"(i8** %_30)
  br label %bb13
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_16 = alloca %"core::fmt::Arguments", align 8
  %_10 = alloca %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>", align 8
  %_7 = alloca %"core::result::Result<std::fs::File, std::io::error::Error>", align 8
  %_5 = alloca i32, align 4
  %_3 = alloca %"core::result::Result<std::fs::File, std::io::error::Error>", align 8
  %_1 = alloca i32, align 4
  call void @_ZN3std2fs4File6create17hd3e64c992787e6efE(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %_3, [0 x i8]* align 1 bitcast (<{ [18 x i8] }>* @alloc189 to [0 x i8]*), i64 18)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = call i32 @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd12c98282aebfb6aE"(%"core::result::Result<std::fs::File, std::io::error::Error>"* %_3, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc191 to %"core::panic::location::Location"*)), !range !12
  br label %bb2

bb2:                                              ; preds = %bb1
  store i32 %_2, i32* %_1, align 4
  invoke void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$std..fs..File$GT$$GT$17hf0b14623842a6238E"(i32* bitcast (<{ [4 x i8] }>* @_ZN10app_printf8CON_FILE17hd0c0b5f64d4d128fE to i32*))
          to label %bb11 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %1 = load i32, i32* %_1, align 4
  store i32 %1, i32* bitcast (<{ [4 x i8] }>* @_ZN10app_printf8CON_FILE17hd0c0b5f64d4d128fE to i32*), align 4
  br label %bb9

cleanup:                                          ; preds = %bb2
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb10

bb11:                                             ; preds = %bb2
  %7 = load i32, i32* %_1, align 4
  store i32 %7, i32* bitcast (<{ [4 x i8] }>* @_ZN10app_printf8CON_FILE17hd0c0b5f64d4d128fE to i32*), align 4
  call void @_ZN3std2fs4File6create17hd3e64c992787e6efE(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %_7, [0 x i8]* align 1 bitcast (<{ [14 x i8] }>* @alloc192 to [0 x i8]*), i64 14)
  br label %bb3

bb9:                                              ; preds = %bb12, %bb10
  %8 = bitcast { i8*, i32 }* %0 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb3:                                              ; preds = %bb11
  %_6 = call i32 @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd12c98282aebfb6aE"(%"core::result::Result<std::fs::File, std::io::error::Error>"* %_7, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc194 to %"core::panic::location::Location"*)), !range !12
  br label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_6, i32* %_5, align 4
  invoke void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$std..fs..File$GT$$GT$17hf0b14623842a6238E"(i32* bitcast (<{ [4 x i8] }>* @_ZN10app_printf8LOG_FILE17h26aa95a52def706bE to i32*))
          to label %bb13 unwind label %cleanup1

bb12:                                             ; preds = %cleanup1
  %14 = load i32, i32* %_5, align 4
  store i32 %14, i32* bitcast (<{ [4 x i8] }>* @_ZN10app_printf8LOG_FILE17h26aa95a52def706bE to i32*), align 4
  br label %bb9

cleanup1:                                         ; preds = %bb4
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb12

bb13:                                             ; preds = %bb4
  %20 = load i32, i32* %_5, align 4
  store i32 %20, i32* bitcast (<{ [4 x i8] }>* @_ZN10app_printf8LOG_FILE17h26aa95a52def706bE to i32*), align 4
  call void @_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17h1200c90ae36d5a17E(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* sret(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>") %_10, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc4 to [0 x i8]*), i64 12)
  br label %bb5

bb5:                                              ; preds = %bb13
  %21 = call { %"core::ffi::c_str::CStr"*, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hee29ec1d5ed52a2dE"(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* %_10, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc196 to %"core::panic::location::Location"*))
  %fmt.0 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %21, 0
  %fmt.1 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %21, 1
  br label %bb6

bb6:                                              ; preds = %bb5
  call void @_ZN4core3fmt9Arguments6new_v117h696734b3c45d6598E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc64 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc66 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb7

bb7:                                              ; preds = %bb6
  call void @app_printf(%"core::ffi::c_str::CStr"* align 1 %fmt.0, i64 %fmt.1, %"core::fmt::Arguments"* %_16)
  br label %bb8

bb8:                                              ; preds = %bb7
  ret void
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2fs11OpenOptions5_open17h0e3ad3dc10bbdff0E(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>"), %"std::fs::OpenOptions"* align 4, %"std::path::Path"* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2fs11OpenOptions3new17hbda300ef53f08e65E(%"std::fs::OpenOptions"* sret(%"std::fs::OpenOptions")) unnamed_addr #1

; Function Attrs: uwtable
declare align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions5write17h9e0c85648c320637E(%"std::fs::OpenOptions"* align 4, i1 zeroext) unnamed_addr #1

; Function Attrs: uwtable
declare align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions6create17h4db1e62c676d6014E(%"std::fs::OpenOptions"* align 4, i1 zeroext) unnamed_addr #1

; Function Attrs: uwtable
declare align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions8truncate17h706fc3bcfe62838dE(%"std::fs::OpenOptions"* align 4, i1 zeroext) unnamed_addr #1

; Function Attrs: uwtable
declare void @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17hd94b558b9f504037E"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>"), i32* align 4, [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt5write17hda8e8eb84b49cbfcE({}* align 1, [3 x i64]* align 8, %"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare i8 @_ZN3std3sys4unix17decode_error_kind17h93afa0014deda228E(i32) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2165ef06e41cd052E"(%"core::fmt::Arguments"* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b44b4137ae08b95E"(i8** align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare zeroext i1 @"_ZN76_$LT$core..ffi..c_str..FromBytesWithNulError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha415981aae704dc3E"({ i64, i64 }* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #7

; Function Attrs: uwtable
declare i32 @close(i32) unnamed_addr #1

; Function Attrs: uwtable
declare i32 @memcmp(i8*, i8*, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17hea60223ec5ea4793E(%"core::result::Result<&str, core::str::error::Utf8Error>"* sret(%"core::result::Result<&str, core::str::error::Utf8Error>"), %"core::ffi::c_str::CStr"* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17h1200c90ae36d5a17E(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* sret(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"), [0 x i8]* align 1, i64) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #8 = { noreturn }
attributes #9 = { noinline }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i64 0, i64 2}
!4 = !{i64 8}
!5 = !{i8 0, i8 41}
!6 = !{i8 0, i8 2}
!7 = !{i8 0, i8 42}
!8 = !{i8 0, i8 4}
!9 = !{i64 1, i64 -9223372036854775807}
!10 = !{i64 1, i64 0}
!11 = !{i32 0, i32 2}
!12 = !{i32 0, i32 -1}
!13 = !{i64 4}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_printf.rs.bc", hash: (2911407243, 3359879663, 1183799211, 2039868623, 2845651239))
^1 = gv: (name: "_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h93e3d4c72d434fc7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 120294055877686584
^2 = gv: (name: "_ZN4core3ptr88drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17h5276a8dd061061a1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 344261725086194015
^3 = gv: (name: "_ZN3std2io5error14repr_bitpacked14kind_from_prim17h14a3e5714eb09cd4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 213))) ; guid = 419716784004000209
^4 = gv: (name: "_ZN76_$LT$core..ffi..c_str..FromBytesWithNulError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha415981aae704dc3E") ; guid = 447033343874262851
^5 = gv: (name: "_ZN10app_printf13START_OF_LINE17h7688011a3ea639f5E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 484586930675860210
^6 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hc9f6ae962b951f24E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^16))))) ; guid = 485209836555620850
^7 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h0623d136129415f0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^201))))) ; guid = 513435393283283155
^8 = gv: (name: "_ZN4core3mem11size_of_val17hec400aecbbee09aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 526011051179666399
^9 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^10 = gv: (name: "close") ; guid = 694551982725885809
^11 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17he71168dfad17af8fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^6), (callee: ^101))))) ; guid = 768205551997110512
^12 = gv: (name: "alloc56", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 803804594793511197
^13 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^14 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h20997298d531c714E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^195))))) ; guid = 1018247993270358335
^15 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h7bf6ece6388a9f03E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^188), (callee: ^157))))) ; guid = 1125687470070941990
^16 = gv: (name: "_ZN4core3ptr8metadata8metadata17h8fb35c9adc0581b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 1125715967719551316
^17 = gv: (name: "_ZN3std2io5Write9write_all17h8264eb175e3e6a00E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 113, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^114), (callee: ^26), (callee: ^173), (callee: ^1), (callee: ^154), (callee: ^196), (callee: ^167), (callee: ^206)), refs: (^165, ^12, ^119, ^136)))) ; guid = 1148074235438244965
^18 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1168309116664082820
^19 = gv: (name: "_ZN3std3sys4unix6os_str5Slice13from_u8_slice17h522a2202369cd838E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14))) ; guid = 1227022259375566277
^20 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h818401c9b813c235E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1490569331336379022
^21 = gv: (name: "_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b44b4137ae08b95E") ; guid = 1554767068307508203
^22 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c6a91e5fa829c01E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^107))))) ; guid = 1802988075179220172
^23 = gv: (name: "_ZN3std3sys4unix17decode_error_kind17h93afa0014deda228E") ; guid = 1880844458205596798
^24 = gv: (name: "_ZN3std2io5error14repr_bitpacked4Repr4data17h97d98abdea52ae7cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^59))))) ; guid = 2022125029691695010
^25 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17he412ea7acbb62449E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 2192474285960119953
^26 = gv: (name: "_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17hd94b558b9f504037E") ; guid = 2195838735450565152
^27 = gv: (name: "alloc66", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2533853140834352395
^28 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2972016607904992504
^29 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0a4919ce08e1f7f6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3272220104039477607
^30 = gv: (name: "alloc194", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^116)))) ; guid = 3350669870051862688
^31 = gv: (name: "_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h0c7ba28ef191ecc4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^83), (callee: ^97), (callee: ^206)), refs: (^165)))) ; guid = 3500818109323612609
^32 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hc25a523302806ebfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^172))))) ; guid = 3646218729106129646
^33 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h7f39d3cae57f9afeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^129))))) ; guid = 3749764594292452931
^34 = gv: (name: "_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9842be98c6a3622bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^167))))) ; guid = 3784150532603388698
^35 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hcd69089d35e1f843E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^89))))) ; guid = 3826858566988530212
^36 = gv: (name: "alloc179", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^161)))) ; guid = 3869920903385185363
^37 = gv: (name: "alloc38", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^99)))) ; guid = 3889575166383410813
^38 = gv: (name: "alloc163", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^69)))) ; guid = 3997827024299531841
^39 = gv: (name: "_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_suffix_of17h605990844dae5f7dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^49), (callee: ^141))))) ; guid = 4036605118281420017
^40 = gv: (name: "_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h8e5e03f1e5f8cf08E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^67))))) ; guid = 4053435815139935482
^41 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hc2e010b249077924E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 4059000620586502810
^42 = gv: (name: "_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17h1200c90ae36d5a17E") ; guid = 4102306652219234034
^43 = gv: (name: "_ZN5alloc5alloc8box_free17hff03ad0395b78d08E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^46), (callee: ^183), (callee: ^171), (callee: ^108), (callee: ^191)), refs: (^165)))) ; guid = 4112181912434492994
^44 = gv: (name: "_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17haa855c808c9fe14dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^162))))) ; guid = 4119451752155910433
^45 = gv: (name: "_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0eab8648c5207a68E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^10))))) ; guid = 4195222834182224712
^46 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hc15ddc01d041eb3cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^150))))) ; guid = 4388763378310500451
^47 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h4639b98d462208dcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 4421308533351228929
^48 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^62)))) ; guid = 4453211033290314431
^49 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817hce02478a29eb6840E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^77), (callee: ^112))))) ; guid = 4465309757271209198
^50 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h01cf060d5d62a3dbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^180), (callee: ^146), (callee: ^197))))) ; guid = 4519581533068333679
^51 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4533508919843750260
^52 = gv: (name: "alloc64", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^199)))) ; guid = 4567204905801381955
^53 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^167, ^21)))) ; guid = 4611315631427078606
^54 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^55 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h09d07e1d0398e94aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^158), (callee: ^47))))) ; guid = 4672325507090143630
^56 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$9ends_with17hdd3888a3f5937f41E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^39))))) ; guid = 4789333236480198168
^57 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h2b9726d4dcabccc4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 4814105180202861104
^58 = gv: (name: "_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17h5b7f241c000866f3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 4932820900846671128
^59 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr17he78912d6c22c2323E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 86, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^188), (callee: ^152), (callee: ^110), (callee: ^3), (callee: ^15), (callee: ^78), (callee: ^58), (callee: ^29), (callee: ^86)), refs: (^165, ^38, ^186)))) ; guid = 5107860204980516831
^60 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17he985572dca75029eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42))) ; guid = 5206231962541849087
^61 = gv: (name: "_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2165ef06e41cd052E") ; guid = 5412852833668672798
^62 = gv: (name: "alloc44", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5508780163043766072
^63 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h9645eb236e0f3c25E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^128), (callee: ^137))))) ; guid = 5712232125274635511
^64 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5854803908594127693
^65 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hb245f2f2ff488267E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^125))))) ; guid = 6087648662705513696
^66 = gv: (name: "_ZN3std3ffi6os_str5OsStr10from_inner17h45f485f04e095950E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 6344707748371470366
^67 = gv: (name: "_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h40264316e526e2eaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^8), (callee: ^84), (callee: ^153))))) ; guid = 6396915635763608205
^68 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h1f16265975d640ffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^11), (callee: ^95))))) ; guid = 6450071824419962160
^69 = gv: (name: "alloc162", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6481437585054156631
^70 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h696734b3c45d6598E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^70), (callee: ^179)), refs: (^27, ^37, ^182)))) ; guid = 6487472553300181226
^71 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25c7bf101d6a8fc9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 6538586065179390963
^72 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^73 = gv: (name: "_ZN10app_printf8CON_FILE17hd0c0b5f64d4d128fE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 6783791710355237057
^74 = gv: (name: "_ZN4core3ptr76drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..fs..File$GT$$GT$17hefad052bcce69b60E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^34))))) ; guid = 6908095226109150462
^75 = gv: (name: "_ZN3std3sys4unix6os_str5Slice8from_str17h5c1a6214e73601e7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 21, calls: ((callee: ^19))))) ; guid = 6924219721847128548
^76 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h9620819bb112db65E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^145))))) ; guid = 7321351027242235547
^77 = gv: (name: "_ZN4core4char7methods15encode_utf8_raw17h88522f8ec777341aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 216, calls: ((callee: ^91), (callee: ^32), (callee: ^159), (callee: ^33), (callee: ^148), (callee: ^70), (callee: ^179)), refs: (^151, ^203, ^105, ^100)))) ; guid = 7371877083089213415
^78 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17h74a4d033da812ad8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 7405813079130018979
^79 = gv: (name: "_ZN3std4path77_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$str$GT$6as_ref17h185debae33f20390E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^160))))) ; guid = 7465350803321400127
^80 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hc325c796e9c27875E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^65)), refs: (^165)))) ; guid = 7557419780300582950
^81 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h42b10e885587883dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^127))))) ; guid = 7561399911220509492
^82 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6is_err17hf7f1026e5b529c26E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^126))))) ; guid = 7562015896735343431
^83 = gv: (name: "_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h99885cc922a75f8eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^132))))) ; guid = 7769285096237024303
^84 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h70455f1c15db6741E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 7808641257377793626
^85 = gv: (name: "_ZN3std2fs11OpenOptions8truncate17h706fc3bcfe62838dE") ; guid = 7974779870974361451
^86 = gv: (name: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h0c07fa02ce8a53f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^170))))) ; guid = 8196222548926607170
^87 = gv: (name: "_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hf7daecba15230d4fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^40))))) ; guid = 8218921903632687831
^88 = gv: (name: "_ZN4core3ptr60drop_in_place$LT$core..ffi..c_str..FromBytesWithNulError$GT$17he077ef2188f912e8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 8343943773941916653
^89 = gv: (name: "_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17hb56d9f3e7a4ff5feE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^80))))) ; guid = 8358035250429144613
^90 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E") ; guid = 8401561645110503840
^91 = gv: (name: "_ZN4core4char7methods8len_utf817h0ed5d6d68ddd25f1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 19))) ; guid = 8734729493140029249
^92 = gv: (name: "_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$std..fs..File$GT$$GT$17hf0b14623842a6238E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^198))))) ; guid = 8782869070010450223
^93 = gv: (name: "_ZN4core3fmt5write17hda8e8eb84b49cbfcE") ; guid = 8840068324628476335
^94 = gv: (name: "alloc189", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8969445774716509630
^95 = gv: (name: "_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E") ; guid = 9009382022939071342
^96 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h4316773830efbef3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^71), (callee: ^181))))) ; guid = 9061839913895192801
^97 = gv: (name: "_ZN5alloc5alloc8box_free17h317078e0445f2419E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^76), (callee: ^183), (callee: ^166), (callee: ^108), (callee: ^191)), refs: (^165)))) ; guid = 9119545326493893961
^98 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h74d70abc60e097f4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^20)), refs: (^61)))) ; guid = 9128127321000438230
^99 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9206791361553181412
^100 = gv: (name: "alloc177", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^106)))) ; guid = 9346701876573024416
^101 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h83124e64370848cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^176), (callee: ^55))))) ; guid = 9354313698540885158
^102 = gv: (name: "_ZN3std2fs4File6create17hd3e64c992787e6efE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^190), (callee: ^200), (callee: ^205), (callee: ^85), (callee: ^134), (callee: ^164)), refs: (^165)))) ; guid = 9460385554217468863
^103 = gv: (name: "_ZN4core3ffi5c_str4CStr6to_str17hea60223ec5ea4793E") ; guid = 9491922152028558655
^104 = gv: (name: "alloc184", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9714605179939315525
^105 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^118, ^28, ^64)))) ; guid = 9743840378641399660
^106 = gv: (name: "alloc176", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9991640667040143263
^107 = gv: (name: "_ZN4core3fmt5Write10write_char17hfb3b251316e04a32E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^49), (callee: ^177))))) ; guid = 10051296929662830577
^108 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hec6ffa8d002ac2d9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^81), (callee: ^181))))) ; guid = 10144938158628049589
^109 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^107, ^195, ^74, ^177)))) ; guid = 10172069204836910687
^110 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^111 = gv: (name: "alloc191", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^116)))) ; guid = 10267786169953647420
^112 = gv: (name: "_ZN4core3str8converts23from_utf8_unchecked_mut17hcfedd46768fa574fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 10686030810236056411
^113 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3dbe951874dd56daE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 10758596021590547371
^114 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17hb167d4d08323098dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 10767574653443840707
^115 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hd929d1cedd96eab3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 10840816868265513110
^116 = gv: (name: "alloc195", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10875221365225541498
^117 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^118 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11021458188691354264
^119 = gv: (name: "alloc54", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^192)))) ; guid = 11027290608802277762
^120 = gv: (name: "_ZN3std2fs11OpenOptions5_open17h0e3ad3dc10bbdff0E") ; guid = 11051774061196640197
^121 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h3b0d4d8be3791fbcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, calls: ((callee: ^196), (callee: ^87)), refs: (^36)))) ; guid = 11074331125817991174
^122 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^2, ^22, ^14, ^193)))) ; guid = 11107187011986490559
^123 = gv: (name: "_ZN79_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..path..Path$GT$$GT$6as_ref17hbbf76715b6b15f37E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 11202228175483443643
^124 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h36dfd60a45892ca4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 11348010597597832440
^125 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hbcc35e2ba5d6c33aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 11416115650386300004
^126 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17hc976edce79139c93E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 11431463430138940361
^127 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9478288ccde16b0bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 11450638927826195067
^128 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hc3f15774d482c110E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^25))))) ; guid = 11453237787422869110
^129 = gv: (name: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6a709caf37e5a708E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^50))))) ; guid = 11506909773543904435
^130 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^27, ^18)))) ; guid = 11538764408156268388
^131 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3ec51a21d6fd3bc0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^113), (callee: ^181))))) ; guid = 11539210999911711734
^132 = gv: (name: "_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h58a4310148227d80E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^43), (callee: ^206)), refs: (^165)))) ; guid = 11542084376479424928
^133 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17ha81a29f092dce1a3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^57))))) ; guid = 11738194494842620178
^134 = gv: (name: "_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17hdcadebc575a702beE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^79))))) ; guid = 11767128440670853395
^135 = gv: (name: "_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h6664aa7effb67ca5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^75), (callee: ^66))))) ; guid = 11820064830122479291
^136 = gv: (name: "alloc155", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^163)))) ; guid = 11857406345311114996
^137 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h6e871c14d1992d06E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 11896016391918550389
^138 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h4f40df62a3851f69E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 11909621060055164539
^139 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr17hfec5c779dd1f96afE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 86, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^188), (callee: ^152), (callee: ^110), (callee: ^3), (callee: ^15), (callee: ^78), (callee: ^35), (callee: ^29), (callee: ^144)), refs: (^165, ^38, ^186)))) ; guid = 11982049706359390584
^140 = gv: (name: "alloc170", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12005007265540232217
^141 = gv: (name: "_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$12is_suffix_of17h71e3d5bbeb4999f3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31, calls: ((callee: ^121))))) ; guid = 12428101653532881447
^142 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h8926761e7e2c8d27E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 12824377816631206252
^143 = gv: (name: "_ZN5alloc5alloc7dealloc17h3e7e14dac2872220E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^168), (callee: ^63), (callee: ^54))))) ; guid = 12824657220242162572
^144 = gv: (name: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17haa4ef6892ae589b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^133))))) ; guid = 12858709048172025658
^145 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h60a7b9c7b07fb21fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^71))))) ; guid = 13234425536784076112
^146 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h6f75b4a1f2732d02E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^7))))) ; guid = 13265320685866450318
^147 = gv: (name: "alloc192", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13365610939082424730
^148 = gv: (name: "_ZN4core3fmt10ArgumentV113new_upper_hex17ha2bbcb05e3c885c7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^124)), refs: (^90)))) ; guid = 13409748289345581110
^149 = gv: (name: "_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17h095303ae63bf432cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^155))))) ; guid = 13421292263547837821
^150 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h530e88550ed562d5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^113))))) ; guid = 13459532588985867784
^151 = gv: (name: "alloc173", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^106)))) ; guid = 13549900115774624266
^152 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h9aba1af0e59fe448E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 13626454227756332475
^153 = gv: (name: "memcmp") ; guid = 13767193220660627266
^154 = gv: (name: "_ZN3std2io5error5Error19from_static_message17h9a4c47b15b2c7fe2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^174))))) ; guid = 13883720590313988671
^155 = gv: (name: "_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17h078ab3515fab31feE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^185))))) ; guid = 13906395227792864414
^156 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hee29ec1d5ed52a2dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^117)), refs: (^165, ^202, ^104)))) ; guid = 13968684849741641244
^157 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb4dd112ee5809f6bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 14178950699131600577
^158 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hab6c5db2af664999E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 14230680382792275285
^159 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h5651ff741c820ab4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^41)), refs: (^13)))) ; guid = 14407900985594656629
^160 = gv: (name: "_ZN3std4path4Path3new17he53b29d921dbe3ccE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^135))))) ; guid = 14437975461896685235
^161 = gv: (name: "alloc178", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14501387965466822451
^162 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94c5bb3f3e4c5eedE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^139), (callee: ^178))))) ; guid = 14600432039377368858
^163 = gv: (name: "alloc154", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14660521658663794630
^164 = gv: (name: "_ZN3std2fs11OpenOptions4open17h88cee8dac2af0e3eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^169), (callee: ^120)), refs: (^165)))) ; guid = 14772216542383169624
^165 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^166 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h65de133268774e69E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^96), (callee: ^115))))) ; guid = 14827498160218483245
^167 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h206c7047db625ec7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^44))))) ; guid = 14858466270692993495
^168 = gv: (name: "_ZN4core5alloc6layout6Layout4size17hb5284bffecf27b4bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 14978506722006881231
^169 = gv: (name: "_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h67027b11c872b5c5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^123))))) ; guid = 15030325861485122776
^170 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h9f665e8463d69faaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^57))))) ; guid = 15108482978536104934
^171 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h5b9a3ab9a812120aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^131), (callee: ^115))))) ; guid = 15172972912869135574
^172 = gv: (name: "_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h0e51b7daea98768bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 15418315548361964737
^173 = gv: (name: "_ZN3std2io5error5Error4kind17h83ae50bf53d71387E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 37, calls: ((callee: ^24), (callee: ^23))))) ; guid = 15458459552806736553
^174 = gv: (name: "_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17he4b16d9ff1b409daE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^142))))) ; guid = 15794820417146451293
^175 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 63, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^102), (callee: ^184), (callee: ^92), (callee: ^42), (callee: ^156), (callee: ^70), (callee: ^187)), refs: (^165, ^94, ^111, ^73, ^147, ^30, ^207, ^51, ^189, ^27, ^52)))) ; guid = 15822663052811949562
^176 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hbb929624e324d5deE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 15909861259811182142
^177 = gv: (name: "_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h7b271491e933e825E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^17), (callee: ^34)), refs: (^165)))) ; guid = 15921886265672853998
^178 = gv: (name: "_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17ha21cfead50faafb3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^31))))) ; guid = 16004983153489363227
^179 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^180 = gv: (name: "_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E") ; guid = 16237673211549674151
^181 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h0d1b1308892cd8a3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 16388394555924181174
^182 = gv: (name: "alloc171", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^140)))) ; guid = 16465205771430893823
^183 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h18532ca503f1fac3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^138))))) ; guid = 16660870683317454621
^184 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd12c98282aebfb6aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^117), (callee: ^167), (callee: ^206)), refs: (^165, ^53, ^104)))) ; guid = 16820607066612770143
^185 = gv: (name: "_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17hfd22f7d0299cea58E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^45))))) ; guid = 16900830602677796660
^186 = gv: (name: "alloc164", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16921279872800409770
^187 = gv: (name: "app_printf", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 64, calls: ((callee: ^103), (callee: ^60), (callee: ^56), (callee: ^98), (callee: ^70), (callee: ^204), (callee: ^34)), refs: (^27, ^130, ^73, ^207, writeonly ^5)))) ; guid = 16953535324958187369
^188 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h8e02a4fd457d2d3eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 17266349151857169098
^189 = gv: (name: "alloc196", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^116)))) ; guid = 17291476975805463154
^190 = gv: (name: "_ZN3std2fs11OpenOptions3new17hbda300ef53f08e65E") ; guid = 17307161273710883078
^191 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hff8567e6c512c46fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^168), (callee: ^127), (callee: ^143))))) ; guid = 17339679100093669615
^192 = gv: (name: "alloc51", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17383920416681691158
^193 = gv: (name: "_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h1f7e603327a3635eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^177))))) ; guid = 17629978106565557887
^194 = gv: (name: "_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h701405129b07bcc3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 17707857169121022344
^195 = gv: (name: "_ZN4core3fmt5Write9write_fmt17h42f5e0206ee92856E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^93)), refs: (^122)))) ; guid = 17736188088404083524
^196 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h92109e9951a70df4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^68))))) ; guid = 17911566598158919002
^197 = gv: (name: "_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E") ; guid = 17978184489729322003
^198 = gv: (name: "_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17haaa8d082f4d713d6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^149))))) ; guid = 18002125207712774738
^199 = gv: (name: "alloc63", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18009229334316277986
^200 = gv: (name: "_ZN3std2fs11OpenOptions5write17h9e0c85648c320637E") ; guid = 18134135404552727454
^201 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hd30cd3bd871bf764E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 18148612609601170493
^202 = gv: (name: "vtable.3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^88, ^4)))) ; guid = 18227004298776230297
^203 = gv: (name: "alloc175", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^106)))) ; guid = 18281212861681350249
^204 = gv: (name: "_ZN3std2io5Write9write_fmt17hea42df662b3e1a19E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 73, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^93), (callee: ^74), (callee: ^82), (callee: ^154), (callee: ^206), (callee: ^34)), refs: (^165, ^109, ^48)))) ; guid = 18318886322317991359
^205 = gv: (name: "_ZN3std2fs11OpenOptions6create17h4db1e62c676d6014E") ; guid = 18342185711064385050
^206 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^207 = gv: (name: "_ZN10app_printf8LOG_FILE17h26aa95a52def706bE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 18425299898949554311
^208 = blockcount: 613
