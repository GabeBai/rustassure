; ModuleID = 'tiffread.c'
source_filename = "tiffread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minitiff_info = type { void (i8*)*, void (i8*)*, i32, i64, i64, i32, i32, i32, i64, i64*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.minitiff_get_struct = type { i32 (i8*)*, i64 (i8*)* }

@minitiff_sig_m = external dso_local constant [4 x i8], align 1
@minitiff_sig_i = external dso_local constant [4 x i8], align 1
@tiff_err_notiff = internal global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), align 8
@tiff_err_compr = internal global i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [35 x i8] c"Non-default TIFF image orientation\00", align 1
@tiff_warn_metadata = internal global i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), align 8
@tiff_warn_tag = internal global i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), align 8
@tiff_warn_multiple = internal global i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), align 8
@tiff_err_read = internal global i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), align 8
@tiff_err_invalid = internal global i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), align 8
@tiff_err_unsupported = internal global i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), align 8
@tiff_err_memory = internal global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Not a TIFF file\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unsupported compression in TIFF file\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Unrecognized EXIF/IPTC/XMP metadata in TIFF file\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Unrecognized tag(s) in TIFF file\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Selected first image from multi-image TIFF file\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Error reading TIFF file\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Invalid TIFF file\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Unsupported data format in TIFF file\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minitiff_read_info(%struct.minitiff_info* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.minitiff_info*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.minitiff_get_struct, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x i64], align 16
  store %struct.minitiff_info* %0, %struct.minitiff_info** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %22 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  store i8* %23, i8** %7, align 8
  %24 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %26 = call i64 @fread(i8* noundef %24, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %25)
  %27 = icmp ne i64 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %395

29:                                               ; preds = %2
  %30 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %31 = call i32 @memcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @minitiff_sig_m, i64 0, i64 0), i64 noundef 4) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %35 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %34, i32 0, i32 2
  store i32 77, i32* %35, align 8
  %36 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 0
  store i32 (i8*)* @get_ushort_m, i32 (i8*)** %36, align 8
  %37 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 1
  store i64 (i8*)* @get_ulong_m, i64 (i8*)** %37, align 8
  br label %51

38:                                               ; preds = %29
  %39 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %40 = call i32 @memcmp(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @minitiff_sig_i, i64 0, i64 0), i64 noundef 4) #4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %44 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %43, i32 0, i32 2
  store i32 73, i32* %44, align 8
  %45 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 0
  store i32 (i8*)* @get_ushort_i, i32 (i8*)** %45, align 8
  %46 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 1
  store i64 (i8*)* @get_ulong_i, i64 (i8*)** %46, align 8
  br label %50

