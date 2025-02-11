; ModuleID = 'compress.c'
source_filename = "compress.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @compress2(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.z_stream_s, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = load i64, i64* %10, align 8
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 3
  store i8* %19, i8** %20, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = zext i32 %26 to i64
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 -5, i32* %6, align 4
  br label %61

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 8
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %33, align 8
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 9
  store void (i8*, i8*)* null, void (i8*, i8*)** %34, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 10
  store i8* null, i8** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @deflateInit_(%struct.z_stream_s* noundef %12, i32 noundef %36, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 112)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %61

42:                                               ; preds = %32
  %43 = call i32 @deflate(%struct.z_stream_s* noundef %12, i32 noundef 4)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = call i32 @deflateEnd(%struct.z_stream_s* noundef %12)
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i32 [ -5, %50 ], [ %52, %51 ]
  store i32 %54, i32* %6, align 4
  br label %61

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %8, align 8
  store i64 %57, i64* %58, align 8
  %59 = call i32 @deflateEnd(%struct.z_stream_s* noundef %12)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %55, %53, %40, %31
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare i32 @deflateInit_(%struct.z_stream_s* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare i32 @deflate(%struct.z_stream_s* noundef, i32 noundef) #1

declare i32 @deflateEnd(%struct.z_stream_s* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @compress(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @compress2(i8* noundef %9, i64* noundef %10, i8* noundef %11, i64 noundef %12, i32 noundef -1)
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @compressBound(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = lshr i64 %4, 12
  %6 = add i64 %3, %5
  %7 = load i64, i64* %2, align 8
  %8 = lshr i64 %7, 14
  %9 = add i64 %6, %8
  %10 = load i64, i64* %2, align 8
  %11 = lshr i64 %10, 25
  %12 = add i64 %9, %11
  %13 = add i64 %12, 13
  ret i64 %13
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 4]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"clang version 14.0.0"}
