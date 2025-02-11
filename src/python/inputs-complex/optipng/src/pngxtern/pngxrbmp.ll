; ModuleID = 'pngxrbmp.c'
source_filename = "pngxrbmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }

@pngx_sig_is_bmp.bmp_fmt_name = internal constant [4 x i8] c"BMP\00", align 1
@pngx_sig_is_bmp.os2bmp_fmt_long_name = internal constant [12 x i8] c"OS/2 Bitmap\00", align 1
@pngx_sig_is_bmp.winbmp_fmt_long_name = internal constant [15 x i8] c"Windows Bitmap\00", align 1
@.str = private unnamed_addr constant [31 x i8] c"Missing color mask in BMP file\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"JPEG-compressed BMP files are not supported\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unsupported compression method in BMP file\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid image dimensions in BMP file\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Invalid pixel depth in BMP file\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Can't handle exceedingly large BMP dimensions\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Invalid color mask in BMP file\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Error reading color palette in BMP file\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Error reading BMP file\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pngx_sig_is_bmp(i8* noundef %0, i64 noundef %1, i8** noundef %2, i8** noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 18
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %49

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @bmp_get_word(i8* noundef %15)
  %17 = icmp ne i32 %16, 19778
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %49

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 14
  %22 = call i32 @bmp_get_dword(i8* noundef %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ugt i32 %23, 2147483647
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 12
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = icmp ult i32 %29, 40
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %19
  store i32 0, i32* %5, align 4
  br label %49

32:                                               ; preds = %28, %25
  %33 = load i8**, i8*** %8, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @pngx_sig_is_bmp.bmp_fmt_name, i64 0, i64 0), i8** %36, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8**, i8*** %9, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 12
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @pngx_sig_is_bmp.os2bmp_fmt_long_name, i64 0, i64 0), i8** %44, align 8
  br label %47

