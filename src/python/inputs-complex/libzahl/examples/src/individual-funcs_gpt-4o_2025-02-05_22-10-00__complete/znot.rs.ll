; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/znot.rs.bc'
source_filename = "znot.02650d54-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>" = type { { i64, i64 }, i64, i8, [7 x i8] }
%"core::ptr::metadata::PtrRepr<[u64]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"alloc::vec::Vec<u64>" = type { { i64*, i64 }, i64 }
%Zahl = type <{ i32, i32, i64, i64, %"alloc::vec::Vec<u64>" }>
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc34 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc35 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc34, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc36 = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"assertion failed: step != 0" }>, align 1
@alloc37 = private unnamed_addr constant <{ [89 x i8] }> <{ [89 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/iter/adapters/step_by.rs" }>, align 1
@alloc38 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [89 x i8] }>, <{ [89 x i8] }>* @alloc37, i32 0, i32 0, i32 0), [16 x i8] c"Y\00\00\00\00\00\00\00\15\00\00\00\09\00\00\00" }>, align 8
@alloc83 = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/znot.rs" }>, align 1
@alloc40 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\009\00\00\00\11\00\00\00" }>, align 8
@str.0 = internal constant [31 x i8] c"attempt to negate with overflow"
@alloc42 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00?\00\00\00!\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc44 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00?\00\00\00\1D\00\00\00" }>, align 8
@alloc46 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00?\00\00\00\11\00\00\00" }>, align 8
@alloc48 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00?\00\00\00\0D\00\00\00" }>, align 8
@alloc50 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00@\00\00\00!\00\00\00" }>, align 8
@alloc52 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00@\00\00\00\1D\00\00\00" }>, align 8
@alloc54 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00@\00\00\00\11\00\00\00" }>, align 8
@alloc56 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00@\00\00\00\0D\00\00\00" }>, align 8
@alloc58 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00A\00\00\00!\00\00\00" }>, align 8
@alloc60 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00A\00\00\00\1D\00\00\00" }>, align 8
@alloc62 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00A\00\00\00\11\00\00\00" }>, align 8
@alloc64 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00A\00\00\00\0D\00\00\00" }>, align 8
@alloc66 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00B\00\00\00!\00\00\00" }>, align 8
@alloc68 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00B\00\00\00\1D\00\00\00" }>, align 8
@alloc70 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00B\00\00\00\11\00\00\00" }>, align 8
@alloc72 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00B\00\00\00\0D\00\00\00" }>, align 8
@alloc74 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00G\00\00\00&\00\00\00" }>, align 8
@str.2 = internal constant [35 x i8] c"attempt to shift left with overflow"
@str.3 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc76 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00G\00\00\00\14\00\00\00" }>, align 8
@alloc78 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00G\00\00\00\09\00\00\00" }>, align 8
@alloc80 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00I\00\00\00(\00\00\00" }>, align 8
@alloc82 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00I\00\00\00\1D\00\00\00" }>, align 8
@alloc84 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc83, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00J\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he274d288dfaeeb4bE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* align 8 %self) unnamed_addr #0 {
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
  %4 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$3nth17h89e3fdf185475b73E"({ i64, i64 }* align 8 %_4, i64 %_5)
  store { i64, i64 } %4, { i64, i64 }* %0, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %5 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self, i32 0, i32 2
  store i8 0, i8* %5, align 8
  %_3 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self to { i64, i64 }*
  %6 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hdf06db7df529c586E"({ i64, i64 }* align 8 %_3)
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
define internal { i64, i64 } @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$15forward_checked17h3456a1301fcade5eE"(i64 %start1, i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca i64, align 8
  %0 = call i64 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h9e1e367c9829de12E"(i64 %n)
  store i64 %0, i64* %_3, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %n2 = load i64, i64* %_3, align 8
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h63302f05b7737a84E"(i64 %start1, i64 %n2)
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { i64, i64 } undef, i64 %2, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h9fa4591e1b5d1b92E"(i64 %start1, i64 %n) unnamed_addr #0 {
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
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17he837860a8daa26aeE"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h322e411eac3bf4a5E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h0a57cbe1699de446E(i64* %dest)
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
  invoke void @_ZN4core3ptr5write17h42f05608df0aae44E(i64* %dest, i64 %src)
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
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h63302f05b7737a84E"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
define { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h6748e43900ac1402E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h718b35a7440193bfE"(i64* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h2863c8e4a90c2773E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i64]*, i64 } %0, 0
  %2 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %1, 0
  %4 = insertvalue { [0 x i64]*, i64 } %3, i64 %2, 1
  ret { [0 x i64]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17heaf93da2d5b0567bE(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i64* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hc2dad9baa64e28cfE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17h0a57cbe1699de446E(i64* %src) unnamed_addr #0 {
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
define void @_ZN4core3ptr5write17h42f05608df0aae44E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2dd2852c3ff518cbE"(i64* %self) unnamed_addr #0 {
start:
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd913072a2846531eE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h90a60dc080c89552E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h43639570e063e175E"(i64* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast i64* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2d8119f6e1da54d0E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h90a60dc080c89552E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h2863c8e4a90c2773E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u64]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { [0 x i64]*, i64 }*
  %10 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i64]*, [0 x i64]** %10, align 8
  %12 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %11, 0
  %15 = insertvalue { [0 x i64]*, i64 } %14, i64 %13, 1
  ret { [0 x i64]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2d8119f6e1da54d0E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i64]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hc2dad9baa64e28cfE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u64]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u64]>"* %_3 to { [0 x i64]*, i64 }*
  %10 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i64]*, [0 x i64]** %10, align 8
  %12 = getelementptr inbounds { [0 x i64]*, i64 }, { [0 x i64]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %11, 0
  %15 = insertvalue { [0 x i64]*, i64 } %14, i64 %13, 1
  ret { [0 x i64]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd913072a2846531eE"(i64* %self) unnamed_addr #0 {
start:
  ret i64* %self
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h718b35a7440193bfE"(i64* %self) unnamed_addr #0 {
start:
  %0 = bitcast i64* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$3nth17h89e3fdf185475b73E"({ i64, i64 }* align 8 %self, i64 %n) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$8spec_nth17h2269c6f9d465c7d0E"({ i64, i64 }* align 8 %self, i64 %n)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hdf06db7df529c586E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hdbfa3165af310dc9E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7step_by17h612c6c5e5e3d1ca1E(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, i64 %self.0, i64 %self.1, i64 %step) unnamed_addr #0 {
start:
  call void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17h18a4351e8d3a121aE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, i64 %self.0, i64 %self.1, i64 %step)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17h18a4351e8d3a121aE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, i64 %iter.0, i64 %iter.1, i64 %step) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [27 x i8] }>* @alloc36 to [0 x i8]*), i64 27, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc38 to %"core::panic::location::Location"*)) #7
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
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h38fb80a50116c383E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hf9274389a1f7aedaE(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h6748e43900ac1402E(i64* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h51fc79a51c25e665E(i64* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i64]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17heaf93da2d5b0567bE(i64* %data, i64 %len)
  %_7.0 = extractvalue { [0 x i64]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i64]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_7.0, 0
  %2 = insertvalue { [0 x i64]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x i64]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hcdd99086ad6176f4E"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h040746c39691e915E"(i64 %index, [0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17ha5dda9d563765089E"([0 x i64]* align 8 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = call align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hccd31bdb76f8eae0E"(i64 %index, [0 x i64]* align 8 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %_4
}

; Function Attrs: uwtable
define i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h24fac4ad4fe91805E"(i64 %t) unnamed_addr #1 {
start:
  ret i64 %t
}

; Function Attrs: uwtable
define i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h17462029931904d5E"(i64 %self) unnamed_addr #1 {
start:
  %0 = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h24fac4ad4fe91805E"(i64 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: uwtable
define i64 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h9e1e367c9829de12E"(i64 %value) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %_2 = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h17462029931904d5E"(i64 %value)
  br label %bb1

bb1:                                              ; preds = %start
  store i64 %_2, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hcbd4d29197c4bb19E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h8ea07f4910c5e015E"({ i64*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h43639570e063e175E"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h79d3e52a2f903325E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u64>"* %self to { i64*, i64 }*
  %ptr = call i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h8ea07f4910c5e015E"({ i64*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h43639570e063e175E"(i64* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %ptr
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h8ea07f4910c5e015E"({ i64*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64*, i64 }* %self to i64**
  %_2 = load i64*, i64** %0, align 8, !nonnull !2, !noundef !2
  %1 = call i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2dd2852c3ff518cbE"(i64* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h62e06258e9e638edE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %0 to i8*
  %2 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h50a3c6bfd93b5b54E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h79d3e52a2f903325E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hf9274389a1f7aedaE(i64* %_2, i64 %_4)
  %2 = extractvalue { [0 x i64]*, i64 } %1, 0
  %3 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %2, 0
  %5 = insertvalue { [0 x i64]*, i64 } %4, i64 %3, 1
  ret { [0 x i64]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i64]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h09cb47d566ace076E"(%"alloc::vec::Vec<u64>"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = call i64* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hcbd4d29197c4bb19E"(%"alloc::vec::Vec<u64>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u64>", %"alloc::vec::Vec<u64>"* %self, i32 0, i32 1
  %_7 = load i64, i64* %0, align 8
  %1 = call { [0 x i64]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h51fc79a51c25e665E(i64* %_5, i64 %_7)
  %_4.0 = extractvalue { [0 x i64]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i64]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i64]*, i64 } undef, [0 x i64]* %_4.0, 0
  %3 = insertvalue { [0 x i64]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i64]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h040746c39691e915E"(i64 %self, [0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_5 = icmp ult i64 %self, %slice.1
  %1 = call i1 @llvm.expect.i1(i1 %_5, i1 true)
  br i1 %1, label %bb1, label %panic

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds [0 x i64], [0 x i64]* %slice.0, i64 0, i64 %self
  ret i64* %2

panic:                                            ; preds = %start
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #7
  unreachable
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hccd31bdb76f8eae0E"(i64 %self, [0 x i64]* align 8 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_7 = icmp ult i64 %self, %slice.1
  %1 = call i1 @llvm.expect.i1(i1 %_7, i1 true)
  br i1 %1, label %bb1, label %panic

bb1:                                              ; preds = %start
  %_4 = getelementptr inbounds [0 x i64], [0 x i64]* %slice.0, i64 0, i64 %self
  ret i64* %_4

panic:                                            ; preds = %start
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #7
  unreachable
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h38a5b2dfdcd0dff3E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  store i8 1, i8* %_8, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h50a3c6bfd93b5b54E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_8, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_5.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_8, align 1
  %10 = invoke align 8 i64* @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hcdd99086ad6176f4E"([0 x i64]* align 8 %_5.0, i64 %_5.1, i64 %index, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret i64* %10

bb3:                                              ; preds = %bb4, %bb5
  %11 = bitcast { i8*, i32 }* %1 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8bfa5b21106b89f9E"(%"alloc::vec::Vec<u64>"* align 8 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  store i8 1, i8* %_10, align 1
  %2 = invoke { [0 x i64]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h09cb47d566ace076E"(%"alloc::vec::Vec<u64>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_10, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_7.0 = extractvalue { [0 x i64]*, i64 } %2, 0
  %_7.1 = extractvalue { [0 x i64]*, i64 } %2, 1
  store i8 0, i8* %_10, align 1
  %_4 = invoke align 8 i64* @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17ha5dda9d563765089E"([0 x i64]* align 8 %_7.0, i64 %_7.1, i64 %index, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret i64* %_4

bb3:                                              ; preds = %bb4, %bb5
  %10 = bitcast { i8*, i32 }* %1 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$8spec_nth17h2269c6f9d465c7d0E"({ i64, i64 }* align 8 %self, i64 %n) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %plus_n = alloca i64, align 8
  %_3 = alloca { i64, i64 }, align 8
  %1 = alloca { i64, i64 }, align 8
  %_5 = bitcast { i64, i64 }* %self to i64*
  %_4 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h38fb80a50116c383E"(i64* align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  store i8 1, i8* %_18, align 1
  %2 = call { i64, i64 } @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$15forward_checked17h3456a1301fcade5eE"(i64 %_4, i64 %n)
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
  %_9 = invoke zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17he837860a8daa26aeE"(i64* align 8 %plus_n, i64* align 8 %_11)
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
  %_13 = invoke i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h38fb80a50116c383E"(i64* align 8 %plus_n)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12 = invoke i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h9fa4591e1b5d1b92E"(i64 %_13, i64 1)
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
  %_16 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h38fb80a50116c383E"(i64* align 8 %_17)
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
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hdbfa3165af310dc9E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17he837860a8daa26aeE"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h38fb80a50116c383E"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h9fa4591e1b5d1b92E"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17h322e411eac3bf4a5E(i64* align 8 %_10, i64 %n)
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
define void @znot([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  %_91 = alloca i8, align 1
  %_27 = alloca { i64, i64 }, align 8
  %iter = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", align 8
  %_24 = alloca { i64, i64 }, align 8
  %_23 = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", align 8
  %_22 = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", align 8
  %bits = alloca i64, align 8
  %_4 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %b)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_7 = call i64 @zbits([1 x %Zahl]* align 1 %b)
  br label %bb4

bb2:                                              ; preds = %bb1
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %1 = bitcast %Zahl* %0 to i32*
  store i32 0, i32* %1, align 1
  br label %bb45

bb45:                                             ; preds = %bb44, %bb43, %bb2
  ret void

bb4:                                              ; preds = %bb3
  store i64 %_7, i64* %bits, align 8
  %2 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %3 = getelementptr inbounds %Zahl, %Zahl* %2, i32 0, i32 2
  %_9 = load i64, i64* %3, align 1
  %4 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %5 = getelementptr inbounds %Zahl, %Zahl* %4, i32 0, i32 2
  store i64 %_9, i64* %5, align 1
  %_12 = call i32 @zsignum([1 x %Zahl]* align 1 %b)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_14 = icmp eq i32 %_12, -2147483648
  %6 = call i1 @llvm.expect.i1(i1 %_14, i1 false)
  br i1 %6, label %panic, label %bb6

bb6:                                              ; preds = %bb5
  %7 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %8 = bitcast %Zahl* %7 to i32*
  %9 = sub i32 0, %_12
  store i32 %9, i32* %8, align 1
  %10 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %a__ = getelementptr inbounds %Zahl, %Zahl* %10, i32 0, i32 4
  %11 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %b__ = getelementptr inbounds %Zahl, %Zahl* %11, i32 0, i32 4
  %12 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %13 = getelementptr inbounds %Zahl, %Zahl* %12, i32 0, i32 2
  %n__ = load i64, i64* %13, align 1
  %14 = bitcast { i64, i64 }* %_24 to i64*
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_24, i32 0, i32 1
  store i64 %n__, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_24, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_24, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  call void @_ZN4core4iter6traits8iterator8Iterator7step_by17h612c6c5e5e3d1ca1E(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %_23, i64 %17, i64 %19, i64 4)
  br label %bb7

panic:                                            ; preds = %bb5
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([31 x i8]* @str.0 to [0 x i8]*), i64 31, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc40 to %"core::panic::location::Location"*)) #7
  unreachable

bb7:                                              ; preds = %bb6
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h62e06258e9e638edE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %_22, %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %_23)
  br label %bb8

bb8:                                              ; preds = %bb7
  %20 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %iter to i8*
  %21 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %_22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 32, i1 false)
  br label %bb9

bb9:                                              ; preds = %bb29, %bb8
  %22 = call { i64, i64 } @"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he274d288dfaeeb4bE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* align 8 %iter)
  store { i64, i64 } %22, { i64, i64 }* %_27, align 8
  br label %bb10

bb10:                                             ; preds = %bb9
  %23 = bitcast { i64, i64 }* %_27 to i64*
  %_30 = load i64, i64* %23, align 8, !range !3, !noundef !2
  switch i64 %_30, label %bb12 [
    i64 0, label %bb13
    i64 1, label %bb11
  ]

bb12:                                             ; preds = %bb10
  unreachable

bb13:                                             ; preds = %bb10
  %24 = load i64, i64* %bits, align 8
  %25 = and i64 %24, 63
  store i64 %25, i64* %bits, align 8
  %_77 = load i64, i64* %bits, align 8
  %26 = icmp eq i64 %_77, 0
  br i1 %26, label %bb35, label %bb30

bb11:                                             ; preds = %bb10
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_27, i32 0, i32 1
  %i__ = load i64, i64* %27, align 8
  %28 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i__, i64 0)
  %_37.0 = extractvalue { i64, i1 } %28, 0
  %_37.1 = extractvalue { i64, i1 } %28, 1
  %29 = call i1 @llvm.expect.i1(i1 %_37.1, i1 false)
  br i1 %29, label %panic1, label %bb14

bb14:                                             ; preds = %bb11
  %_33 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h38a5b2dfdcd0dff3E"(%"alloc::vec::Vec<u64>"* align 8 %b__, i64 %_37.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc44 to %"core::panic::location::Location"*))
  br label %bb15

panic1:                                           ; preds = %bb11
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc42 to %"core::panic::location::Location"*)) #7
  unreachable