47:                                               ; preds = %38
  %48 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %49 = load i8*, i8** @tiff_err_notiff, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %48, i8* noundef %49)
  br label %407

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %33
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  %52 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 1
  %53 = load i64 (i8*)*, i64 (i8*)** %52, align 8
  %54 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = call i64 %53(i8* noundef %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp slt i64 %57, 8
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %398

60:                                               ; preds = %51
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @fseek(%struct._IO_FILE* noundef %61, i64 noundef %62, i32 noundef 0)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %395

66:                                               ; preds = %60
  %67 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %69 = call i64 @fread(i8* noundef %67, i64 noundef 2, i64 noundef 1, %struct._IO_FILE* noundef %68)
  %70 = icmp ne i64 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %395

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 0
  %74 = load i32 (i8*)*, i32 (i8*)** %73, align 8
  %75 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %76 = call i32 %74(i8* noundef %75)
  store i32 %76, i32* %9, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %279, %72
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %282

81:                                               ; preds = %77
  %82 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %84 = call i64 @fread(i8* noundef %82, i64 noundef 12, i64 noundef 1, %struct._IO_FILE* noundef %83)
  %85 = icmp ne i64 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %395

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 0
  %89 = load i32 (i8*)*, i32 (i8*)** %88, align 8
  %90 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %91 = call i32 %89(i8* noundef %90)
  store i32 %91, i32* %11, align 4
  %92 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 0
  %93 = load i32 (i8*)*, i32 (i8*)** %92, align 8
  %94 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = call i32 %93(i8* noundef %95)
  store i32 %96, i32* %12, align 4
  %97 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 1
  %98 = load i64 (i8*)*, i64 (i8*)** %97, align 8
  %99 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  %101 = call i64 %98(i8* noundef %100)
  store i64 %101, i64* %13, align 8
  %102 = load i64, i64* %13, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %87
  br label %401

105:                                              ; preds = %87
  %106 = load i32, i32* %11, align 4
  switch i32 %106, label %271 [
    i32 254, label %107
    i32 256, label %118
    i32 257, label %128
    i32 258, label %138
    i32 259, label %156
    i32 262, label %171
    i32 273, label %182
    i32 274, label %219
    i32 277, label %230
    i32 278, label %241
    i32 279, label %252
    i32 284, label %253
    i32 317, label %253
    i32 269, label %263
    i32 270, label %263
    i32 271, label %263
    i32 272, label %263
    i32 280, label %263
    i32 281, label %263
    i32 282, label %263
    i32 283, label %263
    i32 286, label %263
    i32 287, label %263
    i32 296, label %263
    i32 285, label %263
    i32 297, label %263
    i32 305, label %263
    i32 306, label %263
    i32 315, label %263
    i32 316, label %263
    i32 700, label %264
    i32 33723, label %264
    i32 34665, label %264
    i32 34853, label %264
    i32 40965, label %264
    i32 50341, label %264
  ]

107:                                              ; preds = %105
  %108 = load i64, i64* %13, align 8
  %109 = icmp ne i64 %108, 1
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %5, i32 noundef %111, i8* noundef %112)
  %114 = and i64 %113, -3
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110, %107
  br label %401

117:                                              ; preds = %110
  br label %278

118:                                              ; preds = %105
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %401

122:                                              ; preds = %118
  %123 = load i32, i32* %12, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %5, i32 noundef %123, i8* noundef %124)
  %126 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %127 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  br label %278

128:                                              ; preds = %105
  %129 = load i64, i64* %13, align 8
  %130 = icmp ne i64 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %401

132:                                              ; preds = %128
  %133 = load i32, i32* %12, align 4
  %134 = load i8*, i8** %7, align 8
  %135 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %5, i32 noundef %133, i8* noundef %134)
  %136 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %137 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %136, i32 0, i32 4
  store i64 %135, i64* %137, align 8
  br label %278

138:                                              ; preds = %105
  %139 = load i64, i64* %13, align 8
  %140 = icmp eq i64 %139, 1
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32, i32* %12, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %5, i32 noundef %142, i8* noundef %143)
  %145 = trunc i64 %144 to i32
  %146 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %147 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  br label %155

148:                                              ; preds = %138
  %149 = load i64, i64* %13, align 8
  store i64 %149, i64* %14, align 8
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %15, align 4
  %151 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 1
  %152 = load i64 (i8*)*, i64 (i8*)** %151, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = call i64 %152(i8* noundef %153)
  store i64 %154, i64* %17, align 8
  br label %155

155:                                              ; preds = %148, %141
  br label %278

156:                                              ; preds = %105
  %157 = load i64, i64* %13, align 8
  %158 = icmp eq i64 %157, 1
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load i32, i32* %12, align 4
  %161 = load i8*, i8** %7, align 8
  %162 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %5, i32 noundef %160, i8* noundef %161)
  %163 = icmp eq i64 %162, 1
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %166 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %165, i32 0, i32 6
  store i32 1, i32* %166, align 4
  br label %170

167:                                              ; preds = %159, %156
  %168 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %169 = load i8*, i8** @tiff_err_compr, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %168, i8* noundef %169)
  br label %170

170:                                              ; preds = %167, %164
  br label %278

171:                                              ; preds = %105
  %172 = load i64, i64* %13, align 8
  %173 = icmp ne i64 %172, 1
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %401

175:                                              ; preds = %171
  %176 = load i32, i32* %12, align 4
  %177 = load i8*, i8** %7, align 8
  %178 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %5, i32 noundef %176, i8* noundef %177)
  %179 = trunc i64 %178 to i32
  %180 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %181 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %180, i32 0, i32 7
  store i32 %179, i32* %181, align 8
  br label %278

