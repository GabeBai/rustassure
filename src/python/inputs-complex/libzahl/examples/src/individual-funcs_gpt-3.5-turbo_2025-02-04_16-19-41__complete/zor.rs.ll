; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zor.rs.bc'
source_filename = "zor.32fcda74-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc44 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc45 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc44, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc46 = private unnamed_addr constant <{ [84 x i8] }> <{ [84 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zor.rs" }>, align 1
@alloc47 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [84 x i8] }>, <{ [84 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"T\00\00\00\00\00\00\00A\00\00\00\11\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h03da988fa910d80eE"(i64 %start1, i64 %n) unnamed_addr #0 {
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
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h620d3c59345dbfa1E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17ha7d69cd4af2f2e70E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h1ad816d8f0f5a6c1E(i64* %dest)
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
  invoke void @_ZN4core3ptr5write17hcaf7d082d308e6c5E(i64* %dest, i64 %src)
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
define i64 @_ZN4core3ptr4read17h1ad816d8f0f5a6c1E(i64* %src) unnamed_addr #0 {
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
define void @_ZN4core3ptr5write17hcaf7d082d308e6c5E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h3294ee92e0b70292E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17ha05a9c1181ebe455E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h3294ee92e0b70292E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h620d3c59345dbfa1E"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17ha05a9c1181ebe455E"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h03da988fa910d80eE"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17ha7d69cd4af2f2e70E(i64* align 8 %_10, i64 %n)
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
define void @zor(%Zahl* align 1 %a, %Zahl* align 1 %b, %Zahl* align 1 %c) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %_146 = alloca i32, align 4
  %_120 = alloca { i64, i64 }, align 8
  %iter3 = alloca { i64, i64 }, align 8
  %_117 = alloca { i64, i64 }, align 8
  %_91 = alloca { i64, i64 }, align 8
  %iter2 = alloca { i64, i64 }, align 8
  %_88 = alloca { i64, i64 }, align 8
  %_56 = alloca { i64, i64 }, align 8
  %iter1 = alloca { i64, i64 }, align 8
  %_53 = alloca { i64, i64 }, align 8
  %_21 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_18 = alloca { i64, i64 }, align 8
  %_6 = alloca { i64, i64 }, align 8
  %12 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_8 = load i64, i64* %12, align 1
  %13 = getelementptr inbounds %Zahl, %Zahl* %c, i32 0, i32 2
  %_9 = load i64, i64* %13, align 1
  %_7 = icmp ult i64 %_8, %_9
  br i1 %_7, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %14 = getelementptr inbounds %Zahl, %Zahl* %c, i32 0, i32 2
  %_12 = load i64, i64* %14, align 1
  %15 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_13 = load i64, i64* %15, align 1
  %16 = bitcast { i64, i64 }* %_6 to i64*
  store i64 %_12, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %_13, i64* %17, align 8
  br label %bb3

bb1:                                              ; preds = %start
  %18 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_10 = load i64, i64* %18, align 1
  %19 = getelementptr inbounds %Zahl, %Zahl* %c, i32 0, i32 2
  %_11 = load i64, i64* %19, align 1
  %20 = bitcast { i64, i64 }* %_6 to i64*
  store i64 %_10, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %_11, i64* %21, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %22 = bitcast { i64, i64 }* %_6 to i64*
  %n = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %m = load i64, i64* %23, align 8
  %24 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_15 = load i64*, i64** %24, align 1
  %25 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 4
  %_16 = load i64*, i64** %25, align 1
  %_14 = icmp eq i64* %_15, %_16
  br i1 %_14, label %bb4, label %bb15

bb15:                                             ; preds = %bb3
  %26 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_50 = load i64*, i64** %26, align 1
  %27 = getelementptr inbounds %Zahl, %Zahl* %c, i32 0, i32 4
  %_51 = load i64*, i64** %27, align 1
  %_49 = icmp eq i64* %_50, %_51
  br i1 %_49, label %bb16, label %bb27

bb4:                                              ; preds = %bb3
  %28 = bitcast { i64, i64 }* %_18 to i64*
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_18, i32 0, i32 1
  store i64 %n, i64* %29, align 8
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_18, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_18, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE"(i64 %31, i64 %33)
  %_17.0 = extractvalue { i64, i64 } %34, 0
  %_17.1 = extractvalue { i64, i64 } %34, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0
  store i64 %_17.0, i64* %35, align 8
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1
  store i64 %_17.1, i64* %36, align 8
  br label %bb6

bb6:                                              ; preds = %bb13, %bb5
  %37 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E"({ i64, i64 }* align 8 %iter)
  store { i64, i64 } %37, { i64, i64 }* %_21, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  %38 = bitcast { i64, i64 }* %_21 to i64*
  %_24 = load i64, i64* %38, align 8, !range !3, !noundef !2
  switch i64 %_24, label %bb9 [
    i64 0, label %bb10
    i64 1, label %bb8
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb10:                                             ; preds = %bb7
  %39 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_41 = load i64, i64* %39, align 1
  %40 = getelementptr inbounds %Zahl, %Zahl* %c, i32 0, i32 2
  %_42 = load i64, i64* %40, align 1
  %_40 = icmp ult i64 %_41, %_42
  br i1 %_40, label %bb14, label %bb48

bb8:                                              ; preds = %bb7
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_21, i32 0, i32 1
  %i = load i64, i64* %41, align 8
  %42 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 4
  %_28 = load i64*, i64** %42, align 1
  %43 = getelementptr inbounds i64, i64* %_28, i64 %i
  store i64* %43, i64** %0, align 8
  %_3.i17 = load i64*, i64** %0, align 8
  br label %bb11

bb11:                                             ; preds = %bb8
  %_26 = load i64, i64* %_3.i17, align 8
  %44 = getelementptr inbounds %Zahl, %Zahl* %c, i32 0, i32 4
  %_33 = load i64*, i64** %44, align 1
  %45 = getelementptr inbounds i64, i64* %_33, i64 %i
  store i64* %45, i64** %1, align 8
  %_3.i16 = load i64*, i64** %1, align 8
  br label %bb12

bb12:                                             ; preds = %bb11
  %_31 = load i64, i64* %_3.i16, align 8
  %46 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_37 = load i64*, i64** %46, align 1
  %47 = getelementptr inbounds i64, i64* %_37, i64 %i
  store i64* %47, i64** %2, align 8
  %_3.i15 = load i64*, i64** %2, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  %48 = or i64 %_26, %_31
  store i64 %48, i64* %_3.i15, align 8
  br label %bb6

bb48:                                             ; preds = %bb44, %bb34, %bb26, %bb22, %bb14, %bb10
  %49 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  store i64 %m, i64* %49, align 1
  %_148 = call i32 @zsignum(%Zahl* align 1 %b)
  br label %bb49

bb14:                                             ; preds = %bb10
  %50 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_44 = load i64*, i64** %50, align 1
  %51 = getelementptr inbounds %Zahl, %Zahl* %c, i32 0, i32 4
  %_46 = load i64*, i64** %51, align 1
  call void @zmemcpy_range(i64* %_44, i64* %_46, i64 %n, i64 %m)
  br label %bb48

bb27:                                             ; preds = %bb15
  %52 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_86 = load i64, i64* %52, align 1
  %_84 = icmp eq i64 %m, %_86
  br i1 %_84, label %bb28, label %bb38

bb16:                                             ; preds = %bb15
  %53 = bitcast { i64, i64 }* %_53 to i64*
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_53, i32 0, i32 1
  store i64 %n, i64* %54, align 8
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_53, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_53, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE"(i64 %56, i64 %58)
  %_52.0 = extractvalue { i64, i64 } %59, 0
  %_52.1 = extractvalue { i64, i64 } %59, 1
  br label %bb17

bb17:                                             ; preds = %bb16
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter1, i32 0, i32 0
  store i64 %_52.0, i64* %60, align 8
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter1, i32 0, i32 1
  store i64 %_52.1, i64* %61, align 8
  br label %bb18

bb18:                                             ; preds = %bb25, %bb17
  %62 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E"({ i64, i64 }* align 8 %iter1)
  store { i64, i64 } %62, { i64, i64 }* %_56, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  %63 = bitcast { i64, i64 }* %_56 to i64*
  %_59 = load i64, i64* %63, align 8, !range !3, !noundef !2
  switch i64 %_59, label %bb21 [
    i64 0, label %bb22
    i64 1, label %bb20
  ]

bb21:                                             ; preds = %bb19
  unreachable

bb22:                                             ; preds = %bb19
  %64 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_76 = load i64, i64* %64, align 1
  %65 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_77 = load i64, i64* %65, align 1
  %_75 = icmp ult i64 %_76, %_77
  br i1 %_75, label %bb26, label %bb48

bb20:                                             ; preds = %bb19
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_56, i32 0, i32 1
  %i4 = load i64, i64* %66, align 8
  %67 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 4
  %_63 = load i64*, i64** %67, align 1
  %68 = getelementptr inbounds i64, i64* %_63, i64 %i4
  store i64* %68, i64** %3, align 8
  %_3.i14 = load i64*, i64** %3, align 8
  br label %bb23

bb23:                                             ; preds = %bb20
  %_61 = load i64, i64* %_3.i14, align 8
  %69 = getelementptr inbounds %Zahl, %Zahl* %c, i32 0, i32 4
  %_68 = load i64*, i64** %69, align 1
  %70 = getelementptr inbounds i64, i64* %_68, i64 %i4
  store i64* %70, i64** %4, align 8
  %_3.i13 = load i64*, i64** %4, align 8
  br label %bb24

bb24:                                             ; preds = %bb23
  %_66 = load i64, i64* %_3.i13, align 8
  %71 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_72 = load i64*, i64** %71, align 1
  %72 = getelementptr inbounds i64, i64* %_72, i64 %i4
  store i64* %72, i64** %5, align 8
  %_3.i12 = load i64*, i64** %5, align 8
  br label %bb25

bb25:                                             ; preds = %bb24
  %73 = or i64 %_61, %_66
  store i64 %73, i64* %_3.i12, align 8
  br label %bb18

bb26:                                             ; preds = %bb22
  %74 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_79 = load i64*, i64** %74, align 1
  %75 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 4
  %_81 = load i64*, i64** %75, align 1
  call void @zmemcpy_range(i64* %_79, i64* %_81, i64 %n, i64 %m)
  br label %bb48

bb38:                                             ; preds = %bb27
  %76 = bitcast { i64, i64 }* %_117 to i64*
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_117, i32 0, i32 1
  store i64 %n, i64* %77, align 8
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_117, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_117, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE"(i64 %79, i64 %81)
  %_116.0 = extractvalue { i64, i64 } %82, 0
  %_116.1 = extractvalue { i64, i64 } %82, 1
  br label %bb39

bb28:                                             ; preds = %bb27
  %83 = bitcast { i64, i64 }* %_88 to i64*
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_88, i32 0, i32 1
  store i64 %n, i64* %84, align 8
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_88, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_88, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE"(i64 %86, i64 %88)
  %_87.0 = extractvalue { i64, i64 } %89, 0
  %_87.1 = extractvalue { i64, i64 } %89, 1
  br label %bb29

bb29:                                             ; preds = %bb28
  %90 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter2, i32 0, i32 0
  store i64 %_87.0, i64* %90, align 8
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter2, i32 0, i32 1
  store i64 %_87.1, i64* %91, align 8
  br label %bb30

bb30:                                             ; preds = %bb37, %bb29
  %92 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E"({ i64, i64 }* align 8 %iter2)
  store { i64, i64 } %92, { i64, i64 }* %_91, align 8
  br label %bb31

bb31:                                             ; preds = %bb30
  %93 = bitcast { i64, i64 }* %_91 to i64*
  %_94 = load i64, i64* %93, align 8, !range !3, !noundef !2
  switch i64 %_94, label %bb33 [
    i64 0, label %bb34
    i64 1, label %bb32
  ]

bb33:                                             ; preds = %bb31
  unreachable

bb34:                                             ; preds = %bb31
  %94 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_111 = load i64*, i64** %94, align 1
  %95 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 4
  %_113 = load i64*, i64** %95, align 1
  call void @zmemcpy_range(i64* %_111, i64* %_113, i64 %n, i64 %m)
  br label %bb48

bb32:                                             ; preds = %bb31
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_91, i32 0, i32 1
  %i5 = load i64, i64* %96, align 8
  %97 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 4
  %_98 = load i64*, i64** %97, align 1
  %98 = getelementptr inbounds i64, i64* %_98, i64 %i5
  store i64* %98, i64** %6, align 8
  %_3.i11 = load i64*, i64** %6, align 8
  br label %bb35

bb35:                                             ; preds = %bb32
  %_96 = load i64, i64* %_3.i11, align 8
  %99 = getelementptr inbounds %Zahl, %Zahl* %c, i32 0, i32 4
  %_103 = load i64*, i64** %99, align 1
  %100 = getelementptr inbounds i64, i64* %_103, i64 %i5
  store i64* %100, i64** %7, align 8
  %_3.i10 = load i64*, i64** %7, align 8
  br label %bb36

bb36:                                             ; preds = %bb35
  %_101 = load i64, i64* %_3.i10, align 8
  %101 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_107 = load i64*, i64** %101, align 1
  %102 = getelementptr inbounds i64, i64* %_107, i64 %i5
  store i64* %102, i64** %8, align 8
  %_3.i9 = load i64*, i64** %8, align 8
  br label %bb37

bb37:                                             ; preds = %bb36
  %103 = or i64 %_96, %_101
  store i64 %103, i64* %_3.i9, align 8
  br label %bb30

bb39:                                             ; preds = %bb38
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter3, i32 0, i32 0
  store i64 %_116.0, i64* %104, align 8
  %105 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter3, i32 0, i32 1
  store i64 %_116.1, i64* %105, align 8
  br label %bb40

bb40:                                             ; preds = %bb47, %bb39
  %106 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E"({ i64, i64 }* align 8 %iter3)
  store { i64, i64 } %106, { i64, i64 }* %_120, align 8
  br label %bb41

bb41:                                             ; preds = %bb40
  %107 = bitcast { i64, i64 }* %_120 to i64*
  %_123 = load i64, i64* %107, align 8, !range !3, !noundef !2
  switch i64 %_123, label %bb43 [
    i64 0, label %bb44
    i64 1, label %bb42
  ]

bb43:                                             ; preds = %bb41
  unreachable

bb44:                                             ; preds = %bb41
  %108 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_140 = load i64*, i64** %108, align 1
  %109 = getelementptr inbounds %Zahl, %Zahl* %c, i32 0, i32 4
  %_142 = load i64*, i64** %109, align 1
  call void @zmemcpy_range(i64* %_140, i64* %_142, i64 %n, i64 %m)
  br label %bb48

bb42:                                             ; preds = %bb41
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_120, i32 0, i32 1
  %i6 = load i64, i64* %110, align 8
  %111 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 4
  %_127 = load i64*, i64** %111, align 1
  %112 = getelementptr inbounds i64, i64* %_127, i64 %i6
  store i64* %112, i64** %9, align 8
  %_3.i8 = load i64*, i64** %9, align 8
  br label %bb45

bb45:                                             ; preds = %bb42
  %_125 = load i64, i64* %_3.i8, align 8
  %113 = getelementptr inbounds %Zahl, %Zahl* %c, i32 0, i32 4
  %_132 = load i64*, i64** %113, align 1
  %114 = getelementptr inbounds i64, i64* %_132, i64 %i6
  store i64* %114, i64** %10, align 8
  %_3.i7 = load i64*, i64** %10, align 8
  br label %bb46

bb46:                                             ; preds = %bb45
  %_130 = load i64, i64* %_3.i7, align 8
  %115 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_136 = load i64*, i64** %115, align 1
  %116 = getelementptr inbounds i64, i64* %_136, i64 %i6
  store i64* %116, i64** %11, align 8
  %_3.i = load i64*, i64** %11, align 8
  br label %bb47

bb47:                                             ; preds = %bb46
  %117 = or i64 %_125, %_130
  store i64 %117, i64* %_3.i, align 8
  br label %bb40

bb49:                                             ; preds = %bb48
  %_150 = call i32 @zsignum(%Zahl* align 1 %c)
  br label %bb50

bb50:                                             ; preds = %bb49
  %118 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_148, i32 %_150)
  %_152.0 = extractvalue { i32, i1 } %118, 0
  %_152.1 = extractvalue { i32, i1 } %118, 1
  %119 = call i1 @llvm.expect.i1(i1 %_152.1, i1 false)
  br i1 %119, label %panic, label %bb51

bb51:                                             ; preds = %bb50
  %120 = icmp eq i32 %_152.0, 2
  br i1 %120, label %bb52, label %bb53

panic:                                            ; preds = %bb50
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc47 to %"core::panic::location::Location"*)) #6
  unreachable

