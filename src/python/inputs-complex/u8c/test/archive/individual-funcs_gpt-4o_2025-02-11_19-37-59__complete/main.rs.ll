; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/main.rs.bc'
source_filename = "main.3f07ec1f-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked_mut::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>" = type { { i64*, i64* }, i64 }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::fmt::rt::v1::Argument" = type { i64, %"core::fmt::rt::v1::FormatSpec" }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc205 = private unnamed_addr constant <{ [91 x i8] }> <{ [91 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/iter/adapters/enumerate.rs" }>, align 1
@alloc206 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc205, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\000\00\00\00\09\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc19 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc20 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc160 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc207 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc208 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc207, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc213 = private unnamed_addr constant <{ [83 x i8] }> <{ [83 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/str/validations.rs" }>, align 1
@alloc210 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc213, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\001\00\00\00$\00\00\00" }>, align 8
@alloc212 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc213, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\008\00\00\00(\00\00\00" }>, align 8
@alloc214 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [83 x i8] }>, <{ [83 x i8] }>* @alloc213, i32 0, i32 0, i32 0), [16 x i8] c"S\00\00\00\00\00\00\00@\00\00\00,\00\00\00" }>, align 8
@alloc219 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/char/methods.rs" }>, align 1
@alloc216 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc219, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\8D\06\00\00\16\00\00\00" }>, align 8
@alloc218 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc219, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\A7\06\00\00\0A\00\00\00" }>, align 8
@alloc10 = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"encode_utf8: need " }>, align 1
@alloc12 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c" bytes to encode U+" }>, align 1
@alloc13 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c", but the buffer has " }>, align 1
@alloc11 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [18 x i8] }>, <{ [18 x i8] }>* @alloc10, i32 0, i32 0, i32 0), [8 x i8] c"\12\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [19 x i8] }>, <{ [19 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [8 x i8] c"\13\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc13, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@alloc220 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc219, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\A0\06\00\00\0E\00\00\00" }>, align 8
@alloc221 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"\C3\A8a" }>, align 1
@alloc222 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"\E4\BC\9A\E5\93\A1" }>, align 1
@alloc223 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"\F0\A7\80\80\F0\A7\80\8D" }>, align 1
@alloc224 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"Aa" }>, align 1
@alloc239 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/main.rs" }>, align 1
@alloc226 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc239, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\1F\00\00\00\17\00\00\00" }>, align 8
@alloc35 = private unnamed_addr constant <{ [25 x i8] }> <{ [25 x i8] c": (l == k+1) test4.rs:19\0A" }>, align 1
@alloc34 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc160 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [25 x i8] }>, <{ [25 x i8] }>* @alloc35, i32 0, i32 0, i32 0), [8 x i8] c"\19\00\00\00\00\00\00\00" }>, align 8
@alloc241 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"FAIL" }>, align 1
@alloc242 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"PASS" }>, align 1
@alloc41 = private unnamed_addr constant <{ [23 x i8] }> <{ [23 x i8] c"    : Expected length: " }>, align 1
@alloc56 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c", got " }>, align 1
@alloc57 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc42 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [23 x i8] }>, <{ [23 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [8 x i8] c"\17\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [6 x i8] }>, <{ [6 x i8] }>* @alloc56, i32 0, i32 0, i32 0), [8 x i8] c"\06\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc57, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc230 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc239, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00%\00\00\00;\00\00\00" }>, align 8
@alloc48 = private unnamed_addr constant <{ [24 x i8] }> <{ [24 x i8] c": (l == l2) test4.rs:21\0A" }>, align 1
@alloc47 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc160 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [24 x i8] }>, <{ [24 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@alloc54 = private unnamed_addr constant <{ [23 x i8] }> <{ [23 x i8] c"    : Length should be " }>, align 1
@alloc55 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [23 x i8] }>, <{ [23 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [8 x i8] c"\17\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [6 x i8] }>, <{ [6 x i8] }>* @alloc56, i32 0, i32 0, i32 0), [8 x i8] c"\06\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc57, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc234 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc239, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\004\00\00\00\13\00\00\00" }>, align 8
@alloc236 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc239, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\004\00\00\00%\00\00\00" }>, align 8
@alloc63 = private unnamed_addr constant <{ [39 x i8] }> <{ [39 x i8] c": (strncmp(s1,buf,l) == 0) test4.rs:22\0A" }>, align 1
@alloc62 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc160 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [39 x i8] }>, <{ [39 x i8] }>* @alloc63, i32 0, i32 0, i32 0), [8 x i8] c"'\00\00\00\00\00\00\00" }>, align 8
@alloc69 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c"    : Encoding error\0A" }>, align 1
@alloc70 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@alloc74 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"    : len=" }>, align 1
@alloc76 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c" [S " }>, align 1
@alloc83 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c" " }>, align 1
@alloc80 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"] [E " }>, align 1
@alloc84 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"] test4.rs:25\0A" }>, align 1
@alloc75 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc74, i32 0, i32 0, i32 0), [8 x i8] c"\0A\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @alloc76, i32 0, i32 0, i32 0), [8 x i8] c"\04\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [5 x i8] }>, <{ [5 x i8] }>* @alloc80, i32 0, i32 0, i32 0), [8 x i8] c"\05\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [14 x i8] }>, <{ [14 x i8] }>* @alloc84, i32 0, i32 0, i32 0), [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@alloc100 = private unnamed_addr constant <{ [1 x i8] }> zeroinitializer, align 1
@alloc147 = private unnamed_addr constant <{ [504 x i8] }> <{ [504 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00 \00\00\00(\00\00\00\03\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00 \00\00\00(\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00 \00\00\00(\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00 \00\00\00(\00\00\00\03\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00 \00\00\00(\00\00\00\03\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00 \00\00\00(\00\00\00\03\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00 \00\00\00(\00\00\00\03\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00 \00\00\00(\00\00\00\03\00\00\00\00\00\00\00" }>, align 8
@alloc240 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc239, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00L\00\00\00\12\00\00\00" }>, align 8
@alloc151 = private unnamed_addr constant <{ [29 x i8] }> <{ [29 x i8] c": (buf[l]=='\\0') test4.rs:28\0A" }>, align 1
@alloc150 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc160 to i8*), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [29 x i8] }>, <{ [29 x i8] }>* @alloc151, i32 0, i32 0, i32 0), [8 x i8] c"\1D\00\00\00\00\00\00\00" }>, align 8
@alloc157 = private unnamed_addr constant <{ [33 x i8] }> <{ [33 x i8] c"    : Encoding not 0 terminated!\0A" }>, align 1
@alloc158 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [33 x i8] }>, <{ [33 x i8] }>* @alloc157, i32 0, i32 0, i32 0), [8 x i8] c"!\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hb27be52c8874a604E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %_5 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h23f934c6bc3449faE"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_5, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h540e885c53bb748aE(i8* %2, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h2d5dc1f0056ce2aeE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
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
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hebe77b6c2261580aE(i8* %_3.i, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h0423084e4effaa41E"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ugt i64 %self.0, %self.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) #9
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hb27be52c8874a604E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
  %_17.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_17.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #9
  unreachable

bb5:                                              ; preds = %bb4
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_17.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_17.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h437f7687a2d618caE"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
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
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h2d5dc1f0056ce2aeE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
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
define { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h9e1a7b56148a25beE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
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
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h0423084e4effaa41E"(i64 %4, i64 %6, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0)
  %8 = extractvalue { [0 x i8]*, i64 } %7, 0
  %9 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %8, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  ret { [0 x i8]*, i64 } %11
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2b9daf1133f40c43E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
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
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h437f7687a2d618caE"(i64 %4, i64 %6, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %7, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define { i64, i64* } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h753490004b694c2eE"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_12 = alloca { i64, i64* }, align 8
  %_3 = alloca i64*, align 8
  %1 = alloca { i64, i64* }, align 8
  %_5 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %self to { i64*, i64* }*
  %_4 = call align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h57370537aaed1807E"({ i64*, i64* }* align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call align 8 i64* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h082944aed11d796dE"(i64* align 8 %_4)
  store i64* %2, i64** %_3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast i64** %_3 to {}**
  %4 = load {}*, {}** %3, align 8
  %5 = icmp eq {}* %4, null
  %_6 = select i1 %5, i64 1, i64 0
  switch i64 %_6, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %6 = bitcast i64** %_3 to { [0 x i8]*, i64 }**
  %val = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %7 = getelementptr inbounds %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>", %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %self, i32 0, i32 1
  %i = load i64, i64* %7, align 8
  %8 = getelementptr inbounds %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>", %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %self, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %9, i64 1)
  %_11.0 = extractvalue { i64, i1 } %10, 0
  %_11.1 = extractvalue { i64, i1 } %10, 1
  %11 = call i1 @llvm.expect.i1(i1 %_11.1, i1 false)
  br i1 %11, label %panic, label %bb7

bb5:                                              ; preds = %bb2
  %12 = call { i64, i64* } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h73fb1142f6223fddE"()
  store { i64, i64* } %12, { i64, i64* }* %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %13 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8, !align !2
  %17 = insertvalue { i64, i64* } undef, i64 %14, 0
  %18 = insertvalue { i64, i64* } %17, i64* %16, 1
  ret { i64, i64* } %18

bb7:                                              ; preds = %bb3
  %19 = getelementptr inbounds %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>", %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %self, i32 0, i32 1
  store i64 %_11.0, i64* %19, align 8
  %20 = bitcast { i64, i64* }* %_12 to i64*
  store i64 %i, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_12, i32 0, i32 1
  %22 = bitcast i64** %21 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %val, { [0 x i8]*, i64 }** %22, align 8
  %23 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_12, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_12, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8, !nonnull !1, !align !2, !noundef !1
  %27 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 1
  store i64* %26, i64** %28, align 8
  br label %bb8

panic:                                            ; preds = %bb3
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc206 to %"core::panic::location::Location"*)) #9
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %cleanup
  br label %bb10

cleanup:                                          ; preds = %panic
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  %31 = extractvalue { i8*, i32 } %29, 1
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %bb9

unreachable:                                      ; preds = %panic
  unreachable

bb10:                                             ; preds = %bb9
  %34 = bitcast { i8*, i32 }* %0 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = insertvalue { i8*, i32 } undef, i8* %35, 0
  %39 = insertvalue { i8*, i32 } %38, i32 %37, 1
  resume { i8*, i32 } %39
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha5701a086d52f5a6E"(i8** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %_6 = load i8*, i8** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %0 = call zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h973038560627b99bE"(i8* align 1 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc055946eb4a3cd02E"({ [0 x i8]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !3, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h1b3afdf1b6437434E"({ [0 x i8]*, i64 }* align 8 %self, { [0 x i8]*, i64 }* align 8 %other) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_5.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !3, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_5.1 = load i64, i64* %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !1, !align !3, !noundef !1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 1
  %_6.1 = load i64, i64* %3, align 8
  %4 = call zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2ne17h2e3d1e85d5c833ddE"([0 x i8]* align 1 %_5.0, i64 %_5.1, [0 x i8]* align 1 %_6.0, i64 %_6.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h92730bf8d9d81482E(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hb61256346d06b5a0E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h9ee7c3182eff4600E({ [0 x i8]*, i64 }* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h28839fce3faeedf5E({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc055946eb4a3cd02E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17he7eeab6ecc5730ceE(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h1ef4923d43f5cf09E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h1ef4923d43f5cf09E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !3, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !3, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h28839fce3faeedf5E({ [0 x i8]*, i64 }* align 8 %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !3, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !3, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h4890561f5cb080daE(i8** align 8 %x, i1 (i8**, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i8**, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i8** %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !3, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !3, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hb61256346d06b5a0E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !3, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !3, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17ha35634fe6fa8dc64E(i8** align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h4890561f5cb080daE(i8** align 8 %x, i1 (i8**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha5701a086d52f5a6E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h973038560627b99bE"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
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
  %1 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17he8f5da6c6d93bce0E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f)
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb11

bb11:                                             ; preds = %bb10, %bb3
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb5:                                              ; preds = %bb4
  br i1 %_7, label %bb6, label %bb8

bb8:                                              ; preds = %bb5
  %5 = call zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h09e04b6c054ba3d0E"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f)
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  br label %bb9

bb6:                                              ; preds = %bb5
  %7 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h913c3b15faba26aaE"(i8* align 1 %self, %"core::fmt::Formatter"* align 8 %f)
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
define internal void @_ZN4core3fmt9Arguments16new_v1_formatted17hd6e389847a5961a6E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1, [0 x %"core::fmt::rt::v1::Argument"]* align 8 %fmt.0, i64 %fmt.1) unnamed_addr #0 {
start:
  %_6 = alloca { i64*, i64 }, align 8
  %1 = bitcast { i64*, i64 }* %_6 to { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }*
  %2 = getelementptr inbounds { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }, { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }* %1, i32 0, i32 0
  store [0 x %"core::fmt::rt::v1::Argument"]* %fmt.0, [0 x %"core::fmt::rt::v1::Argument"]** %2, align 8
  %3 = getelementptr inbounds { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }, { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }* %1, i32 0, i32 1
  store i64 %fmt.1, i64* %3, align 8
  %4 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %5 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %4, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %5, align 8
  %6 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %4, i32 0, i32 1
  store i64 %pieces.1, i64* %6, align 8
  %7 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %8 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_6, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8, !align !2
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_6, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %7, i32 0, i32 0
  store i64* %9, i64** %12, align 8
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %7, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %15 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %14, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %15, align 8
  %16 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %14, i32 0, i32 1
  store i64 %args.1, i64* %16, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !4, !noundef !1
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
  %11 = load i64*, i64** %10, align 8, !align !2
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
  call void @_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc20 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc160 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc208 to %"core::panic::location::Location"*)) #9
  unreachable
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem11size_of_val17ha49823657a587c49E([0 x i8]* align 1 %val.0, i64 %val.1) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h540e885c53bb748aE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hb574dbefbc9b5546E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h88f1e0cf92bd5bdaE({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hebe77b6c2261580aE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h504d8674cda1cf35E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hd9d956a9215602bcE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h1f5685ce4bebea37E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hcbb1ccfb58edb472E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hd9d956a9215602bcE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hccf9b60e31363d27E"({ [0 x i8]*, i64 }* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast { [0 x i8]*, i64 }* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hcbb1ccfb58edb472E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hd9d956a9215602bcE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h88f1e0cf92bd5bdaE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata14from_raw_parts17hb1da9b7a059ef765E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h504d8674cda1cf35E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hcbb1ccfb58edb472E({}* %data_address) unnamed_addr #0 {
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
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1cef1f5dfde023f7E"({ [0 x i8]*, i64 }* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %ptr, { [0 x i8]*, i64 }** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h80858f9f965d89a7E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0c027fb8443c4a79E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h745eb3521346bef0E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to { [0 x i8]*, i64 }*
  ret { [0 x i8]*, i64 }* %_2
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h894853979f377be2E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hb574dbefbc9b5546E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h0d4651d11ed0af29E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hb1da9b7a059ef765E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h894853979f377be2E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h22a29c5bc9f5b83fE"({ [0 x i8]*, i64 }* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast { [0 x i8]*, i64 }* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hb1da9b7a059ef765E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h894853979f377be2E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h23f934c6bc3449faE"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @_ZN4core3str11validations15next_code_point17he42c740421b13363E({ i8*, i8* }* align 8 %bytes) unnamed_addr #0 {
start:
  %ch = alloca i32, align 4
  %_4 = alloca i8*, align 8
  %0 = alloca { i32, i32 }, align 4
  %_5 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hedafd80b3b869c29E"({ i8*, i8* }* align 8 %bytes)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf1c61904591857b1E"(i8* align 1 %_5)
  store i8* %1, i8** %_4, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast i8** %_4 to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_7 = select i1 %4, i64 1, i64 0
  switch i64 %_7, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %val = load i8*, i8** %_4, align 8, !nonnull !1, !align !3, !noundef !1
  %x = load i8, i8* %val, align 1
  %_11 = icmp ult i8 %x, -128
  br i1 %_11, label %bb7, label %bb8

bb5:                                              ; preds = %bb2
  %5 = call { i32, i32 } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h53a9062b8c4bc9d7E"()
  store { i32, i32 } %5, { i32, i32 }* %0, align 4
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb7, %bb6
  br label %bb24

bb8:                                              ; preds = %bb3
  %init = call i32 @_ZN4core3str11validations15utf8_first_byte17hb1d753cd5ad59f03E(i8 %x, i32 2)
  br label %bb9

bb7:                                              ; preds = %bb3
  %_13 = zext i8 %x to i32
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_13, i32* %6, align 4
  %7 = bitcast { i32, i32 }* %0 to i32*
  store i32 1, i32* %7, align 4
  br label %bb23

bb24:                                             ; preds = %bb22, %bb23
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %9 = load i32, i32* %8, align 4, !range !5, !noundef !1
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = insertvalue { i32, i32 } undef, i32 %9, 0
  %13 = insertvalue { i32, i32 } %12, i32 %11, 1
  ret { i32, i32 } %13

bb9:                                              ; preds = %bb8
  %_19 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hedafd80b3b869c29E"({ i8*, i8* }* align 8 %bytes)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_18 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h6b348b61aefb721cE"(i8* align 1 %_19, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc210 to %"core::panic::location::Location"*))
  br label %bb11

bb11:                                             ; preds = %bb10
  %y = load i8, i8* %_18, align 1
  %14 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h770410742ab10aa7E(i32 %init, i8 %y)
  store i32 %14, i32* %ch, align 4
  br label %bb12

bb12:                                             ; preds = %bb11
  %_24 = icmp uge i8 %x, -32
  br i1 %_24, label %bb13, label %bb22

bb22:                                             ; preds = %bb21, %bb12
  %_50 = load i32, i32* %ch, align 4
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_50, i32* %15, align 4
  %16 = bitcast { i32, i32 }* %0 to i32*
  store i32 1, i32* %16, align 4
  br label %bb24

bb13:                                             ; preds = %bb12
  %_28 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hedafd80b3b869c29E"({ i8*, i8* }* align 8 %bytes)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_27 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h6b348b61aefb721cE"(i8* align 1 %_28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc212 to %"core::panic::location::Location"*))
  br label %bb15

bb15:                                             ; preds = %bb14
  %z = load i8, i8* %_27, align 1
  %_32 = and i8 %y, 63
  %_31 = zext i8 %_32 to i32
  %y_z = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h770410742ab10aa7E(i32 %_31, i8 %z)
  br label %bb16

bb16:                                             ; preds = %bb15
  %_35 = shl i32 %init, 12
  %17 = or i32 %_35, %y_z
  store i32 %17, i32* %ch, align 4
  %_38 = icmp uge i8 %x, -16
  br i1 %_38, label %bb17, label %bb21

bb21:                                             ; preds = %bb20, %bb16
  br label %bb22

bb17:                                             ; preds = %bb16
  %_42 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hedafd80b3b869c29E"({ i8*, i8* }* align 8 %bytes)
  br label %bb18

bb18:                                             ; preds = %bb17
  %_41 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h6b348b61aefb721cE"(i8* align 1 %_42, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc214 to %"core::panic::location::Location"*))
  br label %bb19

bb19:                                             ; preds = %bb18
  %w = load i8, i8* %_41, align 1
  %_45 = and i32 %init, 7
  %_44 = shl i32 %_45, 18
  %_47 = call i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h770410742ab10aa7E(i32 %y_z, i8 %w)
  br label %bb20

bb20:                                             ; preds = %bb19
  %18 = or i32 %_44, %_47
  store i32 %18, i32* %ch, align 4
  br label %bb21
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3str11validations15utf8_first_byte17hb1d753cd5ad59f03E(i8 %byte, i32 %width) unnamed_addr #0 {
start:
  %0 = trunc i32 %width to i8
  %1 = and i8 %0, 7
  %_5 = lshr i8 127, %1
  %_3 = and i8 %byte, %_5
  %2 = zext i8 %_3 to i32
  ret i32 %2
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3str11validations18utf8_acc_cont_byte17h770410742ab10aa7E(i32 %ch, i8 %byte) unnamed_addr #0 {
start:
  %_3 = shl i32 %ch, 6
  %_6 = and i8 %byte, 63
  %_5 = zext i8 %_6 to i32
  %0 = or i32 %_3, %_5
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17he4661511f7242233E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !3, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  %_3.0 = extractvalue { [0 x i8]*, i64 } %8, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %_3.1
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h0e347917f5f29facE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = alloca { i8*, i8* }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !1, !align !3, !noundef !1
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h0714331fb38996e8E"([0 x i8]* align 1 %_4.0, i64 %_4.1)
  %_2.0 = extractvalue { i8*, i8* } %10, 0
  %_2.1 = extractvalue { i8*, i8* } %10, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  store i8* %_2.0, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  store i8* %_2.1, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !nonnull !1, !noundef !1
  %15 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = insertvalue { i8*, i8* } undef, i8* %14, 0
  %18 = insertvalue { i8*, i8* } %17, i8* %16, 1
  ret { i8*, i8* } %18
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts23from_utf8_unchecked_mut17hc1b0bb0c2e154230E([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %v.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %v.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char18from_u32_unchecked17hf704d3b8bd429519E(i32 %i) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char7convert18from_u32_unchecked17hee7db6a7ae38093aE(i32 %i), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core4char7convert18from_u32_unchecked17hee7db6a7ae38093aE(i32 %i) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  store i32 %i, i32* %0, align 4
  %1 = load i32, i32* %0, align 4, !range !6, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core4char7methods15encode_utf8_raw17ha799dfdf9bad87e2E(i32 %0, [0 x i8]* align 1 %dst.0, i64 %dst.1) unnamed_addr #0 {
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
  %1 = call i64 @_ZN4core4char7methods8len_utf817h07d2e5cdce7a9d31E(i32 %_5)
  store i64 %1, i64* %len, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = load i64, i64* %len, align 8
  %2 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hbf04a58cc182d7efE"([0 x i8]* align 1 %dst.0, i64 %dst.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc216 to %"core::panic::location::Location"*))
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
  %9 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h92730bf8d9d81482E(i64* align 8 %len)
  %_77.0 = extractvalue { i8*, i64* } %9, 0
  %_77.1 = extractvalue { i8*, i64* } %9, 1
  br label %bb12

bb3:                                              ; preds = %bb2
  %10 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 0
  %_94.0 = load [0 x i8]*, [0 x i8]** %11, align 8, !nonnull !1, !align !3, !noundef !1
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 1
  %_94.1 = load i64, i64* %12, align 8
  %_14 = icmp uge i64 %_94.1, 1
  br i1 %_14, label %bb8, label %bb4

bb5:                                              ; preds = %bb2
  %13 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 0
  %_95.0 = load [0 x i8]*, [0 x i8]** %14, align 8, !nonnull !1, !align !3, !noundef !1
  %15 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 1
  %_95.1 = load i64, i64* %15, align 8
  %_17 = icmp uge i64 %_95.1, 2
  br i1 %_17, label %bb9, label %bb4

bb6:                                              ; preds = %bb2
  %16 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %17 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %16, i32 0, i32 0
  %_96.0 = load [0 x i8]*, [0 x i8]** %17, align 8, !nonnull !1, !align !3, !noundef !1
  %18 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %16, i32 0, i32 1
  %_96.1 = load i64, i64* %18, align 8
  %_20 = icmp uge i64 %_96.1, 3
  br i1 %_20, label %bb10, label %bb4

bb7:                                              ; preds = %bb2
  %19 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %20 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %19, i32 0, i32 0
  %_97.0 = load [0 x i8]*, [0 x i8]** %20, align 8, !nonnull !1, !align !3, !noundef !1
  %21 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %19, i32 0, i32 1
  %_97.1 = load i64, i64* %21, align 8
  %_23 = icmp uge i64 %_97.1, 4
  br i1 %_23, label %bb11, label %bb4

bb11:                                             ; preds = %bb7
  %22 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %22, i32 0, i32 0
  %_104.0 = load [0 x i8]*, [0 x i8]** %23, align 8, !nonnull !1, !align !3, !noundef !1
  %24 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %22, i32 0, i32 1
  %_104.1 = load i64, i64* %24, align 8
  %a = getelementptr inbounds [0 x i8], [0 x i8]* %_104.0, i64 0, i64 0
  %25 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %26 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %25, i32 0, i32 0
  %_105.0 = load [0 x i8]*, [0 x i8]** %26, align 8, !nonnull !1, !align !3, !noundef !1
  %27 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %25, i32 0, i32 1
  %_105.1 = load i64, i64* %27, align 8
  %b = getelementptr inbounds [0 x i8], [0 x i8]* %_105.0, i64 0, i64 1
  %28 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %29 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 0
  %_106.0 = load [0 x i8]*, [0 x i8]** %29, align 8, !nonnull !1, !align !3, !noundef !1
  %30 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %28, i32 0, i32 1
  %_106.1 = load i64, i64* %30, align 8
  %c = getelementptr inbounds [0 x i8], [0 x i8]* %_106.0, i64 0, i64 2
  %31 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %32 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %31, i32 0, i32 0
  %_107.0 = load [0 x i8]*, [0 x i8]** %32, align 8, !nonnull !1, !align !3, !noundef !1
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
  %39 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h3777f6533acfc94cE"([0 x i8]* align 1 %dst.0, i64 %dst.1, i64 %38, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc218 to %"core::panic::location::Location"*))
  %_89.0 = extractvalue { [0 x i8]*, i64 } %39, 0
  %_89.1 = extractvalue { [0 x i8]*, i64 } %39, 1
  br label %bb17

bb10:                                             ; preds = %bb6
  %40 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %41 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 0
  %_101.0 = load [0 x i8]*, [0 x i8]** %41, align 8, !nonnull !1, !align !3, !noundef !1
  %42 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 1
  %_101.1 = load i64, i64* %42, align 8
  %a1 = getelementptr inbounds [0 x i8], [0 x i8]* %_101.0, i64 0, i64 0
  %43 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %44 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 0
  %_102.0 = load [0 x i8]*, [0 x i8]** %44, align 8, !nonnull !1, !align !3, !noundef !1
  %45 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 1
  %_102.1 = load i64, i64* %45, align 8
  %b2 = getelementptr inbounds [0 x i8], [0 x i8]* %_102.0, i64 0, i64 1
  %46 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %47 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %46, i32 0, i32 0
  %_103.0 = load [0 x i8]*, [0 x i8]** %47, align 8, !nonnull !1, !align !3, !noundef !1
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
  %_99.0 = load [0 x i8]*, [0 x i8]** %53, align 8, !nonnull !1, !align !3, !noundef !1
  %54 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %52, i32 0, i32 1
  %_99.1 = load i64, i64* %54, align 8
  %a4 = getelementptr inbounds [0 x i8], [0 x i8]* %_99.0, i64 0, i64 0
  %55 = getelementptr inbounds { i64, { [0 x i8]*, i64 } }, { i64, { [0 x i8]*, i64 } }* %_6, i32 0, i32 1
  %56 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %55, i32 0, i32 0
  %_100.0 = load [0 x i8]*, [0 x i8]** %56, align 8, !nonnull !1, !align !3, !noundef !1
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
  %_98.0 = load [0 x i8]*, [0 x i8]** %61, align 8, !nonnull !1, !align !3, !noundef !1
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
  %66 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17he7eeab6ecc5730ceE(i32* align 4 %code)
  %_80.0 = extractvalue { i8*, i64* } %66, 0
  %_80.1 = extractvalue { i8*, i64* } %66, 1
  br label %bb13

bb13:                                             ; preds = %bb12
  store i64 %dst.1, i64* %_86, align 8
  %67 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h92730bf8d9d81482E(i64* align 8 %_86)
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
  call void @_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_69, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc11 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_73.0, i64 3)
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_69, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc220 to %"core::panic::location::Location"*)) #9
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h514bfbfd66a495c6E"(i32 %self, [0 x i8]* align 1 %dst.0, i64 %dst.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core4char7methods15encode_utf8_raw17ha799dfdf9bad87e2E(i32 %self, [0 x i8]* align 1 %dst.0, i64 %dst.1)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts23from_utf8_unchecked_mut17hc1b0bb0c2e154230E([0 x i8]* align 1 %_7.0, i64 %_7.1)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_5.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_5.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8len_utf817ha0bccbb842460a84E"(i32 %self) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core4char7methods8len_utf817h07d2e5cdce7a9d31E(i32 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4char7methods8len_utf817h07d2e5cdce7a9d31E(i32 %code) unnamed_addr #0 {
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
define internal void @_ZN4core4hint21unreachable_unchecked17h0ea2f1de0f05f4cdE() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator9enumerate17h445afb3ceae7a9fdE(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>") %0, i64* %self.0, i64* %self.1) unnamed_addr #0 {
start:
  call void @"_ZN4core4iter8adapters9enumerate18Enumerate$LT$I$GT$3new17h7a5d57759127e224E"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>") %0, i64* %self.0, i64* %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters9enumerate18Enumerate$LT$I$GT$3new17h7a5d57759127e224E"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>") %0, i64* %iter.0, i64* %iter.1) unnamed_addr #1 {
start:
  %1 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %0 to { i64*, i64* }*
  %2 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %1, i32 0, i32 0
  store i64* %iter.0, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %1, i32 0, i32 1
  store i64* %iter.1, i64** %3, align 8
  %4 = getelementptr inbounds %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>", %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %0, i32 0, i32 1
  store i64 0, i64* %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h24eeb69eb935bc94E"([8 x i8]* align 1 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4.0 = bitcast [8 x i8]* %self to [0 x i8]*
  %1 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h4263df9024588978E"([0 x i8]* align 1 %_4.0, i64 8, i64 %index, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6b6a328baab5eb7aE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %0 = call align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h9b768b9c020214f3E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h0714331fb38996e8E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h8a5b7b4c0932d227E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17heaefd2e5e3bdc1e3E"([0 x { [0 x i8]*, i64 }]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h5ba98a75715ad73cE"([0 x { [0 x i8]*, i64 }]* align 8 %self.0, i64 %self.1)
  %1 = extractvalue { i64*, i64* } %0, 0
  %2 = extractvalue { i64*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64*, i64* } undef, i64* %1, 0
  %4 = insertvalue { i64*, i64* } %3, i64* %2, 1
  ret { i64*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h35cb58bcc6bb1581E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 }* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h564a1b8e95177523E"([0 x { [0 x i8]*, i64 }]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x { [0 x i8]*, i64 }]* %self.0 to { [0 x i8]*, i64 }*
  ret { [0 x i8]*, i64 }* %0
}

; Function Attrs: uwtable
define zeroext i1 @_ZN4core5slice3cmp14SlicePartialEq9not_equal17h548d91ad0a007ee6E([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %_3 = call zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h362e7970e28beb83E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_3, true
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2ne17h2e3d1e85d5c833ddE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = call zeroext i1 @_ZN4core5slice3cmp14SlicePartialEq9not_equal17h548d91ad0a007ee6E([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h5ba98a75715ad73cE"([0 x { [0 x i8]*, i64 }]* align 8 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }*, align 8
  %1 = alloca i8*, align 8
  %end = alloca { [0 x i8]*, i64 }*, align 8
  %2 = alloca { i64*, i64* }, align 8
  %ptr = call { [0 x i8]*, i64 }* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h564a1b8e95177523E"([0 x { [0 x i8]*, i64 }]* align 8 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h22a29c5bc9f5b83fE"({ [0 x i8]*, i64 }* %ptr)
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
  %_11 = bitcast { [0 x i8]*, i64 }* %ptr to i8*
  %4 = getelementptr i8, i8* %_11, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %ptr, i64 %slice.1
  store { [0 x i8]*, i64 }* %6, { [0 x i8]*, i64 }** %0, align 8
  %7 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %0, align 8
  store { [0 x i8]*, i64 }* %7, { [0 x i8]*, i64 }** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1cef1f5dfde023f7E"({ [0 x i8]*, i64 }* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  %8 = bitcast i8* %5 to { [0 x i8]*, i64 }*
  store { [0 x i8]*, i64 }* %8, { [0 x i8]*, i64 }** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %end, align 8
  %9 = bitcast { i64*, i64* }* %2 to i64**
  store i64* %_18, i64** %9, align 8
  %10 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 1
  %11 = bitcast i64** %10 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %_21, { [0 x i8]*, i64 }** %11, align 8
  %12 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8, !nonnull !1, !noundef !1
  %14 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = insertvalue { i64*, i64* } undef, i64* %13, 0
  %17 = insertvalue { i64*, i64* } %16, i64* %15, 1
  ret { i64*, i64* } %17
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h8a5b7b4c0932d227E"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h35cb58bcc6bb1581E"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h0d4651d11ed0af29E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 1, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %4 = getelementptr i8, i8* %ptr, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds i8, i8* %ptr, i64 %slice.1
  store i8* %6, i8** %0, align 8
  %7 = load i8*, i8** %0, align 8
  store i8* %7, i8** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h80858f9f965d89a7E"(i8* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  store i8* %5, i8** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load i8*, i8** %end, align 8
  %8 = bitcast { i8*, i8* }* %2 to i8**
  store i8* %_18, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  store i8* %_21, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !nonnull !1, !noundef !1
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = insertvalue { i8*, i8* } undef, i8* %11, 0
  %15 = insertvalue { i8*, i8* } %14, i8* %13, 1
  ret { i8*, i8* } %15
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h4263df9024588978E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h9e1a7b56148a25beE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h3777f6533acfc94cE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2b9daf1133f40c43E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hbf04a58cc182d7efE"([0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2d79d50c0aa05ca6E"([0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h6b348b61aefb721cE"(i8* align 1 %0, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %3 = bitcast i8** %self to {}**
  %4 = load {}*, {}** %3, align 8
  %5 = icmp eq {}* %4, null
  %_2 = select i1 %5, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h0ea2f1de0f05f4cdE() #9
          to label %unreachable unwind label %cleanup

bb3:                                              ; preds = %start
  %val = load i8*, i8** %self, align 8, !nonnull !1, !align !3, !noundef !1
  ret i8* %val

bb7:                                              ; preds = %cleanup
  %6 = bitcast i8** %self to {}**
  %7 = load {}*, {}** %6, align 8
  %8 = icmp eq {}* %7, null
  %_5 = select i1 %8, i64 0, i64 1
  %9 = icmp eq i64 %_5, 1
  br i1 %9, label %bb5, label %bb4

cleanup:                                          ; preds = %bb1
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb7

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb7
  br i1 true, label %bb6, label %bb4

bb4:                                              ; preds = %bb6, %bb5, %bb7
  %15 = bitcast { i8*, i32 }* %2 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb6:                                              ; preds = %bb5
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN4core6option15Option$LT$T$GT$3map17h76d8c581d9c9d8fdE"(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %_9 = alloca i8, align 1
  %_7 = alloca i32, align 4
  %2 = alloca i32, align 4
  %self = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %4, align 4
  store i8 1, i8* %_9, align 1
  %5 = bitcast { i32, i32 }* %self to i32*
  %6 = load i32, i32* %5, align 4, !range !5, !noundef !1
  %_3 = zext i32 %6 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %7 = bitcast i32* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  store i32 1114112, i32* %2, align 4
  br label %bb7

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %x = load i32, i32* %8, align 4
  store i8 0, i8* %_9, align 1
  store i32 %x, i32* %_7, align 4
  %9 = load i32, i32* %_7, align 4
  %_5 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h6d3da1532f8d7ee1E"(i32 %9), !range !6
  br label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_5, i32* %2, align 4
  br label %bb7

bb7:                                              ; preds = %bb4, %bb1
  %10 = load i8, i8* %_9, align 1, !range !4, !noundef !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %12 = load i32, i32* %2, align 4, !range !7, !noundef !1
  ret i32 %12

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hd22fe25a87dfc971E"(i8* align 1 %0, i8* align 1 %default) unnamed_addr #0 {
start:
  %_5 = alloca i8, align 1
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  store i8 1, i8* %_5, align 1
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
  store i8 0, i8* %_5, align 1
  store i8* %default, i8** %1, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %x = load i8*, i8** %self, align 8, !nonnull !1, !align !3, !noundef !1
  store i8* %x, i8** %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %5 = load i8, i8* %_5, align 1, !range !4, !noundef !1
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %7 = load i8*, i8** %1, align 8, !nonnull !1, !align !3, !noundef !1
  ret i8* %7

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h044fe84f65e7f727E"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>") %0, %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %0 to i8*
  %2 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h362e7970e28beb83E"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %_3 = icmp ne i64 %self.1, %other.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %size = call i64 @_ZN4core3mem11size_of_val17ha49823657a587c49E([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6, %bb1
  %1 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %2 = trunc i8 %1 to i1
  ret i1 %2

bb3:                                              ; preds = %bb2
  %_12 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h35cb58bcc6bb1581E"([0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_15 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h35cb58bcc6bb1581E"([0 x i8]* align 1 %other.0, i64 %other.1)
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
define align 8 i64* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h082944aed11d796dE"(i64* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca i64*, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  %2 = bitcast i64** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %5 = bitcast i64** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 8, i1 false)
  %6 = bitcast i64** %1 to {}**
  store {}* null, {}** %6, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %7 = bitcast i64** %self to { [0 x i8]*, i64 }**
  %v = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %7, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = bitcast i64** %1 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %v, { [0 x i8]*, i64 }** %8, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %9 = load i64*, i64** %1, align 8, !align !2
  ret i64* %9
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf1c61904591857b1E"(i8* align 1 %0) unnamed_addr #0 {
start:
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %5 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 8, i1 false)
  %6 = bitcast i8** %1 to {}**
  store {}* null, {}** %6, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !1, !align !3, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %7 = load i8*, i8** %1, align 8, !align !3
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h3b2ff9222cb981dfE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_4 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h23f934c6bc3449faE"([0 x i8]* %slice.0, i64 %slice.1)
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
define align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h9b768b9c020214f3E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
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
  %_9 = call i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h3b2ff9222cb981dfE"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  store i8* %_9, i8** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %3 = load i8*, i8** %0, align 8, !align !3
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec054726790c0174E"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i32, i32 } @_ZN4core3str11validations15next_code_point17he42c740421b13363E({ i8*, i8* }* align 8 %self)
  %_2.0 = extractvalue { i32, i32 } %0, 0
  %_2.1 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i32 @"_ZN4core6option15Option$LT$T$GT$3map17h76d8c581d9c9d8fdE"(i32 %_2.0, i32 %_2.1), !range !7
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h6d3da1532f8d7ee1E"(i32 %ch) unnamed_addr #0 {
start:
  %0 = call i32 @_ZN4core4char18from_u32_unchecked17hf704d3b8bd429519E(i32 %ch), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h53a9062b8c4bc9d7E"() unnamed_addr #0 {
start:
  %0 = alloca { i32, i32 }, align 4
  %1 = bitcast { i32, i32 }* %0 to i32*
  store i32 0, i32* %1, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %3 = load i32, i32* %2, align 4, !range !5, !noundef !1
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = insertvalue { i32, i32 } undef, i32 %3, 0
  %7 = insertvalue { i32, i32 } %6, i32 %5, 1
  ret { i32, i32 } %7
}

; Function Attrs: inlinehint uwtable
define { i64, i64* } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h73fb1142f6223fddE"() unnamed_addr #0 {
start:
  %0 = alloca { i64, i64* }, align 8
  %1 = bitcast { i64, i64* }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  %3 = bitcast i64** %2 to {}**
  store {}* null, {}** %3, align 8
  %4 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8, !align !2
  %8 = insertvalue { i64, i64* } undef, i64 %5, 0
  %9 = insertvalue { i64, i64* } %8, i64* %7, 1
  ret { i64, i64* } %9
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h57370537aaed1807E"({ i64*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }*, align 8
  %1 = alloca { [0 x i8]*, i64 }*, align 8
  %2 = alloca i64*, align 8
  %3 = bitcast { i64*, i64* }* %self to i64**
  %_6 = load i64*, i64** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call { [0 x i8]*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h745eb3521346bef0E"(i64* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hccf9b60e31363d27E"({ [0 x i8]*, i64 }* %_5)
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
  %6 = bitcast i64** %5 to { [0 x i8]*, i64 }**
  %_11 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %6, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h22a29c5bc9f5b83fE"({ [0 x i8]*, i64 }* %_11)
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
  %_14 = call { [0 x i8]*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h745eb3521346bef0E"(i64* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %9 = bitcast i64** %8 to { [0 x i8]*, i64 }**
  %_16 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %9, align 8
  %_12 = icmp eq { [0 x i8]*, i64 }* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %10 = bitcast { i64*, i64* }* %self to i64**
  %_12.i = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %old.i = call { [0 x i8]*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h745eb3521346bef0E"(i64* %_12.i)
  %11 = bitcast { i64*, i64* }* %self to i64**
  %_16.i = load i64*, i64** %11, align 8, !nonnull !1, !noundef !1
  %_15.i = call { [0 x i8]*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h745eb3521346bef0E"(i64* %_16.i)
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_15.i, i64 1
  store { [0 x i8]*, i64 }* %12, { [0 x i8]*, i64 }** %0, align 8
  %_3.i.i = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %0, align 8
  %_13.i = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1cef1f5dfde023f7E"({ [0 x i8]*, i64 }* %_3.i.i)
  %13 = bitcast { i64*, i64* }* %self to i64**
  store i64* %_13.i, i64** %13, align 8
  store { [0 x i8]*, i64 }* %old.i, { [0 x i8]*, i64 }** %1, align 8
  %14 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %15 = bitcast i64** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = bitcast i64** %2 to {}**
  store {}* null, {}** %16, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %17 = load i64*, i64** %2, align 8, !align !2
  ret i64* %17

bb13:                                             ; preds = %bb12
  %18 = bitcast i64** %2 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %14, { [0 x i8]*, i64 }** %18, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hedafd80b3b869c29E"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0c027fb8443c4a79E"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h1f5685ce4bebea37E"(i8* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 1, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_11 = load i8*, i8** %5, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h0d4651d11ed0af29E"(i8* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %6 = bitcast { i8*, i8* }* %self to i8**
  %_15 = load i8*, i8** %6, align 8, !nonnull !1, !noundef !1
  %_14 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0c027fb8443c4a79E"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_16 = load i8*, i8** %7, align 8
  %_12 = icmp eq i8* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
  %old.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0c027fb8443c4a79E"(i8* %_12.i)
  %9 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %9, align 8, !nonnull !1, !noundef !1
  %_15.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0c027fb8443c4a79E"(i8* %_16.i)
  %10 = getelementptr inbounds i8, i8* %_15.i, i64 1
  store i8* %10, i8** %0, align 8
  %_3.i.i = load i8*, i8** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h80858f9f965d89a7E"(i8* %_3.i.i)
  %11 = bitcast { i8*, i8* }* %self to i8**
  store i8* %_13.i, i8** %11, align 8
  store i8* %old.i, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %13 = bitcast i8** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = bitcast i8** %2 to {}**
  store {}* null, {}** %14, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %15 = load i8*, i8** %2, align 8, !align !3
  ret i8* %15

bb13:                                             ; preds = %bb12
  store i8* %12, i8** %2, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2d79d50c0aa05ca6E"([0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %slice.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %slice.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: uwtable
define i64 @u8next_([0 x i8]* align 1 %txt.0, i64 %txt.1, i32* align 4 %ch) unnamed_addr #1 {
start:
  %_5 = alloca i32, align 4
  %chars = alloca { i8*, i8* }, align 8
  %0 = alloca i64, align 8
  %1 = call { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h0e347917f5f29facE"([0 x i8]* align 1 %txt.0, i64 %txt.1)
  store { i8*, i8* } %1, { i8*, i8* }* %chars, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec054726790c0174E"({ i8*, i8* }* align 8 %chars), !range !7
  store i32 %2, i32* %_5, align 4
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = load i32, i32* %_5, align 4, !range !7, !noundef !1
  %4 = sub i32 %3, 1114112
  %5 = icmp eq i32 %4, 0
  %_7 = select i1 %5, i64 0, i64 1
  %6 = icmp eq i64 %_7, 1
  br i1 %6, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  %c = load i32, i32* %_5, align 4, !range !6, !noundef !1
  store i32 %c, i32* %ch, align 4
  %7 = call i64 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8len_utf817ha0bccbb842460a84E"(i32 %c)
  store i64 %7, i64* %0, align 8
  br label %bb5

bb4:                                              ; preds = %bb2
  store i64 0, i64* %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %8 = load i64, i64* %0, align 8
  ret i64 %8
}

; Function Attrs: uwtable
define i64 @u8encode_(i32 %ch, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h514bfbfd66a495c6E"(i32 %ch, [0 x i8]* align 1 %s.0, i64 %s.1)
  %encoded.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %encoded.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17he4661511f7242233E"([0 x i8]* align 1 %encoded.0, i64 %encoded.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %_250 = alloca %"core::fmt::Arguments", align 8
  %_245 = alloca { [0 x i8]*, i64 }, align 8
  %_241 = alloca [1 x { i8*, i64* }], align 8
  %_234 = alloca %"core::fmt::Arguments", align 8
  %_218 = alloca i8*, align 8
  %_209 = alloca i8*, align 8
  %_200 = alloca i8*, align 8
  %_191 = alloca i8*, align 8
  %_183 = alloca i8*, align 8
  %_175 = alloca i8*, align 8
  %_167 = alloca i8*, align 8
  %_159 = alloca i8*, align 8
  %_152 = alloca [9 x { i8*, i64* }], align 8
  %_145 = alloca %"core::fmt::Arguments", align 8
  %_136 = alloca %"core::fmt::Arguments", align 8
  %_131 = alloca { [0 x i8]*, i64 }, align 8
  %_127 = alloca [1 x { i8*, i64* }], align 8
  %_120 = alloca %"core::fmt::Arguments", align 8
  %_117 = alloca i64, align 8
  %_114 = alloca { [0 x i8]*, i64 }, align 8
  %_111 = alloca i64, align 8
  %_108 = alloca { [0 x i8]*, i64 }, align 8
  %_97 = alloca [2 x { i8*, i64* }], align 8
  %_90 = alloca %"core::fmt::Arguments", align 8
  %_85 = alloca { [0 x i8]*, i64 }, align 8
  %_81 = alloca [1 x { i8*, i64* }], align 8
  %_74 = alloca %"core::fmt::Arguments", align 8
  %l2 = alloca i64, align 8
  %buf = alloca [8 x i8], align 1
  %_58 = alloca i64, align 8
  %_54 = alloca [2 x { i8*, i64* }], align 8
  %_47 = alloca %"core::fmt::Arguments", align 8
  %_42 = alloca { [0 x i8]*, i64 }, align 8
  %_38 = alloca [1 x { i8*, i64* }], align 8
  %_31 = alloca %"core::fmt::Arguments", align 8
  %l = alloca i64, align 8
  %c = alloca i32, align 4
  %_14 = alloca { i64, i64* }, align 8
  %iter = alloca %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>", align 8
  %_9 = alloca %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>", align 8
  %_8 = alloca %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>", align 8
  %s = alloca [4 x { [0 x i8]*, i64 }], align 8
  %1 = getelementptr inbounds [4 x { [0 x i8]*, i64 }], [4 x { [0 x i8]*, i64 }]* %s, i64 0, i64 0
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc224 to [0 x i8]*), [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 2, i64* %3, align 8
  %4 = getelementptr inbounds [4 x { [0 x i8]*, i64 }], [4 x { [0 x i8]*, i64 }]* %s, i64 0, i64 1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [3 x i8] }>* @alloc221 to [0 x i8]*), [0 x i8]** %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 1
  store i64 3, i64* %6, align 8
  %7 = getelementptr inbounds [4 x { [0 x i8]*, i64 }], [4 x { [0 x i8]*, i64 }]* %s, i64 0, i64 2
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %7, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [6 x i8] }>* @alloc222 to [0 x i8]*), [0 x i8]** %8, align 8
  %9 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %7, i32 0, i32 1
  store i64 6, i64* %9, align 8
  %10 = getelementptr inbounds [4 x { [0 x i8]*, i64 }], [4 x { [0 x i8]*, i64 }]* %s, i64 0, i64 3
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [8 x i8] }>* @alloc223 to [0 x i8]*), [0 x i8]** %11, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 1
  store i64 8, i64* %12, align 8
  %_11.0 = bitcast [4 x { [0 x i8]*, i64 }]* %s to [0 x { [0 x i8]*, i64 }]*
  %13 = call { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17heaefd2e5e3bdc1e3E"([0 x { [0 x i8]*, i64 }]* align 8 %_11.0, i64 4)
  %_10.0 = extractvalue { i64*, i64* } %13, 0
  %_10.1 = extractvalue { i64*, i64* } %13, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core4iter6traits8iterator8Iterator9enumerate17h445afb3ceae7a9fdE(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>") %_9, i64* %_10.0, i64* %_10.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h044fe84f65e7f727E"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>") %_8, %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %_9)
  br label %bb3

bb3:                                              ; preds = %bb2
  %14 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %iter to i8*
  %15 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* %_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb85, %bb83, %bb3
  %16 = call { i64, i64* } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h753490004b694c2eE"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<&str>>"* align 8 %iter)
  store { i64, i64* } %16, { i64, i64* }* %_14, align 8
  br label %bb5

bb5:                                              ; preds = %bb4
  %17 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_14, i32 0, i32 1
  %18 = bitcast i64** %17 to {}**
  %19 = load {}*, {}** %18, align 8
  %20 = icmp eq {}* %19, null
  %_17 = select i1 %20, i64 0, i64 1
  switch i64 %_17, label %bb7 [
    i64 0, label %bb8
    i64 1, label %bb6
  ]

bb7:                                              ; preds = %bb5
  unreachable

bb8:                                              ; preds = %bb5
  ret void

bb6:                                              ; preds = %bb5
  %21 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_14, i32 0, i32 1
  %22 = bitcast i64** %21 to { [0 x i8]*, i64 }**
  %_277 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %22, align 8, !nonnull !1, !align !2, !noundef !1
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_277, i32 0, i32 0
  %s1.0 = load [0 x i8]*, [0 x i8]** %23, align 8, !nonnull !1, !align !3, !noundef !1
  %24 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_277, i32 0, i32 1
  %s1.1 = load i64, i64* %24, align 8
  %25 = bitcast { i64, i64* }* %_14 to i64*
  %k = load i64, i64* %25, align 8
  store i32 0, i32* %c, align 4
  %26 = call i64 @u8next_([0 x i8]* align 1 %s1.0, i64 %s1.1, i32* align 4 %c)
  store i64 %26, i64* %l, align 8
  br label %bb9

bb9:                                              ; preds = %bb6
  %_26 = load i64, i64* %l, align 8
  %27 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %k, i64 1)
  %_29.0 = extractvalue { i64, i1 } %27, 0
  %_29.1 = extractvalue { i64, i1 } %27, 1
  %28 = call i1 @llvm.expect.i1(i1 %_29.1, i1 false)
  br i1 %28, label %panic, label %bb10

bb10:                                             ; preds = %bb9
  %e_ = icmp ne i64 %_26, %_29.0
  br i1 %e_, label %bb11, label %bb12

panic:                                            ; preds = %bb9
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc226 to %"core::panic::location::Location"*)) #9
  unreachable

bb12:                                             ; preds = %bb10
  %29 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_42, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [4 x i8] }>* @alloc242 to [0 x i8]*), [0 x i8]** %29, align 8
  %30 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_42, i32 0, i32 1
  store i64 4, i64* %30, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %31 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_42, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [4 x i8] }>* @alloc241 to [0 x i8]*), [0 x i8]** %31, align 8
  %32 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_42, i32 0, i32 1
  store i64 4, i64* %32, align 8
  br label %bb13

