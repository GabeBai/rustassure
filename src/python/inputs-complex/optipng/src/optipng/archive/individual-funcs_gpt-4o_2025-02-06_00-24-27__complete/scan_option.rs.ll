; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/scan_option.rs.bc'
source_filename = "scan_option.cbd42e1e-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::ffi::c_str::CStr" = type { [0 x i8] }
%"core::str::error::Utf8Error" = type { i64, { i8, i8 }, [6 x i8] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::result::Result<&str, core::str::error::Utf8Error>" = type { i64, [2 x i64] }
%"core::result::Result<&str, core::str::error::Utf8Error>::Ok" = type { [1 x i64], { [0 x i8]*, i64 } }
%"core::result::Result<&str, core::str::error::Utf8Error>::Err" = type { [1 x i64], %"core::str::error::Utf8Error" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }

@alloc31 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%"core::str::error::Utf8Error"*)* @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h73101d6f79f4789bE" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (%"core::str::error::Utf8Error"*, %"core::fmt::Formatter"*)* @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h666334c72e41d30fE" to i8*) }>, align 8
@alloc73 = private unnamed_addr constant <{ [93 x i8] }> <{ [93 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/scan_option.rs" }>, align 1
@alloc36 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00\0D\00\00\00 \00\00\00" }>, align 8
@alloc38 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00\15\00\00\00$\00\00\00" }>, align 8
@alloc40 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00\16\00\00\00\09\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc42 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00\1A\00\00\00\09\00\00\00" }>, align 8
@str.2 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc44 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00\1F\00\00\00 \00\00\00" }>, align 8
@alloc46 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00\1F\00\00\00\0D\00\00\00" }>, align 8
@alloc48 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00!\00\00\00\09\00\00\00" }>, align 8
@alloc50 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00\22\00\00\00\09\00\00\00" }>, align 8
@alloc52 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00$\00\00\00&\00\00\00" }>, align 8
@alloc54 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00%\00\00\00,\00\00\00" }>, align 8
@alloc56 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00&\00\00\00\11\00\00\00" }>, align 8
@alloc58 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00)\00\00\00&\00\00\00" }>, align 8
@alloc60 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00)\00\00\008\00\00\00" }>, align 8
@alloc62 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\000\00\00\00\0C\00\00\00" }>, align 8
@alloc64 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\001\00\00\00\0D\00\00\00" }>, align 8
@alloc66 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\002\00\00\001\00\00\00" }>, align 8
@alloc68 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\002\00\00\00C\00\00\00" }>, align 8
@alloc70 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\009\00\00\00\0D\00\00\00" }>, align 8
@alloc72 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00;\00\00\00\15\00\00\00" }>, align 8
@alloc74 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [93 x i8] }>, <{ [93 x i8] }>* @alloc73, i32 0, i32 0, i32 0), [16 x i8] c"]\00\00\00\00\00\00\00;\00\00\00\0D\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h58766bd21160ed2bE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %_5 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17he4a673cd307b7f8cE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_5, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hbad9f5cf38c870e4E(i8* %2, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h116b1831fc7a2cb8E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
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
  %6 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h58766bd21160ed2bE"(i64 %3, i64 %5, [0 x i8]* %slice.0, i64 %slice.1)
  %7 = extractvalue { [0 x i8]*, i64 } %6, 0
  %8 = extractvalue { [0 x i8]*, i64 } %6, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  ret { [0 x i8]*, i64 } %10
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h6fd97dc2be4caff7E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %_5 = call i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h5e5df6e2efe0496cE"([0 x i8]* %slice.0, i64 %slice.1)
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
  %6 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h58766bd21160ed2bE"(i64 %3, i64 %5, [0 x i8]* %slice.0, i64 %slice.1)
  %7 = extractvalue { [0 x i8]*, i64 } %6, 0
  %8 = extractvalue { [0 x i8]*, i64 } %6, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  ret { [0 x i8]*, i64 } %10
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf21e14d8aaf233aaE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ugt i64 %self, %slice.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h6fd97dc2be4caff7E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  %_11.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_11.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb3

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #7
  unreachable

