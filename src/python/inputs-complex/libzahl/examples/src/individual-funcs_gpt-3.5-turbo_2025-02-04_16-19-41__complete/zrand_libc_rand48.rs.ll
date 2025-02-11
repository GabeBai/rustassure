; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zrand_libc_rand48.rs.bc'
source_filename = "zrand_libc_rand48.2df4aa53-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::result::Result<core::time::Duration, std::time::SystemTimeError>" = type { i64, [2 x i64] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Ok" = type { [1 x i64], { i64, i32 } }
%"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Err" = type { [1 x i64], { i64, i32 } }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }

@alloc51 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc52 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc51, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ({ i64, i32 }*)* @"_ZN4core3ptr47drop_in_place$LT$std..time..SystemTimeError$GT$17ha6b4656294d8198cE" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i64, i32 }*, %"core::fmt::Formatter"*)* @"_ZN63_$LT$std..time..SystemTimeError$u20$as$u20$core..fmt..Debug$GT$3fmt17h113db2fe539475d6E" to i8*) }>, align 8
@alloc59 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"not implemented" }>, align 1
@alloc63 = private unnamed_addr constant <{ [98 x i8] }> <{ [98 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zrand_libc_rand48.rs" }>, align 1
@alloc58 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [98 x i8] }>, <{ [98 x i8] }>* @alloc63, i32 0, i32 0, i32 0), [16 x i8] c"b\00\00\00\00\00\00\007\00\00\00\05\00\00\00" }>, align 8
@alloc61 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [98 x i8] }>, <{ [98 x i8] }>* @alloc63, i32 0, i32 0, i32 0), [16 x i8] c"b\00\00\00\00\00\00\00>\00\00\00\05\00\00\00" }>, align 8
@anon.79f27ca2f9a11ac42f47b2eafaa6a0dd.0 = private unnamed_addr constant <{ [16 x i8] }> zeroinitializer, align 8
@alloc62 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c"Time went backwards" }>, align 1
@alloc64 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [98 x i8] }>, <{ [98 x i8] }>* @alloc63, i32 0, i32 0, i32 0), [16 x i8] c"b\00\00\00\00\00\00\00H\00\00\00I\00\00\00" }>, align 8
@_ZN17zrand_libc_rand4817zrand_libc_rand486INITED17hff6a8a6d6e150d8fE = internal global <{ [1 x i8] }> zeroinitializer, align 1

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h8cec18e820b918b2E"(i64 %start1, i64 %n) unnamed_addr #0 {
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
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h91e19feb10e4ad29E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17hc6756fe526619959E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h70328d68622230f1E(i64* %dest)
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
  invoke void @_ZN4core3ptr5write17ha7dddbfb5146babfE(i64* %dest, i64 %src)
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
define internal void @"_ZN4core3ptr47drop_in_place$LT$std..time..SystemTimeError$GT$17ha6b4656294d8198cE"({ i64, i32 }* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17h70328d68622230f1E(i64* %src) unnamed_addr #0 {
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
define void @_ZN4core3ptr5write17ha7dddbfb5146babfE(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hdc1a2a87b5a198e4E(i8* %dst, i8 %0) unnamed_addr #0 {
start:
  %src = alloca i8, align 1
  store i8 %0, i8* %src, align 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 1, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc537382f998d2009E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h535c64a276d517cbE"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4time8Duration7as_secs17h1f730e09af52a43fE({ i64, i32 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i32 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hf2041205e238dd0bE"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define { i64, i32 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h45e695d7dcd7899cE"(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* %self, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %e = alloca { i64, i32 }, align 8
  %2 = bitcast %"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* %self to i64*
  %_3 = load i64, i64* %2, align 8, !range !3, !noundef !2
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* %self to %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Ok"*
  %4 = getelementptr inbounds %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Ok", %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Ok"* %3, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  %t.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  %t.1 = load i32, i32* %6, align 8
  %7 = insertvalue { i64, i32 } undef, i64 %t.0, 0
  %8 = insertvalue { i64, i32 } %7, i32 %t.1, 1
  ret { i64, i32 } %8

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* %self to %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Err", %"core::result::Result<core::time::Duration, std::time::SystemTimeError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %e, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %e, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %_7.0 = bitcast { i64, i32 }* %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.0 to [3 x i64]*), %"core::panic::location::Location"* align 8 %0) #5
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  %19 = extractvalue { i8*, i32 } %17, 1
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb4
  %22 = bitcast { i8*, i32 }* %1 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = insertvalue { i8*, i32 } undef, i8* %23, 0
  %27 = insertvalue { i8*, i32 } %26, i32 %25, 1
  resume { i8*, i32 } %27
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1511582a57d6b056E"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h535c64a276d517cbE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h91e19feb10e4ad29E"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hf2041205e238dd0bE"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h8cec18e820b918b2E"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17hc6756fe526619959E(i64* align 8 %_10, i64 %n)
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
define i64 @lrand48() unnamed_addr #1 {
start:
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [15 x i8] }>* @alloc59 to [0 x i8]*), i64 15, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc58 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: uwtable
define void @srand48(i64 %seed) unnamed_addr #1 {
start:
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [15 x i8] }>* @alloc59 to [0 x i8]*), i64 15, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc61 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: uwtable
define i64 @time(i64* align 8 %0) unnamed_addr #1 {
start:
  %_7 = alloca { i64, i64 }, align 8
  %_5 = alloca %"core::result::Result<core::time::Duration, std::time::SystemTimeError>", align 8
  %duration = alloca { i64, i32 }, align 8
  %1 = alloca i64, align 8
  %time = alloca i64*, align 8
  store i64* %0, i64** %time, align 8
  %2 = bitcast i64** %time to {}**
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
  store i64 0, i64* %1, align 8
  br label %bb8