182:                                              ; preds = %105
  %183 = load i64, i64* %13, align 8
  %184 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %185 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %184, i32 0, i32 8
  store i64 %183, i64* %185, align 8
  %186 = load i64, i64* %13, align 8
  %187 = icmp eq i64 %186, 1
  br i1 %187, label %188, label %212

188:                                              ; preds = %182
  %189 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %190 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %189, i32 0, i32 9
  %191 = load i64*, i64** %190, align 8
  %192 = icmp ne i64* %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %398

194:                                              ; preds = %188
  %195 = call noalias i8* @malloc(i64 noundef 8) #5
  %196 = bitcast i8* %195 to i64*
  %197 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %198 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %197, i32 0, i32 9
  store i64* %196, i64** %198, align 8
  %199 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %200 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %199, i32 0, i32 9
  %201 = load i64*, i64** %200, align 8
  %202 = icmp eq i64* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  br label %404

204:                                              ; preds = %194
  %205 = load i32, i32* %12, align 4
  %206 = load i8*, i8** %7, align 8
  %207 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %5, i32 noundef %205, i8* noundef %206)
  %208 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %209 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %208, i32 0, i32 9
  %210 = load i64*, i64** %209, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 0
  store i64 %207, i64* %211, align 8
  br label %218

212:                                              ; preds = %182
  %213 = load i32, i32* %12, align 4
  store i32 %213, i32* %16, align 4
  %214 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 1
  %215 = load i64 (i8*)*, i64 (i8*)** %214, align 8
  %216 = load i8*, i8** %7, align 8
  %217 = call i64 %215(i8* noundef %216)
  store i64 %217, i64* %18, align 8
  br label %218

218:                                              ; preds = %212, %204
  br label %278

219:                                              ; preds = %105
  %220 = load i64, i64* %13, align 8
  %221 = icmp ne i64 %220, 1
  br i1 %221, label %227, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* %12, align 4
  %224 = load i8*, i8** %7, align 8
  %225 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %5, i32 noundef %223, i8* noundef %224)
  %226 = icmp ne i64 %225, 1
  br i1 %226, label %227, label %229

227:                                              ; preds = %222, %219
  %228 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  call void @minitiff_warning(%struct.minitiff_info* noundef %228, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %229

229:                                              ; preds = %227, %222
  br label %278

230:                                              ; preds = %105
  %231 = load i64, i64* %13, align 8
  %232 = icmp ne i64 %231, 1
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  br label %401

234:                                              ; preds = %230
  %235 = load i32, i32* %12, align 4
  %236 = load i8*, i8** %7, align 8
  %237 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %5, i32 noundef %235, i8* noundef %236)
  %238 = trunc i64 %237 to i32
  %239 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %240 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %239, i32 0, i32 10
  store i32 %238, i32* %240, align 8
  br label %278

241:                                              ; preds = %105
  %242 = load i64, i64* %13, align 8
  %243 = icmp ne i64 %242, 1
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  br label %401

245:                                              ; preds = %241
  %246 = load i32, i32* %12, align 4
  %247 = load i8*, i8** %7, align 8
  %248 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %5, i32 noundef %246, i8* noundef %247)
  %249 = trunc i64 %248 to i32
  %250 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %251 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %250, i32 0, i32 11
  store i32 %249, i32* %251, align 4
  br label %278

252:                                              ; preds = %105
  br label %278

253:                                              ; preds = %105, %105
  %254 = load i64, i64* %13, align 8
  %255 = icmp ne i64 %254, 1
  br i1 %255, label %261, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %12, align 4
  %258 = load i8*, i8** %7, align 8
  %259 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %5, i32 noundef %257, i8* noundef %258)
  %260 = icmp ne i64 %259, 1
  br i1 %260, label %261, label %262

261:                                              ; preds = %256, %253
  br label %401

262:                                              ; preds = %256
  br label %278

263:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105
  br label %278