bb13:                                             ; preds = %bb11, %bb12
  %33 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h9ee7c3182eff4600E({ [0 x i8]*, i64 }* align 8 %_42)
  %_39.0 = extractvalue { i8*, i64* } %33, 0
  %_39.1 = extractvalue { i8*, i64* } %33, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  %34 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_38, i64 0, i64 0
  %35 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %34, i32 0, i32 0
  store i8* %_39.0, i8** %35, align 8
  %36 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %34, i32 0, i32 1
  store i64* %_39.1, i64** %36, align 8
  %_35.0 = bitcast [1 x { i8*, i64* }]* %_38 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_31, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc34 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_35.0, i64 1)
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_31)
  br label %bb16

bb16:                                             ; preds = %bb15
  br i1 %e_, label %bb17, label %bb22

bb22:                                             ; preds = %bb21, %bb16
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %37, i8 0, i64 8, i1 false)
  %_66 = load i32, i32* %c, align 4, !range !6, !noundef !1
  %_67.0 = bitcast [8 x i8]* %buf to [0 x i8]*
  %38 = call i64 @u8encode_(i32 %_66, [0 x i8]* align 1 %_67.0, i64 8)
  store i64 %38, i64* %l2, align 8
  br label %bb23

bb17:                                             ; preds = %bb16
  %39 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %k, i64 1)
  %_60.0 = extractvalue { i64, i1 } %39, 0
  %_60.1 = extractvalue { i64, i1 } %39, 1
  %40 = call i1 @llvm.expect.i1(i1 %_60.1, i1 false)
  br i1 %40, label %panic1, label %bb18

