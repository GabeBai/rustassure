; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memset_precise.rs.bc'
source_filename = "libzahl_memset_precise.b8447fca-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc26 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc27 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc26, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc48 = private unnamed_addr constant <{ [103 x i8] }> <{ [103 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memset_precise.rs" }>, align 1
@alloc29 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\0A\00\00\00\0D\00\00\00" }>, align 8
@alloc31 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\0D\00\00\00\0F\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc33 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\0E\00\00\00\0D\00\00\00" }>, align 8
@alloc35 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\0F\00\00\00\0F\00\00\00" }>, align 8
@alloc37 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\0F\00\00\00\0D\00\00\00" }>, align 8
@alloc39 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\10\00\00\00\0F\00\00\00" }>, align 8
@alloc41 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\10\00\00\00\0D\00\00\00" }>, align 8
@alloc43 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\11\00\00\00\0F\00\00\00" }>, align 8
@alloc45 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\11\00\00\00\0D\00\00\00" }>, align 8
@alloc47 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\12\00\00\00\0D\00\00\00" }>, align 8
@alloc49 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [103 x i8] }>, <{ [103 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"g\00\00\00\00\00\00\00\16\00\00\00\11\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h98a6a0b9d8cec432E"(i64 %start1, i64 %n) unnamed_addr #0 {
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
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h6d6163a5ba3d21f7E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h2952621790ff524bE(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h98e1c3db9295947eE(i64* %dest)
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
  invoke void @_ZN4core3ptr5write17hcde8f1f283329949E(i64* %dest, i64 %src)
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
define i64 @_ZN4core3ptr4read17h98e1c3db9295947eE(i64* %src) unnamed_addr #0 {
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
define void @_ZN4core3ptr5write17hcde8f1f283329949E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h69707eef9bb903f0E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hb78c8b7d0b531cdfE"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hfa2f8d60392734d9E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9e52e0256dbf3047E"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hb78c8b7d0b531cdfE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h6d6163a5ba3d21f7E"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hfa2f8d60392734d9E"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h98a6a0b9d8cec432E"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17h2952621790ff524bE(i64* align 8 %_10, i64 %n)
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
define void @libzahl_memset_precise([0 x i64]* align 8 %a.0, i64 %a.1, i64 %v, i64 %n) unnamed_addr #1 {
start:
  %_56 = alloca { i64, i64 }, align 8
  %iter1 = alloca { i64, i64 }, align 8
  %_52 = alloca { i64, i64 }, align 8
  %_11 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_8 = alloca { i64, i64 }, align 8
  %i = alloca i64, align 8
  store i64 0, i64* %i, align 8
  %_5 = icmp ule i64 %n, 4
  br i1 %_5, label %bb1, label %bb8

bb8:                                              ; preds = %bb18, %start
  %_22 = load i64, i64* %i, align 8
  %0 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_22, i64 4)
  %_23.0 = extractvalue { i64, i1 } %0, 0
  %_23.1 = extractvalue { i64, i1 } %0, 1
  %1 = call i1 @llvm.expect.i1(i1 %_23.1, i1 false)
  br i1 %1, label %panic2, label %bb9

bb1:                                              ; preds = %start
  %2 = bitcast { i64, i64 }* %_8 to i64*
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_8, i32 0, i32 1
  store i64 %n, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_8, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_8, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9e52e0256dbf3047E"(i64 %5, i64 %7)
  %_7.0 = extractvalue { i64, i64 } %8, 0
  %_7.1 = extractvalue { i64, i64 } %8, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0
  store i64 %_7.0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1
  store i64 %_7.1, i64* %10, align 8
  br label %bb3

bb3:                                              ; preds = %bb7, %bb2
  %11 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h69707eef9bb903f0E"({ i64, i64 }* align 8 %iter)
  store { i64, i64 } %11, { i64, i64 }* %_11, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %12 = bitcast { i64, i64 }* %_11 to i64*
  %_14 = load i64, i64* %12, align 8, !range !3, !noundef !2
  switch i64 %_14, label %bb6 [
    i64 0, label %bb27
    i64 1, label %bb5
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb27:                                             ; preds = %bb23, %bb19, %bb4
  ret void

bb5:                                              ; preds = %bb4
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_11, i32 0, i32 1
  %j = load i64, i64* %13, align 8
  %_19 = icmp ult i64 %j, %a.1
  %14 = call i1 @llvm.expect.i1(i1 %_19, i1 true)
  br i1 %14, label %bb7, label %panic

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %j
  store i64 %v, i64* %15, align 8
  br label %bb3

panic:                                            ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %j, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc29 to %"core::panic::location::Location"*)) #6
  unreachable

bb9:                                              ; preds = %bb8
  %_20 = icmp ule i64 %_23.0, %n
  br i1 %_20, label %bb10, label %bb19

panic2:                                           ; preds = %bb8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc31 to %"core::panic::location::Location"*)) #6
  unreachable

