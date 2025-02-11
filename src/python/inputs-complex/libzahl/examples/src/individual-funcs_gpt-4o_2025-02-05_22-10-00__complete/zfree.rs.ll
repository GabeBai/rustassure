; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zfree.rs.bc'
source_filename = "zfree.a6a53762-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrComponents<*mut u64>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<*mut u64>" = type { [1 x i64] }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%Zahl = type { i64, i64, i64*, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc115 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc116 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc115, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc134 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%"core::alloc::layout::LayoutError"*)* @"_ZN4core3ptr53drop_in_place$LT$core..alloc..layout..LayoutError$GT$17h371b3f0ba59cb93cE" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 (%"core::alloc::layout::LayoutError"*, %"core::fmt::Formatter"*)* @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hecf8053762888bb9E" to i8*) }>, align 8
@_ZN5zfree12LIBZAHL_POOL17h3bfee3242580a2a0E = internal global <{ [512 x i8] }> zeroinitializer, align 8
@_ZN5zfree14LIBZAHL_POOL_N17h7cb01e150689ab60E = internal global <{ [512 x i8] }> zeroinitializer, align 8
@_ZN5zfree18LIBZAHL_POOL_ALLOC17hdbd958828a9dde78E = internal global <{ [512 x i8] }> zeroinitializer, align 8
@alloc170 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zfree.rs" }>, align 1
@alloc139 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\1E\00\00\00\0D\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc141 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\1F\00\00\00\0D\00\00\00" }>, align 8
@alloc143 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00 \00\00\00\05\00\00\00" }>, align 8
@str.2 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc145 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\22\00\00\00\0D\00\00\00" }>, align 8
@alloc147 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00#\00\00\00\1D\00\00\00" }>, align 8
@str.3 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc149 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00$\00\00\00\18\00\00\00" }>, align 8
@alloc151 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00%\00\00\003\00\00\00" }>, align 8
@alloc153 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00'\00\00\00\16\00\00\00" }>, align 8
@alloc155 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00*\00\00\00\1C\00\00\00" }>, align 8
@alloc157 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00/\00\00\00\11\00\00\00" }>, align 8
@alloc159 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\000\00\00\00 \00\00\00" }>, align 8
@alloc161 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\002\00\00\00\0D\00\00\00" }>, align 8
@alloc163 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\003\00\00\00\0D\00\00\00" }>, align 8
@alloc165 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\004\00\00\00\0D\00\00\00" }>, align 8
@alloc167 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\008\00\00\00\09\00\00\00" }>, align 8
@alloc169 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\009\00\00\00\09\00\00\00" }>, align 8
@alloc171 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc170, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00<\00\00\00\06\00\00\00" }>, align 8
@alloc172 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Zahl" }>, align 1
@alloc173 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"sign" }>, align 1
@vtable.4 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i32**)* @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h0beb633427f0a659E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i32**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h045792ffe9b0d854E" to i8*) }>, align 8
@alloc177 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c"padding__" }>, align 1
@alloc178 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"used" }>, align 1
@vtable.5 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h588bb93bac6f7ff6E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he373baded6ed6221E" to i8*) }>, align 8
@alloc182 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"alloced" }>, align 1
@alloc183 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"chars" }>, align 1
@vtable.6 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64***)* @"_ZN4core3ptr40drop_in_place$LT$$RF$$BP$mut$u20$u64$GT$17hb8ee6f6849f546b0E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64***, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf061c1726ed25f10E" to i8*) }>, align 8

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17heecb721da459cbd2E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h45709c47fe10aef1E"()
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
  %9 = load i64, i64* %8, align 8, !range !1, !noundef !2
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h045792ffe9b0d854E"(i32** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i32*, i32** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %0 = call zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h5c28a01a5f19ace4E"(i32* align 4 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he373baded6ed6221E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i64*, i64** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %0 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfe98da0c079a7b30E"(i64* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf061c1726ed25f10E"(i64*** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i64**, i64*** %self, align 8, !nonnull !2, !align !4, !noundef !2
  %0 = call zeroext i1 @"_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0564b2d9614ab976E"(i64** align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h5c28a01a5f19ace4E"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
  %3 = load i8, i8* %0, align 1, !range !5, !noundef !2
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
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfe98da0c079a7b30E"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
  %3 = load i8, i8* %0, align 1, !range !5, !noundef !2
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
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h310ca3b938d70701E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !6, !noundef !2
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h6f04df77be335624E(i64 %_3), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h0e8d98a4d11297e5E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !6, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h21db6db31d5998fbE"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
  %12 = load i8, i8* %11, align 8, !range !5, !noundef !2
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !5, !noundef !2
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
  %27 = load i8, i8* %2, align 1, !range !5, !noundef !2
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
  %32 = load i64, i64* %31, align 8, !range !8, !noundef !2
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h6f04df77be335624E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !7, !noundef !2
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hb57e077d113acd1eE(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h0beb633427f0a659E"(i32** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h588bb93bac6f7ff6E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr40drop_in_place$LT$$RF$$BP$mut$u20$u64$GT$17hb8ee6f6849f546b0E"(i64*** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr53drop_in_place$LT$core..alloc..layout..LayoutError$GT$17h371b3f0ba59cb93cE"(%"core::alloc::layout::LayoutError"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h02b9021a7cd90195E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !5, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h21d13c2911f713cbE"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h088317993508f05aE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h02b9021a7cd90195E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6285a1cde80bb547E"(i64** %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64** %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h088317993508f05aE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h02b9021a7cd90195E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h088317993508f05aE({}* %data_address) unnamed_addr #0 {
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
define i64** @_ZN4core3ptr8metadata18from_raw_parts_mut17h9742f1744dbb70c2E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<*mut u64>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<*mut u64>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<*mut u64>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<*mut u64>", %"core::ptr::metadata::PtrComponents<*mut u64>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<*mut u64>"* %_3 to %"core::ptr::metadata::PtrComponents<*mut u64>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<*mut u64>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<*mut u64>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<*mut u64>"* %_3 to i64***
  %6 = load i64**, i64*** %5, align 8
  ret i64** %6
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h836c0fc469c9676eE"({}* %self) unnamed_addr #0 {
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
define { i64, i64 } @_ZN4core5alloc6layout10size_align17h3978bfb2aed76ed9E() unnamed_addr #1 {
start:
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 8, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 8, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hfb26646f9a63bc64E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h0e8d98a4d11297e5E(i64 %align), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !6, !noundef !2
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout3new17hb5c2c25799bca319E() unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @_ZN4core5alloc6layout10size_align17h3978bfb2aed76ed9E()
  %_3.0 = extractvalue { i64, i64 } %0, 0
  %_3.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hfb26646f9a63bc64E(i64 %_3.0, i64 %_3.1)
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { i64, i64 } undef, i64 %2, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17hdebf4a0bfe655000E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h7072c4d9434d7ceaE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !6, !noundef !2
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h310ca3b938d70701E(i64 %_3), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hb57e077d113acd1eE(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17hd5b0a1d7d7d07c1bE(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h21db6db31d5998fbE"(i64 8, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h84a6cd92ed66cd81E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb5e10aef49557093E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !8, !noundef !2
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17heecb721da459cbd2E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc116 to %"core::panic::location::Location"*))
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !range !1, !noundef !2
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb9:                                              ; preds = %bb5
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hfb26646f9a63bc64E(i64 %val, i64 8)
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
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h84a6cd92ed66cd81E"(i64 %0, i64 %1) unnamed_addr #0 {
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
  %_3 = load i64, i64* %5, align 8, !range !8, !noundef !2
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
  %12 = load i8, i8* %_7, align 1, !range !5, !noundef !2
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !range !8, !noundef !2
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h880ae72f752962e3E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %e = alloca %"core::alloc::layout::LayoutError", align 1
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !1, !noundef !2
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
  %t.1 = load i64, i64* %10, align 8, !range !6, !noundef !2
  %11 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %12 = insertvalue { i64, i64 } %11, i64 %t.1, 1
  ret { i64, i64 } %12

bb1:                                              ; preds = %start
  %_7.0 = bitcast %"core::alloc::layout::LayoutError"* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 bitcast (<{ [43 x i8] }>* @alloc134 to [0 x i8]*), i64 43, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*), %"core::panic::location::Location"* align 8 %2) #8
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = extractvalue { i8*, i32 } %13, 1
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb4
  %18 = bitcast { i8*, i32 }* %3 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0564b2d9614ab976E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = call zeroext i1 @"_ZN52_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h5b11448becd026cbE"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h45709c47fe10aef1E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN52_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h5b11448becd026cbE"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_5 = alloca i64*, align 8
  %_6 = load i64*, i64** %self, align 8
  store i64* %_6, i64** %_5, align 8
  %0 = call zeroext i1 @"_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17hab2140cfd5788b41E"(i64** align 8 %_5, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17hab2140cfd5788b41E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_5 = load i64*, i64** %self, align 8
  %_4 = bitcast i64* %_5 to {}*
  %_3 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h836c0fc469c9676eE"({}* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hde7a97c2cc87755fE(i64 %_3, %"core::fmt::Formatter"* align 8 %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17he447c097fa30ceb1E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17hdebf4a0bfe655000E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h7072c4d9434d7ceaE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #9
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17h6ad71ecfc29536beE(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hdebf4a0bfe655000E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h7072c4d9434d7ceaE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #9
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc7realloc17h0dbddb5ca19c85fdE(i8* %ptr, i64 %0, i64 %1, i64 %new_size) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_5 = call i64 @_ZN4core5alloc6layout6Layout4size17hdebf4a0bfe655000E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core5alloc6layout6Layout5align17h7072c4d9434d7ceaE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_realloc(i8* %ptr, i64 %_5, i64 %_7, i64 %new_size) #9
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb5e10aef49557093E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !8, !noundef !2
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
  %14 = load i64, i64* %13, align 8, !range !8, !noundef !2
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: uwtable
define void @_ZN5zfree5zfree17h22f7148be3c3d98dE([1 x %Zahl]* %a) unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %1 = alloca i64**, align 8
  %2 = alloca i64, align 8
  %new = alloca i64**, align 8
  %x = alloca i64, align 8
  %3 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %4 = getelementptr inbounds %Zahl, %Zahl* %3, i32 0, i32 2
  %_3 = load i64*, i64** %4, align 8
  %_2 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h21d13c2911f713cbE"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb45, label %bb2

bb2:                                              ; preds = %bb1
  %5 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %6 = getelementptr inbounds %Zahl, %Zahl* %5, i32 0, i32 1
  %_9 = load i64, i64* %6, align 8
  %7 = call i64 @llvm.ctlz.i64(i64 %_9, i1 false)
  store i64 %7, i64* %2, align 8
  %_2.i = load i64, i64* %2, align 8
  %8 = trunc i64 %_2.i to i32
  br label %bb3

bb45:                                             ; preds = %bb44, %bb38, %bb1
  ret void

bb3:                                              ; preds = %bb2
  %_7 = zext i32 %8 to i64
  %9 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 63, i64 %_7)
  %_11.0 = extractvalue { i64, i1 } %9, 0
  %_11.1 = extractvalue { i64, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_11.1, i1 false)
  br i1 %10, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  %_16 = icmp ult i64 %_11.0, 64
  %11 = call i1 @llvm.expect.i1(i1 %_16, i1 true)
  br i1 %11, label %bb5, label %panic1

panic:                                            ; preds = %bb3
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc139 to %"core::panic::location::Location"*)) #8
  unreachable

bb5:                                              ; preds = %bb4
  %12 = getelementptr inbounds [64 x i64], [64 x i64]* bitcast (<{ [512 x i8] }>* @_ZN5zfree14LIBZAHL_POOL_N17h7cb01e150689ab60E to [64 x i64]*), i64 0, i64 %_11.0
  %j = load i64, i64* %12, align 8
  %_20 = icmp ult i64 %_11.0, 64
  %13 = call i1 @llvm.expect.i1(i1 %_20, i1 true)
  br i1 %13, label %bb6, label %panic2

panic1:                                           ; preds = %bb4
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc141 to %"core::panic::location::Location"*)) #8
  unreachable