bb15:                                             ; preds = %bb14
  %_32 = load i64, i64* %_33, align 8
  %30 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i__, i64 0)
  %_42.0 = extractvalue { i64, i1 } %30, 0
  %_42.1 = extractvalue { i64, i1 } %30, 1
  %31 = call i1 @llvm.expect.i1(i1 %_42.1, i1 false)
  br i1 %31, label %panic2, label %bb16

bb16:                                             ; preds = %bb15
  %_38 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8bfa5b21106b89f9E"(%"alloc::vec::Vec<u64>"* align 8 %a__, i64 %_42.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc48 to %"core::panic::location::Location"*))
  br label %bb17

panic2:                                           ; preds = %bb15
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc46 to %"core::panic::location::Location"*)) #7
  unreachable

bb17:                                             ; preds = %bb16
  %32 = xor i64 %_32, -1
  store i64 %32, i64* %_38, align 8
  %33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i__, i64 1)
  %_48.0 = extractvalue { i64, i1 } %33, 0
  %_48.1 = extractvalue { i64, i1 } %33, 1
  %34 = call i1 @llvm.expect.i1(i1 %_48.1, i1 false)
  br i1 %34, label %panic3, label %bb18

bb18:                                             ; preds = %bb17
  %_44 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h38a5b2dfdcd0dff3E"(%"alloc::vec::Vec<u64>"* align 8 %b__, i64 %_48.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc52 to %"core::panic::location::Location"*))
  br label %bb19