bb18:                                             ; preds = %bb17
  store i64 %_60.0, i64* %_58, align 8
  %41 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h92730bf8d9d81482E(i64* align 8 %_58)
  %_55.0 = extractvalue { i8*, i64* } %41, 0
  %_55.1 = extractvalue { i8*, i64* } %41, 1
  br label %bb19

panic1:                                           ; preds = %bb17
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc230 to %"core::panic::location::Location"*)) #9
  unreachable

bb19:                                             ; preds = %bb18
  %42 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h92730bf8d9d81482E(i64* align 8 %l)
  %_61.0 = extractvalue { i8*, i64* } %42, 0
  %_61.1 = extractvalue { i8*, i64* } %42, 1
  br label %bb20

bb20:                                             ; preds = %bb19
  %43 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_54, i64 0, i64 0
  %44 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %43, i32 0, i32 0
  store i8* %_55.0, i8** %44, align 8
  %45 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %43, i32 0, i32 1
  store i64* %_55.1, i64** %45, align 8
  %46 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_54, i64 0, i64 1
  %47 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %46, i32 0, i32 0
  store i8* %_61.0, i8** %47, align 8
  %48 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %46, i32 0, i32 1
  store i64* %_61.1, i64** %48, align 8
  %_51.0 = bitcast [2 x { i8*, i64* }]* %_54 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_47, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc42 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_51.0, i64 2)
  br label %bb21