264:                                              ; preds = %105, %105, %105, %105, %105, %105
  %265 = load i32, i32* %20, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  store i32 1, i32* %20, align 4
  %268 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %269 = load i8*, i8** @tiff_warn_metadata, align 8
  call void @minitiff_warning(%struct.minitiff_info* noundef %268, i8* noundef %269)
  br label %270

270:                                              ; preds = %267, %264
  br label %278

271:                                              ; preds = %105
  %272 = load i32, i32* %19, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  store i32 1, i32* %19, align 4
  %275 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %276 = load i8*, i8** @tiff_warn_tag, align 8
  call void @minitiff_warning(%struct.minitiff_info* noundef %275, i8* noundef %276)
  br label %277

277:                                              ; preds = %274, %271
  br label %278

278:                                              ; preds = %277, %270, %263, %262, %252, %245, %234, %229, %218, %175, %170, %155, %132, %122, %117
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %10, align 4
  %281 = add i32 %280, 1
  store i32 %281, i32* %10, align 4
  br label %77, !llvm.loop !4

282:                                              ; preds = %77
  %283 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %285 = call i64 @fread(i8* noundef %283, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %284)
  %286 = icmp ne i64 %285, 1
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  br label %395

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %5, i32 0, i32 1
  %290 = load i64 (i8*)*, i64 (i8*)** %289, align 8
  %291 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %292 = call i64 %290(i8* noundef %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %288
  %295 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %296 = load i8*, i8** @tiff_warn_multiple, align 8
  call void @minitiff_warning(%struct.minitiff_info* noundef %295, i8* noundef %296)
  br label %297

297:                                              ; preds = %294, %288
  %298 = load i64, i64* %17, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %348

300:                                              ; preds = %297
  %301 = load i64, i64* %14, align 8
  store i64 %301, i64* %13, align 8
  %302 = load i64, i64* %13, align 8
  %303 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %304 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %303, i32 0, i32 10
  %305 = load i32, i32* %304, align 8
  %306 = zext i32 %305 to i64
  %307 = icmp ne i64 %302, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %300
  br label %398

309:                                              ; preds = %300
  %310 = load i64, i64* %13, align 8
  %311 = icmp ugt i64 %310, 4
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  br label %401

313:                                              ; preds = %309
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %315 = load i64, i64* %17, align 8
  %316 = call i32 @fseek(%struct._IO_FILE* noundef %314, i64 noundef %315, i32 noundef 0)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  br label %395

319:                                              ; preds = %313
  %320 = load i32, i32* %15, align 4
  %321 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %322 = load i64, i64* %13, align 8
  %323 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %324 = call i64 @read_ulong_values(%struct.minitiff_get_struct* noundef %5, i32 noundef %320, i64* noundef %321, i64 noundef %322, %struct._IO_FILE* noundef %323)
  %325 = load i64, i64* %13, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %319
  br label %395

328:                                              ; preds = %319
  br label %329

329:                                              ; preds = %341, %328
  %330 = load i64, i64* %13, align 8
  %331 = add i64 %330, -1
  store i64 %331, i64* %13, align 8
  %332 = icmp ugt i64 %331, 0
  br i1 %332, label %333, label %342

333:                                              ; preds = %329
  %334 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %335 = load i64, i64* %334, align 16
  %336 = load i64, i64* %13, align 8
  %337 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %335, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %333
  br label %401

341:                                              ; preds = %333
  br label %329, !llvm.loop !6

342:                                              ; preds = %329
  %343 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %344 = load i64, i64* %343, align 16
  %345 = trunc i64 %344 to i32
  %346 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %347 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %346, i32 0, i32 5
  store i32 %345, i32* %347, align 8
  br label %348

348:                                              ; preds = %342, %297
  %349 = load i64, i64* %18, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %394

351:                                              ; preds = %348
  %352 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %353 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %352, i32 0, i32 8
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %13, align 8
  %355 = load i64, i64* %13, align 8
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %363, label %357

357:                                              ; preds = %351
  %358 = load i64, i64* %13, align 8
  %359 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %360 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %359, i32 0, i32 4
  %361 = load i64, i64* %360, align 8
  %362 = icmp ugt i64 %358, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %357, %351
  br label %398

364:                                              ; preds = %357
  %365 = load i64, i64* %13, align 8
  %366 = mul i64 %365, 8
  %367 = call noalias i8* @malloc(i64 noundef %366) #5
  %368 = bitcast i8* %367 to i64*
  %369 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %370 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %369, i32 0, i32 9
  store i64* %368, i64** %370, align 8
  %371 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %372 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %371, i32 0, i32 9
  %373 = load i64*, i64** %372, align 8
  %374 = icmp eq i64* %373, null
  br i1 %374, label %375, label %376

375:                                              ; preds = %364
  br label %404

376:                                              ; preds = %364
  %377 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %378 = load i64, i64* %18, align 8
  %379 = call i32 @fseek(%struct._IO_FILE* noundef %377, i64 noundef %378, i32 noundef 0)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %376
  br label %395

382:                                              ; preds = %376
  %383 = load i32, i32* %16, align 4
  %384 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %385 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %384, i32 0, i32 9
  %386 = load i64*, i64** %385, align 8
  %387 = load i64, i64* %13, align 8
  %388 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %389 = call i64 @read_ulong_values(%struct.minitiff_get_struct* noundef %5, i32 noundef %383, i64* noundef %386, i64 noundef %387, %struct._IO_FILE* noundef %388)
  %390 = load i64, i64* %13, align 8
  %391 = icmp ne i64 %389, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %382
  br label %395

393:                                              ; preds = %382
  br label %394

394:                                              ; preds = %393, %348
  br label %407

395:                                              ; preds = %392, %381, %327, %318, %287, %86, %71, %65, %28
  %396 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %397 = load i8*, i8** @tiff_err_read, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %396, i8* noundef %397)
  br label %398