panic3:                                           ; preds = %bb17
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc50 to %"core::panic::location::Location"*)) #7
  unreachable

bb19:                                             ; preds = %bb18
  %_43 = load i64, i64* %_44, align 8
  %35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i__, i64 1)
  %_53.0 = extractvalue { i64, i1 } %35, 0
  %_53.1 = extractvalue { i64, i1 } %35, 1
  %36 = call i1 @llvm.expect.i1(i1 %_53.1, i1 false)
  br i1 %36, label %panic4, label %bb20

bb20:                                             ; preds = %bb19
  %_49 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8bfa5b21106b89f9E"(%"alloc::vec::Vec<u64>"* align 8 %a__, i64 %_53.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc56 to %"core::panic::location::Location"*))
  br label %bb21

panic4:                                           ; preds = %bb19
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc54 to %"core::panic::location::Location"*)) #7
  unreachable

bb21:                                             ; preds = %bb20
  %37 = xor i64 %_43, -1
  store i64 %37, i64* %_49, align 8
  %38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i__, i64 2)
  %_59.0 = extractvalue { i64, i1 } %38, 0
  %_59.1 = extractvalue { i64, i1 } %38, 1
  %39 = call i1 @llvm.expect.i1(i1 %_59.1, i1 false)
  br i1 %39, label %panic5, label %bb22

