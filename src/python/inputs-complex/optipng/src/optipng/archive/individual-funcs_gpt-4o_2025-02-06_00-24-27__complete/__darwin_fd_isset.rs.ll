; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_fd_isset.rs.bc'
source_filename = "__darwin_fd_isset.81bcb1ff-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::builders::DebugList" = type { %"core::fmt::builders::DebugInner" }
%"core::fmt::builders::DebugInner" = type { %"core::fmt::Formatter"*, i8, i8, [6 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%FdSet = type <{ [32 x i32] }>
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i32**)* @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hce7ae0998ae18b2dE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i32**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f55043c058a90abE" to i8*) }>, align 8
@alloc27 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc28 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc30 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc63 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc64 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc63, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc65 = private unnamed_addr constant <{ [77 x i8] }> <{ [77 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/array/mod.rs" }>, align 1
@alloc66 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc65, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00\FC\00\00\00\1B\00\00\00" }>, align 8
@alloc77 = private unnamed_addr constant <{ [99 x i8] }> <{ [99 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_fd_isset.rs" }>, align 1
@alloc68 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [99 x i8] }>, <{ [99 x i8] }>* @alloc77, i32 0, i32 0, i32 0), [16 x i8] c"c\00\00\00\00\00\00\00\18\00\00\00\0A\00\00\00" }>, align 8
@alloc70 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [99 x i8] }>, <{ [99 x i8] }>* @alloc77, i32 0, i32 0, i32 0), [16 x i8] c"c\00\00\00\00\00\00\00\18\00\00\00!\00\00\00" }>, align 8
@str.1 = internal constant [35 x i8] c"attempt to shift left with overflow"
@alloc72 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [99 x i8] }>, <{ [99 x i8] }>* @alloc77, i32 0, i32 0, i32 0), [16 x i8] c"c\00\00\00\00\00\00\00!\00\00\00%\00\00\00" }>, align 8
@alloc74 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [99 x i8] }>, <{ [99 x i8] }>* @alloc77, i32 0, i32 0, i32 0), [16 x i8] c"c\00\00\00\00\00\00\00!\00\00\00\0D\00\00\00" }>, align 8
@alloc76 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [99 x i8] }>, <{ [99 x i8] }>* @alloc77, i32 0, i32 0, i32 0), [16 x i8] c"c\00\00\00\00\00\00\00+\00\00\00&\00\00\00" }>, align 8
@alloc78 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [99 x i8] }>, <{ [99 x i8] }>* @alloc77, i32 0, i32 0, i32 0), [16 x i8] c"c\00\00\00\00\00\00\00+\00\00\00\0D\00\00\00" }>, align 8
@alloc12 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"FD 10 is set: " }>, align 1
@alloc14 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc13 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [14 x i8] }>, <{ [14 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [8 x i8] c"\0E\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc79 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"FdSet" }>, align 1
@alloc80 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"fds_bits" }>, align 1
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ([32 x i32]**)* @"_ZN4core3ptr50drop_in_place$LT$$RF$$u5b$i32$u3b$$u20$32$u5d$$GT$17hf61f6edb4ea9b239E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ([32 x i32]**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae13c105d35bc6f7E" to i8*) }>, align 8

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f55043c058a90abE"(i32** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_6 = load i32*, i32** %self, align 8, !nonnull !1, !align !2, !noundef !1
  %0 = call zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h3ebfc7ba64cab8e1E"(i32* align 4 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h500f1c6ebf09d7a4E"({ [0 x i32]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %self, i32 0, i32 0
  %_6.0 = load [0 x i32]*, [0 x i32]** %0, align 8, !nonnull !1, !align !2, !noundef !1
  %1 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %self, i32 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h332c423d6501c77dE"([0 x i32]* align 4 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae13c105d35bc6f7E"([32 x i32]** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_6 = load [32 x i32]*, [32 x i32]** %self, align 8, !nonnull !1, !align !2, !noundef !1
  %0 = call zeroext i1 @"_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h72e3a95cc81da67bE"([32 x i32]* align 4 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h332c423d6501c77dE"([0 x i32]* align 4 %self.0, i64 %self.1, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_6 = alloca %"core::fmt::builders::DebugList", align 8
  call void @_ZN4core3fmt9Formatter10debug_list17h9950a42986e53ae1E(%"core::fmt::builders::DebugList"* sret(%"core::fmt::builders::DebugList") %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { i32*, i32* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h0430b3c7f91b2999E"([0 x i32]* align 4 %self.0, i64 %self.1)
  %_8.0 = extractvalue { i32*, i32* } %0, 0
  %_8.1 = extractvalue { i32*, i32* } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = call align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17hce17c6200f009de7E(%"core::fmt::builders::DebugList"* align 8 %_6, i32* %_8.0, i32* %_8.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %1 = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17he9dcf78544f9bde4E(%"core::fmt::builders::DebugList"* align 8 %_4)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h31f564dab41a1a55E(i8* align 1 %x) unnamed_addr #1 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17ha0e7e1a79c1dd402E(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17ha0e7e1a79c1dd402E(i8* align 1 %x, i1 (i8*, %"core::fmt::Formatter"*)* %f) unnamed_addr #1 {
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
define internal zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h3ebfc7ba64cab8e1E"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
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
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
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

; Function Attrs: uwtable
define align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17hce17c6200f009de7E(%"core::fmt::builders::DebugList"* align 8 %self, i32* %entries.0, i32* %entries.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %entry = alloca i32*, align 8
  %_7 = alloca i32*, align 8
  %iter = alloca { i32*, i32* }, align 8
  %1 = call { i32*, i32* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf5f54fc39adc86deE"(i32* %entries.0, i32* %entries.1)
  %_4.0 = extractvalue { i32*, i32* } %1, 0
  %_4.1 = extractvalue { i32*, i32* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %iter, i32 0, i32 0
  store i32* %_4.0, i32** %2, align 8
  %3 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %iter, i32 0, i32 1
  store i32* %_4.1, i32** %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb8, %bb1
  %4 = invoke align 4 i32* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h737154793350dc62E"({ i32*, i32* }* align 8 %iter)
          to label %bb3 unwind label %cleanup

bb11:                                             ; preds = %bb10, %cleanup
  br label %bb12

cleanup:                                          ; preds = %bb2
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb11

bb3:                                              ; preds = %bb2
  store i32* %4, i32** %_7, align 8
  %10 = bitcast i32** %_7 to {}**
  %11 = load {}*, {}** %10, align 8
  %12 = icmp eq {}* %11, null
  %_10 = select i1 %12, i64 0, i64 1
  switch i64 %_10, label %bb5 [
    i64 0, label %bb6
    i64 1, label %bb4
  ]

bb5:                                              ; preds = %bb3
  unreachable

bb6:                                              ; preds = %bb3
  br label %bb9

bb4:                                              ; preds = %bb3
  %13 = load i32*, i32** %_7, align 8, !nonnull !1, !align !2, !noundef !1
  store i32* %13, i32** %entry, align 8
  %_14.0 = bitcast i32** %entry to {}*
  %_12 = invoke align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList5entry17h0383dd2350e753d0E(%"core::fmt::builders::DebugList"* align 8 %self, {}* align 1 %_14.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*))
          to label %bb7 unwind label %cleanup1

bb10:                                             ; preds = %cleanup1
  br label %bb11

cleanup1:                                         ; preds = %bb4
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb10

bb7:                                              ; preds = %bb4
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb2

bb12:                                             ; preds = %bb11
  %19 = bitcast { i8*, i32 }* %0 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

bb9:                                              ; preds = %bb6
  ret %"core::fmt::builders::DebugList"* %self
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hb28daa05d9e3393bE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #1 {
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
  %11 = load i64*, i64** %10, align 8, !align !5
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
  call void @_ZN4core3fmt9Arguments6new_v117hb28daa05d9e3393bE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc28 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc30 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc64 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hce7ae0998ae18b2dE"(i32** %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr50drop_in_place$LT$$RF$$u5b$i32$u3b$$u20$32$u5d$$GT$17hf61f6edb4ea9b239E"([32 x i32]** %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h4b7f735728e0455cE"(i8* %self, i8* %other) unnamed_addr #1 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6c450b80c8009605E"(i32* %self) unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i32* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h51ab1bfbc6324e65E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h4b7f735728e0455cE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17h2fb48f1da511b647E({}* %data_address) unnamed_addr #1 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h51ab1bfbc6324e65E({}* %data_address) unnamed_addr #1 {
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
define i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hbd0fd2a97277d7b6E"(i32* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i32*, align 8
  store i32* %ptr, i32** %0, align 8
  %1 = load i32*, i32** %0, align 8, !nonnull !1, !noundef !1
  ret i32* %1
}

; Function Attrs: inlinehint uwtable
define i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25cc8f31c8494be5E"(i32* %self) unnamed_addr #1 {
start:
  ret i32* %self
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h13c8fdcff66cfe57E"(i8* %self, i8* %other) unnamed_addr #1 {
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
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h1eb7e54c21d9f768E"(i32* %self) unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i32* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h2fb48f1da511b647E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h13c8fdcff66cfe57E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h72e3a95cc81da67bE"([32 x i32]* align 4 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_5 = alloca { [0 x i32]*, i64 }, align 8
  %0 = call { [0 x i32]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h90ea56f37c3ab4f9E"([32 x i32]* align 4 %self, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc66 to %"core::panic::location::Location"*))
  %_6.0 = extractvalue { [0 x i32]*, i64 } %0, 0
  %_6.1 = extractvalue { [0 x i32]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %_5, i32 0, i32 0
  store [0 x i32]* %_6.0, [0 x i32]** %1, align 8
  %2 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %_5, i32 0, i32 1
  store i64 %_6.1, i64* %2, align 8
  %3 = call zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h500f1c6ebf09d7a4E"({ [0 x i32]*, i64 }* align 8 %_5, %"core::fmt::Formatter"* align 8 %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i32]*, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h90ea56f37c3ab4f9E"([32 x i32]* align 4 %self, %"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %_4.0 = bitcast [32 x i32]* %self to [0 x i32]*
  %1 = call { [0 x i32]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hf2a8286827f57567E"([0 x i32]* align 4 %_4.0, i64 32, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i32]*, i64 } %1, 0
  %3 = extractvalue { [0 x i32]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %2, 0
  %5 = insertvalue { [0 x i32]*, i64 } %4, i64 %3, 1
  ret { [0 x i32]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { i32*, i32* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h0430b3c7f91b2999E"([0 x i32]* align 4 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i32*, i32* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h3e6b92dbb967d76aE"([0 x i32]* align 4 %self.0, i64 %self.1)
  %1 = extractvalue { i32*, i32* } %0, 0
  %2 = extractvalue { i32*, i32* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i32*, i32* } undef, i32* %1, 0
  %4 = insertvalue { i32*, i32* } %3, i32* %2, 1
  ret { i32*, i32* } %4
}

; Function Attrs: inlinehint uwtable
define i32* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h9c2fd2a7d578c3ebE"([0 x i32]* align 4 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = bitcast [0 x i32]* %self.0 to i32*
  ret i32* %0
}

; Function Attrs: inlinehint uwtable
define { i32*, i32* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h3e6b92dbb967d76aE"([0 x i32]* align 4 %slice.0, i64 %slice.1) unnamed_addr #1 {
start:
  %0 = alloca i32*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i32*, align 8
  %2 = alloca { i32*, i32* }, align 8
  %ptr = call i32* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h9c2fd2a7d578c3ebE"([0 x i32]* align 4 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h1eb7e54c21d9f768E"(i32* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 4, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %_11 = bitcast i32* %ptr to i8*
  %4 = getelementptr i8, i8* %_11, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds i32, i32* %ptr, i64 %slice.1
  store i32* %6, i32** %0, align 8
  %7 = load i32*, i32** %0, align 8
  store i32* %7, i32** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hbd0fd2a97277d7b6E"(i32* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  %8 = bitcast i8* %5 to i32*
  store i32* %8, i32** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load i32*, i32** %end, align 8
  %9 = bitcast { i32*, i32* }* %2 to i32**
  store i32* %_18, i32** %9, align 8
  %10 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %2, i32 0, i32 1
  store i32* %_21, i32** %10, align 8
  %11 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %2, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8, !nonnull !1, !noundef !1
  %13 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %2, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = insertvalue { i32*, i32* } undef, i32* %12, 0
  %16 = insertvalue { i32*, i32* } %15, i32* %14, 1
  ret { i32*, i32* } %16
}

; Function Attrs: inlinehint uwtable
define { [0 x i32]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hf2a8286827f57567E"([0 x i32]* align 4 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %1 = call { [0 x i32]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h290e671a802f2debE"([0 x i32]* align 4 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i32]*, i64 } %1, 0
  %3 = extractvalue { [0 x i32]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %2, 0
  %5 = insertvalue { [0 x i32]*, i64 } %4, i64 %3, 1
  ret { [0 x i32]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { i32*, i32* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf5f54fc39adc86deE"(i32* %self.0, i32* %self.1) unnamed_addr #1 {
start:
  %0 = insertvalue { i32*, i32* } undef, i32* %self.0, 0
  %1 = insertvalue { i32*, i32* } %0, i32* %self.1, 1
  ret { i32*, i32* } %1
}

; Function Attrs: inlinehint uwtable
define align 4 i32* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h737154793350dc62E"({ i32*, i32* }* align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca i32*, align 8
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = bitcast { i32*, i32* }* %self to i32**
  %_6 = load i32*, i32** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25cc8f31c8494be5E"(i32* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6c450b80c8009605E"(i32* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 4, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %self, i32 0, i32 1
  %_11 = load i32*, i32** %5, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h1eb7e54c21d9f768E"(i32* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %6 = bitcast { i32*, i32* }* %self to i32**
  %_15 = load i32*, i32** %6, align 8, !nonnull !1, !noundef !1
  %_14 = call i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25cc8f31c8494be5E"(i32* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %self, i32 0, i32 1
  %_16 = load i32*, i32** %7, align 8
  %_12 = icmp eq i32* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i32*, i32* }* %self to i32**
  %_12.i = load i32*, i32** %8, align 8, !nonnull !1, !noundef !1
  %old.i = call i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25cc8f31c8494be5E"(i32* %_12.i)
  %9 = bitcast { i32*, i32* }* %self to i32**
  %_16.i = load i32*, i32** %9, align 8, !nonnull !1, !noundef !1
  %_15.i = call i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25cc8f31c8494be5E"(i32* %_16.i)
  %10 = getelementptr inbounds i32, i32* %_15.i, i64 1
  store i32* %10, i32** %0, align 8
  %_3.i.i = load i32*, i32** %0, align 8
  %_13.i = call i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hbd0fd2a97277d7b6E"(i32* %_3.i.i)
  %11 = bitcast { i32*, i32* }* %self to i32**
  store i32* %_13.i, i32** %11, align 8
  store i32* %old.i, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %13 = bitcast i32** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = bitcast i32** %2 to {}**
  store {}* null, {}** %14, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %15 = load i32*, i32** %2, align 8, !align !2
  ret i32* %15

bb13:                                             ; preds = %bb12
  store i32* %12, i32** %2, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define { [0 x i32]*, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h290e671a802f2debE"([0 x i32]* align 4 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %1 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %slice.0, 0
  %2 = insertvalue { [0 x i32]*, i64 } %1, i64 %slice.1, 1
  ret { [0 x i32]*, i64 } %2
}

; Function Attrs: uwtable
define void @new(%FdSet* sret(%FdSet) %0) unnamed_addr #0 {
start:
  %_1 = alloca [32 x i32], align 4
  %1 = getelementptr inbounds [32 x i32], [32 x i32]* %_1, i64 0, i64 0
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 128, i1 false)
  %3 = bitcast %FdSet* %0 to [32 x i32]*
  %4 = bitcast [32 x i32]* %3 to i8*
  %5 = bitcast [32 x i32]* %_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 4 %5, i64 128, i1 false)
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @fd_isset(%FdSet* align 1 %self, i64 %fd) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_3 = icmp uge i64 %fd, 1024
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %index = udiv i64 %fd, 32
  %bit = urem i64 %fd, 32
  %_13 = icmp ult i64 %index, 32
  %1 = call i1 @llvm.expect.i1(i1 %_13, i1 true)
  br i1 %1, label %bb3, label %panic

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb4, %bb1
  %2 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %3 = trunc i8 %2 to i1
  ret i1 %3

bb3:                                              ; preds = %bb2
  %4 = bitcast %FdSet* %self to [32 x i32]*
  %5 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %index
  %_10 = load i32, i32* %5, align 1
  %6 = and i64 %bit, -32
  %_16.1 = icmp ne i64 %6, 0
  %7 = trunc i64 %bit to i32
  %8 = and i32 %7, 31
  %_16.0 = shl i32 1, %8
  %9 = call i1 @llvm.expect.i1(i1 %_16.1, i1 false)
  br i1 %9, label %panic1, label %bb4

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %index, i64 32, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc68 to %"core::panic::location::Location"*)) #7
  unreachable

bb4:                                              ; preds = %bb3
  %_9 = and i32 %_10, %_16.0
  %10 = icmp ne i32 %_9, 0
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %0, align 1
  br label %bb5

panic1:                                           ; preds = %bb3
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.1 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc70 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: uwtable
define void @fd_set(%FdSet* align 1 %self, i64 %fd) unnamed_addr #0 {
start:
  %_3 = icmp ult i64 %fd, 1024
  br i1 %_3, label %bb1, label %bb4

bb4:                                              ; preds = %bb3, %start
  ret void

bb1:                                              ; preds = %start
  %index = udiv i64 %fd, 32
  %bit = urem i64 %fd, 32
  %0 = and i64 %bit, -32
  %_11.1 = icmp ne i64 %0, 0
  %1 = trunc i64 %bit to i32
  %2 = and i32 %1, 31
  %_11.0 = shl i32 1, %2
  %3 = call i1 @llvm.expect.i1(i1 %_11.1, i1 false)
  br i1 %3, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_14 = icmp ult i64 %index, 32
  %4 = call i1 @llvm.expect.i1(i1 %_14, i1 true)
  br i1 %4, label %bb3, label %panic1

panic:                                            ; preds = %bb1
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.1 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc72 to %"core::panic::location::Location"*)) #7
  unreachable

bb3:                                              ; preds = %bb2
  %5 = bitcast %FdSet* %self to [32 x i32]*
  %6 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %index
  %7 = bitcast %FdSet* %self to [32 x i32]*
  %8 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 %index
  %9 = load i32, i32* %8, align 1
  %10 = or i32 %9, %_11.0
  store i32 %10, i32* %6, align 1
  br label %bb4

panic1:                                           ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %index, i64 32, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc74 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: uwtable
define void @fd_clear(%FdSet* align 1 %self, i64 %fd) unnamed_addr #0 {
start:
  %_3 = icmp ult i64 %fd, 1024
  br i1 %_3, label %bb1, label %bb4

bb4:                                              ; preds = %bb3, %start
  ret void

bb1:                                              ; preds = %start
  %index = udiv i64 %fd, 32
  %bit = urem i64 %fd, 32
  %0 = and i64 %bit, -32
  %_12.1 = icmp ne i64 %0, 0
  %1 = trunc i64 %bit to i32
  %2 = and i32 %1, 31
  %_12.0 = shl i32 1, %2
  %3 = call i1 @llvm.expect.i1(i1 %_12.1, i1 false)
  br i1 %3, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_9 = xor i32 %_12.0, -1
  %_15 = icmp ult i64 %index, 32
  %4 = call i1 @llvm.expect.i1(i1 %_15, i1 true)
  br i1 %4, label %bb3, label %panic1

panic:                                            ; preds = %bb1
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.1 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc76 to %"core::panic::location::Location"*)) #7
  unreachable

bb3:                                              ; preds = %bb2
  %5 = bitcast %FdSet* %self to [32 x i32]*
  %6 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %index
  %7 = bitcast %FdSet* %self to [32 x i32]*
  %8 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 %index
  %9 = load i32, i32* %8, align 1
  %10 = and i32 %9, %_9
  store i32 %10, i32* %6, align 1
  br label %bb4

panic1:                                           ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %index, i64 32, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc78 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: uwtable
define void @main() unnamed_addr #0 {
start:
  %_32 = alloca i8, align 1
  %_28 = alloca [1 x { i8*, i64* }], align 8
  %_21 = alloca %"core::fmt::Arguments", align 8
  %_16 = alloca i8, align 1
  %_12 = alloca [1 x { i8*, i64* }], align 8
  %_5 = alloca %"core::fmt::Arguments", align 8
  %fd_set = alloca %FdSet, align 1
  call void @new(%FdSet* sret(%FdSet) %fd_set)
  br label %bb1

bb1:                                              ; preds = %start
  call void @fd_set(%FdSet* align 1 %fd_set, i64 10)
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = call zeroext i1 @fd_isset(%FdSet* align 1 %fd_set, i64 10)
  %1 = zext i1 %0 to i8
  store i8 %1, i8* %_16, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %2 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h31f564dab41a1a55E(i8* align 1 %_16)
  %_13.0 = extractvalue { i8*, i64* } %2, 0
  %_13.1 = extractvalue { i8*, i64* } %2, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_12, i64 0, i64 0
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  store i8* %_13.0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  store i64* %_13.1, i64** %5, align 8
  %_9.0 = bitcast [1 x { i8*, i64* }]* %_12 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hb28daa05d9e3393bE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_5, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc13 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_9.0, i64 1)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_5)
  br label %bb6

bb6:                                              ; preds = %bb5
  call void @fd_clear(%FdSet* align 1 %fd_set, i64 10)
  br label %bb7

bb7:                                              ; preds = %bb6
  %6 = call zeroext i1 @fd_isset(%FdSet* align 1 %fd_set, i64 10)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %_32, align 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %8 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h31f564dab41a1a55E(i8* align 1 %_32)
  %_29.0 = extractvalue { i8*, i64* } %8, 0
  %_29.1 = extractvalue { i8*, i64* } %8, 1
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_28, i64 0, i64 0
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 0
  store i8* %_29.0, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %9, i32 0, i32 1
  store i64* %_29.1, i64** %11, align 8
  %_25.0 = bitcast [1 x { i8*, i64* }]* %_28 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hb28daa05d9e3393bE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_21, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc13 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_25.0, i64 1)
  br label %bb10

bb10:                                             ; preds = %bb9
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_21)
  br label %bb11

bb11:                                             ; preds = %bb10
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN61_$LT$__darwin_fd_isset..FdSet$u20$as$u20$core..fmt..Debug$GT$3fmt17h2d9d2a9109838ae0E"(%FdSet* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_12 = alloca [32 x i32], align 4
  %_11 = alloca [32 x i32]*, align 8
  %0 = bitcast %FdSet* %self to [32 x i32]*
  %1 = bitcast [32 x i32]* %_12 to i8*
  %2 = bitcast [32 x i32]* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 1 %2, i64 128, i1 false)
  store [32 x i32]* %_12, [32 x i32]** %_11, align 8
  %_8.0 = bitcast [32 x i32]** %_11 to {}*
  %3 = call zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17hf440bddfc631b7f7E(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc79 to [0 x i8]*), i64 5, [0 x i8]* align 1 bitcast (<{ [8 x i8] }>* @alloc80 to [0 x i8]*), i64 8, {}* align 1 %_8.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*))
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %3
}

; Function Attrs: uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h9950a42986e53ae1E(%"core::fmt::builders::DebugList"* sret(%"core::fmt::builders::DebugList"), %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17he9dcf78544f9bde4E(%"core::fmt::builders::DebugList"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E"(i8* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E(%"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h7a5e9cbb7827bfc6E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E(%"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h73d7b5c940bc6831E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #0

; Function Attrs: uwtable
declare align 8 %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList5entry17h0383dd2350e753d0E(%"core::fmt::builders::DebugList"* align 8, {}* align 1, [3 x i64]* align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17hf440bddfc631b7f7E(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8) unnamed_addr #0

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 4}
!3 = !{i64 1}
!4 = !{i8 0, i8 2}
!5 = !{i64 8}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_fd_isset.rs.bc", hash: (3639505580, 845118255, 2209850321, 1481858957, 3531529158))
^1 = gv: (name: "_ZN4core3fmt9Formatter26debug_struct_field1_finish17hf440bddfc631b7f7E") ; guid = 64263298128055720
^2 = gv: (name: "_ZN4core3fmt9Formatter10debug_list17h9950a42986e53ae1E") ; guid = 244147525671112258
^3 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h2fb48f1da511b647E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 440726782191779701
^4 = gv: (name: "alloc64", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^17)))) ; guid = 583427015363623282
^5 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^6 = gv: (name: "alloc74", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^51)))) ; guid = 1446537903150173070
^7 = gv: (name: "alloc70", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^51)))) ; guid = 1684925915793707606
^8 = gv: (name: "_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E") ; guid = 1967081855160219432
^9 = gv: (name: "fd_isset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, calls: ((callee: ^72), (callee: ^38)), refs: (^39, ^7, ^55)))) ; guid = 2258272074222431205
^10 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2326944564276134093
^11 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^12 = gv: (name: "alloc66", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^59)))) ; guid = 2809544119253166401
^13 = gv: (name: "alloc76", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^51)))) ; guid = 2961991861496694677
^14 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hf2a8286827f57567E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^22))))) ; guid = 2971846107780680856
^15 = gv: (name: "alloc72", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^51)))) ; guid = 4329854016486496267
^16 = gv: (name: "fd_set", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 27, calls: ((callee: ^38), (callee: ^72)), refs: (^15, ^55, ^6)))) ; guid = 4493457770260796766
^17 = gv: (name: "alloc63", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4996946480625718856
^18 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h13c8fdcff66cfe57E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 5324112872451303465
^19 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h737154793350dc62E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^61), (callee: ^73), (callee: ^70), (callee: ^29))))) ; guid = 5626061966872521948
^20 = gv: (name: "_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E") ; guid = 5691937269951177933
^21 = gv: (name: "alloc80", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6161837569142239776
^22 = gv: (name: "_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h290e671a802f2debE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 6227031406417303828
^23 = gv: (name: "fd_clear", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, calls: ((callee: ^38), (callee: ^72)), refs: (^13, ^55, ^66)))) ; guid = 6313700949195710125
^24 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^25 = gv: (name: "_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h90ea56f37c3ab4f9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^14))))) ; guid = 6388476821942413946
^26 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^27 = gv: (name: "new", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 6686536032942599970
^28 = gv: (name: "_ZN4core3fmt8builders9DebugList7entries17hce17c6200f009de7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^56), (callee: ^19), (callee: ^75)), refs: (^60, ^48)))) ; guid = 6771723523972961671
^29 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hbd0fd2a97277d7b6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 6821830124876297788
^30 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7181682136186153960
^31 = gv: (name: "_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h72e3a95cc81da67bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^25), (callee: ^67)), refs: (^12)))) ; guid = 7831575915312647684
^32 = gv: (name: "alloc79", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7889303463935009186
^33 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h9c2fd2a7d578c3ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 8289089829645852524
^34 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f55043c058a90abE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^52))))) ; guid = 8608761909006001058
^35 = gv: (name: "_ZN4core3fmt8builders9DebugList6finish17he9dcf78544f9bde4E") ; guid = 8728173401437660708
^36 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h51ab1bfbc6324e65E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 9031739391523859853
^37 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h4b7f735728e0455cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 9616247857063442085
^38 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^39 = gv: (name: "alloc68", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^51)))) ; guid = 10354358321674143571
^40 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10443376796933182830
^41 = gv: (name: "_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h332c423d6501c77dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^2), (callee: ^74), (callee: ^28), (callee: ^35))))) ; guid = 10645073833232150326
^42 = gv: (name: "_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hf5befbcf7e11e0f8E") ; guid = 10816395040579614328
^43 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 10945619135314874596
^44 = gv: (name: "_ZN61_$LT$__darwin_fd_isset..FdSet$u20$as$u20$core..fmt..Debug$GT$3fmt17h2d9d2a9109838ae0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^1)), refs: (^53, ^21, ^32)))) ; guid = 11575562700429058132
^45 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h7a5e9cbb7827bfc6E") ; guid = 11841554529459563407
^46 = gv: (name: "_ZN4core3fmt10ArgumentV13new17ha0e7e1a79c1dd402E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 11973553505979447731
^47 = gv: (name: "alloc30", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12060440487658687722
^48 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^34, ^58)))) ; guid = 12124978720381647087
^49 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h73d7b5c940bc6831E") ; guid = 12218248418932013088
^50 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h31f564dab41a1a55E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^46)), refs: (^42)))) ; guid = 12607850529203373539
^51 = gv: (name: "alloc77", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12616339415190116223
^52 = gv: (name: "_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h3ebfc7ba64cab8e1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^8), (callee: ^20), (callee: ^45), (callee: ^54), (callee: ^49))))) ; guid = 12635451506670095519
^53 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^57, ^71)))) ; guid = 13231244514585803553
^54 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^55 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13420636015224212084
^56 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf5f54fc39adc86deE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 13486270564362076353
^57 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae13c105d35bc6f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^31))))) ; guid = 14113534190253784906
^58 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hce7ae0998ae18b2dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 14395122279044291382
^59 = gv: (name: "alloc65", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14550395713233749481
^60 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^61 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h25cc8f31c8494be5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15304079209151949397
^62 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h3e6b92dbb967d76aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 42, calls: ((callee: ^33), (callee: ^70), (callee: ^29))))) ; guid = 15416248796838179478
^63 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 50, calls: ((callee: ^27), (callee: ^16), (callee: ^9), (callee: ^50), (callee: ^64), (callee: ^69), (callee: ^23)), refs: (^68)))) ; guid = 15822663052811949562
^64 = gv: (name: "_ZN4core3fmt9Arguments6new_v117hb28daa05d9e3393bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^64), (callee: ^65)), refs: (^47, ^43, ^4)))) ; guid = 15848753591760617916
^65 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^66 = gv: (name: "alloc78", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^51)))) ; guid = 17070614274730983267
^67 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h500f1c6ebf09d7a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^41))))) ; guid = 17167736453961915226
^68 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^40, ^30)))) ; guid = 17428681253562715009
^69 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^70 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h1eb7e54c21d9f768E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^3), (callee: ^18))))) ; guid = 17808188343302321771
^71 = gv: (name: "_ZN4core3ptr50drop_in_place$LT$$RF$$u5b$i32$u3b$$u20$32$u5d$$GT$17hf61f6edb4ea9b239E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 18013396990001666342
^72 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^73 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6c450b80c8009605E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^36), (callee: ^37))))) ; guid = 18175862548494098418
^74 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h0430b3c7f91b2999E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^62))))) ; guid = 18178237396545820153
^75 = gv: (name: "_ZN4core3fmt8builders9DebugList5entry17h0383dd2350e753d0E") ; guid = 18441761400065173173
^76 = blockcount: 141