bb6:                                              ; preds = %bb5
  %14 = getelementptr inbounds [64 x i64], [64 x i64]* bitcast (<{ [512 x i8] }>* @_ZN5zfree14LIBZAHL_POOL_N17h7cb01e150689ab60E to [64 x i64]*), i64 0, i64 %_11.0
  %15 = load i64, i64* %14, align 8
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %15, i64 1)
  %_21.0 = extractvalue { i64, i1 } %16, 0
  %_21.1 = extractvalue { i64, i1 } %16, 1
  %17 = call i1 @llvm.expect.i1(i1 %_21.1, i1 false)
  br i1 %17, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc143 to %"core::panic::location::Location"*)) #8
  unreachable

bb7:                                              ; preds = %bb6
  %18 = getelementptr inbounds [64 x i64], [64 x i64]* bitcast (<{ [512 x i8] }>* @_ZN5zfree14LIBZAHL_POOL_N17h7cb01e150689ab60E to [64 x i64]*), i64 0, i64 %_11.0
  store i64 %_21.0, i64* %18, align 8
  %_28 = icmp ult i64 %_11.0, 64
  %19 = call i1 @llvm.expect.i1(i1 %_28, i1 true)
  br i1 %19, label %bb8, label %panic4

panic3:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc143 to %"core::panic::location::Location"*)) #8
  unreachable

