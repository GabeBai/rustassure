; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zerror.rs.bc'
source_filename = "zerror.b4e78c69-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::ffi::c_str::CStr" = type { [0 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::result::Result<&str, core::str::error::Utf8Error>" = type { i64, [2 x i64] }
%"core::str::error::Utf8Error" = type { i64, { i8, i8 }, [6 x i8] }
%"core::result::Result<&str, core::str::error::Utf8Error>::Ok" = type { [1 x i64], { [0 x i8]*, i64 } }
%"core::result::Result<&str, core::str::error::Utf8Error>::Err" = type { [1 x i64], %"core::str::error::Utf8Error" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc70 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc71 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc70, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc102 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc91 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc92 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc91, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@libzahl_error = external global i32
@alloc93 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"Unknown error" }>, align 1
@alloc100 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zerror.rs" }>, align 1
@alloc95 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc100, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00&\00\00\00\1B\00\00\00" }>, align 8
@str.0 = internal constant [31 x i8] c"attempt to negate with overflow"
@alloc96 = private unnamed_addr constant <{ [29 x i8] }> <{ [29 x i8] c"argument must be non-negative" }>, align 1
@alloc97 = private unnamed_addr constant <{ [31 x i8] }> <{ [31 x i8] c"undefined result: division by 0" }>, align 1
@alloc98 = private unnamed_addr constant <{ [34 x i8] }> <{ [34 x i8] c"indeterminate form: 0 divided by 0" }>, align 1
@alloc99 = private unnamed_addr constant <{ [35 x i8] }> <{ [35 x i8] c"indeterminate form: 0:th power of 0" }>, align 1
@alloc101 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc100, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\000\00\00\00\0F\00\00\00" }>, align 8
@alloc39 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"Error: " }>, align 1
@alloc41 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c", Description: " }>, align 1
@alloc42 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc40 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [7 x i8] }>, <{ [7 x i8] }>* @alloc39, i32 0, i32 0, i32 0), [8 x i8] c"\07\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [8 x i8] c"\0F\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc42, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc103 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"InvalidRadix" }>, align 1
@alloc104 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Negative" }>, align 1
@alloc105 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Div0" }>, align 1
@alloc106 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Pow0" }>, align 1
@alloc107 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"ErrnoSet" }>, align 1