bb3:                                              ; preds = %bb2
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_11.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_11.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ffi5c_str4CStr17to_bytes_with_nul17h538b23804bea7ec9E(%"core::ffi::c_str::CStr"* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_4.0 = bitcast %"core::ffi::c_str::CStr"* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ffi5c_str4CStr8to_bytes17hcdacacdfbe45ff3cE(%"core::ffi::c_str::CStr"* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_5 = alloca i64, align 8
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ffi5c_str4CStr17to_bytes_with_nul17h538b23804bea7ec9E(%"core::ffi::c_str::CStr"* align 1 %self.0, i64 %self.1)
  %bytes.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %bytes.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = sub i64 %bytes.1, 1
  store i64 %_6, i64* %_5, align 8
  %1 = load i64, i64* %_5, align 8
  %2 = call { [0 x i8]*, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17hd15359912476f1e6E"([0 x i8]* align 1 %bytes.0, i64 %bytes.1, i64 %1)
  %3 = extractvalue { [0 x i8]*, i64 } %2, 0
  %4 = extractvalue { [0 x i8]*, i64 } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %3, 0
  %6 = insertvalue { [0 x i8]*, i64 } %5, i64 %4, 1
  ret { [0 x i8]*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$18is_ascii_uppercase17hda85c498c77a8942E"(i8* align 1 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1
  %_2 = icmp ule i8 65, %1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  store i8 0, i8* %0, align 1
  br label %bb4

bb1:                                              ; preds = %start
  %2 = load i8, i8* %self, align 1
  %_3 = icmp ule i8 %2, 90
  br i1 %_3, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  store i8 1, i8* %0, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3num20_$LT$impl$u20$u8$GT$18to_ascii_lowercase17h1744b2e30058e2b7E"(i8* align 1 %self) unnamed_addr #0 {
start:
  %_2 = load i8, i8* %self, align 1
  %_5 = call zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$18is_ascii_uppercase17hda85c498c77a8942E"(i8* align 1 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = zext i1 %_5 to i8
  %_3 = mul i8 %_4, 32
  %0 = or i8 %_2, %_3
  ret i8 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$19is_ascii_whitespace17h12c0aa4b2bf334faE"(i8* align 1 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1
  switch i8 %1, label %bb1 [
    i8 9, label %bb2
    i8 10, label %bb2
    i8 12, label %bb2
    i8 13, label %bb2
    i8 32, label %bb2
  ]

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb2:                                              ; preds = %start, %start, %start, %start, %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  ret i1 %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hbad9f5cf38c870e4E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h6c8c2dd3a6359fecE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hb12c6e4f9482cda0E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h73101d6f79f4789bE"(%"core::str::error::Utf8Error"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hb12c6e4f9482cda0E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i64 @_ZN4core3ptr8metadata8metadata17hc8afb1114ada2eceE([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h6c8c2dd3a6359fecE"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h5e5df6e2efe0496cE"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3ptr8metadata8metadata17hc8afb1114ada2eceE([0 x i8]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17he4a673cd307b7f8cE"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17hd15359912476f1e6E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h116b1831fc7a2cb8E"(i64 %index, [0 x i8]* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_3.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_3.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h52cdcfbaf935af0aE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %0 = call align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h6daa2e0b0d01dc08E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h6d64e132999ddba4E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = icmp eq i64 %self.1, 0
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hd015976b01f03069E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf21e14d8aaf233aaE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_none17h8e368c6623f7ee95E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h97d342a3f12181edE"(i8** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_2, true
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h97d342a3f12181edE"(i8** align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast i8** %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_2, 1
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf75bd27b0f938a1eE"(%"core::result::Result<&str, core::str::error::Utf8Error>"* %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %e = alloca %"core::str::error::Utf8Error", align 8
  %2 = bitcast %"core::result::Result<&str, core::str::error::Utf8Error>"* %self to i64*
  %_2 = load i64, i64* %2, align 8, !range !3, !noundef !2
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<&str, core::str::error::Utf8Error>"* %self to %"core::result::Result<&str, core::str::error::Utf8Error>::Ok"*
  %4 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", %"core::result::Result<&str, core::str::error::Utf8Error>::Ok"* %3, i32 0, i32 1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 0
  %t.0 = load [0 x i8]*, [0 x i8]** %5, align 8, !nonnull !2, !align !4, !noundef !2
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 1
  %t.1 = load i64, i64* %6, align 8
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %t.0, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %t.1, 1
  ret { [0 x i8]*, i64 } %8

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<&str, core::str::error::Utf8Error>"* %self to %"core::result::Result<&str, core::str::error::Utf8Error>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Err", %"core::result::Result<&str, core::str::error::Utf8Error>::Err"* %9, i32 0, i32 1
  %11 = bitcast %"core::str::error::Utf8Error"* %e to i8*
  %12 = bitcast %"core::str::error::Utf8Error"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %_7.0 = bitcast %"core::str::error::Utf8Error"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 bitcast (<{ [43 x i8] }>* @alloc31 to [0 x i8]*), i64 43, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*), %"core::panic::location::Location"* align 8 %0) #7
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = extractvalue { i8*, i32 } %13, 1
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb4
  %18 = bitcast { i8*, i32 }* %1 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hf1122a6eef302c6cE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_4 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17he4a673cd307b7f8cE"([0 x i8]* %slice.0, i64 %slice.1)
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
define align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h6daa2e0b0d01dc08E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
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
  %_9 = call i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hf1122a6eef302c6cE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  store i8* %_9, i8** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %3 = load i8*, i8** %0, align 8, !align !4
  ret i8* %3
}

; Function Attrs: uwtable
define i32 @scan_option(%"core::ffi::c_str::CStr"* align 1 %str.0, i64 %str.1, [0 x i8]* align 1 %opt_buf.0, i64 %opt_buf.1, { i8*, i64 }* align 8 %opt_arg_ptr) unnamed_addr #1 {
start:
  %_99 = alloca i64, align 8
  %_94 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %_91 = alloca { i8*, i64 }, align 8
  %_84 = alloca i64, align 8
  %_79 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %_72 = alloca { i8*, i64 }, align 8
  %_61 = alloca i8, align 1
  %_51 = alloca i8, align 1
  %_21 = alloca i8, align 1
  %ptr = alloca i64, align 8
  %opt_len = alloca i64, align 8
  %_17 = alloca i8*, align 8
  %_7 = alloca i8, align 1
  %_6 = alloca i8, align 1
  %0 = alloca i32, align 4
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ffi5c_str4CStr8to_bytes17hcdacacdfbe45ff3cE(%"core::ffi::c_str::CStr"* align 1 %str.0, i64 %str.1)
  %str_bytes.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %str_bytes.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_8 = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h6d64e132999ddba4E"([0 x i8]* align 1 %str_bytes.0, i64 %str_bytes.1)
  br label %bb8

bb8:                                              ; preds = %bb1
  br i1 %_8, label %bb5, label %bb6

bb6:                                              ; preds = %bb8
  %_14 = icmp ult i64 0, %str_bytes.1
  %2 = call i1 @llvm.expect.i1(i1 %_14, i1 true)
  br i1 %2, label %bb9, label %panic

bb5:                                              ; preds = %bb8
  store i8 1, i8* %_7, align 1
  br label %bb7

bb7:                                              ; preds = %bb9, %bb5
  %3 = load i8, i8* %_7, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb2, label %bb3

bb9:                                              ; preds = %bb6
  %5 = getelementptr inbounds [0 x i8], [0 x i8]* %str_bytes.0, i64 0, i64 0
  %_11 = load i8, i8* %5, align 1
  %_10 = icmp ne i8 %_11, 45
  %6 = zext i1 %_10 to i8
  store i8 %6, i8* %_7, align 1
  br label %bb7

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %str_bytes.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc36 to %"core::panic::location::Location"*)) #7
  unreachable

