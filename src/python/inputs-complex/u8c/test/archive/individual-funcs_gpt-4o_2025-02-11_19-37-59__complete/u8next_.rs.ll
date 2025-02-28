; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8next_.rs.bc'
source_filename = "u8next_.82ff0ca8-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }

@alloc191 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc192 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc191, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc194 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc195 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc196 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc198 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"fsm_state_START" }>, align 1
@alloc317 = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8next_.rs" }>, align 1
@alloc200 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00\10\00\00\00\18\00\00\00" }>, align 8
@alloc315 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"fsm_state_end" }>, align 1
@alloc203 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00\13\00\00\00\1F\00\00\00" }>, align 8
@alloc205 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00\16\00\00\00\1F\00\00\00" }>, align 8
@alloc313 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"fsm_state_invalid" }>, align 1
@alloc208 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00\18\00\00\00\1F\00\00\00" }>, align 8
@alloc302 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"fsm_state_len2_0" }>, align 1
@alloc211 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00\1C\00\00\00\1F\00\00\00" }>, align 8
@alloc213 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00 \00\00\00\1F\00\00\00" }>, align 8
@alloc280 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"fsm_state_len3_1" }>, align 1
@alloc216 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00$\00\00\00\1F\00\00\00" }>, align 8
@alloc218 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00(\00\00\00\1F\00\00\00" }>, align 8
@alloc221 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00,\00\00\00\1F\00\00\00" }>, align 8
@alloc223 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\000\00\00\00\1F\00\00\00" }>, align 8
@alloc249 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"fsm_state_len4_1" }>, align 1
@alloc226 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\004\00\00\00\1F\00\00\00" }>, align 8
@alloc258 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"fsm_state_len4_2" }>, align 1
@alloc240 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"fsm_state_len4_0" }>, align 1
@alloc289 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"fsm_state_len3_2" }>, align 1
@alloc271 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"fsm_state_len3_0" }>, align 1
@alloc233 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"fsm_state_null" }>, align 1
@alloc235 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00>\00\00\00\1A\00\00\00" }>, align 8
@alloc237 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00?\00\00\00\18\00\00\00" }>, align 8
@alloc242 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00F\00\00\00\1A\00\00\00" }>, align 8
@alloc244 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00G\00\00\00\18\00\00\00" }>, align 8
@alloc246 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00G\00\00\00.\00\00\00" }>, align 8
@alloc267 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"fsm_state_len4" }>, align 1
@alloc251 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00N\00\00\00\1A\00\00\00" }>, align 8
@alloc253 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00O\00\00\00\18\00\00\00" }>, align 8
@alloc255 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00O\00\00\00.\00\00\00" }>, align 8
@alloc260 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00V\00\00\00\1A\00\00\00" }>, align 8
@alloc262 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00W\00\00\00\18\00\00\00" }>, align 8
@alloc264 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00W\00\00\00.\00\00\00" }>, align 8
@alloc269 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00^\00\00\00)\00\00\00" }>, align 8
@alloc273 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00b\00\00\00\1A\00\00\00" }>, align 8
@alloc275 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00c\00\00\00\18\00\00\00" }>, align 8
@alloc277 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00c\00\00\00.\00\00\00" }>, align 8
@alloc298 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"fsm_state_len3" }>, align 1
@alloc282 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00j\00\00\00\1A\00\00\00" }>, align 8
@alloc284 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00k\00\00\00\18\00\00\00" }>, align 8
@alloc286 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00k\00\00\00.\00\00\00" }>, align 8
@alloc291 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00r\00\00\00\1A\00\00\00" }>, align 8
@alloc293 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00s\00\00\00\18\00\00\00" }>, align 8
@alloc295 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00s\00\00\00.\00\00\00" }>, align 8
@alloc300 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00z\00\00\00)\00\00\00" }>, align 8
@alloc304 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00~\00\00\00\1A\00\00\00" }>, align 8
@alloc306 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00\7F\00\00\00\18\00\00\00" }>, align 8
@alloc308 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00\7F\00\00\00.\00\00\00" }>, align 8
@alloc311 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00\82\00\00\00-\00\00\00" }>, align 8
@alloc316 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"internal error: entered unreachable code" }>, align 1
@alloc318 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc317, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00\8E\00\00\00\16\00\00\00" }>, align 8
@alloc319 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"example" }>, align 1
@alloc183 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Length: " }>, align 1
@alloc185 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c", Character: " }>, align 1
@alloc186 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc184 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [8 x i8] }>, <{ [8 x i8] }>* @alloc183, i32 0, i32 0, i32 0), [8 x i8] c"\08\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [13 x i8] }>, <{ [13 x i8] }>* @alloc185, i32 0, i32 0, i32 0), [8 x i8] c"\0D\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc186, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h6bad329b2b32121aE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %_5 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hc4b2c1657bd55252E"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_5, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hfefd24647c564d81E(i8* %2, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17ha9364d9360b24ce6E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %_5 = call i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h7de36db78a0f4cbfE"([0 x i8]* %slice.0, i64 %slice.1)
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
  %6 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h6bad329b2b32121aE"(i64 %3, i64 %5, [0 x i8]* %slice.0, i64 %slice.1)
  %7 = extractvalue { [0 x i8]*, i64 } %6, 0
  %8 = extractvalue { [0 x i8]*, i64 } %6, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  ret { [0 x i8]*, i64 } %10
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9757d1d335e79aaE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ugt i64 %self, %slice.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17ha9364d9360b24ce6E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  %_11.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_11.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb3

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #5
  unreachable

