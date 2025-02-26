; ModuleID = '../libbmp.c'
source_filename = "../libbmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._bmp_header = type { i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._bmp_pixel = type { i8, i8, i8 }
%struct._bmp_img = type { %struct._bmp_header, %struct._bmp_pixel** }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bmp_header_init_df(%struct._bmp_header* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._bmp_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._bmp_header* %0, %struct._bmp_header** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 3, %8
  %10 = load i32, i32* %5, align 4
  %11 = srem i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %9, %12
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @abs(i32 noundef %14) #5
  %16 = sext i32 %15 to i64
  %17 = mul i64 %13, %16
  %18 = trunc i64 %17 to i32
  %19 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %20 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %22 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %24 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %23, i32 0, i32 2
  store i32 54, i32* %24, align 4
  %25 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %26 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %25, i32 0, i32 3
  store i32 40, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %29 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %32 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %34 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %33, i32 0, i32 6
  store i16 1, i16* %34, align 4
  %35 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %36 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %35, i32 0, i32 7
  store i16 24, i16* %36, align 2
  %37 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %38 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %37, i32 0, i32 8
  store i32 0, i32* %38, align 4
  %39 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %40 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %39, i32 0, i32 9
  store i32 0, i32* %40, align 4
  %41 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %42 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %41, i32 0, i32 10
  store i32 0, i32* %42, align 4
  %43 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %44 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %43, i32 0, i32 11
  store i32 0, i32* %44, align 4
  %45 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %46 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %45, i32 0, i32 12
  store i32 0, i32* %46, align 4
  %47 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %48 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %47, i32 0, i32 13
  store i32 0, i32* %48, align 4
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @bmp_header_write(%struct._bmp_header* noundef %0, %struct.__sFILE* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._bmp_header*, align 8
  %5 = alloca %struct.__sFILE*, align 8
  %6 = alloca i16, align 2
  store %struct._bmp_header* %0, %struct._bmp_header** %4, align 8
  store %struct.__sFILE* %1, %struct.__sFILE** %5, align 8
  %7 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %8 = icmp eq %struct._bmp_header* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -3, i32* %3, align 4
  br label %23

10:                                               ; preds = %2
  %11 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %12 = icmp eq %struct.__sFILE* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 -4, i32* %3, align 4
  br label %23

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14
  store i16 19778, i16* %6, align 2
  %16 = bitcast i16* %6 to i8*
  %17 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %18 = call i64 @"\01_fwrite"(i8* noundef %16, i64 noundef 2, i64 noundef 1, %struct.__sFILE* noundef %17)
  %19 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %20 = bitcast %struct._bmp_header* %19 to i8*
  %21 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %22 = call i64 @"\01_fwrite"(i8* noundef %20, i64 noundef 52, i64 noundef 1, %struct.__sFILE* noundef %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %15, %13, %9
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare i64 @"\01_fwrite"(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @bmp_header_read(%struct._bmp_header* noundef %0, %struct.__sFILE* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._bmp_header*, align 8
  %5 = alloca %struct.__sFILE*, align 8
  %6 = alloca i16, align 2
  store %struct._bmp_header* %0, %struct._bmp_header** %4, align 8
  store %struct.__sFILE* %1, %struct.__sFILE** %5, align 8
  %7 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %8 = icmp eq %struct.__sFILE* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -4, i32* %3, align 4
  br label %28

10:                                               ; preds = %2
  %11 = bitcast i16* %6 to i8*
  %12 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %13 = call i64 @fread(i8* noundef %11, i64 noundef 2, i64 noundef 1, %struct.__sFILE* noundef %12)
  %14 = icmp ne i64 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp ne i32 %17, 19778
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %10
  store i32 -2, i32* %3, align 4
  br label %28

20:                                               ; preds = %15
  %21 = load %struct._bmp_header*, %struct._bmp_header** %4, align 8
  %22 = bitcast %struct._bmp_header* %21 to i8*
  %23 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %24 = call i64 @fread(i8* noundef %22, i64 noundef 52, i64 noundef 1, %struct.__sFILE* noundef %23)
  %25 = icmp ne i64 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %19, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bmp_pixel_init(%struct._bmp_pixel* noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = alloca %struct._bmp_pixel*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct._bmp_pixel* %0, %struct._bmp_pixel** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %9 = load i8, i8* %6, align 1
  %10 = load %struct._bmp_pixel*, %struct._bmp_pixel** %5, align 8
  %11 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %10, i32 0, i32 2
  store i8 %9, i8* %11, align 1
  %12 = load i8, i8* %7, align 1
  %13 = load %struct._bmp_pixel*, %struct._bmp_pixel** %5, align 8
  %14 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %13, i32 0, i32 1
  store i8 %12, i8* %14, align 1
  %15 = load i8, i8* %8, align 1
  %16 = load %struct._bmp_pixel*, %struct._bmp_pixel** %5, align 8
  %17 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %16, i32 0, i32 0
  store i8 %15, i8* %17, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bmp_img_alloc(%struct._bmp_img* noundef %0) #0 {
  %2 = alloca %struct._bmp_img*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct._bmp_img* %0, %struct._bmp_img** %2, align 8
  %5 = load %struct._bmp_img*, %struct._bmp_img** %2, align 8
  %6 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @abs(i32 noundef %8) #5
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = mul i64 8, %11
  %13 = call i8* @malloc(i64 noundef %12) #6
  %14 = bitcast i8* %13 to %struct._bmp_pixel**
  %15 = load %struct._bmp_img*, %struct._bmp_img** %2, align 8
  %16 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %15, i32 0, i32 1
  store %struct._bmp_pixel** %14, %struct._bmp_pixel*** %16, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %35, %1
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct._bmp_img*, %struct._bmp_img** %2, align 8
  %23 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 3, %26
  %28 = call i8* @malloc(i64 noundef %27) #6
  %29 = bitcast i8* %28 to %struct._bmp_pixel*
  %30 = load %struct._bmp_img*, %struct._bmp_img** %2, align 8
  %31 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %30, i32 0, i32 1
  %32 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %32, i64 %33
  store %struct._bmp_pixel* %29, %struct._bmp_pixel** %34, align 8
  br label %35

35:                                               ; preds = %21
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %17, !llvm.loop !10

38:                                               ; preds = %17
  ret void
}

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bmp_img_init_df(%struct._bmp_img* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._bmp_img*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._bmp_img* %0, %struct._bmp_img** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %8 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %7, i32 0, i32 0
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  call void @bmp_header_init_df(%struct._bmp_header* noundef %8, i32 noundef %9, i32 noundef %10)
  %11 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  call void @bmp_img_alloc(%struct._bmp_img* noundef %11)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bmp_img_free(%struct._bmp_img* noundef %0) #0 {
  %2 = alloca %struct._bmp_img*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct._bmp_img* %0, %struct._bmp_img** %2, align 8
  %5 = load %struct._bmp_img*, %struct._bmp_img** %2, align 8
  %6 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @abs(i32 noundef %8) #5
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct._bmp_img*, %struct._bmp_img** %2, align 8
  %17 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %16, i32 0, i32 1
  %18 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %18, i64 %19
  %21 = load %struct._bmp_pixel*, %struct._bmp_pixel** %20, align 8
  %22 = bitcast %struct._bmp_pixel* %21 to i8*
  call void @free(i8* noundef %22)
  br label %23

23:                                               ; preds = %15
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  br label %11, !llvm.loop !12

26:                                               ; preds = %11
  %27 = load %struct._bmp_img*, %struct._bmp_img** %2, align 8
  %28 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %27, i32 0, i32 1
  %29 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %28, align 8
  %30 = bitcast %struct._bmp_pixel** %29 to i8*
  call void @free(i8* noundef %30)
  ret void
}

declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @bmp_img_write(%struct._bmp_img* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._bmp_img*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__sFILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [3 x i8], align 1
  %11 = alloca i64, align 8
  store %struct._bmp_img* %0, %struct._bmp_img** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.__sFILE* @"\01_fopen"(i8* noundef %12, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.__sFILE* %13, %struct.__sFILE** %6, align 8
  %14 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %15 = icmp eq %struct.__sFILE* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -4, i32* %3, align 4
  br label %86

17:                                               ; preds = %2
  %18 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %19 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %18, i32 0, i32 0
  %20 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %21 = call i32 @bmp_header_write(%struct._bmp_header* noundef %19, %struct.__sFILE* noundef %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %26 = call i32 @fclose(%struct.__sFILE* noundef %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %86

28:                                               ; preds = %17
  %29 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %30 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @abs(i32 noundef %32) #5
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %36 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 %41, 1
  br label %44

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i64 [ %42, %40 ], [ 0, %43 ]
  store i64 %45, i64* %9, align 8
  %46 = bitcast [3 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %46, i8 0, i64 3, i1 false)
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %80, %44
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %47
  %52 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %53 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %52, i32 0, i32 1
  %54 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @abs(i32 noundef %58) #5
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %54, i64 %60
  %62 = load %struct._bmp_pixel*, %struct._bmp_pixel** %61, align 8
  %63 = bitcast %struct._bmp_pixel* %62 to i8*
  %64 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %65 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %70 = call i64 @"\01_fwrite"(i8* noundef %63, i64 noundef 3, i64 noundef %68, %struct.__sFILE* noundef %69)
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %72 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %73 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = srem i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %79 = call i64 @"\01_fwrite"(i8* noundef %71, i64 noundef 1, i64 noundef %77, %struct.__sFILE* noundef %78)
  br label %80

80:                                               ; preds = %51
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %47, !llvm.loop !13

83:                                               ; preds = %47
  %84 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %85 = call i32 @fclose(%struct.__sFILE* noundef %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %24, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare %struct.__sFILE* @"\01_fopen"(i8* noundef, i8* noundef) #2

declare i32 @fclose(%struct.__sFILE* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @bmp_img_read(%struct._bmp_img* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._bmp_img*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__sFILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct._bmp_img* %0, %struct._bmp_img** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.__sFILE* @"\01_fopen"(i8* noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.__sFILE* %14, %struct.__sFILE** %6, align 8
  %15 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %16 = icmp eq %struct.__sFILE* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -4, i32* %3, align 4
  br label %94

18:                                               ; preds = %2
  %19 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %20 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %19, i32 0, i32 0
  %21 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %22 = call i32 @bmp_header_read(%struct._bmp_header* noundef %20, %struct.__sFILE* noundef %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %27 = call i32 @fclose(%struct.__sFILE* noundef %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %94

29:                                               ; preds = %18
  %30 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  call void @bmp_img_alloc(%struct._bmp_img* noundef %30)
  %31 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %32 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @abs(i32 noundef %34) #5
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %38 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %43, 1
  br label %46

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i64 [ %44, %42 ], [ 0, %45 ]
  store i64 %47, i64* %9, align 8
  %48 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %49 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = srem i32 %51, 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %10, align 8
  %54 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %55 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %88, %46
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %59
  %64 = load %struct._bmp_img*, %struct._bmp_img** %4, align 8
  %65 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %64, i32 0, i32 1
  %66 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @abs(i32 noundef %70) #5
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %66, i64 %72
  %74 = load %struct._bmp_pixel*, %struct._bmp_pixel** %73, align 8
  %75 = bitcast %struct._bmp_pixel* %74 to i8*
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %78 = call i64 @fread(i8* noundef %75, i64 noundef 3, i64 noundef %76, %struct.__sFILE* noundef %77)
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %63
  %82 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %83 = call i32 @fclose(%struct.__sFILE* noundef %82)
  store i32 -1, i32* %3, align 4
  br label %94

84:                                               ; preds = %63
  %85 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @fseek(%struct.__sFILE* noundef %85, i64 noundef %86, i32 noundef 1)
  br label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %12, align 8
  br label %59, !llvm.loop !14

91:                                               ; preds = %59
  %92 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %93 = call i32 @fclose(%struct.__sFILE* noundef %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %81, %25, %17
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare i32 @fseek(%struct.__sFILE* noundef, i64 noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { allocsize(0) }

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
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
