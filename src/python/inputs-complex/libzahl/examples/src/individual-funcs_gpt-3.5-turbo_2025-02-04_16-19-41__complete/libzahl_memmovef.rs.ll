; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memmovef.rs.bc'
source_filename = "libzahl_memmovef.b1e88998-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>" = type { { i64, i64 }, i64, i8, [7 x i8] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc22 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc23 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc24 = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"assertion failed: step != 0" }>, align 1
@alloc25 = private unnamed_addr constant <{ [89 x i8] }> <{ [89 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/iter/adapters/step_by.rs" }>, align 1
@alloc26 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [89 x i8] }>, <{ [89 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"Y\00\00\00\00\00\00\00\15\00\00\00\09\00\00\00" }>, align 8
@alloc69 = private unnamed_addr constant <{ [97 x i8] }> <{ [97 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memmovef.rs" }>, align 1
@alloc28 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\08\00\00\00\10\00\00\00" }>, align 8
@alloc30 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\08\00\00\00\09\00\00\00" }>, align 8
@alloc32 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\09\00\00\00\10\00\00\00" }>, align 8
@alloc34 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\09\00\00\00\09\00\00\00" }>, align 8
@alloc36 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0A\00\00\00\10\00\00\00" }>, align 8
@alloc38 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0A\00\00\00\09\00\00\00" }>, align 8
@alloc40 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0D\00\00\00\1A\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc42 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0D\00\00\00\18\00\00\00" }>, align 8
@alloc44 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0D\00\00\00\0F\00\00\00" }>, align 8
@alloc46 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0D\00\00\00\0D\00\00\00" }>, align 8
@alloc48 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0E\00\00\00\1A\00\00\00" }>, align 8
@alloc50 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0E\00\00\00\18\00\00\00" }>, align 8
@alloc52 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0E\00\00\00\0F\00\00\00" }>, align 8
@alloc54 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0E\00\00\00\0D\00\00\00" }>, align 8
@alloc56 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0F\00\00\00\1A\00\00\00" }>, align 8
@alloc58 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0F\00\00\00\18\00\00\00" }>, align 8
@alloc60 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0F\00\00\00\0F\00\00\00" }>, align 8
@alloc62 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0F\00\00\00\0D\00\00\00" }>, align 8
@alloc64 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\10\00\00\00\1A\00\00\00" }>, align 8
@alloc66 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\10\00\00\00\18\00\00\00" }>, align 8
@alloc68 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\10\00\00\00\0F\00\00\00" }>, align 8
@alloc70 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\10\00\00\00\0D\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5d1a0972ed8f43ebE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self, i32 0, i32 2
  %2 = load i8, i8* %1, align 8, !range !1, !noundef !2
  %_2 = trunc i8 %2 to i1
  br i1 %_2, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %_4 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self to { i64, i64 }*
  %3 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %3, align 8
  %4 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$3nth17hd9c392fce150ed3aE"({ i64, i64 }* align 8 %_4, i64 %_5)
  store { i64, i64 } %4, { i64, i64 }* %0, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %5 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self, i32 0, i32 2
  store i8 0, i8* %5, align 8
  %_3 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self to { i64, i64 }*
  %6 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha20fdf968b87c117E"({ i64, i64 }* align 8 %_3)
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !range !3, !noundef !2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb4:                                              ; preds = %bb3
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$15forward_checked17hf1a64c89fc194357E"(i64 %start1, i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca i64, align 8
  %0 = call i64 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h5438c1d0dea13edeE"(i64 %n)
  store i64 %0, i64* %_3, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %n2 = load i64, i64* %_3, align 8
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h4c6bf85f03158e53E"(i64 %start1, i64 %n2)
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { i64, i64 } undef, i64 %2, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h0e5fb177b28b2010E"(i64 %start1, i64 %n) unnamed_addr #0 {
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
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h7637a6f7bb613068E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h585b6ad616eac771E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h63a30d7b578e4908E(i64* %dest)
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
  invoke void @_ZN4core3ptr5write17hb99a16b94f579b68E(i64* %dest, i64 %src)
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
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h4c6bf85f03158e53E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %0 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i8 }, align 8
  %2 = alloca i8, align 1
  %3 = alloca { i64, i64 }, align 8
  %4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %rhs)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = zext i1 %6 to i8
  %8 = bitcast { i64, i8 }* %0 to i64*
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %7, i8* %9, align 8
  %10 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  %_5.0.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 8, !range !1, !noundef !2
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !1, !noundef !2
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i8
  %22 = insertvalue { i64, i8 } undef, i64 %17, 0
  %23 = insertvalue { i64, i8 } %22, i8 %21, 1
  %_5.0 = extractvalue { i64, i8 } %23, 0
  %24 = extractvalue { i64, i8 } %23, 1
  %_5.1 = trunc i8 %24 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %25 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %2, align 1
  %27 = load i8, i8* %2, align 1, !range !1, !noundef !2
  %_8 = trunc i8 %27 to i1
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_5.0, i64* %28, align 8
  %29 = bitcast { i64, i64 }* %3 to i64*
  store i64 1, i64* %29, align 8
  br label %bb5

bb3:                                              ; preds = %bb2
  %30 = bitcast { i64, i64 }* %3 to i64*
  store i64 0, i64* %30, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8, !range !3, !noundef !2
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17h63a30d7b578e4908E(i64* %src) unnamed_addr #0 {
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
define void @_ZN4core3ptr5write17hb99a16b94f579b68E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$3nth17hd9c392fce150ed3aE"({ i64, i64 }* align 8 %self, i64 %n) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$8spec_nth17heac7c5fedb5c8eb3E"({ i64, i64 }* align 8 %self, i64 %n)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha20fdf968b87c117E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h58fdc468834f9385E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7step_by17h5b4c332767265254E(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, i64 %self.0, i64 %self.1, i64 %step) unnamed_addr #0 {
start:
  call void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17ha8cdbed8cc5dbf44E"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, i64 %self.0, i64 %self.1, i64 %step)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17ha8cdbed8cc5dbf44E"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, i64 %iter.0, i64 %iter.1, i64 %step) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_4 = icmp ne i64 %step, 0
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_8 = sub i64 %step, 1
  %2 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %0 to { i64, i64 }*
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  store i64 %iter.0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %iter.1, i64* %4, align 8
  %5 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %0, i32 0, i32 1
  store i64 %_8, i64* %5, align 8
  %6 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %0, i32 0, i32 2
  store i8 1, i8* %6, align 8
  ret void

bb1:                                              ; preds = %start
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [27 x i8] }>* @alloc24 to [0 x i8]*), i64 27, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc26 to %"core::panic::location::Location"*)) #6
          to label %unreachable unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb3

