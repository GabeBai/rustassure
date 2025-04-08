; ModuleID = 'pngxread.c'
source_filename = "pngxread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._G_fpos_t = type { i64, %struct.__mbstate_t }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Can't ftell in input file stream\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't fseek in input file stream\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Extraneous data found after IEND\00", align 1
@pngx_sig_is_png.pngx_png_standalone_fmt_name = internal constant [4 x i8] c"PNG\00", align 1
@pngx_sig_is_png.pngx_png_datastream_fmt_name = internal constant [15 x i8] c"PNG datastream\00", align 1
@pngx_sig_is_png.pngx_png_standalone_fmt_long_name = internal constant [26 x i8] c"Portable Network Graphics\00", align 16
@pngx_sig_is_png.pngx_png_datastream_fmt_long_name = internal constant [46 x i8] c"Portable Network Graphics embedded datastream\00", align 16
@pngx_sig_is_png.png_file_sig = internal constant [8 x i8] c"\89PNG\0D\0A\1A\0A", align 1
@pngx_sig_is_png.mng_file_sig = internal constant [8 x i8] c"\8AMNG\0D\0A\1A\0A", align 1
@pngx_sig_is_png.png_ihdr_sig = internal constant [8 x i8] c"\00\00\00\0DIHDR", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"PNG file appears to be corrupted by text file conversions\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"MNG decoding is not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pngx_read_image(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i8** noundef %2, i8** noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.png_struct_def*, align 8
  %7 = alloca %struct.png_info_def*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)*, align 8
  %13 = alloca %struct._IO_FILE*, align 8
  %14 = alloca %struct._G_fpos_t, align 8
  %15 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %6, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %17 = call i8* @png_get_io_ptr(%struct.png_struct_def* noundef %16)
  %18 = bitcast i8* %17 to %struct._IO_FILE*
  store %struct._IO_FILE* %18, %struct._IO_FILE** %13, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %20 = call i32 @fgetpos(%struct._IO_FILE* noundef %19, %struct._G_fpos_t* noundef %14)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_error(%struct.png_struct_def* noundef %23, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #4
  unreachable

24:                                               ; preds = %4
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %27 = call i64 @fread(i8* noundef %25, i64 noundef 1, i64 noundef 128, %struct._IO_FILE* noundef %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %29 = call i32 @fsetpos(%struct._IO_FILE* noundef %28, %struct._G_fpos_t* noundef %14)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_error(%struct.png_struct_def* noundef %32, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #4
  unreachable

33:                                               ; preds = %24
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %36 = load i64, i64* %11, align 8
  %37 = load i8**, i8*** %8, align 8
  %38 = load i8**, i8*** %9, align 8
  %39 = call i32 @pngx_sig_is_png(%struct.png_struct_def* noundef %34, i8* noundef %35, i64 noundef %36, i8** noundef %37, i8** noundef %38)
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %43 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  call void @png_read_png(%struct.png_struct_def* noundef %42, %struct.png_info_def* noundef %43, i32 noundef 0, i8* noundef null)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %45 = call i32 @getc(%struct._IO_FILE* noundef %44)
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_warning(%struct.png_struct_def* noundef %48, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %50 = call i32 @fseek(%struct._IO_FILE* noundef %49, i64 noundef 0, i32 noundef 2)
  br label %51

51:                                               ; preds = %47, %41
  store i32 1, i32* %5, align 4
  br label %114

52:                                               ; preds = %33
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %54 = load i64, i64* %11, align 8
  %55 = load i8**, i8*** %8, align 8
  %56 = load i8**, i8*** %9, align 8
  %57 = call i32 @pngx_sig_is_bmp(i8* noundef %53, i64 noundef %54, i8** noundef %55, i8** noundef %56)
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)* @pngx_read_bmp, i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)** %12, align 8
  br label %97

60:                                               ; preds = %52
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %62 = load i64, i64* %11, align 8
  %63 = load i8**, i8*** %8, align 8
  %64 = load i8**, i8*** %9, align 8
  %65 = call i32 @pngx_sig_is_gif(i8* noundef %61, i64 noundef %62, i8** noundef %63, i8** noundef %64)
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)* @pngx_read_gif, i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)** %12, align 8
  br label %96

68:                                               ; preds = %60
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %70 = load i64, i64* %11, align 8
  %71 = load i8**, i8*** %8, align 8
  %72 = load i8**, i8*** %9, align 8
  %73 = call i32 @pngx_sig_is_jpeg(i8* noundef %69, i64 noundef %70, i8** noundef %71, i8** noundef %72)
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)* @pngx_read_jpeg, i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)** %12, align 8
  br label %95

