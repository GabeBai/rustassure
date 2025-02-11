; ModuleID = 'inftrees.c'
source_filename = "inftrees.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.code = type { i8, i8, i16 }

@inflate_copyright = constant [47 x i8] c" inflate 1.2.8 Copyright 1995-2013 Mark Adler \00", align 1
@inflate_table.lbase = internal constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 2
@inflate_table.lext = internal constant [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 72, i16 78], align 2
@inflate_table.dbase = internal constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 2
@inflate_table.dext = internal constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], align 2

; Function Attrs: noinline nounwind optnone ssp uwtable
define hidden i32 @inflate_table(i32 noundef %0, i16* noundef %1, i32 noundef %2, %struct.code** noundef %3, i32* noundef %4, i16* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.code**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.code, align 2
  %29 = alloca %struct.code*, align 8
  %30 = alloca i16*, align 8
  %31 = alloca i16*, align 8
  %32 = alloca i32, align 4
  %33 = alloca [16 x i16], align 2
  %34 = alloca [16 x i16], align 2
  store i32 %0, i32* %8, align 4
  store i16* %1, i16** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.code** %3, %struct.code*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i16* %5, i16** %13, align 8
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %42, %6
  %36 = load i32, i32* %14, align 4
  %37 = icmp ule i32 %36, 15
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [16 x i16], [16 x i16]* %33, i64 0, i64 %40
  store i16 0, i16* %41, align 2
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %35, !llvm.loop !10

45:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i16*, i16** %9, align 8
  %52 = load i32, i32* %15, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16* %51, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i64
  %57 = getelementptr inbounds [16 x i16], [16 x i16]* %33, i64 0, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = add i16 %58, 1
  store i16 %59, i16* %57, align 2
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %15, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %46, !llvm.loop !12

63:                                               ; preds = %46
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %18, align 4
  store i32 15, i32* %17, align 4
  br label %66

66:                                               ; preds = %78, %63
  %67 = load i32, i32* %17, align 4
  %68 = icmp uge i32 %67, 1
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %17, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i16], [16 x i16]* %33, i64 0, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = zext i16 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %81

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %17, align 4
  %80 = add i32 %79, -1
  store i32 %80, i32* %17, align 4
  br label %66, !llvm.loop !13

81:                                               ; preds = %76, %66
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ugt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %17, align 4
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32, i32* %17, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 0
  store i8 64, i8* %91, align 2
  %92 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 1
  store i8 1, i8* %92, align 1
  %93 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 2
  store i16 0, i16* %93, align 2
  %94 = load %struct.code**, %struct.code*** %11, align 8
  %95 = load %struct.code*, %struct.code** %94, align 8
  %96 = getelementptr inbounds %struct.code, %struct.code* %95, i32 1
  store %struct.code* %96, %struct.code** %94, align 8
  %97 = bitcast %struct.code* %95 to i8*
  %98 = bitcast %struct.code* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %97, i8* align 2 %98, i64 4, i1 false)
  %99 = load %struct.code**, %struct.code*** %11, align 8
  %100 = load %struct.code*, %struct.code** %99, align 8
  %101 = getelementptr inbounds %struct.code, %struct.code* %100, i32 1
  store %struct.code* %101, %struct.code** %99, align 8
  %102 = bitcast %struct.code* %100 to i8*
  %103 = bitcast %struct.code* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %102, i8* align 2 %103, i64 4, i1 false)
  %104 = load i32*, i32** %12, align 8
  store i32 1, i32* %104, align 4
  store i32 0, i32* %7, align 4
  br label %506

105:                                              ; preds = %87
  store i32 1, i32* %16, align 4
  br label %106

106:                                              ; preds = %119, %105
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load i32, i32* %16, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [16 x i16], [16 x i16]* %33, i64 0, i64 %112
  %114 = load i16, i16* %113, align 2
  %115 = zext i16 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %122

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %16, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %16, align 4
  br label %106, !llvm.loop !14