bb3:                                              ; preds = %bb2
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_11.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_11.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h0fb619cadd7e0056E"({ [0 x i8]*, i64 }* align 8 %self, { [0 x i8]*, i64 }* align 8 %other) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_5.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !2, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_5.1 = load i64, i64* %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !1, !align !2, !noundef !1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 1
  %_6.1 = load i64, i64* %3, align 8
  %4 = call zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17ha19ad1ae07e7f040E"([0 x i8]* align 1 %_5.0, i64 %_5.1, [0 x i8]* align 1 %_6.0, i64 %_6.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17ha7831572c9143625E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h11fc40b1e5eb5d91E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h11fc40b1e5eb5d91E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define internal void @_ZN4core3fmt9Arguments6new_v117h42f11624ffd41f46E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117h42f11624ffd41f46E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc192 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc194 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc196 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem11size_of_val17h9cf4df73935f8dcfE([0 x i8]* align 1 %val.0, i64 %val.1) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hfefd24647c564d81E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h51439292cfc0b215E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17he5102b1e9da4f358E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17he5102b1e9da4f358E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i64 @_ZN4core3ptr8metadata8metadata17ha1772f398a1c3b32E([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h51439292cfc0b215E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h7de36db78a0f4cbfE"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3ptr8metadata8metadata17ha1772f398a1c3b32E([0 x i8]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hc4b2c1657bd55252E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %_7 = alloca { [0 x i8]*, i64 }, align 8
  %_4 = alloca { [0 x i8]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  store { [0 x i8]*, i64 } %9, { [0 x i8]*, i64 }* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %other.0, [0 x i8]** %10, align 8
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %other.1, i64* %11, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %13 = load [0 x i8]*, [0 x i8]** %12, align 8, !nonnull !1, !align !2, !noundef !1
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %13, 0
  %17 = insertvalue { [0 x i8]*, i64 } %16, i64 %15, 1
  store { [0 x i8]*, i64 } %17, { [0 x i8]*, i64 }* %_7, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %18 = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h0fb619cadd7e0056E"({ [0 x i8]*, i64 }* align 8 %_4, { [0 x i8]*, i64 }* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i1 %18
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$5first17h04ec25c0b4753eaaE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_4 = icmp uge i64 %self.1, 1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = bitcast i8** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i8** %0 to {}**
  store {}* null, {}** %2, align 8
  br label %bb3

bb1:                                              ; preds = %start
  %first = getelementptr inbounds [0 x i8], [0 x i8]* %self.0, i64 0, i64 0
  store i8* %first, i8** %0, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %3 = load i8*, i8** %0, align 8, !align !2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h9ca1f850db5f3811E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17ha19ad1ae07e7f040E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = call zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h8da057ce4fe68f87E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0dc122eaf8f45bb3E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9757d1d335e79aaE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h8da057ce4fe68f87E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %_3 = icmp ne i64 %self.1, %other.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %size = call i64 @_ZN4core3mem11size_of_val17h9cf4df73935f8dcfE([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6, %bb1
  %1 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %2 = trunc i8 %1 to i1
  ret i1 %2

bb3:                                              ; preds = %bb2
  %_12 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h9ca1f850db5f3811E"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_15 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h9ca1f850db5f3811E"([0 x i8]* align 1 %other.0, i64 %other.1)
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

; Function Attrs: uwtable
define { i32, i32 } @u8next([0 x i8]* align 1 %txt.0, i64 %txt.1) unnamed_addr #1 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %_259 = alloca i8, align 1
  %_258 = alloca i64, align 8
  %_228 = alloca i8, align 1
  %_227 = alloca i64, align 8
  %_208 = alloca i8, align 1
  %_207 = alloca i64, align 8
  %_188 = alloca i8, align 1
  %_187 = alloca i64, align 8
  %_157 = alloca i8, align 1
  %_156 = alloca i64, align 8
  %_137 = alloca i8, align 1
  %_136 = alloca i64, align 8
  %_117 = alloca i8, align 1
  %_116 = alloca i64, align 8
  %_103 = alloca i64, align 8
  %state = alloca { [0 x i8]*, i64 }, align 8
  %_6 = alloca i8*, align 8
  %val = alloca i32, align 4
  %s = alloca { [0 x i8]*, i64 }, align 8
  %len = alloca i32, align 4
  %1 = alloca { i32, i32 }, align 4
  store i32 0, i32* %len, align 4
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %txt.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %txt.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  store { [0 x i8]*, i64 } %9, { [0 x i8]*, i64 }* %s, align 8
  br label %bb1

bb1:                                              ; preds = %start
  store i32 0, i32* %val, align 4
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %_7.0 = load [0 x i8]*, [0 x i8]** %10, align 8, !nonnull !1, !align !2, !noundef !1
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_7.1 = load i64, i64* %11, align 8
  %12 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$5first17h04ec25c0b4753eaaE"([0 x i8]* align 1 %_7.0, i64 %_7.1)
  store i8* %12, i8** %_6, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %13 = bitcast i8** %_6 to {}**
  %14 = load {}*, {}** %13, align 8
  %15 = icmp eq {}* %14, null
  %_8 = select i1 %15, i64 0, i64 1
  %16 = icmp eq i64 %_8, 1
  br i1 %16, label %bb3, label %bb142

bb3:                                              ; preds = %bb2
  %_289 = load i8*, i8** %_6, align 8, !nonnull !1, !align !2, !noundef !1
  %first = load i8, i8* %_289, align 1
  %17 = zext i8 %first to i32
  store i32 %17, i32* %val, align 4
  %18 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [15 x i8] }>* @alloc198 to [0 x i8]*), [0 x i8]** %18, align 8
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 15, i64* %19, align 8
  br label %bb4

bb142:                                            ; preds = %bb29, %bb2
  %_287 = load i32, i32* %len, align 4
  %_288 = load i32, i32* %val, align 4
  %20 = bitcast { i32, i32 }* %1 to i32*
  store i32 %_287, i32* %20, align 4
  %21 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  store i32 %_288, i32* %21, align 4
  %22 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = insertvalue { i32, i32 } undef, i32 %23, 0
  %27 = insertvalue { i32, i32 } %26, i32 %25, 1
  ret { i32, i32 } %27

bb4:                                              ; preds = %bb141, %bb140, %bb137, %bb129, %bb125, %bb126, %bb116, %bb117, %bb107, %bb108, %bb99, %bb95, %bb96, %bb86, %bb87, %bb77, %bb78, %bb68, %bb69, %bb64, %bb63, %bb60, %bb57, %bb54, %bb51, %bb48, %bb45, %bb42, %bb39, %bb36, %bb33, %bb3
  %28 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %29 = load [0 x i8]*, [0 x i8]** %28, align 8, !nonnull !1, !align !2, !noundef !1
  %30 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %_12 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %29, i64 %31, [0 x i8]* align 1 bitcast (<{ [15 x i8] }>* @alloc198 to [0 x i8]*), i64 15)
  br label %bb5

bb5:                                              ; preds = %bb4
  br i1 %_12, label %bb31, label %bb6

bb6:                                              ; preds = %bb5
  %32 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %33 = load [0 x i8]*, [0 x i8]** %32, align 8, !nonnull !1, !align !2, !noundef !1
  %34 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %_13 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %33, i64 %35, [0 x i8]* align 1 bitcast (<{ [14 x i8] }>* @alloc233 to [0 x i8]*), i64 14)
  br label %bb7

bb31:                                             ; preds = %bb5
  %36 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %37 = load [0 x i8]*, [0 x i8]** %36, align 8, !nonnull !1, !align !2, !noundef !1
  %38 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_28 = load i64, i64* %38, align 8
  %_29 = icmp ult i64 0, %_28
  %39 = call i1 @llvm.expect.i1(i1 %_29, i1 true)
  br i1 %39, label %bb32, label %panic

bb32:                                             ; preds = %bb31
  %40 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %41 = load [0 x i8]*, [0 x i8]** %40, align 8, !nonnull !1, !align !2, !noundef !1
  %42 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds [0 x i8], [0 x i8]* %41, i64 0, i64 0
  %_26 = load i8, i8* %44, align 1
  %_25 = icmp ult i8 %_26, -128
  br i1 %_25, label %bb33, label %bb34

panic:                                            ; preds = %bb31
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc200 to %"core::panic::location::Location"*)) #5
  unreachable

bb34:                                             ; preds = %bb32
  %45 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %46 = load [0 x i8]*, [0 x i8]** %45, align 8, !nonnull !1, !align !2, !noundef !1
  %47 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_34 = load i64, i64* %47, align 8
  %_35 = icmp ult i64 0, %_34
  %48 = call i1 @llvm.expect.i1(i1 %_35, i1 true)
  br i1 %48, label %bb35, label %panic1

bb33:                                             ; preds = %bb32
  store i32 1, i32* %len, align 4
  %49 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [13 x i8] }>* @alloc315 to [0 x i8]*), [0 x i8]** %49, align 8
  %50 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 13, i64* %50, align 8
  br label %bb4

bb35:                                             ; preds = %bb34
  %51 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %52 = load [0 x i8]*, [0 x i8]** %51, align 8, !nonnull !1, !align !2, !noundef !1
  %53 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds [0 x i8], [0 x i8]* %52, i64 0, i64 0
  %_32 = load i8, i8* %55, align 1
  %56 = icmp eq i8 %_32, -64
  br i1 %56, label %bb36, label %bb37

panic1:                                           ; preds = %bb34
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_34, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc203 to %"core::panic::location::Location"*)) #5
  unreachable

bb36:                                             ; preds = %bb35
  store i32 2, i32* %len, align 4
  %57 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [14 x i8] }>* @alloc233 to [0 x i8]*), [0 x i8]** %57, align 8
  %58 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 14, i64* %58, align 8
  br label %bb4

bb37:                                             ; preds = %bb35
  %59 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %60 = load [0 x i8]*, [0 x i8]** %59, align 8, !nonnull !1, !align !2, !noundef !1
  %61 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_41 = load i64, i64* %61, align 8
  %_42 = icmp ult i64 0, %_41
  %62 = call i1 @llvm.expect.i1(i1 %_42, i1 true)
  br i1 %62, label %bb38, label %panic2

bb38:                                             ; preds = %bb37
  %63 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %64 = load [0 x i8]*, [0 x i8]** %63, align 8, !nonnull !1, !align !2, !noundef !1
  %65 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [0 x i8], [0 x i8]* %64, i64 0, i64 0
  %_39 = load i8, i8* %67, align 1
  %_38 = icmp ule i8 %_39, -63
  br i1 %_38, label %bb39, label %bb40

panic2:                                           ; preds = %bb37
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_41, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc205 to %"core::panic::location::Location"*)) #5
  unreachable

bb40:                                             ; preds = %bb38
  %68 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %69 = load [0 x i8]*, [0 x i8]** %68, align 8, !nonnull !1, !align !2, !noundef !1
  %70 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_48 = load i64, i64* %70, align 8
  %_49 = icmp ult i64 0, %_48
  %71 = call i1 @llvm.expect.i1(i1 %_49, i1 true)
  br i1 %71, label %bb41, label %panic3

bb39:                                             ; preds = %bb38
  %72 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [17 x i8] }>* @alloc313 to [0 x i8]*), [0 x i8]** %72, align 8
  %73 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 17, i64* %73, align 8
  br label %bb4

bb41:                                             ; preds = %bb40
  %74 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %75 = load [0 x i8]*, [0 x i8]** %74, align 8, !nonnull !1, !align !2, !noundef !1
  %76 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds [0 x i8], [0 x i8]* %75, i64 0, i64 0
  %_46 = load i8, i8* %78, align 1
  %_45 = icmp ule i8 %_46, -33
  br i1 %_45, label %bb42, label %bb43

panic3:                                           ; preds = %bb40
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_48, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc208 to %"core::panic::location::Location"*)) #5
  unreachable

bb43:                                             ; preds = %bb41
  %79 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %80 = load [0 x i8]*, [0 x i8]** %79, align 8, !nonnull !1, !align !2, !noundef !1
  %81 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_54 = load i64, i64* %81, align 8
  %_55 = icmp ult i64 0, %_54
  %82 = call i1 @llvm.expect.i1(i1 %_55, i1 true)
  br i1 %82, label %bb44, label %panic4

bb42:                                             ; preds = %bb41
  %83 = load i32, i32* %val, align 4
  %84 = and i32 %83, 31
  store i32 %84, i32* %val, align 4
  store i32 2, i32* %len, align 4
  %85 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [16 x i8] }>* @alloc302 to [0 x i8]*), [0 x i8]** %85, align 8
  %86 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 16, i64* %86, align 8
  br label %bb4

