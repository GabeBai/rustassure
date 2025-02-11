; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zload.rs.bc'
source_filename = "zload.4a304357-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc33 = private unnamed_addr constant <{ [86 x i8] }> <{ [86 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zload.rs" }>, align 1
@alloc34 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc33, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00+\00\00\00\09\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc36 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc33, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00/\00\00\00\12\00\00\00" }>, align 8
@alloc38 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc33, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00/\00\00\00\11\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc39 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"zahl" }>, align 1
@alloc40 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"sign" }>, align 1
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i32**)* @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hac33f0ee22a6a0b0E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i32**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h495a50548738f9fdE" to i8*) }>, align 8
@alloc44 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c"padding__" }>, align 1
@alloc45 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"used" }>, align 1
@vtable.3 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h9a48cf929f9cecceE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f033a6234f05ec6E" to i8*) }>, align 8
@alloc49 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"alloced" }>, align 1
@alloc50 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"chars" }>, align 1
@vtable.4 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i64***)* @"_ZN4core3ptr40drop_in_place$LT$$RF$$BP$mut$u20$u64$GT$17hc4aba999ee70944cE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64***, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8f48ee27c724462dE" to i8*) }>, align 8

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h495a50548738f9fdE"(i32** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_6 = load i32*, i32** %self, align 8, !nonnull !1, !align !2, !noundef !1
  %0 = call zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h4754c4a678b16dcdE"(i32* align 4 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f033a6234f05ec6E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_6 = load i64*, i64** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %0 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h33139bf356b684ebE"(i64* align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8f48ee27c724462dE"(i64*** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_6 = load i64**, i64*** %self, align 8, !nonnull !1, !align !3, !noundef !1
  %0 = call zeroext i1 @"_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h16b5b6285e263eb6E"(i64** align 8 %_6, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h4754c4a678b16dcdE"(i32* align 4 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
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

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h33139bf356b684ebE"(i64* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
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
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
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
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hac33f0ee22a6a0b0E"(i32** %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h9a48cf929f9cecceE"(i64** %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr40drop_in_place$LT$$RF$$BP$mut$u20$u64$GT$17hc4aba999ee70944cE"(i64*** %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hbcc0b966a4d5dc91E"({}* %self) unnamed_addr #1 {
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
define zeroext i1 @"_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h16b5b6285e263eb6E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = call zeroext i1 @"_ZN52_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17hc66c62e53680b893E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN52_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17hc66c62e53680b893E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_5 = alloca i64*, align 8
  %_6 = load i64*, i64** %self, align 8
  store i64* %_6, i64** %_5, align 8
  %0 = call zeroext i1 @"_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h5add44746dac5447E"(i64** align 8 %_5, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h5add44746dac5447E"(i64** align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %_5 = load i64*, i64** %self, align 8
  %_4 = bitcast i64* %_5 to {}*
  %_3 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hbcc0b966a4d5dc91E"({}* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hde7a97c2cc87755fE(i64 %_3, %"core::fmt::Formatter"* align 8 %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %0
}

; Function Attrs: uwtable
define i64 @zload(%zahl* %a, i8* %buffer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %_35 = alloca i64, align 8
  %_6 = bitcast i8* %buffer to i32*
  %_5 = load i32, i32* %_6, align 4
  %2 = bitcast %zahl* %a to i32*
  store i32 %_5, i32* %2, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds i8, i8* %buffer, i64 4
  store i8* %3, i8** %0, align 8
  %4 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_13 = bitcast i8* %4 to i64*
  %_12 = load i64, i64* %_13, align 8
  %5 = getelementptr inbounds %zahl, %zahl* %a, i32 0, i32 2
  store i64 %_12, i64* %5, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = getelementptr inbounds i8, i8* %4, i64 8
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %8 = bitcast %zahl* %a to i32*
  %_19 = load i32, i32* %8, align 1
  %9 = icmp eq i32 %_19, 0
  br i1 %9, label %bb8, label %bb5

bb8:                                              ; preds = %bb7, %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %10 = getelementptr inbounds %zahl, %zahl* %a, i32 0, i32 3
  %_21 = load i64, i64* %10, align 1
  %11 = getelementptr inbounds %zahl, %zahl* %a, i32 0, i32 2
  %_22 = load i64, i64* %11, align 1
  %_20 = icmp ult i64 %_21, %_22
  br i1 %_20, label %bb6, label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %12 = getelementptr inbounds %zahl, %zahl* %a, i32 0, i32 4
  %_27 = load i64*, i64** %12, align 1
  %_28 = bitcast i8* %7 to i64*
  %13 = getelementptr inbounds %zahl, %zahl* %a, i32 0, i32 2
  %_30 = load i64, i64* %13, align 1
  call void @libzahl_memcpy(i64* %_27, i64* %_28, i64 %_30)
  br label %bb8

bb6:                                              ; preds = %bb5
  %14 = getelementptr inbounds %zahl, %zahl* %a, i32 0, i32 2
  %_25 = load i64, i64* %14, align 1
  call void @libzahl_realloc(%zahl* %a, i64 %_25)
  br label %bb7

bb9:                                              ; preds = %bb8
  br label %bb10

bb10:                                             ; preds = %bb9
  %15 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 8)
  %_34.0 = extractvalue { i64, i1 } %15, 0
  %_34.1 = extractvalue { i64, i1 } %15, 1
  %16 = call i1 @llvm.expect.i1(i1 %_34.1, i1 false)
  br i1 %16, label %panic, label %bb11

bb11:                                             ; preds = %bb10
  %_36 = call zeroext i1 @zzero(%zahl* %a)
  br label %bb12

panic:                                            ; preds = %bb10
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc34 to %"core::panic::location::Location"*)) #5
  unreachable

bb12:                                             ; preds = %bb11
  br i1 %_36, label %bb13, label %bb14

bb14:                                             ; preds = %bb12
  %17 = getelementptr inbounds %zahl, %zahl* %a, i32 0, i32 2
  %_40 = load i64, i64* %17, align 1
  %18 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_40, i64 3)
  %_41.0 = extractvalue { i64, i1 } %18, 0
  %_41.1 = extractvalue { i64, i1 } %18, 1
  %19 = call i1 @llvm.expect.i1(i1 %_41.1, i1 false)
  br i1 %19, label %panic2, label %bb15

