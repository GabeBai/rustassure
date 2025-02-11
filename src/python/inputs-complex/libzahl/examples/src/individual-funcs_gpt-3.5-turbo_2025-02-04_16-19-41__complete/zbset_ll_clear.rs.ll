; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbset_ll_clear.rs.bc'
source_filename = "zbset_ll_clear.2ad1f97d-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc28 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc29 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc42 = private unnamed_addr constant <{ [95 x i8] }> <{ [95 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbset_ll_clear.rs" }>, align 1
@alloc31 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc42, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00,\00\00\00&\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc33 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc42, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00-\00\00\00(\00\00\00" }>, align 8
@alloc35 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc42, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00/\00\00\00%\00\00\00" }>, align 8
@alloc37 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc42, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\002\00\00\00\1D\00\00\00" }>, align 8
@alloc39 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc42, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00:\00\00\00\05\00\00\00" }>, align 8
@str.1 = internal constant [35 x i8] c"attempt to shift left with overflow"
@alloc41 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc42, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00?\00\00\000\00\00\00" }>, align 8
@str.2 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc43 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc42, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00@\00\00\00\0D\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h353a47b22cc681daE"(i64 %start1, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = add nuw i64 %start1, %n
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h22841f03635a2761E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h234eebb680da7a98E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17he2d9e9b17107f2e8E(i64* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !1, !noundef !2
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb5, label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb6

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  invoke void @_ZN4core3ptr5write17hadcf4cf91ef7beeaE(i64* %dest, i64 %src)
          to label %bb2 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1
  br label %bb6

cleanup1:                                         ; preds = %bb1
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  ret i64 %result

bb4:                                              ; preds = %bb5, %bb6
  %13 = bitcast { i8*, i32 }* %0 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17he2d9e9b17107f2e8E(i64* %src) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %1 = bitcast i64* %0 to {}*
  %2 = load i64, i64* %0, align 8
  store i64 %2, i64* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast i64* %tmp to i8*
  %4 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %_6 = load i64, i64* %tmp, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64 %_6
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hadcf4cf91ef7beeaE(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha190f9fe85ade781E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hb24d867412ca9771E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h06d9258b9bce025fE"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h099d589be715aef7E"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hb24d867412ca9771E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h22841f03635a2761E"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h06d9258b9bce025fE"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h353a47b22cc681daE"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17h234eebb680da7a98E(i64* align 8 %_10, i64 %n)
  br label %bb5

bb5:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_8, i64* %2, align 8
  %3 = bitcast { i64, i64 }* %0 to i64*
  store i64 1, i64* %3, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !range !3, !noundef !2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i64, i64 } undef, i64 %5, 0
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1
  ret { i64, i64 } %9
}

; Function Attrs: uwtable
define zeroext i1 @zzero(%Zahl* align 1 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  %_2 = load i64, i64* %0, align 1
  %1 = icmp eq i64 %_2, 0
  ret i1 %1
}

; Function Attrs: uwtable
define void @libzahl_realloc(%Zahl* %a, i64 %size) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zbset_ll_clear(%Zahl* %a, i64 %bit) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %_51 = alloca i8, align 1
  %_32 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_26 = alloca { i64, i64 }, align 8
  %mask = alloca i64, align 8
  store i64 1, i64* %mask, align 8
  %_6.0 = lshr i64 %bit, 6
  br label %bb1

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_9 = load i64, i64* %3, align 1
  %_7 = icmp uge i64 %_6.0, %_9
  br i1 %_7, label %bb2, label %bb33

bb33:                                             ; preds = %bb32, %bb31, %bb1
  ret void

bb2:                                              ; preds = %bb1
  %_10 = call zeroext i1 @zzero(%Zahl* align 1 %a)
  br label %bb3

bb3:                                              ; preds = %bb2
  br i1 %_10, label %bb4, label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %4 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_14 = load i64, i64* %4, align 1
  %_12 = icmp uge i64 %_6.0, %_14
  br i1 %_12, label %bb6, label %bb20

bb4:                                              ; preds = %bb3
  %5 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  store i64 0, i64* %5, align 1
  %6 = bitcast %Zahl* %a to i32*
  store i32 1, i32* %6, align 1
  br label %bb5

bb20:                                             ; preds = %bb19, %bb5
  %bit4 = and i64 %bit, 63
  %7 = load i64, i64* %mask, align 8
  %8 = and i64 %bit4, -64
  %_45.1 = icmp ne i64 %8, 0
  %9 = and i64 %bit4, 63
  %_45.0 = shl i64 %7, %9
  %10 = call i1 @llvm.expect.i1(i1 %_45.1, i1 false)
  br i1 %10, label %panic5, label %bb21

bb6:                                              ; preds = %bb9, %bb5
  %11 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 3
  %_16 = load i64, i64* %11, align 1
  %12 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_6.0, i64 1)
  %_19.0 = extractvalue { i64, i1 } %12, 0
  %_19.1 = extractvalue { i64, i1 } %12, 1
  %13 = call i1 @llvm.expect.i1(i1 %_19.1, i1 false)
  br i1 %13, label %panic, label %bb7