bb22:                                             ; preds = %bb21
  %_55 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h38a5b2dfdcd0dff3E"(%"alloc::vec::Vec<u64>"* align 8 %b__, i64 %_59.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc60 to %"core::panic::location::Location"*))
  br label %bb23

panic5:                                           ; preds = %bb21
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc58 to %"core::panic::location::Location"*)) #7
  unreachable

bb23:                                             ; preds = %bb22
  %_54 = load i64, i64* %_55, align 8
  %40 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i__, i64 2)
  %_64.0 = extractvalue { i64, i1 } %40, 0
  %_64.1 = extractvalue { i64, i1 } %40, 1
  %41 = call i1 @llvm.expect.i1(i1 %_64.1, i1 false)
  br i1 %41, label %panic6, label %bb24

bb24:                                             ; preds = %bb23
  %_60 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8bfa5b21106b89f9E"(%"alloc::vec::Vec<u64>"* align 8 %a__, i64 %_64.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc64 to %"core::panic::location::Location"*))
  br label %bb25

panic6:                                           ; preds = %bb23
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc62 to %"core::panic::location::Location"*)) #7
  unreachable

bb25:                                             ; preds = %bb24
  %42 = xor i64 %_54, -1
  store i64 %42, i64* %_60, align 8
  %43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i__, i64 3)
  %_70.0 = extractvalue { i64, i1 } %43, 0
  %_70.1 = extractvalue { i64, i1 } %43, 1
  %44 = call i1 @llvm.expect.i1(i1 %_70.1, i1 false)
  br i1 %44, label %panic7, label %bb26