bb19:                                             ; preds = %bb9
  %_49 = load i64, i64* %i, align 8
  %_48 = icmp ult i64 %_49, %n
  br i1 %_48, label %bb20, label %bb27

bb10:                                             ; preds = %bb9
  %_26 = load i64, i64* %i, align 8
  %_28 = icmp ult i64 %_26, %a.1
  %16 = call i1 @llvm.expect.i1(i1 %_28, i1 true)
  br i1 %16, label %bb11, label %panic3

bb11:                                             ; preds = %bb10
  %17 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_26
  store i64 %v, i64* %17, align 8
  %_31 = load i64, i64* %i, align 8
  %18 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_31, i64 1)
  %_32.0 = extractvalue { i64, i1 } %18, 0
  %_32.1 = extractvalue { i64, i1 } %18, 1
  %19 = call i1 @llvm.expect.i1(i1 %_32.1, i1 false)
  br i1 %19, label %panic4, label %bb12

panic3:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_26, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc33 to %"core::panic::location::Location"*)) #6
  unreachable

bb12:                                             ; preds = %bb11
  %_34 = icmp ult i64 %_32.0, %a.1
  %20 = call i1 @llvm.expect.i1(i1 %_34, i1 true)
  br i1 %20, label %bb13, label %panic5

panic4:                                           ; preds = %bb11
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc35 to %"core::panic::location::Location"*)) #6
  unreachable

bb13:                                             ; preds = %bb12
  %21 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_32.0
  store i64 %v, i64* %21, align 8
  %_37 = load i64, i64* %i, align 8
  %22 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_37, i64 2)
  %_38.0 = extractvalue { i64, i1 } %22, 0
  %_38.1 = extractvalue { i64, i1 } %22, 1
  %23 = call i1 @llvm.expect.i1(i1 %_38.1, i1 false)
  br i1 %23, label %panic6, label %bb14

panic5:                                           ; preds = %bb12
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_32.0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc37 to %"core::panic::location::Location"*)) #6
  unreachable

bb14:                                             ; preds = %bb13
  %_40 = icmp ult i64 %_38.0, %a.1
  %24 = call i1 @llvm.expect.i1(i1 %_40, i1 true)
  br i1 %24, label %bb15, label %panic7

panic6:                                           ; preds = %bb13
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc39 to %"core::panic::location::Location"*)) #6
  unreachable

bb15:                                             ; preds = %bb14
  %25 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_38.0
  store i64 %v, i64* %25, align 8
  %_43 = load i64, i64* %i, align 8
  %26 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_43, i64 3)
  %_44.0 = extractvalue { i64, i1 } %26, 0
  %_44.1 = extractvalue { i64, i1 } %26, 1
  %27 = call i1 @llvm.expect.i1(i1 %_44.1, i1 false)
  br i1 %27, label %panic8, label %bb16

panic7:                                           ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_38.0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc41 to %"core::panic::location::Location"*)) #6
  unreachable

bb16:                                             ; preds = %bb15
  %_46 = icmp ult i64 %_44.0, %a.1
  %28 = call i1 @llvm.expect.i1(i1 %_46, i1 true)
  br i1 %28, label %bb17, label %panic9

panic8:                                           ; preds = %bb15
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc43 to %"core::panic::location::Location"*)) #6
  unreachable

bb17:                                             ; preds = %bb16
  %29 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_44.0
  store i64 %v, i64* %29, align 8
  %30 = load i64, i64* %i, align 8
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %30, i64 4)
  %_47.0 = extractvalue { i64, i1 } %31, 0
  %_47.1 = extractvalue { i64, i1 } %31, 1
  %32 = call i1 @llvm.expect.i1(i1 %_47.1, i1 false)
  br i1 %32, label %panic10, label %bb18