122:                                              ; preds = %117, %106
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %126, %122
  store i32 1, i32* %21, align 4
  store i32 1, i32* %14, align 4
  br label %129

129:                                              ; preds = %146, %128
  %130 = load i32, i32* %14, align 4
  %131 = icmp ule i32 %130, 15
  br i1 %131, label %132, label %149

132:                                              ; preds = %129
  %133 = load i32, i32* %21, align 4
  %134 = shl i32 %133, 1
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* %14, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [16 x i16], [16 x i16]* %33, i64 0, i64 %136
  %138 = load i16, i16* %137, align 2
  %139 = zext i16 %138 to i32
  %140 = load i32, i32* %21, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %21, align 4
  %142 = load i32, i32* %21, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %132
  store i32 -1, i32* %7, align 4
  br label %506

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %14, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %129, !llvm.loop !15

149:                                              ; preds = %129
  %150 = load i32, i32* %21, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %17, align 4
  %157 = icmp ne i32 %156, 1
  br i1 %157, label %158, label %159

158:                                              ; preds = %155, %152
  store i32 -1, i32* %7, align 4
  br label %506

159:                                              ; preds = %155, %149
  %160 = getelementptr inbounds [16 x i16], [16 x i16]* %34, i64 0, i64 1
  store i16 0, i16* %160, align 2
  store i32 1, i32* %14, align 4
  br label %161

161:                                              ; preds = %181, %159
  %162 = load i32, i32* %14, align 4
  %163 = icmp ult i32 %162, 15
  br i1 %163, label %164, label %184

164:                                              ; preds = %161
  %165 = load i32, i32* %14, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds [16 x i16], [16 x i16]* %34, i64 0, i64 %166
  %168 = load i16, i16* %167, align 2
  %169 = zext i16 %168 to i32
  %170 = load i32, i32* %14, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [16 x i16], [16 x i16]* %33, i64 0, i64 %171
  %173 = load i16, i16* %172, align 2
  %174 = zext i16 %173 to i32
  %175 = add nsw i32 %169, %174
  %176 = trunc i32 %175 to i16
  %177 = load i32, i32* %14, align 4
  %178 = add i32 %177, 1
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [16 x i16], [16 x i16]* %34, i64 0, i64 %179
  store i16 %176, i16* %180, align 2
  br label %181

181:                                              ; preds = %164
  %182 = load i32, i32* %14, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %14, align 4
  br label %161, !llvm.loop !16

184:                                              ; preds = %161
  store i32 0, i32* %15, align 4
  br label %185

185:                                              ; preds = %213, %184
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %189, label %216

189:                                              ; preds = %185
  %190 = load i16*, i16** %9, align 8
  %191 = load i32, i32* %15, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i16, i16* %190, i64 %192
  %194 = load i16, i16* %193, align 2
  %195 = zext i16 %194 to i32
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %189
  %198 = load i32, i32* %15, align 4
  %199 = trunc i32 %198 to i16
  %200 = load i16*, i16** %13, align 8
  %201 = load i16*, i16** %9, align 8
  %202 = load i32, i32* %15, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i16, i16* %201, i64 %203
  %205 = load i16, i16* %204, align 2
  %206 = zext i16 %205 to i64
  %207 = getelementptr inbounds [16 x i16], [16 x i16]* %34, i64 0, i64 %206
  %208 = load i16, i16* %207, align 2
  %209 = add i16 %208, 1
  store i16 %209, i16* %207, align 2
  %210 = zext i16 %208 to i64
  %211 = getelementptr inbounds i16, i16* %200, i64 %210
  store i16 %199, i16* %211, align 2
  br label %212

212:                                              ; preds = %197, %189
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %15, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %185, !llvm.loop !17

216:                                              ; preds = %185
  %217 = load i32, i32* %8, align 4
  switch i32 %217, label %225 [
    i32 0, label %218
    i32 1, label %220
  ]

218:                                              ; preds = %216
  %219 = load i16*, i16** %13, align 8
  store i16* %219, i16** %31, align 8
  store i16* %219, i16** %30, align 8
  store i32 19, i32* %32, align 4
  br label %226