bb26:                                             ; preds = %bb25
  %_66 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h38a5b2dfdcd0dff3E"(%"alloc::vec::Vec<u64>"* align 8 %b__, i64 %_70.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc68 to %"core::panic::location::Location"*))
  br label %bb27

panic7:                                           ; preds = %bb25
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc66 to %"core::panic::location::Location"*)) #7
  unreachable

bb27:                                             ; preds = %bb26
  %_65 = load i64, i64* %_66, align 8
  %45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i__, i64 3)
  %_75.0 = extractvalue { i64, i1 } %45, 0
  %_75.1 = extractvalue { i64, i1 } %45, 1
  %46 = call i1 @llvm.expect.i1(i1 %_75.1, i1 false)
  br i1 %46, label %panic8, label %bb28

bb28:                                             ; preds = %bb27
  %_71 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8bfa5b21106b89f9E"(%"alloc::vec::Vec<u64>"* align 8 %a__, i64 %_75.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc72 to %"core::panic::location::Location"*))
  br label %bb29

panic8:                                           ; preds = %bb27
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc70 to %"core::panic::location::Location"*)) #7
  unreachable

bb29:                                             ; preds = %bb28
  %47 = xor i64 %_65, -1
  store i64 %47, i64* %_71, align 8
  br label %bb9

