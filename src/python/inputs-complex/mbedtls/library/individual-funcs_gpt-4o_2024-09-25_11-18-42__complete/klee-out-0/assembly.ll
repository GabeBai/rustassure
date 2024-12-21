; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/mbedtls/library/individual-funcs_gpt-4o_2024-09-25_11-18-42__complete/ssl_write_renegotiation_ext.rs.bc'
source_filename = "ssl_write_renegotiation_ext.7d76dd38-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked_mut::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::builders::DebugList" = type { %"core::fmt::builders::DebugInner" }
%"core::fmt::builders::DebugInner" = type { %"core::fmt::Formatter"*, i8, i8, [6 x i8] }
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%MbedtlsSslContext = type { i64, i32, i32, [12 x i8], [12 x i8] }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc8c03aaf0416a1f8E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf808453c564450b8E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h262ad41d26ae8fcaE" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h262ad41d26ae8fcaE" to i8*) }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17hff495bbd18ed03ceE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i8**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h04699200415f5a85E" to i8*) }>, align 8
@alloc71 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc72 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc71, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc54 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc105 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc106 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc105, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc51 = private unnamed_addr constant <{ [45 x i8] }> <{ [45 x i8] c"server hello, secure renegotiation extension\0A" }>, align 1
@alloc52 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [45 x i8] }>, <{ [45 x i8] }>* @alloc51, i32 0, i32 0, i32 0), [8 x i8] c"-\00\00\00\00\00\00\00" }>, align 8
@alloc165 = private unnamed_addr constant <{ [107 x i8] }> <{ [107 x i8] c"./inputs-complex/mbedtls/library/individual-funcs_gpt-4o_2024-09-25_11-18-42/ssl_write_renegotiation_ext.rs" }>, align 1
@alloc108 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00\17\00\00\00\05\00\00\00" }>, align 8
@alloc110 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00\18\00\00\00\05\00\00\00" }>, align 8
@str.2 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc112 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00\19\00\00\00\05\00\00\00" }>, align 8
@alloc114 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00\1A\00\00\00\05\00\00\00" }>, align 8
@alloc116 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00\1D\00\00\00\09\00\00\00" }>, align 8
@alloc118 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00\1E\00\00\00\09\00\00\00" }>, align 8
@alloc120 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00\1F\00\00\00\14\00\00\00" }>, align 8
@str.3 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc122 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00\1F\00\00\00\13\00\00\00" }>, align 8
@alloc124 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00\1F\00\00\00\09\00\00\00" }>, align 8
@alloc126 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00 \00\00\00\09\00\00\00" }>, align 8
@alloc128 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00!\00\00\00\13\00\00\00" }>, align 8
@alloc130 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00!\00\00\00\09\00\00\00" }>, align 8
@alloc132 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00\22\00\00\00\09\00\00\00" }>, align 8
@alloc134 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00$\00\00\00\10\00\00\00" }>, align 8
@alloc136 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00$\00\00\00\09\00\00\00" }>, align 8
@alloc138 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00$\00\00\00:\00\00\00" }>, align 8
@alloc140 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00$\00\00\00)\00\00\00" }>, align 8
@alloc142 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00%\00\00\00\09\00\00\00" }>, align 8
@alloc144 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00&\00\00\00\10\00\00\00" }>, align 8
@alloc146 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00&\00\00\00\09\00\00\00" }>, align 8
@alloc148 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00&\00\00\00:\00\00\00" }>, align 8
@alloc150 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00&\00\00\00)\00\00\00" }>, align 8
@alloc152 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00'\00\00\00\09\00\00\00" }>, align 8
@alloc154 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00)\00\00\00\09\00\00\00" }>, align 8
@alloc156 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00*\00\00\00\09\00\00\00" }>, align 8
@alloc158 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00+\00\00\00\09\00\00\00" }>, align 8
@alloc160 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00,\00\00\00\09\00\00\00" }>, align 8
@alloc162 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00-\00\00\00\09\00\00\00" }>, align 8
@alloc164 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00.\00\00\00\09\00\00\00" }>, align 8
@alloc37 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Output length: " }>, align 1
@alloc43 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc38 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc37, i32 0, i32 0, i32 0), [8 x i8] c"\0F\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc43, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc41 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Buffer: " }>, align 1
@alloc42 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [8 x i8] }>, <{ [8 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [8 x i8] c"\08\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc43, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc166 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [107 x i8] }>, <{ [107 x i8] }>* @alloc165, i32 0, i32 0, i32 0), [16 x i8] c"k\00\00\00\00\00\00\00C\00\00\00\1F\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h4c83fa6e09e3a91fE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %_5 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hb2e01bad089fcebfE"([0 x i8]* %slice.0, i64 %slice.1)
  %1 = getelementptr inbounds i8, i8* %_5, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h4d1b312a0d192f84E(i8* %2, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h066cd0ea7be51b90E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked_mut::{closure#0}]", align 8
  %1 = bitcast [0 x i8]* %slice.0 to i8*
  %2 = getelementptr inbounds i8, i8* %1, i64 %self.0
  store i8* %2, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h312d063c71f7b325E(i8* %_3.i, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hbd8ca8228a10ff84E"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ugt i64 %self.0, %self.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h238eacd0ebc21db5E(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) #11
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h4c83fa6e09e3a91fE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
  %_17.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_17.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_17.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_17.1, 1
  ret { [0 x i8]*, i64 } %3

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17hfad232a7489883d0E(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #11
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5e5918754202673bE"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = icmp ugt i64 %self.0, %self.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_10 = icmp ugt i64 %self.1, %slice.1
  br i1 %_10, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h238eacd0ebc21db5E(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) #11
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h066cd0ea7be51b90E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
  %_20.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_20.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_20.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_20.1, 1
  ret { [0 x i8]*, i64 } %3

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17hfad232a7489883d0E(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #11
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h6c81eda0ca456382E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %_3 to i64*
  store i64 0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %self, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hbd8ca8228a10ff84E"(i64 %4, i64 %6, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0)
  %8 = extractvalue { [0 x i8]*, i64 } %7, 0
  %9 = extractvalue { [0 x i8]*, i64 } %7, 1
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %8, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  ret { [0 x i8]*, i64 } %11
}

; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h8e98ad71cecd9221E(void ()* %f) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  call void @_ZN4core3ops8function6FnOnce9call_once17hb8a6a1ac7bf35956E(void ()* %f)
  invoke void @_ZN4core4hint9black_box17h7046b5147d164232E()
          to label %bb2 unwind label %cleanup

cleanup:                                          ; preds = %start
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  %6 = bitcast { i8*, i32 }* %0 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11

bb2:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17hed0ec7ce63817969E(void ()* %main, i64 %argc, i8** %argv) unnamed_addr #2 {
start:
  %_8 = alloca i64*, align 8
  %_4 = alloca i64, align 8
  %0 = bitcast i64** %_8 to void ()**
  store void ()* %main, void ()** %0, align 8
  %_5.0 = bitcast i64** %_8 to {}*
  %1 = call i64 @_ZN3std2rt19lang_start_internal17h6612c8a7a6861b8bE({}* align 1 %_5.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv)
  store i64 %1, i64* %_4, align 8
  %v = load i64, i64* %_4, align 8
  ret i64 %v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h262ad41d26ae8fcaE"(i64** align 8 %_1) unnamed_addr #0 {
start:
  %0 = bitcast i64** %_1 to void ()**
  %_4 = load void ()*, void ()** %0, align 8, !nonnull !17, !noundef !17
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h8e98ad71cecd9221E(void ()* %_4)
  %_2 = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hf3ce22666b517982E"()
  %1 = call i32 @_ZN3std7process8ExitCode6to_i3217he90f884f6f3e3226E(i8 %_2)
  ret i32 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8c174749500df9e2E(i8* align 1 %self) unnamed_addr #0 {
start:
  %_2 = load i8, i8* %self, align 1
  %0 = zext i8 %_2 to i32
  ret i32 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std7process8ExitCode6to_i3217he90f884f6f3e3226E(i8 %0) unnamed_addr #0 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8c174749500df9e2E(i8* align 1 %self)
  ret i32 %1
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h04699200415f5a85E"(i8** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #2 {
start:
  %_6 = load i8*, i8** %self, align 8, !nonnull !17, !align !18, !noundef !17
  %0 = call zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h0917098ce09c6152E"(i8* align 1 %_6, %"core::fmt::Formatter"* align 8 %f)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7d91907091ed4ad2E"({ [0 x i8]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #2 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !17, !align !18, !noundef !17
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hed4455a52abe971cE"([0 x i8]* align 1 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* align 8 %f)
  ret i1 %2
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hed4455a52abe971cE"([0 x i8]* align 1 %self.0, i64 %self.1, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #2 {
start:
  %_6 = alloca %"core::fmt::builders::DebugList", align 8
  call void @_ZN4core3fmt9Formatter10debug_list17hf15f2bb47ca29bcfE(%"core::fmt::builders::DebugList"* sret(%"core::fmt::builders::DebugList") %_6, %"core::fmt::Formatter"* align 8 %f)
  %0 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h6472384c97383112E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %_8.0 = extractvalue { i8*, i8* } %0, 0
  %_8.1 = extractvalue { i8*, i8* } %0, 1
  %_4 = call align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17h1d449028dfd60355E(%"core::fmt::builders::DebugList"* align 8 %_6, i8* %_8.0, i8* %_8.1)
  %1 = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h026fd323cb67af00E(%"core::fmt::builders::DebugList"* align 8 %_4)
  ret i1 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping17h944f2067a397455cE(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  %1 = call i8* @memcpy(i8* %dst, i8* %src, i64 %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h1d6fdc7a5b187684E(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hdfbce08332bf211aE(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h3ded331b8ea9b11bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h32f6bbad660ae6c2E({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !17, !noundef !17
  %4 = bitcast { [0 x i8]*, i64 }* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !17, !align !18, !noundef !17
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !17, !align !18, !noundef !17
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !17, !noundef !17
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hdfbce08332bf211aE(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i64*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !17, !noundef !17
  %4 = bitcast i64* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !17, !align !18, !noundef !17
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !17, !align !18, !noundef !17
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !17, !noundef !17
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17h66565f26726524eeE({ [0 x i8]*, i64 }* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h32f6bbad660ae6c2E({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7d91907091ed4ad2E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h0917098ce09c6152E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_3 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17h6751b4352c318ba3E(%"core::fmt::Formatter"* align 8 %f)
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %start
  %_7 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17h81bf57be44109339E(%"core::fmt::Formatter"* align 8 %f)
  br i1 %_7, label %bb6, label %bb8

bb2:                                              ; preds = %start
  %1 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h138462976b48d840E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f)
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  br label %bb11

bb11:                                             ; preds = %bb6, %bb8, %bb2
  %3 = load i8, i8* %0, align 1, !range !19, !noundef !17
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb8:                                              ; preds = %bb4
  %5 = call zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h860bbd037bed567eE"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f)
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  br label %bb11

bb6:                                              ; preds = %bb4
  %7 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h8dde264dddd22411E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %0, align 1
  br label %bb11
}

; Function Attrs: nonlazybind uwtable
define internal align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17h1d449028dfd60355E(%"core::fmt::builders::DebugList"* align 8 %self, i8* %entries.0, i8* %entries.1) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %entry = alloca i8*, align 8
  %_7 = alloca i8*, align 8
  %iter = alloca { i8*, i8* }, align 8
  %1 = call { i8*, i8* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h237aed9340282662E"(i8* %entries.0, i8* %entries.1)
  %_4.0 = extractvalue { i8*, i8* } %1, 0
  %_4.1 = extractvalue { i8*, i8* } %1, 1
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 0
  store i8* %_4.0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 1
  store i8* %_4.1, i8** %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb4, %start
  %4 = invoke align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hedbc14f9cbd90af8E"({ i8*, i8* }* align 8 %iter)
          to label %bb3 unwind label %cleanup

cleanup:                                          ; preds = %bb2
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb12

bb3:                                              ; preds = %bb2
  store i8* %4, i8** %_7, align 8
  %10 = bitcast i8** %_7 to {}**
  %11 = load {}*, {}** %10, align 8
  %12 = icmp eq {}* %11, null
  br i1 %12, label %bb9, label %bb4

bb4:                                              ; preds = %bb3
  %13 = load i8*, i8** %_7, align 8, !nonnull !17, !align !18, !noundef !17
  store i8* %13, i8** %entry, align 8
  %_14.0 = bitcast i8** %entry to {}*
  %_12 = invoke align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList5entry17h014a4887822cde87E(%"core::fmt::builders::DebugList"* align 8 %self, {}* align 1 %_14.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*))
          to label %bb2 unwind label %cleanup1

cleanup1:                                         ; preds = %bb4
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb12

bb12:                                             ; preds = %cleanup, %cleanup1
  %19 = bitcast { i8*, i32 }* %0 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

bb9:                                              ; preds = %bb3
  ret %"core::fmt::builders::DebugList"* %self
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hc0457bb96671de00E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !19, !noundef !17
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %4 = bitcast { i64*, i64 }* %_24 to {}**
  store {}* null, {}** %4, align 8
  %5 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %6 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %5, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %6, align 8
  %7 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %5, i32 0, i32 1
  store i64 %pieces.1, i64* %7, align 8
  %8 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %9 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8, !align !20
  %11 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %8, i32 0, i32 0
  store i64* %10, i64** %13, align 8
  %14 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %8, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %16 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %15, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %16, align 8
  %17 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %15, i32 0, i32 1
  store i64 %args.1, i64* %17, align 8
  ret void

bb4:                                              ; preds = %bb3
  call void @_ZN4core3fmt9Arguments6new_v117hc0457bb96671de00E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc72 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc54 to [0 x { i8*, i64* }]*), i64 0)
  call void @_ZN4core9panicking9panic_fmt17ha6dc7f2ab2479463E(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc106 to %"core::panic::location::Location"*)) #11
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf808453c564450b8E"(i64** %_1) unnamed_addr #0 {
start:
  %_2 = alloca {}, align 1
  %0 = load i64*, i64** %_1, align 8, !nonnull !17, !noundef !17
  %1 = call i32 @_ZN4core3ops8function6FnOnce9call_once17hcfe531675da85377E(i64* %0)
  ret i32 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17hb8a6a1ac7bf35956E(void ()* %_1) unnamed_addr #0 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17hcfe531675da85377E(i64* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  %2 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h262ad41d26ae8fcaE"(i64** align 8 %_1)
          to label %bb2 unwind label %cleanup

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  %8 = bitcast { i8*, i32 }* %1 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb2:                                              ; preds = %start
  ret i32 %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h4d1b312a0d192f84E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0ee1ddfdf42b97f5E"(i8* %data)
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hbd7df55371662043E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h312d063c71f7b325E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h83a3c014c5d1582bE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17hff495bbd18ed03ceE"(i8** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h6842bc6e4477297eE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !19, !noundef !17
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hc4cfb90c9bb509c0E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h13b95d9fcd1265a5E({}* %2)
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h6842bc6e4477297eE"(i8* %self, i8* %3)
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc8c03aaf0416a1f8E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hbd7df55371662043E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN4core3ptr8metadata14from_raw_parts17hdfe1e2b2dc46090bE({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 8)
  %6 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %7 = load i8*, i8** %6, align 8
  ret i8* %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h13b95d9fcd1265a5E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 8)
  %6 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %7 = load i8*, i8** %6, align 8
  ret i8* %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h83a3c014c5d1582bE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd5463b978a2bbffE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !17, !noundef !17
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h73e852d208f10ebeE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h7c9cb14b5473e775E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !19, !noundef !17
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0ee1ddfdf42b97f5E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h5bdea2ce10196fdeE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hdfe1e2b2dc46090bE({}* %2)
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h7c9cb14b5473e775E"(i8* %self, i8* %3)
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hb2e01bad089fcebfE"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4hint9black_box17h7046b5147d164232E() unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h4c1ae2234a8d6d25E"([256 x i8]* align 1 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4.0 = bitcast [256 x i8]* %self to [0 x i8]*
  %1 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h9a2468652e5c47d5E"([0 x i8]* align 1 %_4.0, i64 256, i64 %index, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h50f33a17ae7389f9E"([12 x i8]* align 1 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4.0 = bitcast [12 x i8]* %self to [0 x i8]*
  %1 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h9a2468652e5c47d5E"([0 x i8]* align 1 %_4.0, i64 12, i64 %index, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h3fdb7074da338b9dE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb271c0fdbcbe51a1E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %src.0, i64 %src.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #2 {
start:
  %_3 = icmp ne i64 %self.1, %src.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_14 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h1e81a5f1fe092e08E"([0 x i8]* align 1 %src.0, i64 %src.1)
  %_16 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h3fdb7074da338b9dE"([0 x i8]* align 1 %self.0, i64 %self.1)
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h944f2067a397455cE(i8* %_14, i8* %_16, i64 %self.1)
  ret void

bb1:                                              ; preds = %start
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h28a2c9e6cf9810a7E"(i64 %self.1, i64 %src.1, %"core::panic::location::Location"* align 8 %0) #11
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h6472384c97383112E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hcc1dbe07fb7d04c0E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h1e81a5f1fe092e08E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hcc1dbe07fb7d04c0E"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h1e81a5f1fe092e08E"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h5bdea2ce10196fdeE"(i8* %ptr)
  %_5 = xor i1 %_6, true
  %3 = icmp eq i64 1, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %start
  %4 = getelementptr i8, i8* %ptr, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  store i8* %5, i8** %end, align 8
  br label %bb9

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds i8, i8* %ptr, i64 %slice.1
  store i8* %6, i8** %0, align 8
  %7 = load i8*, i8** %0, align 8
  store i8* %7, i8** %end, align 8
  br label %bb9

bb9:                                              ; preds = %bb5, %bb7
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd5463b978a2bbffE"(i8* %ptr)
  %_21 = load i8*, i8** %end, align 8
  %8 = bitcast { i8*, i8* }* %2 to i8**
  store i8* %_18, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  store i8* %_21, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !nonnull !17, !noundef !17
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = insertvalue { i8*, i8* } undef, i8* %11, 0
  %15 = insertvalue { i8*, i8* } %14, i8* %13, 1
  ret { i8*, i8* } %15
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h9a2468652e5c47d5E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h6c81eda0ca456382E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h9ad24008835e024dE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index.0, i64 %index.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5e5918754202673bE"(i64 %index.0, i64 %index.1, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hf3ce22666b517982E"() unnamed_addr #0 {
start:
  ret i8 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i8* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h237aed9340282662E"(i8* %self.0, i8* %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i8*, i8* } undef, i8* %self.0, 0
  %1 = insertvalue { i8*, i8* } %0, i8* %self.1, 1
  ret { i8*, i8* } %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hedbc14f9cbd90af8E"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !17, !noundef !17
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h73e852d208f10ebeE"(i8* %_6)
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hc4cfb90c9bb509c0E"(i8* %_5)
  %_3 = xor i1 %_4, true
  %4 = icmp eq i64 1, 0
  br i1 %4, label %bb9, label %bb5

bb5:                                              ; preds = %start
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_11 = load i8*, i8** %5, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h5bdea2ce10196fdeE"(i8* %_11)
  %_9 = xor i1 %_10, true
  br label %bb9

bb9:                                              ; preds = %start, %bb5
  %6 = bitcast { i8*, i8* }* %self to i8**
  %_15 = load i8*, i8** %6, align 8, !nonnull !17, !noundef !17
  %_14 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h73e852d208f10ebeE"(i8* %_15)
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_16 = load i8*, i8** %7, align 8
  %_12 = icmp eq i8* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb9
  %8 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %8, align 8, !nonnull !17, !noundef !17
  %old.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h73e852d208f10ebeE"(i8* %_12.i)
  %9 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %9, align 8, !nonnull !17, !noundef !17
  %_15.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h73e852d208f10ebeE"(i8* %_16.i)
  %10 = getelementptr inbounds i8, i8* %_15.i, i64 1
  store i8* %10, i8** %0, align 8
  %_3.i.i = load i8*, i8** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd5463b978a2bbffE"(i8* %_3.i.i)
  %11 = bitcast { i8*, i8* }* %self to i8**
  store i8* %_13.i, i8** %11, align 8
  store i8* %old.i, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  store i8* %12, i8** %2, align 8
  br label %bb14

bb11:                                             ; preds = %bb9
  %13 = bitcast i8** %2 to {}**
  store {}* null, {}** %13, align 8
  br label %bb14

bb14:                                             ; preds = %bb12, %bb11
  %14 = load i8*, i8** %2, align 8, !align !18
  ret i8* %14
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN27ssl_write_renegotiation_ext27ssl_write_renegotiation_ext17h60b751ae8443731fE(%MbedtlsSslContext* align 8 %ssl, [0 x i8]* align 1 %buf.0, i64 %buf.1, i64* align 8 %olen) unnamed_addr #2 {
start:
  %_79 = alloca i64, align 8
  %_69 = alloca { i64, i64 }, align 8
  %_61 = alloca i64, align 8
  %_51 = alloca { i64, i64 }, align 8
  %_7 = alloca %"core::fmt::Arguments", align 8
  %p = alloca i64, align 8
  store i64 0, i64* %p, align 8
  %0 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 1
  %_5 = load i32, i32* %0, align 8
  %1 = icmp eq i32 %_5, 1
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  call void @_ZN4core3fmt9Arguments6new_v117hc0457bb96671de00E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_7, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc52 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc54 to [0 x { i8*, i64* }]*), i64 0)
  call void @_ZN3std2io5stdio6_print17h235f89a7e7e6b2bbE(%"core::fmt::Arguments"* %_7)
  %_15 = load i64, i64* %p, align 8
  %_17 = icmp ult i64 %_15, %buf.1
  br i1 %_17, label %bb5, label %panic

bb1:                                              ; preds = %start
  store i64 0, i64* %olen, align 8
  br label %bb37

bb37:                                             ; preds = %bb36, %bb1
  ret void

bb5:                                              ; preds = %bb2
  %2 = getelementptr inbounds [0 x i8], [0 x i8]* %buf.0, i64 0, i64 %_15
  store i8 -1, i8* %2, align 1
  %3 = load i64, i64* %p, align 8
  %4 = zext i64 %3 to i128
  %5 = add i128 %4, 1
  %6 = icmp ugt i128 %5, 18446744073709551615
  %7 = trunc i128 %5 to i64
  %8 = insertvalue { i64, i1 } undef, i64 %7, 0
  %9 = insertvalue { i64, i1 } %8, i1 %6, 1
  %_18.0 = extractvalue { i64, i1 } %9, 0
  %_18.1 = extractvalue { i64, i1 } %9, 1
  br i1 %_18.1, label %panic1, label %bb6

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64 %_15, i64 %buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc108 to %"core::panic::location::Location"*)) #11
  unreachable

bb6:                                              ; preds = %bb5
  store i64 %_18.0, i64* %p, align 8
  %_20 = load i64, i64* %p, align 8
  %_22 = icmp ult i64 %_20, %buf.1
  br i1 %_22, label %bb7, label %panic2

panic1:                                           ; preds = %bb5
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc110 to %"core::panic::location::Location"*)) #11
  unreachable

bb7:                                              ; preds = %bb6
  %10 = getelementptr inbounds [0 x i8], [0 x i8]* %buf.0, i64 0, i64 %_20
  store i8 1, i8* %10, align 1
  %11 = load i64, i64* %p, align 8
  %12 = zext i64 %11 to i128
  %13 = add i128 %12, 1
  %14 = icmp ugt i128 %13, 18446744073709551615
  %15 = trunc i128 %13 to i64
  %16 = insertvalue { i64, i1 } undef, i64 %15, 0
  %17 = insertvalue { i64, i1 } %16, i1 %14, 1
  %_23.0 = extractvalue { i64, i1 } %17, 0
  %_23.1 = extractvalue { i64, i1 } %17, 1
  br i1 %_23.1, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64 %_20, i64 %buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc112 to %"core::panic::location::Location"*)) #11
  unreachable

bb8:                                              ; preds = %bb7
  store i64 %_23.0, i64* %p, align 8
  %18 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 2
  %_24 = load i32, i32* %18, align 4
  %19 = icmp eq i32 %_24, 0
  br i1 %19, label %bb29, label %bb9

panic3:                                           ; preds = %bb7
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc114 to %"core::panic::location::Location"*)) #11
  unreachable

bb29:                                             ; preds = %bb8
  %_83 = load i64, i64* %p, align 8
  %_85 = icmp ult i64 %_83, %buf.1
  br i1 %_85, label %bb30, label %panic17

bb9:                                              ; preds = %bb8
  %_25 = load i64, i64* %p, align 8
  %_27 = icmp ult i64 %_25, %buf.1
  br i1 %_27, label %bb10, label %panic4

bb10:                                             ; preds = %bb9
  %20 = getelementptr inbounds [0 x i8], [0 x i8]* %buf.0, i64 0, i64 %_25
  store i8 0, i8* %20, align 1
  %21 = load i64, i64* %p, align 8
  %22 = zext i64 %21 to i128
  %23 = add i128 %22, 1
  %24 = icmp ugt i128 %23, 18446744073709551615
  %25 = trunc i128 %23 to i64
  %26 = insertvalue { i64, i1 } undef, i64 %25, 0
  %27 = insertvalue { i64, i1 } %26, i1 %24, 1
  %_28.0 = extractvalue { i64, i1 } %27, 0
  %_28.1 = extractvalue { i64, i1 } %27, 1
  br i1 %_28.1, label %panic5, label %bb11

panic4:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64 %_25, i64 %buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc116 to %"core::panic::location::Location"*)) #11
  unreachable

bb11:                                             ; preds = %bb10
  store i64 %_28.0, i64* %p, align 8
  %28 = bitcast %MbedtlsSslContext* %ssl to i64*
  %_32 = load i64, i64* %28, align 8
  %29 = zext i64 %_32 to i128
  %30 = mul i128 %29, 2
  %31 = icmp ugt i128 %30, 18446744073709551615
  %32 = trunc i128 %30 to i64
  %33 = insertvalue { i64, i1 } undef, i64 %32, 0
  %34 = insertvalue { i64, i1 } %33, i1 %31, 1
  %_33.0 = extractvalue { i64, i1 } %34, 0
  %_33.1 = extractvalue { i64, i1 } %34, 1
  br i1 %_33.1, label %panic6, label %bb12

panic5:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc118 to %"core::panic::location::Location"*)) #11
  unreachable

bb12:                                             ; preds = %bb11
  %35 = zext i64 %_33.0 to i128
  %36 = add i128 %35, 1
  %37 = icmp ugt i128 %36, 18446744073709551615
  %38 = trunc i128 %36 to i64
  %39 = insertvalue { i64, i1 } undef, i64 %38, 0
  %40 = insertvalue { i64, i1 } %39, i1 %37, 1
  %_34.0 = extractvalue { i64, i1 } %40, 0
  %_34.1 = extractvalue { i64, i1 } %40, 1
  br i1 %_34.1, label %panic7, label %bb13

panic6:                                           ; preds = %bb11
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([33 x i8]* @str.3 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc120 to %"core::panic::location::Location"*)) #11
  unreachable