bb3:                                              ; preds = %bb7
  %7 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h52cdcfbaf935af0aE"([0 x i8]* align 1 %str_bytes.0, i64 %str_bytes.1, i64 1)
  store i8* %7, i8** %_17, align 8
  br label %bb10

bb2:                                              ; preds = %bb7
  store i8 1, i8* %_6, align 1
  br label %bb4

bb4:                                              ; preds = %bb11, %bb2
  %8 = load i8, i8* %_6, align 1, !range !1, !noundef !2
  %9 = trunc i8 %8 to i1
  br i1 %9, label %bb12, label %bb13

bb10:                                             ; preds = %bb3
  %_15 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_none17h8e368c6623f7ee95E"(i8** align 8 %_17)
  br label %bb11

bb11:                                             ; preds = %bb10
  %10 = zext i1 %_15 to i8
  store i8 %10, i8* %_6, align 1
  br label %bb4

bb13:                                             ; preds = %bb4
  store i64 0, i64* %opt_len, align 8
  store i64 1, i64* %ptr, align 8
  br label %bb14

bb12:                                             ; preds = %bb4
  store i32 0, i32* %0, align 4
  br label %bb68

bb68:                                             ; preds = %bb67, %bb12
  %11 = load i32, i32* %0, align 4
  ret i32 %11

bb14:                                             ; preds = %bb20, %bb13
  %_23 = load i64, i64* %ptr, align 8
  %_22 = icmp ult i64 %_23, %str_bytes.1
  br i1 %_22, label %bb16, label %bb15

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_21, align 1
  br label %bb17