bb21:                                             ; preds = %bb20
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_47)
  br label %bb22

bb23:                                             ; preds = %bb22
  %_71 = load i64, i64* %l, align 8
  %_72 = load i64, i64* %l2, align 8
  %e_2 = icmp ne i64 %_71, %_72
  br i1 %e_2, label %bb24, label %bb25

bb25:                                             ; preds = %bb23
  %49 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_85, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [4 x i8] }>* @alloc242 to [0 x i8]*), [0 x i8]** %49, align 8
  %50 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_85, i32 0, i32 1
  store i64 4, i64* %50, align 8
  br label %bb26

bb24:                                             ; preds = %bb23
  %51 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_85, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [4 x i8] }>* @alloc241 to [0 x i8]*), [0 x i8]** %51, align 8
  %52 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_85, i32 0, i32 1
  store i64 4, i64* %52, align 8
  br label %bb26

bb26:                                             ; preds = %bb24, %bb25
  %53 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h9ee7c3182eff4600E({ [0 x i8]*, i64 }* align 8 %_85)
  %_82.0 = extractvalue { i8*, i64* } %53, 0
  %_82.1 = extractvalue { i8*, i64* } %53, 1
  br label %bb27

bb27:                                             ; preds = %bb26
  %54 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_81, i64 0, i64 0
  %55 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %54, i32 0, i32 0
  store i8* %_82.0, i8** %55, align 8
  %56 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %54, i32 0, i32 1
  store i64* %_82.1, i64** %56, align 8
  %_78.0 = bitcast [1 x { i8*, i64* }]* %_81 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_74, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc47 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_78.0, i64 1)
  br label %bb28

