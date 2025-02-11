; ModuleID = 'pngxrgif.c'
source_filename = "pngxrgif.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type opaque
%struct.GIFImage = type { %struct.GIFScreen*, i32, i32, i32, i32, i32, i32, i32, i32, [768 x i8], i8** }
%struct.GIFScreen = type { i32, i32, i32, i32, i32, i32, i32, i32, [768 x i8] }
%struct.GIFExtension = type { %struct.GIFScreen*, i8*, i32, i8 }
%struct.png_info_def = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.GIFGraphicCtlExt = type { i32, i32, i32, i32, i32 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }

@gif_sig_gif87a = internal constant [6 x i8] c"GIF87a", align 1
@gif_sig_gif89a = internal constant [6 x i8] c"GIF89a", align 1
@gif_fmt_name = internal constant [4 x i8] c"GIF\00", align 1
@gif_fmt_long_name = internal constant [28 x i8] c"Graphics Interchange Format\00", align 1
@GIFError = external global void (i8*)*, align 8
@GIFWarning = external global void (i8*)*, align 8
@err_png_ptr = internal global %struct.png_struct_def* null, align 8
@err_gif_image_ptr = internal global %struct.GIFImage* null, align 8
@err_gif_ext_ptr = internal global %struct.GIFExtension* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"No image in GIF file\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pngx_sig_is_gif(i8* noundef %0, i64 noundef %1, i8** noundef %2, i8** noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ult i64 %10, 13
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %33

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @memcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @gif_sig_gif87a, i64 0, i64 0), i64 noundef 6)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @memcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @gif_sig_gif89a, i64 0, i64 0), i64 noundef 6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %33

22:                                               ; preds = %17, %13
  %23 = load i8**, i8*** %8, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gif_fmt_name, i64 0, i64 0), i8** %26, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8**, i8*** %9, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @gif_fmt_long_name, i64 0, i64 0), i8** %31, align 8
  br label %32