unreachable:                                      ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb3
  %12 = bitcast { i8*, i32 }* %1 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h5297d991caba4c94E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: uwtable
define i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h966b0e61d8a94abdE"(i64 %t) unnamed_addr #1 {
start:
  ret i64 %t
}

; Function Attrs: uwtable
define i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h767fb6e71d4c6210E"(i64 %self) unnamed_addr #1 {
start:
  %0 = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h966b0e61d8a94abdE"(i64 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: uwtable
define i64 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h5438c1d0dea13edeE"(i64 %value) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %_2 = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h767fb6e71d4c6210E"(i64 %value)
  br label %bb1

bb1:                                              ; preds = %start
  store i64 %_2, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4e6fdf675537db4cE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %0 to i8*
  %2 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$8spec_nth17heac7c5fedb5c8eb3E"({ i64, i64 }* align 8 %self, i64 %n) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %plus_n = alloca i64, align 8
  %_3 = alloca { i64, i64 }, align 8
  %1 = alloca { i64, i64 }, align 8
  %_5 = bitcast { i64, i64 }* %self to i64*
  %_4 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h5297d991caba4c94E"(i64* align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  store i8 1, i8* %_18, align 1
  %2 = call { i64, i64 } @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$15forward_checked17hf1a64c89fc194357E"(i64 %_4, i64 %n)
  store { i64, i64 } %2, { i64, i64 }* %_3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast { i64, i64 }* %_3 to i64*
  %_7 = load i64, i64* %3, align 8, !range !3, !noundef !2
  %4 = icmp eq i64 %_7, 1
  br i1 %4, label %bb3, label %bb19