bb8:                                              ; preds = %bb7
  %20 = getelementptr inbounds [64 x i64], [64 x i64]* bitcast (<{ [512 x i8] }>* @_ZN5zfree18LIBZAHL_POOL_ALLOC17hdbd958828a9dde78E to [64 x i64]*), i64 0, i64 %_11.0
  %_24 = load i64, i64* %20, align 8
  %_22 = icmp eq i64 %j, %_24
  br i1 %_22, label %bb9, label %bb42

panic4:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc145 to %"core::panic::location::Location"*)) #8
  unreachable

bb42:                                             ; preds = %bb41, %bb8
  %21 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %22 = getelementptr inbounds %Zahl, %Zahl* %21, i32 0, i32 2
  %_104 = load i64*, i64** %22, align 8
  %_111 = icmp ult i64 %_11.0, 64
  %23 = call i1 @llvm.expect.i1(i1 %_111, i1 true)
  br i1 %23, label %bb43, label %panic16

bb9:                                              ; preds = %bb8
  %24 = icmp eq i64 %j, 0
  br i1 %24, label %bb12, label %bb10

bb12:                                             ; preds = %bb9
  store i64 128, i64* %x, align 8
  br label %bb13

bb10:                                             ; preds = %bb9
  %25 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %j, i64 3)
  %_33.0 = extractvalue { i64, i1 } %25, 0
  %_33.1 = extractvalue { i64, i1 } %25, 1
  %26 = call i1 @llvm.expect.i1(i1 %_33.1, i1 false)
  br i1 %26, label %panic5, label %bb11

