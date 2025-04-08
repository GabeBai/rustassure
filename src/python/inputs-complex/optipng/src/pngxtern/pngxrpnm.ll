; ModuleID = 'pngxrpnm.c'
source_filename = "pngxrpnm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.pnm_struct = type { i32, i32, i32, i32, i32 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }

@pngx_sig_is_pnm.fmt_names = internal global [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @pbm_fmt_name, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @pgm_fmt_name, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ppm_fmt_name, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @pbm_fmt_name, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @pgm_fmt_name, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ppm_fmt_name, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @pam_fmt_name, i32 0, i32 0)], align 16
@pbm_fmt_name = internal constant [4 x i8] c"PBM\00", align 1
@pgm_fmt_name = internal constant [4 x i8] c"PGM\00", align 1
@ppm_fmt_name = internal constant [4 x i8] c"PPM\00", align 1
@pam_fmt_name = internal constant [4 x i8] c"PAM\00", align 1
@pngx_sig_is_pnm.fmt_long_names = internal global [7 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @pbm_fmt_long_name, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @pgm_fmt_long_name, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ppm_fmt_long_name, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @pbm_fmt_long_name, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @pgm_fmt_long_name, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ppm_fmt_long_name, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @pam_fmt_long_name, i32 0, i32 0)], align 16
@pbm_fmt_long_name = internal constant [16 x i8] c"Portable Bitmap\00", align 16
@pgm_fmt_long_name = internal constant [17 x i8] c"Portable Graymap\00", align 16
@ppm_fmt_long_name = internal constant [16 x i8] c"Portable Pixmap\00", align 16
@pam_fmt_long_name = internal constant [16 x i8] c"Portable Anymap\00", align 16
@.str = private unnamed_addr constant [47 x i8] c"Can't handle PNM formats newer than PPM (\22P6\22)\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Can't handle exceedingly large PNM dimensions\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Can't handle PNM samples larger than 16 bits\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Possibly inexact sample conversion from PNM to PNG\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Overflow in PNM samples\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Error in PNM image file\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Extraneous data found after PNM image\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pngx_sig_is_pnm(i8* noundef %0, i64 noundef %1, i8** noundef %2, i8** noundef %3) #0 {
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
  %11 = icmp ult i64 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %90

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 80
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %23, 49
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sgt i32 %29, 55
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19, %13
  store i32 0, i32* %5, align 4
  br label %90

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 32
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 9
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 10
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %54, 13
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %60, 35
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %90

63:                                               ; preds = %56, %50, %44, %38, %32
  %64 = load i8**, i8*** %8, align 8
  %65 = icmp ne i8** %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 %70, 49
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [7 x i8*], [7 x i8*]* @pngx_sig_is_pnm.fmt_names, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %8, align 8
  store i8* %74, i8** %75, align 8
  br label %76

76:                                               ; preds = %66, %63
  %77 = load i8**, i8*** %9, align 8
  %78 = icmp ne i8** %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = sub nsw i32 %83, 49
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [7 x i8*], [7 x i8*]* @pngx_sig_is_pnm.fmt_long_names, i64 0, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load i8**, i8*** %9, align 8
  store i8* %87, i8** %88, align 8
  br label %89

89:                                               ; preds = %79, %76
  store i32 1, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %62, %31, %12
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pngx_read_pnm(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct.pnm_struct, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8**, align 8
  %20 = alloca %struct.png_color_8_struct, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %28 = call i32 @pnm_fget_header(%struct.pnm_struct* noundef %8, %struct._IO_FILE* noundef %27)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %332

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %8, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %8, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %8, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ugt i32 %42, 6
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %45, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0)) #4
  unreachable

46:                                               ; preds = %31
  store i32 -1, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ugt i32 %47, 2147483647
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 2147483647, i32* %14, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %55, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0)) #4
  unreachable

56:                                               ; preds = %50
  store i32 1, i32* %16, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = mul i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %18, align 8
  %61 = load i32, i32* %13, align 4
  %62 = icmp ugt i32 %61, 65535
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %64, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0)) #4
  unreachable