bb44:                                             ; preds = %bb43
  %87 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %88 = load [0 x i8]*, [0 x i8]** %87, align 8, !nonnull !1, !align !2, !noundef !1
  %89 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [0 x i8], [0 x i8]* %88, i64 0, i64 0
  %_52 = load i8, i8* %91, align 1
  %92 = icmp eq i8 %_52, -32
  br i1 %92, label %bb45, label %bb46

panic4:                                           ; preds = %bb43
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_54, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc211 to %"core::panic::location::Location"*)) #5
  unreachable

bb45:                                             ; preds = %bb44
  %93 = load i32, i32* %val, align 4
  %94 = and i32 %93, 15
  store i32 %94, i32* %val, align 4
  store i32 3, i32* %len, align 4
  %95 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [16 x i8] }>* @alloc271 to [0 x i8]*), [0 x i8]** %95, align 8
  %96 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 16, i64* %96, align 8
  br label %bb4

bb46:                                             ; preds = %bb44
  %97 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %98 = load [0 x i8]*, [0 x i8]** %97, align 8, !nonnull !1, !align !2, !noundef !1
  %99 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_61 = load i64, i64* %99, align 8
  %_62 = icmp ult i64 0, %_61
  %100 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %100, label %bb47, label %panic5

bb47:                                             ; preds = %bb46
  %101 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %102 = load [0 x i8]*, [0 x i8]** %101, align 8, !nonnull !1, !align !2, !noundef !1
  %103 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds [0 x i8], [0 x i8]* %102, i64 0, i64 0
  %_59 = load i8, i8* %105, align 1
  %_58 = icmp ule i8 %_59, -20
  br i1 %_58, label %bb48, label %bb49

panic5:                                           ; preds = %bb46
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_61, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc213 to %"core::panic::location::Location"*)) #5
  unreachable

bb49:                                             ; preds = %bb47
  %106 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %107 = load [0 x i8]*, [0 x i8]** %106, align 8, !nonnull !1, !align !2, !noundef !1
  %108 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_67 = load i64, i64* %108, align 8
  %_68 = icmp ult i64 0, %_67
  %109 = call i1 @llvm.expect.i1(i1 %_68, i1 true)
  br i1 %109, label %bb50, label %panic6

bb48:                                             ; preds = %bb47
  %110 = load i32, i32* %val, align 4
  %111 = and i32 %110, 15
  store i32 %111, i32* %val, align 4
  store i32 3, i32* %len, align 4
  %112 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [16 x i8] }>* @alloc280 to [0 x i8]*), [0 x i8]** %112, align 8
  %113 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 16, i64* %113, align 8
  br label %bb4

bb50:                                             ; preds = %bb49
  %114 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %115 = load [0 x i8]*, [0 x i8]** %114, align 8, !nonnull !1, !align !2, !noundef !1
  %116 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds [0 x i8], [0 x i8]* %115, i64 0, i64 0
  %_65 = load i8, i8* %118, align 1
  %119 = icmp eq i8 %_65, -19
  br i1 %119, label %bb51, label %bb52

panic6:                                           ; preds = %bb49
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_67, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc216 to %"core::panic::location::Location"*)) #5
  unreachable

bb51:                                             ; preds = %bb50
  %120 = load i32, i32* %val, align 4
  %121 = and i32 %120, 15
  store i32 %121, i32* %val, align 4
  store i32 3, i32* %len, align 4
  %122 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [16 x i8] }>* @alloc289 to [0 x i8]*), [0 x i8]** %122, align 8
  %123 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 16, i64* %123, align 8
  br label %bb4

bb52:                                             ; preds = %bb50
  %124 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %125 = load [0 x i8]*, [0 x i8]** %124, align 8, !nonnull !1, !align !2, !noundef !1
  %126 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_74 = load i64, i64* %126, align 8
  %_75 = icmp ult i64 0, %_74
  %127 = call i1 @llvm.expect.i1(i1 %_75, i1 true)
  br i1 %127, label %bb53, label %panic7

bb53:                                             ; preds = %bb52
  %128 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %129 = load [0 x i8]*, [0 x i8]** %128, align 8, !nonnull !1, !align !2, !noundef !1
  %130 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds [0 x i8], [0 x i8]* %129, i64 0, i64 0
  %_72 = load i8, i8* %132, align 1
  %_71 = icmp ule i8 %_72, -17
  br i1 %_71, label %bb54, label %bb55

panic7:                                           ; preds = %bb52
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_74, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc218 to %"core::panic::location::Location"*)) #5
  unreachable

bb55:                                             ; preds = %bb53
  %133 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %134 = load [0 x i8]*, [0 x i8]** %133, align 8, !nonnull !1, !align !2, !noundef !1
  %135 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_80 = load i64, i64* %135, align 8
  %_81 = icmp ult i64 0, %_80
  %136 = call i1 @llvm.expect.i1(i1 %_81, i1 true)
  br i1 %136, label %bb56, label %panic8

bb54:                                             ; preds = %bb53
  %137 = load i32, i32* %val, align 4
  %138 = and i32 %137, 15
  store i32 %138, i32* %val, align 4
  store i32 3, i32* %len, align 4
  %139 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [16 x i8] }>* @alloc280 to [0 x i8]*), [0 x i8]** %139, align 8
  %140 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 16, i64* %140, align 8
  br label %bb4

bb56:                                             ; preds = %bb55
  %141 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %142 = load [0 x i8]*, [0 x i8]** %141, align 8, !nonnull !1, !align !2, !noundef !1
  %143 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds [0 x i8], [0 x i8]* %142, i64 0, i64 0
  %_78 = load i8, i8* %145, align 1
  %146 = icmp eq i8 %_78, -16
  br i1 %146, label %bb57, label %bb58

panic8:                                           ; preds = %bb55
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_80, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc221 to %"core::panic::location::Location"*)) #5
  unreachable

bb57:                                             ; preds = %bb56
  %147 = load i32, i32* %val, align 4
  %148 = and i32 %147, 7
  store i32 %148, i32* %val, align 4
  store i32 4, i32* %len, align 4
  %149 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [16 x i8] }>* @alloc240 to [0 x i8]*), [0 x i8]** %149, align 8
  %150 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 16, i64* %150, align 8
  br label %bb4

bb58:                                             ; preds = %bb56
  %151 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %152 = load [0 x i8]*, [0 x i8]** %151, align 8, !nonnull !1, !align !2, !noundef !1
  %153 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_87 = load i64, i64* %153, align 8
  %_88 = icmp ult i64 0, %_87
  %154 = call i1 @llvm.expect.i1(i1 %_88, i1 true)
  br i1 %154, label %bb59, label %panic9

bb59:                                             ; preds = %bb58
  %155 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %156 = load [0 x i8]*, [0 x i8]** %155, align 8, !nonnull !1, !align !2, !noundef !1
  %157 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds [0 x i8], [0 x i8]* %156, i64 0, i64 0
  %_85 = load i8, i8* %159, align 1
  %_84 = icmp ule i8 %_85, -13
  br i1 %_84, label %bb60, label %bb61

panic9:                                           ; preds = %bb58
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_87, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc223 to %"core::panic::location::Location"*)) #5
  unreachable

bb61:                                             ; preds = %bb59
  %160 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %161 = load [0 x i8]*, [0 x i8]** %160, align 8, !nonnull !1, !align !2, !noundef !1
  %162 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_93 = load i64, i64* %162, align 8
  %_94 = icmp ult i64 0, %_93
  %163 = call i1 @llvm.expect.i1(i1 %_94, i1 true)
  br i1 %163, label %bb62, label %panic10

bb60:                                             ; preds = %bb59
  %164 = load i32, i32* %val, align 4
  %165 = and i32 %164, 7
  store i32 %165, i32* %val, align 4
  store i32 4, i32* %len, align 4
  %166 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [16 x i8] }>* @alloc249 to [0 x i8]*), [0 x i8]** %166, align 8
  %167 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 16, i64* %167, align 8
  br label %bb4

bb62:                                             ; preds = %bb61
  %168 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %169 = load [0 x i8]*, [0 x i8]** %168, align 8, !nonnull !1, !align !2, !noundef !1
  %170 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds [0 x i8], [0 x i8]* %169, i64 0, i64 0
  %_91 = load i8, i8* %172, align 1
  %173 = icmp eq i8 %_91, -12
  br i1 %173, label %bb63, label %bb64

panic10:                                          ; preds = %bb61
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_93, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc226 to %"core::panic::location::Location"*)) #5
  unreachable

bb63:                                             ; preds = %bb62
  %174 = load i32, i32* %val, align 4
  %175 = and i32 %174, 7
  store i32 %175, i32* %val, align 4
  store i32 4, i32* %len, align 4
  %176 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [16 x i8] }>* @alloc258 to [0 x i8]*), [0 x i8]** %176, align 8
  %177 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 16, i64* %177, align 8
  br label %bb4

bb64:                                             ; preds = %bb62
  %178 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [17 x i8] }>* @alloc313 to [0 x i8]*), [0 x i8]** %178, align 8
  %179 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 17, i64* %179, align 8
  br label %bb4

bb7:                                              ; preds = %bb6
  br i1 %_13, label %bb65, label %bb8