bb28:                                             ; preds = %bb27
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_74)
  br label %bb29

bb29:                                             ; preds = %bb28
  br i1 %e_2, label %bb30, label %bb34

bb34:                                             ; preds = %bb33, %bb29
  %57 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %s1.0, [0 x i8]** %57, align 8
  %58 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %s1.1, i64* %58, align 8
  %59 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %60 = load [0 x i8]*, [0 x i8]** %59, align 8, !nonnull !1, !align !3, !noundef !1
  %61 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %60, 0
  %64 = insertvalue { [0 x i8]*, i64 } %63, i64 %62, 1
  %s1_bytes.0 = extractvalue { [0 x i8]*, i64 } %64, 0
  %s1_bytes.1 = extractvalue { [0 x i8]*, i64 } %64, 1
  br label %bb35

bb30:                                             ; preds = %bb29
  %65 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h92730bf8d9d81482E(i64* align 8 %l)
  %_98.0 = extractvalue { i8*, i64* } %65, 0
  %_98.1 = extractvalue { i8*, i64* } %65, 1
  br label %bb31

bb31:                                             ; preds = %bb30
  %66 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h92730bf8d9d81482E(i64* align 8 %l2)
  %_101.0 = extractvalue { i8*, i64* } %66, 0
  %_101.1 = extractvalue { i8*, i64* } %66, 1
  br label %bb32