; Function Attrs: uwtable
define zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h38dd4b2cb8a250dbE"({ [0 x i8]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !2, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core10intrinsics17const_eval_select17h0183c12c8c1fe2f7E(i8* align 1 %arg.0, i64 %arg.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast i8* %arg.0 to [0 x i8]*
  %2 = invoke { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ops8function6FnOnce9call_once17h3e94635523fea8c9E([0 x i8]* align 1 %1, i64 %arg.1)
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
define internal { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked17hc5c759002256878dE([0 x i8]* align 1 %bytes.0, i64 %bytes.1) unnamed_addr #1 {
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
  %7 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core10intrinsics17const_eval_select17h0183c12c8c1fe2f7E(i8* align 1 %4, i64 %6)
  %8 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %7, 0
  %9 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %8, 0
  %11 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %10, i64 %9, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %11
}

; Function Attrs: inlinehint uwtable
define internal { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17hf646514ffc95fbfaE(i8* %ptr) unnamed_addr #1 {
start:
  %len = call i64 @strlen(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %_9 = add i64 %len, 1
  %0 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h35ad0a45ea4379eeE(i8* %ptr, i64 %_9)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked17hc5c759002256878dE([0 x i8]* align 1 %_7.0, i64 %_7.1)
  %2 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %1, 0
  %3 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %2, 0
  %5 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %4, i64 %3, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h925fd52e0e91bccdE({ [0 x i8]*, i64 }* align 8 %x) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h89a58291684013fcE({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h38dd4b2cb8a250dbE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h89a58291684013fcE({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f) unnamed_addr #1 {
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17ha879925778b63986E(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* %f) unnamed_addr #1 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i8*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i8* %x to %"core::fmt::Opaque"*
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17h0c79fb817a814c33E(i8* align 1 %x) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17ha879925778b63986E(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* @"_ZN51_$LT$zerror..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb81b5143e8cfee00E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h3c5b469ec9ac1bfbE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #1 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h3c5b469ec9ac1bfbE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc71 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc102 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc92 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ops8function6FnOnce9call_once17h3e94635523fea8c9E([0 x i8]* align 1 %0, i64 %1) unnamed_addr #1 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h3ac53291f0043d18E(i8* %data, i64 %len) unnamed_addr #1 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hcf30192e0797b7e6E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h2da7b00bb90d79d1E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h2da7b00bb90d79d1E({}* %data_address, i64 %metadata) unnamed_addr #1 {
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
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hcf30192e0797b7e6E"(i8* %self) unnamed_addr #1 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h35ad0a45ea4379eeE(i8* %data, i64 %len) unnamed_addr #1 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h3ac53291f0043d18E(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17hbd00db526ea52b91E"(%"core::result::Result<&str, core::str::error::Utf8Error>"* %self, [0 x i8]* align 1 %default.0, i64 %default.1) unnamed_addr #1 {
start:
  %_6 = alloca i8, align 1
  %e = alloca %"core::str::error::Utf8Error", align 8
  %0 = alloca { [0 x i8]*, i64 }, align 8
  store i8 1, i8* %_6, align 1
  %1 = bitcast %"core::result::Result<&str, core::str::error::Utf8Error>"* %self to i64*
  %_3 = load i64, i64* %1, align 8, !range !5, !noundef !1
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
  %14 = load i8, i8* %_6, align 1, !range !3, !noundef !1
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
define i8 @zerror(i64* align 8 %0) unnamed_addr #0 {
start:
  %_19 = alloca { [0 x i8]*, i64 }, align 8
  %_13 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %1 = alloca i8, align 1
  %desc = alloca i64*, align 8
  store i64* %0, i64** %desc, align 8
  %_3 = load i32, i32* @libzahl_error, align 4
  %_2 = icmp sge i32 %_3, 0
  br i1 %_2, label %bb1, label %bb8

bb8:                                              ; preds = %start
  %2 = bitcast i64** %desc to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_17 = select i1 %4, i64 0, i64 1
  %5 = icmp eq i64 %_17, 1
  br i1 %5, label %bb9, label %bb17

bb1:                                              ; preds = %start
  %6 = bitcast i64** %desc to {}**
  %7 = load {}*, {}** %6, align 8
  %8 = icmp eq {}* %7, null
  %_5 = select i1 %8, i64 0, i64 1
  %9 = icmp eq i64 %_5, 1
  br i1 %9, label %bb2, label %bb7

bb2:                                              ; preds = %bb1
  %10 = bitcast i64** %desc to { [0 x i8]*, i64 }**
  %desc1 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %10, align 8, !nonnull !1, !align !4, !noundef !1
  %_9 = load i32, i32* @libzahl_error, align 4
  %_8 = call i8* @strerror(i32 %_9)
  br label %bb3

bb7:                                              ; preds = %bb6, %bb1
  store i8 0, i8* %1, align 1
  br label %bb24

bb3:                                              ; preds = %bb2
  %11 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17hf646514ffc95fbfaE(i8* %_8)
  %err_str.0 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %11, 0
  %err_str.1 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %11, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core3ffi5c_str4CStr6to_str17hea60223ec5ea4793E(%"core::result::Result<&str, core::str::error::Utf8Error>"* sret(%"core::result::Result<&str, core::str::error::Utf8Error>") %_13, %"core::ffi::c_str::CStr"* align 1 %err_str.0, i64 %err_str.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %12 = call { [0 x i8]*, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17hbd00db526ea52b91E"(%"core::result::Result<&str, core::str::error::Utf8Error>"* %_13, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc93 to [0 x i8]*), i64 13)
  %_12.0 = extractvalue { [0 x i8]*, i64 } %12, 0
  %_12.1 = extractvalue { [0 x i8]*, i64 } %12, 1
  br label %bb6

bb6:                                              ; preds = %bb5
  %13 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %desc1, i32 0, i32 0
  store [0 x i8]* %_12.0, [0 x i8]** %13, align 8
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %desc1, i32 0, i32 1
  store i64 %_12.1, i64* %14, align 8
  br label %bb7

bb24:                                             ; preds = %bb23, %bb22, %bb21, %bb20, %bb7
  %15 = load i8, i8* %1, align 1, !range !6, !noundef !1
  ret i8 %15

bb9:                                              ; preds = %bb8
  %16 = bitcast i64** %desc to { [0 x i8]*, i64 }**
  %desc2 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %16, align 8, !nonnull !1, !align !4, !noundef !1
  %_21 = load i32, i32* @libzahl_error, align 4
  %_23 = icmp eq i32 %_21, -2147483648
  %17 = call i1 @llvm.expect.i1(i1 %_23, i1 false)
  br i1 %17, label %panic, label %bb10

bb17:                                             ; preds = %bb16, %bb8
  %_30 = load i32, i32* @libzahl_error, align 4
  %_32 = icmp eq i32 %_30, -2147483648
  %18 = call i1 @llvm.expect.i1(i1 %_32, i1 false)
  br i1 %18, label %panic3, label %bb18

bb10:                                             ; preds = %bb9
  %_20 = sub i32 0, %_21
  switch i32 %_20, label %bb11 [
    i32 1, label %bb12
    i32 2, label %bb13
    i32 3, label %bb14
    i32 4, label %bb15
  ]

panic:                                            ; preds = %bb9
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([31 x i8]* @str.0 to [0 x i8]*), i64 31, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc95 to %"core::panic::location::Location"*)) #7
  unreachable

bb11:                                             ; preds = %bb10
  call void @_ZN3std7process5abort17hbfbd791ff32f7241E() #7
  unreachable

bb12:                                             ; preds = %bb10
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [35 x i8] }>* @alloc99 to [0 x i8]*), [0 x i8]** %19, align 8
  %20 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 1
  store i64 35, i64* %20, align 8
  br label %bb16

bb13:                                             ; preds = %bb10
  %21 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [34 x i8] }>* @alloc98 to [0 x i8]*), [0 x i8]** %21, align 8
  %22 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 1
  store i64 34, i64* %22, align 8
  br label %bb16

bb14:                                             ; preds = %bb10
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [31 x i8] }>* @alloc97 to [0 x i8]*), [0 x i8]** %23, align 8
  %24 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 1
  store i64 31, i64* %24, align 8
  br label %bb16

bb15:                                             ; preds = %bb10
  %25 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [29 x i8] }>* @alloc96 to [0 x i8]*), [0 x i8]** %25, align 8
  %26 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 1
  store i64 29, i64* %26, align 8
  br label %bb16

