; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8encode_.rs.bc'
source_filename = "u8encode_.e734cd24-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc27 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8encode_.rs" }>, align 1
@alloc4 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\0F\00\00\00\09\00\00\00" }>, align 8
@alloc6 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\12\00\00\00\09\00\00\00" }>, align 8
@alloc8 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\13\00\00\00\09\00\00\00" }>, align 8
@alloc10 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\16\00\00\00\09\00\00\00" }>, align 8
@alloc12 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\17\00\00\00\09\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\18\00\00\00\09\00\00\00" }>, align 8
@alloc16 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\1B\00\00\00\09\00\00\00" }>, align 8
@alloc18 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\1C\00\00\00\09\00\00\00" }>, align 8
@alloc20 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\1D\00\00\00\09\00\00\00" }>, align 8
@alloc22 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\1E\00\00\00\09\00\00\00" }>, align 8
@alloc24 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\0B\00\00\00\09\00\00\00" }>, align 8
@alloc26 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\0C\00\00\00\09\00\00\00" }>, align 8
@alloc28 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00!\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17he474b7e5559809c9E"(i8* align 1 %0, i64 %1, [0 x i8]* align 1 %default.0, i64 %default.1) unnamed_addr #0 {
start:
  %_5 = alloca i8, align 1
  %2 = alloca { [0 x i8]*, i64 }, align 8
  %self = alloca { i8*, i64 }, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  store i8 1, i8* %_5, align 1
  %5 = bitcast { i8*, i64 }* %self to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_3 = select i1 %7, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_5, align 1
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  store [0 x i8]* %default.0, [0 x i8]** %8, align 8
  %9 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  store i64 %default.1, i64* %9, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %10 = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 0
  %x.0 = load [0 x i8]*, [0 x i8]** %11, align 8, !nonnull !1, !align !2, !noundef !1
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 1
  %x.1 = load i64, i64* %12, align 8
  %13 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  store [0 x i8]* %x.0, [0 x i8]** %13, align 8
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  store i64 %x.1, i64* %14, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %15 = load i8, i8* %_5, align 1, !range !3, !noundef !1
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %17 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  %18 = load [0 x i8]*, [0 x i8]** %17, align 8, !nonnull !1, !align !2, !noundef !1
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %18, 0
  %22 = insertvalue { [0 x i8]*, i64 } %21, i64 %20, 1
  ret { [0 x i8]*, i64 } %22

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: uwtable
define i32 @u8encode_(i32 %ch, i8* align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %t = alloca [8 x i8], align 1
  %len = alloca i32, align 4
  store i32 -1, i32* %len, align 4
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %t, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 8, i1 false)
  %_6.0 = bitcast [8 x i8]* %t to [0 x i8]*
  %1 = call { [0 x i8]*, i64 } @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17he474b7e5559809c9E"(i8* align 1 %s.0, i64 %s.1, [0 x i8]* align 1 %_6.0, i64 8)
  %s.01 = extractvalue { [0 x i8]*, i64 } %1, 0
  %s.12 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = icmp eq i32 %ch, 0
  br i1 %2, label %bb2, label %bb5

bb2:                                              ; preds = %bb1
  store i32 2, i32* %len, align 4
  %_12 = icmp ult i64 0, %s.12
  %3 = call i1 @llvm.expect.i1(i1 %_12, i1 true)
  br i1 %3, label %bb3, label %panic12

bb5:                                              ; preds = %bb1
  %_16 = icmp slt i32 %ch, 128
  br i1 %_16, label %bb6, label %bb8

bb8:                                              ; preds = %bb5
  %_22 = icmp slt i32 %ch, 2048
  br i1 %_22, label %bb9, label %bb13

bb6:                                              ; preds = %bb5
  store i32 1, i32* %len, align 4
  %_21 = icmp ult i64 0, %s.12
  %4 = call i1 @llvm.expect.i1(i1 %_21, i1 true)
  br i1 %4, label %bb7, label %panic

bb7:                                              ; preds = %bb6
  %5 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 0
  %6 = trunc i32 %ch to i8
  store i8 %6, i8* %5, align 1
  br label %bb29

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc4 to %"core::panic::location::Location"*)) #5
  unreachable