bb32:                                             ; preds = %bb31
  %67 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_97, i64 0, i64 0
  %68 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %67, i32 0, i32 0
  store i8* %_98.0, i8** %68, align 8
  %69 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %67, i32 0, i32 1
  store i64* %_98.1, i64** %69, align 8
  %70 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_97, i64 0, i64 1
  %71 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %70, i32 0, i32 0
  store i8* %_101.0, i8** %71, align 8
  %72 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %70, i32 0, i32 1
  store i64* %_101.1, i64** %72, align 8
  %_94.0 = bitcast [2 x { i8*, i64* }]* %_97 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_90, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc55 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_94.0, i64 2)
  br label %bb33

bb33:                                             ; preds = %bb32
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_90)
  br label %bb34

bb35:                                             ; preds = %bb34
  %_112 = load i64, i64* %l, align 8
  store i64 %_112, i64* %_111, align 8
  %73 = load i64, i64* %_111, align 8
  %74 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h4263df9024588978E"([0 x i8]* align 1 %s1_bytes.0, i64 %s1_bytes.1, i64 %73, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc234 to %"core::panic::location::Location"*))
  %_109.0 = extractvalue { [0 x i8]*, i64 } %74, 0
  %_109.1 = extractvalue { [0 x i8]*, i64 } %74, 1
  br label %bb36

bb36:                                             ; preds = %bb35
  %75 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_108, i32 0, i32 0
  store [0 x i8]* %_109.0, [0 x i8]** %75, align 8
  %76 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_108, i32 0, i32 1
  store i64 %_109.1, i64* %76, align 8
  %_118 = load i64, i64* %l, align 8
  store i64 %_118, i64* %_117, align 8
  %77 = load i64, i64* %_117, align 8
  %78 = call { [0 x i8]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h24eeb69eb935bc94E"([8 x i8]* align 1 %buf, i64 %77, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc236 to %"core::panic::location::Location"*))
  %_115.0 = extractvalue { [0 x i8]*, i64 } %78, 0
  %_115.1 = extractvalue { [0 x i8]*, i64 } %78, 1
  br label %bb37

bb37:                                             ; preds = %bb36
  %79 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_114, i32 0, i32 0
  store [0 x i8]* %_115.0, [0 x i8]** %79, align 8
  %80 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_114, i32 0, i32 1
  store i64 %_115.1, i64* %80, align 8
  %e_3 = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h1b3afdf1b6437434E"({ [0 x i8]*, i64 }* align 8 %_108, { [0 x i8]*, i64 }* align 8 %_114)
  br label %bb38

bb38:                                             ; preds = %bb37
  br i1 %e_3, label %bb39, label %bb40

bb40:                                             ; preds = %bb38
  %81 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_131, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [4 x i8] }>* @alloc242 to [0 x i8]*), [0 x i8]** %81, align 8
  %82 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_131, i32 0, i32 1
  store i64 4, i64* %82, align 8
  br label %bb41

bb39:                                             ; preds = %bb38
  %83 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_131, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [4 x i8] }>* @alloc241 to [0 x i8]*), [0 x i8]** %83, align 8
  %84 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_131, i32 0, i32 1
  store i64 4, i64* %84, align 8
  br label %bb41

bb41:                                             ; preds = %bb39, %bb40
  %85 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h9ee7c3182eff4600E({ [0 x i8]*, i64 }* align 8 %_131)
  %_128.0 = extractvalue { i8*, i64* } %85, 0
  %_128.1 = extractvalue { i8*, i64* } %85, 1
  br label %bb42

bb42:                                             ; preds = %bb41
  %86 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_127, i64 0, i64 0
  %87 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %86, i32 0, i32 0
  store i8* %_128.0, i8** %87, align 8
  %88 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %86, i32 0, i32 1
  store i64* %_128.1, i64** %88, align 8
  %_124.0 = bitcast [1 x { i8*, i64* }]* %_127 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_120, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc62 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_124.0, i64 1)
  br label %bb43

bb43:                                             ; preds = %bb42
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_120)
  br label %bb44

bb44:                                             ; preds = %bb43
  br i1 %e_3, label %bb45, label %bb47

bb47:                                             ; preds = %bb46, %bb44
  br i1 %e_3, label %bb48, label %bb76

bb45:                                             ; preds = %bb44
  call void @_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_136, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc70 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc160 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb46

bb46:                                             ; preds = %bb45
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_136)
  br label %bb47

bb76:                                             ; preds = %bb75, %bb47
  %_230 = load i64, i64* %l, align 8
  %_232 = icmp ult i64 %_230, 8
  %89 = call i1 @llvm.expect.i1(i1 %_232, i1 true)
  br i1 %89, label %bb77, label %panic4

bb48:                                             ; preds = %bb47
  %90 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h92730bf8d9d81482E(i64* align 8 %l2)
  %_153.0 = extractvalue { i8*, i64* } %90, 0
  %_153.1 = extractvalue { i8*, i64* } %90, 1
  br label %bb49

bb49:                                             ; preds = %bb48
  %_160 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6b6a328baab5eb7aE"([0 x i8]* align 1 %s1_bytes.0, i64 %s1_bytes.1, i64 0)
  br label %bb50

bb50:                                             ; preds = %bb49
  %91 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hd22fe25a87dfc971E"(i8* align 1 %_160, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc100, i32 0, i32 0, i32 0))
  store i8* %91, i8** %_159, align 8
  br label %bb51

bb51:                                             ; preds = %bb50
  %92 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17ha35634fe6fa8dc64E(i8** align 8 %_159)
  %_156.0 = extractvalue { i8*, i64* } %92, 0
  %_156.1 = extractvalue { i8*, i64* } %92, 1
  br label %bb52

bb52:                                             ; preds = %bb51
  %_168 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6b6a328baab5eb7aE"([0 x i8]* align 1 %s1_bytes.0, i64 %s1_bytes.1, i64 1)
  br label %bb53

bb53:                                             ; preds = %bb52
  %93 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hd22fe25a87dfc971E"(i8* align 1 %_168, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc100, i32 0, i32 0, i32 0))
  store i8* %93, i8** %_167, align 8
  br label %bb54

bb54:                                             ; preds = %bb53
  %94 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17ha35634fe6fa8dc64E(i8** align 8 %_167)
  %_164.0 = extractvalue { i8*, i64* } %94, 0
  %_164.1 = extractvalue { i8*, i64* } %94, 1
  br label %bb55

bb55:                                             ; preds = %bb54
  %_176 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6b6a328baab5eb7aE"([0 x i8]* align 1 %s1_bytes.0, i64 %s1_bytes.1, i64 2)
  br label %bb56

bb56:                                             ; preds = %bb55
  %95 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hd22fe25a87dfc971E"(i8* align 1 %_176, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc100, i32 0, i32 0, i32 0))
  store i8* %95, i8** %_175, align 8
  br label %bb57

bb57:                                             ; preds = %bb56
  %96 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17ha35634fe6fa8dc64E(i8** align 8 %_175)
  %_172.0 = extractvalue { i8*, i64* } %96, 0
  %_172.1 = extractvalue { i8*, i64* } %96, 1
  br label %bb58

bb58:                                             ; preds = %bb57
  %_184 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6b6a328baab5eb7aE"([0 x i8]* align 1 %s1_bytes.0, i64 %s1_bytes.1, i64 3)
  br label %bb59

bb59:                                             ; preds = %bb58
  %97 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hd22fe25a87dfc971E"(i8* align 1 %_184, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc100, i32 0, i32 0, i32 0))
  store i8* %97, i8** %_183, align 8
  br label %bb60

bb60:                                             ; preds = %bb59
  %98 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17ha35634fe6fa8dc64E(i8** align 8 %_183)
  %_180.0 = extractvalue { i8*, i64* } %98, 0
  %_180.1 = extractvalue { i8*, i64* } %98, 1
  br label %bb61

bb61:                                             ; preds = %bb60
  %_193.0 = bitcast [8 x i8]* %buf to [0 x i8]*
  %_192 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6b6a328baab5eb7aE"([0 x i8]* align 1 %_193.0, i64 8, i64 0)
  br label %bb62

bb62:                                             ; preds = %bb61
  %99 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hd22fe25a87dfc971E"(i8* align 1 %_192, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc100, i32 0, i32 0, i32 0))
  store i8* %99, i8** %_191, align 8
  br label %bb63

bb63:                                             ; preds = %bb62
  %100 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17ha35634fe6fa8dc64E(i8** align 8 %_191)
  %_188.0 = extractvalue { i8*, i64* } %100, 0
  %_188.1 = extractvalue { i8*, i64* } %100, 1
  br label %bb64

bb64:                                             ; preds = %bb63
  %_202.0 = bitcast [8 x i8]* %buf to [0 x i8]*
  %_201 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6b6a328baab5eb7aE"([0 x i8]* align 1 %_202.0, i64 8, i64 1)
  br label %bb65

bb65:                                             ; preds = %bb64
  %101 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hd22fe25a87dfc971E"(i8* align 1 %_201, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc100, i32 0, i32 0, i32 0))
  store i8* %101, i8** %_200, align 8
  br label %bb66

bb66:                                             ; preds = %bb65
  %102 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17ha35634fe6fa8dc64E(i8** align 8 %_200)
  %_197.0 = extractvalue { i8*, i64* } %102, 0
  %_197.1 = extractvalue { i8*, i64* } %102, 1
  br label %bb67

bb67:                                             ; preds = %bb66
  %_211.0 = bitcast [8 x i8]* %buf to [0 x i8]*
  %_210 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6b6a328baab5eb7aE"([0 x i8]* align 1 %_211.0, i64 8, i64 2)
  br label %bb68

bb68:                                             ; preds = %bb67
  %103 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hd22fe25a87dfc971E"(i8* align 1 %_210, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc100, i32 0, i32 0, i32 0))
  store i8* %103, i8** %_209, align 8
  br label %bb69