bb16:                                             ; preds = %bb15, %bb14, %bb13, %bb12
  %27 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 0
  %28 = load [0 x i8]*, [0 x i8]** %27, align 8, !nonnull !1, !align !2, !noundef !1
  %29 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %desc2, i32 0, i32 0
  store [0 x i8]* %28, [0 x i8]** %31, align 8
  %32 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %desc2, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %bb17

bb18:                                             ; preds = %bb17
  %_29 = sub i32 0, %_30
  switch i32 %_29, label %bb19 [
    i32 1, label %bb20
    i32 2, label %bb21
    i32 3, label %bb22
    i32 4, label %bb23
  ]

panic3:                                           ; preds = %bb17
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([31 x i8]* @str.0 to [0 x i8]*), i64 31, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc101 to %"core::panic::location::Location"*)) #7
  unreachable

bb19:                                             ; preds = %bb18
  call void @_ZN3std7process5abort17hbfbd791ff32f7241E() #7
  unreachable

bb20:                                             ; preds = %bb18
  store i8 1, i8* %1, align 1
  br label %bb24

bb21:                                             ; preds = %bb18
  store i8 2, i8* %1, align 1
  br label %bb24

bb22:                                             ; preds = %bb18
  store i8 2, i8* %1, align 1
  br label %bb24

bb23:                                             ; preds = %bb18
  store i8 3, i8* %1, align 1
  br label %bb24
}