bb11:                                             ; preds = %bb10
  %27 = udiv i64 %_33.0, 2
  store i64 %27, i64* %x, align 8
  br label %bb13

panic5:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.3 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc147 to %"core::panic::location::Location"*)) #8
  unreachable

bb13:                                             ; preds = %bb11, %bb12
  %_35 = load i64, i64* %x, align 8
  br label %bb14

bb14:                                             ; preds = %bb13
  %28 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_35, i64 8)
  %_37.0 = extractvalue { i64, i1 } %28, 0
  %_37.1 = extractvalue { i64, i1 } %28, 1
  %29 = call i1 @llvm.expect.i1(i1 %_37.1, i1 false)
  br i1 %29, label %panic6, label %bb15

bb15:                                             ; preds = %bb14
  %_40 = load i64, i64* %x, align 8
  %30 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17hd5b0a1d7d7d07c1bE(i64 %_40)
  %_39.0 = extractvalue { i64, i64 } %30, 0
  %_39.1 = extractvalue { i64, i64 } %30, 1
  br label %bb16

panic6:                                           ; preds = %bb14
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.3 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc149 to %"core::panic::location::Location"*)) #8
  unreachable

bb16:                                             ; preds = %bb15
  %31 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h880ae72f752962e3E"(i64 %_39.0, i64 %_39.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc151 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %31, 0
  %layout.1 = extractvalue { i64, i64 } %31, 1
  br label %bb17

bb17:                                             ; preds = %bb16
  %_47 = icmp ult i64 %_11.0, 64
  %32 = call i1 @llvm.expect.i1(i1 %_47, i1 true)
  br i1 %32, label %bb18, label %panic7

bb18:                                             ; preds = %bb17
  %33 = getelementptr inbounds [64 x i64**], [64 x i64**]* bitcast (<{ [512 x i8] }>* @_ZN5zfree12LIBZAHL_POOL17h3bfee3242580a2a0E to [64 x i64**]*), i64 0, i64 %_11.0
  %_43 = load i64**, i64*** %33, align 8
  %_42 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6285a1cde80bb547E"(i64** %_43)
  br label %bb19

panic7:                                           ; preds = %bb17
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc153 to %"core::panic::location::Location"*)) #8
  unreachable

bb19:                                             ; preds = %bb18
  br i1 %_42, label %bb20, label %bb22

bb22:                                             ; preds = %bb19
  %_56 = icmp ult i64 %_11.0, 64
  %34 = call i1 @llvm.expect.i1(i1 %_56, i1 true)
  br i1 %34, label %bb23, label %panic8

bb20:                                             ; preds = %bb19
  %_48 = call i8* @_ZN5alloc5alloc5alloc17he447c097fa30ceb1E(i64 %layout.0, i64 %layout.1)
  br label %bb21

bb21:                                             ; preds = %bb20
  %35 = bitcast i8* %_48 to i64**
  store i64** %35, i64*** %new, align 8
  br label %bb25

bb25:                                             ; preds = %bb24, %bb21
  %_60 = load i64**, i64*** %new, align 8
  %_59 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6285a1cde80bb547E"(i64** %_60)
  br label %bb26

bb23:                                             ; preds = %bb22
  %36 = getelementptr inbounds [64 x i64**], [64 x i64**]* bitcast (<{ [512 x i8] }>* @_ZN5zfree12LIBZAHL_POOL17h3bfee3242580a2a0E to [64 x i64**]*), i64 0, i64 %_11.0
  %_52 = load i64**, i64*** %36, align 8
  %_51 = bitcast i64** %_52 to i8*
  %_50 = call i8* @_ZN5alloc5alloc7realloc17h0dbddb5ca19c85fdE(i8* %_51, i64 %layout.0, i64 %layout.1, i64 %_37.0)
  br label %bb24