bb3:                                              ; preds = %start
  %t = load i64*, i64** %time, align 8, !nonnull !2, !align !4, !noundef !2
  %5 = call { i64, i64 } @_ZN3std4time10SystemTime3now17ha1d98092ef1de20bE()
  store { i64, i64 } %5, { i64, i64 }* %_7, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %6 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (<{ [16 x i8] }>* @anon.79f27ca2f9a11ac42f47b2eafaa6a0dd.0 to { i64, i64 }*), i32 0, i32 0), align 8
  %7 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (<{ [16 x i8] }>* @anon.79f27ca2f9a11ac42f47b2eafaa6a0dd.0 to { i64, i64 }*), i32 0, i32 1), align 8
  call void @_ZN3std4time10SystemTime14duration_since17ha18cd56976c36353E(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* sret(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>") %_5, { i64, i64 }* align 8 %_7, i64 %6, i64 %7)
  br label %bb5

bb5:                                              ; preds = %bb4
  %8 = call { i64, i32 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h45e695d7dcd7899cE"(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* %_5, [0 x i8]* align 1 bitcast (<{ [19 x i8] }>* @alloc62 to [0 x i8]*), i64 19, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc64 to %"core::panic::location::Location"*))
  store { i64, i32 } %8, { i64, i32 }* %duration, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  %_10 = call i64 @_ZN4core4time8Duration7as_secs17h1f730e09af52a43fE({ i64, i32 }* align 8 %duration)
  br label %bb7

bb7:                                              ; preds = %bb6
  store i64 %_10, i64* %t, align 8
  %9 = load i64, i64* %t, align 8
  store i64 %9, i64* %1, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb1
  %10 = load i64, i64* %1, align 8
  ret i64 %10
}

; Function Attrs: uwtable
define void @zrand_libc_rand48(i8* %out, i64 %n, i8* %statep) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %_22 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_19 = alloca { i64, i64 }, align 8
  %_17 = alloca i64*, align 8
  %1 = load i8, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @_ZN17zrand_libc_rand4817zrand_libc_rand486INITED17hff6a8a6d6e150d8fE, i32 0, i32 0, i32 0), align 1, !range !1, !noundef !2
  %_9 = trunc i8 %1 to i1
  %_8 = xor i1 %_9, true
  br i1 %_8, label %bb1, label %bb3

bb3:                                              ; preds = %bb2, %start
  %2 = bitcast { i64, i64 }* %_19 to i64*
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_19, i32 0, i32 1
  store i64 %n, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_19, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_19, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1511582a57d6b056E"(i64 %5, i64 %7)
  %_18.0 = extractvalue { i64, i64 } %8, 0
  %_18.1 = extractvalue { i64, i64 } %8, 1
  br label %bb4

bb1:                                              ; preds = %start
  store i8 1, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @_ZN17zrand_libc_rand4817zrand_libc_rand486INITED17hff6a8a6d6e150d8fE, i32 0, i32 0, i32 0), align 1
  %_14 = ptrtoint i8* %out to i64
  %9 = bitcast i64** %_17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = bitcast i64** %_17 to {}**
  store {}* null, {}** %10, align 8
  %11 = load i64*, i64** %_17, align 8, !align !4
  %_16 = call i64 @time(i64* align 8 %11)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_13 = or i64 %_14, %_16
  call void @srand48(i64 %_13)
  br label %bb3

bb4:                                              ; preds = %bb3
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0
  store i64 %_18.0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1
  store i64 %_18.1, i64* %13, align 8
  br label %bb5

bb5:                                              ; preds = %bb13, %bb4
  %14 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc537382f998d2009E"({ i64, i64 }* align 8 %iter)
  store { i64, i64 } %14, { i64, i64 }* %_22, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  %15 = bitcast { i64, i64 }* %_22 to i64*
  %_25 = load i64, i64* %15, align 8, !range !3, !noundef !2
  switch i64 %_25, label %bb8 [
    i64 0, label %bb9
    i64 1, label %bb7
  ]

bb8:                                              ; preds = %bb6
  unreachable

bb9:                                              ; preds = %bb6
  ret void

bb7:                                              ; preds = %bb6
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_22, i32 0, i32 1
  %i = load i64, i64* %16, align 8
  %_27 = call i64 @lrand48()
  br label %bb10

bb10:                                             ; preds = %bb7
  %r0 = and i64 %_27, 15
  %_28 = call i64 @lrand48()
  br label %bb11