65:                                               ; preds = %56
  %66 = load i32, i32* %13, align 4
  %67 = icmp ugt i32 %66, 255
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  store i32 2, i32* %16, align 4
  %69 = load i64, i64* %18, align 8
  %70 = mul i64 %69, 2
  store i64 %70, i64* %18, align 8
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %74 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ule i32 %77, 255
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 8, i32 16
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 1
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 0, i32 2
  call void @png_set_IHDR(%struct.png_struct_def* noundef %73, %struct.png_info_def* noundef %74, i32 noundef %75, i32 noundef %76, i32 noundef %80, i32 noundef %84, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  store i32 1, i32* %21, align 4
  store i32 2, i32* %22, align 4
  br label %85

85:                                               ; preds = %91, %72
  %86 = load i32, i32* %22, align 4
  %87 = sub i32 %86, 1
  %88 = load i32, i32* %13, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %21, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %22, align 4
  %95 = shl i32 %94, 1
  store i32 %95, i32* %22, align 4
  br label %85, !llvm.loop !4

96:                                               ; preds = %85
  %97 = load i32, i32* %22, align 4
  %98 = sub i32 %97, 1
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_warning(%struct.png_struct_def* noundef %102, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %125

103:                                              ; preds = %96
  %104 = load i32, i32* %21, align 4
  %105 = urem i32 %104, 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = icmp ugt i32 %108, 1
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %21, align 4
  %112 = urem i32 8, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %21, align 4
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %20, i32 0, i32 3
  store i8 %116, i8* %117, align 1
  %118 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %20, i32 0, i32 2
  store i8 %116, i8* %118, align 1
  %119 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %20, i32 0, i32 1
  store i8 %116, i8* %119, align 1
  %120 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %20, i32 0, i32 0
  store i8 %116, i8* %120, align 1
  %121 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %20, i32 0, i32 4
  store i8 0, i8* %121, align 1
  %122 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %123 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_sBIT(%struct.png_struct_def* noundef %122, %struct.png_info_def* noundef %123, %struct.png_color_8_struct* noundef %20)
  br label %124

124:                                              ; preds = %114, %110, %103
  br label %125

125:                                              ; preds = %124, %101
  %126 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %127 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %128 = call i8** @pngx_malloc_rows(%struct.png_struct_def* noundef %126, %struct.png_info_def* noundef %127, i32 noundef -1)
  store i8** %128, i8*** %19, align 8
  %129 = load i32, i32* %9, align 4
  %130 = icmp uge i32 %129, 4
  br i1 %130, label %131, label %138

131:                                              ; preds = %125
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %132, 255
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %13, align 4
  %136 = icmp eq i32 %135, 65535
  br i1 %136, label %137, label %138

137:                                              ; preds = %134, %131
  store i32* null, i32** %17, align 8
  br label %145

138:                                              ; preds = %134, %125
  %139 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %140 = load i32, i32* %15, align 4
  %141 = zext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %139, i64 noundef %142)
  %144 = bitcast i8* %143 to i32*
  store i32* %144, i32** %17, align 8
  br label %145

145:                                              ; preds = %138, %137
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %146 = load i32*, i32** %17, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %270

148:                                              ; preds = %145
  store i32 0, i32* %21, align 4
  br label %149

149:                                              ; preds = %266, %148
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %269

153:                                              ; preds = %149
  %154 = load i32*, i32** %17, align 8
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %156 = call i32 @pnm_fget_values(%struct.pnm_struct* noundef %8, i32* noundef %154, i32 noundef 1, %struct._IO_FILE* noundef %155)
  %157 = icmp sle i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  store i32 1, i32* %23, align 4
  br label %159

159:                                              ; preds = %158, %153
  %160 = load i32, i32* %13, align 4
  %161 = icmp ule i32 %160, 255
  br i1 %161, label %162, label %204

162:                                              ; preds = %159
  store i32 0, i32* %22, align 4
  br label %163

163:                                              ; preds = %200, %162
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %167, label %203

167:                                              ; preds = %163
  %168 = load i32*, i32** %17, align 8
  %169 = load i32, i32* %22, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %25, align 4
  %173 = load i32, i32* %25, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ugt i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  store i32 255, i32* %25, align 4
  store i32 1, i32* %24, align 4
  br label %189

177:                                              ; preds = %167
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 255
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = load i32, i32* %25, align 4
  %182 = mul i32 %181, 255
  %183 = load i32, i32* %13, align 4
  %184 = udiv i32 %183, 2
  %185 = add i32 %182, %184
  %186 = load i32, i32* %13, align 4
  %187 = udiv i32 %185, %186
  store i32 %187, i32* %25, align 4
  br label %188

188:                                              ; preds = %180, %177
  br label %189

189:                                              ; preds = %188, %176
  %190 = load i32, i32* %25, align 4
  %191 = trunc i32 %190 to i8
  %192 = load i8**, i8*** %19, align 8
  %193 = load i32, i32* %21, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* %22, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  store i8 %191, i8* %199, align 1
  br label %200

200:                                              ; preds = %189
  %201 = load i32, i32* %22, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %22, align 4
  br label %163, !llvm.loop !6

203:                                              ; preds = %163
  br label %261

204:                                              ; preds = %159
  store i32 0, i32* %22, align 4
  br label %205

205:                                              ; preds = %257, %204
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* %15, align 4
  %208 = icmp ult i32 %206, %207
  br i1 %208, label %209, label %260

209:                                              ; preds = %205
  %210 = load i32*, i32** %17, align 8
  %211 = load i32, i32* %22, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %26, align 4
  %215 = load i32, i32* %26, align 4
  %216 = load i32, i32* %13, align 4
  %217 = icmp ugt i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %209
  store i32 65535, i32* %26, align 4
  store i32 1, i32* %24, align 4
  br label %231

219:                                              ; preds = %209
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 65535
  br i1 %221, label %222, label %230

222:                                              ; preds = %219
  %223 = load i32, i32* %26, align 4
  %224 = mul i32 %223, 65535
  %225 = load i32, i32* %13, align 4
  %226 = udiv i32 %225, 2
  %227 = add i32 %224, %226
  %228 = load i32, i32* %13, align 4
  %229 = udiv i32 %227, %228
  store i32 %229, i32* %26, align 4
  br label %230

230:                                              ; preds = %222, %219
  br label %231

231:                                              ; preds = %230, %218
  %232 = load i32, i32* %26, align 4
  %233 = lshr i32 %232, 8
  %234 = trunc i32 %233 to i8
  %235 = load i8**, i8*** %19, align 8
  %236 = load i32, i32* %21, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* %22, align 4
  %241 = mul i32 2, %240
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %239, i64 %242
  store i8 %234, i8* %243, align 1
  %244 = load i32, i32* %26, align 4
  %245 = and i32 %244, 255
  %246 = trunc i32 %245 to i8
  %247 = load i8**, i8*** %19, align 8
  %248 = load i32, i32* %21, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = load i32, i32* %22, align 4
  %253 = mul i32 2, %252
  %254 = add i32 %253, 1
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %251, i64 %255
  store i8 %246, i8* %256, align 1
  br label %257

257:                                              ; preds = %231
  %258 = load i32, i32* %22, align 4
  %259 = add i32 %258, 1
  store i32 %259, i32* %22, align 4
  br label %205, !llvm.loop !7

260:                                              ; preds = %205
  br label %261

261:                                              ; preds = %260, %203
  %262 = load i32, i32* %23, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  br label %269

265:                                              ; preds = %261
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %21, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %21, align 4
  br label %149, !llvm.loop !8

269:                                              ; preds = %264, %149
  br label %292

270:                                              ; preds = %145
  store i32 0, i32* %21, align 4
  br label %271

271:                                              ; preds = %288, %270
  %272 = load i32, i32* %21, align 4
  %273 = load i32, i32* %12, align 4
  %274 = icmp ult i32 %272, %273
  br i1 %274, label %275, label %291

275:                                              ; preds = %271
  %276 = load i8**, i8*** %19, align 8
  %277 = load i32, i32* %21, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %276, i64 %278
  %280 = load i8*, i8** %279, align 8
  %281 = load i32, i32* %16, align 4
  %282 = zext i32 %281 to i64
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %284 = call i32 @pnm_fget_bytes(%struct.pnm_struct* noundef %8, i8* noundef %280, i64 noundef %282, i32 noundef 1, %struct._IO_FILE* noundef %283)
  %285 = icmp sle i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %275
  store i32 1, i32* %23, align 4
  br label %291

287:                                              ; preds = %275
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %21, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %21, align 4
  br label %271, !llvm.loop !9

291:                                              ; preds = %286, %271
  br label %292

292:                                              ; preds = %291, %269
  br label %293

293:                                              ; preds = %304, %292
  %294 = load i32, i32* %21, align 4
  %295 = load i32, i32* %12, align 4
  %296 = icmp ult i32 %294, %295
  br i1 %296, label %297, label %307

297:                                              ; preds = %293
  %298 = load i8**, i8*** %19, align 8
  %299 = load i32, i32* %21, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i8*, i8** %298, i64 %300
  %302 = load i8*, i8** %301, align 8
  %303 = load i64, i64* %18, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %302, i8 0, i64 %303, i1 false)
  br label %304