bb8:                                              ; preds = %bb7
  %180 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %181 = load [0 x i8]*, [0 x i8]** %180, align 8, !nonnull !1, !align !2, !noundef !1
  %182 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %_14 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %181, i64 %183, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc240 to [0 x i8]*), i64 16)
  br label %bb9

bb65:                                             ; preds = %bb7
  store i32 0, i32* %val, align 4
  %184 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %_102.0 = load [0 x i8]*, [0 x i8]** %184, align 8, !nonnull !1, !align !2, !noundef !1
  %185 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_102.1 = load i64, i64* %185, align 8
  store i64 1, i64* %_103, align 8
  %186 = load i64, i64* %_103, align 8
  %187 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0dc122eaf8f45bb3E"([0 x i8]* align 1 %_102.0, i64 %_102.1, i64 %186, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc235 to %"core::panic::location::Location"*))
  %_101.0 = extractvalue { [0 x i8]*, i64 } %187, 0
  %_101.1 = extractvalue { [0 x i8]*, i64 } %187, 1
  br label %bb66

bb66:                                             ; preds = %bb65
  %188 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  store [0 x i8]* %_101.0, [0 x i8]** %188, align 8
  %189 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  store i64 %_101.1, i64* %189, align 8
  %190 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %191 = load [0 x i8]*, [0 x i8]** %190, align 8, !nonnull !1, !align !2, !noundef !1
  %192 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_106 = load i64, i64* %192, align 8
  %_107 = icmp ult i64 0, %_106
  %193 = call i1 @llvm.expect.i1(i1 %_107, i1 true)
  br i1 %193, label %bb67, label %panic11

bb67:                                             ; preds = %bb66
  %194 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %195 = load [0 x i8]*, [0 x i8]** %194, align 8, !nonnull !1, !align !2, !noundef !1
  %196 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds [0 x i8], [0 x i8]* %195, i64 0, i64 0
  %_104 = load i8, i8* %198, align 1
  %199 = icmp eq i8 %_104, -128
  br i1 %199, label %bb69, label %bb68

panic11:                                          ; preds = %bb66
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_106, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc237 to %"core::panic::location::Location"*)) #5
  unreachable

bb69:                                             ; preds = %bb67
  %200 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [13 x i8] }>* @alloc315 to [0 x i8]*), [0 x i8]** %200, align 8
  %201 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 13, i64* %201, align 8
  br label %bb4

bb68:                                             ; preds = %bb67
  %202 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [17 x i8] }>* @alloc313 to [0 x i8]*), [0 x i8]** %202, align 8
  %203 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 17, i64* %203, align 8
  br label %bb4

bb9:                                              ; preds = %bb8
  br i1 %_14, label %bb70, label %bb10

bb10:                                             ; preds = %bb9
  %204 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %205 = load [0 x i8]*, [0 x i8]** %204, align 8, !nonnull !1, !align !2, !noundef !1
  %206 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %_15 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %205, i64 %207, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc249 to [0 x i8]*), i64 16)
  br label %bb11

bb70:                                             ; preds = %bb9
  %208 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %_115.0 = load [0 x i8]*, [0 x i8]** %208, align 8, !nonnull !1, !align !2, !noundef !1
  %209 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_115.1 = load i64, i64* %209, align 8
  store i64 1, i64* %_116, align 8
  %210 = load i64, i64* %_116, align 8
  %211 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0dc122eaf8f45bb3E"([0 x i8]* align 1 %_115.0, i64 %_115.1, i64 %210, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc242 to %"core::panic::location::Location"*))
  %_114.0 = extractvalue { [0 x i8]*, i64 } %211, 0
  %_114.1 = extractvalue { [0 x i8]*, i64 } %211, 1
  br label %bb71

bb71:                                             ; preds = %bb70
  %212 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  store [0 x i8]* %_114.0, [0 x i8]** %212, align 8
  %213 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  store i64 %_114.1, i64* %213, align 8
  %214 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %215 = load [0 x i8]*, [0 x i8]** %214, align 8, !nonnull !1, !align !2, !noundef !1
  %216 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_121 = load i64, i64* %216, align 8
  %_122 = icmp ult i64 0, %_121
  %217 = call i1 @llvm.expect.i1(i1 %_122, i1 true)
  br i1 %217, label %bb75, label %panic12

bb75:                                             ; preds = %bb71
  %218 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %219 = load [0 x i8]*, [0 x i8]** %218, align 8, !nonnull !1, !align !2, !noundef !1
  %220 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds [0 x i8], [0 x i8]* %219, i64 0, i64 0
  %_119 = load i8, i8* %222, align 1
  %_118 = icmp ult i8 %_119, -112
  br i1 %_118, label %bb72, label %bb73

panic12:                                          ; preds = %bb71
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_121, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc244 to %"core::panic::location::Location"*)) #5
  unreachable

bb73:                                             ; preds = %bb75
  %223 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %224 = load [0 x i8]*, [0 x i8]** %223, align 8, !nonnull !1, !align !2, !noundef !1
  %225 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_126 = load i64, i64* %225, align 8
  %_127 = icmp ult i64 0, %_126
  %226 = call i1 @llvm.expect.i1(i1 %_127, i1 true)
  br i1 %226, label %bb76, label %panic13

bb72:                                             ; preds = %bb75
  store i8 1, i8* %_117, align 1
  br label %bb74

bb74:                                             ; preds = %bb76, %bb72
  %227 = load i8, i8* %_117, align 1, !range !3, !noundef !1
  %228 = trunc i8 %227 to i1
  br i1 %228, label %bb77, label %bb78

bb76:                                             ; preds = %bb73
  %229 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %230 = load [0 x i8]*, [0 x i8]** %229, align 8, !nonnull !1, !align !2, !noundef !1
  %231 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds [0 x i8], [0 x i8]* %230, i64 0, i64 0
  %_124 = load i8, i8* %233, align 1
  %_123 = icmp ult i8 -65, %_124
  %234 = zext i1 %_123 to i8
  store i8 %234, i8* %_117, align 1
  br label %bb74

panic13:                                          ; preds = %bb73
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_126, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc246 to %"core::panic::location::Location"*)) #5
  unreachable

bb78:                                             ; preds = %bb74
  %235 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [14 x i8] }>* @alloc267 to [0 x i8]*), [0 x i8]** %235, align 8
  %236 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 14, i64* %236, align 8
  br label %bb4

bb77:                                             ; preds = %bb74
  %237 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [17 x i8] }>* @alloc313 to [0 x i8]*), [0 x i8]** %237, align 8
  %238 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 17, i64* %238, align 8
  br label %bb4

bb11:                                             ; preds = %bb10
  br i1 %_15, label %bb79, label %bb12

bb12:                                             ; preds = %bb11
  %239 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %240 = load [0 x i8]*, [0 x i8]** %239, align 8, !nonnull !1, !align !2, !noundef !1
  %241 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %_16 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %240, i64 %242, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc258 to [0 x i8]*), i64 16)
  br label %bb13

bb79:                                             ; preds = %bb11
  %243 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %_135.0 = load [0 x i8]*, [0 x i8]** %243, align 8, !nonnull !1, !align !2, !noundef !1
  %244 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_135.1 = load i64, i64* %244, align 8
  store i64 1, i64* %_136, align 8
  %245 = load i64, i64* %_136, align 8
  %246 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0dc122eaf8f45bb3E"([0 x i8]* align 1 %_135.0, i64 %_135.1, i64 %245, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc251 to %"core::panic::location::Location"*))
  %_134.0 = extractvalue { [0 x i8]*, i64 } %246, 0
  %_134.1 = extractvalue { [0 x i8]*, i64 } %246, 1
  br label %bb80

bb80:                                             ; preds = %bb79
  %247 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  store [0 x i8]* %_134.0, [0 x i8]** %247, align 8
  %248 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  store i64 %_134.1, i64* %248, align 8
  %249 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %250 = load [0 x i8]*, [0 x i8]** %249, align 8, !nonnull !1, !align !2, !noundef !1
  %251 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_141 = load i64, i64* %251, align 8
  %_142 = icmp ult i64 0, %_141
  %252 = call i1 @llvm.expect.i1(i1 %_142, i1 true)
  br i1 %252, label %bb84, label %panic14

bb84:                                             ; preds = %bb80
  %253 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %254 = load [0 x i8]*, [0 x i8]** %253, align 8, !nonnull !1, !align !2, !noundef !1
  %255 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds [0 x i8], [0 x i8]* %254, i64 0, i64 0
  %_139 = load i8, i8* %257, align 1
  %_138 = icmp ult i8 %_139, -128
  br i1 %_138, label %bb81, label %bb82

panic14:                                          ; preds = %bb80
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_141, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc253 to %"core::panic::location::Location"*)) #5
  unreachable

bb82:                                             ; preds = %bb84
  %258 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %259 = load [0 x i8]*, [0 x i8]** %258, align 8, !nonnull !1, !align !2, !noundef !1
  %260 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_146 = load i64, i64* %260, align 8
  %_147 = icmp ult i64 0, %_146
  %261 = call i1 @llvm.expect.i1(i1 %_147, i1 true)
  br i1 %261, label %bb85, label %panic15