76:                                               ; preds = %68
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %78 = load i64, i64* %11, align 8
  %79 = load i8**, i8*** %8, align 8
  %80 = load i8**, i8*** %9, align 8
  %81 = call i32 @pngx_sig_is_pnm(i8* noundef %77, i64 noundef %78, i8** noundef %79, i8** noundef %80)
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)* @pngx_read_pnm, i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)** %12, align 8
  br label %94

84:                                               ; preds = %76
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %86 = load i64, i64* %11, align 8
  %87 = load i8**, i8*** %8, align 8
  %88 = load i8**, i8*** %9, align 8
  %89 = call i32 @pngx_sig_is_tiff(i8* noundef %85, i64 noundef %86, i8** noundef %87, i8** noundef %88)
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)* @pngx_read_tiff, i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)** %12, align 8
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %114

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %83
  br label %95

95:                                               ; preds = %94, %75
  br label %96

96:                                               ; preds = %95, %67
  br label %97

97:                                               ; preds = %96, %59
  %98 = load i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)*, i32 (%struct.png_struct_def*, %struct.png_info_def*, %struct._IO_FILE*)** %12, align 8
  %99 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %100 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %102 = call i32 %98(%struct.png_struct_def* noundef %99, %struct.png_info_def* noundef %100, %struct._IO_FILE* noundef %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %107 = call i32 @fsetpos(%struct._IO_FILE* noundef %106, %struct._G_fpos_t* noundef %14)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_error(%struct.png_struct_def* noundef %110, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #4
  unreachable

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %97
  %113 = load i32, i32* %15, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %92, %51
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i8* @png_get_io_ptr(%struct.png_struct_def* noundef) #1

declare dso_local i32 @fgetpos(%struct._IO_FILE* noundef, %struct._G_fpos_t* noundef) #1

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fsetpos(%struct._IO_FILE* noundef, %struct._G_fpos_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pngx_sig_is_png(%struct.png_struct_def* noundef %0, i8* noundef %1, i64 noundef %2, i8** noundef %3, i8** noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.png_struct_def*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ule i64 %13, 43
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %75

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @memcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @pngx_sig_is_png.png_file_sig, i64 0, i64 0), i64 noundef 8) #5
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 8, i32 0
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %21, i64 %26
  %28 = call i32 @memcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @pngx_sig_is_png.png_ihdr_sig, i64 0, i64 0), i64 noundef 8) #5
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %16
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @memcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @pngx_sig_is_png.png_file_sig, i64 0, i64 0), i64 noundef 4) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 13
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %34
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %7, align 8
  call void @png_error(%struct.png_struct_def* noundef %47, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0)) #4
  unreachable

48:                                               ; preds = %40, %30
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @memcmp(i8* noundef %49, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @pngx_sig_is_png.mng_file_sig, i64 0, i64 0), i64 noundef 8) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %7, align 8
  call void @png_error(%struct.png_struct_def* noundef %53, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0)) #4
  unreachable

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %75

56:                                               ; preds = %16
  %57 = load i8**, i8*** %10, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @pngx_sig_is_png.pngx_png_standalone_fmt_name, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @pngx_sig_is_png.pngx_png_datastream_fmt_name, i64 0, i64 0)
  %64 = load i8**, i8*** %10, align 8
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i8**, i8*** %11, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @pngx_sig_is_png.pngx_png_standalone_fmt_long_name, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @pngx_sig_is_png.pngx_png_datastream_fmt_long_name, i64 0, i64 0)
  %73 = load i8**, i8*** %11, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %68, %65
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %55, %15
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local void @png_read_png(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i32 @pngx_sig_is_bmp(i8* noundef, i64 noundef, i8** noundef, i8** noundef) #1

declare dso_local i32 @pngx_read_bmp(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @pngx_sig_is_gif(i8* noundef, i64 noundef, i8** noundef, i8** noundef) #1

declare dso_local i32 @pngx_read_gif(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @pngx_sig_is_jpeg(i8* noundef, i64 noundef, i8** noundef, i8** noundef) #1

declare dso_local i32 @pngx_read_jpeg(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @pngx_sig_is_pnm(i8* noundef, i64 noundef, i8** noundef, i8** noundef) #1

declare dso_local i32 @pngx_read_pnm(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @pngx_sig_is_tiff(i8* noundef, i64 noundef, i8** noundef, i8** noundef) #1

declare dso_local i32 @pngx_read_tiff(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
