; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_print_image_info.rs.bc'
source_filename = "opng_print_image_info.7660a1bd-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::option::Option<PngColor16>" = type { i8, [9 x i8] }
%OpngImage = type <{ i32, i32, i32, i32, i32, i32, i32, %"alloc::vec::Vec<alloc::vec::Vec<u8>>", %"alloc::vec::Vec<PngColor>", i32, %"core::option::Option<PngColor16>", %PngColor16, %"alloc::vec::Vec<u16>", %"core::option::Option<PngColor8>", %PngColor8, %"alloc::vec::Vec<u8>", i32, %"core::option::Option<PngColor16>", %PngColor16, %"alloc::vec::Vec<PngUnknownChunk>", i32 }>
%"alloc::vec::Vec<alloc::vec::Vec<u8>>" = type { { i64*, i64 }, i64 }
%"alloc::vec::Vec<PngColor>" = type { { i8*, i64 }, i64 }
%"alloc::vec::Vec<u16>" = type { { i16*, i64 }, i64 }
%"core::option::Option<PngColor8>" = type { i8, [5 x i8] }
%PngColor8 = type { i8, i8, i8, i8, i8 }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%PngColor16 = type <{ i8, i16, i16, i16, i16 }>
%"alloc::vec::Vec<PngUnknownChunk>" = type { { i8*, i64 }, i64 }