304:                                              ; preds = %297
  %305 = load i32, i32* %21, align 4
  %306 = add i32 %305, 1
  store i32 %306, i32* %21, align 4
  br label %293, !llvm.loop !10

307:                                              ; preds = %293
  %308 = load i32*, i32** %17, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  %311 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %312 = load i32*, i32** %17, align 8
  %313 = bitcast i32* %312 to i8*
  call void @png_free(%struct.png_struct_def* noundef %311, i8* noundef %313)
  br label %314

314:                                              ; preds = %310, %307
  %315 = load i32, i32* %24, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %314
  %318 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_warning(%struct.png_struct_def* noundef %318, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %319

319:                                              ; preds = %317, %314
  %320 = load i32, i32* %23, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  %323 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %323, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #4
  unreachable

324:                                              ; preds = %319
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %326 = call i32 @pnm_fpeek_eof(%struct.pnm_struct* noundef %8, %struct._IO_FILE* noundef %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %324
  %329 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_warning(%struct.png_struct_def* noundef %329, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %330

330:                                              ; preds = %328, %324
  br label %331

331:                                              ; preds = %330
  store i32 1, i32* %4, align 4
  br label %332

332:                                              ; preds = %331, %30
  %333 = load i32, i32* %4, align 4
  ret i32 %333
}

declare dso_local i32 @pnm_fget_header(%struct.pnm_struct* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) #2

declare dso_local void @png_set_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #1

declare dso_local void @png_set_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_8_struct* noundef) #1

declare dso_local i8** @pngx_malloc_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare dso_local noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #1

declare dso_local i32 @pnm_fget_values(%struct.pnm_struct* noundef, i32* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @pnm_fget_bytes(%struct.pnm_struct* noundef, i8* noundef, i64 noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local void @png_free(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnm_fpeek_eof(%struct.pnm_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnm_struct*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  store %struct.pnm_struct* %0, %struct.pnm_struct** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  %7 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %8 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp uge i32 %9, 1
  br i1 %10, label %11, label %58

11:                                               ; preds = %2
  %12 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %13 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ule i32 %14, 3
  br i1 %15, label %16, label %58

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %55, %16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %19 = call i32 @getc(%struct._IO_FILE* noundef %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 35
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %35, %22
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %25 = call i32 @getc(%struct._IO_FILE* noundef %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 10
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 13
  br label %35

35:                                               ; preds = %32, %29, %26
  %36 = phi i1 [ false, %29 ], [ false, %26 ], [ %34, %32 ]
  br i1 %36, label %23, label %37, !llvm.loop !11

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %69

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 13
  br label %55

55:                                               ; preds = %52, %49, %46, %43
  %56 = phi i1 [ true, %49 ], [ true, %46 ], [ true, %43 ], [ %54, %52 ]
  br i1 %56, label %17, label %57, !llvm.loop !12

57:                                               ; preds = %55
  br label %65

58:                                               ; preds = %11, %2
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %60 = call i32 @getc(%struct._IO_FILE* noundef %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %69

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %57
  %66 = load i32, i32* %6, align 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %68 = call i32 @ungetc(i32 noundef %66, %struct._IO_FILE* noundef %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %63, %41
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