bb16:                                             ; preds = %bb14
  %_28 = load i64, i64* %ptr, align 8
  %_30 = icmp ult i64 %_28, %str_bytes.1
  %12 = call i1 @llvm.expect.i1(i1 %_30, i1 true)
  br i1 %12, label %bb18, label %panic1

bb18:                                             ; preds = %bb16
  %13 = getelementptr inbounds [0 x i8], [0 x i8]* %str_bytes.0, i64 0, i64 %_28
  %_27 = load i8, i8* %13, align 1
  %_26 = icmp eq i8 %_27, 45
  %14 = zext i1 %_26 to i8
  store i8 %14, i8* %_21, align 1
  br label %bb17

panic1:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_28, i64 %str_bytes.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc38 to %"core::panic::location::Location"*)) #7
  unreachable

bb17:                                             ; preds = %bb18, %bb15
  %15 = load i8, i8* %_21, align 1, !range !1, !noundef !2
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb19, label %bb21

bb21:                                             ; preds = %bb17
  %_33 = load i64, i64* %ptr, align 8
  %_32 = icmp eq i64 %_33, %str_bytes.1
  br i1 %_32, label %bb22, label %bb24

bb19:                                             ; preds = %bb17
  %17 = load i64, i64* %ptr, align 8
  %18 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %17, i64 1)
  %_31.0 = extractvalue { i64, i1 } %18, 0
  %_31.1 = extractvalue { i64, i1 } %18, 1
  %19 = call i1 @llvm.expect.i1(i1 %_31.1, i1 false)
  br i1 %19, label %panic2, label %bb20

bb20:                                             ; preds = %bb19
  store i64 %_31.0, i64* %ptr, align 8
  br label %bb14

panic2:                                           ; preds = %bb19
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc40 to %"core::panic::location::Location"*)) #7
  unreachable

bb24:                                             ; preds = %bb53, %bb23, %bb21
  %_38 = load i64, i64* %opt_len, align 8
  %_37 = icmp ult i64 %_38, %opt_buf.1
  br i1 %_37, label %bb25, label %bb29

bb22:                                             ; preds = %bb21
  %20 = load i64, i64* %ptr, align 8
  %21 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 1)
  %_36.0 = extractvalue { i64, i1 } %21, 0
  %_36.1 = extractvalue { i64, i1 } %21, 1
  %22 = call i1 @llvm.expect.i1(i1 %_36.1, i1 false)
  br i1 %22, label %panic3, label %bb23

bb23:                                             ; preds = %bb22
  store i64 %_36.0, i64* %ptr, align 8
  br label %bb24

panic3:                                           ; preds = %bb22
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc42 to %"core::panic::location::Location"*)) #7
  unreachable

bb29:                                             ; preds = %bb28, %bb24
  %23 = load i64, i64* %opt_len, align 8
  %24 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %23, i64 1)
  %_49.0 = extractvalue { i64, i1 } %24, 0
  %_49.1 = extractvalue { i64, i1 } %24, 1
  %25 = call i1 @llvm.expect.i1(i1 %_49.1, i1 false)
  br i1 %25, label %panic6, label %bb30

bb25:                                             ; preds = %bb24
  %_43 = load i64, i64* %ptr, align 8
  %_45 = icmp ult i64 %_43, %str_bytes.1
  %26 = call i1 @llvm.expect.i1(i1 %_45, i1 true)
  br i1 %26, label %bb26, label %panic4

bb26:                                             ; preds = %bb25
  %_42 = getelementptr inbounds [0 x i8], [0 x i8]* %str_bytes.0, i64 0, i64 %_43
  %_41 = call i8 @"_ZN4core3num20_$LT$impl$u20$u8$GT$18to_ascii_lowercase17h1744b2e30058e2b7E"(i8* align 1 %_42)
  br label %bb27

panic4:                                           ; preds = %bb25
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_43, i64 %str_bytes.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc44 to %"core::panic::location::Location"*)) #7
  unreachable

bb27:                                             ; preds = %bb26
  %_46 = load i64, i64* %opt_len, align 8
  %_48 = icmp ult i64 %_46, %opt_buf.1
  %27 = call i1 @llvm.expect.i1(i1 %_48, i1 true)
  br i1 %27, label %bb28, label %panic5

bb28:                                             ; preds = %bb27
  %28 = getelementptr inbounds [0 x i8], [0 x i8]* %opt_buf.0, i64 0, i64 %_46
  store i8 %_41, i8* %28, align 1
  br label %bb29

panic5:                                           ; preds = %bb27
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_46, i64 %opt_buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc46 to %"core::panic::location::Location"*)) #7
  unreachable