bb52:                                             ; preds = %bb51
  store i32 1, i32* %_146, align 4
  br label %bb54

bb53:                                             ; preds = %bb51
  store i32 -1, i32* %_146, align 4
  br label %bb54

bb54:                                             ; preds = %bb53, %bb52
  %121 = bitcast %Zahl* %a to i32*
  %122 = load i32, i32* %_146, align 4
  store i32 %122, i32* %121, align 1
  ret void
}

; Function Attrs: uwtable
define i32 @zsignum(%Zahl* align 1 %z) unnamed_addr #1 {
start:
  %0 = alloca i32, align 4
  %1 = bitcast %Zahl* %z to i32*
  %_3 = load i32, i32* %1, align 1
  %_2 = icmp sgt i32 %_3, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %2 = bitcast %Zahl* %z to i32*
  %_5 = load i32, i32* %2, align 1
  %_4 = icmp slt i32 %_5, 0
  br i1 %_4, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 1, i32* %0, align 4
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4, %bb1
  %3 = load i32, i32* %0, align 4
  ret i32 %3

bb4:                                              ; preds = %bb2
  store i32 0, i32* %0, align 4
  br label %bb5

bb3:                                              ; preds = %bb2
  store i32 -1, i32* %0, align 4
  br label %bb5
}