bb29:                                             ; preds = %bb4, %bb28, %bb19, %bb20, %bb12, %bb7
  %_92 = load i32, i32* %len, align 4
  %_91 = icmp sgt i32 %_92, 0
  br i1 %_91, label %bb30, label %bb32

bb13:                                             ; preds = %bb8
  %_37 = icmp slt i32 %ch, 65536
  br i1 %_37, label %bb14, label %bb20

bb9:                                              ; preds = %bb8
  store i32 2, i32* %len, align 4
  %_27.0 = ashr i32 %ch, 6
  br label %bb10

bb10:                                             ; preds = %bb9
  %_24 = trunc i32 %_27.0 to i8
  %_30 = icmp ult i64 0, %s.12
  %7 = call i1 @llvm.expect.i1(i1 %_30, i1 true)
  br i1 %7, label %bb11, label %panic3

bb11:                                             ; preds = %bb10
  %8 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 0
  %9 = or i8 -64, %_24
  store i8 %9, i8* %8, align 1
  %_32 = and i32 %ch, 63
  %_31 = trunc i32 %_32 to i8
  %_36 = icmp ult i64 1, %s.12
  %10 = call i1 @llvm.expect.i1(i1 %_36, i1 true)
  br i1 %10, label %bb12, label %panic4

panic3:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc6 to %"core::panic::location::Location"*)) #5
  unreachable

bb12:                                             ; preds = %bb11
  %11 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 1
  %12 = or i8 -128, %_31
  store i8 %12, i8* %11, align 1
  br label %bb29

panic4:                                           ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc8 to %"core::panic::location::Location"*)) #5
  unreachable

bb20:                                             ; preds = %bb13
  %_60 = icmp slt i32 %ch, 1114112
  br i1 %_60, label %bb21, label %bb29

bb14:                                             ; preds = %bb13
  store i32 3, i32* %len, align 4
  %_42.0 = ashr i32 %ch, 12
  br label %bb15

bb15:                                             ; preds = %bb14
  %_39 = trunc i32 %_42.0 to i8
  %_45 = icmp ult i64 0, %s.12
  %13 = call i1 @llvm.expect.i1(i1 %_45, i1 true)
  br i1 %13, label %bb16, label %panic5

bb16:                                             ; preds = %bb15
  %14 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 0
  %15 = or i8 -32, %_39
  store i8 %15, i8* %14, align 1
  %_50.0 = ashr i32 %ch, 6
  br label %bb17

panic5:                                           ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc10 to %"core::panic::location::Location"*)) #5
  unreachable

bb17:                                             ; preds = %bb16
  %_47 = and i32 %_50.0, 63
  %_46 = trunc i32 %_47 to i8
  %_53 = icmp ult i64 1, %s.12
  %16 = call i1 @llvm.expect.i1(i1 %_53, i1 true)
  br i1 %16, label %bb18, label %panic6

bb18:                                             ; preds = %bb17
  %17 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 1
  %18 = or i8 -128, %_46
  store i8 %18, i8* %17, align 1
  %_55 = and i32 %ch, 63
  %_54 = trunc i32 %_55 to i8
  %_59 = icmp ult i64 2, %s.12
  %19 = call i1 @llvm.expect.i1(i1 %_59, i1 true)
  br i1 %19, label %bb19, label %panic7

panic6:                                           ; preds = %bb17
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc12 to %"core::panic::location::Location"*)) #5
  unreachable

bb19:                                             ; preds = %bb18
  %20 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 2
  %21 = or i8 -128, %_54
  store i8 %21, i8* %20, align 1
  br label %bb29

panic7:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc14 to %"core::panic::location::Location"*)) #5
  unreachable

bb21:                                             ; preds = %bb20
  store i32 4, i32* %len, align 4
  %_65.0 = ashr i32 %ch, 18
  br label %bb22

bb22:                                             ; preds = %bb21
  %_62 = trunc i32 %_65.0 to i8
  %_68 = icmp ult i64 0, %s.12
  %22 = call i1 @llvm.expect.i1(i1 %_68, i1 true)
  br i1 %22, label %bb23, label %panic8

bb23:                                             ; preds = %bb22
  %23 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 0
  %24 = or i8 -16, %_62
  store i8 %24, i8* %23, align 1
  %_73.0 = ashr i32 %ch, 12
  br label %bb24