; Function Attrs: uwtable
define void @main() unnamed_addr #0 {
start:
  %_15 = alloca [2 x { i8*, i64* }], align 8
  %_8 = alloca %"core::fmt::Arguments", align 8
  %_4 = alloca i64*, align 8
  %error = alloca i8, align 1
  %desc = alloca { [0 x i8]*, i64 }, align 8
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %desc, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc102 to [0 x i8]*), [0 x i8]** %0, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %desc, i32 0, i32 1
  store i64 0, i64* %1, align 8
  %2 = bitcast i64** %_4 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %desc, { [0 x i8]*, i64 }** %2, align 8
  %3 = load i64*, i64** %_4, align 8, !align !4
  %4 = call i8 @zerror(i64* align 8 %3), !range !6
  store i8 %4, i8* %error, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17h0c79fb817a814c33E(i8* align 1 %error)
  %_16.0 = extractvalue { i8*, i64* } %5, 0
  %_16.1 = extractvalue { i8*, i64* } %5, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h925fd52e0e91bccdE({ [0 x i8]*, i64 }* align 8 %desc)
  %_19.0 = extractvalue { i8*, i64* } %6, 0
  %_19.1 = extractvalue { i8*, i64* } %6, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_15, i64 0, i64 0
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %7, i32 0, i32 0
  store i8* %_16.0, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %7, i32 0, i32 1
  store i64* %_16.1, i64** %9, align 8
  %10 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_15, i64 0, i64 1
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 0
  store i8* %_19.0, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 1
  store i64* %_19.1, i64** %12, align 8
  %_12.0 = bitcast [2 x { i8*, i64* }]* %_15 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h3c5b469ec9ac1bfbE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_8, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc40 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_12.0, i64 2)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_8)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN51_$LT$zerror..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb81b5143e8cfee00E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1, !range !6, !noundef !1
  %_3 = zext i8 %1 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
    i64 2, label %bb5
    i64 3, label %bb6
    i64 4, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc107 to [0 x i8]*), i64 8)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  br label %bb7

bb4:                                              ; preds = %start
  %4 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc106 to [0 x i8]*), i64 4)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %0, align 1
  br label %bb7

bb5:                                              ; preds = %start
  %6 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc105 to [0 x i8]*), i64 4)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb7

bb6:                                              ; preds = %start
  %8 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc104 to [0 x i8]*), i64 8)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %0, align 1
  br label %bb7

bb1:                                              ; preds = %start
  %10 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc103 to [0 x i8]*), i64 12)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb1, %bb6, %bb5, %bb4, %bb3
  %12 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %13 = trunc i8 %12 to i1
  ret i1 %13
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #0

; Function Attrs: uwtable
declare i64 @strlen(i8*) unnamed_addr #0

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked7rt_impl17he2e3e977306ccfd4E([0 x i8]* align 1, i64) unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
declare i8* @strerror(i32) unnamed_addr #0