bb69:                                             ; preds = %bb68
  %104 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17ha35634fe6fa8dc64E(i8** align 8 %_209)
  %_206.0 = extractvalue { i8*, i64* } %104, 0
  %_206.1 = extractvalue { i8*, i64* } %104, 1
  br label %bb70

bb70:                                             ; preds = %bb69
  %_220.0 = bitcast [8 x i8]* %buf to [0 x i8]*
  %_219 = call align 1 i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6b6a328baab5eb7aE"([0 x i8]* align 1 %_220.0, i64 8, i64 3)
  br label %bb71

bb71:                                             ; preds = %bb70
  %105 = call align 1 i8* @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hd22fe25a87dfc971E"(i8* align 1 %_219, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc100, i32 0, i32 0, i32 0))
  store i8* %105, i8** %_218, align 8
  br label %bb72

bb72:                                             ; preds = %bb71
  %106 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17ha35634fe6fa8dc64E(i8** align 8 %_218)
  %_215.0 = extractvalue { i8*, i64* } %106, 0
  %_215.1 = extractvalue { i8*, i64* } %106, 1
  br label %bb73

bb73:                                             ; preds = %bb72
  %107 = getelementptr inbounds [9 x { i8*, i64* }], [9 x { i8*, i64* }]* %_152, i64 0, i64 0
  %108 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %107, i32 0, i32 0
  store i8* %_153.0, i8** %108, align 8
  %109 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %107, i32 0, i32 1
  store i64* %_153.1, i64** %109, align 8
  %110 = getelementptr inbounds [9 x { i8*, i64* }], [9 x { i8*, i64* }]* %_152, i64 0, i64 1
  %111 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %110, i32 0, i32 0
  store i8* %_156.0, i8** %111, align 8
  %112 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %110, i32 0, i32 1
  store i64* %_156.1, i64** %112, align 8
  %113 = getelementptr inbounds [9 x { i8*, i64* }], [9 x { i8*, i64* }]* %_152, i64 0, i64 2
  %114 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %113, i32 0, i32 0
  store i8* %_164.0, i8** %114, align 8
  %115 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %113, i32 0, i32 1
  store i64* %_164.1, i64** %115, align 8
  %116 = getelementptr inbounds [9 x { i8*, i64* }], [9 x { i8*, i64* }]* %_152, i64 0, i64 3
  %117 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %116, i32 0, i32 0
  store i8* %_172.0, i8** %117, align 8
  %118 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %116, i32 0, i32 1
  store i64* %_172.1, i64** %118, align 8
  %119 = getelementptr inbounds [9 x { i8*, i64* }], [9 x { i8*, i64* }]* %_152, i64 0, i64 4
  %120 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %119, i32 0, i32 0
  store i8* %_180.0, i8** %120, align 8
  %121 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %119, i32 0, i32 1
  store i64* %_180.1, i64** %121, align 8
  %122 = getelementptr inbounds [9 x { i8*, i64* }], [9 x { i8*, i64* }]* %_152, i64 0, i64 5
  %123 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %122, i32 0, i32 0
  store i8* %_188.0, i8** %123, align 8
  %124 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %122, i32 0, i32 1
  store i64* %_188.1, i64** %124, align 8
  %125 = getelementptr inbounds [9 x { i8*, i64* }], [9 x { i8*, i64* }]* %_152, i64 0, i64 6
  %126 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %125, i32 0, i32 0
  store i8* %_197.0, i8** %126, align 8
  %127 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %125, i32 0, i32 1
  store i64* %_197.1, i64** %127, align 8
  %128 = getelementptr inbounds [9 x { i8*, i64* }], [9 x { i8*, i64* }]* %_152, i64 0, i64 7
  %129 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %128, i32 0, i32 0
  store i8* %_206.0, i8** %129, align 8
  %130 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %128, i32 0, i32 1
  store i64* %_206.1, i64** %130, align 8
  %131 = getelementptr inbounds [9 x { i8*, i64* }], [9 x { i8*, i64* }]* %_152, i64 0, i64 8
  %132 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %131, i32 0, i32 0
  store i8* %_215.0, i8** %132, align 8
  %133 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %131, i32 0, i32 1
  store i64* %_215.1, i64** %133, align 8
  %_149.0 = bitcast [9 x { i8*, i64* }]* %_152 to [0 x { i8*, i64* }]*
  br label %bb74

bb74:                                             ; preds = %bb73
  call void @_ZN4core3fmt9Arguments16new_v1_formatted17hd6e389847a5961a6E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_145, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc75 to [0 x { [0 x i8]*, i64 }]*), i64 10, [0 x { i8*, i64* }]* align 8 %_149.0, i64 9, [0 x %"core::fmt::rt::v1::Argument"]* align 8 bitcast (<{ [504 x i8] }>* @alloc147 to [0 x %"core::fmt::rt::v1::Argument"]*), i64 9)
  br label %bb75

bb75:                                             ; preds = %bb74
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_145)
  br label %bb76

bb77:                                             ; preds = %bb76
  %134 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 %_230
  %_229 = load i8, i8* %134, align 1
  %e_5 = icmp ne i8 %_229, 0
  br i1 %e_5, label %bb78, label %bb79

panic4:                                           ; preds = %bb76
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_230, i64 8, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc240 to %"core::panic::location::Location"*)) #9
  unreachable

bb79:                                             ; preds = %bb77
  %135 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_245, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [4 x i8] }>* @alloc242 to [0 x i8]*), [0 x i8]** %135, align 8
  %136 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_245, i32 0, i32 1
  store i64 4, i64* %136, align 8
  br label %bb80

bb78:                                             ; preds = %bb77
  %137 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_245, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [4 x i8] }>* @alloc241 to [0 x i8]*), [0 x i8]** %137, align 8
  %138 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_245, i32 0, i32 1
  store i64 4, i64* %138, align 8
  br label %bb80

bb80:                                             ; preds = %bb78, %bb79
  %139 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h9ee7c3182eff4600E({ [0 x i8]*, i64 }* align 8 %_245)
  %_242.0 = extractvalue { i8*, i64* } %139, 0
  %_242.1 = extractvalue { i8*, i64* } %139, 1
  br label %bb81

bb81:                                             ; preds = %bb80
  %140 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_241, i64 0, i64 0
  %141 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %140, i32 0, i32 0
  store i8* %_242.0, i8** %141, align 8
  %142 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %140, i32 0, i32 1
  store i64* %_242.1, i64** %142, align 8
  %_238.0 = bitcast [1 x { i8*, i64* }]* %_241 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_234, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc150 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_238.0, i64 1)
  br label %bb82

bb82:                                             ; preds = %bb81
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_234)
  br label %bb83

bb83:                                             ; preds = %bb82
  br i1 %e_5, label %bb84, label %bb4

bb84:                                             ; preds = %bb83
  call void @_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_250, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc158 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc160 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb85