panic8:                                           ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc155 to %"core::panic::location::Location"*)) #8
  unreachable

bb24:                                             ; preds = %bb23
  %37 = bitcast i8* %_50 to i64**
  store i64** %37, i64*** %new, align 8
  br label %bb25

bb26:                                             ; preds = %bb25
  br i1 %_59, label %bb27, label %bb39

bb39:                                             ; preds = %bb26
  %_94 = load i64**, i64*** %new, align 8
  %_98 = icmp ult i64 %_11.0, 64
  %38 = call i1 @llvm.expect.i1(i1 %_98, i1 true)
  br i1 %38, label %bb40, label %panic14

bb27:                                             ; preds = %bb26
  %39 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %40 = getelementptr inbounds %Zahl, %Zahl* %39, i32 0, i32 2
  %_63 = load i64*, i64** %40, align 8
  %_62 = bitcast i64* %_63 to i8*
  %41 = call { i64, i64 } @_ZN4core5alloc6layout6Layout3new17hb5c2c25799bca319E()
  %_65.0 = extractvalue { i64, i64 } %41, 0
  %_65.1 = extractvalue { i64, i64 } %41, 1
  br label %bb28

bb28:                                             ; preds = %bb27
  call void @_ZN5alloc5alloc7dealloc17h6ad71ecfc29536beE(i8* %_62, i64 %_65.0, i64 %_65.1)
  br label %bb29

bb29:                                             ; preds = %bb28
  %_72 = icmp ult i64 %_11.0, 64
  %42 = call i1 @llvm.expect.i1(i1 %_72, i1 true)
  br i1 %42, label %bb30, label %panic9

bb30:                                             ; preds = %bb29
  %43 = getelementptr inbounds [64 x i64**], [64 x i64**]* bitcast (<{ [512 x i8] }>* @_ZN5zfree12LIBZAHL_POOL17h3bfee3242580a2a0E to [64 x i64**]*), i64 0, i64 %_11.0
  %_68 = load i64**, i64*** %43, align 8
  %_67 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6285a1cde80bb547E"(i64** %_68)
  br label %bb31

panic9:                                           ; preds = %bb29
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc157 to %"core::panic::location::Location"*)) #8
  unreachable

bb31:                                             ; preds = %bb30
  %_66 = xor i1 %_67, true
  br i1 %_66, label %bb32, label %bb34

bb34:                                             ; preds = %bb33, %bb31
  %_84 = icmp ult i64 %_11.0, 64
  %44 = call i1 @llvm.expect.i1(i1 %_84, i1 true)
  br i1 %44, label %bb35, label %panic11

bb32:                                             ; preds = %bb31
  %_79 = icmp ult i64 %_11.0, 64
  %45 = call i1 @llvm.expect.i1(i1 %_79, i1 true)
  br i1 %45, label %bb33, label %panic10

bb33:                                             ; preds = %bb32
  %46 = getelementptr inbounds [64 x i64**], [64 x i64**]* bitcast (<{ [512 x i8] }>* @_ZN5zfree12LIBZAHL_POOL17h3bfee3242580a2a0E to [64 x i64**]*), i64 0, i64 %_11.0
  %_75 = load i64**, i64*** %46, align 8
  %_74 = bitcast i64** %_75 to i8*
  call void @_ZN5alloc5alloc7dealloc17h6ad71ecfc29536beE(i8* %_74, i64 %layout.0, i64 %layout.1)
  br label %bb34

panic10:                                          ; preds = %bb32
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc159 to %"core::panic::location::Location"*)) #8
  unreachable

bb35:                                             ; preds = %bb34
  %47 = getelementptr inbounds [64 x i64], [64 x i64]* bitcast (<{ [512 x i8] }>* @_ZN5zfree14LIBZAHL_POOL_N17h7cb01e150689ab60E to [64 x i64]*), i64 0, i64 %_11.0
  store i64 0, i64* %47, align 8
  %48 = bitcast {}** %0 to i64*
  store i64 0, i64* %48, align 8
  %49 = load {}*, {}** %0, align 8
  %50 = call i64** @_ZN4core3ptr8metadata18from_raw_parts_mut17h9742f1744dbb70c2E({}* %49)
  br label %bb36

panic11:                                          ; preds = %bb34
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc161 to %"core::panic::location::Location"*)) #8
  unreachable

bb36:                                             ; preds = %bb35
  %_89 = icmp ult i64 %_11.0, 64
  %51 = call i1 @llvm.expect.i1(i1 %_89, i1 true)
  br i1 %51, label %bb37, label %panic12

