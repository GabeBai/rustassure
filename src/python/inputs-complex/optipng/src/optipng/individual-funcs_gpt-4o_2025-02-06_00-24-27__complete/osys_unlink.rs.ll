; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_unlink.rs.bc'
source_filename = "osys_unlink.3c088953-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"std::path::Path" = type { %"std::ffi::os_str::OsStr" }
%"std::ffi::os_str::OsStr" = type { %"std::sys::unix::os_str::Slice" }
%"std::sys::unix::os_str::Slice" = type { [0 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>" = type { i8, [15 x i8] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os" = type { [1 x i32], i32 }
%"std::io::error::Custom" = type { { {}*, [3 x i64]* }, i8, [7 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom" = type { [1 x i64], %"std::io::error::Custom"* }
%"std::io::error::SimpleMessage" = type { { [0 x i8]*, i64 }, i8, [7 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage" = type { [1 x i64], %"std::io::error::SimpleMessage"* }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple" = type { [1 x i8], i8 }
%"core::result::Result<i32, std::io::error::Error>" = type { i32, [3 x i32] }
%"core::result::Result<i32, std::io::error::Error>::Ok" = type { [1 x i32], i32 }
%"core::result::Result<i32, std::io::error::Error>::Err" = type { [1 x i64], i8* }
%"alloc::alloc::Global" = type {}
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc90 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"internal error: entered unreachable code" }>, align 1
@alloc91 = private unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/io/error/repr_bitpacked.rs" }>, align 1
@alloc92 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc91, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\18\01\00\00\0D\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h3b8e8d6fc7829409E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h028defead66363f6E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habc16d38cdf0c32fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h98f7cc493c7c89eeE"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: uwtable
define i8* @_ZN3std2fs11remove_file17he2b4792bd6feb2e4E([0 x i8]* align 1 %0, i64 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %path = alloca { [0 x i8]*, i64 }, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %path, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %path, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = invoke { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17ha5ce7fd9d4d903aeE"({ [0 x i8]*, i64 }* align 8 %path)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1, %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %_3.0 = extractvalue { %"std::path::Path"*, i64 } %5, 0
  %_3.1 = extractvalue { %"std::path::Path"*, i64 } %5, 1
  %11 = invoke i8* @_ZN3std3sys4unix2fs6unlink17hd2c7b981ea2de6deE(%"std::path::Path"* align 1 %_3.0, i64 %_3.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  br label %bb3

bb5:                                              ; preds = %bb4
  %12 = bitcast { i8*, i32 }* %2 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17

bb3:                                              ; preds = %bb2
  ret i8* %11
}

; Function Attrs: inlinehint uwtable
define void @_ZN3std2io5error14repr_bitpacked11decode_repr17h00d113e96841e1baE(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %0, i8* %ptr) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %_34 = alloca i64*, align 8
  %_19 = alloca i64*, align 8
  %bits = alloca i64, align 8
  store i8 1, i8* %_37, align 1
  %_4 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h40e2ef48d4934cdaE"(i8* %ptr)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
  %2 = load i8, i8* %_37, align 1, !range !2, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb21, label %bb19

cleanup:                                          ; preds = %bb6, %bb9, %bb15, %bb13, %bb11, %bb8, %bb5, %bb3, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb22

bb1:                                              ; preds = %start
  %9 = invoke i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h36168d26aa6f0788E"({}* %_4)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i64 %9, i64* %bits, align 8
  %_7 = load i64, i64* %bits, align 8
  %_6 = and i64 %_7, 3
  switch i64 %_6, label %bb3 [
    i64 2, label %bb4
    i64 3, label %bb5
    i64 0, label %bb8
    i64 1, label %bb11
  ]

bb3:                                              ; preds = %bb2
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [40 x i8] }>* @alloc90 to [0 x i8]*), i64 40, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc92 to %"core::panic::location::Location"*)) #7
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %bb2
  %_11 = load i64, i64* %bits, align 8
  %_9 = ashr i64 %_11, 32
  %code = trunc i64 %_9 to i32
  %10 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os"*
  %11 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os"* %10, i32 0, i32 1
  store i32 %code, i32* %11, align 4
  %12 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 0, i8* %12, align 8
  br label %bb17

bb5:                                              ; preds = %bb2
  %_15 = load i64, i64* %bits, align 8
  %_14 = lshr i64 %_15, 32
  %kind_bits = trunc i64 %_14 to i32
  %_17 = invoke i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h10c580303526d2ecE(i32 %kind_bits)
          to label %bb6 unwind label %cleanup, !range !3

bb8:                                              ; preds = %bb2
  %_25 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h57029bcc05740997E"(i8* %ptr)
          to label %bb9 unwind label %cleanup

bb11:                                             ; preds = %bb2
  %_30 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h40e2ef48d4934cdaE"(i8* %ptr)
          to label %bb12 unwind label %cleanup

unreachable:                                      ; preds = %bb3
  unreachable

bb12:                                             ; preds = %bb11
  %13 = bitcast {}* %_30 to i8*
  br label %bb13

bb13:                                             ; preds = %bb12
  %_28 = invoke i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17ha1ad1aaa8a6a23b5E"(i8* %13, i64 1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %14 = bitcast i8* %_28 to %"std::io::error::Custom"*
  br label %bb15

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_37, align 1
  %15 = bitcast i64** %_34 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %14, %"std::io::error::Custom"** %15, align 8
  %16 = load i64*, i64** %_34, align 8
  %17 = bitcast i64* %16 to %"std::io::error::Custom"*
  %_32 = invoke align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h0b454c83203dee51E"(%"std::io::error::Custom"* %17)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %18 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"*
  %19 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"* %18, i32 0, i32 1
  store %"std::io::error::Custom"* %_32, %"std::io::error::Custom"** %19, align 8
  %20 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 3, i8* %20, align 8
  br label %bb17

bb17:                                             ; preds = %bb7, %bb10, %bb16, %bb4
  %21 = load i8, i8* %_37, align 1, !range !2, !noundef !1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb20, label %bb18

bb9:                                              ; preds = %bb8
  %_24 = invoke %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha699ab52bc012555E"(i64* %_25)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %23 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage"*
  %24 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage"* %23, i32 0, i32 1
  store %"std::io::error::SimpleMessage"* %_24, %"std::io::error::SimpleMessage"** %24, align 8
  %25 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 2, i8* %25, align 8
  br label %bb17

bb6:                                              ; preds = %bb5
  store i64* %bits, i64** %_19, align 8
  %26 = load i64*, i64** %_19, align 8, !nonnull !1, !align !4, !noundef !1
  %kind = invoke i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17hb01ef14e5697f6f6E"(i8 %_17, i64* align 8 %26)
          to label %bb7 unwind label %cleanup, !range !5

bb7:                                              ; preds = %bb6
  %27 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple"*
  %28 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple"* %27, i32 0, i32 1
  store i8 %kind, i8* %28, align 1
  %29 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 1, i8* %29, align 8
  br label %bb17

bb19:                                             ; preds = %bb21, %bb22
  %30 = bitcast { i8*, i32 }* %1 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %35 = insertvalue { i8*, i32 } %34, i32 %33, 1
  resume { i8*, i32 } %35

bb21:                                             ; preds = %bb22
  br label %bb19

bb18:                                             ; preds = %bb20, %bb17
  ret void

bb20:                                             ; preds = %bb17
  br label %bb18
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17hea9c11462456ebe9E"(i64* align 8 %_1) unnamed_addr #0 {
start:
  call void @_ZN4core4hint21unreachable_unchecked17h06fba7fea50f3349E() #7
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h10c580303526d2ecE(i32 %0) unnamed_addr #0 {
start:
  %1 = alloca i8, align 1
  %ek = alloca i32, align 4
  store i32 %0, i32* %ek, align 4
  %_5 = load i32, i32* %ek, align 4
  %_4 = icmp eq i32 %_5, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_10 = load i32, i32* %ek, align 4
  %_9 = icmp eq i32 %_10, 1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 0, i8* %1, align 1
  br label %bb83

bb83:                                             ; preds = %bb81, %bb82, %bb79, %bb77, %bb75, %bb73, %bb71, %bb69, %bb67, %bb65, %bb63, %bb61, %bb59, %bb57, %bb55, %bb53, %bb51, %bb49, %bb47, %bb45, %bb43, %bb41, %bb39, %bb37, %bb35, %bb33, %bb31, %bb29, %bb27, %bb25, %bb23, %bb21, %bb19, %bb17, %bb15, %bb13, %bb11, %bb9, %bb7, %bb5, %bb3, %bb1
  %2 = load i8, i8* %1, align 1, !range !3, !noundef !1
  ret i8 %2

bb4:                                              ; preds = %bb2
  %_15 = load i32, i32* %ek, align 4
  %_14 = icmp eq i32 %_15, 2
  br i1 %_14, label %bb5, label %bb6

bb3:                                              ; preds = %bb2
  store i8 1, i8* %1, align 1
  br label %bb83

bb6:                                              ; preds = %bb4
  %_20 = load i32, i32* %ek, align 4
  %_19 = icmp eq i32 %_20, 3
  br i1 %_19, label %bb7, label %bb8

bb5:                                              ; preds = %bb4
  store i8 2, i8* %1, align 1
  br label %bb83

bb8:                                              ; preds = %bb6
  %_25 = load i32, i32* %ek, align 4
  %_24 = icmp eq i32 %_25, 4
  br i1 %_24, label %bb9, label %bb10

bb7:                                              ; preds = %bb6
  store i8 3, i8* %1, align 1
  br label %bb83

bb10:                                             ; preds = %bb8
  %_30 = load i32, i32* %ek, align 4
  %_29 = icmp eq i32 %_30, 5
  br i1 %_29, label %bb11, label %bb12

bb9:                                              ; preds = %bb8
  store i8 4, i8* %1, align 1
  br label %bb83

bb12:                                             ; preds = %bb10
  %_35 = load i32, i32* %ek, align 4
  %_34 = icmp eq i32 %_35, 6
  br i1 %_34, label %bb13, label %bb14

bb11:                                             ; preds = %bb10
  store i8 5, i8* %1, align 1
  br label %bb83

bb14:                                             ; preds = %bb12
  %_40 = load i32, i32* %ek, align 4
  %_39 = icmp eq i32 %_40, 7
  br i1 %_39, label %bb15, label %bb16

bb13:                                             ; preds = %bb12
  store i8 6, i8* %1, align 1
  br label %bb83

bb16:                                             ; preds = %bb14
  %_45 = load i32, i32* %ek, align 4
  %_44 = icmp eq i32 %_45, 8
  br i1 %_44, label %bb17, label %bb18

bb15:                                             ; preds = %bb14
  store i8 7, i8* %1, align 1
  br label %bb83

bb18:                                             ; preds = %bb16
  %_50 = load i32, i32* %ek, align 4
  %_49 = icmp eq i32 %_50, 9
  br i1 %_49, label %bb19, label %bb20

bb17:                                             ; preds = %bb16
  store i8 8, i8* %1, align 1
  br label %bb83

bb20:                                             ; preds = %bb18
  %_55 = load i32, i32* %ek, align 4
  %_54 = icmp eq i32 %_55, 10
  br i1 %_54, label %bb21, label %bb22

bb19:                                             ; preds = %bb18
  store i8 9, i8* %1, align 1
  br label %bb83

bb22:                                             ; preds = %bb20
  %_60 = load i32, i32* %ek, align 4
  %_59 = icmp eq i32 %_60, 11
  br i1 %_59, label %bb23, label %bb24

bb21:                                             ; preds = %bb20
  store i8 10, i8* %1, align 1
  br label %bb83

bb24:                                             ; preds = %bb22
  %_65 = load i32, i32* %ek, align 4
  %_64 = icmp eq i32 %_65, 12
  br i1 %_64, label %bb25, label %bb26

bb23:                                             ; preds = %bb22
  store i8 11, i8* %1, align 1
  br label %bb83

bb26:                                             ; preds = %bb24
  %_70 = load i32, i32* %ek, align 4
  %_69 = icmp eq i32 %_70, 13
  br i1 %_69, label %bb27, label %bb28

bb25:                                             ; preds = %bb24
  store i8 12, i8* %1, align 1
  br label %bb83

bb28:                                             ; preds = %bb26
  %_75 = load i32, i32* %ek, align 4
  %_74 = icmp eq i32 %_75, 14
  br i1 %_74, label %bb29, label %bb30

bb27:                                             ; preds = %bb26
  store i8 13, i8* %1, align 1
  br label %bb83

bb30:                                             ; preds = %bb28
  %_80 = load i32, i32* %ek, align 4
  %_79 = icmp eq i32 %_80, 15
  br i1 %_79, label %bb31, label %bb32

bb29:                                             ; preds = %bb28
  store i8 14, i8* %1, align 1
  br label %bb83

bb32:                                             ; preds = %bb30
  %_85 = load i32, i32* %ek, align 4
  %_84 = icmp eq i32 %_85, 16
  br i1 %_84, label %bb33, label %bb34

bb31:                                             ; preds = %bb30
  store i8 15, i8* %1, align 1
  br label %bb83

bb34:                                             ; preds = %bb32
  %_90 = load i32, i32* %ek, align 4
  %_89 = icmp eq i32 %_90, 17
  br i1 %_89, label %bb35, label %bb36

bb33:                                             ; preds = %bb32
  store i8 16, i8* %1, align 1
  br label %bb83

bb36:                                             ; preds = %bb34
  %_95 = load i32, i32* %ek, align 4
  %_94 = icmp eq i32 %_95, 18
  br i1 %_94, label %bb37, label %bb38

bb35:                                             ; preds = %bb34
  store i8 17, i8* %1, align 1
  br label %bb83

bb38:                                             ; preds = %bb36
  %_100 = load i32, i32* %ek, align 4
  %_99 = icmp eq i32 %_100, 19
  br i1 %_99, label %bb39, label %bb40

bb37:                                             ; preds = %bb36
  store i8 18, i8* %1, align 1
  br label %bb83

bb40:                                             ; preds = %bb38
  %_105 = load i32, i32* %ek, align 4
  %_104 = icmp eq i32 %_105, 20
  br i1 %_104, label %bb41, label %bb42

bb39:                                             ; preds = %bb38
  store i8 19, i8* %1, align 1
  br label %bb83

bb42:                                             ; preds = %bb40
  %_110 = load i32, i32* %ek, align 4
  %_109 = icmp eq i32 %_110, 21
  br i1 %_109, label %bb43, label %bb44

bb41:                                             ; preds = %bb40
  store i8 20, i8* %1, align 1
  br label %bb83

bb44:                                             ; preds = %bb42
  %_115 = load i32, i32* %ek, align 4
  %_114 = icmp eq i32 %_115, 22
  br i1 %_114, label %bb45, label %bb46

bb43:                                             ; preds = %bb42
  store i8 21, i8* %1, align 1
  br label %bb83

bb46:                                             ; preds = %bb44
  %_120 = load i32, i32* %ek, align 4
  %_119 = icmp eq i32 %_120, 23
  br i1 %_119, label %bb47, label %bb48

bb45:                                             ; preds = %bb44
  store i8 22, i8* %1, align 1
  br label %bb83

bb48:                                             ; preds = %bb46
  %_125 = load i32, i32* %ek, align 4
  %_124 = icmp eq i32 %_125, 24
  br i1 %_124, label %bb49, label %bb50

bb47:                                             ; preds = %bb46
  store i8 23, i8* %1, align 1
  br label %bb83

bb50:                                             ; preds = %bb48
  %_130 = load i32, i32* %ek, align 4
  %_129 = icmp eq i32 %_130, 25
  br i1 %_129, label %bb51, label %bb52

bb49:                                             ; preds = %bb48
  store i8 24, i8* %1, align 1
  br label %bb83

bb52:                                             ; preds = %bb50
  %_135 = load i32, i32* %ek, align 4
  %_134 = icmp eq i32 %_135, 26
  br i1 %_134, label %bb53, label %bb54

bb51:                                             ; preds = %bb50
  store i8 25, i8* %1, align 1
  br label %bb83

bb54:                                             ; preds = %bb52
  %_140 = load i32, i32* %ek, align 4
  %_139 = icmp eq i32 %_140, 27
  br i1 %_139, label %bb55, label %bb56

bb53:                                             ; preds = %bb52
  store i8 26, i8* %1, align 1
  br label %bb83

bb56:                                             ; preds = %bb54
  %_145 = load i32, i32* %ek, align 4
  %_144 = icmp eq i32 %_145, 28
  br i1 %_144, label %bb57, label %bb58

bb55:                                             ; preds = %bb54
  store i8 27, i8* %1, align 1
  br label %bb83

bb58:                                             ; preds = %bb56
  %_150 = load i32, i32* %ek, align 4
  %_149 = icmp eq i32 %_150, 29
  br i1 %_149, label %bb59, label %bb60

bb57:                                             ; preds = %bb56
  store i8 28, i8* %1, align 1
  br label %bb83

bb60:                                             ; preds = %bb58
  %_155 = load i32, i32* %ek, align 4
  %_154 = icmp eq i32 %_155, 30
  br i1 %_154, label %bb61, label %bb62

bb59:                                             ; preds = %bb58
  store i8 29, i8* %1, align 1
  br label %bb83

bb62:                                             ; preds = %bb60
  %_160 = load i32, i32* %ek, align 4
  %_159 = icmp eq i32 %_160, 31
  br i1 %_159, label %bb63, label %bb64

bb61:                                             ; preds = %bb60
  store i8 30, i8* %1, align 1
  br label %bb83

bb64:                                             ; preds = %bb62
  %_165 = load i32, i32* %ek, align 4
  %_164 = icmp eq i32 %_165, 32
  br i1 %_164, label %bb65, label %bb66

bb63:                                             ; preds = %bb62
  store i8 31, i8* %1, align 1
  br label %bb83

bb66:                                             ; preds = %bb64
  %_170 = load i32, i32* %ek, align 4
  %_169 = icmp eq i32 %_170, 33
  br i1 %_169, label %bb67, label %bb68

bb65:                                             ; preds = %bb64
  store i8 32, i8* %1, align 1
  br label %bb83

bb68:                                             ; preds = %bb66
  %_175 = load i32, i32* %ek, align 4
  %_174 = icmp eq i32 %_175, 34
  br i1 %_174, label %bb69, label %bb70

bb67:                                             ; preds = %bb66
  store i8 33, i8* %1, align 1
  br label %bb83

bb70:                                             ; preds = %bb68
  %_180 = load i32, i32* %ek, align 4
  %_179 = icmp eq i32 %_180, 35
  br i1 %_179, label %bb71, label %bb72

bb69:                                             ; preds = %bb68
  store i8 34, i8* %1, align 1
  br label %bb83

bb72:                                             ; preds = %bb70
  %_185 = load i32, i32* %ek, align 4
  %_184 = icmp eq i32 %_185, 39
  br i1 %_184, label %bb73, label %bb74

bb71:                                             ; preds = %bb70
  store i8 35, i8* %1, align 1
  br label %bb83

bb74:                                             ; preds = %bb72
  %_190 = load i32, i32* %ek, align 4
  %_189 = icmp eq i32 %_190, 37
  br i1 %_189, label %bb75, label %bb76

bb73:                                             ; preds = %bb72
  store i8 39, i8* %1, align 1
  br label %bb83

bb76:                                             ; preds = %bb74
  %_195 = load i32, i32* %ek, align 4
  %_194 = icmp eq i32 %_195, 36
  br i1 %_194, label %bb77, label %bb78

bb75:                                             ; preds = %bb74
  store i8 37, i8* %1, align 1
  br label %bb83

bb78:                                             ; preds = %bb76
  %_200 = load i32, i32* %ek, align 4
  %_199 = icmp eq i32 %_200, 38
  br i1 %_199, label %bb79, label %bb80

bb77:                                             ; preds = %bb76
  store i8 36, i8* %1, align 1
  br label %bb83

bb80:                                             ; preds = %bb78
  %_205 = load i32, i32* %ek, align 4
  %_204 = icmp eq i32 %_205, 40
  br i1 %_204, label %bb81, label %bb82

bb79:                                             ; preds = %bb78
  store i8 38, i8* %1, align 1
  br label %bb83

bb82:                                             ; preds = %bb80
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false)
  store i8 41, i8* %1, align 1
  br label %bb83

bb81:                                             ; preds = %bb80
  store i8 40, i8* %1, align 1
  br label %bb83
}

; Function Attrs: inlinehint uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @_ZN3std3ffi6os_str5OsStr10from_inner17hf85e458181eda75fE(%"std::sys::unix::os_str::Slice"* align 1 %inner.0, i64 %inner.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast %"std::sys::unix::os_str::Slice"* %inner.0 to %"std::ffi::os_str::OsStr"*
  %0 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %_2.0, 0
  %1 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, i64 %inner.1, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17hab7f934508766e2bE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice8from_str17hd0a61eada8b3c2b1E([0 x i8]* align 1 %self.0, i64 %self.1)
  %_3.0 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %0, 0
  %_3.1 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { %"std::ffi::os_str::OsStr"*, i64 } @_ZN3std3ffi6os_str5OsStr10from_inner17hf85e458181eda75fE(%"std::sys::unix::os_str::Slice"* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 0
  %3 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %2, 0
  %5 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %4, i64 %3, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice13from_u8_slice17hd976012091d89bfbE([0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %0 = alloca { %"std::sys::unix::os_str::Slice"*, i64 }, align 8
  %1 = bitcast { %"std::sys::unix::os_str::Slice"*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %s.1, i64* %3, align 8
  %4 = getelementptr inbounds { %"std::sys::unix::os_str::Slice"*, i64 }, { %"std::sys::unix::os_str::Slice"*, i64 }* %0, i32 0, i32 0
  %5 = load %"std::sys::unix::os_str::Slice"*, %"std::sys::unix::os_str::Slice"** %4, align 8, !nonnull !1, !align !6, !noundef !1
  %6 = getelementptr inbounds { %"std::sys::unix::os_str::Slice"*, i64 }, { %"std::sys::unix::os_str::Slice"*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } undef, %"std::sys::unix::os_str::Slice"* %5, 0
  %9 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } %8, i64 %7, 1
  ret { %"std::sys::unix::os_str::Slice"*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define internal { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice8from_str17hd0a61eada8b3c2b1E([0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %s.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !6, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  %_3.0 = extractvalue { [0 x i8]*, i64 } %8, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = call { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice13from_u8_slice17hd976012091d89bfbE([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %10 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %9, 0
  %11 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %9, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %12 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } undef, %"std::sys::unix::os_str::Slice"* %10, 0
  %13 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } %12, i64 %11, 1
  ret { %"std::sys::unix::os_str::Slice"*, i64 } %13
}

; Function Attrs: uwtable
define { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17hc6ae5df57cf12038E([0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %0 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17hab7f934508766e2bE"([0 x i8]* align 1 %s.0, i64 %s.1)
  %_4.0 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 0
  %_4.1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2.0 = bitcast %"std::ffi::os_str::OsStr"* %_4.0 to %"std::path::Path"*
  %1 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %_2.0, 0
  %2 = insertvalue { %"std::path::Path"*, i64 } %1, i64 %_4.1, 1
  ret { %"std::path::Path"*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN3std4path77_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$str$GT$6as_ref17he2052ae09db0600dE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17hc6ae5df57cf12038E([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { %"std::path::Path"*, i64 } %0, 0
  %2 = extractvalue { %"std::path::Path"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %1, 0
  %4 = insertvalue { %"std::path::Path"*, i64 } %3, i64 %2, 1
  ret { %"std::path::Path"*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hed9b2ac9b5c247b5E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !7, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h0bd9bbf27b8b31d4E(i64 %_3), !range !8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h90e4411f6963c519E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !7, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h0bd9bbf27b8b31d4E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !8, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hefebae48ddb8616cE(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h3d0622dec52403cfE"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1 to i8*
  %1 = load i8, i8* %0, align 8, !range !9, !noundef !1
  %_2 = zext i8 %1 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb1
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  %2 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"*
  %3 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"* %2, i32 0, i32 1
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hc3e8a987d4331d19E"(%"std::io::error::Custom"** %3)
  br label %bb1

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h5a4ac913c01b1920E"({ {}*, [3 x i64]* }* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %2 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  %4 = load {}*, {}** %3, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  %6 = load [3 x i64]*, [3 x i64]** %5, align 8, !nonnull !1, !align !4, !noundef !1
  %7 = bitcast [3 x i64]* %6 to void ({}*)**
  %8 = getelementptr inbounds void ({}*)*, void ({}*)** %7, i64 0
  %9 = load void ({}*)*, void ({}*)** %8, align 8, !invariant.load !1, !nonnull !1
  invoke void %9({}* %4)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %10 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8, !nonnull !1, !align !4, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17hf942e16f3460d8edE(i8* %12, i64* align 8 %14) #8
          to label %bb2 unwind label %abort

cleanup:                                          ; preds = %start
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %20 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !nonnull !1, !noundef !1
  %23 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8, !nonnull !1, !align !4, !noundef !1
  call void @_ZN5alloc5alloc8box_free17hf942e16f3460d8edE(i8* %22, i64* align 8 %24)
  br label %bb1

abort:                                            ; preds = %bb4
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #9
  unreachable

bb2:                                              ; preds = %bb4
  %26 = bitcast { i8*, i32 }* %0 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf644c59a148dbcb5E"(i8** %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h34c3e54c7ec2ee5eE"(i8** %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h880c9acd7aad0d41E"(%"std::io::error::Custom"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::Custom"* %_1 to { {}*, [3 x i64]* }*
  call void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h5a4ac913c01b1920E"({ {}*, [3 x i64]* }* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h34c3e54c7ec2ee5eE"(i8** %_1) unnamed_addr #1 {
start:
  call void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h481f92bf4463c5b9E"(i8** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hc3e8a987d4331d19E"(%"std::io::error::Custom"** %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %2 = bitcast i64** %1 to %"std::io::error::Custom"**
  %3 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %2, align 8
  invoke void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h880c9acd7aad0d41E"(%"std::io::error::Custom"* %3)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %4 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %5 = load i64*, i64** %4, align 8, !nonnull !1, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17ha3dbbd04ce510e09E(i64* %5) #8
          to label %bb2 unwind label %abort

cleanup:                                          ; preds = %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %11 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %12 = load i64*, i64** %11, align 8, !nonnull !1, !noundef !1
  call void @_ZN5alloc5alloc8box_free17ha3dbbd04ce510e09E(i64* %12)
  br label %bb1

abort:                                            ; preds = %bb4
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #9
  unreachable

bb2:                                              ; preds = %bb4
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h2cc2da4a8635d734E"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %_2 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h05a4dcc01b0675ebE"(%"std::io::error::Custom"* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i64* %_2, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h7b98f79d435a0dffE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9b311747c22690fdE"(i8* %self.0, i64* align 8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h98f7cc493c7c89eeE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h9a82f836dc9d11b3E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3bb70b258a4cb189E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h98f7cc493c7c89eeE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h028defead66363f6E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h415b13e04ca32efeE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h60a72c9004e10f43E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h526ab3650556d48eE"({ i8*, i64* }* align 8 %self)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hba8d2ed05e249dc5E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h7b36f02afb00faf1E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17ha1ad1aaa8a6a23b5E"(i8* %self, i64 %count) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = sub i64 0, %count
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr i8, i8* %self, i64 %1
  store i8* %2, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %_3.i
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h36168d26aa6f0788E"({}* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to {}**
  store {}* %self, {}** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h05a4dcc01b0675ebE"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %ptr, %"std::io::error::Custom"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h3e4849dd5219662dE"(%"std::io::error::SimpleMessage"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::SimpleMessage"**
  store %"std::io::error::SimpleMessage"* %ptr, %"std::io::error::SimpleMessage"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habc16d38cdf0c32fE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3bb70b258a4cb189E"(i64* %self) unnamed_addr #0 {
start:
  %_3 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1b94e9a3c70037edE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"std::io::error::Custom"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habc16d38cdf0c32fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h57029bcc05740997E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h40e2ef48d4934cdaE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3 to %"std::io::error::SimpleMessage"*
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h3e4849dd5219662dE"(%"std::io::error::SimpleMessage"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9b311747c22690fdE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h54928c75ac7430d7E"(i8* %self.0, i64* align 8 %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habc16d38cdf0c32fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1b94e9a3c70037edE"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::Custom"*
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h40e2ef48d4934cdaE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to {}*
  ret {}* %_2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h415b13e04ca32efeE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h54928c75ac7430d7E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; Function Attrs: inlinehint uwtable
define %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha699ab52bc012555E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::SimpleMessage"*
  ret %"std::io::error::SimpleMessage"* %_2
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h526ab3650556d48eE"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !1, !align !4, !noundef !1
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h54928c75ac7430d7E"(i8* %_3.0, i64* align 8 %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h7b36f02afb00faf1E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1b94e9a3c70037edE"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h169758a1441bff65E"({}* %_1.0, [3 x i64]* align 8 %_1.1) unnamed_addr #1 {
start:
  %0 = bitcast [3 x i64]* %_1.1 to void ({}*)**
  %1 = getelementptr inbounds void ({}*)*, void ({}*)** %0, i64 0
  %2 = load void ({}*)*, void ({}*)** %1, align 8, !invariant.load !1, !nonnull !1
  call void %2({}* %_1.0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17h06fba7fea50f3349E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9014085b0fdea6bbE(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h90e4411f6963c519E(i64 %align), !range !7
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !7, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17hff437be482baf7afE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h1b0cb3d3f95cd76eE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !7, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hed9b2ac9b5c247b5E(i64 %_3), !range !8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hefebae48ddb8616cE(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17hb01ef14e5697f6f6E"(i8 %0, i64* align 8 %f) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8, align 1
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  store i8 1, i8* %_7, align 1
  %2 = load i8, i8* %self, align 1, !range !3, !noundef !1
  %3 = sub i8 %2, 41
  %4 = icmp eq i8 %3, 0
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = call i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17hea9c11462456ebe9E"(i64* align 8 %f), !range !5
  store i8 %5, i8* %1, align 1
  br label %bb4

bb3:                                              ; preds = %start
  %x = load i8, i8* %self, align 1, !range !5, !noundef !1
  store i8 %x, i8* %1, align 1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %6 = load i8, i8* %_7, align 1, !range !2, !noundef !1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb6, label %bb5

bb4:                                              ; preds = %bb1
  br label %bb7

bb5:                                              ; preds = %bb6, %bb7
  %8 = load i8, i8* %1, align 1, !range !5, !noundef !1
  ret i8 %8

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define i32 @"_ZN4core6result19Result$LT$T$C$E$GT$14unwrap_or_else17he156cc7a42e466c5E"(%"core::result::Result<i32, std::io::error::Error>"* %self) unnamed_addr #0 {
start:
  %_9 = alloca i8, align 1
  %_7 = alloca i8*, align 8
  %0 = alloca i32, align 4
  store i8 1, i8* %_9, align 1
  %1 = bitcast %"core::result::Result<i32, std::io::error::Error>"* %self to i32*
  %2 = load i32, i32* %1, align 8, !range !10, !noundef !1
  %_3 = zext i32 %2 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<i32, std::io::error::Error>"* %self to %"core::result::Result<i32, std::io::error::Error>::Ok"*
  %4 = getelementptr inbounds %"core::result::Result<i32, std::io::error::Error>::Ok", %"core::result::Result<i32, std::io::error::Error>::Ok"* %3, i32 0, i32 1
  %t = load i32, i32* %4, align 4
  store i32 %t, i32* %0, align 4
  br label %bb7

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<i32, std::io::error::Error>"* %self to %"core::result::Result<i32, std::io::error::Error>::Err"*
  %6 = getelementptr inbounds %"core::result::Result<i32, std::io::error::Error>::Err", %"core::result::Result<i32, std::io::error::Error>::Err"* %5, i32 0, i32 1
  %e = load i8*, i8** %6, align 8, !nonnull !1, !noundef !1
  store i8 0, i8* %_9, align 1
  store i8* %e, i8** %_7, align 8
  %7 = load i8*, i8** %_7, align 8, !nonnull !1, !noundef !1
  %8 = call i32 @"_ZN11osys_unlink11osys_unlink28_$u7b$$u7b$closure$u7d$$u7d$17h58b5c6572d751852E"(i8* %7)
  store i32 %8, i32* %0, align 4
  br label %bb4

bb4:                                              ; preds = %bb1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %9 = load i8, i8* %_9, align 1, !range !2, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %11 = load i32, i32* %0, align 4
  ret i32 %11

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17h5546f98bb41d14b5E"(%"core::result::Result<i32, std::io::error::Error>"* sret(%"core::result::Result<i32, std::io::error::Error>") %0, i8* %1) unnamed_addr #0 {
start:
  %_11 = alloca i8, align 1
  %_7 = alloca { {} }, align 1
  %self = alloca i8*, align 8
  store i8* %1, i8** %self, align 8
  store i8 1, i8* %_11, align 1
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %5 = bitcast { {} }* %_7 to {}*
  %_5 = call i32 @"_ZN11osys_unlink11osys_unlink28_$u7b$$u7b$closure$u7d$$u7d$17h625d2d1bade13c0bE"()
  br label %bb4

bb1:                                              ; preds = %start
  %e = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  %6 = bitcast %"core::result::Result<i32, std::io::error::Error>"* %0 to %"core::result::Result<i32, std::io::error::Error>::Err"*
  %7 = getelementptr inbounds %"core::result::Result<i32, std::io::error::Error>::Err", %"core::result::Result<i32, std::io::error::Error>::Err"* %6, i32 0, i32 1
  store i8* %e, i8** %7, align 8
  %8 = bitcast %"core::result::Result<i32, std::io::error::Error>"* %0 to i32*
  store i32 1, i32* %8, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb1
  %9 = load i8, i8* %_11, align 1, !range !2, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb6, label %bb5

bb4:                                              ; preds = %bb3
  %11 = bitcast %"core::result::Result<i32, std::io::error::Error>"* %0 to %"core::result::Result<i32, std::io::error::Error>::Ok"*
  %12 = getelementptr inbounds %"core::result::Result<i32, std::io::error::Error>::Ok", %"core::result::Result<i32, std::io::error::Error>::Ok"* %11, i32 0, i32 1
  store i32 %_5, i32* %12, align 4
  %13 = bitcast %"core::result::Result<i32, std::io::error::Error>"* %0 to i32*
  store i32 0, i32* %13, align 8
  br label %bb7

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17ha5ce7fd9d4d903aeE"({ [0 x i8]*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_3.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !6, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_3.1 = load i64, i64* %1, align 8
  %2 = call { %"std::path::Path"*, i64 } @"_ZN3std4path77_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$str$GT$6as_ref17he2052ae09db0600dE"([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %3 = extractvalue { %"std::path::Path"*, i64 } %2, 0
  %4 = extractvalue { %"std::path::Path"*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %3, 0
  %6 = insertvalue { %"std::path::Path"*, i64 } %5, i64 %4, 1
  ret { %"std::path::Path"*, i64 } %6
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17hac9de1674b00abbfE(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hff437be482baf7afE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h1b0cb3d3f95cd76eE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #10
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17ha3dbbd04ce510e09E(i64* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca i64*, align 8
  store i64* %0, i64** %ptr, align 8
  %_5 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hba8d2ed05e249dc5E"(i64** align 8 %ptr)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb10

bb1:                                              ; preds = %start
  store i64 24, i64* %2, align 8
  %size = load i64, i64* %2, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_9 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hba8d2ed05e249dc5E"(i64** align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64 8, i64* %1, align 8
  %align = load i64, i64* %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9014085b0fdea6bbE(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  %_17 = load i64*, i64** %ptr, align 8, !nonnull !1, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h9a82f836dc9d11b3E"(i64* %_17)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h3b8e8d6fc7829409E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0f5327586a89cdb4E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %10 = bitcast { i8*, i32 }* %3 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17hf942e16f3460d8edE(i8* %0, i64* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca { i8*, i64* }, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  store i8* %0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  store i64* %1, i64** %6, align 8
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h60a72c9004e10f43E"({ i8*, i64* }* align 8 %ptr)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb10

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { {}*, [3 x i64]* } %7, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %7, 1
  %13 = bitcast [3 x i64]* %_5.1 to i64*
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8, !invariant.load !1
  %16 = bitcast [3 x i64]* %_5.1 to i64*
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %17, align 8, !range !8, !invariant.load !1
  store i64 %15, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h60a72c9004e10f43E"({ i8*, i64* }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !1
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !8, !invariant.load !1
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9014085b0fdea6bbE(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !1, !align !4, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h7b98f79d435a0dffE"(i8* %_17.0, i64* align 8 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h3b8e8d6fc7829409E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0f5327586a89cdb4E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %29 = bitcast { i8*, i32 }* %4 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %34 = insertvalue { i8*, i32 } %33, i32 %32, 1
  resume { i8*, i32 } %34

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h86a73a744d3ed5dcE"(%"std::io::error::Custom"* %raw) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17h3a8a19f7fe5ada83E"(%"std::io::error::Custom"* %raw)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17h3a8a19f7fe5ada83E"(%"std::io::error::Custom"* %raw) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca %"std::io::error::Custom"*, align 8
  %_3 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h2cc2da4a8635d734E"(%"std::io::error::Custom"* %raw)
          to label %bb1 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb2

bb1:                                              ; preds = %start
  %7 = bitcast %"std::io::error::Custom"** %1 to i64**
  store i64* %_3, i64** %7, align 8
  %8 = bitcast %"std::io::error::Custom"** %1 to %"alloc::alloc::Global"*
  %9 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %1, align 8, !nonnull !1, !align !4, !noundef !1
  ret %"std::io::error::Custom"* %9

bb3:                                              ; preds = %bb2
  %10 = bitcast { i8*, i32 }* %0 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0f5327586a89cdb4E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17hff437be482baf7afE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h415b13e04ca32efeE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !7, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17hac9de1674b00abbfE(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h481f92bf4463c5b9E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>", align 8
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  call void @_ZN3std2io5error14repr_bitpacked11decode_repr17h00d113e96841e1baE(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %_2, i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h3d0622dec52403cfE"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h0b454c83203dee51E"(%"std::io::error::Custom"* %p) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h86a73a744d3ed5dcE"(%"std::io::error::Custom"* %p)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: uwtable
define i32 @osys_unlink([0 x i8]* align 1 %path.0, i64 %path.1) unnamed_addr #1 {
start:
  %_2 = alloca %"core::result::Result<i32, std::io::error::Error>", align 8
  %_3 = call i8* @_ZN3std2fs11remove_file17he2b4792bd6feb2e4E([0 x i8]* align 1 %path.0, i64 %path.1)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17h5546f98bb41d14b5E"(%"core::result::Result<i32, std::io::error::Error>"* sret(%"core::result::Result<i32, std::io::error::Error>") %_2, i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = call i32 @"_ZN4core6result19Result$LT$T$C$E$GT$14unwrap_or_else17he156cc7a42e466c5E"(%"core::result::Result<i32, std::io::error::Error>"* %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN11osys_unlink11osys_unlink28_$u7b$$u7b$closure$u7d$$u7d$17h625d2d1bade13c0bE"() unnamed_addr #0 {
start:
  ret i32 0
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN11osys_unlink11osys_unlink28_$u7b$$u7b$closure$u7d$$u7d$17h58b5c6572d751852E"(i8* %0) unnamed_addr #0 {
start:
  %_2 = alloca i8*, align 8
  store i8* %0, i8** %_2, align 8
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf644c59a148dbcb5E"(i8** %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 -1
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: uwtable
declare i8* @_ZN3std3sys4unix2fs6unlink17hd2c7b981ea2de6deE(%"std::path::Path"* align 1, i64) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #5

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #6

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { noreturn }
attributes #8 = { noinline }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i8 0, i8 2}
!3 = !{i8 0, i8 42}
!4 = !{i64 8}
!5 = !{i8 0, i8 41}
!6 = !{i64 1}
!7 = !{i64 1, i64 -9223372036854775807}
!8 = !{i64 1, i64 0}
!9 = !{i8 0, i8 4}
!10 = !{i32 0, i32 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_unlink.rs.bc", hash: (1266259839, 3994356134, 1834320792, 4067634442, 2467322879))
^1 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h60a72c9004e10f43E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^33))))) ; guid = 146981911484518373
^2 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h415b13e04ca32efeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 609232626650296926
^3 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17h3a8a19f7fe5ada83E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^21)), refs: (^60)))) ; guid = 965832509714175107
^4 = gv: (name: "alloc91", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1142768575359543315
^5 = gv: (name: "_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17ha5ce7fd9d4d903aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^53))))) ; guid = 1151336637014557281
^6 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17ha1ad1aaa8a6a23b5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 1420227509426875785
^7 = gv: (name: "_ZN3std2fs11remove_file17he2b4792bd6feb2e4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^5), (callee: ^51)), refs: (^60)))) ; guid = 1472558272773731907
^8 = gv: (name: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17hb01ef14e5697f6f6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^22))))) ; guid = 1670285484409633886
^9 = gv: (name: "alloc92", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4)))) ; guid = 1760840510116319780
^10 = gv: (name: "_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h880c9acd7aad0d41E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^36))))) ; guid = 1842645482848952105
^11 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17hefebae48ddb8616cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 2178860642116892562
^12 = gv: (name: "_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h34c3e54c7ec2ee5eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^58))))) ; guid = 2346153315874046634
^13 = gv: (name: "_ZN11osys_unlink11osys_unlink28_$u7b$$u7b$closure$u7d$$u7d$17h58b5c6572d751852E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^63))))) ; guid = 2417662513663128319
^14 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h06fba7fea50f3349E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 2570616853168649603
^15 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h9014085b0fdea6bbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^34))))) ; guid = 3055469071530511562
^16 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h40e2ef48d4934cdaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3478634870444396137
^17 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h0b454c83203dee51E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^28))))) ; guid = 4162286077002870775
^18 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^19 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habc16d38cdf0c32fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 4774104867976405153
^20 = gv: (name: "_ZN3std3sys4unix6os_str5Slice8from_str17hd0a61eada8b3c2b1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 21, calls: ((callee: ^26))))) ; guid = 4853374592174165131
^21 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h2cc2da4a8635d734E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^65))))) ; guid = 5182751510165703540
^22 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17hea9c11462456ebe9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^14))))) ; guid = 5307884611634526033
^23 = gv: (name: "_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h169758a1441bff65E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 5392094669085992152
^24 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1b94e9a3c70037edE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 5651885726509015784
^25 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0f5327586a89cdb4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^41), (callee: ^2), (callee: ^69))))) ; guid = 5719227129910282239
^26 = gv: (name: "_ZN3std3sys4unix6os_str5Slice13from_u8_slice17hd976012091d89bfbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14))) ; guid = 6098655236626970383
^27 = gv: (name: "alloc90", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6160232220255449906
^28 = gv: (name: "_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h86a73a744d3ed5dcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^3))))) ; guid = 6294611641213916678
^29 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^30 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h0bd9bbf27b8b31d4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 6596013135767534537
^31 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h9a82f836dc9d11b3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^52), (callee: ^32))))) ; guid = 7384533016796233684
^32 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h98f7cc493c7c89eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 7844132333370045517
^33 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h526ab3650556d48eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^50))))) ; guid = 7935099562784835049
^34 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h90e4411f6963c519E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 7991513375165901508
^35 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$3map17h5546f98bb41d14b5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, calls: ((callee: ^70))))) ; guid = 8450926062562777210
^36 = gv: (name: "_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h5a4ac913c01b1920E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^64), (callee: ^72)), refs: (^60)))) ; guid = 8523934910914809896
^37 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h57029bcc05740997E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^16), (callee: ^48))))) ; guid = 8575622611858306626
^38 = gv: (name: "_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h3d0622dec52403cfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^49))))) ; guid = 8606122860769810956
^39 = gv: (name: "_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17hab7f934508766e2bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^20), (callee: ^40))))) ; guid = 8755642554457813670
^40 = gv: (name: "_ZN3std3ffi6os_str5OsStr10from_inner17hf85e458181eda75fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 9019206031541647706
^41 = gv: (name: "_ZN4core5alloc6layout6Layout4size17hff437be482baf7afE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 9072814852563062229
^42 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h7b98f79d435a0dffE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^59), (callee: ^32))))) ; guid = 9344176320441389490
^43 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h3b8e8d6fc7829409E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^67), (callee: ^19))))) ; guid = 9353258623271238414
^44 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hba8d2ed05e249dc5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^66))))) ; guid = 9429063605908221180
^45 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$14unwrap_or_else17he156cc7a42e466c5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 30, calls: ((callee: ^13))))) ; guid = 9790362636279855244
^46 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^47 = gv: (name: "_ZN3std2io5error14repr_bitpacked14kind_from_prim17h10c580303526d2ecE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 213))) ; guid = 10272038197174747863
^48 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h3e4849dd5219662dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 10644367406207592834
^49 = gv: (name: "_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hc3e8a987d4331d19E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^10), (callee: ^57), (callee: ^72)), refs: (^60)))) ; guid = 10955616759478033329
^50 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h54928c75ac7430d7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 10958969678937972669
^51 = gv: (name: "_ZN3std3sys4unix2fs6unlink17hd2c7b981ea2de6deE") ; guid = 11871338431339996005
^52 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3bb70b258a4cb189E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^24), (callee: ^19))))) ; guid = 12408764656661854008
^53 = gv: (name: "_ZN3std4path77_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$str$GT$6as_ref17he2052ae09db0600dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^62))))) ; guid = 12726924719747213324
^54 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha699ab52bc012555E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 13624836557013481441
^55 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr17h00d113e96841e1baE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 86, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^16), (callee: ^56), (callee: ^46), (callee: ^47), (callee: ^37), (callee: ^6), (callee: ^17), (callee: ^54), (callee: ^8)), refs: (^60, ^9, ^27)))) ; guid = 14091778838550111839
^56 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h36168d26aa6f0788E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 14280431835545379491
^57 = gv: (name: "_ZN5alloc5alloc8box_free17ha3dbbd04ce510e09E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^44), (callee: ^15), (callee: ^31), (callee: ^43), (callee: ^25)), refs: (^60)))) ; guid = 14587521831583686724
^58 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h481f92bf4463c5b9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^55), (callee: ^38))))) ; guid = 14602413695649303939
^59 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h9b311747c22690fdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^50), (callee: ^19))))) ; guid = 14656306434101563800
^60 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^61 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hed9b2ac9b5c247b5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^30))))) ; guid = 15087293467819838119
^62 = gv: (name: "_ZN3std4path4Path3new17hc6ae5df57cf12038E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^39))))) ; guid = 15310961301878757293
^63 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf644c59a148dbcb5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^12))))) ; guid = 15602331136077280239
^64 = gv: (name: "_ZN5alloc5alloc8box_free17hf942e16f3460d8edE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^1), (callee: ^15), (callee: ^42), (callee: ^43), (callee: ^25)), refs: (^60)))) ; guid = 16345480457214263438
^65 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h05a4dcc01b0675ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 16490190536003666450
^66 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h7b36f02afb00faf1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^24))))) ; guid = 16940893088013389012
^67 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h028defead66363f6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^2))))) ; guid = 17485157016147072269
^68 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h1b0cb3d3f95cd76eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^61), (callee: ^11))))) ; guid = 17618553485753074126
^69 = gv: (name: "_ZN5alloc5alloc7dealloc17hac9de1674b00abbfE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^41), (callee: ^68), (callee: ^18))))) ; guid = 18041218530522723369
^70 = gv: (name: "_ZN11osys_unlink11osys_unlink28_$u7b$$u7b$closure$u7d$$u7d$17h625d2d1bade13c0bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 18310346012559649767
^71 = gv: (name: "osys_unlink", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^7), (callee: ^35), (callee: ^45))))) ; guid = 18341453796236825295
^72 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^73 = blockcount: 294