panic9:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_44.0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc45 to %"core::panic::location::Location"*)) #6
  unreachable

bb18:                                             ; preds = %bb17
  store i64 %_47.0, i64* %i, align 8
  br label %bb8

panic10:                                          ; preds = %bb17
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc47 to %"core::panic::location::Location"*)) #6
  unreachable

bb20:                                             ; preds = %bb19
  %_53 = load i64, i64* %i, align 8
  %33 = bitcast { i64, i64 }* %_52 to i64*
  store i64 %_53, i64* %33, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_52, i32 0, i32 1
  store i64 %n, i64* %34, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_52, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_52, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9e52e0256dbf3047E"(i64 %36, i64 %38)
  %_51.0 = extractvalue { i64, i64 } %39, 0
  %_51.1 = extractvalue { i64, i64 } %39, 1
  br label %bb21

bb21:                                             ; preds = %bb20
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter1, i32 0, i32 0
  store i64 %_51.0, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter1, i32 0, i32 1
  store i64 %_51.1, i64* %41, align 8
  br label %bb22

bb22:                                             ; preds = %bb26, %bb21
  %42 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h69707eef9bb903f0E"({ i64, i64 }* align 8 %iter1)
  store { i64, i64 } %42, { i64, i64 }* %_56, align 8
  br label %bb23

bb23:                                             ; preds = %bb22
  %43 = bitcast { i64, i64 }* %_56 to i64*
  %_59 = load i64, i64* %43, align 8, !range !3, !noundef !2
  switch i64 %_59, label %bb25 [
    i64 0, label %bb27
    i64 1, label %bb24
  ]

bb25:                                             ; preds = %bb23
  unreachable

bb24:                                             ; preds = %bb23
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_56, i32 0, i32 1
  %j11 = load i64, i64* %44, align 8
  %_64 = icmp ult i64 %j11, %a.1
  %45 = call i1 @llvm.expect.i1(i1 %_64, i1 true)
  br i1 %45, label %bb26, label %panic12

bb26:                                             ; preds = %bb24
  %46 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %j11
  store i64 %v, i64* %46, align 8
  br label %bb22

panic12:                                          ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %j11, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc49 to %"core::panic::location::Location"*)) #6
  unreachable
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memset_precise.rs.bc", hash: (1806374515, 2218039783, 3275405018, 3294812255, 3147244157))
^1 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 86783987401427786
^2 = gv: (name: "alloc49", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 573563156780888293
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 722452714778792448
^5 = gv: (name: "_ZN4core3mem7replace17h2952621790ff524bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^11), (callee: ^19)), refs: (^28)))) ; guid = 937579287096574328
^6 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^7 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hfa2f8d60392734d9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 2719009092413357060
^8 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h6d6163a5ba3d21f7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 2924606251891812172
^9 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h98a6a0b9d8cec432E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 3174734634194695060
^10 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 3673036396143714785
^11 = gv: (name: "_ZN4core3ptr4read17h98e1c3db9295947eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 4247504193411816428
^12 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hb78c8b7d0b531cdfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^8), (callee: ^7), (callee: ^9), (callee: ^5))))) ; guid = 4937627149026138865
^13 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 6066199945753604693
^14 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 7003697030067626046
^15 = gv: (name: "alloc43", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 8437862563682516476
^16 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^17 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 10485441816542328050
^18 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 10768436758004829626
^19 = gv: (name: "_ZN4core3ptr5write17hcde8f1f283329949E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 11450654134833602942
^20 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 11719502381564343560
^21 = gv: (name: "alloc48", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11929477522950460547
^22 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12207804086101436168
^23 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 12736941899158068254
^24 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9e52e0256dbf3047E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 14002587679294835218
^25 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^26 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h69707eef9bb903f0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^12))))) ; guid = 14603593551711146792
^27 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^22)))) ; guid = 14620538097892689423
^28 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^29 = gv: (name: "libzahl_memset_precise", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 156, calls: ((callee: ^24), (callee: ^26), (callee: ^31), (callee: ^16)), refs: (^20, ^4, ^30, ^23, ^14, ^17, ^18, ^13, ^15, ^1, ^10, ^2)))) ; guid = 16894789469776630919
^30 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18138527469713975200
^31 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^32 = blockcount: 68