bb13:                                             ; preds = %bb12
  %_29 = and i64 %_34.0, 255
  %_35 = load i64, i64* %p, align 8
  %_37 = icmp ult i64 %_35, %buf.1
  br i1 %_37, label %bb14, label %panic8

panic7:                                           ; preds = %bb12
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc122 to %"core::panic::location::Location"*)) #11
  unreachable

bb14:                                             ; preds = %bb13
  %41 = getelementptr inbounds [0 x i8], [0 x i8]* %buf.0, i64 0, i64 %_35
  %42 = trunc i64 %_29 to i8
  store i8 %42, i8* %41, align 1
  %43 = load i64, i64* %p, align 8
  %44 = zext i64 %43 to i128
  %45 = add i128 %44, 1
  %46 = icmp ugt i128 %45, 18446744073709551615
  %47 = trunc i128 %45 to i64
  %48 = insertvalue { i64, i1 } undef, i64 %47, 0
  %49 = insertvalue { i64, i1 } %48, i1 %46, 1
  %_38.0 = extractvalue { i64, i1 } %49, 0
  %_38.1 = extractvalue { i64, i1 } %49, 1
  br i1 %_38.1, label %panic9, label %bb15

panic8:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64 %_35, i64 %buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc124 to %"core::panic::location::Location"*)) #11
  unreachable

