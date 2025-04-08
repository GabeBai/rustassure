; ModuleID = 'pngxrtif.c'
source_filename = "pngxrtif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.minitiff_info = type { void (i8*)*, void (i8*)*, i32, i64, i64, i32, i32, i32, i64, i64*, i32, i32 }

@minitiff_sig_m = external dso_local constant [4 x i8], align 1
@minitiff_sig_i = external dso_local constant [4 x i8], align 1
@tiff_fmt_name = internal constant [5 x i8] c"TIFF\00", align 1
@tiff_fmt_long_name = internal constant [25 x i8] c"Tagged Image File Format\00", align 16
@err_png_ptr = internal global %struct.png_struct_def* null, align 8
@num_extra_images = internal global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported TIFF color space\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported TIFF sample depth\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Overflow in TIFF samples\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"multi-image\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pngx_sig_is_tiff(i8* noundef %0, i64 noundef %1, i8** noundef %2, i8** noundef %3) #0 {
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
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %33

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @memcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @minitiff_sig_m, i64 0, i64 0), i64 noundef 4) #4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @memcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @minitiff_sig_i, i64 0, i64 0), i64 noundef 4) #4
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
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @tiff_fmt_name, i64 0, i64 0), i8** %26, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8**, i8*** %9, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @tiff_fmt_long_name, i64 0, i64 0), i8** %31, align 8
  br label %32

32:                                               ; preds = %30, %27
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %21, %12
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pngx_read_tiff(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.minitiff_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  store %struct.png_struct_def* %23, %struct.png_struct_def** @err_png_ptr, align 8
  store i32 0, i32* @num_extra_images, align 4
  call void @minitiff_init_info(%struct.minitiff_info* noundef %7)
  %24 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %7, i32 0, i32 0
  store void (i8*)* @pngx_tiff_error, void (i8*)** %24, align 8
  %25 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %7, i32 0, i32 1
  store void (i8*)* @pngx_tiff_warning, void (i8*)** %25, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @minitiff_read_info(%struct.minitiff_info* noundef %7, %struct._IO_FILE* noundef %26)
  call void @minitiff_validate_info(%struct.minitiff_info* noundef %7)
  %27 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %7, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %7, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %7, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %7, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %42 [
    i32 1, label %38
    i32 2, label %39
    i32 3, label %40
    i32 4, label %41
  ]

38:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %44

39:                                               ; preds = %3
  store i32 4, i32* %13, align 4
  br label %44

40:                                               ; preds = %3
  store i32 2, i32* %13, align 4
  br label %44

41:                                               ; preds = %3
  store i32 6, i32* %13, align 4
  br label %44

42:                                               ; preds = %3
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %43, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)) #5
  unreachable

44:                                               ; preds = %41, %40, %39, %38
  %45 = load i32, i32* %11, align 4
  %46 = icmp ugt i32 %45, 16
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %48, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #5
  unreachable

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 1, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %54 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ule i32 %57, 8
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 8, i32 16
  %61 = load i32, i32* %13, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %53, %struct.png_info_def* noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %60, i32 noundef %61, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %62 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %63 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %64 = call i8** @pngx_malloc_rows(%struct.png_struct_def* noundef %62, %struct.png_info_def* noundef %63, i32 noundef 0)
  store i8** %64, i8*** %15, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp ule i32 %65, 8
  br i1 %66, label %67, label %153

67:                                               ; preds = %49
  store i32 0, i32* %17, align 4
  br label %68

68:                                               ; preds = %149, %67
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %152

72:                                               ; preds = %68
  %73 = load i8**, i8*** %15, align 8
  %74 = load i32, i32* %17, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %16, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = load i32, i32* %17, align 4
  %80 = zext i32 %79 to i64
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @minitiff_read_row(%struct.minitiff_info* noundef %7, i8* noundef %78, i64 noundef %80, %struct._IO_FILE* noundef %81)
  %82 = load i32, i32* %11, align 4
  %83 = icmp ult i32 %82, 8
  br i1 %83, label %84, label %120