@alloc85 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc86 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc85, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc77 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc89 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc90 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc89, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc17 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"x" }>, align 1
@alloc7 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c" pixels\0A" }>, align 1
@alloc5 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc77 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc17, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [8 x i8] }>, <{ [8 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@alloc69 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c", " }>, align 1
@alloc70 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@alloc91 = private unnamed_addr constant <{ [103 x i8] }> <{ [103 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_print_image_info.rs" }>, align 1
@alloc92 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc91, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00M\00\00\00\18\00\00\00" }>, align 8
@alloc22 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c" bits/pixel\0A" }>, align 1
@alloc16 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc77 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc17, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc21 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc77 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc24 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"1 bit/pixel\0A" }>, align 1
@alloc25 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc41 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c" colors\0A" }>, align 1
@alloc40 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc77 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [8 x i8] }>, <{ [8 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@alloc34 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"1 color\0A" }>, align 1
@alloc35 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [8 x i8] }>, <{ [8 x i8] }>* @alloc34, i32 0, i32 0, i32 0), [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@alloc43 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c" (" }>, align 1
@alloc45 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c" transparent)\0A" }>, align 1
@alloc44 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc43, i32 0, i32 0, i32 0), [8 x i8] c"\02\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [14 x i8] }>, <{ [14 x i8] }>* @alloc45, i32 0, i32 0, i32 0), [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@alloc47 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c" in palette\0A" }>, align 1
@alloc48 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc53 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc77 to i8*), [8 x i8] zeroinitializer }>, align 8
@alloc93 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"RGB" }>, align 1
@alloc94 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c"grayscale" }>, align 1
@alloc59 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"+alpha\0A" }>, align 1
@alloc60 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [7 x i8] }>, <{ [7 x i8] }>* @alloc59, i32 0, i32 0, i32 0), [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@alloc64 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"+transparency\0A" }>, align 1
@alloc65 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [14 x i8] }>, <{ [14 x i8] }>* @alloc64, i32 0, i32 0, i32 0), [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@alloc74 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"interlaced\0A" }>, align 1
@alloc75 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [11 x i8] }>, <{ [11 x i8] }>* @alloc74, i32 0, i32 0, i32 0), [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: uwtable
define zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h32a3e63ffc14c1dcE"({ [0 x i8]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5a54aaaa75573ba9E(i32* align 4 %x) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8dbe6395c43945d8E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hccb83b68df231422E({ [0 x i8]*, i64 }* align 8 %x) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h5d8ef3cd42b929b6E({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h32a3e63ffc14c1dcE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17he94f6aa80989ddf1E(i32* align 4 %x) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h97b4c75783aeedcdE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h51d1725681cab92bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h5d8ef3cd42b929b6E({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f) unnamed_addr #1 {
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8dbe6395c43945d8E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #1 {
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
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h97b4c75783aeedcdE(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #1 {
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
define internal void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #1 {
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
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc86 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc77 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc90 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hce167960ad27c731E"(%"core::option::Option<PngColor16>"* align 1 %self) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast %"core::option::Option<PngColor16>"* %self to i8*
  %2 = load i8, i8* %1, align 1, !range !3, !noundef !1
  %3 = trunc i8 %2 to i1
  %_2 = zext i1 %3 to i64
  %4 = icmp eq i64 %_2, 1
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: uwtable
define void @opng_print_image_info(%OpngImage* align 1 %image, i1 zeroext %show_dim, i1 zeroext %show_depth, i1 zeroext %show_type, i1 zeroext %show_interlaced) unnamed_addr #0 {
start:
  %_180 = alloca %"core::fmt::Arguments", align 8
  %_172 = alloca %"core::fmt::Arguments", align 8
  %_161 = alloca %"core::fmt::Arguments", align 8
  %_151 = alloca %"core::fmt::Arguments", align 8
  %_144 = alloca { [0 x i8]*, i64 }, align 8
  %_140 = alloca [1 x { i8*, i64* }], align 8
  %_133 = alloca %"core::fmt::Arguments", align 8
  %_125 = alloca %"core::fmt::Arguments", align 8
  %_120 = alloca [1 x { i8*, i64* }], align 8
  %_113 = alloca %"core::fmt::Arguments", align 8
  %_106 = alloca [1 x { i8*, i64* }], align 8
  %_99 = alloca %"core::fmt::Arguments", align 8
  %_91 = alloca %"core::fmt::Arguments", align 8
  %_80 = alloca %"core::fmt::Arguments", align 8
  %_70 = alloca %"core::fmt::Arguments", align 8
  %_65 = alloca [1 x { i8*, i64* }], align 8
  %_58 = alloca %"core::fmt::Arguments", align 8
  %_49 = alloca [2 x { i8*, i64* }], align 8
  %_42 = alloca %"core::fmt::Arguments", align 8
  %channels = alloca i32, align 4
  %_27 = alloca %"core::fmt::Arguments", align 8
  %_17 = alloca [2 x { i8*, i64* }], align 8
  %_10 = alloca %"core::fmt::Arguments", align 8
  %printed = alloca i8, align 1
  %type_channels = alloca [8 x i32], align 4
  %0 = getelementptr inbounds [8 x i32], [8 x i32]* %type_channels, i64 0, i64 0
  store i32 1, i32* %0, align 4
  %1 = getelementptr inbounds [8 x i32], [8 x i32]* %type_channels, i64 0, i64 1
  store i32 0, i32* %1, align 4
  %2 = getelementptr inbounds [8 x i32], [8 x i32]* %type_channels, i64 0, i64 2
  store i32 3, i32* %2, align 4
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* %type_channels, i64 0, i64 3
  store i32 1, i32* %3, align 4
  %4 = getelementptr inbounds [8 x i32], [8 x i32]* %type_channels, i64 0, i64 4
  store i32 2, i32* %4, align 4
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* %type_channels, i64 0, i64 5
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds [8 x i32], [8 x i32]* %type_channels, i64 0, i64 6
  store i32 4, i32* %6, align 4
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %type_channels, i64 0, i64 7
  store i32 0, i32* %7, align 4
  store i8 0, i8* %printed, align 1
  br i1 %show_dim, label %bb1, label %bb5

bb5:                                              ; preds = %bb4, %start
  br i1 %show_depth, label %bb6, label %bb21

bb1:                                              ; preds = %start
  store i8 1, i8* %printed, align 1
  %_20 = bitcast %OpngImage* %image to i32*
  %8 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17he94f6aa80989ddf1E(i32* align 4 %_20)
  %_18.0 = extractvalue { i8*, i64* } %8, 0
  %_18.1 = extractvalue { i8*, i64* } %8, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %_23 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 1
  %9 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17he94f6aa80989ddf1E(i32* align 4 %_23)
  %_21.0 = extractvalue { i8*, i64* } %9, 0
  %_21.1 = extractvalue { i8*, i64* } %9, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %10 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_17, i64 0, i64 0
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 0
  store i8* %_18.0, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 1
  store i64* %_18.1, i64** %12, align 8
  %13 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_17, i64 0, i64 1
  %14 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 0
  store i8* %_21.0, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 1
  store i64* %_21.1, i64** %15, align 8
  %_14.0 = bitcast [2 x { i8*, i64* }]* %_17 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_10, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc5 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_14.0, i64 2)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_10)
  br label %bb5

bb21:                                             ; preds = %bb20, %bb18, %bb14, %bb5
  br i1 %show_type, label %bb22, label %bb51

bb6:                                              ; preds = %bb5
  %16 = load i8, i8* %printed, align 1, !range !3, !noundef !1
  %_25 = trunc i8 %16 to i1
  br i1 %_25, label %bb7, label %bb9

