; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memset_precise.rs.bc'
source_filename = "libzahl_memset_precise.b8447fca-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc24 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc25 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc54 = private unnamed_addr constant <{ [96 x i8] }> <{ [96 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memset_precise.rs" }>, align 1
@alloc27 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\0A\00\00\00\0D\00\00\00" }>, align 8
@alloc29 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\0D\00\00\00\0D\00\00\00" }>, align 8
@alloc31 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\10\00\00\00\0D\00\00\00" }>, align 8
@alloc33 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\13\00\00\00\0D\00\00\00" }>, align 8
@alloc35 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\18\00\00\00\0D\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc37 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\1B\00\00\00\0F\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc39 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\1B\00\00\00\0D\00\00\00" }>, align 8
@alloc41 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\1C\00\00\00\0F\00\00\00" }>, align 8
@alloc43 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\1C\00\00\00\0D\00\00\00" }>, align 8
@alloc45 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\1D\00\00\00\0F\00\00\00" }>, align 8
@alloc47 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\1D\00\00\00\0D\00\00\00" }>, align 8
@alloc49 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\1E\00\00\00\0F\00\00\00" }>, align 8
@alloc51 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00\1E\00\00\00\0D\00\00\00" }>, align 8
@alloc53 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00!\00\00\00\0D\00\00\00" }>, align 8
@alloc55 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [96 x i8] }>, <{ [96 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [16 x i8] c"`\00\00\00\00\00\00\00#\00\00\00\11\00\00\00" }>, align 8

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

; Function Attrs: alwaysinline uwtable
define void @libzahl_memset_precise([0 x i64]* align 8 %a.0, i64 %a.1, i64 %v, i64 %n) unnamed_addr #1 {
start:
  %_68 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_64 = alloca { i64, i64 }, align 8
  %i = alloca i64, align 8
  %_4 = icmp ule i64 %n, 4
  br i1 %_4, label %bb1, label %bb13

bb13:                                             ; preds = %start
  store i64 0, i64* %i, align 8
  br label %bb14

bb1:                                              ; preds = %start
  %_6 = icmp uge i64 %n, 1
  br i1 %_6, label %bb2, label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %_12 = icmp uge i64 %n, 2
  br i1 %_12, label %bb5, label %bb7

bb2:                                              ; preds = %bb1
  %_11 = icmp ult i64 0, %a.1
  %0 = call i1 @llvm.expect.i1(i1 %_11, i1 true)
  br i1 %0, label %bb3, label %panic

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 0
  store i64 %v, i64* %1, align 8
  br label %bb4

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc27 to %"core::panic::location::Location"*)) #7
  unreachable

bb7:                                              ; preds = %bb6, %bb4
  %_18 = icmp uge i64 %n, 3
  br i1 %_18, label %bb8, label %bb10

bb5:                                              ; preds = %bb4
  %_17 = icmp ult i64 1, %a.1
  %2 = call i1 @llvm.expect.i1(i1 %_17, i1 true)
  br i1 %2, label %bb6, label %panic1

bb6:                                              ; preds = %bb5
  %3 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 1
  store i64 %v, i64* %3, align 8
  br label %bb7

panic1:                                           ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc29 to %"core::panic::location::Location"*)) #7
  unreachable

bb10:                                             ; preds = %bb9, %bb7
  %_24 = icmp uge i64 %n, 4
  br i1 %_24, label %bb11, label %bb34

bb8:                                              ; preds = %bb7
  %_23 = icmp ult i64 2, %a.1
  %4 = call i1 @llvm.expect.i1(i1 %_23, i1 true)
  br i1 %4, label %bb9, label %panic2

bb9:                                              ; preds = %bb8
  %5 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 2
  store i64 %v, i64* %5, align 8
  br label %bb10

panic2:                                           ; preds = %bb8
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc31 to %"core::panic::location::Location"*)) #7
  unreachable

bb34:                                             ; preds = %bb30, %bb25, %bb12, %bb10
  ret void

bb11:                                             ; preds = %bb10
  %_29 = icmp ult i64 3, %a.1
  %6 = call i1 @llvm.expect.i1(i1 %_29, i1 true)
  br i1 %6, label %bb12, label %panic3

bb12:                                             ; preds = %bb11
  %7 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 3
  store i64 %v, i64* %7, align 8
  br label %bb34

panic3:                                           ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 3, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc33 to %"core::panic::location::Location"*)) #7
  unreachable

bb14:                                             ; preds = %bb24, %bb13
  %8 = load i64, i64* %i, align 8
  %9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 4)
  %_32.0 = extractvalue { i64, i1 } %9, 0
  %_32.1 = extractvalue { i64, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_32.1, i1 false)
  br i1 %10, label %panic4, label %bb15