bb15:                                             ; preds = %bb14
  store i64 %_38.0, i64* %p, align 8
  %50 = bitcast %MbedtlsSslContext* %ssl to i64*
  %_41 = load i64, i64* %50, align 8
  %51 = zext i64 %_41 to i128
  %52 = mul i128 %51, 2
  %53 = icmp ugt i128 %52, 18446744073709551615
  %54 = trunc i128 %52 to i64
  %55 = insertvalue { i64, i1 } undef, i64 %54, 0
  %56 = insertvalue { i64, i1 } %55, i1 %53, 1
  %_42.0 = extractvalue { i64, i1 } %56, 0
  %_42.1 = extractvalue { i64, i1 } %56, 1
  br i1 %_42.1, label %panic10, label %bb16

panic9:                                           ; preds = %bb14
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc126 to %"core::panic::location::Location"*)) #11
  unreachable

bb16:                                             ; preds = %bb15
  %_39 = and i64 %_42.0, 255
  %_43 = load i64, i64* %p, align 8
  %_45 = icmp ult i64 %_43, %buf.1
  br i1 %_45, label %bb17, label %panic11

panic10:                                          ; preds = %bb15
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([33 x i8]* @str.3 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc128 to %"core::panic::location::Location"*)) #11
  unreachable

bb17:                                             ; preds = %bb16
  %57 = getelementptr inbounds [0 x i8], [0 x i8]* %buf.0, i64 0, i64 %_43
  %58 = trunc i64 %_39 to i8
  store i8 %58, i8* %57, align 1
  %59 = load i64, i64* %p, align 8
  %60 = zext i64 %59 to i128
  %61 = add i128 %60, 1
  %62 = icmp ugt i128 %61, 18446744073709551615
  %63 = trunc i128 %61 to i64
  %64 = insertvalue { i64, i1 } undef, i64 %63, 0
  %65 = insertvalue { i64, i1 } %64, i1 %62, 1
  %_46.0 = extractvalue { i64, i1 } %65, 0
  %_46.1 = extractvalue { i64, i1 } %65, 1
  br i1 %_46.1, label %panic12, label %bb18