bb37:                                             ; preds = %bb36
  %52 = getelementptr inbounds [64 x i64**], [64 x i64**]* bitcast (<{ [512 x i8] }>* @_ZN5zfree12LIBZAHL_POOL17h3bfee3242580a2a0E to [64 x i64**]*), i64 0, i64 %_11.0
  store i64** %50, i64*** %52, align 8
  %_93 = icmp ult i64 %_11.0, 64
  %53 = call i1 @llvm.expect.i1(i1 %_93, i1 true)
  br i1 %53, label %bb38, label %panic13

panic12:                                          ; preds = %bb36
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc163 to %"core::panic::location::Location"*)) #8
  unreachable

bb38:                                             ; preds = %bb37
  %54 = getelementptr inbounds [64 x i64], [64 x i64]* bitcast (<{ [512 x i8] }>* @_ZN5zfree18LIBZAHL_POOL_ALLOC17hdbd958828a9dde78E to [64 x i64]*), i64 0, i64 %_11.0
  store i64 0, i64* %54, align 8
  br label %bb45

panic13:                                          ; preds = %bb37
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc165 to %"core::panic::location::Location"*)) #8
  unreachable

bb40:                                             ; preds = %bb39
  %55 = getelementptr inbounds [64 x i64**], [64 x i64**]* bitcast (<{ [512 x i8] }>* @_ZN5zfree12LIBZAHL_POOL17h3bfee3242580a2a0E to [64 x i64**]*), i64 0, i64 %_11.0
  store i64** %_94, i64*** %55, align 8
  %_99 = load i64, i64* %x, align 8
  %_103 = icmp ult i64 %_11.0, 64
  %56 = call i1 @llvm.expect.i1(i1 %_103, i1 true)
  br i1 %56, label %bb41, label %panic15

panic14:                                          ; preds = %bb39
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc167 to %"core::panic::location::Location"*)) #8
  unreachable

bb41:                                             ; preds = %bb40
  %57 = getelementptr inbounds [64 x i64], [64 x i64]* bitcast (<{ [512 x i8] }>* @_ZN5zfree18LIBZAHL_POOL_ALLOC17hdbd958828a9dde78E to [64 x i64]*), i64 0, i64 %_11.0
  store i64 %_99, i64* %57, align 8
  br label %bb42

panic15:                                          ; preds = %bb40
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc169 to %"core::panic::location::Location"*)) #8
  unreachable

bb43:                                             ; preds = %bb42
  %58 = getelementptr inbounds [64 x i64**], [64 x i64**]* bitcast (<{ [512 x i8] }>* @_ZN5zfree12LIBZAHL_POOL17h3bfee3242580a2a0E to [64 x i64**]*), i64 0, i64 %_11.0
  %_107 = load i64**, i64*** %58, align 8
  %59 = getelementptr inbounds i64*, i64** %_107, i64 %j
  store i64** %59, i64*** %1, align 8
  %_3.i = load i64**, i64*** %1, align 8
  br label %bb44

panic16:                                          ; preds = %bb42
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 64, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc171 to %"core::panic::location::Location"*)) #8
  unreachable