bb30:                                             ; preds = %bb29
  store i64 %_49.0, i64* %opt_len, align 8
  %29 = load i64, i64* %ptr, align 8
  %30 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %29, i64 1)
  %_50.0 = extractvalue { i64, i1 } %30, 0
  %_50.1 = extractvalue { i64, i1 } %30, 1
  %31 = call i1 @llvm.expect.i1(i1 %_50.1, i1 false)
  br i1 %31, label %panic7, label %bb31

panic6:                                           ; preds = %bb29
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc48 to %"core::panic::location::Location"*)) #7
  unreachable

bb31:                                             ; preds = %bb30
  store i64 %_50.0, i64* %ptr, align 8
  %_53 = load i64, i64* %ptr, align 8
  %_52 = icmp eq i64 %_53, %str_bytes.1
  br i1 %_52, label %bb32, label %bb33

panic7:                                           ; preds = %bb30
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc50 to %"core::panic::location::Location"*)) #7
  unreachable

bb33:                                             ; preds = %bb31
  %_58 = load i64, i64* %ptr, align 8
  %_60 = icmp ult i64 %_58, %str_bytes.1
  %32 = call i1 @llvm.expect.i1(i1 %_60, i1 true)
  br i1 %32, label %bb35, label %panic8

bb32:                                             ; preds = %bb31
  store i8 1, i8* %_51, align 1
  br label %bb34

bb34:                                             ; preds = %bb36, %bb32
  %33 = load i8, i8* %_51, align 1, !range !1, !noundef !2
  %34 = trunc i8 %33 to i1
  br i1 %34, label %bb37, label %bb52

bb35:                                             ; preds = %bb33
  %_57 = getelementptr inbounds [0 x i8], [0 x i8]* %str_bytes.0, i64 0, i64 %_58
  %_56 = call zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$19is_ascii_whitespace17h12c0aa4b2bf334faE"(i8* align 1 %_57)
  br label %bb36

panic8:                                           ; preds = %bb33
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_58, i64 %str_bytes.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc52 to %"core::panic::location::Location"*)) #7
  unreachable

bb36:                                             ; preds = %bb35
  %35 = zext i1 %_56 to i8
  store i8 %35, i8* %_51, align 1
  br label %bb34

bb52:                                             ; preds = %bb34
  %_87 = load i64, i64* %ptr, align 8
  %_89 = icmp ult i64 %_87, %str_bytes.1
  %36 = call i1 @llvm.expect.i1(i1 %_89, i1 true)
  br i1 %36, label %bb53, label %panic11

bb37:                                             ; preds = %bb44, %bb34
  %_63 = load i64, i64* %ptr, align 8
  %_62 = icmp ult i64 %_63, %str_bytes.1
  br i1 %_62, label %bb39, label %bb38

bb38:                                             ; preds = %bb37
  store i8 0, i8* %_61, align 1
  br label %bb40

bb39:                                             ; preds = %bb37
  %_68 = load i64, i64* %ptr, align 8
  %_70 = icmp ult i64 %_68, %str_bytes.1
  %37 = call i1 @llvm.expect.i1(i1 %_70, i1 true)
  br i1 %37, label %bb41, label %panic9

bb41:                                             ; preds = %bb39
  %_67 = getelementptr inbounds [0 x i8], [0 x i8]* %str_bytes.0, i64 0, i64 %_68
  %_66 = call zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$19is_ascii_whitespace17h12c0aa4b2bf334faE"(i8* align 1 %_67)
  br label %bb42

panic9:                                           ; preds = %bb39
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_68, i64 %str_bytes.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc54 to %"core::panic::location::Location"*)) #7
  unreachable

bb42:                                             ; preds = %bb41
  %38 = zext i1 %_66 to i8
  store i8 %38, i8* %_61, align 1
  br label %bb40

bb40:                                             ; preds = %bb42, %bb38
  %39 = load i8, i8* %_61, align 1, !range !1, !noundef !2
  %40 = trunc i8 %39 to i1
  br i1 %40, label %bb43, label %bb45

bb45:                                             ; preds = %bb40
  %_74 = load i64, i64* %ptr, align 8
  %_73 = icmp ult i64 %_74, %str_bytes.1
  br i1 %_73, label %bb46, label %bb50

bb43:                                             ; preds = %bb40
  %41 = load i64, i64* %ptr, align 8
  %42 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %41, i64 1)
  %_71.0 = extractvalue { i64, i1 } %42, 0
  %_71.1 = extractvalue { i64, i1 } %42, 1
  %43 = call i1 @llvm.expect.i1(i1 %_71.1, i1 false)
  br i1 %43, label %panic10, label %bb44

