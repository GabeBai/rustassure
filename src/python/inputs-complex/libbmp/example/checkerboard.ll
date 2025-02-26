; ModuleID = 'checkerboard.c'
source_filename = "checkerboard.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._bmp_img = type { %struct._bmp_header, %struct._bmp_pixel** }
%struct._bmp_header = type { i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct._bmp_pixel = type { i8, i8, i8 }

@.str = private unnamed_addr constant [9 x i8] c"test.bmp\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._bmp_img, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @bmp_img_init_df(%struct._bmp_img* noundef %6, i32 noundef 512, i32 noundef 512)
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %53, %2
  %10 = load i64, i64* %7, align 8
  %11 = icmp ult i64 %10, 512
  br i1 %11, label %12, label %56

12:                                               ; preds = %9
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %49, %12
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %14, 512
  br i1 %15, label %16, label %52

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = urem i64 %17, 128
  %19 = icmp ult i64 %18, 64
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %8, align 8
  %22 = urem i64 %21, 128
  %23 = icmp ult i64 %22, 64
  br i1 %23, label %32, label %24

24:                                               ; preds = %20, %16
  %25 = load i64, i64* %7, align 8
  %26 = urem i64 %25, 128
  %27 = icmp uge i64 %26, 64
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = urem i64 %29, 128
  %31 = icmp uge i64 %30, 64
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %6, i32 0, i32 1
  %34 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %34, i64 %35
  %37 = load %struct._bmp_pixel*, %struct._bmp_pixel** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %37, i64 %38
  call void @bmp_pixel_init(%struct._bmp_pixel* noundef %39, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -6)
  br label %48

40:                                               ; preds = %28, %24
  %41 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %6, i32 0, i32 1
  %42 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %42, i64 %43
  %45 = load %struct._bmp_pixel*, %struct._bmp_pixel** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %45, i64 %46
  call void @bmp_pixel_init(%struct._bmp_pixel* noundef %47, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %48

48:                                               ; preds = %40, %32
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %13, !llvm.loop !10

52:                                               ; preds = %13
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %9, !llvm.loop !12

56:                                               ; preds = %9
  %57 = call i32 @bmp_img_write(%struct._bmp_img* noundef %6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  call void @bmp_img_free(%struct._bmp_img* noundef %6)
  ret i32 0
}

declare void @bmp_img_init_df(%struct._bmp_img* noundef, i32 noundef, i32 noundef) #1

declare void @bmp_pixel_init(%struct._bmp_pixel* noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #1

declare i32 @bmp_img_write(%struct._bmp_img* noundef, i8* noundef) #1

declare void @bmp_img_free(%struct._bmp_img* noundef) #1

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