45:                                               ; preds = %40
  %46 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @pngx_sig_is_bmp.winbmp_fmt_long_name, i64 0, i64 0), i8** %46, align 8
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47, %37
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %31, %18, %13
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @bmp_get_word(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 8
  %12 = add i32 %6, %11
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @bmp_get_dword(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 8
  %12 = add i32 %6, %11
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 %16, 16
  %18 = add i32 %12, %17
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 24
  %24 = add i32 %18, %23
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pngx_read_bmp(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, %struct.__sFILE* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca %struct.__sFILE*, align 8
  %8 = alloca [138 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [4 x i32], align 4
  %23 = alloca [4 x i8], align 1
  %24 = alloca [4 x i8], align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [256 x %struct.png_color_struct], align 1
  %28 = alloca %struct.png_color_8_struct, align 1
  %29 = alloca i8**, align 8
  %30 = alloca i8**, align 8
  %31 = alloca i8**, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store %struct.__sFILE* %2, %struct.__sFILE** %7, align 8
  %34 = getelementptr inbounds [138 x i8], [138 x i8]* %8, i64 0, i64 0
  %35 = getelementptr inbounds i8, i8* %34, i64 14
  store i8* %35, i8** %9, align 8
  store i32 0, i32* %32, align 4
  br label %36

36:                                               ; preds = %64, %3
  %37 = getelementptr inbounds [138 x i8], [138 x i8]* %8, i64 0, i64 0
  %38 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %39 = call i64 @fread(i8* noundef %37, i64 noundef 18, i64 noundef 1, %struct.__sFILE* noundef %38)
  %40 = icmp ne i64 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %32, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %32, align 4
  br label %51

44:                                               ; preds = %36
  %45 = getelementptr inbounds [138 x i8], [138 x i8]* %8, i64 0, i64 0
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = call i32 @bmp_get_word(i8* noundef %46)
  %48 = icmp eq i32 %47, 19778
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %67

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %41
  %52 = getelementptr inbounds [138 x i8], [138 x i8]* %8, i64 0, i64 0
  %53 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %54 = call i64 @fread(i8* noundef %52, i64 noundef 110, i64 noundef 1, %struct.__sFILE* noundef %53)
  %55 = icmp ne i64 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %32, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %32, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %32, align 4
  %61 = icmp ugt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %557

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %32, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %32, align 4
  br label %36

67:                                               ; preds = %49
  %68 = getelementptr inbounds [138 x i8], [138 x i8]* %8, i64 0, i64 0
  %69 = getelementptr inbounds i8, i8* %68, i64 10
  %70 = call i32 @bmp_get_dword(i8* noundef %69)
  store i32 %70, i32* %11, align 4
  %71 = getelementptr inbounds [138 x i8], [138 x i8]* %8, i64 0, i64 0
  %72 = getelementptr inbounds i8, i8* %71, i64 14
  %73 = call i32 @bmp_get_dword(i8* noundef %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ugt i32 %74, 2147483647
  br i1 %75, label %90, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %12, align 4
  %78 = icmp ugt i32 %77, 2147483647
  br i1 %78, label %90, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add i32 %81, 14
  %83 = icmp ult i32 %80, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 12
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = icmp ult i32 %88, 40
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %79, %76, %67
  store i32 0, i32* %4, align 4
  br label %557

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %12, align 4
  %93 = icmp ugt i32 %92, 124
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = sub i32 %95, 124
  store i32 %96, i32* %13, align 4
  store i32 124, i32* %12, align 4
  br label %98

97:                                               ; preds = %91
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  %101 = load i32, i32* %12, align 4
  %102 = sub i32 %101, 4
  %103 = zext i32 %102 to i64
  %104 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %105 = call i64 @fread(i8* noundef %100, i64 noundef %103, i64 noundef 1, %struct.__sFILE* noundef %104)
  %106 = icmp ne i64 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %557

108:                                              ; preds = %98
  %109 = load i32, i32* %13, align 4
  %110 = icmp ugt i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %113 = load i32, i32* %13, align 4
  %114 = zext i32 %113 to i64
  %115 = call i32 @fseek(%struct.__sFILE* noundef %112, i64 noundef %114, i32 noundef 1)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %557

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %108
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = sub i32 %120, %121
  %123 = sub i32 %122, 14
  store i32 %123, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ult i32 %124, 40
  br i1 %125, label %126, label %136

126:                                              ; preds = %119
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 4
  %129 = call i32 @bmp_get_word(i8* noundef %128)
  store i32 %129, i32* %14, align 4
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 6
  %132 = call i32 @bmp_get_word(i8* noundef %131)
  store i32 %132, i32* %15, align 4
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 10
  %135 = call i32 @bmp_get_word(i8* noundef %134)
  store i32 %135, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 3, i32* %20, align 4
  br label %185

136:                                              ; preds = %119
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  %139 = call i32 @bmp_get_dword(i8* noundef %138)
  store i32 %139, i32* %14, align 4
  %140 = load i8*, i8** %9, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 8
  %142 = call i32 @bmp_get_dword(i8* noundef %141)
  store i32 %142, i32* %15, align 4
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 14
  %145 = call i32 @bmp_get_word(i8* noundef %144)
  store i32 %145, i32* %18, align 4
  %146 = load i8*, i8** %9, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 16
  %148 = call i32 @bmp_get_dword(i8* noundef %147)
  store i32 %148, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp ugt i32 %149, 2147483647
  br i1 %150, label %151, label %155

151:                                              ; preds = %136
  %152 = load i32, i32* %15, align 4
  %153 = sub i32 -1, %152
  %154 = add i32 %153, 1
  store i32 %154, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %155

155:                                              ; preds = %151, %136
  %156 = load i32, i32* %12, align 4
  %157 = icmp eq i32 %156, 40
  br i1 %157, label %158, label %184

158:                                              ; preds = %155
  %159 = load i32, i32* %19, align 4
  %160 = icmp eq i32 %159, 3
  br i1 %160, label %161, label %184

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  %163 = icmp ule i32 %162, 16
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  br label %167

166:                                              ; preds = %161
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i32 [ %165, %164 ], [ 16, %166 ]
  store i32 %168, i32* %32, align 4
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 40
  %171 = load i32, i32* %32, align 4
  %172 = zext i32 %171 to i64
  %173 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %174 = call i64 @fread(i8* noundef %170, i64 noundef %172, i64 noundef 1, %struct.__sFILE* noundef %173)
  %175 = icmp ne i64 %174, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  br label %557

177:                                              ; preds = %167
  %178 = load i32, i32* %32, align 4
  %179 = load i32, i32* %12, align 4
  %180 = add i32 %179, %178
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %32, align 4
  %182 = load i32, i32* %13, align 4
  %183 = sub i32 %182, %181
  store i32 %183, i32* %13, align 4
  br label %184

184:                                              ; preds = %177, %158, %155
  br label %185

185:                                              ; preds = %184, %126
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  %187 = bitcast i32* %186 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %187, i8 0, i64 16, i1 false)
  %188 = load i32, i32* %18, align 4
  %189 = icmp ugt i32 %188, 8
  br i1 %189, label %190, label %237

190:                                              ; preds = %185
  %191 = load i32, i32* %19, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %190
  %194 = load i32, i32* %18, align 4
  %195 = icmp eq i32 %194, 16
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  store i32 3, i32* %19, align 4
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  store i32 31744, i32* %197, align 4
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 1
  store i32 992, i32* %198, align 4
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 2
  store i32 31, i32* %199, align 4
  br label %204

200:                                              ; preds = %193
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  store i32 16711680, i32* %201, align 4
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 1
  store i32 65280, i32* %202, align 4
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 2
  store i32 255, i32* %203, align 4
  br label %204

204:                                              ; preds = %200, %196
  br label %228

205:                                              ; preds = %190
  %206 = load i32, i32* %19, align 4
  %207 = icmp eq i32 %206, 3
  br i1 %207, label %208, label %227

208:                                              ; preds = %205
  %209 = load i32, i32* %12, align 4
  %210 = icmp uge i32 %209, 52
  br i1 %210, label %211, label %224

211:                                              ; preds = %208
  %212 = load i8*, i8** %9, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 40
  %214 = call i32 @bmp_get_dword(i8* noundef %213)
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  store i32 %214, i32* %215, align 4
  %216 = load i8*, i8** %9, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 44
  %218 = call i32 @bmp_get_dword(i8* noundef %217)
  %219 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 1
  store i32 %218, i32* %219, align 4
  %220 = load i8*, i8** %9, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 48
  %222 = call i32 @bmp_get_dword(i8* noundef %221)
  %223 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 2
  store i32 %222, i32* %223, align 4
  br label %226

224:                                              ; preds = %208
  %225 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %225, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0)) #6
  unreachable

226:                                              ; preds = %211
  br label %227

227:                                              ; preds = %226, %205
  br label %228

228:                                              ; preds = %227, %204
  %229 = load i32, i32* %12, align 4
  %230 = icmp uge i32 %229, 56
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load i8*, i8** %9, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 52
  %234 = call i32 @bmp_get_dword(i8* noundef %233)
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 3
  store i32 %234, i32* %235, align 4
  br label %236

236:                                              ; preds = %231, %228
  br label %237

237:                                              ; preds = %236, %185
  %238 = load i32, i32* %19, align 4
  switch i32 %238, label %285 [
    i32 0, label %239
    i32 1, label %251
    i32 2, label %256
    i32 3, label %261
    i32 4, label %269
    i32 5, label %271
  ]

239:                                              ; preds = %237
  %240 = load i32, i32* %18, align 4
  %241 = icmp ugt i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %239
  %243 = load i32, i32* %18, align 4
  %244 = urem i32 32, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %247, 24
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  store i32 0, i32* %18, align 4
  br label %250

250:                                              ; preds = %249, %246, %242, %239
  br label %287

251:                                              ; preds = %237
  %252 = load i32, i32* %18, align 4
  %253 = icmp ne i32 %252, 8
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  store i32 0, i32* %18, align 4
  br label %255

255:                                              ; preds = %254, %251
  br label %287

256:                                              ; preds = %237
  %257 = load i32, i32* %18, align 4
  %258 = icmp ne i32 %257, 4
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  store i32 0, i32* %18, align 4
  br label %260

260:                                              ; preds = %259, %256
  br label %287

261:                                              ; preds = %237
  %262 = load i32, i32* %18, align 4
  %263 = icmp ne i32 %262, 16
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = load i32, i32* %18, align 4
  %266 = icmp ne i32 %265, 32
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  store i32 0, i32* %18, align 4
  br label %268

268:                                              ; preds = %267, %264, %261
  br label %287

269:                                              ; preds = %237
  %270 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %270, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #6
  unreachable

271:                                              ; preds = %237
  %272 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %273 = call i32 @getc(%struct.__sFILE* noundef %272)
  %274 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %275 = call i32 @ungetc(i32 noundef %273, %struct.__sFILE* noundef %274)
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %271
  %278 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_set_sig_bytes(%struct.png_struct_def* noundef %278, i32 noundef 8)
  br label %279

279:                                              ; preds = %277, %271
  %280 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %281 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %282 = bitcast %struct.__sFILE* %281 to i8*
  call void @png_set_read_fn(%struct.png_struct_def* noundef %280, i8* noundef %282, void (%struct.png_struct_def*, i8*, i64)* noundef null)
  %283 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %284 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_read_png(%struct.png_struct_def* noundef %283, %struct.png_info_def* noundef %284, i32 noundef 0, i8* noundef null)
  store i32 1, i32* %4, align 4
  br label %557

285:                                              ; preds = %237
  %286 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %286, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #6
  unreachable

287:                                              ; preds = %268, %260, %255, %250
  %288 = load i32, i32* %14, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %296, label %290

290:                                              ; preds = %287
  %291 = load i32, i32* %14, align 4
  %292 = icmp ugt i32 %291, 2147483647
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* %15, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %293, %290, %287
  %297 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %297, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #6
  unreachable

298:                                              ; preds = %293
  %299 = load i32, i32* %18, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %302, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0)) #6
  unreachable

