; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/sprintint_fix.rs.bc'
source_filename = "sprintint_fix.fb635e62-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc3 = private unnamed_addr constant <{ [20 x i8] }> <{ [20 x i8] c"\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\09\00" }>, align 2
@anon.dc2d8bb3c0a04944b17c4009e4418f01.0 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [20 x i8] }>, <{ [20 x i8] }>* @alloc3, i32 0, i32 0, i32 0), [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@alloc24 = private unnamed_addr constant <{ [94 x i8] }> <{ [94 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/sprintint_fix.rs" }>, align 1
@alloc7 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00\10\00\00\00\11\00\00\00" }>, align 8
@alloc9 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00\12\00\00\00\11\00\00\00" }>, align 8
@alloc11 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00\14\00\00\00\11\00\00\00" }>, align 8
@alloc13 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00\16\00\00\00\11\00\00\00" }>, align 8
@alloc15 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00\18\00\00\00\11\00\00\00" }>, align 8
@alloc17 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00\1A\00\00\00\11\00\00\00" }>, align 8
@alloc19 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00\1C\00\00\00\11\00\00\00" }>, align 8
@alloc21 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00\1E\00\00\00\11\00\00\00" }>, align 8
@alloc23 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00 \00\00\00\11\00\00\00" }>, align 8
@alloc25 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00!\00\00\00\0D\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h626f139821b73b05E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: uwtable
define void @sprintint_fix([20 x i8]* align 1 %buf, i64 %0) unnamed_addr #1 {
start:
  %v = alloca i64, align 8
  store i64 %0, i64* %v, align 8
  %_7.0 = bitcast [20 x i8]* %buf to [0 x i8]*
  %_6 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h626f139821b73b05E"([0 x i8]* align 1 %_7.0, i64 20)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = bitcast i8* %_6 to [10 x i16]*
  %_10.0 = load [0 x i16]*, [0 x i16]** getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !align !2, !noundef !1
  %_10.1 = load i64, i64* getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 1), align 8
  %_13 = load i64, i64* %v, align 8
  %_12 = urem i64 %_13, 100
  %_15 = icmp ult i64 %_12, 10
  %1 = call i1 @llvm.expect.i1(i1 %_15, i1 true)
  br i1 %1, label %bb2, label %panic

bb2:                                              ; preds = %bb1
  %2 = getelementptr inbounds [0 x i16], [0 x i16]* %_10.0, i64 0, i64 %_12
  %_9 = load i16, i16* %2, align 2
  %3 = getelementptr inbounds [10 x i16], [10 x i16]* %_5, i64 0, i64 8
  store i16 %_9, i16* %3, align 2
  %4 = load i64, i64* %v, align 8
  %5 = udiv i64 %4, 100
  store i64 %5, i64* %v, align 8
  %_18.0 = load [0 x i16]*, [0 x i16]** getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !align !2, !noundef !1
  %_18.1 = load i64, i64* getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 1), align 8
  %_21 = load i64, i64* %v, align 8
  %_20 = urem i64 %_21, 100
  %_23 = icmp ult i64 %_20, 10
  %6 = call i1 @llvm.expect.i1(i1 %_23, i1 true)
  br i1 %6, label %bb3, label %panic1

panic:                                            ; preds = %bb1
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_12, i64 10, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc7 to %"core::panic::location::Location"*)) #5
  unreachable

bb3:                                              ; preds = %bb2
  %7 = getelementptr inbounds [0 x i16], [0 x i16]* %_18.0, i64 0, i64 %_20
  %_17 = load i16, i16* %7, align 2
  %8 = getelementptr inbounds [10 x i16], [10 x i16]* %_5, i64 0, i64 7
  store i16 %_17, i16* %8, align 2
  %9 = load i64, i64* %v, align 8
  %10 = udiv i64 %9, 100
  store i64 %10, i64* %v, align 8
  %_26.0 = load [0 x i16]*, [0 x i16]** getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !align !2, !noundef !1
  %_26.1 = load i64, i64* getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 1), align 8
  %_29 = load i64, i64* %v, align 8
  %_28 = urem i64 %_29, 100
  %_31 = icmp ult i64 %_28, 10
  %11 = call i1 @llvm.expect.i1(i1 %_31, i1 true)
  br i1 %11, label %bb4, label %panic2

panic1:                                           ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_20, i64 10, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc9 to %"core::panic::location::Location"*)) #5
  unreachable