bb3:                                              ; preds = %bb2
  store i8 0, i8* %_18, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %plus_n, align 8
  %_11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_9 = invoke zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h7637a6f7bb613068E"(i64* align 8 %plus_n, i64* align 8 %_11)
          to label %bb4 unwind label %cleanup

bb19:                                             ; preds = %bb9, %bb2
  %7 = bitcast { i64, i64 }* %_3 to i64*
  %_19 = load i64, i64* %7, align 8, !range !3, !noundef !2
  %8 = icmp eq i64 %_19, 1
  br i1 %8, label %bb17, label %bb16

bb12:                                             ; preds = %bb14, %cleanup
  br label %bb13

cleanup:                                          ; preds = %bb6, %bb5, %bb3
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb12

bb4:                                              ; preds = %bb3
  br i1 %_9, label %bb5, label %bb8

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %_13 = invoke i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h5297d991caba4c94E"(i64* align 8 %plus_n)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12 = invoke i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h0e5fb177b28b2010E"(i64 %_13, i64 1)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  br label %bb15

bb15:                                             ; preds = %bb7
  %14 = bitcast { i64, i64 }* %self to i64*
  store i64 %_12, i64* %14, align 8
  %_15 = load i64, i64* %plus_n, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 %_15, i64* %15, align 8
  %16 = bitcast { i64, i64 }* %1 to i64*
  store i64 1, i64* %16, align 8
  br label %bb11

bb14:                                             ; No predecessors!
  %17 = bitcast { i64, i64 }* %self to i64*
  store i64 %_12, i64* %17, align 8
  br label %bb12

bb13:                                             ; preds = %bb20, %bb12
  %18 = bitcast { i8*, i32 }* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb11:                                             ; preds = %bb21, %bb15
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %25 = load i64, i64* %24, align 8, !range !3, !noundef !2
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = insertvalue { i64, i64 } undef, i64 %25, 0
  %29 = insertvalue { i64, i64 } %28, i64 %27, 1
  ret { i64, i64 } %29

bb9:                                              ; preds = %bb8
  br label %bb19

bb17:                                             ; preds = %bb19
  %30 = load i8, i8* %_18, align 1, !range !1, !noundef !2
  %31 = trunc i8 %30 to i1
  br i1 %31, label %bb18, label %bb16

bb16:                                             ; preds = %bb18, %bb17, %bb19
  %_17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_16 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h5297d991caba4c94E"(i64* align 8 %_17)
  br label %bb10

bb18:                                             ; preds = %bb17
  br label %bb16

bb10:                                             ; preds = %bb16
  br label %bb21

bb21:                                             ; preds = %bb10
  %32 = bitcast { i64, i64 }* %self to i64*
  store i64 %_16, i64* %32, align 8
  %33 = bitcast { i64, i64 }* %1 to i64*
  store i64 0, i64* %33, align 8
  br label %bb11

bb20:                                             ; No predecessors!
  %34 = bitcast { i64, i64 }* %self to i64*
  store i64 %_16, i64* %34, align 8
  br label %bb13
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h58fdc468834f9385E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h7637a6f7bb613068E"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h5297d991caba4c94E"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h0e5fb177b28b2010E"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17h585b6ad616eac771E(i64* align 8 %_10, i64 %n)
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
define void @libzahl_memmovef([0 x i64]* align 8 %d.0, i64 %d.1, [0 x i64]* align 8 %s.0, i64 %s.1, i64 %n) unnamed_addr #1 {
start:
  %_35 = alloca { i64, i64 }, align 8
  %iter = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", align 8
  %_32 = alloca { i64, i64 }, align 8
  %_31 = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", align 8
  %_30 = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", align 8
  %_4 = alloca i8, align 1
  %_5 = icmp ugt i64 %n, 0
  br i1 %_5, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %_4, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %_7 = icmp ult i64 %n, 4
  %0 = zext i1 %_7 to i8
  store i8 %0, i8* %_4, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %1 = load i8, i8* %_4, align 1, !range !1, !noundef !2
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb4, label %bb11