bb9:                                              ; preds = %bb8, %bb6
  store i8 1, i8* %printed, align 1
  %17 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 3
  %_37 = load i32, i32* %17, align 1
  %_36 = and i32 %_37, 7
  %_35 = sext i32 %_36 to i64
  %_39 = icmp ult i64 %_35, 8
  %18 = call i1 @llvm.expect.i1(i1 %_39, i1 true)
  br i1 %18, label %bb10, label %panic

bb7:                                              ; preds = %bb6
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_27, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc70 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc77 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb8

bb8:                                              ; preds = %bb7
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_27)
  br label %bb9

bb10:                                             ; preds = %bb9
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %type_channels, i64 0, i64 %_35
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %channels, align 4
  %_40 = load i32, i32* %channels, align 4
  %21 = icmp eq i32 %_40, 1
  br i1 %21, label %bb15, label %bb11

panic:                                            ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_35, i64 8, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc92 to %"core::panic::location::Location"*)) #5
  unreachable

bb15:                                             ; preds = %bb10
  %22 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 2
  %_56 = load i32, i32* %22, align 1
  %23 = icmp eq i32 %_56, 1
  br i1 %23, label %bb19, label %bb16

bb11:                                             ; preds = %bb10
  %24 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5a54aaaa75573ba9E(i32* align 4 %channels)
  %_50.0 = extractvalue { i8*, i64* } %24, 0
  %_50.1 = extractvalue { i8*, i64* } %24, 1
  br label %bb12

bb12:                                             ; preds = %bb11
  %_55 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 2
  %25 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5a54aaaa75573ba9E(i32* align 4 %_55)
  %_53.0 = extractvalue { i8*, i64* } %25, 0
  %_53.1 = extractvalue { i8*, i64* } %25, 1
  br label %bb13

bb13:                                             ; preds = %bb12
  %26 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_49, i64 0, i64 0
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %26, i32 0, i32 0
  store i8* %_50.0, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %26, i32 0, i32 1
  store i64* %_50.1, i64** %28, align 8
  %29 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_49, i64 0, i64 1
  %30 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %29, i32 0, i32 0
  store i8* %_53.0, i8** %30, align 8
  %31 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %29, i32 0, i32 1
  store i64* %_53.1, i64** %31, align 8
  %_46.0 = bitcast [2 x { i8*, i64* }]* %_49 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_42, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc16 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_46.0, i64 2)
  br label %bb14

bb14:                                             ; preds = %bb13
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_42)
  br label %bb21

bb19:                                             ; preds = %bb15
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_70, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc25 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc77 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb20

bb16:                                             ; preds = %bb15
  %_68 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 2
  %32 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5a54aaaa75573ba9E(i32* align 4 %_68)
  %_66.0 = extractvalue { i8*, i64* } %32, 0
  %_66.1 = extractvalue { i8*, i64* } %32, 1
  br label %bb17

bb17:                                             ; preds = %bb16
  %33 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_65, i64 0, i64 0
  %34 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %33, i32 0, i32 0
  store i8* %_66.0, i8** %34, align 8
  %35 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %33, i32 0, i32 1
  store i64* %_66.1, i64** %35, align 8
  %_62.0 = bitcast [1 x { i8*, i64* }]* %_65 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_58, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc21 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_62.0, i64 1)
  br label %bb18

bb18:                                             ; preds = %bb17
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_58)
  br label %bb21

bb20:                                             ; preds = %bb19
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_70)
  br label %bb21

bb51:                                             ; preds = %bb50, %bb48, %bb46, %bb37, %bb21
  br i1 %show_interlaced, label %bb52, label %bb58

bb22:                                             ; preds = %bb21
  %36 = load i8, i8* %printed, align 1, !range !3, !noundef !1
  %_78 = trunc i8 %36 to i1
  br i1 %_78, label %bb23, label %bb25

bb25:                                             ; preds = %bb24, %bb22
  store i8 1, i8* %printed, align 1
  %37 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 3
  %_88 = load i32, i32* %37, align 1
  %_87 = and i32 %_88, 1
  %38 = icmp eq i32 %_87, 0
  br i1 %38, label %bb38, label %bb26

bb23:                                             ; preds = %bb22
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_80, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc70 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc77 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb24

bb24:                                             ; preds = %bb23
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_80)
  br label %bb25

bb38:                                             ; preds = %bb25
  %39 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 3
  %_146 = load i32, i32* %39, align 1
  %_145 = and i32 %_146, 2
  %40 = icmp eq i32 %_145, 0
  br i1 %40, label %bb40, label %bb39

bb26:                                             ; preds = %bb25
  %41 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 9
  %_89 = load i32, i32* %41, align 1
  %42 = icmp eq i32 %_89, 1
  br i1 %42, label %bb27, label %bb29