bb4:                                              ; preds = %bb3
  %12 = getelementptr inbounds [0 x i16], [0 x i16]* %_26.0, i64 0, i64 %_28
  %_25 = load i16, i16* %12, align 2
  %13 = getelementptr inbounds [10 x i16], [10 x i16]* %_5, i64 0, i64 6
  store i16 %_25, i16* %13, align 2
  %14 = load i64, i64* %v, align 8
  %15 = udiv i64 %14, 100
  store i64 %15, i64* %v, align 8
  %_34.0 = load [0 x i16]*, [0 x i16]** getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !align !2, !noundef !1
  %_34.1 = load i64, i64* getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 1), align 8
  %_37 = load i64, i64* %v, align 8
  %_36 = urem i64 %_37, 100
  %_39 = icmp ult i64 %_36, 10
  %16 = call i1 @llvm.expect.i1(i1 %_39, i1 true)
  br i1 %16, label %bb5, label %panic3

panic2:                                           ; preds = %bb3
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_28, i64 10, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc11 to %"core::panic::location::Location"*)) #5
  unreachable

bb5:                                              ; preds = %bb4
  %17 = getelementptr inbounds [0 x i16], [0 x i16]* %_34.0, i64 0, i64 %_36
  %_33 = load i16, i16* %17, align 2
  %18 = getelementptr inbounds [10 x i16], [10 x i16]* %_5, i64 0, i64 5
  store i16 %_33, i16* %18, align 2
  %19 = load i64, i64* %v, align 8
  %20 = udiv i64 %19, 100
  store i64 %20, i64* %v, align 8
  %_42.0 = load [0 x i16]*, [0 x i16]** getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !align !2, !noundef !1
  %_42.1 = load i64, i64* getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 1), align 8
  %_45 = load i64, i64* %v, align 8
  %_44 = urem i64 %_45, 100
  %_47 = icmp ult i64 %_44, 10
  %21 = call i1 @llvm.expect.i1(i1 %_47, i1 true)
  br i1 %21, label %bb6, label %panic4

panic3:                                           ; preds = %bb4
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_36, i64 10, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc13 to %"core::panic::location::Location"*)) #5
  unreachable

bb6:                                              ; preds = %bb5
  %22 = getelementptr inbounds [0 x i16], [0 x i16]* %_42.0, i64 0, i64 %_44
  %_41 = load i16, i16* %22, align 2
  %23 = getelementptr inbounds [10 x i16], [10 x i16]* %_5, i64 0, i64 4
  store i16 %_41, i16* %23, align 2
  %24 = load i64, i64* %v, align 8
  %25 = udiv i64 %24, 100
  store i64 %25, i64* %v, align 8
  %_50.0 = load [0 x i16]*, [0 x i16]** getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !align !2, !noundef !1
  %_50.1 = load i64, i64* getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 1), align 8
  %_53 = load i64, i64* %v, align 8
  %_52 = urem i64 %_53, 100
  %_55 = icmp ult i64 %_52, 10
  %26 = call i1 @llvm.expect.i1(i1 %_55, i1 true)
  br i1 %26, label %bb7, label %panic5

panic4:                                           ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_44, i64 10, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc15 to %"core::panic::location::Location"*)) #5
  unreachable

bb7:                                              ; preds = %bb6
  %27 = getelementptr inbounds [0 x i16], [0 x i16]* %_50.0, i64 0, i64 %_52
  %_49 = load i16, i16* %27, align 2
  %28 = getelementptr inbounds [10 x i16], [10 x i16]* %_5, i64 0, i64 3
  store i16 %_49, i16* %28, align 2
  %29 = load i64, i64* %v, align 8
  %30 = udiv i64 %29, 100
  store i64 %30, i64* %v, align 8
  %_58.0 = load [0 x i16]*, [0 x i16]** getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !align !2, !noundef !1
  %_58.1 = load i64, i64* getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 1), align 8
  %_61 = load i64, i64* %v, align 8
  %_60 = urem i64 %_61, 100
  %_63 = icmp ult i64 %_60, 10
  %31 = call i1 @llvm.expect.i1(i1 %_63, i1 true)
  br i1 %31, label %bb8, label %panic6

panic5:                                           ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_52, i64 10, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc17 to %"core::panic::location::Location"*)) #5
  unreachable

bb8:                                              ; preds = %bb7
  %32 = getelementptr inbounds [0 x i16], [0 x i16]* %_58.0, i64 0, i64 %_60
  %_57 = load i16, i16* %32, align 2
  %33 = getelementptr inbounds [10 x i16], [10 x i16]* %_5, i64 0, i64 2
  store i16 %_57, i16* %33, align 2
  %34 = load i64, i64* %v, align 8
  %35 = udiv i64 %34, 100
  store i64 %35, i64* %v, align 8
  %_66.0 = load [0 x i16]*, [0 x i16]** getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !align !2, !noundef !1
  %_66.1 = load i64, i64* getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 1), align 8
  %_69 = load i64, i64* %v, align 8
  %_68 = urem i64 %_69, 100
  %_71 = icmp ult i64 %_68, 10
  %36 = call i1 @llvm.expect.i1(i1 %_71, i1 true)
  br i1 %36, label %bb9, label %panic7