bb11:                                             ; preds = %bb3
  %3 = bitcast { i64, i64 }* %_32 to i64*
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_32, i32 0, i32 1
  store i64 %n, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_32, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_32, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  call void @_ZN4core4iter6traits8iterator8Iterator7step_by17h5b4c332767265254E(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %_31, i64 %6, i64 %8, i64 4)
  br label %bb12

bb4:                                              ; preds = %bb3
  %_12 = icmp ult i64 0, %s.1
  %9 = call i1 @llvm.expect.i1(i1 %_12, i1 true)
  br i1 %9, label %bb5, label %panic

bb5:                                              ; preds = %bb4
  %10 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 0
  %_9 = load i64, i64* %10, align 8
  %_15 = icmp ult i64 0, %d.1
  %11 = call i1 @llvm.expect.i1(i1 %_15, i1 true)
  br i1 %11, label %bb6, label %panic1

panic:                                            ; preds = %bb4
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc28 to %"core::panic::location::Location"*)) #6
  unreachable

bb6:                                              ; preds = %bb5
  %12 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 0
  store i64 %_9, i64* %12, align 8
  %_19 = icmp ult i64 1, %s.1
  %13 = call i1 @llvm.expect.i1(i1 %_19, i1 true)
  br i1 %13, label %bb7, label %panic2

panic1:                                           ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc30 to %"core::panic::location::Location"*)) #6
  unreachable

bb7:                                              ; preds = %bb6
  %14 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 1
  %_16 = load i64, i64* %14, align 8
  %_22 = icmp ult i64 1, %d.1
  %15 = call i1 @llvm.expect.i1(i1 %_22, i1 true)
  br i1 %15, label %bb8, label %panic3

panic2:                                           ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc32 to %"core::panic::location::Location"*)) #6
  unreachable

bb8:                                              ; preds = %bb7
  %16 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 1
  store i64 %_16, i64* %16, align 8
  %_26 = icmp ult i64 2, %s.1
  %17 = call i1 @llvm.expect.i1(i1 %_26, i1 true)
  br i1 %17, label %bb9, label %panic4

panic3:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc34 to %"core::panic::location::Location"*)) #6
  unreachable

bb9:                                              ; preds = %bb8
  %18 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 2
  %_23 = load i64, i64* %18, align 8
  %_29 = icmp ult i64 2, %d.1
  %19 = call i1 @llvm.expect.i1(i1 %_29, i1 true)
  br i1 %19, label %bb10, label %panic5

panic4:                                           ; preds = %bb8
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc36 to %"core::panic::location::Location"*)) #6
  unreachable

bb10:                                             ; preds = %bb9
  %20 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 2
  store i64 %_23, i64* %20, align 8
  br label %bb34

panic5:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc38 to %"core::panic::location::Location"*)) #6
  unreachable

bb34:                                             ; preds = %bb15, %bb10
  ret void

bb12:                                             ; preds = %bb11
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4e6fdf675537db4cE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %_30, %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %_31)
  br label %bb13

bb13:                                             ; preds = %bb12
  %21 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %iter to i8*
  %22 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %_30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false)
  br label %bb14

bb14:                                             ; preds = %bb33, %bb13
  %23 = call { i64, i64 } @"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5d1a0972ed8f43ebE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* align 8 %iter)
  store { i64, i64 } %23, { i64, i64 }* %_35, align 8
  br label %bb15