84:                                               ; preds = %72
  store i32 0, i32* %18, align 4
  br label %85

85:                                               ; preds = %116, %84
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = mul i32 %87, %88
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %85
  %92 = load i8*, i8** %16, align 8
  %93 = load i32, i32* %18, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ugt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %20, align 4
  store i32 1, i32* %14, align 4
  br label %103

103:                                              ; preds = %101, %91
  %104 = load i32, i32* %20, align 4
  %105 = mul i32 %104, 255
  %106 = load i32, i32* %12, align 4
  %107 = udiv i32 %106, 2
  %108 = add i32 %105, %107
  %109 = load i32, i32* %12, align 4
  %110 = udiv i32 %108, %109
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %16, align 8
  %113 = load i32, i32* %18, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8 %111, i8* %115, align 1
  br label %116

116:                                              ; preds = %103
  %117 = load i32, i32* %18, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %85, !llvm.loop !4

119:                                              ; preds = %85
  br label %120

120:                                              ; preds = %119, %72
  %121 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %7, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %120
  store i32 0, i32* %18, align 4
  br label %125

125:                                              ; preds = %144, %124
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %8, align 4
  %129 = mul i32 %127, %128
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %125
  %132 = load i8*, i8** %16, align 8
  %133 = load i32, i32* %18, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = sub nsw i32 255, %137
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %16, align 8
  %141 = load i32, i32* %18, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8 %139, i8* %143, align 1
  br label %144

144:                                              ; preds = %131
  %145 = load i32, i32* %18, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %125, !llvm.loop !6

147:                                              ; preds = %125
  br label %148

148:                                              ; preds = %147, %120
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %17, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %68, !llvm.loop !7

152:                                              ; preds = %68
  br label %271

153:                                              ; preds = %49
  store i32 0, i32* %17, align 4
  br label %154

154:                                              ; preds = %267, %153
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %270

158:                                              ; preds = %154
  %159 = load i8**, i8*** %15, align 8
  %160 = load i32, i32* %17, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  %163 = load i8*, i8** %162, align 8
  store i8* %163, i8** %16, align 8
  %164 = load i8*, i8** %16, align 8
  %165 = load i32, i32* %17, align 4
  %166 = zext i32 %165 to i64
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @minitiff_read_row(%struct.minitiff_info* noundef %7, i8* noundef %164, i64 noundef %166, %struct._IO_FILE* noundef %167)
  %168 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %7, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 73
  br i1 %170, label %171, label %206

171:                                              ; preds = %158
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %172

172:                                              ; preds = %200, %171
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %8, align 4
  %176 = mul i32 %174, %175
  %177 = icmp ult i32 %173, %176
  br i1 %177, label %178, label %205

178:                                              ; preds = %172
  %179 = load i8*, i8** %16, align 8
  %180 = load i32, i32* %19, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i8, i8* %182, align 1
  store i8 %183, i8* %21, align 1
  %184 = load i8*, i8** %16, align 8
  %185 = load i32, i32* %19, align 4
  %186 = add i32 %185, 1
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = load i8*, i8** %16, align 8
  %191 = load i32, i32* %19, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  store i8 %189, i8* %193, align 1
  %194 = load i8, i8* %21, align 1
  %195 = load i8*, i8** %16, align 8
  %196 = load i32, i32* %19, align 4
  %197 = add i32 %196, 1
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  store i8 %194, i8* %199, align 1
  br label %200

200:                                              ; preds = %178
  %201 = load i32, i32* %18, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %18, align 4
  %203 = load i32, i32* %19, align 4
  %204 = add i32 %203, 2
  store i32 %204, i32* %19, align 4
  br label %172, !llvm.loop !8

205:                                              ; preds = %172
  br label %206