bb44:                                             ; preds = %bb43
  store i64* %_104, i64** %_3.i, align 8
  br label %bb45
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN48_$LT$zfree..Zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17hb64119b29465c0d9E"(%Zahl* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_35 = alloca i64**, align 8
  %_29 = alloca i64*, align 8
  %_23 = alloca i64*, align 8
  %_17 = alloca i32*, align 8
  %_11 = alloca i32*, align 8
  %0 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 3
  store i32* %0, i32** %_11, align 8
  %_8.0 = bitcast i32** %_11 to {}*
  %1 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 4
  store i32* %1, i32** %_17, align 8
  %_14.0 = bitcast i32** %_17 to {}*
  %2 = bitcast %Zahl* %self to i64*
  store i64* %2, i64** %_23, align 8
  %_20.0 = bitcast i64** %_23 to {}*
  %3 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 1
  store i64* %3, i64** %_29, align 8
  %_26.0 = bitcast i64** %_29 to {}*
  %4 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  store i64** %4, i64*** %_35, align 8
  %_32.0 = bitcast i64*** %_35 to {}*
  %5 = call zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17h87b108015e0bbfdeE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc172 to [0 x i8]*), i64 4, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc173 to [0 x i8]*), i64 4, {}* align 1 %_8.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.4 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [9 x i8] }>* @alloc177 to [0 x i8]*), i64 9, {}* align 1 %_14.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.4 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc178 to [0 x i8]*), i64 4, {}* align 1 %_20.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.5 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc182 to [0 x i8]*), i64 7, {}* align 1 %_26.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.5 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc183 to [0 x i8]*), i64 5, {}* align 1 %_32.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.6 to [3 x i64]*))
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %5
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

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
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hecf8053762888bb9E"(%"core::alloc::layout::LayoutError"* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hde7a97c2cc87755fE(i64, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #7

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #7

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17h87b108015e0bbfdeE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #8 = { noreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i64 0, i64 -9223372036854775807}
!2 = !{}
!3 = !{i64 4}
!4 = !{i64 8}
!5 = !{i8 0, i8 2}
!6 = !{i64 1, i64 -9223372036854775807}
!7 = !{i64 1, i64 0}
!8 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zfree.rs.bc", hash: (553118856, 547274942, 3001641426, 3438838088, 3203382758))
^1 = gv: (name: "_ZN48_$LT$zfree..Zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17hb64119b29465c0d9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23, calls: ((callee: ^96)), refs: (^34, ^91, ^16, ^86, ^2, ^26, ^10, ^12, ^75)))) ; guid = 111644241731927222
^2 = gv: (name: "alloc178", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 225861965512635051
^3 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h088317993508f05aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 240123493147829544
^4 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h880ae72f752962e3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^63)), refs: (^85, ^37, ^48)))) ; guid = 539851220784462450
^5 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^6 = gv: (name: "alloc149", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 672128700661829378
^7 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h310ca3b938d70701E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^83))))) ; guid = 816404525838790545
^8 = gv: (name: "_ZN4core5alloc6layout6Layout5array17hd5b0a1d7d7d07c1bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^93), (callee: ^35), (callee: ^99), (callee: ^49), (callee: ^76)), refs: (^66)))) ; guid = 938661484644970231
^9 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^10 = gv: (name: "vtable.4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29, ^88)))) ; guid = 942582759960025600
^11 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^12 = gv: (name: "alloc173", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1087855235668954866
^13 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1524631461206710431
^14 = gv: (name: "_ZN4core3ptr40drop_in_place$LT$$RF$$BP$mut$u20$u64$GT$17hb8ee6f6849f546b0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 1859104860683437024
^15 = gv: (name: "_ZN5alloc5alloc7realloc17h0dbddb5ca19c85fdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^55), (callee: ^39), (callee: ^90))))) ; guid = 1911328069970489871
^16 = gv: (name: "alloc182", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1939709218743330600
^17 = gv: (name: "_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E") ; guid = 1967081855160219432
^18 = gv: (name: "alloc151", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 2108078627105847306
^19 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h0e8d98a4d11297e5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 2177311423262082674
^20 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^21 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h21d13c2911f713cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^3), (callee: ^38))))) ; guid = 2770859098645028367
^22 = gv: (name: "alloc167", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 2988174795259895330
^23 = gv: (name: "alloc163", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 3008474715565601735
^24 = gv: (name: "alloc171", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 3457059821844636916
^25 = gv: (name: "_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0564b2d9614ab976E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^82))))) ; guid = 4018603064095193601
^26 = gv: (name: "alloc177", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4163926257603684863
^27 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$core..alloc..layout..LayoutError$GT$17h371b3f0ba59cb93cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 4556825067557325522
^28 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^29 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h045792ffe9b0d854E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^69))))) ; guid = 4902811022877631235
^30 = gv: (name: "alloc141", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 5019187716655446933
^31 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h836c0fc469c9676eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 5054018349110678408
^32 = gv: (name: "alloc161", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 5090303727693238409
^33 = gv: (name: "_ZN5zfree12LIBZAHL_POOL17h3bfee3242580a2a0E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 5292718688822801674
^34 = gv: (name: "vtable.6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^51, ^14)))) ; guid = 5390919203449332678
^35 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h84a6cd92ed66cd81E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 5616063624755740525
^36 = gv: (name: "_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E") ; guid = 5691937269951177933
^37 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^27, ^92)))) ; guid = 5767826662342242987
^38 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h02b9021a7cd90195E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 5946278917416161119
^39 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h7072c4d9434d7ceaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^7), (callee: ^68))))) ; guid = 6296644352459397027
^40 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6285a1cde80bb547E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^3), (callee: ^38))))) ; guid = 6516459414107531133
^41 = gv: (name: "_ZN5alloc5alloc5alloc17he447c097fa30ceb1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^55), (callee: ^39), (callee: ^60))))) ; guid = 6548009321018779740
^42 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^43 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^44 = gv: (name: "alloc170", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7156888029869432543
^45 = gv: (name: "alloc139", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 7214445850566609876
^46 = gv: (name: "alloc155", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 7419744435244342507
^47 = gv: (name: "_ZN4core3fmt17pointer_fmt_inner17hde7a97c2cc87755fE") ; guid = 8603763538316848196
^48 = gv: (name: "alloc134", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8665436394142851951
^49 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17heecb721da459cbd2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^53))))) ; guid = 9236533145759680486
^50 = gv: (name: "alloc159", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 9329047372724553935
^51 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf061c1726ed25f10E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^25))))) ; guid = 9459249379773280982
^52 = gv: (name: "_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17hab2140cfd5788b41E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^31), (callee: ^47))))) ; guid = 9607048502480292083
^53 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h45709c47fe10aef1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9682638419266642750
^54 = gv: (name: "alloc165", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 9693141215242557023
^55 = gv: (name: "_ZN4core5alloc6layout6Layout4size17hdebf4a0bfe655000E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 9715463871988651695
^56 = gv: (name: "_ZN5alloc5alloc7dealloc17h6ad71ecfc29536beE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^55), (callee: ^39), (callee: ^28))))) ; guid = 9807233471900988206
^57 = gv: (name: "alloc143", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 10004475218488358197
^58 = gv: (name: "alloc145", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 10194781632749709449
^59 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^60 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^61 = gv: (name: "_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfe98da0c079a7b30E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^17), (callee: ^36), (callee: ^70), (callee: ^11), (callee: ^100))))) ; guid = 10571567108116641268
^62 = gv: (name: "_ZN4core5alloc6layout6Layout3new17hb5c2c25799bca319E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^84), (callee: ^76))))) ; guid = 10646836992900105145
^63 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^64 = gv: (name: "_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h588bb93bac6f7ff6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 11022146806390538663
^65 = gv: (name: "alloc157", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 11037395565150854592
^66 = gv: (name: "alloc116", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^97)))) ; guid = 11060950384656798514
^67 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11096831801493440874
^68 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17hb57e077d113acd1eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 11401588763223753276
^69 = gv: (name: "_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h5c28a01a5f19ace4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^17), (callee: ^36), (callee: ^72), (callee: ^78), (callee: ^74))))) ; guid = 11501872510130182078
^70 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E") ; guid = 11743839634310749277
^71 = gv: (name: "alloc169", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 11790008736358982070
^72 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h7a5e9cbb7827bfc6E") ; guid = 11841554529459563407
^73 = gv: (name: "_ZN5zfree18LIBZAHL_POOL_ALLOC17hdbd958828a9dde78E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 12216314139572768559
^74 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h73d7b5c940bc6831E") ; guid = 12218248418932013088
^75 = gv: (name: "alloc172", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12411082706250846731
^76 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hfb26646f9a63bc64E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^19))))) ; guid = 12548066491133772839
^77 = gv: (name: "alloc153", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 12950696806806453877
^78 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^79 = gv: (name: "str.3", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14198484002341285171
^80 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^81 = gv: (name: "_ZN5zfree5zfree17h22f7148be3c3d98dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 215, calls: ((callee: ^21), (callee: ^59), (callee: ^101), (callee: ^8), (callee: ^4), (callee: ^40), (callee: ^41), (callee: ^15), (callee: ^62), (callee: ^56), (callee: ^94)), refs: (^45, ^13, ^87, ^30, ^57, ^67, ^73, ^58, ^95, ^79, ^6, ^18, ^33, ^77, ^46, ^65, ^50, ^32, ^23, ^54, ^22, ^71, ^24)))) ; guid = 14486900684861738950
^82 = gv: (name: "_ZN52_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h5b11448becd026cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^52))))) ; guid = 14559058865483343633
^83 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h6f04df77be335624E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 14668302814496985816
^84 = gv: (name: "_ZN4core5alloc6layout10size_align17h3978bfb2aed76ed9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 14673995377238776446
^85 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^86 = gv: (name: "vtable.5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^98, ^64)))) ; guid = 14886617146562076871
^87 = gv: (name: "_ZN5zfree14LIBZAHL_POOL_N17h7cb01e150689ab60E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 14956046212853325388
^88 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h0beb633427f0a659E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 14973911294207380810
^89 = gv: (name: "llvm.ctlz.i64") ; guid = 15146615656485281006
^90 = gv: (name: "__rust_realloc") ; guid = 15507136812573830794
^91 = gv: (name: "alloc183", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15648095146783793479
^92 = gv: (name: "_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hecf8053762888bb9E") ; guid = 15716999937591744760
^93 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h21db6db31d5998fbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 15730241071560604497
^94 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h9742f1744dbb70c2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 16200059117402830516
^95 = gv: (name: "alloc147", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 16410826943979277461
^96 = gv: (name: "_ZN4core3fmt9Formatter26debug_struct_field5_finish17h87b108015e0bbfdeE") ; guid = 16521166769891023571
^97 = gv: (name: "alloc115", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16807458712520533080
^98 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he373baded6ed6221E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^61))))) ; guid = 17448441698964801506
^99 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb5e10aef49557093E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 18033414407215187126
^100 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE") ; guid = 18145797040138870230
^101 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^102 = blockcount: 189