bb81:                                             ; preds = %bb84
  store i8 1, i8* %_137, align 1
  br label %bb83

bb83:                                             ; preds = %bb85, %bb81
  %262 = load i8, i8* %_137, align 1, !range !3, !noundef !1
  %263 = trunc i8 %262 to i1
  br i1 %263, label %bb86, label %bb87

bb85:                                             ; preds = %bb82
  %264 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %265 = load [0 x i8]*, [0 x i8]** %264, align 8, !nonnull !1, !align !2, !noundef !1
  %266 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds [0 x i8], [0 x i8]* %265, i64 0, i64 0
  %_144 = load i8, i8* %268, align 1
  %_143 = icmp ult i8 -65, %_144
  %269 = zext i1 %_143 to i8
  store i8 %269, i8* %_137, align 1
  br label %bb83

panic15:                                          ; preds = %bb82
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_146, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc255 to %"core::panic::location::Location"*)) #5
  unreachable

bb87:                                             ; preds = %bb83
  %270 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [14 x i8] }>* @alloc267 to [0 x i8]*), [0 x i8]** %270, align 8
  %271 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 14, i64* %271, align 8
  br label %bb4

bb86:                                             ; preds = %bb83
  %272 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [17 x i8] }>* @alloc313 to [0 x i8]*), [0 x i8]** %272, align 8
  %273 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 17, i64* %273, align 8
  br label %bb4

bb13:                                             ; preds = %bb12
  br i1 %_16, label %bb88, label %bb14

bb14:                                             ; preds = %bb13
  %274 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %275 = load [0 x i8]*, [0 x i8]** %274, align 8, !nonnull !1, !align !2, !noundef !1
  %276 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %_17 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %275, i64 %277, [0 x i8]* align 1 bitcast (<{ [14 x i8] }>* @alloc267 to [0 x i8]*), i64 14)
  br label %bb15

bb88:                                             ; preds = %bb13
  %278 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %_155.0 = load [0 x i8]*, [0 x i8]** %278, align 8, !nonnull !1, !align !2, !noundef !1
  %279 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_155.1 = load i64, i64* %279, align 8
  store i64 1, i64* %_156, align 8
  %280 = load i64, i64* %_156, align 8
  %281 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0dc122eaf8f45bb3E"([0 x i8]* align 1 %_155.0, i64 %_155.1, i64 %280, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc260 to %"core::panic::location::Location"*))
  %_154.0 = extractvalue { [0 x i8]*, i64 } %281, 0
  %_154.1 = extractvalue { [0 x i8]*, i64 } %281, 1
  br label %bb89

bb89:                                             ; preds = %bb88
  %282 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  store [0 x i8]* %_154.0, [0 x i8]** %282, align 8
  %283 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  store i64 %_154.1, i64* %283, align 8
  %284 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %285 = load [0 x i8]*, [0 x i8]** %284, align 8, !nonnull !1, !align !2, !noundef !1
  %286 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_161 = load i64, i64* %286, align 8
  %_162 = icmp ult i64 0, %_161
  %287 = call i1 @llvm.expect.i1(i1 %_162, i1 true)
  br i1 %287, label %bb93, label %panic16

bb93:                                             ; preds = %bb89
  %288 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %289 = load [0 x i8]*, [0 x i8]** %288, align 8, !nonnull !1, !align !2, !noundef !1
  %290 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds [0 x i8], [0 x i8]* %289, i64 0, i64 0
  %_159 = load i8, i8* %292, align 1
  %_158 = icmp ult i8 %_159, -128
  br i1 %_158, label %bb90, label %bb91

panic16:                                          ; preds = %bb89
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_161, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc262 to %"core::panic::location::Location"*)) #5
  unreachable

bb91:                                             ; preds = %bb93
  %293 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %294 = load [0 x i8]*, [0 x i8]** %293, align 8, !nonnull !1, !align !2, !noundef !1
  %295 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_166 = load i64, i64* %295, align 8
  %_167 = icmp ult i64 0, %_166
  %296 = call i1 @llvm.expect.i1(i1 %_167, i1 true)
  br i1 %296, label %bb94, label %panic17

bb90:                                             ; preds = %bb93
  store i8 1, i8* %_157, align 1
  br label %bb92

bb92:                                             ; preds = %bb94, %bb90
  %297 = load i8, i8* %_157, align 1, !range !3, !noundef !1
  %298 = trunc i8 %297 to i1
  br i1 %298, label %bb95, label %bb96

bb94:                                             ; preds = %bb91
  %299 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %300 = load [0 x i8]*, [0 x i8]** %299, align 8, !nonnull !1, !align !2, !noundef !1
  %301 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds [0 x i8], [0 x i8]* %300, i64 0, i64 0
  %_164 = load i8, i8* %303, align 1
  %_163 = icmp ult i8 -113, %_164
  %304 = zext i1 %_163 to i8
  store i8 %304, i8* %_157, align 1
  br label %bb92

panic17:                                          ; preds = %bb91
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_166, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc264 to %"core::panic::location::Location"*)) #5
  unreachable

bb96:                                             ; preds = %bb92
  %305 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [14 x i8] }>* @alloc267 to [0 x i8]*), [0 x i8]** %305, align 8
  %306 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 14, i64* %306, align 8
  br label %bb4

bb95:                                             ; preds = %bb92
  %307 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [17 x i8] }>* @alloc313 to [0 x i8]*), [0 x i8]** %307, align 8
  %308 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 17, i64* %308, align 8
  br label %bb4

bb15:                                             ; preds = %bb14
  br i1 %_17, label %bb97, label %bb16

bb16:                                             ; preds = %bb15
  %309 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %310 = load [0 x i8]*, [0 x i8]** %309, align 8, !nonnull !1, !align !2, !noundef !1
  %311 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %_18 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %310, i64 %312, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc271 to [0 x i8]*), i64 16)
  br label %bb17

bb97:                                             ; preds = %bb15
  %_173 = load i32, i32* %val, align 4
  %_174.0 = shl i32 %_173, 6
  br label %bb98

bb98:                                             ; preds = %bb97
  %313 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %314 = load [0 x i8]*, [0 x i8]** %313, align 8, !nonnull !1, !align !2, !noundef !1
  %315 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_179 = load i64, i64* %315, align 8
  %_180 = icmp ult i64 0, %_179
  %316 = call i1 @llvm.expect.i1(i1 %_180, i1 true)
  br i1 %316, label %bb99, label %panic18

bb99:                                             ; preds = %bb98
  %317 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %318 = load [0 x i8]*, [0 x i8]** %317, align 8, !nonnull !1, !align !2, !noundef !1
  %319 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds [0 x i8], [0 x i8]* %318, i64 0, i64 0
  %_177 = load i8, i8* %321, align 1
  %_176 = and i8 %_177, 63
  %_175 = zext i8 %_176 to i32
  %322 = or i32 %_174.0, %_175
  store i32 %322, i32* %val, align 4
  %323 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [16 x i8] }>* @alloc280 to [0 x i8]*), [0 x i8]** %323, align 8
  %324 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 16, i64* %324, align 8
  br label %bb4

panic18:                                          ; preds = %bb98
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_179, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc269 to %"core::panic::location::Location"*)) #5
  unreachable

bb17:                                             ; preds = %bb16
  br i1 %_18, label %bb100, label %bb18

bb18:                                             ; preds = %bb17
  %325 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %326 = load [0 x i8]*, [0 x i8]** %325, align 8, !nonnull !1, !align !2, !noundef !1
  %327 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %_19 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %326, i64 %328, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc280 to [0 x i8]*), i64 16)
  br label %bb19

bb100:                                            ; preds = %bb17
  %329 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %_186.0 = load [0 x i8]*, [0 x i8]** %329, align 8, !nonnull !1, !align !2, !noundef !1
  %330 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_186.1 = load i64, i64* %330, align 8
  store i64 1, i64* %_187, align 8
  %331 = load i64, i64* %_187, align 8
  %332 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0dc122eaf8f45bb3E"([0 x i8]* align 1 %_186.0, i64 %_186.1, i64 %331, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc273 to %"core::panic::location::Location"*))
  %_185.0 = extractvalue { [0 x i8]*, i64 } %332, 0
  %_185.1 = extractvalue { [0 x i8]*, i64 } %332, 1
  br label %bb101

bb101:                                            ; preds = %bb100
  %333 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  store [0 x i8]* %_185.0, [0 x i8]** %333, align 8
  %334 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  store i64 %_185.1, i64* %334, align 8
  %335 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %336 = load [0 x i8]*, [0 x i8]** %335, align 8, !nonnull !1, !align !2, !noundef !1
  %337 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_192 = load i64, i64* %337, align 8
  %_193 = icmp ult i64 0, %_192
  %338 = call i1 @llvm.expect.i1(i1 %_193, i1 true)
  br i1 %338, label %bb105, label %panic19

bb105:                                            ; preds = %bb101
  %339 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %340 = load [0 x i8]*, [0 x i8]** %339, align 8, !nonnull !1, !align !2, !noundef !1
  %341 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = getelementptr inbounds [0 x i8], [0 x i8]* %340, i64 0, i64 0
  %_190 = load i8, i8* %343, align 1
  %_189 = icmp ult i8 %_190, -96
  br i1 %_189, label %bb102, label %bb103