bb35:                                             ; preds = %bb42, %bb34, %bb13
  %48 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %49 = getelementptr inbounds %Zahl, %Zahl* %48, i32 0, i32 2
  %_92 = load i64, i64* %49, align 1
  %50 = icmp eq i64 %_92, 0
  br i1 %50, label %bb36, label %bb37

bb30:                                             ; preds = %bb13
  %_81 = load i64, i64* %bits, align 8
  %51 = and i64 %_81, -64
  %_82.1 = icmp ne i64 %51, 0
  %52 = and i64 %_81, 63
  %_82.0 = shl i64 1, %52
  %53 = call i1 @llvm.expect.i1(i1 %_82.1, i1 false)
  br i1 %53, label %panic9, label %bb31

bb31:                                             ; preds = %bb30
  %54 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_82.0, i64 1)
  %_83.0 = extractvalue { i64, i1 } %54, 0
  %_83.1 = extractvalue { i64, i1 } %54, 1
  %55 = call i1 @llvm.expect.i1(i1 %_83.1, i1 false)
  br i1 %55, label %panic10, label %bb32

panic9:                                           ; preds = %bb30
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.2 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc74 to %"core::panic::location::Location"*)) #7
  unreachable

bb32:                                             ; preds = %bb31
  %56 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_85 = getelementptr inbounds %Zahl, %Zahl* %56, i32 0, i32 4
  %57 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %58 = getelementptr inbounds %Zahl, %Zahl* %57, i32 0, i32 2
  %_88 = load i64, i64* %58, align 1
  %59 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_88, i64 1)
  %_90.0 = extractvalue { i64, i1 } %59, 0
  %_90.1 = extractvalue { i64, i1 } %59, 1
  %60 = call i1 @llvm.expect.i1(i1 %_90.1, i1 false)
  br i1 %60, label %panic11, label %bb33

panic10:                                          ; preds = %bb31
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.3 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc74 to %"core::panic::location::Location"*)) #7
  unreachable

bb33:                                             ; preds = %bb32
  %_84 = call align 8 i64* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8bfa5b21106b89f9E"(%"alloc::vec::Vec<u64>"* align 8 %_85, i64 %_90.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc78 to %"core::panic::location::Location"*))
  br label %bb34

panic11:                                          ; preds = %bb32
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.3 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc76 to %"core::panic::location::Location"*)) #7
  unreachable

bb34:                                             ; preds = %bb33
  %61 = load i64, i64* %_84, align 8
  %62 = and i64 %61, %_83.0
  store i64 %62, i64* %_84, align 8
  br label %bb35

bb36:                                             ; preds = %bb35
  store i8 0, i8* %_91, align 1
  br label %bb38

bb37:                                             ; preds = %bb35
  %63 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %_97 = getelementptr inbounds %Zahl, %Zahl* %63, i32 0, i32 4
  %64 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %65 = getelementptr inbounds %Zahl, %Zahl* %64, i32 0, i32 2
  %_100 = load i64, i64* %65, align 1
  %66 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_100, i64 1)
  %_102.0 = extractvalue { i64, i1 } %66, 0
  %_102.1 = extractvalue { i64, i1 } %66, 1
  %67 = call i1 @llvm.expect.i1(i1 %_102.1, i1 false)
  br i1 %67, label %panic12, label %bb39

bb39:                                             ; preds = %bb37
  %_96 = call align 8 i64* @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h38a5b2dfdcd0dff3E"(%"alloc::vec::Vec<u64>"* align 8 %_97, i64 %_102.0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc82 to %"core::panic::location::Location"*))
  br label %bb40

panic12:                                          ; preds = %bb37
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.3 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc80 to %"core::panic::location::Location"*)) #7
  unreachable

bb40:                                             ; preds = %bb39
  %_95 = load i64, i64* %_96, align 8
  %_94 = icmp eq i64 %_95, 0
  %68 = zext i1 %_94 to i8
  store i8 %68, i8* %_91, align 1
  br label %bb38