bb15:                                             ; preds = %bb14
  %24 = bitcast { i64, i64 }* %_35 to i64*
  %_38 = load i64, i64* %24, align 8, !range !3, !noundef !2
  switch i64 %_38, label %bb17 [
    i64 0, label %bb34
    i64 1, label %bb16
  ]

bb17:                                             ; preds = %bb15
  unreachable

bb16:                                             ; preds = %bb15
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_35, i32 0, i32 1
  %i = load i64, i64* %25, align 8
  %26 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 0)
  %_43.0 = extractvalue { i64, i1 } %26, 0
  %_43.1 = extractvalue { i64, i1 } %26, 1
  %27 = call i1 @llvm.expect.i1(i1 %_43.1, i1 false)
  br i1 %27, label %panic6, label %bb18

bb18:                                             ; preds = %bb16
  %_45 = icmp ult i64 %_43.0, %s.1
  %28 = call i1 @llvm.expect.i1(i1 %_45, i1 true)
  br i1 %28, label %bb19, label %panic7

panic6:                                           ; preds = %bb16
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc40 to %"core::panic::location::Location"*)) #6
  unreachable

bb19:                                             ; preds = %bb18
  %29 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_43.0
  %_40 = load i64, i64* %29, align 8
  %30 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 0)
  %_48.0 = extractvalue { i64, i1 } %30, 0
  %_48.1 = extractvalue { i64, i1 } %30, 1
  %31 = call i1 @llvm.expect.i1(i1 %_48.1, i1 false)
  br i1 %31, label %panic8, label %bb20

panic7:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_43.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc42 to %"core::panic::location::Location"*)) #6
  unreachable

bb20:                                             ; preds = %bb19
  %_50 = icmp ult i64 %_48.0, %d.1
  %32 = call i1 @llvm.expect.i1(i1 %_50, i1 true)
  br i1 %32, label %bb21, label %panic9

panic8:                                           ; preds = %bb19
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc44 to %"core::panic::location::Location"*)) #6
  unreachable

bb21:                                             ; preds = %bb20
  %33 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_48.0
  store i64 %_40, i64* %33, align 8
  %34 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 1)
  %_54.0 = extractvalue { i64, i1 } %34, 0
  %_54.1 = extractvalue { i64, i1 } %34, 1
  %35 = call i1 @llvm.expect.i1(i1 %_54.1, i1 false)
  br i1 %35, label %panic10, label %bb22

panic9:                                           ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_48.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc46 to %"core::panic::location::Location"*)) #6
  unreachable

bb22:                                             ; preds = %bb21
  %_56 = icmp ult i64 %_54.0, %s.1
  %36 = call i1 @llvm.expect.i1(i1 %_56, i1 true)
  br i1 %36, label %bb23, label %panic11

panic10:                                          ; preds = %bb21
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc48 to %"core::panic::location::Location"*)) #6
  unreachable

bb23:                                             ; preds = %bb22
  %37 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_54.0
  %_51 = load i64, i64* %37, align 8
  %38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 1)
  %_59.0 = extractvalue { i64, i1 } %38, 0
  %_59.1 = extractvalue { i64, i1 } %38, 1
  %39 = call i1 @llvm.expect.i1(i1 %_59.1, i1 false)
  br i1 %39, label %panic12, label %bb24

panic11:                                          ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_54.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc50 to %"core::panic::location::Location"*)) #6
  unreachable

bb24:                                             ; preds = %bb23
  %_61 = icmp ult i64 %_59.0, %d.1
  %40 = call i1 @llvm.expect.i1(i1 %_61, i1 true)
  br i1 %40, label %bb25, label %panic13

panic12:                                          ; preds = %bb23
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc52 to %"core::panic::location::Location"*)) #6
  unreachable

bb25:                                             ; preds = %bb24
  %41 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_59.0
  store i64 %_51, i64* %41, align 8
  %42 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 2)
  %_65.0 = extractvalue { i64, i1 } %42, 0
  %_65.1 = extractvalue { i64, i1 } %42, 1
  %43 = call i1 @llvm.expect.i1(i1 %_65.1, i1 false)
  br i1 %43, label %panic14, label %bb26