bb7:                                              ; preds = %bb6
  %_15 = icmp ult i64 %_16, %_19.0
  br i1 %_15, label %bb8, label %bb10

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc31 to %"core::panic::location::Location"*)) #6
  unreachable

bb10:                                             ; preds = %bb7
  %14 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_27 = load i64, i64* %14, align 1
  %15 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_6.0, i64 1)
  %_30.0 = extractvalue { i64, i1 } %15, 0
  %_30.1 = extractvalue { i64, i1 } %15, 1
  %16 = call i1 @llvm.expect.i1(i1 %_30.1, i1 false)
  br i1 %16, label %panic2, label %bb11

bb8:                                              ; preds = %bb7
  %17 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_6.0, i64 1)
  %_24.0 = extractvalue { i64, i1 } %17, 0
  %_24.1 = extractvalue { i64, i1 } %17, 1
  %18 = call i1 @llvm.expect.i1(i1 %_24.1, i1 false)
  br i1 %18, label %panic1, label %bb9

bb9:                                              ; preds = %bb8
  call void @libzahl_realloc(%Zahl* %a, i64 %_24.0)
  br label %bb6

panic1:                                           ; preds = %bb8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc33 to %"core::panic::location::Location"*)) #6
  unreachable

bb11:                                             ; preds = %bb10
  %19 = bitcast { i64, i64 }* %_26 to i64*
  store i64 %_27, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_26, i32 0, i32 1
  store i64 %_30.0, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_26, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_26, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h099d589be715aef7E"(i64 %22, i64 %24)
  %_25.0 = extractvalue { i64, i64 } %25, 0
  %_25.1 = extractvalue { i64, i64 } %25, 1
  br label %bb12

panic2:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc35 to %"core::panic::location::Location"*)) #6
  unreachable

bb12:                                             ; preds = %bb11
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0
  store i64 %_25.0, i64* %26, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1
  store i64 %_25.1, i64* %27, align 8
  br label %bb13

bb13:                                             ; preds = %bb18, %bb12
  %28 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha190f9fe85ade781E"({ i64, i64 }* align 8 %iter)
  store { i64, i64 } %28, { i64, i64 }* %_32, align 8
  br label %bb14

bb14:                                             ; preds = %bb13
  %29 = bitcast { i64, i64 }* %_32 to i64*
  %_35 = load i64, i64* %29, align 8, !range !3, !noundef !2
  switch i64 %_35, label %bb16 [
    i64 0, label %bb17
    i64 1, label %bb15
  ]

bb16:                                             ; preds = %bb14
  unreachable

bb17:                                             ; preds = %bb14
  %30 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_6.0, i64 1)
  %_41.0 = extractvalue { i64, i1 } %30, 0
  %_41.1 = extractvalue { i64, i1 } %30, 1
  %31 = call i1 @llvm.expect.i1(i1 %_41.1, i1 false)
  br i1 %31, label %panic3, label %bb19

bb15:                                             ; preds = %bb14
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_32, i32 0, i32 1
  %i = load i64, i64* %32, align 8
  %33 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_38 = load i64*, i64** %33, align 1
  %34 = getelementptr inbounds i64, i64* %_38, i64 %i
  store i64* %34, i64** %2, align 8
  %_3.i = load i64*, i64** %2, align 8
  br label %bb18

bb18:                                             ; preds = %bb15
  store i64 0, i64* %_3.i, align 8
  br label %bb13

bb19:                                             ; preds = %bb17
  %35 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  store i64 %_41.0, i64* %35, align 1
  br label %bb20

panic3:                                           ; preds = %bb17
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc37 to %"core::panic::location::Location"*)) #6
  unreachable

bb21:                                             ; preds = %bb20
  store i64 %_45.0, i64* %mask, align 8
  %_47 = load i64, i64* %mask, align 8
  %_46 = xor i64 %_47, -1
  %36 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_49 = load i64*, i64** %36, align 1
  %37 = getelementptr inbounds i64, i64* %_49, i64 %_6.0
  store i64* %37, i64** %1, align 8
  %_3.i8 = load i64*, i64** %1, align 8
  br label %bb22

panic5:                                           ; preds = %bb20
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.1 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc39 to %"core::panic::location::Location"*)) #6
  unreachable

bb22:                                             ; preds = %bb21
  %38 = load i64, i64* %_3.i8, align 8
  %39 = and i64 %38, %_46
  store i64 %39, i64* %_3.i8, align 8
  br label %bb23