panic11:                                          ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64 %_43, i64 %buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc130 to %"core::panic::location::Location"*)) #11
  unreachable

bb18:                                             ; preds = %bb17
  store i64 %_46.0, i64* %p, align 8
  %_52 = load i64, i64* %p, align 8
  %_54 = load i64, i64* %p, align 8
  %66 = bitcast %MbedtlsSslContext* %ssl to i64*
  %_55 = load i64, i64* %66, align 8
  %67 = zext i64 %_54 to i128
  %68 = zext i64 %_55 to i128
  %69 = add i128 %67, %68
  %70 = icmp ugt i128 %69, 18446744073709551615
  %71 = trunc i128 %69 to i64
  %72 = insertvalue { i64, i1 } undef, i64 %71, 0
  %73 = insertvalue { i64, i1 } %72, i1 %70, 1
  %_56.0 = extractvalue { i64, i1 } %73, 0
  %_56.1 = extractvalue { i64, i1 } %73, 1
  br i1 %_56.1, label %panic13, label %bb19

panic12:                                          ; preds = %bb17
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc132 to %"core::panic::location::Location"*)) #11
  unreachable

bb19:                                             ; preds = %bb18
  %74 = bitcast { i64, i64 }* %_51 to i64*
  store i64 %_52, i64* %74, align 8
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_51, i32 0, i32 1
  store i64 %_56.0, i64* %75, align 8
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_51, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_51, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h9ad24008835e024dE"([0 x i8]* align 1 %buf.0, i64 %buf.1, i64 %77, i64 %79, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc136 to %"core::panic::location::Location"*))
  %_49.0 = extractvalue { [0 x i8]*, i64 } %80, 0
  %_49.1 = extractvalue { [0 x i8]*, i64 } %80, 1
  %_60 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 3
  %81 = bitcast %MbedtlsSslContext* %ssl to i64*
  %_62 = load i64, i64* %81, align 8
  store i64 %_62, i64* %_61, align 8
  %82 = load i64, i64* %_61, align 8
  %83 = call { [0 x i8]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h50f33a17ae7389f9E"([12 x i8]* align 1 %_60, i64 %82, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc138 to %"core::panic::location::Location"*))
  %_59.0 = extractvalue { [0 x i8]*, i64 } %83, 0
  %_59.1 = extractvalue { [0 x i8]*, i64 } %83, 1
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb271c0fdbcbe51a1E"([0 x i8]* align 1 %_49.0, i64 %_49.1, [0 x i8]* align 1 %_59.0, i64 %_59.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc140 to %"core::panic::location::Location"*))
  %84 = bitcast %MbedtlsSslContext* %ssl to i64*
  %_63 = load i64, i64* %84, align 8
  %85 = load i64, i64* %p, align 8
  %86 = zext i64 %85 to i128
  %87 = zext i64 %_63 to i128
  %88 = add i128 %86, %87
  %89 = icmp ugt i128 %88, 18446744073709551615
  %90 = trunc i128 %88 to i64
  %91 = insertvalue { i64, i1 } undef, i64 %90, 0
  %92 = insertvalue { i64, i1 } %91, i1 %89, 1
  %_64.0 = extractvalue { i64, i1 } %92, 0
  %_64.1 = extractvalue { i64, i1 } %92, 1
  br i1 %_64.1, label %panic14, label %bb23

panic13:                                          ; preds = %bb18
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc134 to %"core::panic::location::Location"*)) #11
  unreachable