panic13:                                          ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_59.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc54 to %"core::panic::location::Location"*)) #6
  unreachable

bb26:                                             ; preds = %bb25
  %_67 = icmp ult i64 %_65.0, %s.1
  %44 = call i1 @llvm.expect.i1(i1 %_67, i1 true)
  br i1 %44, label %bb27, label %panic15

panic14:                                          ; preds = %bb25
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc56 to %"core::panic::location::Location"*)) #6
  unreachable

bb27:                                             ; preds = %bb26
  %45 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_65.0
  %_62 = load i64, i64* %45, align 8
  %46 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 2)
  %_70.0 = extractvalue { i64, i1 } %46, 0
  %_70.1 = extractvalue { i64, i1 } %46, 1
  %47 = call i1 @llvm.expect.i1(i1 %_70.1, i1 false)
  br i1 %47, label %panic16, label %bb28

panic15:                                          ; preds = %bb26
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_65.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc58 to %"core::panic::location::Location"*)) #6
  unreachable

bb28:                                             ; preds = %bb27
  %_72 = icmp ult i64 %_70.0, %d.1
  %48 = call i1 @llvm.expect.i1(i1 %_72, i1 true)
  br i1 %48, label %bb29, label %panic17

panic16:                                          ; preds = %bb27
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc60 to %"core::panic::location::Location"*)) #6
  unreachable

bb29:                                             ; preds = %bb28
  %49 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_70.0
  store i64 %_62, i64* %49, align 8
  %50 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 3)
  %_76.0 = extractvalue { i64, i1 } %50, 0
  %_76.1 = extractvalue { i64, i1 } %50, 1
  %51 = call i1 @llvm.expect.i1(i1 %_76.1, i1 false)
  br i1 %51, label %panic18, label %bb30

panic17:                                          ; preds = %bb28
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_70.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc62 to %"core::panic::location::Location"*)) #6
  unreachable

bb30:                                             ; preds = %bb29
  %_78 = icmp ult i64 %_76.0, %s.1
  %52 = call i1 @llvm.expect.i1(i1 %_78, i1 true)
  br i1 %52, label %bb31, label %panic19

panic18:                                          ; preds = %bb29
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc64 to %"core::panic::location::Location"*)) #6
  unreachable

bb31:                                             ; preds = %bb30
  %53 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_76.0
  %_73 = load i64, i64* %53, align 8
  %54 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 3)
  %_81.0 = extractvalue { i64, i1 } %54, 0
  %_81.1 = extractvalue { i64, i1 } %54, 1
  %55 = call i1 @llvm.expect.i1(i1 %_81.1, i1 false)
  br i1 %55, label %panic20, label %bb32

panic19:                                          ; preds = %bb30
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_76.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc66 to %"core::panic::location::Location"*)) #6
  unreachable

bb32:                                             ; preds = %bb31
  %_83 = icmp ult i64 %_81.0, %d.1
  %56 = call i1 @llvm.expect.i1(i1 %_83, i1 true)
  br i1 %56, label %bb33, label %panic21

panic20:                                          ; preds = %bb31
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc68 to %"core::panic::location::Location"*)) #6
  unreachable

bb33:                                             ; preds = %bb32
  %57 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_81.0
  store i64 %_73, i64* %57, align 8
  br label %bb14