398:                                              ; preds = %395, %363, %308, %193, %59
  %399 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %400 = load i8*, i8** @tiff_err_invalid, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %399, i8* noundef %400)
  br label %401

401:                                              ; preds = %398, %340, %312, %261, %244, %233, %174, %131, %121, %116, %104
  %402 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %403 = load i8*, i8** @tiff_err_unsupported, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %402, i8* noundef %403)
  br label %404

404:                                              ; preds = %401, %375, %203
  %405 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %406 = load i8*, i8** @tiff_err_memory, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %405, i8* noundef %406)
  br label %407

407:                                              ; preds = %404, %394, %47
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ushort_m(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %6, 8
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add i32 %7, %11
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_ulong_m(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i64
  %7 = shl i64 %6, 24
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i64
  %12 = shl i64 %11, 16
  %13 = add i64 %7, %12
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i64
  %18 = shl i64 %17, 8
  %19 = add i64 %13, %18
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i64
  %24 = add i64 %19, %23
  ret i64 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ushort_i(i8* noundef %0) #0 {
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_ulong_i(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i64
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  %11 = shl i64 %10, 8
  %12 = add i64 %6, %11
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = shl i64 %16, 16
  %18 = add i64 %12, %17
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i64
  %23 = shl i64 %22, 24
  %24 = add i64 %18, %23
  ret i64 %24
}

declare dso_local void @minitiff_error(%struct.minitiff_info* noundef, i8* noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.minitiff_get_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.minitiff_get_struct* %0, %struct.minitiff_get_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %27 [
    i32 1, label %9
    i32 3, label %14
    i32 4, label %21
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i64
  store i64 %13, i64* %4, align 8
  br label %28

14:                                               ; preds = %3
  %15 = load %struct.minitiff_get_struct*, %struct.minitiff_get_struct** %5, align 8
  %16 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %15, i32 0, i32 0
  %17 = load i32 (i8*)*, i32 (i8*)** %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 %17(i8* noundef %18)
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %4, align 8
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.minitiff_get_struct*, %struct.minitiff_get_struct** %5, align 8
  %23 = getelementptr inbounds %struct.minitiff_get_struct, %struct.minitiff_get_struct* %22, i32 0, i32 1
  %24 = load i64 (i8*)*, i64 (i8*)** %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 %24(i8* noundef %25)
  store i64 %26, i64* %4, align 8
  br label %28

27:                                               ; preds = %3
  store i64 -1, i64* %4, align 8
  br label %28

28:                                               ; preds = %27, %21, %14, %9
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local void @minitiff_warning(%struct.minitiff_info* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_ulong_values(%struct.minitiff_get_struct* noundef %0, i32 noundef %1, i64* noundef %2, i64 noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.minitiff_get_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca [4 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.minitiff_get_struct* %0, %struct.minitiff_get_struct** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i64 1, i64* %13, align 8
  br label %29

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i64 2, i64* %13, align 8
  br label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 4, i64* %13, align 8
  br label %27

26:                                               ; preds = %22
  store i64 0, i64* %6, align 8
  br label %54

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27, %21
  br label %29

29:                                               ; preds = %28, %17
  store i64 0, i64* %14, align 8
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %36 = load i64, i64* %13, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %38 = call i64 @fread(i8* noundef %35, i64 noundef %36, i64 noundef 1, %struct._IO_FILE* noundef %37)
  %39 = icmp ne i64 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %52

41:                                               ; preds = %34
  %42 = load %struct.minitiff_get_struct*, %struct.minitiff_get_struct** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %45 = call i64 @get_ulong_value(%struct.minitiff_get_struct* noundef %42, i32 noundef %43, i8* noundef %44)
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %14, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %45, i64* %48, align 8
  br label %49

49:                                               ; preds = %41
  %50 = load i64, i64* %14, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %14, align 8
  br label %30, !llvm.loop !7

52:                                               ; preds = %40, %30
  %53 = load i64, i64* %14, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %52, %26
  %55 = load i64, i64* %6, align 8
  ret i64 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minitiff_read_row(%struct.minitiff_info* noundef %0, i8* noundef %1, i64 noundef %2, %struct._IO_FILE* noundef %3) #0 {
  %5 = alloca %struct.minitiff_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.minitiff_info* %0, %struct.minitiff_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %8, align 8
  %15 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %16 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = add i32 %17, 7
  %19 = udiv i32 %18, 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %21 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %24 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = zext i32 %25 to i64
  %27 = mul i64 %22, %26
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 %27, %29
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %33 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = zext i32 %34 to i64
  %36 = udiv i64 %31, %35
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %39 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  br label %120

43:                                               ; preds = %4
  %44 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %45 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %44, i32 0, i32 9
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %53 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = urem i64 %51, %55
  %57 = mul i64 %50, %56
  %58 = add i64 %49, %57
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %120

62:                                               ; preds = %43
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %64 = call i64 @ftell(%struct._IO_FILE* noundef %63)
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i32 @fseek(%struct._IO_FILE* noundef %68, i64 noundef %69, i32 noundef 0)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %117

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %62
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %78 = call i64 @fread(i8* noundef %75, i64 noundef %76, i64 noundef 1, %struct._IO_FILE* noundef %77)
  %79 = icmp ne i64 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %117

81:                                               ; preds = %74
  %82 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %83 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %123

90:                                               ; preds = %86
  %91 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %92 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 1, %93
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  store i64 0, i64* %14, align 8
  br label %96

96:                                               ; preds = %112, %90
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %9, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = sub i32 %101, %106
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %6, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8 %108, i8* %111, align 1
  br label %112

112:                                              ; preds = %100
  %113 = load i64, i64* %14, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %14, align 8
  br label %96, !llvm.loop !8

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115, %81
  br label %126

117:                                              ; preds = %80, %72
  %118 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %119 = load i8*, i8** @tiff_err_read, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %118, i8* noundef %119)
  br label %120

120:                                              ; preds = %117, %61, %42
  %121 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %122 = load i8*, i8** @tiff_err_invalid, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %121, i8* noundef %122)
  br label %123

123:                                              ; preds = %120, %89
  %124 = load %struct.minitiff_info*, %struct.minitiff_info** %5, align 8
  %125 = load i8*, i8** @tiff_err_unsupported, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %124, i8* noundef %125)
  br label %126

126:                                              ; preds = %123, %116
  ret void
}

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