220:                                              ; preds = %216
  store i16* getelementptr inbounds ([31 x i16], [31 x i16]* @inflate_table.lbase, i64 0, i64 0), i16** %30, align 8
  %221 = load i16*, i16** %30, align 8
  %222 = getelementptr inbounds i16, i16* %221, i64 -257
  store i16* %222, i16** %30, align 8
  store i16* getelementptr inbounds ([31 x i16], [31 x i16]* @inflate_table.lext, i64 0, i64 0), i16** %31, align 8
  %223 = load i16*, i16** %31, align 8
  %224 = getelementptr inbounds i16, i16* %223, i64 -257
  store i16* %224, i16** %31, align 8
  store i32 256, i32* %32, align 4
  br label %226

225:                                              ; preds = %216
  store i16* getelementptr inbounds ([32 x i16], [32 x i16]* @inflate_table.dbase, i64 0, i64 0), i16** %30, align 8
  store i16* getelementptr inbounds ([32 x i16], [32 x i16]* @inflate_table.dext, i64 0, i64 0), i16** %31, align 8
  store i32 -1, i32* %32, align 4
  br label %226

226:                                              ; preds = %225, %220, %218
  store i32 0, i32* %23, align 4
  store i32 0, i32* %15, align 4
  %227 = load i32, i32* %16, align 4
  store i32 %227, i32* %14, align 4
  %228 = load %struct.code**, %struct.code*** %11, align 8
  %229 = load %struct.code*, %struct.code** %228, align 8
  store %struct.code* %229, %struct.code** %29, align 8
  %230 = load i32, i32* %18, align 4
  store i32 %230, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %26, align 4
  %231 = load i32, i32* %18, align 4
  %232 = shl i32 1, %231
  store i32 %232, i32* %22, align 4
  %233 = load i32, i32* %22, align 4
  %234 = sub i32 %233, 1
  store i32 %234, i32* %27, align 4
  %235 = load i32, i32* %8, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %240

237:                                              ; preds = %226
  %238 = load i32, i32* %22, align 4
  %239 = icmp ugt i32 %238, 852
  br i1 %239, label %246, label %240

240:                                              ; preds = %237, %226
  %241 = load i32, i32* %8, align 4
  %242 = icmp eq i32 %241, 2
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i32, i32* %22, align 4
  %245 = icmp ugt i32 %244, 592
  br i1 %245, label %246, label %247

246:                                              ; preds = %243, %237
  store i32 1, i32* %7, align 4
  br label %506

247:                                              ; preds = %243, %240
  br label %248

248:                                              ; preds = %480, %247
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %20, align 4
  %251 = sub i32 %249, %250
  %252 = trunc i32 %251 to i8
  %253 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 1
  store i8 %252, i8* %253, align 1
  %254 = load i16*, i16** %13, align 8
  %255 = load i32, i32* %15, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i16, i16* %254, i64 %256
  %258 = load i16, i16* %257, align 2
  %259 = zext i16 %258 to i32
  %260 = load i32, i32* %32, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %248
  %263 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 0
  store i8 0, i8* %263, align 2
  %264 = load i16*, i16** %13, align 8
  %265 = load i32, i32* %15, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i16, i16* %264, i64 %266
  %268 = load i16, i16* %267, align 2
  %269 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 2
  store i16 %268, i16* %269, align 2
  br label %305

270:                                              ; preds = %248
  %271 = load i16*, i16** %13, align 8
  %272 = load i32, i32* %15, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i16, i16* %271, i64 %273
  %275 = load i16, i16* %274, align 2
  %276 = zext i16 %275 to i32
  %277 = load i32, i32* %32, align 4
  %278 = icmp sgt i32 %276, %277
  br i1 %278, label %279, label %301