bb23:                                             ; preds = %bb19
  store i64 %_64.0, i64* %p, align 8
  %_70 = load i64, i64* %p, align 8
  %_72 = load i64, i64* %p, align 8
  %93 = bitcast %MbedtlsSslContext* %ssl to i64*
  %_73 = load i64, i64* %93, align 8
  %94 = zext i64 %_72 to i128
  %95 = zext i64 %_73 to i128
  %96 = add i128 %94, %95
  %97 = icmp ugt i128 %96, 18446744073709551615
  %98 = trunc i128 %96 to i64
  %99 = insertvalue { i64, i1 } undef, i64 %98, 0
  %100 = insertvalue { i64, i1 } %99, i1 %97, 1
  %_74.0 = extractvalue { i64, i1 } %100, 0
  %_74.1 = extractvalue { i64, i1 } %100, 1
  br i1 %_74.1, label %panic15, label %bb24

panic14:                                          ; preds = %bb19
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc142 to %"core::panic::location::Location"*)) #11
  unreachable

bb24:                                             ; preds = %bb23
  %101 = bitcast { i64, i64 }* %_69 to i64*
  store i64 %_70, i64* %101, align 8
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_69, i32 0, i32 1
  store i64 %_74.0, i64* %102, align 8
  %103 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_69, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_69, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h9ad24008835e024dE"([0 x i8]* align 1 %buf.0, i64 %buf.1, i64 %104, i64 %106, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc146 to %"core::panic::location::Location"*))
  %_67.0 = extractvalue { [0 x i8]*, i64 } %107, 0
  %_67.1 = extractvalue { [0 x i8]*, i64 } %107, 1
  %_78 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 4
  %108 = bitcast %MbedtlsSslContext* %ssl to i64*
  %_80 = load i64, i64* %108, align 8
  store i64 %_80, i64* %_79, align 8
  %109 = load i64, i64* %_79, align 8
  %110 = call { [0 x i8]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h50f33a17ae7389f9E"([12 x i8]* align 1 %_78, i64 %109, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc148 to %"core::panic::location::Location"*))
  %_77.0 = extractvalue { [0 x i8]*, i64 } %110, 0
  %_77.1 = extractvalue { [0 x i8]*, i64 } %110, 1
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb271c0fdbcbe51a1E"([0 x i8]* align 1 %_67.0, i64 %_67.1, [0 x i8]* align 1 %_77.0, i64 %_77.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc150 to %"core::panic::location::Location"*))
  %111 = bitcast %MbedtlsSslContext* %ssl to i64*
  %_81 = load i64, i64* %111, align 8
  %112 = load i64, i64* %p, align 8
  %113 = zext i64 %112 to i128
  %114 = zext i64 %_81 to i128
  %115 = add i128 %113, %114
  %116 = icmp ugt i128 %115, 18446744073709551615
  %117 = trunc i128 %115 to i64
  %118 = insertvalue { i64, i1 } undef, i64 %117, 0
  %119 = insertvalue { i64, i1 } %118, i1 %116, 1
  %_82.0 = extractvalue { i64, i1 } %119, 0
  %_82.1 = extractvalue { i64, i1 } %119, 1
  br i1 %_82.1, label %panic16, label %bb28

panic15:                                          ; preds = %bb23
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc144 to %"core::panic::location::Location"*)) #11
  unreachable