206:                                              ; preds = %205, %158
  %207 = load i32, i32* %11, align 4
  %208 = icmp ult i32 %207, 16
  br i1 %208, label %209, label %266

209:                                              ; preds = %206
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %210

210:                                              ; preds = %260, %209
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %8, align 4
  %214 = mul i32 %212, %213
  %215 = icmp ult i32 %211, %214
  br i1 %215, label %216, label %265

216:                                              ; preds = %210
  %217 = load i8*, i8** %16, align 8
  %218 = load i32, i32* %19, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = shl i32 %222, 8
  %224 = load i8*, i8** %16, align 8
  %225 = load i32, i32* %19, align 4
  %226 = add i32 %225, 1
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = add nsw i32 %223, %230
  store i32 %231, i32* %22, align 4
  %232 = load i32, i32* %22, align 4
  %233 = load i32, i32* %12, align 4
  %234 = icmp ugt i32 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %216
  %236 = load i32, i32* %12, align 4
  store i32 %236, i32* %22, align 4
  store i32 1, i32* %14, align 4
  br label %237

237:                                              ; preds = %235, %216
  %238 = load i32, i32* %22, align 4
  %239 = mul i32 %238, 65535
  %240 = load i32, i32* %12, align 4
  %241 = udiv i32 %240, 2
  %242 = add i32 %239, %241
  %243 = load i32, i32* %12, align 4
  %244 = udiv i32 %242, %243
  store i32 %244, i32* %22, align 4
  %245 = load i32, i32* %22, align 4
  %246 = lshr i32 %245, 8
  %247 = trunc i32 %246 to i8
  %248 = load i8*, i8** %16, align 8
  %249 = load i32, i32* %19, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  store i8 %247, i8* %251, align 1
  %252 = load i32, i32* %22, align 4
  %253 = and i32 %252, 255
  %254 = trunc i32 %253 to i8
  %255 = load i8*, i8** %16, align 8
  %256 = load i32, i32* %19, align 4
  %257 = add i32 %256, 1
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %255, i64 %258
  store i8 %254, i8* %259, align 1
  br label %260

260:                                              ; preds = %237
  %261 = load i32, i32* %18, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %18, align 4
  %263 = load i32, i32* %19, align 4
  %264 = add i32 %263, 2
  store i32 %264, i32* %19, align 4
  br label %210, !llvm.loop !9

265:                                              ; preds = %210
  br label %266

266:                                              ; preds = %265, %206
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %17, align 4
  %269 = add i32 %268, 1
  store i32 %269, i32* %17, align 4
  br label %154, !llvm.loop !10

270:                                              ; preds = %154
  br label %271

271:                                              ; preds = %270, %152
  %272 = load i32, i32* %14, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %275, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %276

276:                                              ; preds = %274, %271
  call void @minitiff_destroy_info(%struct.minitiff_info* noundef %7)
  %277 = load i32, i32* @num_extra_images, align 4
  %278 = add i32 1, %277
  ret i32 %278
}

declare dso_local void @minitiff_init_info(%struct.minitiff_info* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pngx_tiff_error(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** @err_png_ptr, align 8
  %4 = load i8*, i8** %2, align 8
  call void @png_error(%struct.png_struct_def* noundef %3, i8* noundef %4) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pngx_tiff_warning(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @strstr(i8* noundef %3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #4
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @num_extra_images, align 4
  %8 = add i32 %7, 1
  store i32 %8, i32* @num_extra_images, align 4
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare dso_local void @minitiff_read_info(%struct.minitiff_info* noundef, %struct._IO_FILE* noundef) #2

declare dso_local void @minitiff_validate_info(%struct.minitiff_info* noundef) #2

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) #3

declare dso_local void @png_set_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i8** @pngx_malloc_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #2

declare dso_local void @minitiff_read_row(%struct.minitiff_info* noundef, i8* noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #2

declare dso_local void @minitiff_destroy_info(%struct.minitiff_info* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { noreturn }

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