bb23:                                             ; preds = %bb30, %bb22
  %40 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_53 = load i64, i64* %40, align 1
  %_52 = icmp ugt i64 %_53, 0
  br i1 %_52, label %bb25, label %bb24

bb24:                                             ; preds = %bb23
  store i8 0, i8* %_51, align 1
  br label %bb26

bb25:                                             ; preds = %bb23
  %41 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_57 = load i64*, i64** %41, align 1
  %42 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_59 = load i64, i64* %42, align 1
  %43 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_59, i64 1)
  %_60.0 = extractvalue { i64, i1 } %43, 0
  %_60.1 = extractvalue { i64, i1 } %43, 1
  %44 = call i1 @llvm.expect.i1(i1 %_60.1, i1 false)
  br i1 %44, label %panic6, label %bb27

bb27:                                             ; preds = %bb25
  %45 = getelementptr inbounds i64, i64* %_57, i64 %_60.0
  store i64* %45, i64** %0, align 8
  %_3.i9 = load i64*, i64** %0, align 8
  br label %bb28

panic6:                                           ; preds = %bb25
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc41 to %"core::panic::location::Location"*)) #6
  unreachable

bb28:                                             ; preds = %bb27
  %_55 = load i64, i64* %_3.i9, align 8
  %_54 = icmp eq i64 %_55, 0
  %46 = zext i1 %_54 to i8
  store i8 %46, i8* %_51, align 1
  br label %bb26

bb26:                                             ; preds = %bb28, %bb24
  %47 = load i8, i8* %_51, align 1, !range !1, !noundef !2
  %48 = trunc i8 %47 to i1
  br i1 %48, label %bb29, label %bb31

bb31:                                             ; preds = %bb26
  %49 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_62 = load i64, i64* %49, align 1
  %50 = icmp eq i64 %_62, 0
  br i1 %50, label %bb32, label %bb33

bb29:                                             ; preds = %bb26
  %51 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %52 = load i64, i64* %51, align 1
  %53 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %52, i64 1)
  %_61.0 = extractvalue { i64, i1 } %53, 0
  %_61.1 = extractvalue { i64, i1 } %53, 1
  %54 = call i1 @llvm.expect.i1(i1 %_61.1, i1 false)
  br i1 %54, label %panic7, label %bb30

bb30:                                             ; preds = %bb29
  %55 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  store i64 %_61.0, i64* %55, align 1
  br label %bb23

panic7:                                           ; preds = %bb29
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc43 to %"core::panic::location::Location"*)) #6
  unreachable

bb32:                                             ; preds = %bb31
  %56 = bitcast %Zahl* %a to i32*
  store i32 0, i32* %56, align 1
  br label %bb33
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbset_ll_clear.rs.bc", hash: (2036768488, 4031872392, 451985756, 1201850290, 3461937614))
^1 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 511556355658684588
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^4 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11)))) ; guid = 1233422666730571533
^5 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^6 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h22841f03635a2761E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 2671566842536265403
^7 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 3600425872620970372
^8 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 5436943481773832288
^9 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h099d589be715aef7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 5666358779306855351
^10 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h353a47b22cc681daE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 5894086687513214145
^11 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7231122002811481055
^12 = gv: (name: "alloc42", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7326842451712026794
^13 = gv: (name: "_ZN4core3ptr5write17hadcf4cf91ef7beeaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 7452730579410576005
^14 = gv: (name: "_ZN4core3mem7replace17h234eebb680da7a98E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^15), (callee: ^13)), refs: (^28)))) ; guid = 8292384866317236486
^15 = gv: (name: "_ZN4core3ptr4read17he2d9e9b17107f2e8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 8726274241116620943
^16 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 8735729327967333490
^17 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8807767615346354610
^18 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h06d9258b9bce025fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 9045954332901643412
^19 = gv: (name: "libzahl_realloc", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9296568666965528725
^20 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 9505527465781562922
^21 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hb24d867412ca9771E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^6), (callee: ^18), (callee: ^10), (callee: ^14))))) ; guid = 9813016785834745422
^22 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^23 = gv: (name: "alloc43", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 11046739398815959486
^24 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 12724431247622988109
^25 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 14269645078123055764
^26 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^27 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha190f9fe85ade781E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^21))))) ; guid = 14731283530966713740
^28 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^29 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15662775527102057032
^30 = gv: (name: "zbset_ll_clear", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 172, calls: ((callee: ^8), (callee: ^22), (callee: ^19), (callee: ^9), (callee: ^27)), refs: (^7, ^29, ^1, ^20, ^16, ^25, ^31, ^24, ^17, ^23)))) ; guid = 16954658719340632182
^31 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16991739502683279241
^32 = blockcount: 72