279:                                              ; preds = %270
  %280 = load i16*, i16** %31, align 8
  %281 = load i16*, i16** %13, align 8
  %282 = load i32, i32* %15, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds i16, i16* %281, i64 %283
  %285 = load i16, i16* %284, align 2
  %286 = zext i16 %285 to i64
  %287 = getelementptr inbounds i16, i16* %280, i64 %286
  %288 = load i16, i16* %287, align 2
  %289 = trunc i16 %288 to i8
  %290 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 0
  store i8 %289, i8* %290, align 2
  %291 = load i16*, i16** %30, align 8
  %292 = load i16*, i16** %13, align 8
  %293 = load i32, i32* %15, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds i16, i16* %292, i64 %294
  %296 = load i16, i16* %295, align 2
  %297 = zext i16 %296 to i64
  %298 = getelementptr inbounds i16, i16* %291, i64 %297
  %299 = load i16, i16* %298, align 2
  %300 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 2
  store i16 %299, i16* %300, align 2
  br label %304

301:                                              ; preds = %270
  %302 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 0
  store i8 96, i8* %302, align 2
  %303 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 2
  store i16 0, i16* %303, align 2
  br label %304

304:                                              ; preds = %301, %279
  br label %305

305:                                              ; preds = %304, %262
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %20, align 4
  %308 = sub i32 %306, %307
  %309 = shl i32 1, %308
  store i32 %309, i32* %24, align 4
  %310 = load i32, i32* %19, align 4
  %311 = shl i32 1, %310
  store i32 %311, i32* %25, align 4
  %312 = load i32, i32* %25, align 4
  store i32 %312, i32* %16, align 4
  br label %313

313:                                              ; preds = %327, %305
  %314 = load i32, i32* %24, align 4
  %315 = load i32, i32* %25, align 4
  %316 = sub i32 %315, %314
  store i32 %316, i32* %25, align 4
  %317 = load %struct.code*, %struct.code** %29, align 8
  %318 = load i32, i32* %23, align 4
  %319 = load i32, i32* %20, align 4
  %320 = lshr i32 %318, %319
  %321 = load i32, i32* %25, align 4
  %322 = add i32 %320, %321
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.code, %struct.code* %317, i64 %323
  %325 = bitcast %struct.code* %324 to i8*
  %326 = bitcast %struct.code* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %325, i8* align 2 %326, i64 4, i1 false)
  br label %327

327:                                              ; preds = %313
  %328 = load i32, i32* %25, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %313, label %330, !llvm.loop !18

330:                                              ; preds = %327
  %331 = load i32, i32* %14, align 4
  %332 = sub i32 %331, 1
  %333 = shl i32 1, %332
  store i32 %333, i32* %24, align 4
  br label %334

334:                                              ; preds = %339, %330
  %335 = load i32, i32* %23, align 4
  %336 = load i32, i32* %24, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %334
  %340 = load i32, i32* %24, align 4
  %341 = lshr i32 %340, 1
  store i32 %341, i32* %24, align 4
  br label %334, !llvm.loop !19

342:                                              ; preds = %334
  %343 = load i32, i32* %24, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %342
  %346 = load i32, i32* %24, align 4
  %347 = sub i32 %346, 1
  %348 = load i32, i32* %23, align 4
  %349 = and i32 %348, %347
  store i32 %349, i32* %23, align 4
  %350 = load i32, i32* %24, align 4
  %351 = load i32, i32* %23, align 4
  %352 = add i32 %351, %350
  store i32 %352, i32* %23, align 4
  br label %354

353:                                              ; preds = %342
  store i32 0, i32* %23, align 4
  br label %354

354:                                              ; preds = %353, %345
  %355 = load i32, i32* %15, align 4
  %356 = add i32 %355, 1
  store i32 %356, i32* %15, align 4
  %357 = load i32, i32* %14, align 4
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds [16 x i16], [16 x i16]* %33, i64 0, i64 %358
  %360 = load i16, i16* %359, align 2
  %361 = add i16 %360, -1
  store i16 %361, i16* %359, align 2
  %362 = zext i16 %361 to i32
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %380

364:                                              ; preds = %354
  %365 = load i32, i32* %14, align 4
  %366 = load i32, i32* %17, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %364
  br label %481

