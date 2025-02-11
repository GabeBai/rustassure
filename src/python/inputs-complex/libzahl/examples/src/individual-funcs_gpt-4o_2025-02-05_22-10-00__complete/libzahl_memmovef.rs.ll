; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memmovef.rs.bc'
source_filename = "libzahl_memmovef.b1e88998-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc47 = private unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memmovef.rs" }>, align 1
@alloc4 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\09\00\00\00\10\00\00\00" }>, align 8
@alloc6 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\09\00\00\00\09\00\00\00" }>, align 8
@alloc8 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0A\00\00\00\10\00\00\00" }>, align 8
@alloc10 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0A\00\00\00\09\00\00\00" }>, align 8
@alloc12 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0B\00\00\00\10\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0B\00\00\00\09\00\00\00" }>, align 8
@alloc16 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0F\00\00\00\1A\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc18 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0F\00\00\00\18\00\00\00" }>, align 8
@alloc20 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0F\00\00\00\0F\00\00\00" }>, align 8
@alloc22 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0F\00\00\00\0D\00\00\00" }>, align 8
@alloc24 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\10\00\00\00\1A\00\00\00" }>, align 8
@alloc26 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\10\00\00\00\18\00\00\00" }>, align 8
@alloc28 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\10\00\00\00\0F\00\00\00" }>, align 8
@alloc30 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\10\00\00\00\0D\00\00\00" }>, align 8
@alloc32 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\11\00\00\00\1A\00\00\00" }>, align 8
@alloc34 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\11\00\00\00\18\00\00\00" }>, align 8
@alloc36 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\11\00\00\00\0F\00\00\00" }>, align 8
@alloc38 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\11\00\00\00\0D\00\00\00" }>, align 8
@alloc40 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\12\00\00\00\1A\00\00\00" }>, align 8
@alloc42 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\12\00\00\00\18\00\00\00" }>, align 8
@alloc44 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\12\00\00\00\0F\00\00\00" }>, align 8
@alloc46 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\12\00\00\00\0D\00\00\00" }>, align 8
@alloc48 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\13\00\00\00\0D\00\00\00" }>, align 8

; Function Attrs: alwaysinline uwtable
define void @libzahl_memmovef([0 x i64]* align 8 %d.0, i64 %d.1, [0 x i64]* align 8 %s.0, i64 %s.1, i64 %n) unnamed_addr #0 {
start:
  %i = alloca i64, align 8
  %_4 = alloca i8, align 1
  %0 = icmp eq i64 %n, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 0, i8* %_4, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %_6 = icmp ult i64 %n, 4
  %1 = zext i1 %_6 to i8
  store i8 %1, i8* %_4, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i8, i8* %_4, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb11

bb11:                                             ; preds = %bb3
  store i64 0, i64* %i, align 8
  br label %bb12

bb4:                                              ; preds = %bb3
  %_11 = icmp ult i64 0, %s.1
  %4 = call i1 @llvm.expect.i1(i1 %_11, i1 true)
  br i1 %4, label %bb5, label %panic

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 0
  %_8 = load i64, i64* %5, align 8
  %_14 = icmp ult i64 0, %d.1
  %6 = call i1 @llvm.expect.i1(i1 %_14, i1 true)
  br i1 %6, label %bb6, label %panic1

panic:                                            ; preds = %bb4
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc4 to %"core::panic::location::Location"*)) #4
  unreachable

bb6:                                              ; preds = %bb5
  %7 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 0
  store i64 %_8, i64* %7, align 8
  %_18 = icmp ult i64 1, %s.1
  %8 = call i1 @llvm.expect.i1(i1 %_18, i1 true)
  br i1 %8, label %bb7, label %panic2

panic1:                                           ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc6 to %"core::panic::location::Location"*)) #4
  unreachable

bb7:                                              ; preds = %bb6
  %9 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 1
  %_15 = load i64, i64* %9, align 8
  %_21 = icmp ult i64 1, %d.1
  %10 = call i1 @llvm.expect.i1(i1 %_21, i1 true)
  br i1 %10, label %bb8, label %panic3

panic2:                                           ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc8 to %"core::panic::location::Location"*)) #4
  unreachable

bb8:                                              ; preds = %bb7
  %11 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 1
  store i64 %_15, i64* %11, align 8
  %_25 = icmp ult i64 2, %s.1
  %12 = call i1 @llvm.expect.i1(i1 %_25, i1 true)
  br i1 %12, label %bb9, label %panic4

panic3:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc10 to %"core::panic::location::Location"*)) #4
  unreachable

bb9:                                              ; preds = %bb8
  %13 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 2
  %_22 = load i64, i64* %13, align 8
  %_28 = icmp ult i64 2, %d.1
  %14 = call i1 @llvm.expect.i1(i1 %_28, i1 true)
  br i1 %14, label %bb10, label %panic5

panic4:                                           ; preds = %bb8
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc12 to %"core::panic::location::Location"*)) #4
  unreachable