panic6:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_60, i64 10, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc19 to %"core::panic::location::Location"*)) #5
  unreachable

bb9:                                              ; preds = %bb8
  %37 = getelementptr inbounds [0 x i16], [0 x i16]* %_66.0, i64 0, i64 %_68
  %_65 = load i16, i16* %37, align 2
  %38 = getelementptr inbounds [10 x i16], [10 x i16]* %_5, i64 0, i64 1
  store i16 %_65, i16* %38, align 2
  %39 = load i64, i64* %v, align 8
  %40 = udiv i64 %39, 100
  store i64 %40, i64* %v, align 8
  %_74.0 = load [0 x i16]*, [0 x i16]** getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !align !2, !noundef !1
  %_74.1 = load i64, i64* getelementptr inbounds ({ [0 x i16]*, i64 }, { [0 x i16]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @anon.dc2d8bb3c0a04944b17c4009e4418f01.0 to { [0 x i16]*, i64 }*), i32 0, i32 1), align 8
  %_77 = load i64, i64* %v, align 8
  %_76 = urem i64 %_77, 100
  %_79 = icmp ult i64 %_76, 10
  %41 = call i1 @llvm.expect.i1(i1 %_79, i1 true)
  br i1 %41, label %bb10, label %panic8

panic7:                                           ; preds = %bb8
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_68, i64 10, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc21 to %"core::panic::location::Location"*)) #5
  unreachable

bb10:                                             ; preds = %bb9
  %42 = getelementptr inbounds [0 x i16], [0 x i16]* %_74.0, i64 0, i64 %_76
  %_73 = load i16, i16* %42, align 2
  %43 = getelementptr inbounds [10 x i16], [10 x i16]* %_5, i64 0, i64 0
  store i16 %_73, i16* %43, align 2
  %_83 = load i64, i64* %v, align 8
  %_82 = trunc i64 %_83 to i8
  %44 = call { i8, i1 } @llvm.uadd.with.overflow.i8(i8 48, i8 %_82)
  %_84.0 = extractvalue { i8, i1 } %44, 0
  %_84.1 = extractvalue { i8, i1 } %44, 1
  %45 = call i1 @llvm.expect.i1(i1 %_84.1, i1 false)
  br i1 %45, label %panic9, label %bb11

panic8:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_76, i64 10, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc23 to %"core::panic::location::Location"*)) #5
  unreachable

bb11:                                             ; preds = %bb10
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  store i8 %_84.0, i8* %46, align 1
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 1
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 2
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 3
  store i8 0, i8* %49, align 1
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 4
  store i8 0, i8* %50, align 1
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 5
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 6
  store i8 0, i8* %52, align 1
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 7
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 8
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 9
  store i8 0, i8* %55, align 1
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 10
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 11
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 12
  store i8 0, i8* %58, align 1
  %59 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 13
  store i8 0, i8* %59, align 1
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 14
  store i8 0, i8* %60, align 1
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 15
  store i8 0, i8* %61, align 1
  %62 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 16
  store i8 0, i8* %62, align 1
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 17
  store i8 0, i8* %63, align 1
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 18
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 19
  store i8 0, i8* %65, align 1
  ret void

panic9:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc25 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i8, i1 } @llvm.uadd.with.overflow.i8(i8, i8) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/sprintint_fix.rs.bc", hash: (4166814019, 1888877551, 414177826, 3315210454, 122074004))
^1 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 812308147334100546
^2 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 937179327211158910
^3 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^4 = gv: (name: "anon.dc2d8bb3c0a04944b17c4009e4418f01.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 5266665754119550068
^5 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 6040081873656261057
^6 = gv: (name: "llvm.uadd.with.overflow.i8") ; guid = 6547928740380184413
^7 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 7017594284176488364
^8 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 9210318634502634606
^9 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 9343341401482361349
^10 = gv: (name: "sprintint_fix", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 197, calls: ((callee: ^14), (callee: ^20), (callee: ^11)), refs: (^7, ^5, ^9, ^15, ^16, ^8, ^17, ^13, ^19, ^2, ^1, ^4)))) ; guid = 9682341267277850972
^11 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^12 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10829546615956149272
^13 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 11881863471071240582
^14 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h626f139821b73b05E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 12340624879275553643
^15 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 13233685626506700860
^16 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 13744530963629387859
^17 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 14760051877337604056
^18 = gv: (name: "alloc3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16511619916660325970
^19 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^12)))) ; guid = 16797578962429045442
^20 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^21 = blockcount: 23