bb13:                                             ; preds = %bb12
  store i64 0, i64* %_35, align 8
  br label %bb18

bb18:                                             ; preds = %bb17, %bb13
  %20 = load i64, i64* %_35, align 8
  %21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_34.0, i64 %20)
  %_45.0 = extractvalue { i64, i1 } %21, 0
  %_45.1 = extractvalue { i64, i1 } %21, 1
  %22 = call i1 @llvm.expect.i1(i1 %_45.1, i1 false)
  br i1 %22, label %panic4, label %bb19

bb15:                                             ; preds = %bb14
  %_38 = and i64 %_41.0, -4
  br label %bb16

panic2:                                           ; preds = %bb14
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc36 to %"core::panic::location::Location"*)) #5
  unreachable

bb16:                                             ; preds = %bb15
  %23 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_38, i64 8)
  %_44.0 = extractvalue { i64, i1 } %23, 0
  %_44.1 = extractvalue { i64, i1 } %23, 1
  %24 = call i1 @llvm.expect.i1(i1 %_44.1, i1 false)
  br i1 %24, label %panic3, label %bb17

bb17:                                             ; preds = %bb16
  store i64 %_44.0, i64* %_35, align 8
  br label %bb18

panic3:                                           ; preds = %bb16
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc38 to %"core::panic::location::Location"*)) #5
  unreachable

bb19:                                             ; preds = %bb18
  ret i64 %_45.0

panic4:                                           ; preds = %bb18
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc34 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: uwtable
define zeroext i1 @zzero(%zahl* %a) unnamed_addr #0 {
start:
  ret i1 false
}

; Function Attrs: uwtable
define void @main() unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN48_$LT$zload..zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17hdfe9096b29bc1377E"(%zahl* align 1 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %__self_0_4 = alloca i64**, align 8
  %__self_0_3 = alloca i64*, align 8
  %__self_0_2 = alloca i64*, align 8
  %__self_0_1 = alloca i32*, align 8
  %__self_0_0 = alloca i32*, align 8
  %0 = bitcast %zahl* %self to i32*
  store i32* %0, i32** %__self_0_0, align 8
  %1 = getelementptr inbounds %zahl, %zahl* %self, i32 0, i32 1
  store i32* %1, i32** %__self_0_1, align 8
  %2 = getelementptr inbounds %zahl, %zahl* %self, i32 0, i32 2
  store i64* %2, i64** %__self_0_2, align 8
  %3 = getelementptr inbounds %zahl, %zahl* %self, i32 0, i32 3
  store i64* %3, i64** %__self_0_3, align 8
  %4 = getelementptr inbounds %zahl, %zahl* %self, i32 0, i32 4
  store i64** %4, i64*** %__self_0_4, align 8
  %_13.0 = bitcast i32** %__self_0_0 to {}*
  %_18.0 = bitcast i32** %__self_0_1 to {}*
  %_23.0 = bitcast i64** %__self_0_2 to {}*
  %_28.0 = bitcast i64** %__self_0_3 to {}*
  %_33.0 = bitcast i64*** %__self_0_4 to {}*
  %5 = call zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17h87b108015e0bbfdeE(%"core::fmt::Formatter"* align 8 %f, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc39 to [0 x i8]*), i64 4, [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc40 to [0 x i8]*), i64 4, {}* align 1 %_13.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [9 x i8] }>* @alloc44 to [0 x i8]*), i64 9, {}* align 1 %_18.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [4 x i8] }>* @alloc45 to [0 x i8]*), i64 4, {}* align 1 %_23.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.3 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [7 x i8] }>* @alloc49 to [0 x i8]*), i64 7, {}* align 1 %_28.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.3 to [3 x i64]*), [0 x i8]* align 1 bitcast (<{ [5 x i8] }>* @alloc50 to [0 x i8]*), i64 5, {}* align 1 %_33.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.4 to [3 x i64]*))
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %5
}

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
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hde7a97c2cc87755fE(i64, %"core::fmt::Formatter"* align 8) unnamed_addr #0