303:                                              ; preds = %298
  %304 = load i32, i32* %18, align 4
  %305 = icmp ule i32 %304, 8
  br i1 %305, label %306, label %333

306:                                              ; preds = %303
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* %20, align 4
  %309 = udiv i32 %307, %308
  store i32 %309, i32* %21, align 4
  %310 = load i32, i32* %21, align 4
  %311 = icmp ugt i32 %310, 256
  br i1 %311, label %312, label %313

312:                                              ; preds = %306
  store i32 256, i32* %21, align 4
  br label %313

313:                                              ; preds = %312, %306
  %314 = load i32, i32* %20, align 4
  %315 = load i32, i32* %21, align 4
  %316 = mul i32 %314, %315
  %317 = load i32, i32* %13, align 4
  %318 = sub i32 %317, %316
  store i32 %318, i32* %13, align 4
  %319 = load i32, i32* %14, align 4
  %320 = load i32, i32* %18, align 4
  %321 = udiv i32 32, %320
  %322 = add i32 %319, %321
  %323 = sub i32 %322, 1
  %324 = load i32, i32* %18, align 4
  %325 = udiv i32 32, %324
  %326 = udiv i32 %323, %325
  %327 = mul i32 %326, 4
  store i32 %327, i32* %16, align 4
  %328 = load i32, i32* %18, align 4
  store i32 %328, i32* %25, align 4
  %329 = load i32, i32* %21, align 4
  %330 = icmp ugt i32 %329, 0
  %331 = zext i1 %330 to i64
  %332 = select i1 %330, i32 3, i32 0
  store i32 %332, i32* %26, align 4
  br label %363

333:                                              ; preds = %303
  store i32 0, i32* %21, align 4
  store i32 8, i32* %25, align 4
  %334 = load i32, i32* %18, align 4
  switch i32 %334, label %348 [
    i32 16, label %335
    i32 24, label %340
    i32 32, label %345
  ]

335:                                              ; preds = %333
  %336 = load i32, i32* %14, align 4
  %337 = mul i32 %336, 2
  %338 = add i32 %337, 3
  %339 = and i32 %338, -4
  store i32 %339, i32* %16, align 4
  br label %349

340:                                              ; preds = %333
  %341 = load i32, i32* %14, align 4
  %342 = mul i32 %341, 3
  %343 = add i32 %342, 3
  %344 = and i32 %343, -4
  store i32 %344, i32* %16, align 4
  br label %349

345:                                              ; preds = %333
  %346 = load i32, i32* %14, align 4
  %347 = mul i32 %346, 4
  store i32 %347, i32* %16, align 4
  br label %349

348:                                              ; preds = %333
  store i32 0, i32* %25, align 4
  store i32 0, i32* %16, align 4
  br label %349

349:                                              ; preds = %348, %345, %340, %335
  %350 = load i32, i32* %16, align 4
  %351 = load i32, i32* %14, align 4
  %352 = udiv i32 %350, %351
  %353 = load i32, i32* %18, align 4
  %354 = udiv i32 %353, 8
  %355 = icmp ult i32 %352, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %349
  store i32 0, i32* %16, align 4
  br label %357

357:                                              ; preds = %356, %349
  %358 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 3
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 0
  %361 = zext i1 %360 to i64
  %362 = select i1 %360, i32 6, i32 2
  store i32 %362, i32* %26, align 4
  br label %363

363:                                              ; preds = %357, %313
  %364 = load i32, i32* %16, align 4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %367, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0)) #6
  unreachable

368:                                              ; preds = %363
  %369 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %370 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %371 = load i32, i32* %14, align 4
  %372 = load i32, i32* %15, align 4
  %373 = load i32, i32* %25, align 4
  %374 = load i32, i32* %26, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %369, %struct.png_info_def* noundef %370, i32 noundef %371, i32 noundef %372, i32 noundef %373, i32 noundef %374, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %375 = load i32, i32* %18, align 4
  %376 = icmp ugt i32 %375, 8
  br i1 %376, label %377, label %453

377:                                              ; preds = %368
  store i32 0, i32* %32, align 4
  br label %378

378:                                              ; preds = %392, %377
  %379 = load i32, i32* %32, align 4
  %380 = icmp ult i32 %379, 4
  br i1 %380, label %381, label %395

381:                                              ; preds = %378
  %382 = load i32, i32* %32, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %32, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 %387
  %389 = load i32, i32* %32, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %390
  call void @bmp_process_mask(i32 noundef %385, i8* noundef %388, i8* noundef %391)
  br label %392

392:                                              ; preds = %381
  %393 = load i32, i32* %32, align 4
  %394 = add i32 %393, 1
  store i32 %394, i32* %32, align 4
  br label %378, !llvm.loop !10

395:                                              ; preds = %378
  %396 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  %397 = load i8, i8* %396, align 1
  %398 = zext i8 %397 to i32
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %410, label %400

400:                                              ; preds = %395
  %401 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 1
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i32
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %410, label %405

405:                                              ; preds = %400
  %406 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 2
  %407 = load i8, i8* %406, align 1
  %408 = zext i8 %407 to i32
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %412

410:                                              ; preds = %405, %400, %395
  %411 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %411, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #6
  unreachable

412:                                              ; preds = %405
  %413 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  %414 = load i8, i8* %413, align 1
  %415 = zext i8 %414 to i32
  %416 = icmp ne i32 %415, 8
  br i1 %416, label %437, label %417

417:                                              ; preds = %412
  %418 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 1
  %419 = load i8, i8* %418, align 1
  %420 = zext i8 %419 to i32
  %421 = icmp ne i32 %420, 8
  br i1 %421, label %437, label %422

422:                                              ; preds = %417
  %423 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 2
  %424 = load i8, i8* %423, align 1
  %425 = zext i8 %424 to i32
  %426 = icmp ne i32 %425, 8
  br i1 %426, label %437, label %427

427:                                              ; preds = %422
  %428 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 3
  %429 = load i8, i8* %428, align 1
  %430 = zext i8 %429 to i32
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %452

432:                                              ; preds = %427
  %433 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 3
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i32
  %436 = icmp ne i32 %435, 8
  br i1 %436, label %437, label %452