bb27:                                             ; preds = %bb26
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_91, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc35 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc77 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb28

bb29:                                             ; preds = %bb26
  %_109 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 9
  %43 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5a54aaaa75573ba9E(i32* align 4 %_109)
  %_107.0 = extractvalue { i8*, i64* } %43, 0
  %_107.1 = extractvalue { i8*, i64* } %43, 1
  br label %bb30

bb30:                                             ; preds = %bb29
  %44 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_106, i64 0, i64 0
  %45 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %44, i32 0, i32 0
  store i8* %_107.0, i8** %45, align 8
  %46 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %44, i32 0, i32 1
  store i64* %_107.1, i64** %46, align 8
  %_103.0 = bitcast [1 x { i8*, i64* }]* %_106 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_99, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc40 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_103.0, i64 1)
  br label %bb31

bb31:                                             ; preds = %bb30
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_99)
  br label %bb32

bb32:                                             ; preds = %bb28, %bb31
  %47 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 16
  %_111 = load i32, i32* %47, align 1
  %_110 = icmp sgt i32 %_111, 0
  br i1 %_110, label %bb33, label %bb36

bb28:                                             ; preds = %bb27
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_91)
  br label %bb32

bb36:                                             ; preds = %bb35, %bb32
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_125, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc48 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc77 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb37

bb33:                                             ; preds = %bb32
  %_123 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 16
  %48 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h5a54aaaa75573ba9E(i32* align 4 %_123)
  %_121.0 = extractvalue { i8*, i64* } %48, 0
  %_121.1 = extractvalue { i8*, i64* } %48, 1
  br label %bb34

bb34:                                             ; preds = %bb33
  %49 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_120, i64 0, i64 0
  %50 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %49, i32 0, i32 0
  store i8* %_121.0, i8** %50, align 8
  %51 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %49, i32 0, i32 1
  store i64* %_121.1, i64** %51, align 8
  %_117.0 = bitcast [1 x { i8*, i64* }]* %_120 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_113, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc44 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_117.0, i64 1)
  br label %bb35

bb35:                                             ; preds = %bb34
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_113)
  br label %bb36

bb37:                                             ; preds = %bb36
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_125)
  br label %bb51

bb40:                                             ; preds = %bb38
  %52 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_144, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [9 x i8] }>* @alloc94 to [0 x i8]*), [0 x i8]** %52, align 8
  %53 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_144, i32 0, i32 1
  store i64 9, i64* %53, align 8
  br label %bb41

bb39:                                             ; preds = %bb38
  %54 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_144, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [3 x i8] }>* @alloc93 to [0 x i8]*), [0 x i8]** %54, align 8
  %55 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_144, i32 0, i32 1
  store i64 3, i64* %55, align 8
  br label %bb41

bb41:                                             ; preds = %bb39, %bb40
  %56 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hccb83b68df231422E({ [0 x i8]*, i64 }* align 8 %_144)
  %_141.0 = extractvalue { i8*, i64* } %56, 0
  %_141.1 = extractvalue { i8*, i64* } %56, 1
  br label %bb42

bb42:                                             ; preds = %bb41
  %57 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_140, i64 0, i64 0
  %58 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %57, i32 0, i32 0
  store i8* %_141.0, i8** %58, align 8
  %59 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %57, i32 0, i32 1
  store i64* %_141.1, i64** %59, align 8
  %_137.0 = bitcast [1 x { i8*, i64* }]* %_140 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_133, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc53 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 %_137.0, i64 1)
  br label %bb43

bb43:                                             ; preds = %bb42
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_133)
  br label %bb44

bb44:                                             ; preds = %bb43
  %60 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 3
  %_149 = load i32, i32* %60, align 1
  %_148 = and i32 %_149, 4
  %61 = icmp eq i32 %_148, 0
  br i1 %61, label %bb47, label %bb45

bb47:                                             ; preds = %bb44
  %_159 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 17
  %_158 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hce167960ad27c731E"(%"core::option::Option<PngColor16>"* align 1 %_159)
  br label %bb48

bb45:                                             ; preds = %bb44
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_151, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc60 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc77 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb46

bb46:                                             ; preds = %bb45
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_151)
  br label %bb51

bb48:                                             ; preds = %bb47
  br i1 %_158, label %bb49, label %bb51

bb49:                                             ; preds = %bb48
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_161, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc65 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc77 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb50

bb50:                                             ; preds = %bb49
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_161)
  br label %bb51

bb58:                                             ; preds = %bb57, %bb52, %bb51
  ret void