bb10:                                             ; preds = %bb9
  %15 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 2
  store i64 %_22, i64* %15, align 8
  br label %bb31

panic5:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc14 to %"core::panic::location::Location"*)) #4
  unreachable

bb31:                                             ; preds = %bb12, %bb10
  ret void

bb12:                                             ; preds = %bb30, %bb11
  %_31 = load i64, i64* %i, align 8
  %_30 = icmp ult i64 %_31, %n
  br i1 %_30, label %bb13, label %bb31

bb13:                                             ; preds = %bb12
  %_35 = load i64, i64* %i, align 8
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_35, i64 0)
  %_36.0 = extractvalue { i64, i1 } %16, 0
  %_36.1 = extractvalue { i64, i1 } %16, 1
  %17 = call i1 @llvm.expect.i1(i1 %_36.1, i1 false)
  br i1 %17, label %panic6, label %bb14

bb14:                                             ; preds = %bb13
  %_38 = icmp ult i64 %_36.0, %s.1
  %18 = call i1 @llvm.expect.i1(i1 %_38, i1 true)
  br i1 %18, label %bb15, label %panic7

panic6:                                           ; preds = %bb13
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #4
  unreachable

bb15:                                             ; preds = %bb14
  %19 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_36.0
  %_33 = load i64, i64* %19, align 8
  %_40 = load i64, i64* %i, align 8
  %20 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_40, i64 0)
  %_41.0 = extractvalue { i64, i1 } %20, 0
  %_41.1 = extractvalue { i64, i1 } %20, 1
  %21 = call i1 @llvm.expect.i1(i1 %_41.1, i1 false)
  br i1 %21, label %panic8, label %bb16

panic7:                                           ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_36.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc18 to %"core::panic::location::Location"*)) #4
  unreachable

bb16:                                             ; preds = %bb15
  %_43 = icmp ult i64 %_41.0, %d.1
  %22 = call i1 @llvm.expect.i1(i1 %_43, i1 true)
  br i1 %22, label %bb17, label %panic9

panic8:                                           ; preds = %bb15
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc20 to %"core::panic::location::Location"*)) #4
  unreachable

bb17:                                             ; preds = %bb16
  %23 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_41.0
  store i64 %_33, i64* %23, align 8
  %_46 = load i64, i64* %i, align 8
  %24 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_46, i64 1)
  %_47.0 = extractvalue { i64, i1 } %24, 0
  %_47.1 = extractvalue { i64, i1 } %24, 1
  %25 = call i1 @llvm.expect.i1(i1 %_47.1, i1 false)
  br i1 %25, label %panic10, label %bb18

panic9:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_41.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc22 to %"core::panic::location::Location"*)) #4
  unreachable

bb18:                                             ; preds = %bb17
  %_49 = icmp ult i64 %_47.0, %s.1
  %26 = call i1 @llvm.expect.i1(i1 %_49, i1 true)
  br i1 %26, label %bb19, label %panic11

panic10:                                          ; preds = %bb17
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc24 to %"core::panic::location::Location"*)) #4
  unreachable

bb19:                                             ; preds = %bb18
  %27 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_47.0
  %_44 = load i64, i64* %27, align 8
  %_51 = load i64, i64* %i, align 8
  %28 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_51, i64 1)
  %_52.0 = extractvalue { i64, i1 } %28, 0
  %_52.1 = extractvalue { i64, i1 } %28, 1
  %29 = call i1 @llvm.expect.i1(i1 %_52.1, i1 false)
  br i1 %29, label %panic12, label %bb20

panic11:                                          ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_47.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc26 to %"core::panic::location::Location"*)) #4
  unreachable

bb20:                                             ; preds = %bb19
  %_54 = icmp ult i64 %_52.0, %d.1
  %30 = call i1 @llvm.expect.i1(i1 %_54, i1 true)
  br i1 %30, label %bb21, label %panic13

panic12:                                          ; preds = %bb19
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc28 to %"core::panic::location::Location"*)) #4
  unreachable

bb21:                                             ; preds = %bb20
  %31 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_52.0
  store i64 %_44, i64* %31, align 8
  %_57 = load i64, i64* %i, align 8
  %32 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_57, i64 2)
  %_58.0 = extractvalue { i64, i1 } %32, 0
  %_58.1 = extractvalue { i64, i1 } %32, 1
  %33 = call i1 @llvm.expect.i1(i1 %_58.1, i1 false)
  br i1 %33, label %panic14, label %bb22

panic13:                                          ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_52.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc30 to %"core::panic::location::Location"*)) #4
  unreachable

bb22:                                             ; preds = %bb21
  %_60 = icmp ult i64 %_58.0, %s.1
  %34 = call i1 @llvm.expect.i1(i1 %_60, i1 true)
  br i1 %34, label %bb23, label %panic15

panic14:                                          ; preds = %bb21
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc32 to %"core::panic::location::Location"*)) #4
  unreachable