437:                                              ; preds = %432, %422, %417, %412
  %438 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  %439 = load i8, i8* %438, align 1
  %440 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %28, i32 0, i32 0
  store i8 %439, i8* %440, align 1
  %441 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 1
  %442 = load i8, i8* %441, align 1
  %443 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %28, i32 0, i32 1
  store i8 %442, i8* %443, align 1
  %444 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 2
  %445 = load i8, i8* %444, align 1
  %446 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %28, i32 0, i32 2
  store i8 %445, i8* %446, align 1
  %447 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 3
  %448 = load i8, i8* %447, align 1
  %449 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %28, i32 0, i32 4
  store i8 %448, i8* %449, align 1
  %450 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %451 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_sBIT(%struct.png_struct_def* noundef %450, %struct.png_info_def* noundef %451, %struct.png_color_8_struct* noundef %28)
  br label %452

452:                                              ; preds = %437, %432, %427
  br label %453

453:                                              ; preds = %452, %368
  %454 = load i32, i32* %21, align 4
  %455 = icmp ugt i32 %454, 0
  br i1 %455, label %456, label %502

456:                                              ; preds = %453
  store i32 0, i32* %32, align 4
  br label %457

457:                                              ; preds = %488, %456
  %458 = load i32, i32* %32, align 4
  %459 = load i32, i32* %21, align 4
  %460 = icmp ult i32 %458, %459
  br i1 %460, label %461, label %491

461:                                              ; preds = %457
  %462 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %463 = load i32, i32* %20, align 4
  %464 = zext i32 %463 to i64
  %465 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %466 = call i64 @fread(i8* noundef %462, i64 noundef %464, i64 noundef 1, %struct.__sFILE* noundef %465)
  %467 = icmp ne i64 %466, 1
  br i1 %467, label %468, label %469

468:                                              ; preds = %461
  br label %491

469:                                              ; preds = %461
  %470 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %471 = load i8, i8* %470, align 1
  %472 = load i32, i32* %32, align 4
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %27, i64 0, i64 %473
  %475 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %474, i32 0, i32 0
  store i8 %471, i8* %475, align 1
  %476 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %477 = load i8, i8* %476, align 1
  %478 = load i32, i32* %32, align 4
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %27, i64 0, i64 %479
  %481 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %480, i32 0, i32 1
  store i8 %477, i8* %481, align 1
  %482 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %483 = load i8, i8* %482, align 1
  %484 = load i32, i32* %32, align 4
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %27, i64 0, i64 %485
  %487 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %486, i32 0, i32 2
  store i8 %483, i8* %487, align 1
  br label %488

488:                                              ; preds = %469
  %489 = load i32, i32* %32, align 4
  %490 = add i32 %489, 1
  store i32 %490, i32* %32, align 4
  br label %457, !llvm.loop !12

491:                                              ; preds = %468, %457
  %492 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %493 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %494 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %27, i64 0, i64 0
  %495 = load i32, i32* %32, align 4
  call void @png_set_PLTE(%struct.png_struct_def* noundef %492, %struct.png_info_def* noundef %493, %struct.png_color_struct* noundef %494, i32 noundef %495)
  %496 = load i32, i32* %32, align 4
  %497 = load i32, i32* %21, align 4
  %498 = icmp ne i32 %496, %497
  br i1 %498, label %499, label %501

499:                                              ; preds = %491
  %500 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %500, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0)) #6
  unreachable

501:                                              ; preds = %491
  br label %502

502:                                              ; preds = %501, %453
  %503 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %504 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %505 = load i32, i32* %16, align 4
  %506 = zext i32 %505 to i64
  %507 = call i8** @pngx_malloc_rows_extended(%struct.png_struct_def* noundef %503, %struct.png_info_def* noundef %504, i64 noundef %506, i32 noundef -1)
  store i8** %507, i8*** %29, align 8
  %508 = load i32, i32* %17, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %516

510:                                              ; preds = %502
  %511 = load i8**, i8*** %29, align 8
  store i8** %511, i8*** %30, align 8
  %512 = load i8**, i8*** %29, align 8
  %513 = load i32, i32* %15, align 4
  %514 = zext i32 %513 to i64
  %515 = getelementptr inbounds i8*, i8** %512, i64 %514
  store i8** %515, i8*** %31, align 8
  br label %524

516:                                              ; preds = %502
  %517 = load i8**, i8*** %29, align 8
  %518 = load i32, i32* %15, align 4
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds i8*, i8** %517, i64 %519
  %521 = getelementptr inbounds i8*, i8** %520, i64 -1
  store i8** %521, i8*** %30, align 8
  %522 = load i8**, i8*** %29, align 8
  %523 = getelementptr inbounds i8*, i8** %522, i64 -1
  store i8** %523, i8*** %31, align 8
  br label %524

524:                                              ; preds = %516, %510
  %525 = load i32, i32* %13, align 4
  %526 = icmp ugt i32 %525, 0
  br i1 %526, label %527, label %532

527:                                              ; preds = %524
  %528 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %529 = load i32, i32* %13, align 4
  %530 = zext i32 %529 to i64
  %531 = call i32 @fseek(%struct.__sFILE* noundef %528, i64 noundef %530, i32 noundef 1)
  br label %532

532:                                              ; preds = %527, %524
  %533 = load i8**, i8*** %30, align 8
  %534 = load i8**, i8*** %31, align 8
  %535 = load i32, i32* %16, align 4
  %536 = zext i32 %535 to i64
  %537 = load i32, i32* %19, align 4
  %538 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %539 = call i64 @bmp_read_rows(i8** noundef %533, i8** noundef %534, i64 noundef %536, i32 noundef %537, %struct.__sFILE* noundef %538)
  store i64 %539, i64* %33, align 8
  %540 = load i32, i32* %18, align 4
  %541 = icmp ugt i32 %540, 8
  br i1 %541, label %542, label %549

542:                                              ; preds = %532
  %543 = load i8**, i8*** %29, align 8
  %544 = load i32, i32* %14, align 4
  %545 = load i32, i32* %15, align 4
  %546 = load i32, i32* %18, align 4
  %547 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  %548 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  call void @bmp_to_png_rows(i8** noundef %543, i32 noundef %544, i32 noundef %545, i32 noundef %546, i8* noundef %547, i8* noundef %548)
  br label %549

549:                                              ; preds = %542, %532
  %550 = load i64, i64* %33, align 8
  %551 = load i32, i32* %15, align 4
  %552 = zext i32 %551 to i64
  %553 = icmp ne i64 %550, %552
  br i1 %553, label %554, label %556

554:                                              ; preds = %549
  %555 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %555, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)) #6
  unreachable

556:                                              ; preds = %549
  store i32 1, i32* %4, align 4
  br label %557