bb52:                                             ; preds = %bb51
  %62 = getelementptr inbounds %OpngImage, %OpngImage* %image, i32 0, i32 6
  %_169 = load i32, i32* %62, align 1
  %63 = icmp eq i32 %_169, 0
  br i1 %63, label %bb58, label %bb53

bb53:                                             ; preds = %bb52
  %64 = load i8, i8* %printed, align 1, !range !3, !noundef !1
  %_170 = trunc i8 %64 to i1
  br i1 %_170, label %bb54, label %bb56

bb56:                                             ; preds = %bb55, %bb53
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_180, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc75 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc77 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb57

bb54:                                             ; preds = %bb53
  call void @_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_172, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc70 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc77 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb55

bb55:                                             ; preds = %bb54
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_172)
  br label %bb56

bb57:                                             ; preds = %bb56
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_180)
  br label %bb58
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h51d1725681cab92bE"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #0

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_print_image_info.rs.bc", hash: (1188821854, 1474606668, 1445414878, 84838870, 2732645810))
^1 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 510272169222059286
^2 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11, ^21)))) ; guid = 796010813692731255
^3 = gv: (name: "alloc70", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^22)))) ; guid = 1503263764141722335
^4 = gv: (name: "alloc65", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^39)))) ; guid = 2542359261953735279
^5 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^6 = gv: (name: "alloc92", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^52)))) ; guid = 2798704672144897277
^7 = gv: (name: "alloc90", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 3011625372121212040
^8 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3172668345564492935
^9 = gv: (name: "alloc89", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3303775091245441847
^10 = gv: (name: "alloc94", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4019005264260338624
^11 = gv: (name: "alloc77", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4987907212109036325
^12 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11, ^30, ^21)))) ; guid = 5062034157315870635
^13 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h97b4c75783aeedcdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 5141897963429441339
^14 = gv: (name: "alloc60", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^26)))) ; guid = 5158389398447225514
^15 = gv: (name: "alloc74", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5160044122736362630
^16 = gv: (name: "alloc48", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^49)))) ; guid = 5477031099336599750
^17 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^44)))) ; guid = 6006151847325759249
^18 = gv: (name: "opng_print_image_info", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 263, calls: ((callee: ^34), (callee: ^42), (callee: ^51), (callee: ^53), (callee: ^50), (callee: ^27), (callee: ^35)), refs: (^29, ^11, ^3, ^6, ^12, ^17, ^2, ^37, ^24, ^16, ^47, ^10, ^20, ^31, ^14, ^4, ^28)))) ; guid = 6496676863349440926
^19 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^20 = gv: (name: "alloc93", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6591215938347381847
^21 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6980733621462773482
^22 = gv: (name: "alloc69", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7255018266569938642
^23 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h5d8ef3cd42b929b6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 7789902150789845667
^24 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11, ^41)))) ; guid = 8066248076034412491
^25 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h8dbe6395c43945d8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 8193446557118889873
^26 = gv: (name: "alloc59", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8436933817654252311
^27 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hccb83b68df231422E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^23)), refs: (^38)))) ; guid = 9252490577873243953
^28 = gv: (name: "alloc75", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 9412603021132552741
^29 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11, ^30, ^1)))) ; guid = 9892965647539896398
^30 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10772744201627808626
^31 = gv: (name: "alloc53", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11)))) ; guid = 10808733284240032830
^32 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11234517225875750141
^33 = gv: (name: "alloc85", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12947797257828247687
^34 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17he94f6aa80989ddf1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^13)), refs: (^40)))) ; guid = 12985109207340542718
^35 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_some17hce167960ad27c731E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 13062920290639799364
^36 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^37 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 13502457397682591134
^38 = gv: (name: "_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h32a3e63ffc14c1dcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^45))))) ; guid = 13578843906139772108
^39 = gv: (name: "alloc64", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15226997372464920277
^40 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h51d1725681cab92bE") ; guid = 15262257252216737227
^41 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15332718641227034839
^42 = gv: (name: "_ZN4core3fmt9Arguments6new_v117hdced8c16a96c46d9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^42), (callee: ^46)), refs: (^11, ^43, ^7)))) ; guid = 15334299945999617785
^43 = gv: (name: "alloc86", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^33)))) ; guid = 15378040153136928899
^44 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15784231433450704852
^45 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^46 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^47 = gv: (name: "alloc44", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^48, ^8)))) ; guid = 16373763699599902547
^48 = gv: (name: "alloc43", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16853769581150265310
^49 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16916633940505570260
^50 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h5a54aaaa75573ba9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^25)), refs: (^36)))) ; guid = 17094220516519423329
^51 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^52 = gv: (name: "alloc91", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18012358244387389053
^53 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^54 = blockcount: 88