bb23:                                             ; preds = %bb22
  %35 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_58.0
  %_55 = load i64, i64* %35, align 8
  %_62 = load i64, i64* %i, align 8
  %36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_62, i64 2)
  %_63.0 = extractvalue { i64, i1 } %36, 0
  %_63.1 = extractvalue { i64, i1 } %36, 1
  %37 = call i1 @llvm.expect.i1(i1 %_63.1, i1 false)
  br i1 %37, label %panic16, label %bb24

panic15:                                          ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_58.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc34 to %"core::panic::location::Location"*)) #4
  unreachable

bb24:                                             ; preds = %bb23
  %_65 = icmp ult i64 %_63.0, %d.1
  %38 = call i1 @llvm.expect.i1(i1 %_65, i1 true)
  br i1 %38, label %bb25, label %panic17

panic16:                                          ; preds = %bb23
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc36 to %"core::panic::location::Location"*)) #4
  unreachable

bb25:                                             ; preds = %bb24
  %39 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_63.0
  store i64 %_55, i64* %39, align 8
  %_68 = load i64, i64* %i, align 8
  %40 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_68, i64 3)
  %_69.0 = extractvalue { i64, i1 } %40, 0
  %_69.1 = extractvalue { i64, i1 } %40, 1
  %41 = call i1 @llvm.expect.i1(i1 %_69.1, i1 false)
  br i1 %41, label %panic18, label %bb26

panic17:                                          ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_63.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc38 to %"core::panic::location::Location"*)) #4
  unreachable

bb26:                                             ; preds = %bb25
  %_71 = icmp ult i64 %_69.0, %s.1
  %42 = call i1 @llvm.expect.i1(i1 %_71, i1 true)
  br i1 %42, label %bb27, label %panic19

panic18:                                          ; preds = %bb25
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc40 to %"core::panic::location::Location"*)) #4
  unreachable

bb27:                                             ; preds = %bb26
  %43 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_69.0
  %_66 = load i64, i64* %43, align 8
  %_73 = load i64, i64* %i, align 8
  %44 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_73, i64 3)
  %_74.0 = extractvalue { i64, i1 } %44, 0
  %_74.1 = extractvalue { i64, i1 } %44, 1
  %45 = call i1 @llvm.expect.i1(i1 %_74.1, i1 false)
  br i1 %45, label %panic20, label %bb28

panic19:                                          ; preds = %bb26
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_69.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc42 to %"core::panic::location::Location"*)) #4
  unreachable

bb28:                                             ; preds = %bb27
  %_76 = icmp ult i64 %_74.0, %d.1
  %46 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %46, label %bb29, label %panic21

panic20:                                          ; preds = %bb27
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc44 to %"core::panic::location::Location"*)) #4
  unreachable

bb29:                                             ; preds = %bb28
  %47 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_74.0
  store i64 %_66, i64* %47, align 8
  %48 = load i64, i64* %i, align 8
  %49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %48, i64 4)
  %_77.0 = extractvalue { i64, i1 } %49, 0
  %_77.1 = extractvalue { i64, i1 } %49, 1
  %50 = call i1 @llvm.expect.i1(i1 %_77.1, i1 false)
  br i1 %50, label %panic22, label %bb30

panic21:                                          ; preds = %bb28
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_74.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc46 to %"core::panic::location::Location"*)) #4
  unreachable

bb30:                                             ; preds = %bb29
  store i64 %_77.0, i64* %i, align 8
  br label %bb12

panic22:                                          ; preds = %bb29
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc48 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

attributes #0 = { alwaysinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone willreturn }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memmovef.rs.bc", hash: (458744936, 246465830, 3302741986, 394031361, 4073730678))
^1 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2211145240301814265
^2 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 2241920564919762605
^3 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^4 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 3090773534244936537
^5 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 3280548670231999604
^6 = gv: (name: "alloc32", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 3417099066567083978
^7 = gv: (name: "alloc42", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 4686661342095672298
^8 = gv: (name: "alloc30", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 4917290397768000012
^9 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 5346832712084560689
^10 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 5746012957238532495
^11 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 6250972773537753640
^12 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8399934163843829332
^13 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 9529764121232981987
^14 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^15 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 10289656141580678980
^16 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 11093106352163673622
^17 = gv: (name: "alloc38", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 12528809344145313422
^18 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 12604723208089387704
^19 = gv: (name: "alloc46", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 13803004130625184335
^20 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^21 = gv: (name: "libzahl_memmovef", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 192, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 1, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^29), (callee: ^14)), refs: (^22, ^5, ^18, ^13, ^23, ^4, ^24, ^12, ^26, ^30, ^11, ^2, ^9, ^15, ^8, ^6, ^16, ^28, ^17, ^10, ^7, ^25, ^19, ^27)))) ; guid = 15033369382802882788
^22 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 15083795690822268838
^23 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 15544358779961553368
^24 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 16305336926436960399
^25 = gv: (name: "alloc44", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 16733269833129729847
^26 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 17270903051054272568
^27 = gv: (name: "alloc48", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 17437525725679379051
^28 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 17447223139028608377
^29 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^30 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 18436903348451388651
^31 = blockcount: 55