; Function Attrs: uwtable
define zeroext i1 @zzero(%Zahl* align 1 %z) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %Zahl, %Zahl* %z, i32 0, i32 2
  %_2 = load i64, i64* %0, align 1
  %1 = icmp eq i64 %_2, 0
  ret i1 %1
}

; Function Attrs: uwtable
define void @zset(%Zahl* align 1 %a, %Zahl* align 1 %b) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zmemcpy_range(i64* %a, i64* %b, i64 %n, i64 %m) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

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

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zor.rs.bc", hash: (320651366, 2295805422, 151496270, 3823754944, 850231808))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "_ZN4core3ptr5write17hcaf7d082d308e6c5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 1512904160789055518
^3 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17ha05a9c1181ebe455E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 2052106812169730923
^4 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^5 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8)))) ; guid = 3158052582308686056
^6 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4065003757980865421
^7 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 4303184977375702350
^8 = gv: (name: "alloc44", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4861633263624918869
^9 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 5436943481773832288
^10 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hea1043924b17e00dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 6094021518949415970
^11 = gv: (name: "zor", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 325, calls: ((callee: ^10), (callee: ^22), (callee: ^20), (callee: ^15), (callee: ^13)), refs: (^7, ^17)))) ; guid = 8736019892281208779
^12 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h620d3c59345dbfa1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 9622657775455378858
^13 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^14 = gv: (name: "llvm.sadd.with.overflow.i32") ; guid = 10553262824061260096
^15 = gv: (name: "zmemcpy_range", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 11259928499528947647
^16 = gv: (name: "_ZN4core3mem7replace17ha7d69cd4af2f2e70E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^21), (callee: ^2)), refs: (^19)))) ; guid = 11511676879417168641
^17 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11897497182790559539
^18 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h03da988fa910d80eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 13965860051440534779
^19 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^20 = gv: (name: "zsignum", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17))) ; guid = 15352537659571043505
^21 = gv: (name: "_ZN4core3ptr4read17h1ad816d8f0f5a6c1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 15709170554919715921
^22 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bcc1db2c6f69691E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^24))))) ; guid = 16716916109760828705
^23 = gv: (name: "zset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 17194806963102885160
^24 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h3294ee92e0b70292E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^12), (callee: ^3), (callee: ^18), (callee: ^16))))) ; guid = 17279224589804955304
^25 = blockcount: 94