panic21:                                          ; preds = %bb32
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_81.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc70 to %"core::panic::location::Location"*)) #6
  unreachable
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memmovef.rs.bc", hash: (568477739, 2741722122, 2357549194, 3745023121, 3223657723))
^1 = gv: (name: "alloc58", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 25763614722909289
^2 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h58fdc468834f9385E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^32), (callee: ^19), (callee: ^46), (callee: ^52))))) ; guid = 606403024400804510
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$15forward_checked17hf1a64c89fc194357E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^45), (callee: ^38))))) ; guid = 779878071779485533
^5 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2241920564919762605
^6 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^7 = gv: (name: "alloc32", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 3417099066567083978
^8 = gv: (name: "_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5d1a0972ed8f43ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, calls: ((callee: ^16), (callee: ^50))))) ; guid = 4236700201690128909
^9 = gv: (name: "alloc42", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 4686661342095672298
^10 = gv: (name: "alloc30", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 4917290397768000012
^11 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^24)))) ; guid = 5346832712084560689
^12 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$8spec_nth17heac7c5fedb5c8eb3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 82, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^19), (callee: ^4), (callee: ^32), (callee: ^46)), refs: (^41)))) ; guid = 5611178001714510833
^13 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 5746012957238532495
^14 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6250972773537753640
^15 = gv: (name: "alloc69", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6297079616118165890
^16 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$3nth17hd9c392fce150ed3aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^12))))) ; guid = 6509900341379297586
^17 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h767fb6e71d4c6210E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^51))))) ; guid = 6730260341967256482
^18 = gv: (name: "alloc50", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 6957501655125900647
^19 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h5297d991caba4c94E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 7063696142670543824
^20 = gv: (name: "alloc68", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 7723590374662024870
^21 = gv: (name: "alloc70", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 7974680006192894295
^22 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8399934163843829332
^23 = gv: (name: "alloc54", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 8551350235894268094
^24 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9243455415495309855
^25 = gv: (name: "_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17ha8cdbed8cc5dbf44E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^26)), refs: (^41, ^11, ^5)))) ; guid = 10181278297146095279
^26 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^27 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 10289656141580678980
^28 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^14)))) ; guid = 10473693716022294924
^29 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 11093106352163673622
^30 = gv: (name: "_ZN4core3ptr4read17h63a30d7b578e4908E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 11329982964348925203
^31 = gv: (name: "alloc56", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 11687804428084087463
^32 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h7637a6f7bb613068E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 12392377284068356643
^33 = gv: (name: "alloc66", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 12527174325277030276
^34 = gv: (name: "alloc38", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 12528809344145313422
^35 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4e6fdf675537db4cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 13212998412743186257
^36 = gv: (name: "alloc60", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 13620488969333116167
^37 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 13803004130625184335
^38 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h4c6bf85f03158e53E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 14322909983735371026
^39 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^40 = gv: (name: "alloc64", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 14434131815029808823
^41 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^42 = gv: (name: "libzahl_memmovef", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 199, calls: ((callee: ^47), (callee: ^55), (callee: ^35), (callee: ^8), (callee: ^26)), refs: (^27, ^10, ^7, ^29, ^54, ^34, ^13, ^22, ^9, ^49, ^37, ^53, ^18, ^48, ^23, ^31, ^1, ^36, ^43, ^40, ^33, ^20, ^21)))) ; guid = 15033369382802882788
^43 = gv: (name: "alloc62", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 15275205354253471179
^44 = gv: (name: "_ZN4core3ptr5write17hb99a16b94f579b68E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 15508375392104711643
^45 = gv: (name: "_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h5438c1d0dea13edeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^17))))) ; guid = 15862242197630253413
^46 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h0e5fb177b28b2010E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 15973723957275342641
^47 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator7step_by17h5b4c332767265254E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^25))))) ; guid = 16314420699844046324
^48 = gv: (name: "alloc52", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 16709239139242347894
^49 = gv: (name: "alloc44", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 16733269833129729847
^50 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha20fdf968b87c117E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^2))))) ; guid = 17128178528221426036
^51 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h966b0e61d8a94abdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 17232851439350571983
^52 = gv: (name: "_ZN4core3mem7replace17h585b6ad616eac771E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^30), (callee: ^44)), refs: (^41)))) ; guid = 17342225480350578364
^53 = gv: (name: "alloc48", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 17437525725679379051
^54 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 17447223139028608377
^55 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^56 = blockcount: 140