369:                                              ; preds = %364
  %370 = load i16*, i16** %9, align 8
  %371 = load i16*, i16** %13, align 8
  %372 = load i32, i32* %15, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds i16, i16* %371, i64 %373
  %375 = load i16, i16* %374, align 2
  %376 = zext i16 %375 to i64
  %377 = getelementptr inbounds i16, i16* %370, i64 %376
  %378 = load i16, i16* %377, align 2
  %379 = zext i16 %378 to i32
  store i32 %379, i32* %14, align 4
  br label %380

380:                                              ; preds = %369, %354
  %381 = load i32, i32* %14, align 4
  %382 = load i32, i32* %18, align 4
  %383 = icmp ugt i32 %381, %382
  br i1 %383, label %384, label %480

384:                                              ; preds = %380
  %385 = load i32, i32* %23, align 4
  %386 = load i32, i32* %27, align 4
  %387 = and i32 %385, %386
  %388 = load i32, i32* %26, align 4
  %389 = icmp ne i32 %387, %388
  br i1 %389, label %390, label %480

390:                                              ; preds = %384
  %391 = load i32, i32* %20, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %390
  %394 = load i32, i32* %18, align 4
  store i32 %394, i32* %20, align 4
  br label %395

395:                                              ; preds = %393, %390
  %396 = load i32, i32* %16, align 4
  %397 = load %struct.code*, %struct.code** %29, align 8
  %398 = zext i32 %396 to i64
  %399 = getelementptr inbounds %struct.code, %struct.code* %397, i64 %398
  store %struct.code* %399, %struct.code** %29, align 8
  %400 = load i32, i32* %14, align 4
  %401 = load i32, i32* %20, align 4
  %402 = sub i32 %400, %401
  store i32 %402, i32* %19, align 4
  %403 = load i32, i32* %19, align 4
  %404 = shl i32 1, %403
  store i32 %404, i32* %21, align 4
  br label %405

405:                                              ; preds = %424, %395
  %406 = load i32, i32* %19, align 4
  %407 = load i32, i32* %20, align 4
  %408 = add i32 %406, %407
  %409 = load i32, i32* %17, align 4
  %410 = icmp ult i32 %408, %409
  br i1 %410, label %411, label %429

411:                                              ; preds = %405
  %412 = load i32, i32* %19, align 4
  %413 = load i32, i32* %20, align 4
  %414 = add i32 %412, %413
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds [16 x i16], [16 x i16]* %33, i64 0, i64 %415
  %417 = load i16, i16* %416, align 2
  %418 = zext i16 %417 to i32
  %419 = load i32, i32* %21, align 4
  %420 = sub nsw i32 %419, %418
  store i32 %420, i32* %21, align 4
  %421 = load i32, i32* %21, align 4
  %422 = icmp sle i32 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %411
  br label %429

424:                                              ; preds = %411
  %425 = load i32, i32* %19, align 4
  %426 = add i32 %425, 1
  store i32 %426, i32* %19, align 4
  %427 = load i32, i32* %21, align 4
  %428 = shl i32 %427, 1
  store i32 %428, i32* %21, align 4
  br label %405, !llvm.loop !20

429:                                              ; preds = %423, %405
  %430 = load i32, i32* %19, align 4
  %431 = shl i32 1, %430
  %432 = load i32, i32* %22, align 4
  %433 = add i32 %432, %431
  store i32 %433, i32* %22, align 4
  %434 = load i32, i32* %8, align 4
  %435 = icmp eq i32 %434, 1
  br i1 %435, label %436, label %439

436:                                              ; preds = %429
  %437 = load i32, i32* %22, align 4
  %438 = icmp ugt i32 %437, 852
  br i1 %438, label %445, label %439

439:                                              ; preds = %436, %429
  %440 = load i32, i32* %8, align 4
  %441 = icmp eq i32 %440, 2
  br i1 %441, label %442, label %446