bb28:                                             ; preds = %bb24
  store i64 %_82.0, i64* %p, align 8
  br label %bb36

panic16:                                          ; preds = %bb24
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc152 to %"core::panic::location::Location"*)) #11
  unreachable

bb36:                                             ; preds = %bb35, %bb28
  %_95 = load i64, i64* %p, align 8
  store i64 %_95, i64* %olen, align 8
  br label %bb37

bb30:                                             ; preds = %bb29
  %120 = getelementptr inbounds [0 x i8], [0 x i8]* %buf.0, i64 0, i64 %_83
  store i8 0, i8* %120, align 1
  %121 = load i64, i64* %p, align 8
  %122 = zext i64 %121 to i128
  %123 = add i128 %122, 1
  %124 = icmp ugt i128 %123, 18446744073709551615
  %125 = trunc i128 %123 to i64
  %126 = insertvalue { i64, i1 } undef, i64 %125, 0
  %127 = insertvalue { i64, i1 } %126, i1 %124, 1
  %_86.0 = extractvalue { i64, i1 } %127, 0
  %_86.1 = extractvalue { i64, i1 } %127, 1
  br i1 %_86.1, label %panic18, label %bb31

panic17:                                          ; preds = %bb29
  call void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64 %_83, i64 %buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc154 to %"core::panic::location::Location"*)) #11
  unreachable

bb31:                                             ; preds = %bb30
  store i64 %_86.0, i64* %p, align 8
  %_87 = load i64, i64* %p, align 8
  %_89 = icmp ult i64 %_87, %buf.1
  br i1 %_89, label %bb32, label %panic19

panic18:                                          ; preds = %bb30
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc156 to %"core::panic::location::Location"*)) #11
  unreachable

bb32:                                             ; preds = %bb31
  %128 = getelementptr inbounds [0 x i8], [0 x i8]* %buf.0, i64 0, i64 %_87
  store i8 1, i8* %128, align 1
  %129 = load i64, i64* %p, align 8
  %130 = zext i64 %129 to i128
  %131 = add i128 %130, 1
  %132 = icmp ugt i128 %131, 18446744073709551615
  %133 = trunc i128 %131 to i64
  %134 = insertvalue { i64, i1 } undef, i64 %133, 0
  %135 = insertvalue { i64, i1 } %134, i1 %132, 1
  %_90.0 = extractvalue { i64, i1 } %135, 0
  %_90.1 = extractvalue { i64, i1 } %135, 1
  br i1 %_90.1, label %panic20, label %bb33

panic19:                                          ; preds = %bb31
  call void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64 %_87, i64 %buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc158 to %"core::panic::location::Location"*)) #11
  unreachable

bb33:                                             ; preds = %bb32
  store i64 %_90.0, i64* %p, align 8
  %_91 = load i64, i64* %p, align 8
  %_93 = icmp ult i64 %_91, %buf.1
  br i1 %_93, label %bb34, label %panic21

panic20:                                          ; preds = %bb32
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc160 to %"core::panic::location::Location"*)) #11
  unreachable