bb44:                                             ; preds = %bb43
  store i64 %_71.0, i64* %ptr, align 8
  br label %bb37

panic10:                                          ; preds = %bb43
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc56 to %"core::panic::location::Location"*)) #7
  unreachable

bb50:                                             ; preds = %bb45
  %44 = bitcast { i8*, i64 }* %_72 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %44, i8 0, i64 16, i1 false)
  %45 = bitcast { i8*, i64 }* %_72 to {}**
  store {}* null, {}** %45, align 8
  br label %bb51

bb46:                                             ; preds = %bb45
  %_85 = load i64, i64* %ptr, align 8
  store i64 %_85, i64* %_84, align 8
  %46 = load i64, i64* %_84, align 8
  %47 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hd015976b01f03069E"([0 x i8]* align 1 %str_bytes.0, i64 %str_bytes.1, i64 %46, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc58 to %"core::panic::location::Location"*))
  %_82.0 = extractvalue { [0 x i8]*, i64 } %47, 0
  %_82.1 = extractvalue { [0 x i8]*, i64 } %47, 1
  br label %bb47

bb47:                                             ; preds = %bb46
  call void @_ZN4core3str8converts9from_utf817h2e31388429b1dd13E(%"core::result::Result<&str, core::str::error::Utf8Error>"* sret(%"core::result::Result<&str, core::str::error::Utf8Error>") %_79, [0 x i8]* align 1 %_82.0, i64 %_82.1)
  br label %bb48

bb48:                                             ; preds = %bb47
  %48 = call { [0 x i8]*, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf75bd27b0f938a1eE"(%"core::result::Result<&str, core::str::error::Utf8Error>"* %_79, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc60 to %"core::panic::location::Location"*))
  %_78.0 = extractvalue { [0 x i8]*, i64 } %48, 0
  %_78.1 = extractvalue { [0 x i8]*, i64 } %48, 1
  br label %bb49

bb49:                                             ; preds = %bb48
  %49 = bitcast { i8*, i64 }* %_72 to { [0 x i8]*, i64 }*
  %50 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %49, i32 0, i32 0
  store [0 x i8]* %_78.0, [0 x i8]** %50, align 8
  %51 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %49, i32 0, i32 1
  store i64 %_78.1, i64* %51, align 8
  br label %bb51

bb51:                                             ; preds = %bb49, %bb50
  %52 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_72, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8, !align !4
  %54 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_72, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %opt_arg_ptr, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %opt_arg_ptr, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %bb59

bb59:                                             ; preds = %bb58, %bb51
  %_102 = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h6d64e132999ddba4E"([0 x i8]* align 1 %opt_buf.0, i64 %opt_buf.1)
  br label %bb60

bb53:                                             ; preds = %bb52
  %58 = getelementptr inbounds [0 x i8], [0 x i8]* %str_bytes.0, i64 0, i64 %_87
  %_86 = load i8, i8* %58, align 1
  %59 = icmp eq i8 %_86, 61
  br i1 %59, label %bb54, label %bb24

panic11:                                          ; preds = %bb52
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_87, i64 %str_bytes.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc62 to %"core::panic::location::Location"*)) #7
  unreachable

bb54:                                             ; preds = %bb53
  %60 = load i64, i64* %ptr, align 8
  %61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %60, i64 1)
  %_90.0 = extractvalue { i64, i1 } %61, 0
  %_90.1 = extractvalue { i64, i1 } %61, 1
  %62 = call i1 @llvm.expect.i1(i1 %_90.1, i1 false)
  br i1 %62, label %panic12, label %bb55

bb55:                                             ; preds = %bb54
  store i64 %_90.0, i64* %ptr, align 8
  %_100 = load i64, i64* %ptr, align 8
  store i64 %_100, i64* %_99, align 8
  %63 = load i64, i64* %_99, align 8
  %64 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hd015976b01f03069E"([0 x i8]* align 1 %str_bytes.0, i64 %str_bytes.1, i64 %63, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc66 to %"core::panic::location::Location"*))
  %_97.0 = extractvalue { [0 x i8]*, i64 } %64, 0
  %_97.1 = extractvalue { [0 x i8]*, i64 } %64, 1
  br label %bb56

panic12:                                          ; preds = %bb54
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc64 to %"core::panic::location::Location"*)) #7
  unreachable

bb56:                                             ; preds = %bb55
  call void @_ZN4core3str8converts9from_utf817h2e31388429b1dd13E(%"core::result::Result<&str, core::str::error::Utf8Error>"* sret(%"core::result::Result<&str, core::str::error::Utf8Error>") %_94, [0 x i8]* align 1 %_97.0, i64 %_97.1)
  br label %bb57