bb11:                                             ; preds = %bb10
  %r1 = and i64 %_28, 15
  %17 = getelementptr inbounds i8, i8* %out, i64 %i
  store i8* %17, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb12

bb12:                                             ; preds = %bb11
  %_37.0 = shl i64 %r0, 4
  br label %bb13

bb13:                                             ; preds = %bb12
  %_34 = or i64 %_37.0, %r1
  %_33 = trunc i64 %_34 to i8
  call void @_ZN4core3ptr5write17hdc1a2a87b5a198e4E(i8* %_3.i, i8 %_33)
  br label %bb5
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
declare zeroext i1 @"_ZN63_$LT$std..time..SystemTimeError$u20$as$u20$core..fmt..Debug$GT$3fmt17h113db2fe539475d6E"({ i64, i32 }* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17h68832e989a8867c1E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: uwtable
declare { i64, i64 } @_ZN3std4time10SystemTime3now17ha1d98092ef1de20bE() unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std4time10SystemTime14duration_since17ha18cd56976c36353E(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>"* sret(%"core::result::Result<core::time::Duration, std::time::SystemTimeError>"), { i64, i64 }* align 8, i64, i64) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 0, i64 2}
!4 = !{i64 8}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zrand_libc_rand48.rs.bc", hash: (4277401219, 1559135455, 2069021448, 2926069970, 1398451692))
^1 = gv: (name: "alloc64", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 489071724427141553
^2 = gv: (name: "zrand_libc_rand48", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 64, calls: ((callee: ^8), (callee: ^7), (callee: ^36), (callee: ^4), (callee: ^17), (callee: ^28)), refs: (^11)))) ; guid = 533692156919765950
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc537382f998d2009E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^25))))) ; guid = 1475718242804603397
^5 = gv: (name: "_ZN4core3mem7replace17hc6756fe526619959E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^9), (callee: ^32)), refs: (^27)))) ; guid = 2566619929482311203
^6 = gv: (name: "alloc63", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3595526034442492326
^7 = gv: (name: "time", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, calls: ((callee: ^31), (callee: ^30), (callee: ^12), (callee: ^37)), refs: (^1, ^21, readonly ^15)))) ; guid = 3946912059654523911
^8 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1511582a57d6b056E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 5386712295313052759
^9 = gv: (name: "_ZN4core3ptr4read17h70328d68622230f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 5442143157395542269
^10 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h91e19feb10e4ad29E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 5722628655214827587
^11 = gv: (name: "_ZN17zrand_libc_rand4817zrand_libc_rand486INITED17hff6a8a6d6e150d8fE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 5816372822026860714
^12 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17h45e695d7dcd7899cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^20)), refs: (^27, ^26)))) ; guid = 6491630714263432836
^13 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^14 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hf2041205e238dd0bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 6898873498360697616
^15 = gv: (name: "anon.79f27ca2f9a11ac42f47b2eafaa6a0dd.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7041639830723884348
^16 = gv: (name: "alloc59", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7713717969204438276
^17 = gv: (name: "lrand48", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^19)), refs: (^22, ^16)))) ; guid = 8103457505813936450
^18 = gv: (name: "_ZN63_$LT$std..time..SystemTimeError$u20$as$u20$core..fmt..Debug$GT$3fmt17h113db2fe539475d6E") ; guid = 8499767664155574914
^19 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^20 = gv: (name: "_ZN4core6result13unwrap_failed17h68832e989a8867c1E") ; guid = 10974041027863004781
^21 = gv: (name: "alloc62", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11107055197434406778
^22 = gv: (name: "alloc58", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 11279314340008187982
^23 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h8cec18e820b918b2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 12299253177198508624
^24 = gv: (name: "alloc61", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 12915390927557314117
^25 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h535c64a276d517cbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^10), (callee: ^14), (callee: ^23), (callee: ^5))))) ; guid = 13778684091864728469
^26 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^35, ^18)))) ; guid = 14309247977883394776
^27 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^28 = gv: (name: "_ZN4core3ptr5write17hdc1a2a87b5a198e4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 15028244605524217073
^29 = gv: (name: "alloc51", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15311502001860890412
^30 = gv: (name: "_ZN3std4time10SystemTime14duration_since17ha18cd56976c36353E") ; guid = 15321110977167584432
^31 = gv: (name: "_ZN3std4time10SystemTime3now17ha1d98092ef1de20bE") ; guid = 15523886518197810360
^32 = gv: (name: "_ZN4core3ptr5write17ha7dddbfb5146babfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 15718408557523655417
^33 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15822663052811949562
^34 = gv: (name: "alloc52", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 16135377779672670845
^35 = gv: (name: "_ZN4core3ptr47drop_in_place$LT$std..time..SystemTimeError$GT$17ha6b4656294d8198cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 16315337959217895323
^36 = gv: (name: "srand48", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^19)), refs: (^24, ^16)))) ; guid = 16723010146066609533
^37 = gv: (name: "_ZN4core4time8Duration7as_secs17h1f730e09af52a43fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 17571874328253824607
^38 = blockcount: 66
