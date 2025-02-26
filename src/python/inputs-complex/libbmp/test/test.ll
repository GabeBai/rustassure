; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._bmp_header = type { i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct._bmp_pixel = type { i8, i8, i8 }

@.str = private unnamed_addr constant [62 x i8] c"LibBMP-Test v. 0.0.1 A (C) 2016 - 2017 Marc Volker Dickmann\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"BMP_GET_PADDING\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s\09\09PASSED!\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"header_size\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"header_init_df\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s\09\09FAILED!\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"pixel_init\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\0A\0APoints\09%i/%i\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Failed\09%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @bmp_test_get_padding()
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, %8
  store i32 %10, i32* %6, align 4
  %11 = call i32 @bmp_test_header_size()
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = call i32 @bmp_test_header_init_df()
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = call i32 @bmp_test_pixel_init()
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  call void @bmp_test_print_summary(i32 noundef %20, i32 noundef 4)
  ret i32 0
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @bmp_test_get_padding() #0 {
  call void @bmp_test_print_passed(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @bmp_test_header_size() #0 {
  call void @bmp_test_print_passed(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @bmp_test_header_init_df() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._bmp_header, align 4
  store i32 1, i32* %2, align 4
  call void @bmp_header_init_df(%struct._bmp_header* noundef %3, i32 noundef 100, i32 noundef 100)
  %4 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = zext i32 %5 to i64
  %7 = icmp ne i64 %6, 30000
  br i1 %7, label %16, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %3, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 100
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %3, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 100
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8, %0
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %12
  call void @bmp_header_init_df(%struct._bmp_header* noundef %3, i32 noundef 102, i32 noundef -100)
  %18 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = zext i32 %19 to i64
  %21 = icmp ne i64 %20, 30800
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %3, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 102
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %3, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, -100
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22, %17
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @bmp_test_print_passed(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %36

35:                                               ; preds = %31
  call void @bmp_test_print_failed(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @bmp_test_pixel_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._bmp_pixel, align 1
  call void @bmp_pixel_init(%struct._bmp_pixel* noundef %2, i8 noundef zeroext 1, i8 noundef zeroext -6, i8 noundef zeroext 4)
  %3 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %2, i32 0, i32 2
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %2, i32 0, i32 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 250
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %2, i32 0, i32 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void @bmp_test_print_passed(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %19

18:                                               ; preds = %12, %7, %0
  call void @bmp_test_print_failed(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @bmp_test_print_summary(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %5, i32 noundef %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %8, %9
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 noundef %10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @bmp_test_print_passed(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* noundef %3)
  ret void
}

declare void @bmp_header_init_df(%struct._bmp_header* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @bmp_test_print_failed(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* noundef %3)
  ret void
}

declare void @bmp_pixel_init(%struct._bmp_pixel* noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #1

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