panic19:                                          ; preds = %bb101
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_192, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc275 to %"core::panic::location::Location"*)) #5
  unreachable

bb103:                                            ; preds = %bb105
  %344 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %345 = load [0 x i8]*, [0 x i8]** %344, align 8, !nonnull !1, !align !2, !noundef !1
  %346 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_197 = load i64, i64* %346, align 8
  %_198 = icmp ult i64 0, %_197
  %347 = call i1 @llvm.expect.i1(i1 %_198, i1 true)
  br i1 %347, label %bb106, label %panic20

bb102:                                            ; preds = %bb105
  store i8 1, i8* %_188, align 1
  br label %bb104

bb104:                                            ; preds = %bb106, %bb102
  %348 = load i8, i8* %_188, align 1, !range !3, !noundef !1
  %349 = trunc i8 %348 to i1
  br i1 %349, label %bb107, label %bb108

bb106:                                            ; preds = %bb103
  %350 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %351 = load [0 x i8]*, [0 x i8]** %350, align 8, !nonnull !1, !align !2, !noundef !1
  %352 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds [0 x i8], [0 x i8]* %351, i64 0, i64 0
  %_195 = load i8, i8* %354, align 1
  %_194 = icmp ult i8 -65, %_195
  %355 = zext i1 %_194 to i8
  store i8 %355, i8* %_188, align 1
  br label %bb104

panic20:                                          ; preds = %bb103
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_197, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc277 to %"core::panic::location::Location"*)) #5
  unreachable

bb108:                                            ; preds = %bb104
  %356 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [14 x i8] }>* @alloc298 to [0 x i8]*), [0 x i8]** %356, align 8
  %357 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 14, i64* %357, align 8
  br label %bb4

bb107:                                            ; preds = %bb104
  %358 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [17 x i8] }>* @alloc313 to [0 x i8]*), [0 x i8]** %358, align 8
  %359 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 17, i64* %359, align 8
  br label %bb4

bb19:                                             ; preds = %bb18
  br i1 %_19, label %bb109, label %bb20

bb20:                                             ; preds = %bb19
  %360 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %361 = load [0 x i8]*, [0 x i8]** %360, align 8, !nonnull !1, !align !2, !noundef !1
  %362 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %_20 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %361, i64 %363, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc289 to [0 x i8]*), i64 16)
  br label %bb21

bb109:                                            ; preds = %bb19
  %364 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %_206.0 = load [0 x i8]*, [0 x i8]** %364, align 8, !nonnull !1, !align !2, !noundef !1
  %365 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_206.1 = load i64, i64* %365, align 8
  store i64 1, i64* %_207, align 8
  %366 = load i64, i64* %_207, align 8
  %367 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0dc122eaf8f45bb3E"([0 x i8]* align 1 %_206.0, i64 %_206.1, i64 %366, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc282 to %"core::panic::location::Location"*))
  %_205.0 = extractvalue { [0 x i8]*, i64 } %367, 0
  %_205.1 = extractvalue { [0 x i8]*, i64 } %367, 1
  br label %bb110

bb110:                                            ; preds = %bb109
  %368 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  store [0 x i8]* %_205.0, [0 x i8]** %368, align 8
  %369 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  store i64 %_205.1, i64* %369, align 8
  %370 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %371 = load [0 x i8]*, [0 x i8]** %370, align 8, !nonnull !1, !align !2, !noundef !1
  %372 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_212 = load i64, i64* %372, align 8
  %_213 = icmp ult i64 0, %_212
  %373 = call i1 @llvm.expect.i1(i1 %_213, i1 true)
  br i1 %373, label %bb114, label %panic21

bb114:                                            ; preds = %bb110
  %374 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %375 = load [0 x i8]*, [0 x i8]** %374, align 8, !nonnull !1, !align !2, !noundef !1
  %376 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = getelementptr inbounds [0 x i8], [0 x i8]* %375, i64 0, i64 0
  %_210 = load i8, i8* %378, align 1
  %_209 = icmp ult i8 %_210, -128
  br i1 %_209, label %bb111, label %bb112

panic21:                                          ; preds = %bb110
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_212, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc284 to %"core::panic::location::Location"*)) #5
  unreachable

bb112:                                            ; preds = %bb114
  %379 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %380 = load [0 x i8]*, [0 x i8]** %379, align 8, !nonnull !1, !align !2, !noundef !1
  %381 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_217 = load i64, i64* %381, align 8
  %_218 = icmp ult i64 0, %_217
  %382 = call i1 @llvm.expect.i1(i1 %_218, i1 true)
  br i1 %382, label %bb115, label %panic22

bb111:                                            ; preds = %bb114
  store i8 1, i8* %_208, align 1
  br label %bb113

bb113:                                            ; preds = %bb115, %bb111
  %383 = load i8, i8* %_208, align 1, !range !3, !noundef !1
  %384 = trunc i8 %383 to i1
  br i1 %384, label %bb116, label %bb117

bb115:                                            ; preds = %bb112
  %385 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %386 = load [0 x i8]*, [0 x i8]** %385, align 8, !nonnull !1, !align !2, !noundef !1
  %387 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = getelementptr inbounds [0 x i8], [0 x i8]* %386, i64 0, i64 0
  %_215 = load i8, i8* %389, align 1
  %_214 = icmp ult i8 -65, %_215
  %390 = zext i1 %_214 to i8
  store i8 %390, i8* %_208, align 1
  br label %bb113

panic22:                                          ; preds = %bb112
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_217, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc286 to %"core::panic::location::Location"*)) #5
  unreachable

bb117:                                            ; preds = %bb113
  %391 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [14 x i8] }>* @alloc298 to [0 x i8]*), [0 x i8]** %391, align 8
  %392 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 14, i64* %392, align 8
  br label %bb4

bb116:                                            ; preds = %bb113
  %393 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [17 x i8] }>* @alloc313 to [0 x i8]*), [0 x i8]** %393, align 8
  %394 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 17, i64* %394, align 8
  br label %bb4

bb21:                                             ; preds = %bb20
  br i1 %_20, label %bb118, label %bb22

bb22:                                             ; preds = %bb21
  %395 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %396 = load [0 x i8]*, [0 x i8]** %395, align 8, !nonnull !1, !align !2, !noundef !1
  %397 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %_21 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %396, i64 %398, [0 x i8]* align 1 bitcast (<{ [14 x i8] }>* @alloc298 to [0 x i8]*), i64 14)
  br label %bb23

bb118:                                            ; preds = %bb21
  %399 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %_226.0 = load [0 x i8]*, [0 x i8]** %399, align 8, !nonnull !1, !align !2, !noundef !1
  %400 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_226.1 = load i64, i64* %400, align 8
  store i64 1, i64* %_227, align 8
  %401 = load i64, i64* %_227, align 8
  %402 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0dc122eaf8f45bb3E"([0 x i8]* align 1 %_226.0, i64 %_226.1, i64 %401, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc291 to %"core::panic::location::Location"*))
  %_225.0 = extractvalue { [0 x i8]*, i64 } %402, 0
  %_225.1 = extractvalue { [0 x i8]*, i64 } %402, 1
  br label %bb119

bb119:                                            ; preds = %bb118
  %403 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  store [0 x i8]* %_225.0, [0 x i8]** %403, align 8
  %404 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  store i64 %_225.1, i64* %404, align 8
  %405 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %406 = load [0 x i8]*, [0 x i8]** %405, align 8, !nonnull !1, !align !2, !noundef !1
  %407 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_232 = load i64, i64* %407, align 8
  %_233 = icmp ult i64 0, %_232
  %408 = call i1 @llvm.expect.i1(i1 %_233, i1 true)
  br i1 %408, label %bb123, label %panic23

bb123:                                            ; preds = %bb119
  %409 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %410 = load [0 x i8]*, [0 x i8]** %409, align 8, !nonnull !1, !align !2, !noundef !1
  %411 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %412 = load i64, i64* %411, align 8
  %413 = getelementptr inbounds [0 x i8], [0 x i8]* %410, i64 0, i64 0
  %_230 = load i8, i8* %413, align 1
  %_229 = icmp ult i8 %_230, -128
  br i1 %_229, label %bb120, label %bb121

panic23:                                          ; preds = %bb119
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_232, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc293 to %"core::panic::location::Location"*)) #5
  unreachable

bb121:                                            ; preds = %bb123
  %414 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %415 = load [0 x i8]*, [0 x i8]** %414, align 8, !nonnull !1, !align !2, !noundef !1
  %416 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_237 = load i64, i64* %416, align 8
  %_238 = icmp ult i64 0, %_237
  %417 = call i1 @llvm.expect.i1(i1 %_238, i1 true)
  br i1 %417, label %bb124, label %panic24

bb120:                                            ; preds = %bb123
  store i8 1, i8* %_228, align 1
  br label %bb122

bb122:                                            ; preds = %bb124, %bb120
  %418 = load i8, i8* %_228, align 1, !range !3, !noundef !1
  %419 = trunc i8 %418 to i1
  br i1 %419, label %bb125, label %bb126