32:                                               ; preds = %30, %27
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %21, %12
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pngx_read_gif(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, %struct.__sFILE* noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca %struct.__sFILE*, align 8
  %7 = alloca %struct.GIFScreen, align 4
  %8 = alloca %struct.GIFImage, align 8
  %9 = alloca %struct.GIFExtension, align 8
  %10 = alloca %struct.GIFGraphicCtlExt, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store %struct.__sFILE* %2, %struct.__sFILE** %6, align 8
  store void (i8*)* @pngx_gif_error, void (i8*)** @GIFError, align 8
  store void (i8*)* @pngx_gif_warning, void (i8*)** @GIFWarning, align 8
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  store %struct.png_struct_def* %19, %struct.png_struct_def** @err_png_ptr, align 8
  store %struct.GIFImage* null, %struct.GIFImage** @err_gif_image_ptr, align 8
  store %struct.GIFExtension* null, %struct.GIFExtension** @err_gif_ext_ptr, align 8
  %20 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  call void @GIFReadScreen(%struct.GIFScreen* noundef %7, %struct.__sFILE* noundef %20)
  %21 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %17, align 4
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %25, %struct.png_info_def* noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef 8, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %30 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %31 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %7, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i8** @pngx_malloc_rows(%struct.png_struct_def* noundef %29, %struct.png_info_def* noundef %30, i32 noundef %32)
  store i8** %33, i8*** %18, align 8
  %34 = load i8**, i8*** %18, align 8
  call void @GIFInitImage(%struct.GIFImage* noundef %8, %struct.GIFScreen* noundef %7, i8** noundef %34)
  store %struct.GIFImage* %8, %struct.GIFImage** @err_gif_image_ptr, align 8
  call void @GIFInitExtension(%struct.GIFExtension* noundef %9, %struct.GIFScreen* noundef %7, i32 noundef 256)
  store %struct.GIFExtension* %9, %struct.GIFExtension** @err_gif_ext_ptr, align 8
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %14, align 4
  br label %35

35:                                               ; preds = %98, %3
  %36 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %37 = call i32 @GIFReadNextBlock(%struct.GIFImage* noundef %8, %struct.GIFExtension* noundef %9, %struct.__sFILE* noundef %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 44
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %8, i32 0, i32 10
  %42 = load i8**, i8*** %41, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %8, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %50 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  call void @pngx_set_interlace_type(%struct.png_struct_def* noundef %49, %struct.png_info_def* noundef %50, i32 noundef 1)
  br label %51

51:                                               ; preds = %48, %44
  call void @GIFGetColorTable(i8** noundef %12, i32* noundef %13, %struct.GIFImage* noundef %8)
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %53 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* %13, align 4
  call void @pngx_set_gif_palette(%struct.png_struct_def* noundef %52, %struct.png_info_def* noundef %53, i8* noundef %54, i32 noundef %55)
  %56 = load i32, i32* %14, align 4
  %57 = icmp ult i32 %56, 256
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %60 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %61 = load i32, i32* %14, align 4
  call void @pngx_set_gif_transparent(%struct.png_struct_def* noundef %59, %struct.png_info_def* noundef %60, i32 noundef %61)
  br label %62

62:                                               ; preds = %58, %51
  %63 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %8, i32 0, i32 10
  store i8** null, i8*** %63, align 8
  br label %64

64:                                               ; preds = %62, %40
  %65 = load i32, i32* %15, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %98

67:                                               ; preds = %35
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 33
  br i1 %69, label %70, label %92

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %9, i32 0, i32 3
  %72 = load i8, i8* %71, align 4
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 249
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  call void @GIFGetGraphicCtl(%struct.GIFGraphicCtlExt* noundef %10, %struct.GIFExtension* noundef %9)
  %76 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %8, i32 0, i32 10
  %77 = load i8**, i8*** %76, align 8
  %78 = icmp ne i8** %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.GIFGraphicCtlExt, %struct.GIFGraphicCtlExt* %10, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %14, align 4
  %85 = icmp uge i32 %84, 256
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.GIFGraphicCtlExt, %struct.GIFGraphicCtlExt* %10, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %79, %75
  br label %91

91:                                               ; preds = %90, %70
  br label %97

92:                                               ; preds = %67
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 59
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %99

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96, %91
  br label %98

98:                                               ; preds = %97, %64
  br label %35

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %8, i32 0, i32 10
  %101 = load i8**, i8*** %100, align 8
  %102 = icmp ne i8** %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %104, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #3
  unreachable

105:                                              ; preds = %99
  call void @GIFDestroyImage(%struct.GIFImage* noundef %8)
  call void @GIFDestroyExtension(%struct.GIFExtension* noundef %9)
  %106 = load i32, i32* %15, align 4
  ret i32 %106
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pngx_gif_error(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.GIFImage*, %struct.GIFImage** @err_gif_image_ptr, align 8
  %4 = icmp ne %struct.GIFImage* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load %struct.GIFImage*, %struct.GIFImage** @err_gif_image_ptr, align 8
  call void @GIFDestroyImage(%struct.GIFImage* noundef %6)
  br label %7

7:                                                ; preds = %5, %1
  %8 = load %struct.GIFExtension*, %struct.GIFExtension** @err_gif_ext_ptr, align 8
  %9 = icmp ne %struct.GIFExtension* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load %struct.GIFExtension*, %struct.GIFExtension** @err_gif_ext_ptr, align 8
  call void @GIFDestroyExtension(%struct.GIFExtension* noundef %11)
  br label %12

12:                                               ; preds = %10, %7
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** @err_png_ptr, align 8
  %14 = load i8*, i8** %2, align 8
  call void @png_error(%struct.png_struct_def* noundef %13, i8* noundef %14) #3
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pngx_gif_warning(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** @err_png_ptr, align 8
  %4 = load i8*, i8** %2, align 8
  call void @png_warning(%struct.png_struct_def* noundef %3, i8* noundef %4)
  ret void
}

declare void @GIFReadScreen(%struct.GIFScreen* noundef, %struct.__sFILE* noundef) #1

declare void @png_set_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i8** @pngx_malloc_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare void @GIFInitImage(%struct.GIFImage* noundef, %struct.GIFScreen* noundef, i8** noundef) #1

declare void @GIFInitExtension(%struct.GIFExtension* noundef, %struct.GIFScreen* noundef, i32 noundef) #1

declare i32 @GIFReadNextBlock(%struct.GIFImage* noundef, %struct.GIFExtension* noundef, %struct.__sFILE* noundef) #1

declare void @pngx_set_interlace_type(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare void @GIFGetColorTable(i8** noundef, i32* noundef, %struct.GIFImage* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pngx_set_gif_palette(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x %struct.png_color_struct], align 1
  %10 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %48, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = mul i32 3, %17
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %9, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %24, i32 0, i32 0
  store i8 %21, i8* %25, align 1
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = mul i32 3, %27
  %29 = add i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %9, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %35, i32 0, i32 1
  store i8 %32, i8* %36, align 1
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = mul i32 3, %38
  %40 = add i32 %39, 2
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %9, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %46, i32 0, i32 2
  store i8 %43, i8* %47, align 1
  br label %48

48:                                               ; preds = %15
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %11, !llvm.loop !10

51:                                               ; preds = %11
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %53 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %54 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %9, i64 0, i64 0
  %55 = load i32, i32* %8, align 4
  call void @png_set_PLTE(%struct.png_struct_def* noundef %52, %struct.png_info_def* noundef %53, %struct.png_color_struct* noundef %54, i32 noundef %55)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pngx_set_gif_transparent(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %17, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %15
  store i8 -1, i8* %16, align 1
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %8, align 4
  br label %9, !llvm.loop !12

20:                                               ; preds = %9
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %22
  store i8 0, i8* %23, align 1
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %25 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  call void @png_set_tRNS(%struct.png_struct_def* noundef %24, %struct.png_info_def* noundef %25, i8* noundef %26, i32 noundef %28, %struct.png_color_16_struct* noundef null)
  ret void
}

declare void @GIFGetGraphicCtl(%struct.GIFGraphicCtlExt* noundef, %struct.GIFExtension* noundef) #1

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #2

declare void @GIFDestroyImage(%struct.GIFImage* noundef) #1

declare void @GIFDestroyExtension(%struct.GIFExtension* noundef) #1

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #1

declare void @png_set_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct* noundef, i32 noundef) #1

declare void @png_set_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8* noundef, i32 noundef, %struct.png_color_16_struct* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