442:                                              ; preds = %439
  %443 = load i32, i32* %22, align 4
  %444 = icmp ugt i32 %443, 592
  br i1 %444, label %445, label %446

445:                                              ; preds = %442, %436
  store i32 1, i32* %7, align 4
  br label %506

446:                                              ; preds = %442, %439
  %447 = load i32, i32* %23, align 4
  %448 = load i32, i32* %27, align 4
  %449 = and i32 %447, %448
  store i32 %449, i32* %26, align 4
  %450 = load i32, i32* %19, align 4
  %451 = trunc i32 %450 to i8
  %452 = load %struct.code**, %struct.code*** %11, align 8
  %453 = load %struct.code*, %struct.code** %452, align 8
  %454 = load i32, i32* %26, align 4
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds %struct.code, %struct.code* %453, i64 %455
  %457 = getelementptr inbounds %struct.code, %struct.code* %456, i32 0, i32 0
  store i8 %451, i8* %457, align 2
  %458 = load i32, i32* %18, align 4
  %459 = trunc i32 %458 to i8
  %460 = load %struct.code**, %struct.code*** %11, align 8
  %461 = load %struct.code*, %struct.code** %460, align 8
  %462 = load i32, i32* %26, align 4
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds %struct.code, %struct.code* %461, i64 %463
  %465 = getelementptr inbounds %struct.code, %struct.code* %464, i32 0, i32 1
  store i8 %459, i8* %465, align 1
  %466 = load %struct.code*, %struct.code** %29, align 8
  %467 = load %struct.code**, %struct.code*** %11, align 8
  %468 = load %struct.code*, %struct.code** %467, align 8
  %469 = ptrtoint %struct.code* %466 to i64
  %470 = ptrtoint %struct.code* %468 to i64
  %471 = sub i64 %469, %470
  %472 = sdiv exact i64 %471, 4
  %473 = trunc i64 %472 to i16
  %474 = load %struct.code**, %struct.code*** %11, align 8
  %475 = load %struct.code*, %struct.code** %474, align 8
  %476 = load i32, i32* %26, align 4
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds %struct.code, %struct.code* %475, i64 %477
  %479 = getelementptr inbounds %struct.code, %struct.code* %478, i32 0, i32 2
  store i16 %473, i16* %479, align 2
  br label %480

480:                                              ; preds = %446, %384, %380
  br label %248

481:                                              ; preds = %368
  %482 = load i32, i32* %23, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %498

484:                                              ; preds = %481
  %485 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 0
  store i8 64, i8* %485, align 2
  %486 = load i32, i32* %14, align 4
  %487 = load i32, i32* %20, align 4
  %488 = sub i32 %486, %487
  %489 = trunc i32 %488 to i8
  %490 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 1
  store i8 %489, i8* %490, align 1
  %491 = getelementptr inbounds %struct.code, %struct.code* %28, i32 0, i32 2
  store i16 0, i16* %491, align 2
  %492 = load %struct.code*, %struct.code** %29, align 8
  %493 = load i32, i32* %23, align 4
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds %struct.code, %struct.code* %492, i64 %494
  %496 = bitcast %struct.code* %495 to i8*
  %497 = bitcast %struct.code* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %496, i8* align 2 %497, i64 4, i1 false)
  br label %498

498:                                              ; preds = %484, %481
  %499 = load i32, i32* %22, align 4
  %500 = load %struct.code**, %struct.code*** %11, align 8
  %501 = load %struct.code*, %struct.code** %500, align 8
  %502 = zext i32 %499 to i64
  %503 = getelementptr inbounds %struct.code, %struct.code* %501, i64 %502
  store %struct.code* %503, %struct.code** %500, align 8
  %504 = load i32, i32* %18, align 4
  %505 = load i32*, i32** %12, align 8
  store i32 %504, i32* %505, align 4
  store i32 0, i32* %7, align 4
  br label %506

506:                                              ; preds = %498, %445, %246, %158, %144, %90
  %507 = load i32, i32* %7, align 4
  ret i32 %507
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn }

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