bb124:                                            ; preds = %bb121
  %420 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %421 = load [0 x i8]*, [0 x i8]** %420, align 8, !nonnull !1, !align !2, !noundef !1
  %422 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = getelementptr inbounds [0 x i8], [0 x i8]* %421, i64 0, i64 0
  %_235 = load i8, i8* %424, align 1
  %_234 = icmp ult i8 -97, %_235
  %425 = zext i1 %_234 to i8
  store i8 %425, i8* %_228, align 1
  br label %bb122

panic24:                                          ; preds = %bb121
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_237, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc295 to %"core::panic::location::Location"*)) #5
  unreachable

bb126:                                            ; preds = %bb122
  %426 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [14 x i8] }>* @alloc298 to [0 x i8]*), [0 x i8]** %426, align 8
  %427 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 14, i64* %427, align 8
  br label %bb4

bb125:                                            ; preds = %bb122
  %428 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [17 x i8] }>* @alloc313 to [0 x i8]*), [0 x i8]** %428, align 8
  %429 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 17, i64* %429, align 8
  br label %bb4

bb23:                                             ; preds = %bb22
  br i1 %_21, label %bb127, label %bb24

bb24:                                             ; preds = %bb23
  %430 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %431 = load [0 x i8]*, [0 x i8]** %430, align 8, !nonnull !1, !align !2, !noundef !1
  %432 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %_22 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %431, i64 %433, [0 x i8]* align 1 bitcast (<{ [16 x i8] }>* @alloc302 to [0 x i8]*), i64 16)
  br label %bb25

bb127:                                            ; preds = %bb23
  %_244 = load i32, i32* %val, align 4
  %_245.0 = shl i32 %_244, 6
  br label %bb128

bb128:                                            ; preds = %bb127
  %434 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %435 = load [0 x i8]*, [0 x i8]** %434, align 8, !nonnull !1, !align !2, !noundef !1
  %436 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_250 = load i64, i64* %436, align 8
  %_251 = icmp ult i64 0, %_250
  %437 = call i1 @llvm.expect.i1(i1 %_251, i1 true)
  br i1 %437, label %bb129, label %panic25

bb129:                                            ; preds = %bb128
  %438 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %439 = load [0 x i8]*, [0 x i8]** %438, align 8, !nonnull !1, !align !2, !noundef !1
  %440 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = getelementptr inbounds [0 x i8], [0 x i8]* %439, i64 0, i64 0
  %_248 = load i8, i8* %442, align 1
  %_247 = and i8 %_248, 63
  %_246 = zext i8 %_247 to i32
  %443 = or i32 %_245.0, %_246
  store i32 %443, i32* %val, align 4
  %444 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [16 x i8] }>* @alloc302 to [0 x i8]*), [0 x i8]** %444, align 8
  %445 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 16, i64* %445, align 8
  br label %bb4

panic25:                                          ; preds = %bb128
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_250, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc300 to %"core::panic::location::Location"*)) #5
  unreachable

bb25:                                             ; preds = %bb24
  br i1 %_22, label %bb130, label %bb26

bb26:                                             ; preds = %bb25
  %446 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %447 = load [0 x i8]*, [0 x i8]** %446, align 8, !nonnull !1, !align !2, !noundef !1
  %448 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %_23 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %447, i64 %449, [0 x i8]* align 1 bitcast (<{ [17 x i8] }>* @alloc313 to [0 x i8]*), i64 17)
  br label %bb27

bb130:                                            ; preds = %bb25
  %450 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %_257.0 = load [0 x i8]*, [0 x i8]** %450, align 8, !nonnull !1, !align !2, !noundef !1
  %451 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_257.1 = load i64, i64* %451, align 8
  store i64 1, i64* %_258, align 8
  %452 = load i64, i64* %_258, align 8
  %453 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0dc122eaf8f45bb3E"([0 x i8]* align 1 %_257.0, i64 %_257.1, i64 %452, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc304 to %"core::panic::location::Location"*))
  %_256.0 = extractvalue { [0 x i8]*, i64 } %453, 0
  %_256.1 = extractvalue { [0 x i8]*, i64 } %453, 1
  br label %bb131

bb131:                                            ; preds = %bb130
  %454 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  store [0 x i8]* %_256.0, [0 x i8]** %454, align 8
  %455 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  store i64 %_256.1, i64* %455, align 8
  %456 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %457 = load [0 x i8]*, [0 x i8]** %456, align 8, !nonnull !1, !align !2, !noundef !1
  %458 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_263 = load i64, i64* %458, align 8
  %_264 = icmp ult i64 0, %_263
  %459 = call i1 @llvm.expect.i1(i1 %_264, i1 true)
  br i1 %459, label %bb135, label %panic26

bb135:                                            ; preds = %bb131
  %460 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %461 = load [0 x i8]*, [0 x i8]** %460, align 8, !nonnull !1, !align !2, !noundef !1
  %462 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %463 = load i64, i64* %462, align 8
  %464 = getelementptr inbounds [0 x i8], [0 x i8]* %461, i64 0, i64 0
  %_261 = load i8, i8* %464, align 1
  %_260 = icmp ult i8 %_261, -128
  br i1 %_260, label %bb132, label %bb133

panic26:                                          ; preds = %bb131
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_263, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc306 to %"core::panic::location::Location"*)) #5
  unreachable

bb133:                                            ; preds = %bb135
  %465 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %466 = load [0 x i8]*, [0 x i8]** %465, align 8, !nonnull !1, !align !2, !noundef !1
  %467 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_268 = load i64, i64* %467, align 8
  %_269 = icmp ult i64 0, %_268
  %468 = call i1 @llvm.expect.i1(i1 %_269, i1 true)
  br i1 %468, label %bb136, label %panic27

bb132:                                            ; preds = %bb135
  store i8 1, i8* %_259, align 1
  br label %bb134

bb134:                                            ; preds = %bb136, %bb132
  %469 = load i8, i8* %_259, align 1, !range !3, !noundef !1
  %470 = trunc i8 %469 to i1
  br i1 %470, label %bb137, label %bb138

bb136:                                            ; preds = %bb133
  %471 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %472 = load [0 x i8]*, [0 x i8]** %471, align 8, !nonnull !1, !align !2, !noundef !1
  %473 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = getelementptr inbounds [0 x i8], [0 x i8]* %472, i64 0, i64 0
  %_266 = load i8, i8* %475, align 1
  %_265 = icmp ult i8 -65, %_266
  %476 = zext i1 %_265 to i8
  store i8 %476, i8* %_259, align 1
  br label %bb134

panic27:                                          ; preds = %bb133
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_268, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc308 to %"core::panic::location::Location"*)) #5
  unreachable

bb138:                                            ; preds = %bb134
  %_273 = load i32, i32* %val, align 4
  %_274.0 = shl i32 %_273, 6
  br label %bb139

bb137:                                            ; preds = %bb134
  %477 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [17 x i8] }>* @alloc313 to [0 x i8]*), [0 x i8]** %477, align 8
  %478 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 17, i64* %478, align 8
  br label %bb4

bb139:                                            ; preds = %bb138
  %479 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %480 = load [0 x i8]*, [0 x i8]** %479, align 8, !nonnull !1, !align !2, !noundef !1
  %481 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_279 = load i64, i64* %481, align 8
  %_280 = icmp ult i64 0, %_279
  %482 = call i1 @llvm.expect.i1(i1 %_280, i1 true)
  br i1 %482, label %bb140, label %panic28

bb140:                                            ; preds = %bb139
  %483 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %484 = load [0 x i8]*, [0 x i8]** %483, align 8, !nonnull !1, !align !2, !noundef !1
  %485 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %486 = load i64, i64* %485, align 8
  %487 = getelementptr inbounds [0 x i8], [0 x i8]* %484, i64 0, i64 0
  %_277 = load i8, i8* %487, align 1
  %_276 = and i8 %_277, 63
  %_275 = zext i8 %_276 to i32
  %488 = or i32 %_274.0, %_275
  store i32 %488, i32* %val, align 4
  %489 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [13 x i8] }>* @alloc315 to [0 x i8]*), [0 x i8]** %489, align 8
  %490 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 13, i64* %490, align 8
  br label %bb4

panic28:                                          ; preds = %bb139
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_279, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc311 to %"core::panic::location::Location"*)) #5
  unreachable

bb27:                                             ; preds = %bb26
  br i1 %_23, label %bb141, label %bb28

bb28:                                             ; preds = %bb27
  %491 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  %492 = load [0 x i8]*, [0 x i8]** %491, align 8, !nonnull !1, !align !2, !noundef !1
  %493 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  %494 = load i64, i64* %493, align 8
  %_24 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E"([0 x i8]* align 1 %492, i64 %494, [0 x i8]* align 1 bitcast (<{ [13 x i8] }>* @alloc315 to [0 x i8]*), i64 13)
  br label %bb29

bb141:                                            ; preds = %bb27
  %495 = zext i8 %first to i32
  store i32 %495, i32* %val, align 4
  store i32 -1, i32* %len, align 4
  %496 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [13 x i8] }>* @alloc315 to [0 x i8]*), [0 x i8]** %496, align 8
  %497 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %state, i32 0, i32 1
  store i64 13, i64* %497, align 8
  br label %bb4

