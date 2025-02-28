; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_rangeset2bitset.rs.bc'
source_filename = "opng_rangeset2bitset.af78c96f-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::ffi::c_str::CStr" = type { [0 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>" = type { i64, [2 x i64] }
%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>::Ok" = type { [1 x i64], { %"core::ffi::c_str::CStr"*, i64 } }
%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>::Err" = type { [1 x i64], { i64, i64 } }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc29 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc30 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc29, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc32 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc50 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc51 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc50, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ({ i64, i64 }*)* @"_ZN4core3ptr60drop_in_place$LT$core..ffi..c_str..FromBytesWithNulError$GT$17hdeec160683436fadE" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i64, i64 }*, %"core::fmt::Formatter"*)* @"_ZN76_$LT$core..ffi..c_str..FromBytesWithNulError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha415981aae704dc3E" to i8*) }>, align 8
@alloc1 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"example\00" }>, align 1
@alloc55 = private unnamed_addr constant <{ [32 x i8] }> <{ [32 x i8] c"CStr::from_bytes_with_nul failed" }>, align 1
@alloc56 = private unnamed_addr constant <{ [102 x i8] }> <{ [102 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_rangeset2bitset.rs" }>, align 1
@alloc57 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [102 x i8] }>, <{ [102 x i8] }>* @alloc56, i32 0, i32 0, i32 0), [16 x i8] c"f\00\00\00\00\00\00\00.\00\00\00=\00\00\00" }>, align 8
@alloc18 = private unnamed_addr constant <{ [24 x i8] }> <{ [24 x i8] c"Error occurred: errno = " }>, align 1
@alloc24 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc19 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [24 x i8] }>, <{ [24 x i8] }>* @alloc18, i32 0, i32 0, i32 0), [8 x i8] c"\18\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc22 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"Success! Bitset: " }>, align 1
@alloc23 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [17 x i8] }>, <{ [17 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [8 x i8] c"\11\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hc9fd965477d98ef6E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %_5 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hafb46afaa9674783E"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_5, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17he78d31433827e104E(i8* %2, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h0e1ee4203e5dc919E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = bitcast { i64, i64 }* %_3 to i64*
  store i64 0, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %self, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hc9fd965477d98ef6E"(i64 %3, i64 %5, [0 x i8]* %slice.0, i64 %slice.1)
  %7 = extractvalue { [0 x i8]*, i64 } %6, 0
  %8 = extractvalue { [0 x i8]*, i64 } %6, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  ret { [0 x i8]*, i64 } %10
}

; Function Attrs: inlinehint uwtable
define { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core10intrinsics17const_eval_select17hddee8a820362fe15E(i8* align 1 %arg.0, i64 %arg.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast i8* %arg.0 to [0 x i8]*
  %2 = invoke { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ops8function6FnOnce9call_once17ha1623493a2426127E([0 x i8]* align 1 %1, i64 %arg.1)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb1:                                              ; preds = %start
  %8 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %2, 0
  %9 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %2, 1
  br label %bb2

bb4:                                              ; preds = %bb3
  %10 = bitcast { i8*, i32 }* %0 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb2:                                              ; preds = %bb1
  %16 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %8, 0
  %17 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %16, i64 %9, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %17
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ffi5c_str4CStr17to_bytes_with_nul17h6a195595ee268117E(%"core::ffi::c_str::CStr"* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_4.0 = bitcast %"core::ffi::c_str::CStr"* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked17h9d0d2ebc37806691E([0 x i8]* align 1 %bytes.0, i64 %bytes.1) unnamed_addr #0 {
start:
  %_2 = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %bytes.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %bytes.1, i64* %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !nonnull !1, !align !2, !noundef !1
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core10intrinsics17const_eval_select17hddee8a820362fe15E(i8* align 1 %4, i64 %6)
  %8 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %7, 0
  %9 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %8, 0
  %11 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %10, i64 %9, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %11
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4core3ffi5c_str4CStr6as_ptr17hcfeb40e1c1423da3E(%"core::ffi::c_str::CStr"* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast %"core::ffi::c_str::CStr"* %self.0 to [0 x i8]*
  %0 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h37cf68bfc43e3993E"([0 x i8]* align 1 %_2.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17h744a1f3e497f8203E(i8* %ptr) unnamed_addr #0 {
start:
  %len = call i64 @strlen(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %_9 = add i64 %len, 1
  %0 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h219fbc971329349fE(i8* %ptr, i64 %_9)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked17h9d0d2ebc37806691E([0 x i8]* align 1 %_7.0, i64 %_7.1)
  %2 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %1, 0
  %3 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %2, 0
  %5 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %4, i64 %3, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ffi5c_str4CStr8to_bytes17hbdc3adfb50a13ddaE(%"core::ffi::c_str::CStr"* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_5 = alloca i64, align 8
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ffi5c_str4CStr17to_bytes_with_nul17h6a195595ee268117E(%"core::ffi::c_str::CStr"* align 1 %self.0, i64 %self.1)
  %bytes.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %bytes.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = sub i64 %bytes.1, 1
  store i64 %_6, i64* %_5, align 8
  %1 = load i64, i64* %_5, align 8
  %2 = call { [0 x i8]*, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17h974f1a232bfef1c4E"([0 x i8]* align 1 %bytes.0, i64 %bytes.1, i64 %1)
  %3 = extractvalue { [0 x i8]*, i64 } %2, 0
  %4 = extractvalue { [0 x i8]*, i64 } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %3, 0
  %6 = insertvalue { [0 x i8]*, i64 } %5, i64 %4, 1
  ret { [0 x i8]*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h50940f5afb6f78a8E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hc1aff76e079ddb0fE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h51d1725681cab92bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17he9dbbc711f297c9cE(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h9e80a43c0b20b8bbE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h9e80a43c0b20b8bbE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hc1aff76e079ddb0fE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define internal void @_ZN4core3fmt9Arguments6new_v117ha7ded79fc1d392a8E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !3, !noundef !1
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
  call void @_ZN4core3fmt9Arguments6new_v117ha7ded79fc1d392a8E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc30 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc32 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc51 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ops8function6FnOnce9call_once17ha1623493a2426127E([0 x i8]* align 1 %0, i64 %1) unnamed_addr #0 {
start:
  %_2 = alloca { i8*, i64 }, align 8
  %2 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %5, i32 0, i32 0
  %7 = load [0 x i8]*, [0 x i8]** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %5, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked7rt_impl17he2e3e977306ccfd4E([0 x i8]* align 1 %7, i64 %9)
  %11 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %10, 0
  %12 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %start
  %13 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %11, 0
  %14 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %13, i64 %12, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %14
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17he78d31433827e104E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hb137e9d5266294e6E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hc59f4cb20b92075cE({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr60drop_in_place$LT$core..ffi..c_str..FromBytesWithNulError$GT$17hdeec160683436fadE"({ i64, i64 }* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hc59f4cb20b92075cE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hb137e9d5266294e6E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hafb46afaa9674783E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17h974f1a232bfef1c4E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h0e1ee4203e5dc919E"(i64 %index, [0 x i8]* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_3.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_3.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h37cf68bfc43e3993E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h78f7d63100990d02E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = icmp eq i64 %self.1, 0
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h219fbc971329349fE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17he78d31433827e104E(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { %"core::ffi::c_str::CStr"*, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h68c5eb8ccc38e2baE"(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* %self, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %e = alloca { i64, i64 }, align 8
  %2 = bitcast %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* %self to i64*
  %_3 = load i64, i64* %2, align 8, !range !5, !noundef !1
  switch i64 %_3, label %bb2 [
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
  %12 = load i64, i64* %11, align 8, !range !5, !noundef !1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %_7.0 = bitcast { i64, i64 }* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*), %"core::panic::location::Location"* align 8 %0) #4
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

; Function Attrs: uwtable
define { i32, i64 } @opng_rangeset_string_to_bitset(%"core::ffi::c_str::CStr"* align 1 %input.0, i64 %input.1) unnamed_addr #1 {
start:
  %0 = alloca { i32, i64 }, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ffi5c_str4CStr8to_bytes17hbdc3adfb50a13ddaE(%"core::ffi::c_str::CStr"* align 1 %input.0, i64 %input.1)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i32, i64 }* %0 to i32*
  store i32 0, i32* %2, align 8
  %3 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %0, i32 0, i32 1
  store i64 %_4.1, i64* %3, align 8
  %4 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %0, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i32, i64 } undef, i32 %5, 0
  %9 = insertvalue { i32, i64 } %8, i64 %7, 1
  ret { i32, i64 } %9
}

; Function Attrs: uwtable
define { %"core::ffi::c_str::CStr"*, i64 } @opng_strltrim(%"core::ffi::c_str::CStr"* align 1 %input.0, i64 %input.1) unnamed_addr #1 {
start:
  %0 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %input.0, 0
  %1 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %0, i64 %input.1, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %1
}

; Function Attrs: uwtable
define { i32, i32 } @opng_rangeset2bitset(i32* align 4 %out_val, %"core::ffi::c_str::CStr"* align 1 %in_str.0, i64 %in_str.1) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %_13 = alloca i8, align 1
  %1 = alloca { i32, i32 }, align 4
  %2 = call { i32, i64 } @opng_rangeset_string_to_bitset(%"core::ffi::c_str::CStr"* align 1 %in_str.0, i64 %in_str.1)
  %_5.0 = extractvalue { i32, i64 } %2, 0
  %_5.1 = extractvalue { i32, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  store i32 %_5.0, i32* %out_val, align 4
  %_10 = call i8* @_ZN4core3ffi5c_str4CStr6as_ptr17hcfeb40e1c1423da3E(%"core::ffi::c_str::CStr"* align 1 %in_str.0, i64 %in_str.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = getelementptr inbounds i8, i8* %_10, i64 %_5.1
  store i8* %3, i8** %0, align 8
  %4 = load i8*, i8** %0, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17h744a1f3e497f8203E(i8* %4)
  %trimmed_str.0 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %5, 0
  %trimmed_str.1 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %5, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %6 = icmp eq i64 %_5.1, 0
  br i1 %6, label %bb5, label %bb6

bb5:                                              ; preds = %bb4
  store i8 1, i8* %_13, align 1
  br label %bb7

bb6:                                              ; preds = %bb4
  %7 = call { [0 x i8]*, i64 } @_ZN4core3ffi5c_str4CStr8to_bytes17hbdc3adfb50a13ddaE(%"core::ffi::c_str::CStr"* align 1 %trimmed_str.0, i64 %trimmed_str.1)
  %_18.0 = extractvalue { [0 x i8]*, i64 } %7, 0
  %_18.1 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb8

bb8:                                              ; preds = %bb6
  %_16 = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h78f7d63100990d02E"([0 x i8]* align 1 %_18.0, i64 %_18.1)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_15 = xor i1 %_16, true
  %8 = zext i1 %_15 to i8
  store i8 %8, i8* %_13, align 1
  br label %bb7

bb7:                                              ; preds = %bb9, %bb5
  %9 = load i8, i8* %_13, align 1, !range !3, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb10, label %bb11

bb11:                                             ; preds = %bb7
  %11 = bitcast { i32, i32 }* %1 to i32*
  store i32 0, i32* %11, align 4
  br label %bb12

bb10:                                             ; preds = %bb7
  %12 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  store i32 22, i32* %12, align 4
  %13 = bitcast { i32, i32 }* %1 to i32*
  store i32 1, i32* %13, align 4
  br label %bb12

bb12:                                             ; preds = %bb10, %bb11
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 4, !range !6, !noundef !1
  %16 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = insertvalue { i32, i32 } undef, i32 %15, 0
  %19 = insertvalue { i32, i32 } %18, i32 %17, 1
  ret { i32, i32 } %19
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_36 = alloca [1 x { i8*, i64* }], align 8
  %_29 = alloca %"core::fmt::Arguments", align 8
  %errno = alloca i32, align 4
  %_23 = alloca [1 x { i8*, i64* }], align 8
  %_16 = alloca %"core::fmt::Arguments", align 8
  %_9 = alloca { i32, i32 }, align 4
  %out_val = alloca i32, align 4
  %_2 = alloca %"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>", align 8
  %input_str = alloca { %"core::ffi::c_str::CStr"*, i64 }, align 8
  call void @_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17h1200c90ae36d5a17E(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* sret(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>") %_2, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc1 to [0 x i8]*), i64 8)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { %"core::ffi::c_str::CStr"*, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h68c5eb8ccc38e2baE"(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* %_2, [0 x i8]* align 1 bitcast (<{ [32 x i8] }>* @alloc55 to [0 x i8]*), i64 32, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc57 to %"core::panic::location::Location"*))
  store { %"core::ffi::c_str::CStr"*, i64 } %0, { %"core::ffi::c_str::CStr"*, i64 }* %input_str, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  store i32 0, i32* %out_val, align 4
  %1 = getelementptr inbounds { %"core::ffi::c_str::CStr"*, i64 }, { %"core::ffi::c_str::CStr"*, i64 }* %input_str, i32 0, i32 0
  %_42.0 = load %"core::ffi::c_str::CStr"*, %"core::ffi::c_str::CStr"** %1, align 8, !nonnull !1, !align !2, !noundef !1
  %2 = getelementptr inbounds { %"core::ffi::c_str::CStr"*, i64 }, { %"core::ffi::c_str::CStr"*, i64 }* %input_str, i32 0, i32 1
  %_42.1 = load i64, i64* %2, align 8
  %3 = call { i32, i32 } @opng_rangeset2bitset(i32* align 4 %out_val, %"core::ffi::c_str::CStr"* align 1 %_42.0, i64 %_42.1)
  store { i32, i32 } %3, { i32, i32 }* %_9, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = bitcast { i32, i32 }* %_9 to i32*
  %5 = load i32, i32* %4, align 4, !range !6, !noundef !1
  %_14 = zext i32 %5 to i64
  switch i64 %_14, label %bb5 [
    i64 0, label %bb6
    i64 1, label %bb4
  ]

bb5:                                              ; preds = %bb3
  unreachable

bb6:                                              ; preds = %bb3
  %6 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h50940f5afb6f78a8E(i32* align 4 %out_val)
  %_24.0 = extractvalue { i8*, i64* } %6, 0
  %_24.1 = extractvalue { i8*, i64* } %6, 1
  br label %bb7

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_9, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %errno, align 4
  %9 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17he9dbbc711f297c9cE(i32* align 4 %errno)
  %_37.0 = extractvalue { i8*, i64* } %9, 0
  %_37.1 = extractvalue { i8*, i64* } %9, 1
  br label %bb9

bb9:                                              ; preds = %bb4
  %10 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_36, i64 0, i64 0
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 0
  store i8* %_37.0, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 1
  store i64* %_37.1, i64** %12, align 8
  %_33.0 = bitcast [1 x { i8*, i64* }]* %_36 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117ha7ded79fc1d392a8E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_29, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc19 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_33.0, i64 1)
  br label %bb10

bb10:                                             ; preds = %bb9
  call void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"* %_29)
  br label %bb11

bb11:                                             ; preds = %bb8, %bb10
  ret void

bb7:                                              ; preds = %bb6
  %13 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_23, i64 0, i64 0
  %14 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 0
  store i8* %_24.0, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 1
  store i64* %_24.1, i64** %15, align 8
  %_20.0 = bitcast [1 x { i8*, i64* }]* %_23 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117ha7ded79fc1d392a8E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc23 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_20.0, i64 1)
  br label %bb8

bb8:                                              ; preds = %bb7
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_16)
  br label %bb11
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: uwtable
declare i64 @strlen(i8*) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h51d1725681cab92bE"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked7rt_impl17he2e3e977306ccfd4E([0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN76_$LT$core..ffi..c_str..FromBytesWithNulError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha415981aae704dc3E"({ i64, i64 }* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: uwtable
declare void @_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17h1200c90ae36d5a17E(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"* sret(%"core::result::Result<&core::ffi::c_str::CStr, core::ffi::c_str::FromBytesWithNulError>"), [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}
!5 = !{i64 0, i64 2}
!6 = !{i32 0, i32 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_rangeset2bitset.rs.bc", hash: (2201558981, 114603061, 200759672, 2713773854, 3439470901))
^1 = gv: (name: "alloc51", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^23)))) ; guid = 34754620858961026
^2 = gv: (name: "_ZN76_$LT$core..ffi..c_str..FromBytesWithNulError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha415981aae704dc3E") ; guid = 447033343874262851
^3 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17he78d31433827e104E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^24), (callee: ^21))))) ; guid = 1310521409596324108
^4 = gv: (name: "_ZN4core3ffi5c_str4CStr8from_ptr17h744a1f3e497f8203E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^5), (callee: ^49), (callee: ^34))))) ; guid = 2167825508573146627
^5 = gv: (name: "strlen") ; guid = 2965136410638013299
^6 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h9e80a43c0b20b8bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 3096917750405100620
^7 = gv: (name: "_ZN4core10intrinsics17const_eval_select17hddee8a820362fe15E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^54)), refs: (^43)))) ; guid = 4071640234523899551
^8 = gv: (name: "_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17h1200c90ae36d5a17E") ; guid = 4102306652219234034
^9 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4270999884677470985
^10 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4296462585531714742
^11 = gv: (name: "alloc57", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 5230320606971675940
^12 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h37cf68bfc43e3993E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 5284035171345563351
^13 = gv: (name: "opng_rangeset_string_to_bitset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^36))))) ; guid = 5781159874445334853
^14 = gv: (name: "alloc32", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5807164397706469812
^15 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h50940f5afb6f78a8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^26)), refs: (^44)))) ; guid = 6353449835564245971
^16 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^17 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9, ^19)))) ; guid = 6968659567905409553
^18 = gv: (name: "opng_rangeset2bitset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 50, calls: ((callee: ^13), (callee: ^48), (callee: ^4), (callee: ^36), (callee: ^22))))) ; guid = 7129638672059158509
^19 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7195851586232921370
^20 = gv: (name: "alloc55", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7427623760383257960
^21 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hc59f4cb20b92075cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 7620913834405026298
^22 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h78f7d63100990d02E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 7845684493126551870
^23 = gv: (name: "alloc50", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8513629990734269576
^24 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hb137e9d5266294e6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 8569174140425230872
^25 = gv: (name: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h0e1ee4203e5dc919E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^31))))) ; guid = 8749171360365243465
^26 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hc1aff76e079ddb0fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 8823893376260778180
^27 = gv: (name: "_ZN4core3ffi5c_str4CStr17to_bytes_with_nul17h6a195595ee268117E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 8947921719922854722
^28 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hafb46afaa9674783E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 9164814248483683413
^29 = gv: (name: "alloc56", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9168903172118207522
^30 = gv: (name: "_ZN4core3fmt9Arguments6new_v117ha7ded79fc1d392a8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^30), (callee: ^47)), refs: (^14, ^33, ^1)))) ; guid = 9510185567285427903
^31 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hc9fd965477d98ef6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^28), (callee: ^3))))) ; guid = 10652197497692579964
^32 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^33 = gv: (name: "alloc30", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 11420304340022617336
^34 = gv: (name: "_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked17h9d0d2ebc37806691E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 17, calls: ((callee: ^7))))) ; guid = 11584749891110031387
^35 = gv: (name: "alloc1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11942876632595240413
^36 = gv: (name: "_ZN4core3ffi5c_str4CStr8to_bytes17hbdc3adfb50a13ddaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 15, calls: ((callee: ^27), (callee: ^42))))) ; guid = 11970821081235419804
^37 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^38 = gv: (name: "_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked7rt_impl17he2e3e977306ccfd4E") ; guid = 13418657139553215595
^39 = gv: (name: "_ZN4core3ptr60drop_in_place$LT$core..ffi..c_str..FromBytesWithNulError$GT$17hdeec160683436fadE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13609892176993754686
^40 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^39, ^2)))) ; guid = 13671287542546177675
^41 = gv: (name: "opng_strltrim", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 13868559898821151745
^42 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17h974f1a232bfef1c4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^25))))) ; guid = 14344691635053735070
^43 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^44 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h51d1725681cab92bE") ; guid = 15262257252216737227
^45 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17he9dbbc711f297c9cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^6)), refs: (^37)))) ; guid = 15461984233679023369
^46 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 59, calls: ((callee: ^8), (callee: ^53), (callee: ^18), (callee: ^15), (callee: ^45), (callee: ^30), (callee: ^51), (callee: ^50)), refs: (^35, ^11, ^20, ^17, ^55)))) ; guid = 15822663052811949562
^47 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^48 = gv: (name: "_ZN4core3ffi5c_str4CStr6as_ptr17hcfeb40e1c1423da3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^12))))) ; guid = 17279521973608149760
^49 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17h219fbc971329349fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^3))))) ; guid = 17456457887999962003
^50 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^51 = gv: (name: "_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE") ; guid = 17906690583868548313
^52 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18012443707182933510
^53 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17h68c5eb8ccc38e2baE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^32)), refs: (^43, ^40)))) ; guid = 18163989285228304472
^54 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17ha1623493a2426127E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18, calls: ((callee: ^38))))) ; guid = 18203084667922683346
^55 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^19, ^52)))) ; guid = 18317027278733328153
^56 = blockcount: 92