557:                                              ; preds = %556, %279, %176, %117, %107, %90, %62
  %558 = load i32, i32* %4, align 4
  ret i32 %558
}

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #1

declare i32 @fseek(%struct.__sFILE* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #3

declare i32 @ungetc(i32 noundef, %struct.__sFILE* noundef) #1

declare i32 @getc(%struct.__sFILE* noundef) #1

declare void @png_set_sig_bytes(%struct.png_struct_def* noundef, i32 noundef) #1

declare void @png_set_read_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*, i64)* noundef) #1

declare void @png_read_png(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i8* noundef) #1

declare void @png_set_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @bmp_process_mask(i32 noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %5, align 8
  store i8 0, i8* %8, align 1
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %44

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %17, %12
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = lshr i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = add i8 %21, 1
  store i8 %22, i8* %20, align 1
  br label %13, !llvm.loop !13

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sge i32 %34, 8
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %27
  %37 = load i8*, i8** %5, align 8
  store i8 0, i8* %37, align 1
  br label %44

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = lshr i32 %39, 1
  store i32 %40, i32* %4, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = add i8 %42, 1
  store i8 %43, i8* %41, align 1
  br label %24, !llvm.loop !14

44:                                               ; preds = %11, %36, %24
  ret void
}

declare void @png_set_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_8_struct* noundef) #1

declare void @png_set_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct* noundef, i32 noundef) #1