bb57:                                             ; preds = %bb56
  %65 = call { [0 x i8]*, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf75bd27b0f938a1eE"(%"core::result::Result<&str, core::str::error::Utf8Error>"* %_94, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc68 to %"core::panic::location::Location"*))
  %_93.0 = extractvalue { [0 x i8]*, i64 } %65, 0
  %_93.1 = extractvalue { [0 x i8]*, i64 } %65, 1
  br label %bb58

bb58:                                             ; preds = %bb57
  %66 = bitcast { i8*, i64 }* %_91 to { [0 x i8]*, i64 }*
  %67 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %66, i32 0, i32 0
  store [0 x i8]* %_93.0, [0 x i8]** %67, align 8
  %68 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %66, i32 0, i32 1
  store i64 %_93.1, i64* %68, align 8
  %69 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_91, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8, !align !4
  %71 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_91, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %opt_arg_ptr, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %opt_arg_ptr, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %bb59

bb60:                                             ; preds = %bb59
  %_101 = xor i1 %_102, true
  br i1 %_101, label %bb61, label %bb67

bb67:                                             ; preds = %bb66, %bb63, %bb60
  store i32 1, i32* %0, align 4
  br label %bb68

bb61:                                             ; preds = %bb60
  %_105 = load i64, i64* %opt_len, align 8
  %_104 = icmp ult i64 %_105, %opt_buf.1
  br i1 %_104, label %bb62, label %bb64

bb64:                                             ; preds = %bb61
  %75 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %opt_buf.1, i64 1)
  %_114.0 = extractvalue { i64, i1 } %75, 0
  %_114.1 = extractvalue { i64, i1 } %75, 1
  %76 = call i1 @llvm.expect.i1(i1 %_114.1, i1 false)
  br i1 %76, label %panic14, label %bb65

bb62:                                             ; preds = %bb61
  %_108 = load i64, i64* %opt_len, align 8
  %_110 = icmp ult i64 %_108, %opt_buf.1
  %77 = call i1 @llvm.expect.i1(i1 %_110, i1 true)
  br i1 %77, label %bb63, label %panic13

bb63:                                             ; preds = %bb62
  %78 = getelementptr inbounds [0 x i8], [0 x i8]* %opt_buf.0, i64 0, i64 %_108
  store i8 0, i8* %78, align 1
  br label %bb67

panic13:                                          ; preds = %bb62
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_108, i64 %opt_buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc70 to %"core::panic::location::Location"*)) #7
  unreachable

bb65:                                             ; preds = %bb64
  %_116 = icmp ult i64 %_114.0, %opt_buf.1
  %79 = call i1 @llvm.expect.i1(i1 %_116, i1 true)
  br i1 %79, label %bb66, label %panic15

panic14:                                          ; preds = %bb64
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc72 to %"core::panic::location::Location"*)) #7
  unreachable

bb66:                                             ; preds = %bb65
  %80 = getelementptr inbounds [0 x i8], [0 x i8]* %opt_buf.0, i64 0, i64 %_114.0
  store i8 0, i8* %80, align 1
  br label %bb67

panic15:                                          ; preds = %bb65
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_114.0, i64 %opt_buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc74 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: uwtable
declare zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h666334c72e41d30fE"(%"core::str::error::Utf8Error"* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #6