; Function Attrs: uwtable
declare void @libzahl_realloc(%zahl*, i64) unnamed_addr #0

; Function Attrs: uwtable
declare void @libzahl_memcpy(i64*, i64*, i64) unnamed_addr #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17h87b108015e0bbfdeE(%"core::fmt::Formatter"* align 8, [0 x i8]* align 1, i64, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, [0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8) unnamed_addr #0

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 4}
!3 = !{i64 8}
!4 = !{i8 0, i8 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zload.rs.bc", hash: (1157042806, 3956402683, 2933992373, 1162043395, 1992417764))
^1 = gv: (name: "vtable.3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^17, ^42)))) ; guid = 41449200948551057
^2 = gv: (name: "_ZN4core3ptr40drop_in_place$LT$$RF$$BP$mut$u20$u64$GT$17hc4aba999ee70944cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 305947730172484233
^3 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^4 = gv: (name: "_ZN4core3fmt9Formatter15debug_lower_hex17hef56a57550e3dee1E") ; guid = 1967081855160219432
^5 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^6 = gv: (name: "_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h5add44746dac5447E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^38), (callee: ^13))))) ; guid = 4445369132251314467
^7 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5377304469568337645
^8 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5436943481773832288
^9 = gv: (name: "_ZN4core3fmt9Formatter15debug_upper_hex17hbd70161b233d58f6E") ; guid = 5691937269951177933
^10 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6067973616377473383
^11 = gv: (name: "alloc44", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6088002052937403025
^12 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^13 = gv: (name: "_ZN4core3fmt17pointer_fmt_inner17hde7a97c2cc87755fE") ; guid = 8603763538316848196
^14 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h495a50548738f9fdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^23))))) ; guid = 8783229792531383730
^15 = gv: (name: "alloc49", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9202722038892171216
^16 = gv: (name: "libzahl_realloc") ; guid = 9296568666965528725
^17 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f033a6234f05ec6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^33))))) ; guid = 9361306883359095399
^18 = gv: (name: "_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h16b5b6285e263eb6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^35))))) ; guid = 9364147889799664644
^19 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9436363756791717355
^20 = gv: (name: "alloc50", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9581742831624135027
^21 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9833294690520182353
^22 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^23 = gv: (name: "_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h4754c4a678b16dcdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^4), (callee: ^9), (callee: ^27), (callee: ^31), (callee: ^29))))) ; guid = 10917941714768431638
^24 = gv: (name: "vtable.4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^37, ^2)))) ; guid = 11043554124419082622
^25 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hf45b4eb1668eb976E") ; guid = 11743839634310749277
^26 = gv: (name: "libzahl_memcpy") ; guid = 11838894465342582843
^27 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h7a5e9cbb7827bfc6E") ; guid = 11841554529459563407
^28 = gv: (name: "alloc38", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^19)))) ; guid = 12013465125695571667
^29 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h73d7b5c940bc6831E") ; guid = 12218248418932013088
^30 = gv: (name: "_ZN48_$LT$zload..zahl$u20$as$u20$core..fmt..Debug$GT$3fmt17hdfe9096b29bc1377E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23, calls: ((callee: ^43)), refs: (^24, ^20, ^15, ^1, ^45, ^11, ^36, ^10, ^21)))) ; guid = 13097096494698242569
^31 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^32 = gv: (name: "zload", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 85, calls: ((callee: ^26), (callee: ^16), (callee: ^8), (callee: ^22)), refs: (^41, ^44, ^39, ^28, ^7)))) ; guid = 13282137636631504619
^33 = gv: (name: "_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h33139bf356b684ebE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, calls: ((callee: ^4), (callee: ^9), (callee: ^25), (callee: ^3), (callee: ^47))))) ; guid = 13500530931810645988
^34 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^35 = gv: (name: "_ZN52_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17hc66c62e53680b893E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^6))))) ; guid = 14562177733474558376
^36 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^14, ^46)))) ; guid = 14937636427093001311
^37 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8f48ee27c724462dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^18))))) ; guid = 14996494270196034544
^38 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hbcc0b966a4d5dc91E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 15203526405105347777
^39 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^19)))) ; guid = 15695453875301595750
^40 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15822663052811949562
^41 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^19)))) ; guid = 16209577108283577748
^42 = gv: (name: "_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h9a48cf929f9cecceE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 16381827777997955836
^43 = gv: (name: "_ZN4core3fmt9Formatter26debug_struct_field5_finish17h87b108015e0bbfdeE") ; guid = 16521166769891023571
^44 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16543334473928785999
^45 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17286029865545835512
^46 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hac33f0ee22a6a0b0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 17297012518532639009
^47 = gv: (name: "_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hbcf19ae3f663aa0aE") ; guid = 18145797040138870230
^48 = blockcount: 70