panic8:                                           ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #5
  unreachable

bb24:                                             ; preds = %bb23
  %_70 = and i32 %_73.0, 63
  %_69 = trunc i32 %_70 to i8
  %_76 = icmp ult i64 1, %s.12
  %25 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %25, label %bb25, label %panic9

bb25:                                             ; preds = %bb24
  %26 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 1
  %27 = or i8 -128, %_69
  store i8 %27, i8* %26, align 1
  %_81.0 = ashr i32 %ch, 6
  br label %bb26

panic9:                                           ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc18 to %"core::panic::location::Location"*)) #5
  unreachable

bb26:                                             ; preds = %bb25
  %_78 = and i32 %_81.0, 63
  %_77 = trunc i32 %_78 to i8
  %_84 = icmp ult i64 2, %s.12
  %28 = call i1 @llvm.expect.i1(i1 %_84, i1 true)
  br i1 %28, label %bb27, label %panic10

bb27:                                             ; preds = %bb26
  %29 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 2
  %30 = or i8 -128, %_77
  store i8 %30, i8* %29, align 1
  %_86 = and i32 %ch, 63
  %_85 = trunc i32 %_86 to i8
  %_90 = icmp ult i64 3, %s.12
  %31 = call i1 @llvm.expect.i1(i1 %_90, i1 true)
  br i1 %31, label %bb28, label %panic11

panic10:                                          ; preds = %bb26
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc20 to %"core::panic::location::Location"*)) #5
  unreachable

bb28:                                             ; preds = %bb27
  %32 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 3
  %33 = or i8 -128, %_85
  store i8 %33, i8* %32, align 1
  br label %bb29

panic11:                                          ; preds = %bb27
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 3, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc22 to %"core::panic::location::Location"*)) #5
  unreachable

bb3:                                              ; preds = %bb2
  %34 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 0
  store i8 -64, i8* %34, align 1
  %_15 = icmp ult i64 1, %s.12
  %35 = call i1 @llvm.expect.i1(i1 %_15, i1 true)
  br i1 %35, label %bb4, label %panic13

panic12:                                          ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc24 to %"core::panic::location::Location"*)) #5
  unreachable

bb4:                                              ; preds = %bb3
  %36 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 1
  store i8 -128, i8* %36, align 1
  br label %bb29

panic13:                                          ; preds = %bb3
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc26 to %"core::panic::location::Location"*)) #5
  unreachable

bb32:                                             ; preds = %bb31, %bb29
  %37 = load i32, i32* %len, align 4
  ret i32 %37

bb30:                                             ; preds = %bb29
  %_94 = load i32, i32* %len, align 4
  %_93 = sext i32 %_94 to i64
  %_96 = icmp ult i64 %_93, %s.12
  %38 = call i1 @llvm.expect.i1(i1 %_96, i1 true)
  br i1 %38, label %bb31, label %panic14

bb31:                                             ; preds = %bb30
  %39 = getelementptr inbounds [0 x i8], [0 x i8]* %s.01, i64 0, i64 %_93
  store i8 0, i8* %39, align 1
  br label %bb32

panic14:                                          ; preds = %bb30
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_93, i64 %s.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc28 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}

^0 = module: (path: "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8encode_.rs.bc", hash: (4105432493, 3156043184, 939464800, 1106713670, 3533510724))
^1 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 989981214312565076
^2 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 2084725132496804690
^3 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^4 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 3202735829591912743
^5 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 4243193623947403194
^6 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 4993201233821431612
^7 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 5296736500901601697
^8 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 5689334992534205573
^9 = gv: (name: "_ZN4core6option15Option$LT$T$GT$9unwrap_or17he474b7e5559809c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41))) ; guid = 6331471888622030112
^10 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^11 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 11637576634936040776
^12 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 11670205379281925355
^13 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 11937498780552200044
^14 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 12462795727242052830
^15 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 13550283531526353262
^16 = gv: (name: "u8encode_", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 166, calls: ((callee: ^9), (callee: ^19)), refs: (^2, ^15, ^4, ^14, ^6, ^17, ^5, ^8, ^13, ^12, ^11, ^1, ^7)))) ; guid = 14620164558613971964
^17 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 14984120733604966409
^18 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15757876722319630265
^19 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^20 = blockcount: 53