; Function Attrs: uwtable
declare void @_ZN4core3str8converts9from_utf817h2e31388429b1dd13E(%"core::result::Result<&str, core::str::error::Utf8Error>"* sret(%"core::result::Result<&str, core::str::error::Utf8Error>"), [0 x i8]* align 1, i64) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 0, i64 2}
!4 = !{i64 1}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/scan_option.rs.bc", hash: (3450549988, 3058084408, 932197818, 2363552789, 3207788291))
^1 = gv: (name: "_ZN4core3num20_$LT$impl$u20$u8$GT$18to_ascii_lowercase17h1744b2e30058e2b7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^47))))) ; guid = 213807243602936070
^2 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 570740655171373370
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "alloc48", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 636599376346033329
^5 = gv: (name: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h116b1831fc7a2cb8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^56))))) ; guid = 704271719276058044
^6 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^7 = gv: (name: "_ZN4core3ptr8metadata8metadata17hc8afb1114ada2eceE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 1647354843039901879
^8 = gv: (name: "alloc52", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 2067018094307027113
^9 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^10 = gv: (name: "alloc70", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 3468475210985079447
^11 = gv: (name: "alloc38", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 3482672816439979099
^12 = gv: (name: "_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h73101d6f79f4789bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 3763346311948209838
^13 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 3992116546597045448
^14 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17he4a673cd307b7f8cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 4308772928221455119
^15 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_some17h97d342a3f12181edE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 4787540132021359127
^16 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h6d64e132999ddba4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 4889496117106985105
^17 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf75bd27b0f938a1eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^38)), refs: (^52, ^20, ^46)))) ; guid = 5033098297235118731
^18 = gv: (name: "_ZN4core3num20_$LT$impl$u20$u8$GT$19is_ascii_whitespace17h12c0aa4b2bf334faE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10))) ; guid = 5187635337840948506
^19 = gv: (name: "alloc58", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 5618058514082200792
^20 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12, ^61)))) ; guid = 5940541889635003780
^21 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf21e14d8aaf233aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^55), (callee: ^30))))) ; guid = 6062589508090996401
^22 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hb12c6e4f9482cda0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 6498465181935927014
^23 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^24 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h6daa2e0b0d01dc08E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^37))))) ; guid = 6715068299123070504
^25 = gv: (name: "alloc42", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 6812681563426025960
^26 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hd015976b01f03069E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^21))))) ; guid = 6878044720834184010
^27 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17hd15359912476f1e6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^5))))) ; guid = 7353175719210433037
^28 = gv: (name: "alloc62", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 8859608688271909902
^29 = gv: (name: "scan_option", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 305, calls: ((callee: ^41), (callee: ^16), (callee: ^63), (callee: ^35), (callee: ^33), (callee: ^36), (callee: ^1), (callee: ^18), (callee: ^26), (callee: ^49), (callee: ^17)), refs: (^13, ^11, ^31, ^2, ^25, ^62, ^54, ^45, ^4, ^59, ^8, ^39, ^42, ^19, ^53, ^28, ^51, ^40, ^50, ^10, ^34, ^60)))) ; guid = 8949806023620522952
^30 = gv: (name: "_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E") ; guid = 9009382022939071342
^31 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 9023036431957177995
^32 = gv: (name: "alloc73", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9337272094182921948
^33 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_none17h8e368c6623f7ee95E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^15))))) ; guid = 9543438189639249883
^34 = gv: (name: "alloc72", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 9685885658236725460
^35 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h52cdcfbaf935af0aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^24))))) ; guid = 9978236438363154116
^36 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^37 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hf1122a6eef302c6cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^14))))) ; guid = 10759007185692710703
^38 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^39 = gv: (name: "alloc54", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 11472429993840102271
^40 = gv: (name: "alloc64", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 11479838785125004382
^41 = gv: (name: "_ZN4core3ffi5c_str4CStr8to_bytes17hcdacacdfbe45ff3cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 15, calls: ((callee: ^58), (callee: ^27))))) ; guid = 12128820890544685465
^42 = gv: (name: "alloc56", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 12974376685373779133
^43 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h6c8c2dd3a6359fecE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 13359591387364451308
^44 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h5e5df6e2efe0496cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^7))))) ; guid = 13791106062794963832
^45 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 13892090999288170638
^46 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13894741775341402083
^47 = gv: (name: "_ZN4core3num20_$LT$impl$u20$u8$GT$18is_ascii_uppercase17hda85c498c77a8942E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14))) ; guid = 14187770489564098308
^48 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^49 = gv: (name: "_ZN4core3str8converts9from_utf817h2e31388429b1dd13E") ; guid = 14338489516700679458
^50 = gv: (name: "alloc68", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 14399027441373361390
^51 = gv: (name: "alloc66", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 14678067116737483355
^52 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^53 = gv: (name: "alloc60", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 14883805873261207193
^54 = gv: (name: "alloc44", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 14907002291415644582
^55 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h6fd97dc2be4caff7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^44), (callee: ^56))))) ; guid = 15288024140001679238
^56 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h58766bd21160ed2bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^14), (callee: ^57))))) ; guid = 16139813582267959812
^57 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17hbad9f5cf38c870e4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^43), (callee: ^22))))) ; guid = 16157223389737119285
^58 = gv: (name: "_ZN4core3ffi5c_str4CStr17to_bytes_with_nul17h538b23804bea7ec9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 16430709924863598966
^59 = gv: (name: "alloc50", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 16432823714764633025
^60 = gv: (name: "alloc74", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 16621528747139312363
^61 = gv: (name: "_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h666334c72e41d30fE") ; guid = 16904505633462493959
^62 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17978698832549140889
^63 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^64 = blockcount: 152