bb85:                                             ; preds = %bb84
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_250)
  br label %bb4
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E(%"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17he8f5da6c6d93bce0E"(i8* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E(%"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h913c3b15faba26aaE"(i8* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h09e04b6c054ba3d0E"(i8* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: uwtable
declare i32 @memcmp(i8*, i8*, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 8}
!3 = !{i64 1}
!4 = !{i8 0, i8 2}
!5 = !{i32 0, i32 2}
!6 = !{i32 0, i32 1114112}
!7 = !{i32 0, i32 1114113}

^0 = module: (path: "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/main.rs.bc", hash: (1998711971, 381957150, 1877562221, 4086765947, 3043783208))
^1 = gv: (name: "alloc223", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 79435825329887244
^2 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 188504856864733019
^3 = gv: (name: "alloc69", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 450205582071928797
^4 = gv: (name: "alloc216", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 474335679867848208
^5 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^6 = gv: (name: "_ZN4core3str8converts23from_utf8_unchecked_mut17hc1b0bb0c2e154230E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 845816520522446356
^7 = gv: (name: "_ZN4core4char7methods15encode_utf8_raw17ha799dfdf9bad87e2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 216, calls: ((callee: ^105), (callee: ^97), (callee: ^111), (callee: ^89), (callee: ^55), (callee: ^65), (callee: ^144)), refs: (^4, ^98, ^155, ^94)))) ; guid = 996031769181613033
^8 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^9 = gv: (name: "alloc150", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109, ^116)))) ; guid = 1083267252594023762
^10 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0c027fb8443c4a79E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 1116759347637960781
^11 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17heaefd2e5e3bdc1e3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^93))))) ; guid = 1608294722682931402
^12 = gv: (name: "alloc219", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1759189684876812117
^13 = gv: (name: "_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17h6b348b61aefb721cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^110)), refs: (^128)))) ; guid = 1907443973372199594
^14 = gv: (name: "_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E") ; guid = 1967081855160219432
^15 = gv: (name: "_ZN4core3fmt9Arguments16new_v1_formatted17hd6e389847a5961a6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26))) ; guid = 2147770172520505041
^16 = gv: (name: "_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h09e04b6c054ba3d0E") ; guid = 2152644449990852334
^17 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h745eb3521346bef0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 2174842388809968214
^18 = gv: (name: "alloc158", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^113)))) ; guid = 2218673282365825355
^19 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h57370537aaed1807E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 59, calls: ((callee: ^17), (callee: ^47), (callee: ^40), (callee: ^149))))) ; guid = 2226173548614784779
^20 = gv: (name: "alloc242", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2278444482199183965
^21 = gv: (name: "_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h913c3b15faba26aaE") ; guid = 2561002753962019145
^22 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^23 = gv: (name: "_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h753490004b694c2eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 72, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^19), (callee: ^135), (callee: ^130), (callee: ^92)), refs: (^128, ^114, ^100)))) ; guid = 2588376615335058982
^24 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h0e347917f5f29facE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 30, calls: ((callee: ^80))))) ; guid = 2699639594519497719
^25 = gv: (name: "alloc240", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^139)))) ; guid = 2752834612268129466
^26 = gv: (name: "_ZN4core4char7convert18from_u32_unchecked17hee7db6a7ae38093aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 2816298727371117449
^27 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h3b2ff9222cb981dfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^85))))) ; guid = 2940059005462276634
^28 = gv: (name: "alloc222", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3162480040286759555
^29 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h2d5dc1f0056ce2aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^152))))) ; guid = 3215193714262735584
^30 = gv: (name: "_ZN4core3str11validations15next_code_point17he42c740421b13363E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 81, calls: ((callee: ^124), (callee: ^136), (callee: ^95), (callee: ^45), (callee: ^13), (callee: ^156)), refs: (^61, ^42, ^106)))) ; guid = 3226654771469158359
^31 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h564a1b8e95177523E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3342056706748161761
^32 = gv: (name: "alloc56", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3428155830947126713
^33 = gv: (name: "_ZN4core5slice3cmp14SlicePartialEq9not_equal17h548d91ad0a007ee6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^96))))) ; guid = 3773309378938492022
^34 = gv: (name: "_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h24eeb69eb935bc94E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^157))))) ; guid = 4104919080805572375
^35 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha5701a086d52f5a6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^68))))) ; guid = 4178029849584595308
^36 = gv: (name: "alloc147", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4228814058985977231
^37 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4233103600622843063
^38 = gv: (name: "_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h1b3afdf1b6437434E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^50))))) ; guid = 4239443933669946644
^39 = gv: (name: "alloc83", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4352540452949919580
^40 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h22a29c5bc9f5b83fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^48), (callee: ^74))))) ; guid = 4535203571853907570
^41 = gv: (name: "_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2d79d50c0aa05ca6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 4758383575920735606
^42 = gv: (name: "alloc212", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^138)))) ; guid = 4856078324161011558
^43 = gv: (name: "u8next_", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^24), (callee: ^142), (callee: ^153))))) ; guid = 4978044037965714241
^44 = gv: (name: "_ZN4core6option15Option$LT$T$GT$9unwrap_or17hd22fe25a87dfc971E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 4988601191667468208
^45 = gv: (name: "_ZN4core3str11validations15utf8_first_byte17hb1d753cd5ad59f03E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 5069550531095135871
^46 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h1f5685ce4bebea37E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^73), (callee: ^101))))) ; guid = 5127635467115218828
^47 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hccf9b60e31363d27E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^73), (callee: ^101))))) ; guid = 5242225075241350472
^48 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hb1da9b7a059ef765E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 5303104126472289472
^49 = gv: (name: "alloc76", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5457021678531878936
^50 = gv: (name: "_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2ne17h2e3d1e85d5c833ddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^33))))) ; guid = 5470926282935784648
^51 = gv: (name: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h9e1a7b56148a25beE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^59))))) ; guid = 5487040556121092139
^52 = gv: (name: "alloc230", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^139)))) ; guid = 5558891228023206636
^53 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^67)))) ; guid = 5599533377897758631
^54 = gv: (name: "_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E") ; guid = 5691937269951177933
^55 = gv: (name: "_ZN4core3fmt10ArgumentV113new_upper_hex17he7eeab6ecc5730ceE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^82)), refs: (^76)))) ; guid = 5721982735267029025
^56 = gv: (name: "alloc100", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5725562973832320718
^57 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h0d4651d11ed0af29E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^48), (callee: ^74))))) ; guid = 5757885431798575156
^58 = gv: (name: "alloc226", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^139)))) ; guid = 6225084213820842779
^59 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h0423084e4effaa41E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^146), (callee: ^154), (callee: ^164))))) ; guid = 6368533087285171194
^60 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^61 = gv: (name: "alloc210", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^138)))) ; guid = 6476289001702970197
^62 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^63 = gv: (name: "alloc48", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7118479142803129686
^64 = gv: (name: "_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc055946eb4a3cd02E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^137))))) ; guid = 7353027542035081744
^65 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h329733ad16ec8c79E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^65), (callee: ^144)), refs: (^109, ^53, ^122)))) ; guid = 7360261659305213301
^66 = gv: (name: "alloc205", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7577917851804810296
^67 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7597387612059563099
^68 = gv: (name: "_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h973038560627b99bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^14), (callee: ^54), (callee: ^69), (callee: ^16), (callee: ^21))))) ; guid = 7717403190955674770
^69 = gv: (name: "_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17he8f5da6c6d93bce0E") ; guid = 7776618895517067944
^70 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h28839fce3faeedf5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 7828159141307266485
^71 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h4890561f5cb080daE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 7924901021786455633
^72 = gv: (name: "alloc42", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^84, ^32, ^81)))) ; guid = 8130115861215133635
^73 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hcbb1ccfb58edb472E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 8321435148461299381
^74 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h894853979f377be2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 8353046669631825867
^75 = gv: (name: "alloc221", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8379904278610390664
^76 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h76586b362ecd9fe8E") ; guid = 8401561645110503840
^77 = gv: (name: "_ZN4core6option15Option$LT$T$GT$3map17h76d8c581d9c9d8fdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, calls: ((callee: ^162))))) ; guid = 8455489216081721583
^78 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h514bfbfd66a495c6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^7), (callee: ^6))))) ; guid = 8550357466921779095
^79 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h9b768b9c020214f3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^27))))) ; guid = 8698044916951251985
^80 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h0714331fb38996e8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^131))))) ; guid = 8829910337594495536
^81 = gv: (name: "alloc57", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8930636048592125405
^82 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h1ef4923d43f5cf09E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 9157898395918998985
^83 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109, ^37)))) ; guid = 9197674844455243886
^84 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9204532638242382172
^85 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h23f934c6bc3449faE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 9223179696126226918
^86 = gv: (name: "alloc63", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9333583563479144955
^87 = gv: (name: "_ZN4core4char18from_u32_unchecked17hf704d3b8bd429519E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^26))))) ; guid = 9553420975252464908
^88 = gv: (name: "alloc74", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9581076388013837120
^89 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h3777f6533acfc94cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^107))))) ; guid = 9683338452229176195
^90 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hb574dbefbc9b5546E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 9698227538859062379
^91 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hb61256346d06b5a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 9815979262296979863
^92 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^93 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h5ba98a75715ad73cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^31), (callee: ^40), (callee: ^149))))) ; guid = 10295513404125507503
^94 = gv: (name: "alloc220", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 10438683603884015333
^95 = gv: (name: "_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h53a9062b8c4bc9d7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 10625710498523294716
^96 = gv: (name: "_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h362e7970e28beb83E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^132), (callee: ^118), (callee: ^120))))) ; guid = 10651194698619641787
^97 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hbf04a58cc182d7efE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^41))))) ; guid = 10953781735855878515
^98 = gv: (name: "alloc218", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 11447848839315484447
^99 = gv: (name: "alloc55", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32, ^81, ^141)))) ; guid = 11617742304348453888
^100 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11628478311244977066
^101 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hd9d956a9215602bcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 11801961307267427708
^102 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109, ^63)))) ; guid = 11823403809205809474
^103 = gv: (name: "alloc70", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 11945382225480431752
^104 = gv: (name: "alloc75", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^88, ^49, ^39, ^150, ^148)))) ; guid = 12062329559952920646
^105 = gv: (name: "_ZN4core4char7methods8len_utf817h07d2e5cdce7a9d31E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 19))) ; guid = 12095618851781493896
^106 = gv: (name: "alloc214", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^138)))) ; guid = 12200667996008648808
^107 = gv: (name: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2b9daf1133f40c43E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^145))))) ; guid = 12395509460684589075
^108 = gv: (name: "alloc207", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12527585835688007971
^109 = gv: (name: "alloc160", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12540501023253325620
^110 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h0ea2f1de0f05f4cdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 12561847219382284122
^111 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h92730bf8d9d81482E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^91)), refs: (^8)))) ; guid = 12635953176050904963
^112 = gv: (name: "_ZN4core3str21_$LT$impl$u20$str$GT$3len17he4661511f7242233E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 15))) ; guid = 12736234465910661324
^113 = gv: (name: "alloc157", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12880011709500343186
^114 = gv: (name: "alloc206", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^66)))) ; guid = 13032387888413837532
^115 = gv: (name: "alloc236", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^139)))) ; guid = 13290537482821160384
^116 = gv: (name: "alloc151", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13359170911150704128
^117 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h88f1e0cf92bd5bdaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 13520889383007814234
^118 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h35cb58bcc6bb1581E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 13690246783471700212
^119 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13709206412379861899
^120 = gv: (name: "memcmp") ; guid = 13767193220660627266
^121 = gv: (name: "alloc241", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13975566241070559922
^122 = gv: (name: "alloc208", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^108)))) ; guid = 14164849302602678692
^123 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h80858f9f965d89a7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 14226038718421201929
^124 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hedafd80b3b869c29E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^10), (callee: ^46), (callee: ^57), (callee: ^123))))) ; guid = 14253578942755438015
^125 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^126 = gv: (name: "u8encode_", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^78), (callee: ^112))))) ; guid = 14620164558613971964
^127 = gv: (name: "_ZN4core4iter8adapters9enumerate18Enumerate$LT$I$GT$3new17h7a5d57759127e224E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 14644905931922655088
^128 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^129 = gv: (name: "alloc224", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15058866475886391981
^130 = gv: (name: "_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h73fb1142f6223fddE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 15093700294609608196
^131 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h8a5b7b4c0932d227E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^118), (callee: ^57), (callee: ^123))))) ; guid = 15155609639791878617
^132 = gv: (name: "_ZN4core3mem11size_of_val17ha49823657a587c49E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 15253345857731052786
^133 = gv: (name: "_ZN4core3fmt10ArgumentV19new_debug17ha35634fe6fa8dc64E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^71)), refs: (^35)))) ; guid = 15299872371177851327
^134 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15317558328394426266
^135 = gv: (name: "_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h082944aed11d796dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21))) ; guid = 15472321164175574247
^136 = gv: (name: "_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf1c61904591857b1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19))) ; guid = 15682506308173430386
^137 = gv: (name: "_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h450d48871660337aE") ; guid = 15792098060338739519
^138 = gv: (name: "alloc213", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15804774217195276420
^139 = gv: (name: "alloc239", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15807904358283666968
^140 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 463, calls: ((callee: ^11), (callee: ^158), (callee: ^147), (callee: ^23), (callee: ^43), (callee: ^92), (callee: ^161), (callee: ^65), (callee: ^163), (callee: ^126), (callee: ^111), (callee: ^157), (callee: ^34), (callee: ^38), (callee: ^143), (callee: ^44), (callee: ^133), (callee: ^15), (callee: ^165)), refs: (^129, ^75, ^28, ^1, ^58, ^100, ^20, ^121, ^83, ^52, ^72, ^102, ^99, ^160, ^115, ^159, ^109, ^103, ^56, ^36, ^104, ^25, ^9, ^18)))) ; guid = 15822663052811949562
^141 = gv: (name: "alloc54", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16035162260326637086
^142 = gv: (name: "_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec054726790c0174E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^30), (callee: ^77))))) ; guid = 16037748195027122349
^143 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6b6a328baab5eb7aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^79))))) ; guid = 16048165020296278692
^144 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^145 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h437f7687a2d618caE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^146), (callee: ^29), (callee: ^164))))) ; guid = 16236870716757707565
^146 = gv: (name: "_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E") ; guid = 16237673211549674151
^147 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h044fe84f65e7f727E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 16361287075205924109
^148 = gv: (name: "alloc84", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16465257559221797045
^149 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1cef1f5dfde023f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 16720513121997838294
^150 = gv: (name: "alloc80", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16720750481990926117
^151 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h540e885c53bb748aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^90), (callee: ^117))))) ; guid = 16756383564939184062
^152 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17hebe77b6c2261580aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^166))))) ; guid = 16931380759490334975
^153 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$8len_utf817ha0bccbb842460a84E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^105))))) ; guid = 16984947255548032173
^154 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hb27be52c8874a604E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^85), (callee: ^151))))) ; guid = 17051265872453535303
^155 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^119, ^134, ^2)))) ; guid = 17209182871403093481
^156 = gv: (name: "_ZN4core3str11validations18utf8_acc_cont_byte17h770410742ab10aa7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 17253371821863000594
^157 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h4263df9024588978E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^51))))) ; guid = 17323413350810323422
^158 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator9enumerate17h445afb3ceae7a9fdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^127))))) ; guid = 17326945768355609492
^159 = gv: (name: "alloc62", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109, ^86)))) ; guid = 17411327072825738746
^160 = gv: (name: "alloc234", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^139)))) ; guid = 17445318867553396089
^161 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h9ee7c3182eff4600E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^70)), refs: (^64)))) ; guid = 17513400585861047646
^162 = gv: (name: "_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h6d3da1532f8d7ee1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^87))))) ; guid = 17556039234924973865
^163 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^164 = gv: (name: "_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E") ; guid = 17978184489729322003
^165 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^166 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h504d8674cda1cf35E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 18319308434308444477
^167 = blockcount: 422