bb29:                                             ; preds = %bb28
  br i1 %_24, label %bb142, label %bb30

bb30:                                             ; preds = %bb29
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [40 x i8] }>* @alloc316 to [0 x i8]*), i64 40, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc318 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_14 = alloca [2 x { i8*, i64* }], align 8
  %_7 = alloca %"core::fmt::Arguments", align 8
  %ch = alloca i32, align 4
  %len = alloca i32, align 4
  %0 = call { i32, i32 } @u8next([0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc319 to [0 x i8]*), i64 7)
  %_4.0 = extractvalue { i32, i32 } %0, 0
  %_4.1 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  store i32 %_4.0, i32* %len, align 4
  store i32 %_4.1, i32* %ch, align 4
  %1 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17ha7831572c9143625E(i32* align 4 %len)
  %_15.0 = extractvalue { i8*, i64* } %1, 0
  %_15.1 = extractvalue { i8*, i64* } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17ha7831572c9143625E(i32* align 4 %ch)
  %_18.0 = extractvalue { i8*, i64* } %2, 0
  %_18.1 = extractvalue { i8*, i64* } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_14, i64 0, i64 0
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  store i8* %_15.0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  store i64* %_15.1, i64** %5, align 8
  %6 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_14, i64 0, i64 1
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 0
  store i8* %_18.0, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 1
  store i64* %_18.1, i64** %8, align 8
  %_11.0 = bitcast [2 x { i8*, i64* }]* %_14 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h42f11624ffd41f46E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_7, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc184 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_11.0, i64 2)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_7)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare i32 @memcmp(i8*, i8*, i64) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
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

^0 = module: (path: "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8next_.rs.bc", hash: (792310979, 880008377, 415337335, 1325937384, 1620421482))
^1 = gv: (name: "alloc258", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 162662882533575168
^2 = gv: (name: "alloc273", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 354244456073146801
^3 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17he5102b1e9da4f358E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 373707811508423742
^4 = gv: (name: "alloc308", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 557947745365776060
^5 = gv: (name: "alloc221", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 727680787879075685
^6 = gv: (name: "alloc304", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 729235617589545820
^7 = gv: (name: "alloc313", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 743969112657574446
^8 = gv: (name: "_ZN4core3mem11size_of_val17h9cf4df73935f8dcfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 842183816414789883
^9 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$5first17h04ec25c0b4753eaaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 906545267480531739
^10 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17hfefd24647c564d81E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^39), (callee: ^3))))) ; guid = 1113442560327736439
^11 = gv: (name: "alloc269", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 1229652014813892620
^12 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hc4b2c1657bd55252E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 1576563421515723437
^13 = gv: (name: "_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17ha2e8a699306e1a95E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31, calls: ((callee: ^63))))) ; guid = 1843636277432250894
^14 = gv: (name: "u8next", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1026, calls: ((callee: ^9), (callee: ^13), (callee: ^93), (callee: ^21), (callee: ^60)), refs: (^58, ^17, ^43, ^44, ^47, ^77, ^7, ^30, ^20, ^37, ^66, ^92, ^83, ^91, ^25, ^74, ^5, ^40, ^22, ^34, ^29, ^1, ^65, ^42, ^45, ^94, ^50, ^15, ^80, ^85, ^69, ^36, ^41, ^71, ^11, ^2, ^62, ^73, ^32, ^78, ^75, ^89, ^64, ^87, ^59, ^52, ^6, ^56, ^4, ^49, ^53, ^33)))) ; guid = 2166764751406529596
^15 = gv: (name: "alloc267", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2585367868628294688
^16 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^17 = gv: (name: "alloc233", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2786723928724766314
^18 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h42f11624ffd41f46E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^18), (callee: ^84)), refs: (^81, ^24, ^67)))) ; guid = 2986200772867534128
^19 = gv: (name: "_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h8da057ce4fe68f87E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^8), (callee: ^86), (callee: ^72))))) ; guid = 3021302035106519160
^20 = gv: (name: "alloc302", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3116734333371250246
^21 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0dc122eaf8f45bb3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^46))))) ; guid = 3318061327169292453
^22 = gv: (name: "alloc223", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 3718778438463722084
^23 = gv: (name: "alloc319", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4086524459704009275
^24 = gv: (name: "alloc192", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^57)))) ; guid = 4141774059332196721
^25 = gv: (name: "alloc289", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4375970718988106135
^26 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17ha9364d9360b24ce6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^61), (callee: ^38))))) ; guid = 4701899505941130724
^27 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h11fc40b1e5eb5d91E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 4876598882823126562
^28 = gv: (name: "alloc195", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4925449165415068093
^29 = gv: (name: "alloc226", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 5120453463325131376
^30 = gv: (name: "alloc208", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 5701149419043964060
^31 = gv: (name: "_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17ha19ad1ae07e7f040E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^19))))) ; guid = 5709054212176383522
^32 = gv: (name: "alloc298", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6181062247092936006
^33 = gv: (name: "alloc316", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6370134122138192266
^34 = gv: (name: "alloc249", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6378654528863207680
^35 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^36 = gv: (name: "alloc260", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 6584648416415752091
^37 = gv: (name: "alloc211", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 6986360332877714667
^38 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h6bad329b2b32121aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^12), (callee: ^10))))) ; guid = 7023356564940271257
^39 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h51439292cfc0b215E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 7115218672131506199
^40 = gv: (name: "alloc240", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7221250070710301769
^41 = gv: (name: "alloc262", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 7355731028422843556
^42 = gv: (name: "alloc237", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 7443397958017725179
^43 = gv: (name: "alloc200", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 7967318916223466138
^44 = gv: (name: "alloc315", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8222526134361289456
^45 = gv: (name: "alloc242", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 8430745312386605576
^46 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9757d1d335e79aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^26), (callee: ^51))))) ; guid = 8462783897578509389
^47 = gv: (name: "alloc203", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 8604513066456583234
^48 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17ha7831572c9143625E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^27)), refs: (^68)))) ; guid = 8809652885539960107
^49 = gv: (name: "alloc311", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 8898605429322618208
^50 = gv: (name: "alloc246", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 8910170150046843218
^51 = gv: (name: "_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E") ; guid = 9009382022939071342
^52 = gv: (name: "alloc300", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 9178161422906208520
^53 = gv: (name: "alloc318", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 9195646903813526426
^54 = gv: (name: "alloc184", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^79, ^76, ^88)))) ; guid = 9511341140450176530
^55 = gv: (name: "alloc317", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9625939828835290861
^56 = gv: (name: "alloc306", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 9781057288310496753
^57 = gv: (name: "alloc191", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9798871895041606671
^58 = gv: (name: "alloc198", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10053683249614821891
^59 = gv: (name: "alloc295", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 10249404635527857204
^60 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^61 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17h7de36db78a0f4cbfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^70))))) ; guid = 11636928897392839358
^62 = gv: (name: "alloc275", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 11841364661282210034
^63 = gv: (name: "_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h0fb619cadd7e0056E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^31))))) ; guid = 12168467221997362352
^64 = gv: (name: "alloc291", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 12206408338802187224
^65 = gv: (name: "alloc235", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 12455242979379065756
^66 = gv: (name: "alloc271", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12581618108932948607
^67 = gv: (name: "alloc196", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^28)))) ; guid = 13237990997714852804
^68 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^69 = gv: (name: "alloc255", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 13382902438534972079
^70 = gv: (name: "_ZN4core3ptr8metadata8metadata17ha1772f398a1c3b32E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 13718187021543051627
^71 = gv: (name: "alloc264", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 13753814783032586597
^72 = gv: (name: "memcmp") ; guid = 13767193220660627266
^73 = gv: (name: "alloc277", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 13788357952454653279
^74 = gv: (name: "alloc218", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 14137072554116489290
^75 = gv: (name: "alloc284", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 14218806481631353766
^76 = gv: (name: "alloc185", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14485074928684237394
^77 = gv: (name: "alloc205", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 15229110486805096944
^78 = gv: (name: "alloc282", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 15277193930618778143
^79 = gv: (name: "alloc183", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15437898063471991509
^80 = gv: (name: "alloc251", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 15519632969641058916
^81 = gv: (name: "alloc194", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15793135307320630091
^82 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34, calls: ((callee: ^14), (callee: ^48), (callee: ^18), (callee: ^90)), refs: (^23, ^54)))) ; guid = 15822663052811949562
^83 = gv: (name: "alloc280", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15894768935328109061
^84 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^85 = gv: (name: "alloc253", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 16261109575407251005
^86 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h9ca1f850db5f3811E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 16595846564126403327
^87 = gv: (name: "alloc293", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 16694925443141674509
^88 = gv: (name: "alloc186", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17450851079165513848
^89 = gv: (name: "alloc286", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 17705190707183390926
^90 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^91 = gv: (name: "alloc216", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 17740525806839785046
^92 = gv: (name: "alloc213", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 18081851098883797507
^93 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^94 = gv: (name: "alloc244", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^55)))) ; guid = 18190597264672674111
^95 = blockcount: 235