; Function Attrs: uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17hea60223ec5ea4793E(%"core::result::Result<&str, core::str::error::Utf8Error>"* sret(%"core::result::Result<&str, core::str::error::Utf8Error>"), %"core::ffi::c_str::CStr"* align 1, i64) unnamed_addr #0

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: cold noreturn uwtable
declare void @_ZN3std7process5abort17hbfbd791ff32f7241E() unnamed_addr #6

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64) unnamed_addr #0

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}
!5 = !{i64 0, i64 2}
!6 = !{i8 0, i8 5}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zerror.rs.bc", hash: (3668688633, 1432495192, 4235791362, 1531904860, 2868945864))
^1 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 143908311889967505
^2 = gv: (name: "_ZN51_$LT$zerror..ZError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb81b5143e8cfee00E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, calls: ((callee: ^9)), refs: (^38, ^34, ^14, ^52, ^22)))) ; guid = 485547274965469207
^3 = gv: (name: "_ZN4core3fmt10ArgumentV19new_debug17h0c79fb817a814c33E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^6)), refs: (^2)))) ; guid = 562938482950185869
^4 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^5 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h2da7b00bb90d79d1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 876292285741519569
^6 = gv: (name: "_ZN4core3fmt10ArgumentV13new17ha879925778b63986E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 992453030225991769
^7 = gv: (name: "alloc93", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1022934095369210361
^8 = gv: (name: "_ZN4core3ffi5c_str4CStr8from_ptr17hf646514ffc95fbfaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^12), (callee: ^13), (callee: ^27))))) ; guid = 1861148268664031512
^9 = gv: (name: "_ZN4core3fmt9Formatter9write_str17h60612c04bb08ab6dE") ; guid = 1902152299201211586
^10 = gv: (name: "alloc95", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^35)))) ; guid = 1941760673072306696
^11 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^12 = gv: (name: "strlen") ; guid = 2965136410638013299
^13 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17h35ad0a45ea4379eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^17))))) ; guid = 3464414417746693834
^14 = gv: (name: "alloc105", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4503000216043936716
^15 = gv: (name: "_ZN3std7process5abort17hbfbd791ff32f7241E") ; guid = 4619386724051639732
^16 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h3e94635523fea8c9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18, calls: ((callee: ^40))))) ; guid = 4773349212800331703
^17 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h3ac53291f0043d18E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^54), (callee: ^5))))) ; guid = 5371287656445419715
^18 = gv: (name: "alloc42", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5518525186852369361
^19 = gv: (name: "alloc71", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^37)))) ; guid = 5546301061884519175
^20 = gv: (name: "alloc102", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5642437126058425725
^21 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^22 = gv: (name: "alloc103", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7028921029196360396
^23 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h3c5b469ec9ac1bfbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^23), (callee: ^51)), refs: (^20, ^19, ^45)))) ; guid = 7070180753276917291
^24 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1, ^25, ^18)))) ; guid = 7189564713615577989
^25 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7280077742517223833
^26 = gv: (name: "libzahl_error") ; guid = 7757977381861848218
^27 = gv: (name: "_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked17hc5c759002256878dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 17, calls: ((callee: ^32))))) ; guid = 7844681509082348274
^28 = gv: (name: "alloc99", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8930490312865806124
^29 = gv: (name: "strerror") ; guid = 9376261720534336963
^30 = gv: (name: "_ZN4core3ffi5c_str4CStr6to_str17hea60223ec5ea4793E") ; guid = 9491922152028558655
^31 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17hbd00db526ea52b91E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42))) ; guid = 10030446100059723935
^32 = gv: (name: "_ZN4core10intrinsics17const_eval_select17h0183c12c8c1fe2f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^16)), refs: (^43)))) ; guid = 10153896023491303603
^33 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^34 = gv: (name: "alloc106", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10694331856826869167
^35 = gv: (name: "alloc100", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11681189493620559018
^36 = gv: (name: "alloc96", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11769530497039919425
^37 = gv: (name: "alloc70", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12094208046307011766
^38 = gv: (name: "alloc107", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12692502736790132629
^39 = gv: (name: "alloc91", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13049887654778328114
^40 = gv: (name: "_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked7rt_impl17he2e3e977306ccfd4E") ; guid = 13418657139553215595
^41 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h89a58291684013fcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 13486426548833756861
^42 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14354750383783384926
^43 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^44 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h925fd52e0e91bccdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^41)), refs: (^49)))) ; guid = 15068365723542475899
^45 = gv: (name: "alloc92", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^39)))) ; guid = 15140189688709354803
^46 = gv: (name: "zerror", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 103, calls: ((callee: ^29), (callee: ^8), (callee: ^30), (callee: ^31), (callee: ^33), (callee: ^15)), refs: (^7, ^10, ^42, ^28, ^55, ^53, ^36, ^50, readonly ^26)))) ; guid = 15171285295004448462
^47 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^48 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, calls: ((callee: ^46), (callee: ^3), (callee: ^44), (callee: ^23), (callee: ^56)), refs: (^20, ^24)))) ; guid = 15822663052811949562
^49 = gv: (name: "_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h38dd4b2cb8a250dbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^47))))) ; guid = 15878183444422331308
^50 = gv: (name: "alloc101", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^35)))) ; guid = 15884354656814164734
^51 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^52 = gv: (name: "alloc104", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16554517946582620805
^53 = gv: (name: "alloc97", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16993464937291769955
^54 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hcf30192e0797b7e6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 17380992446542330435
^55 = gv: (name: "alloc98", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17600240631416408230
^56 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^57 = blockcount: 89