bb38:                                             ; preds = %bb40, %bb36
  %69 = load i8, i8* %_91, align 1, !range !1, !noundef !2
  %70 = trunc i8 %69 to i1
  br i1 %70, label %bb41, label %bb43

bb43:                                             ; preds = %bb38
  %71 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %72 = getelementptr inbounds %Zahl, %Zahl* %71, i32 0, i32 2
  %_105 = load i64, i64* %72, align 1
  %73 = icmp eq i64 %_105, 0
  br i1 %73, label %bb44, label %bb45

bb41:                                             ; preds = %bb38
  %74 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %75 = getelementptr inbounds %Zahl, %Zahl* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 1
  %77 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %76, i64 1)
  %_104.0 = extractvalue { i64, i1 } %77, 0
  %_104.1 = extractvalue { i64, i1 } %77, 1
  %78 = call i1 @llvm.expect.i1(i1 %_104.1, i1 false)
  br i1 %78, label %panic13, label %bb42

bb42:                                             ; preds = %bb41
  %79 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %80 = getelementptr inbounds %Zahl, %Zahl* %79, i32 0, i32 2
  store i64 %_104.0, i64* %80, align 1
  br label %bb35

panic13:                                          ; preds = %bb41
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.3 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc84 to %"core::panic::location::Location"*)) #7
  unreachable

bb44:                                             ; preds = %bb43
  %81 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %82 = bitcast %Zahl* %81 to i32*
  store i32 0, i32* %82, align 1
  br label %bb45
}

; Function Attrs: uwtable
define i64 @zbits([1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  ret i64 0
}

; Function Attrs: uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  ret i1 false
}