bb34:                                             ; preds = %bb33
  %136 = getelementptr inbounds [0 x i8], [0 x i8]* %buf.0, i64 0, i64 %_91
  store i8 0, i8* %136, align 1
  %137 = load i64, i64* %p, align 8
  %138 = zext i64 %137 to i128
  %139 = add i128 %138, 1
  %140 = icmp ugt i128 %139, 18446744073709551615
  %141 = trunc i128 %139 to i64
  %142 = insertvalue { i64, i1 } undef, i64 %141, 0
  %143 = insertvalue { i64, i1 } %142, i1 %140, 1
  %_94.0 = extractvalue { i64, i1 } %143, 0
  %_94.1 = extractvalue { i64, i1 } %143, 1
  br i1 %_94.1, label %panic22, label %bb35

panic21:                                          ; preds = %bb33
  call void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64 %_91, i64 %buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc162 to %"core::panic::location::Location"*)) #11
  unreachable

bb35:                                             ; preds = %bb34
  store i64 %_94.0, i64* %p, align 8
  br label %bb36

panic22:                                          ; preds = %bb34
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc164 to %"core::panic::location::Location"*)) #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN27ssl_write_renegotiation_ext4main17h16a07e7513c7d330E() unnamed_addr #2 {
start:
  %_41 = alloca i64, align 8
  %_38 = alloca { [0 x i8]*, i64 }, align 8
  %_34 = alloca [1 x { i8*, i64* }], align 8
  %_27 = alloca %"core::fmt::Arguments", align 8
  %_22 = alloca [1 x { i8*, i64* }], align 8
  %_15 = alloca %"core::fmt::Arguments", align 8
  %olen = alloca i64, align 8
  %buf = alloca [256 x i8], align 1
  %_3 = alloca [12 x i8], align 1
  %_2 = alloca [12 x i8], align 1
  %ssl = alloca %MbedtlsSslContext, align 8
  %0 = getelementptr inbounds [12 x i8], [12 x i8]* %_2, i64 0, i64 0
  %1 = call i8* @memset(i8* %0, i32 1, i64 12)
  %2 = getelementptr inbounds [12 x i8], [12 x i8]* %_3, i64 0, i64 0
  %3 = call i8* @memset(i8* %2, i32 2, i64 12)
  %4 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 1
  store i32 1, i32* %4, align 8
  %5 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 2
  store i32 1, i32* %5, align 4
  %6 = bitcast %MbedtlsSslContext* %ssl to i64*
  store i64 12, i64* %6, align 8
  %7 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 3
  %8 = bitcast [12 x i8]* %7 to i8*
  %9 = bitcast [12 x i8]* %_2 to i8*
  %10 = call i8* @memcpy(i8* %8, i8* %9, i64 12)
  %11 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 4
  %12 = bitcast [12 x i8]* %11 to i8*
  %13 = bitcast [12 x i8]* %_3 to i8*
  %14 = call i8* @memcpy(i8* %12, i8* %13, i64 12)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  %16 = call i8* @memset(i8* %15, i32 0, i64 256)
  store i64 0, i64* %olen, align 8
  %_9.0 = bitcast [256 x i8]* %buf to [0 x i8]*
  call void @_ZN27ssl_write_renegotiation_ext27ssl_write_renegotiation_ext17h60b751ae8443731fE(%MbedtlsSslContext* align 8 %ssl, [0 x i8]* align 1 %_9.0, i64 256, i64* align 8 %olen)
  %17 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h1d6fdc7a5b187684E(i64* align 8 %olen)
  %_23.0 = extractvalue { i8*, i64* } %17, 0
  %_23.1 = extractvalue { i8*, i64* } %17, 1
  %18 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_22, i64 0, i64 0
  %19 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %18, i32 0, i32 0
  store i8* %_23.0, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %18, i32 0, i32 1
  store i64* %_23.1, i64** %20, align 8
  %_19.0 = bitcast [1 x { i8*, i64* }]* %_22 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hc0457bb96671de00E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_15, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc38 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_19.0, i64 1)
  call void @_ZN3std2io5stdio6_print17h235f89a7e7e6b2bbE(%"core::fmt::Arguments"* %_15)
  %_42 = load i64, i64* %olen, align 8
  store i64 %_42, i64* %_41, align 8
  %21 = load i64, i64* %_41, align 8
  %22 = call { [0 x i8]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h4c1ae2234a8d6d25E"([256 x i8]* align 1 %buf, i64 %21, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc166 to %"core::panic::location::Location"*))
  %_39.0 = extractvalue { [0 x i8]*, i64 } %22, 0
  %_39.1 = extractvalue { [0 x i8]*, i64 } %22, 1
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_38, i32 0, i32 0
  store [0 x i8]* %_39.0, [0 x i8]** %23, align 8
  %24 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_38, i32 0, i32 1
  store i64 %_39.1, i64* %24, align 8
  %25 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17h66565f26726524eeE({ [0 x i8]*, i64 }* align 8 %_38)
  %_35.0 = extractvalue { i8*, i64* } %25, 0
  %_35.1 = extractvalue { i8*, i64* } %25, 1
  %26 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_34, i64 0, i64 0
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %26, i32 0, i32 0
  store i8* %_35.0, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %26, i32 0, i32 1
  store i64* %_35.1, i64** %28, align 8
  %_31.0 = bitcast [1 x { i8*, i64* }]* %_34 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hc0457bb96671de00E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_27, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc42 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_31.0, i64 1)
  call void @_ZN3std2io5stdio6_print17h235f89a7e7e6b2bbE(%"core::fmt::Arguments"* %_27)
  ret void
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h238eacd0ebc21db5E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17hfad232a7489883d0E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h6612c8a7a6861b8bE({}* align 1, [3 x i64]* align 8, i64, i8**) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17hf15f2bb47ca29bcfE(%"core::fmt::builders::DebugList"* sret(%"core::fmt::builders::DebugList"), %"core::fmt::Formatter"* align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h026fd323cb67af00E(%"core::fmt::builders::DebugList"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h3ded331b8ea9b11bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17h6751b4352c318ba3E(%"core::fmt::Formatter"* align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h138462976b48d840E"(i8* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17h81bf57be44109339E(%"core::fmt::Formatter"* align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h8dde264dddd22411E"(i8* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h860bbd037bed567eE"(i8* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList5entry17h014a4887822cde87E(%"core::fmt::builders::DebugList"* align 8, {}* align 1, [3 x i64]* align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha6dc7f2ab2479463E(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h28a2c9e6cf9810a7E"(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h235f89a7e7e6b2bbE(%"core::fmt::Arguments"*) unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #9 {
top:
  %2 = sext i32 %0 to i64
  %3 = call i64 @_ZN3std2rt10lang_start17hed0ec7ce63817969E(void ()* @_ZN27ssl_write_renegotiation_ext4main17h16a07e7513c7d330E, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %destaddr, i8* noundef %srcaddr, i64 noundef %len) #10 !dbg !21 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !31, metadata !DIExpression()), !dbg !32
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !37, metadata !DIExpression()), !dbg !40
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !41
  store i8* %0, i8** %dest, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i8** %src, metadata !42, metadata !DIExpression()), !dbg !45
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !46
  store i8* %1, i8** %src, align 8, !dbg !45
  br label %while.cond, !dbg !47

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !48
  %dec = add i64 %2, -1, !dbg !48
  store i64 %dec, i64* %len.addr, align 8, !dbg !48
  %cmp = icmp ugt i64 %2, 0, !dbg !49
  br i1 %cmp, label %while.body, label %while.end, !dbg !47

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !50
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !50
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !50
  %4 = load i8, i8* %3, align 1, !dbg !51
  %5 = load i8*, i8** %dest, align 8, !dbg !52
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !52
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !52
  store i8 %4, i8* %5, align 1, !dbg !53
  br label %while.cond, !dbg !47, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !56
  ret i8* %6, !dbg !57
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %dst, i32 noundef %s, i64 noundef %count) #10 !dbg !58 {
entry:
  %dst.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !65, metadata !DIExpression()), !dbg !66
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i8** %a, metadata !69, metadata !DIExpression()), !dbg !70
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !71
  store i8* %0, i8** %a, align 8, !dbg !70
  br label %while.cond, !dbg !72

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %count.addr, align 8, !dbg !73
  %dec = add i64 %1, -1, !dbg !73
  store i64 %dec, i64* %count.addr, align 8, !dbg !73
  %cmp = icmp ugt i64 %1, 0, !dbg !74
  br i1 %cmp, label %while.body, label %while.end, !dbg !72

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %s.addr, align 4, !dbg !75
  %conv = trunc i32 %2 to i8, !dbg !75
  %3 = load i8*, i8** %a, align 8, !dbg !76
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !76
  store i8* %incdec.ptr, i8** %a, align 8, !dbg !76
  store i8 %conv, i8* %3, align 1, !dbg !77
  br label %while.cond, !dbg !72, !llvm.loop !78

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !79
  ret i8* %4, !dbg !80
}

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nonlazybind "target-cpu"="x86-64" }
attributes #10 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.dbg.cu = !{!8, !14}
!llvm.ident = !{!16, !16}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 14.0.0 (git@github.com:taptipalit/typedefextractor.git fc1e79f9530360ad5b316913f5cb89037ebeb3b6)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/tpalit/rustify/src/klee/runtime/Freestanding/memcpy.c", directory: "/home/tpalit/rustify/src/klee-build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !12, line: 40, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.0 (git@github.com:taptipalit/typedefextractor.git fc1e79f9530360ad5b316913f5cb89037ebeb3b6)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/tpalit/rustify/src/klee/runtime/Freestanding/memset.c", directory: "/home/tpalit/rustify/src/klee-build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "72c61b3d8150747c019c191df9708e2b")
!16 = !{!"clang version 14.0.0 (git@github.com:taptipalit/typedefextractor.git fc1e79f9530360ad5b316913f5cb89037ebeb3b6)"}
!17 = !{}
!18 = !{i64 1}
!19 = !{i8 0, i8 2}
!20 = !{i64 8}
!21 = distinct !DISubprogram(name: "memcpy", scope: !22, file: !22, line: 12, type: !23, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !17)
!22 = !DIFile(filename: "klee/runtime/Freestanding/memcpy.c", directory: "/home/tpalit/rustify/src", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !25, !26, !28}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "clang-llvm/build/lib/clang/14.0.0/include/stddef.h", directory: "/home/tpalit", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocalVariable(name: "destaddr", arg: 1, scope: !21, file: !22, line: 12, type: !25)
!32 = !DILocation(line: 12, column: 20, scope: !21)
!33 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !21, file: !22, line: 12, type: !26)
!34 = !DILocation(line: 12, column: 42, scope: !21)
!35 = !DILocalVariable(name: "len", arg: 3, scope: !21, file: !22, line: 12, type: !28)
!36 = !DILocation(line: 12, column: 58, scope: !21)
!37 = !DILocalVariable(name: "dest", scope: !21, file: !22, line: 13, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DILocation(line: 13, column: 9, scope: !21)
!41 = !DILocation(line: 13, column: 16, scope: !21)
!42 = !DILocalVariable(name: "src", scope: !21, file: !22, line: 14, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!45 = !DILocation(line: 14, column: 15, scope: !21)
!46 = !DILocation(line: 14, column: 21, scope: !21)
!47 = !DILocation(line: 16, column: 3, scope: !21)
!48 = !DILocation(line: 16, column: 13, scope: !21)
!49 = !DILocation(line: 16, column: 16, scope: !21)
!50 = !DILocation(line: 17, column: 19, scope: !21)
!51 = !DILocation(line: 17, column: 15, scope: !21)
!52 = !DILocation(line: 17, column: 10, scope: !21)
!53 = !DILocation(line: 17, column: 13, scope: !21)
!54 = distinct !{!54, !47, !50, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 18, column: 10, scope: !21)
!57 = !DILocation(line: 18, column: 3, scope: !21)
!58 = distinct !DISubprogram(name: "memset", scope: !59, file: !59, line: 12, type: !60, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !17)
!59 = !DIFile(filename: "klee/runtime/Freestanding/memset.c", directory: "/home/tpalit/rustify/src", checksumkind: CSK_MD5, checksum: "72c61b3d8150747c019c191df9708e2b")
!60 = !DISubroutineType(types: !61)
!61 = !{!25, !25, !62, !28}
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DILocalVariable(name: "dst", arg: 1, scope: !58, file: !59, line: 12, type: !25)
!64 = !DILocation(line: 12, column: 20, scope: !58)
!65 = !DILocalVariable(name: "s", arg: 2, scope: !58, file: !59, line: 12, type: !62)
!66 = !DILocation(line: 12, column: 29, scope: !58)
!67 = !DILocalVariable(name: "count", arg: 3, scope: !58, file: !59, line: 12, type: !28)
!68 = !DILocation(line: 12, column: 39, scope: !58)
!69 = !DILocalVariable(name: "a", scope: !58, file: !59, line: 13, type: !38)
!70 = !DILocation(line: 13, column: 9, scope: !58)
!71 = !DILocation(line: 13, column: 13, scope: !58)
!72 = !DILocation(line: 14, column: 3, scope: !58)
!73 = !DILocation(line: 14, column: 15, scope: !58)
!74 = !DILocation(line: 14, column: 18, scope: !58)
!75 = !DILocation(line: 15, column: 12, scope: !58)
!76 = !DILocation(line: 15, column: 7, scope: !58)
!77 = !DILocation(line: 15, column: 10, scope: !58)
!78 = distinct !{!78, !72, !75, !55}
!79 = !DILocation(line: 16, column: 10, scope: !58)
!80 = !DILocation(line: 16, column: 3, scope: !58)