bb15:                                             ; preds = %bb14
  store i64 %_32.0, i64* %i, align 8
  %_33 = load i64, i64* %i, align 8
  %_31 = icmp ule i64 %_33, %n
  br i1 %_31, label %bb16, label %bb25

panic4:                                           ; preds = %bb14
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc35 to %"core::panic::location::Location"*)) #7
  unreachable

bb25:                                             ; preds = %bb15
  %_60 = load i64, i64* %i, align 8
  %_59 = icmp ugt i64 %_60, %n
  br i1 %_59, label %bb26, label %bb34

bb16:                                             ; preds = %bb15
  %_37 = load i64, i64* %i, align 8
  %11 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_37, i64 1)
  %_38.0 = extractvalue { i64, i1 } %11, 0
  %_38.1 = extractvalue { i64, i1 } %11, 1
  %12 = call i1 @llvm.expect.i1(i1 %_38.1, i1 false)
  br i1 %12, label %panic5, label %bb17

bb17:                                             ; preds = %bb16
  %_40 = icmp ult i64 %_38.0, %a.1
  %13 = call i1 @llvm.expect.i1(i1 %_40, i1 true)
  br i1 %13, label %bb18, label %panic6

panic5:                                           ; preds = %bb16
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc37 to %"core::panic::location::Location"*)) #7
  unreachable

bb18:                                             ; preds = %bb17
  %14 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_38.0
  store i64 %v, i64* %14, align 8
  %_43 = load i64, i64* %i, align 8
  %15 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_43, i64 2)
  %_44.0 = extractvalue { i64, i1 } %15, 0
  %_44.1 = extractvalue { i64, i1 } %15, 1
  %16 = call i1 @llvm.expect.i1(i1 %_44.1, i1 false)
  br i1 %16, label %panic7, label %bb19

panic6:                                           ; preds = %bb17
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_38.0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc39 to %"core::panic::location::Location"*)) #7
  unreachable

bb19:                                             ; preds = %bb18
  %_46 = icmp ult i64 %_44.0, %a.1
  %17 = call i1 @llvm.expect.i1(i1 %_46, i1 true)
  br i1 %17, label %bb20, label %panic8

panic7:                                           ; preds = %bb18
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc41 to %"core::panic::location::Location"*)) #7
  unreachable

bb20:                                             ; preds = %bb19
  %18 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_44.0
  store i64 %v, i64* %18, align 8
  %_49 = load i64, i64* %i, align 8
  %19 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_49, i64 3)
  %_50.0 = extractvalue { i64, i1 } %19, 0
  %_50.1 = extractvalue { i64, i1 } %19, 1
  %20 = call i1 @llvm.expect.i1(i1 %_50.1, i1 false)
  br i1 %20, label %panic9, label %bb21

panic8:                                           ; preds = %bb19
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_44.0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc43 to %"core::panic::location::Location"*)) #7
  unreachable

bb21:                                             ; preds = %bb20
  %_52 = icmp ult i64 %_50.0, %a.1
  %21 = call i1 @llvm.expect.i1(i1 %_52, i1 true)
  br i1 %21, label %bb22, label %panic10

panic9:                                           ; preds = %bb20
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc45 to %"core::panic::location::Location"*)) #7
  unreachable

bb22:                                             ; preds = %bb21
  %22 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_50.0
  store i64 %v, i64* %22, align 8
  %_55 = load i64, i64* %i, align 8
  %23 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_55, i64 4)
  %_56.0 = extractvalue { i64, i1 } %23, 0
  %_56.1 = extractvalue { i64, i1 } %23, 1
  %24 = call i1 @llvm.expect.i1(i1 %_56.1, i1 false)
  br i1 %24, label %panic11, label %bb23

panic10:                                          ; preds = %bb21
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_50.0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc47 to %"core::panic::location::Location"*)) #7
  unreachable

bb23:                                             ; preds = %bb22
  %_58 = icmp ult i64 %_56.0, %a.1
  %25 = call i1 @llvm.expect.i1(i1 %_58, i1 true)
  br i1 %25, label %bb24, label %panic12

panic11:                                          ; preds = %bb22
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc49 to %"core::panic::location::Location"*)) #7
  unreachable

bb24:                                             ; preds = %bb23
  %26 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_56.0
  store i64 %v, i64* %26, align 8
  br label %bb14

panic12:                                          ; preds = %bb23
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_56.0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc51 to %"core::panic::location::Location"*)) #7
  unreachable