declare i8** @pngx_malloc_rows_extended(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @bmp_read_rows(i8** noundef %0, i8** noundef %1, i64 noundef %2, i32 noundef %3, %struct.__sFILE* noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.__sFILE*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca void (i8*, i64, i32, i64)*, align 8
  %23 = alloca i64 (i8*, i64, i64, %struct.__sFILE*)*, align 8
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.__sFILE* %4, %struct.__sFILE** %11, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %339

27:                                               ; preds = %5
  %28 = load i8**, i8*** %7, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = icmp ule i8** %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 -1
  store i32 %32, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  %37 = mul i64 %36, 2
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i64 0, i64* %6, align 8
  br label %339

42:                                               ; preds = %35
  store void (i8*, i64, i32, i64)* @bmp_memset_halfbytes, void (i8*, i64, i32, i64)** %22, align 8
  store i64 (i8*, i64, i64, %struct.__sFILE*)* @bmp_fread_halfbytes, i64 (i8*, i64, i64, %struct.__sFILE*)** %23, align 8
  br label %45

43:                                               ; preds = %27
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %17, align 8
  store void (i8*, i64, i32, i64)* @bmp_memset_bytes, void (i8*, i64, i32, i64)** %22, align 8
  store i64 (i8*, i64, i64, %struct.__sFILE*)* @bmp_fread_bytes, i64 (i8*, i64, i64, %struct.__sFILE*)** %23, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %77

51:                                               ; preds = %48, %45
  %52 = load i8**, i8*** %7, align 8
  store i8** %52, i8*** %13, align 8
  br label %53

53:                                               ; preds = %71, %51
  %54 = load i8**, i8*** %13, align 8
  %55 = load i8**, i8*** %8, align 8
  %56 = icmp ne i8** %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load i64 (i8*, i64, i64, %struct.__sFILE*)*, i64 (i8*, i64, i64, %struct.__sFILE*)** %23, align 8
  %59 = load i8**, i8*** %13, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8
  %63 = call i64 %58(i8* noundef %60, i64 noundef 0, i64 noundef %61, %struct.__sFILE* noundef %62)
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %17, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %76

68:                                               ; preds = %57
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = load i8**, i8*** %13, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  store i8** %75, i8*** %13, align 8
  br label %53, !llvm.loop !15

76:                                               ; preds = %67, %53
  br label %319

77:                                               ; preds = %48
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %317

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i64, i64* %9, align 8
  store i64 %87, i64* %17, align 8
  br label %96

88:                                               ; preds = %83
  %89 = load i64, i64* %9, align 8
  %90 = mul i64 %89, 2
  store i64 %90, i64* %17, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp ule i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i64 0, i64* %6, align 8
  br label %339

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i8**, i8*** %7, align 8
  store i8** %97, i8*** %13, align 8
  br label %98

98:                                               ; preds = %315, %96
  %99 = load i8**, i8*** %13, align 8
  %100 = load i8**, i8*** %8, align 8
  %101 = icmp ne i8** %99, %100
  br i1 %101, label %102, label %316

102:                                              ; preds = %98
  %103 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8
  %104 = call i32 @getc(%struct.__sFILE* noundef %103)
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %21, align 4
  store i32 %105, i32* %19, align 4
  %106 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8
  %107 = call i32 @getc(%struct.__sFILE* noundef %106)
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %21, align 4
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %316

112:                                              ; preds = %102
  %113 = load i32, i32* %19, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %288

115:                                              ; preds = %112
  %116 = load i32, i32* %20, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %151

118:                                              ; preds = %115
  %119 = load void (i8*, i64, i32, i64)*, void (i8*, i64, i32, i64)** %22, align 8
  %120 = load i8**, i8*** %13, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %17, align 8
  %124 = load i64, i64* %15, align 8
  %125 = sub i64 %123, %124
  call void %119(i8* noundef %121, i64 noundef %122, i32 noundef 0, i64 noundef %125)
  %126 = load i32, i32* %14, align 4
  %127 = load i8**, i8*** %13, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8*, i8** %127, i64 %128
  store i8** %129, i8*** %13, align 8
  store i64 0, i64* %15, align 8
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %12, align 8
  %132 = load i8**, i8*** %13, align 8
  %133 = load i8**, i8*** %8, align 8
  %134 = icmp eq i8** %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %118
  %136 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8
  %137 = call i32 @getc(%struct.__sFILE* noundef %136)
  store i32 %137, i32* %21, align 4
  %138 = load i32, i32* %21, align 4
  %139 = icmp ne i32 %138, -1
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* %21, align 4
  %145 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8
  %146 = call i32 @ungetc(i32 noundef %144, %struct.__sFILE* noundef %145)
  br label %316

147:                                              ; preds = %140, %135
  %148 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8
  %149 = call i32 @getc(%struct.__sFILE* noundef %148)
  br label %316

150:                                              ; preds = %118
  br label %287

151:                                              ; preds = %115
  %152 = load i32, i32* %20, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %185

154:                                              ; preds = %151
  %155 = load void (i8*, i64, i32, i64)*, void (i8*, i64, i32, i64)** %22, align 8
  %156 = load i8**, i8*** %13, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load i64, i64* %15, align 8
  %159 = load i64, i64* %17, align 8
  %160 = load i64, i64* %15, align 8
  %161 = sub i64 %159, %160
  call void %155(i8* noundef %157, i64 noundef %158, i32 noundef 0, i64 noundef %161)
  %162 = load i32, i32* %14, align 4
  %163 = load i8**, i8*** %13, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8*, i8** %163, i64 %164
  store i8** %165, i8*** %13, align 8
  store i64 0, i64* %15, align 8
  %166 = load i8**, i8*** %7, align 8
  %167 = load i8**, i8*** %8, align 8
  %168 = icmp ule i8** %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %154
  %170 = load i8**, i8*** %8, align 8
  %171 = load i8**, i8*** %7, align 8
  %172 = ptrtoint i8** %170 to i64
  %173 = ptrtoint i8** %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 8
  br label %183

176:                                              ; preds = %154
  %177 = load i8**, i8*** %7, align 8
  %178 = load i8**, i8*** %8, align 8
  %179 = ptrtoint i8** %177 to i64
  %180 = ptrtoint i8** %178 to i64
  %181 = sub i64 %179, %180
  %182 = sdiv exact i64 %181, 8
  br label %183

183:                                              ; preds = %176, %169
  %184 = phi i64 [ %175, %169 ], [ %182, %176 ]
  store i64 %184, i64* %12, align 8
  br label %316

185:                                              ; preds = %151
  %186 = load i32, i32* %20, align 4
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %188, label %252

188:                                              ; preds = %185
  %189 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8
  %190 = call i32 @getc(%struct.__sFILE* noundef %189)
  store i32 %190, i32* %21, align 4
  %191 = load i32, i32* %21, align 4
  store i32 %191, i32* %19, align 4
  %192 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8
  %193 = call i32 @getc(%struct.__sFILE* noundef %192)
  store i32 %193, i32* %21, align 4
  %194 = load i32, i32* %21, align 4
  store i32 %194, i32* %20, align 4
  %195 = load i32, i32* %21, align 4
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %197, label %198

197:                                              ; preds = %188
  br label %316

198:                                              ; preds = %188
  %199 = load i32, i32* %19, align 4
  %200 = zext i32 %199 to i64
  %201 = load i64, i64* %17, align 8
  %202 = load i64, i64* %15, align 8
  %203 = sub i64 %201, %202
  %204 = icmp ult i64 %200, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = load i64, i64* %15, align 8
  %207 = load i32, i32* %19, align 4
  %208 = zext i32 %207 to i64
  %209 = add i64 %206, %208
  br label %212

210:                                              ; preds = %198
  %211 = load i64, i64* %17, align 8
  br label %212

212:                                              ; preds = %210, %205
  %213 = phi i64 [ %209, %205 ], [ %211, %210 ]
  store i64 %213, i64* %16, align 8
  br label %214

214:                                              ; preds = %236, %212
  %215 = load i32, i32* %20, align 4
  %216 = icmp ugt i32 %215, 0
  br i1 %216, label %217, label %239

217:                                              ; preds = %214
  %218 = load void (i8*, i64, i32, i64)*, void (i8*, i64, i32, i64)** %22, align 8
  %219 = load i8**, i8*** %13, align 8
  %220 = load i8*, i8** %219, align 8
  %221 = load i64, i64* %15, align 8
  %222 = load i64, i64* %17, align 8
  %223 = load i64, i64* %15, align 8
  %224 = sub i64 %222, %223
  call void %218(i8* noundef %220, i64 noundef %221, i32 noundef 0, i64 noundef %224)
  %225 = load i32, i32* %14, align 4
  %226 = load i8**, i8*** %13, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8*, i8** %226, i64 %227
  store i8** %228, i8*** %13, align 8
  store i64 0, i64* %15, align 8
  %229 = load i64, i64* %12, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %12, align 8
  %231 = load i8**, i8*** %13, align 8
  %232 = load i8**, i8*** %8, align 8
  %233 = icmp eq i8** %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %217
  br label %239

235:                                              ; preds = %217
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %20, align 4
  %238 = add i32 %237, -1
  store i32 %238, i32* %20, align 4
  br label %214, !llvm.loop !16

239:                                              ; preds = %234, %214
  %240 = load i8**, i8*** %13, align 8
  %241 = load i8**, i8*** %8, align 8
  %242 = icmp ne i8** %240, %241
  br i1 %242, label %243, label %251

243:                                              ; preds = %239
  %244 = load void (i8*, i64, i32, i64)*, void (i8*, i64, i32, i64)** %22, align 8
  %245 = load i8**, i8*** %13, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = load i64, i64* %15, align 8
  %248 = load i64, i64* %16, align 8
  %249 = load i64, i64* %15, align 8
  %250 = sub i64 %248, %249
  call void %244(i8* noundef %246, i64 noundef %247, i32 noundef 0, i64 noundef %250)
  br label %251

251:                                              ; preds = %243, %239
  br label %285

252:                                              ; preds = %185
  %253 = load i32, i32* %20, align 4
  %254 = zext i32 %253 to i64
  %255 = load i64, i64* %17, align 8
  %256 = load i64, i64* %15, align 8
  %257 = sub i64 %255, %256
  %258 = icmp ule i64 %254, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = load i32, i32* %20, align 4
  br label %266

261:                                              ; preds = %252
  %262 = load i64, i64* %17, align 8
  %263 = load i64, i64* %15, align 8
  %264 = sub i64 %262, %263
  %265 = trunc i64 %264 to i32
  br label %266

266:                                              ; preds = %261, %259
  %267 = phi i32 [ %260, %259 ], [ %265, %261 ]
  store i32 %267, i32* %18, align 4
  %268 = load i64 (i8*, i64, i64, %struct.__sFILE*)*, i64 (i8*, i64, i64, %struct.__sFILE*)** %23, align 8
  %269 = load i8**, i8*** %13, align 8
  %270 = load i8*, i8** %269, align 8
  %271 = load i64, i64* %15, align 8
  %272 = load i32, i32* %18, align 4
  %273 = zext i32 %272 to i64
  %274 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8
  %275 = call i64 %268(i8* noundef %270, i64 noundef %271, i64 noundef %273, %struct.__sFILE* noundef %274)
  %276 = load i32, i32* %18, align 4
  %277 = zext i32 %276 to i64
  %278 = icmp ne i64 %275, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %266
  br label %316

280:                                              ; preds = %266
  %281 = load i32, i32* %18, align 4
  %282 = zext i32 %281 to i64
  %283 = load i64, i64* %15, align 8
  %284 = add i64 %283, %282
  store i64 %284, i64* %15, align 8
  br label %285

285:                                              ; preds = %280, %251
  br label %286

286:                                              ; preds = %285
  br label %287

287:                                              ; preds = %286, %150
  br label %315

288:                                              ; preds = %112
  %289 = load i32, i32* %19, align 4
  %290 = zext i32 %289 to i64
  %291 = load i64, i64* %17, align 8
  %292 = load i64, i64* %15, align 8
  %293 = sub i64 %291, %292
  %294 = icmp ule i64 %290, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %288
  %296 = load i32, i32* %19, align 4
  br label %302

297:                                              ; preds = %288
  %298 = load i64, i64* %17, align 8
  %299 = load i64, i64* %15, align 8
  %300 = sub i64 %298, %299
  %301 = trunc i64 %300 to i32
  br label %302

302:                                              ; preds = %297, %295
  %303 = phi i32 [ %296, %295 ], [ %301, %297 ]
  store i32 %303, i32* %18, align 4
  %304 = load void (i8*, i64, i32, i64)*, void (i8*, i64, i32, i64)** %22, align 8
  %305 = load i8**, i8*** %13, align 8
  %306 = load i8*, i8** %305, align 8
  %307 = load i64, i64* %15, align 8
  %308 = load i32, i32* %20, align 4
  %309 = load i32, i32* %18, align 4
  %310 = zext i32 %309 to i64
  call void %304(i8* noundef %306, i64 noundef %307, i32 noundef %308, i64 noundef %310)
  %311 = load i32, i32* %18, align 4
  %312 = zext i32 %311 to i64
  %313 = load i64, i64* %15, align 8
  %314 = add i64 %313, %312
  store i64 %314, i64* %15, align 8
  br label %315

315:                                              ; preds = %302, %287
  br label %98, !llvm.loop !17

316:                                              ; preds = %279, %197, %183, %147, %143, %111, %98
  br label %318

317:                                              ; preds = %80
  store i64 0, i64* %6, align 8
  br label %339

318:                                              ; preds = %316
  br label %319

319:                                              ; preds = %318, %76
  br label %320

320:                                              ; preds = %332, %319
  %321 = load i8**, i8*** %13, align 8
  %322 = load i8**, i8*** %8, align 8
  %323 = icmp ne i8** %321, %322
  br i1 %323, label %324, label %337

324:                                              ; preds = %320
  %325 = load void (i8*, i64, i32, i64)*, void (i8*, i64, i32, i64)** %22, align 8
  %326 = load i8**, i8*** %13, align 8
  %327 = load i8*, i8** %326, align 8
  %328 = load i64, i64* %15, align 8
  %329 = load i64, i64* %17, align 8
  %330 = load i64, i64* %15, align 8
  %331 = sub i64 %329, %330
  call void %325(i8* noundef %327, i64 noundef %328, i32 noundef 0, i64 noundef %331)
  store i64 0, i64* %15, align 8
  br label %332

332:                                              ; preds = %324
  %333 = load i32, i32* %14, align 4
  %334 = load i8**, i8*** %13, align 8
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds i8*, i8** %334, i64 %335
  store i8** %336, i8*** %13, align 8
  br label %320, !llvm.loop !18

337:                                              ; preds = %320
  %338 = load i64, i64* %12, align 8
  store i64 %338, i64* %6, align 8
  br label %339

339:                                              ; preds = %337, %317, %94, %41, %26
  %340 = load i64, i64* %6, align 8
  ret i64 %340
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @bmp_to_png_rows(i8** noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4, i8* noundef %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [4 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 24
  br i1 %26, label %27, label %64

27:                                               ; preds = %6
  store i32 0, i32* %22, align 4
  br label %28

28:                                               ; preds = %60, %27
  %29 = load i32, i32* %22, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load i8**, i8*** %7, align 8
  %34 = load i32, i32* %22, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %13, align 8
  store i32 0, i32* %21, align 4
  br label %38

38:                                               ; preds = %54, %32
  %39 = load i32, i32* %21, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %24, align 1
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 %48, i8* %50, align 1
  %51 = load i8, i8* %24, align 1
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8 %51, i8* %53, align 1
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %21, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %21, align 4
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  store i8* %58, i8** %13, align 8
  br label %38, !llvm.loop !19

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %22, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %22, align 4
  br label %28, !llvm.loop !20

63:                                               ; preds = %28
  br label %277

64:                                               ; preds = %6
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 4, i32 3
  store i32 %71, i32* %16, align 4
  store i32 0, i32* %23, align 4
  br label %72

72:                                               ; preds = %88, %64
  %73 = load i32, i32* %23, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %23, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 1, %82
  %84 = sub i32 %83, 1
  %85 = load i32, i32* %23, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %86
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %23, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %23, align 4
  br label %72, !llvm.loop !21

91:                                               ; preds = %72
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 16
  br i1 %93, label %94, label %186

94:                                               ; preds = %91
  store i32 0, i32* %22, align 4
  br label %95

95:                                               ; preds = %182, %94
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %185

99:                                               ; preds = %95
  %100 = load i8**, i8*** %7, align 8
  %101 = load i32, i32* %22, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sub i32 %105, 1
  %107 = mul i32 %106, 2
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  store i8* %109, i8** %13, align 8
  %110 = load i8**, i8*** %7, align 8
  %111 = load i32, i32* %22, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sub i32 %115, 1
  %117 = load i32, i32* %16, align 4
  %118 = mul i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %114, i64 %119
  store i8* %120, i8** %14, align 8
  store i32 0, i32* %21, align 4
  br label %121

121:                                              ; preds = %171, %99
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %181

125:                                              ; preds = %121
  %126 = load i8*, i8** %13, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8*, i8** %13, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = shl i32 %133, 8
  %135 = add i32 %129, %134
  store i32 %135, i32* %19, align 4
  store i32 0, i32* %23, align 4
  br label %136

136:                                              ; preds = %167, %125
  %137 = load i32, i32* %23, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %170

140:                                              ; preds = %136
  %141 = load i32, i32* %23, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %19, align 4
  %146 = load i8*, i8** %12, align 8
  %147 = load i32, i32* %23, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = lshr i32 %145, %151
  %153 = load i32, i32* %18, align 4
  %154 = and i32 %152, %153
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %17, align 4
  %156 = mul i32 %155, 255
  %157 = load i32, i32* %18, align 4
  %158 = udiv i32 %157, 2
  %159 = add i32 %156, %158
  %160 = load i32, i32* %18, align 4
  %161 = udiv i32 %159, %160
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %14, align 8
  %164 = load i32, i32* %23, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  store i8 %162, i8* %166, align 1
  br label %167

167:                                              ; preds = %140
  %168 = load i32, i32* %23, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %23, align 4
  br label %136, !llvm.loop !22

170:                                              ; preds = %136
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %21, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %21, align 4
  %174 = load i8*, i8** %13, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 -2
  store i8* %175, i8** %13, align 8
  %176 = load i32, i32* %16, align 4
  %177 = load i8*, i8** %14, align 8
  %178 = zext i32 %176 to i64
  %179 = sub i64 0, %178
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  store i8* %180, i8** %14, align 8
  br label %121, !llvm.loop !23

181:                                              ; preds = %121
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %22, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %22, align 4
  br label %95, !llvm.loop !24

185:                                              ; preds = %95
  br label %277

186:                                              ; preds = %91
  %187 = load i32, i32* %10, align 4
  %188 = icmp eq i32 %187, 32
  br i1 %188, label %189, label %276

189:                                              ; preds = %186
  store i32 0, i32* %22, align 4
  br label %190

190:                                              ; preds = %272, %189
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp ult i32 %191, %192
  br i1 %193, label %194, label %275

194:                                              ; preds = %190
  %195 = load i8**, i8*** %7, align 8
  %196 = load i32, i32* %22, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  store i8* %199, i8** %14, align 8
  store i8* %199, i8** %13, align 8
  store i32 0, i32* %21, align 4
  br label %200

200:                                              ; preds = %262, %194
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp ult i32 %201, %202
  br i1 %203, label %204, label %271

204:                                              ; preds = %200
  %205 = load i8*, i8** %13, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = load i8*, i8** %13, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = shl i32 %212, 8
  %214 = add i32 %208, %213
  %215 = load i8*, i8** %13, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 2
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = shl i32 %218, 16
  %220 = add i32 %214, %219
  %221 = load i8*, i8** %13, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 3
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = shl i32 %224, 24
  %226 = add i32 %220, %225
  store i32 %226, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %227

227:                                              ; preds = %258, %204
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %16, align 4
  %230 = icmp ult i32 %228, %229
  br i1 %230, label %231, label %261

231:                                              ; preds = %227
  %232 = load i32, i32* %23, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %18, align 4
  %236 = load i32, i32* %20, align 4
  %237 = load i8*, i8** %12, align 8
  %238 = load i32, i32* %23, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = lshr i32 %236, %242
  %244 = load i32, i32* %18, align 4
  %245 = and i32 %243, %244
  store i32 %245, i32* %17, align 4
  %246 = load i32, i32* %17, align 4
  %247 = mul i32 %246, 255
  %248 = load i32, i32* %18, align 4
  %249 = udiv i32 %248, 2
  %250 = add i32 %247, %249
  %251 = load i32, i32* %18, align 4
  %252 = udiv i32 %250, %251
  %253 = trunc i32 %252 to i8
  %254 = load i8*, i8** %14, align 8
  %255 = load i32, i32* %23, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  store i8 %253, i8* %257, align 1
  br label %258

258:                                              ; preds = %231
  %259 = load i32, i32* %23, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %23, align 4
  br label %227, !llvm.loop !25

261:                                              ; preds = %227
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %21, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %21, align 4
  %265 = load i8*, i8** %13, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 4
  store i8* %266, i8** %13, align 8
  %267 = load i32, i32* %16, align 4
  %268 = load i8*, i8** %14, align 8
  %269 = zext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %268, i64 %269
  store i8* %270, i8** %14, align 8
  br label %200, !llvm.loop !26

271:                                              ; preds = %200
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %22, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %22, align 4
  br label %190, !llvm.loop !27

275:                                              ; preds = %190
  br label %276

276:                                              ; preds = %275, %186
  br label %277

277:                                              ; preds = %63, %276, %185
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @bmp_memset_halfbytes(i8* noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %60

12:                                               ; preds = %4
  %13 = load i64, i64* %6, align 8
  %14 = udiv i64 %13, 2
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 %14
  store i8* %16, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = and i64 %17, 1
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 240
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 15
  %27 = or i32 %24, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %5, align 8
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 240
  %32 = ashr i32 %31, 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 15
  %35 = shl i32 %34, 4
  %36 = or i32 %32, %35
  store i32 %36, i32* %7, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %20, %12
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %8, align 8
  %45 = udiv i64 %44, 2
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @llvm.objectsize.i64.p0i8(i8* %46, i1 false, i1 true, i1 false)
  %48 = call i8* @__memset_chk(i8* noundef %42, i32 noundef %43, i64 noundef %45, i64 noundef %47) #7
  %49 = load i64, i64* %8, align 8
  %50 = and i64 %49, 1
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 240
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = udiv i64 %57, 2
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 %55, i8* %59, align 1
  br label %60

60:                                               ; preds = %11, %52, %41
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @bmp_fread_halfbytes(i8* noundef %0, i64 noundef %1, i64 noundef %2, %struct.__sFILE* noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__sFILE*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.__sFILE* %3, %struct.__sFILE** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %82

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = udiv i64 %16, 2
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 %17
  store i8* %19, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = and i64 %20, 1
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %15
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %53, %23
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 1
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %31 = call i32 @getc(%struct.__sFILE* noundef %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %56

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 240
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 240
  %42 = ashr i32 %41, 4
  %43 = or i32 %39, %42
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %6, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 15
  %50 = shl i32 %49, 4
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %6, align 8
  store i8 %51, i8* %52, align 1
  br label %53

53:                                               ; preds = %35
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 2
  store i64 %55, i64* %10, align 8
  br label %24, !llvm.loop !28

56:                                               ; preds = %34, %24
  br label %65

57:                                               ; preds = %15
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  %61 = udiv i64 %60, 2
  %62 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %63 = call i64 @fread(i8* noundef %58, i64 noundef 1, i64 noundef %61, %struct.__sFILE* noundef %62)
  %64 = mul i64 %63, 2
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %57, %56
  %66 = load i64, i64* %8, align 8
  %67 = and i64 %66, 2
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %71 = call i32 @getc(%struct.__sFILE* noundef %70)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp ule i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  br label %80

78:                                               ; preds = %72
  %79 = load i64, i64* %8, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i64 [ %77, %76 ], [ %79, %78 ]
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %80, %14
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @bmp_memset_bytes(i8* noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i32, i32* %7, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = call i64 @llvm.objectsize.i64.p0i8(i8* %16, i1 false, i1 true, i1 false)
  %18 = call i8* @__memset_chk(i8* noundef %11, i32 noundef %12, i64 noundef %13, i64 noundef %17) #7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @bmp_fread_bytes(i8* noundef %0, i64 noundef %1, i64 noundef %2, %struct.__sFILE* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.__sFILE*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.__sFILE* %3, %struct.__sFILE** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.__sFILE*, %struct.__sFILE** %8, align 8
  %15 = call i64 @fread(i8* noundef %12, i64 noundef 1, i64 noundef %13, %struct.__sFILE* noundef %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = and i64 %16, 1
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.__sFILE*, %struct.__sFILE** %8, align 8
  %21 = call i32 @getc(%struct.__sFILE* noundef %20)
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i64, i64* %9, align 8
  ret i64 %23
}

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #5

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

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
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