; Function Attrs: uwtable
define i32 @zsignum([1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  ret i32 0
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

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/znot.rs.bc", hash: (2302491569, 619163420, 1769523846, 2708041020, 3407305345))
^1 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17he837860a8daa26aeE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 138093928929870069
^2 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h43639570e063e175E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^59), (callee: ^62))))) ; guid = 560474983558818230
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^5 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$15forward_checked17h3456a1301fcade5eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^24), (callee: ^58))))) ; guid = 1220404963832196114
^6 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^7 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hdbfa3165af310dc9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^1), (callee: ^82), (callee: ^85), (callee: ^55))))) ; guid = 3021995852065417147
^8 = gv: (name: "_ZN4core5slice3raw18from_raw_parts_mut17h51fc79a51c25e665E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^32))))) ; guid = 3028655647267864065
^9 = gv: (name: "alloc60", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 3141595534969857199
^10 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hf9274389a1f7aedaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^65))))) ; guid = 3381707276120958372
^11 = gv: (name: "_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h38a5b2dfdcd0dff3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^31), (callee: ^69)), refs: (^72)))) ; guid = 3561066792696398147
^12 = gv: (name: "alloc56", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 3863230509157211735
^13 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h718b35a7440193bfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3890596264142471068
^14 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd913072a2846531eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 4057347462793249954
^15 = gv: (name: "_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8bfa5b21106b89f9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^79), (callee: ^34)), refs: (^72)))) ; guid = 4175258041651534283
^16 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4194303730721397657
^17 = gv: (name: "alloc80", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 4692058855689414868
^18 = gv: (name: "alloc82", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 4962770088264497313
^19 = gv: (name: "alloc72", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 5309102654054476822
^20 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5436943481773832288
^21 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h79d3e52a2f903325E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^54), (callee: ^2))))) ; guid = 5472684805905173680
^22 = gv: (name: "alloc38", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^67)))) ; guid = 5615426205827955577
^23 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h2863c8e4a90c2773E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 5615870179244029156
^24 = gv: (name: "_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h9e1e367c9829de12E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^26))))) ; guid = 5621966505955527835
^25 = gv: (name: "alloc62", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 5650073926841036656
^26 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h17462029931904d5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^64))))) ; guid = 5731034094108639001
^27 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator7step_by17h612c6c5e5e3d1ca1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^38))))) ; guid = 5794068256861990936
^28 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5880825363897995693
^29 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h040746c39691e915E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^86))))) ; guid = 5994864060780816667
^30 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^31 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h50a3c6bfd93b5b54E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^21), (callee: ^10))))) ; guid = 6422238941627390918
^32 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17heaf93da2d5b0567bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^45))))) ; guid = 6447430662129466451
^33 = gv: (name: "alloc44", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 6490947328412070798
^34 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17ha5dda9d563765089E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^68))))) ; guid = 6869299329575274279
^35 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7049734781546201443
^36 = gv: (name: "alloc83", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7104147634917598062
^37 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$8spec_nth17h2269c6f9d465c7d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 82, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^82), (callee: ^5), (callee: ^1), (callee: ^85)), refs: (^72)))) ; guid = 7424376010512767846
^38 = gv: (name: "_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17h18a4351e8d3a121aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^47)), refs: (^72, ^22, ^35)))) ; guid = 7624379842649251116
^39 = gv: (name: "_ZN4core3ptr5write17h42f05608df0aae44E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 7648597832661579102
^40 = gv: (name: "alloc84", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 8617431185673135582
^41 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hdf06db7df529c586E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^7))))) ; guid = 9133795530584304734
^42 = gv: (name: "alloc74", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 9243371878233468821
^43 = gv: (name: "str.3", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9262043142883560287
^44 = gv: (name: "alloc52", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 9546851291122094477
^45 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hc2dad9baa64e28cfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 9732464993996435436
^46 = gv: (name: "znot", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 244, calls: ((callee: ^20), (callee: ^49), (callee: ^75), (callee: ^27), (callee: ^47), (callee: ^70), (callee: ^53), (callee: ^11), (callee: ^15)), refs: (^52, ^76, ^33, ^77, ^16, ^66, ^48, ^44, ^60, ^12, ^73, ^9, ^50, ^80, ^25, ^51, ^57, ^19, ^56, ^42, ^28, ^43, ^63, ^83, ^18, ^17, ^40)))) ; guid = 10138206940810045643
^47 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^48 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 10424238774724527510
^49 = gv: (name: "zbits", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 10528502499225088932
^50 = gv: (name: "alloc58", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 10910568320026992914
^51 = gv: (name: "alloc68", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 11469958068194034219
^52 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 11485186890660770909
^53 = gv: (name: "_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he274d288dfaeeb4bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, calls: ((callee: ^78), (callee: ^41))))) ; guid = 11613962260817086272
^54 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h8ea07f4910c5e015E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^87))))) ; guid = 11667229155734777108
^55 = gv: (name: "_ZN4core3mem7replace17h322e411eac3bf4a5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^81), (callee: ^39)), refs: (^72)))) ; guid = 11799435298269303968
^56 = gv: (name: "alloc70", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 12081475681700306990
^57 = gv: (name: "alloc66", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 12175765096147944781
^58 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h63302f05b7737a84E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 12530660802339263493
^59 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h2d8119f6e1da54d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 12826645599722584339
^60 = gv: (name: "alloc50", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 12941001799952664064
^61 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12942066759724318934
^62 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h90a60dc080c89552E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 13038136762280350242
^63 = gv: (name: "alloc78", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 13084745480667796190
^64 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h24fac4ad4fe91805E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 13113816901719685393
^65 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h6748e43900ac1402E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^13), (callee: ^23))))) ; guid = 13223953974975666076
^66 = gv: (name: "alloc48", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 13479114145547098643
^67 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14012904722514504475
^68 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hccd31bdb76f8eae0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^86))))) ; guid = 14160512526623737061
^69 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hcdd99086ad6176f4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^29))))) ; guid = 14245976808600377654
^70 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h62e06258e9e638edE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 14291396847455012027
^71 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^72 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^73 = gv: (name: "alloc54", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 14909476058491725005
^74 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hcbd4d29197c4bb19E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^54), (callee: ^2))))) ; guid = 15161912671484630026
^75 = gv: (name: "zsignum", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15352537659571043505
^76 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15495660442424749527
^77 = gv: (name: "alloc42", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 15773226977865282293
^78 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$3nth17h89e3fdf185475b73E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^37))))) ; guid = 15998483419582094941
^79 = gv: (name: "_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h09cb47d566ace076E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^74), (callee: ^8))))) ; guid = 16228145586368222119
^80 = gv: (name: "alloc64", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 16468671096411629194
^81 = gv: (name: "_ZN4core3ptr4read17h0a57cbe1699de446E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 16497368300195588200
^82 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h38fb80a50116c383E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 16696597140777059243
^83 = gv: (name: "alloc76", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^36)))) ; guid = 17103979357622964356
^84 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^61)))) ; guid = 17341519984567951763
^85 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h9fa4591e1b5d1b92E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 18073046887404218977
^86 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^87 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2dd2852c3ff518cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^14))))) ; guid = 18272837803576812311
^88 = blockcount: 208