bb26:                                             ; preds = %bb25
  %27 = load i64, i64* %i, align 8
  %28 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %27, i64 4)
  %_62.0 = extractvalue { i64, i1 } %28, 0
  %_62.1 = extractvalue { i64, i1 } %28, 1
  %29 = call i1 @llvm.expect.i1(i1 %_62.1, i1 false)
  br i1 %29, label %panic13, label %bb27

bb27:                                             ; preds = %bb26
  store i64 %_62.0, i64* %i, align 8
  %_65 = load i64, i64* %i, align 8
  %30 = bitcast { i64, i64 }* %_64 to i64*
  store i64 %_65, i64* %30, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_64, i32 0, i32 1
  store i64 %n, i64* %31, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_64, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_64, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9e52e0256dbf3047E"(i64 %33, i64 %35)
  %_63.0 = extractvalue { i64, i64 } %36, 0
  %_63.1 = extractvalue { i64, i64 } %36, 1
  br label %bb28

panic13:                                          ; preds = %bb26
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc53 to %"core::panic::location::Location"*)) #7
  unreachable

bb28:                                             ; preds = %bb27
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0
  store i64 %_63.0, i64* %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1
  store i64 %_63.1, i64* %38, align 8
  br label %bb29

bb29:                                             ; preds = %bb33, %bb28
  %39 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h69707eef9bb903f0E"({ i64, i64 }* align 8 %iter)
  store { i64, i64 } %39, { i64, i64 }* %_68, align 8
  br label %bb30

bb30:                                             ; preds = %bb29
  %40 = bitcast { i64, i64 }* %_68 to i64*
  %_71 = load i64, i64* %40, align 8, !range !3, !noundef !2
  switch i64 %_71, label %bb32 [
    i64 0, label %bb34
    i64 1, label %bb31
  ]

bb32:                                             ; preds = %bb30
  unreachable

bb31:                                             ; preds = %bb30
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_68, i32 0, i32 1
  %j = load i64, i64* %41, align 8
  %_76 = icmp ult i64 %j, %a.1
  %42 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %42, label %bb33, label %panic14

bb33:                                             ; preds = %bb31
  %43 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %j
  store i64 %v, i64* %43, align 8
  br label %bb29

panic14:                                          ; preds = %bb31
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %j, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc55 to %"core::panic::location::Location"*)) #7
  unreachable
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #6

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { alwaysinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memset_precise.rs.bc", hash: (3192190899, 1769173092, 1035347877, 4150840428, 1769206341))
^1 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 86783987401427786
^2 = gv: (name: "alloc49", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 573563156780888293
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 722452714778792448
^5 = gv: (name: "_ZN4core3mem7replace17h2952621790ff524bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^13), (callee: ^25)), refs: (^33)))) ; guid = 937579287096574328
^6 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^7 = gv: (name: "alloc51", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 2466628052757652936
^8 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^9 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hfa2f8d60392734d9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 2719009092413357060
^10 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h6d6163a5ba3d21f7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 2924606251891812172
^11 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h98a6a0b9d8cec432E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 3174734634194695060
^12 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 3673036396143714785
^13 = gv: (name: "_ZN4core3ptr4read17h98e1c3db9295947eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 4247504193411816428
^14 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hb78c8b7d0b531cdfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^10), (callee: ^9), (callee: ^11), (callee: ^5))))) ; guid = 4937627149026138865
^15 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 6066199945753604693
^16 = gv: (name: "alloc54", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6864024681446535433
^17 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 7003697030067626046
^18 = gv: (name: "alloc43", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 8437862563682516476
^19 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8526004080362420114
^20 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^34)))) ; guid = 9791963106057536997
^21 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^22 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 10485441816542328050
^23 = gv: (name: "alloc55", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 10730302331712554485
^24 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 10768436758004829626
^25 = gv: (name: "_ZN4core3ptr5write17hcde8f1f283329949E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 11450654134833602942
^26 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 11719502381564343560
^27 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 12736941899158068254
^28 = gv: (name: "alloc53", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 13056293747605840569
^29 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9e52e0256dbf3047E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 14002587679294835218
^30 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^31 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h69707eef9bb903f0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^14))))) ; guid = 14603593551711146792
^32 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 14620538097892689423
^33 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^34 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16595366423075801277
^35 = gv: (name: "libzahl_memset_precise", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 169, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 1, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^37), (callee: ^21), (callee: ^29), (callee: ^31)), refs: (^32, ^26, ^4, ^27, ^17, ^36, ^22, ^19, ^24, ^15, ^18, ^1, ^12, ^2, ^7, ^28, ^23)))) ; guid = 16894789469776630919
^36 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18138527469713975200
^37 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^38 = blockcount: 79
