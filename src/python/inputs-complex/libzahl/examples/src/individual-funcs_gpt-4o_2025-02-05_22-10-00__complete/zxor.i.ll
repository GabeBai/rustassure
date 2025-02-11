; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zxor.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zxor.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zxor(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store %struct.zahl* %2, %struct.zahl** %6, align 8
  %33 = load %struct.zahl*, %struct.zahl** %5, align 8
  %34 = call i32 @zzero(%struct.zahl* noundef %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.zahl*, %struct.zahl** %4, align 8
  %44 = load %struct.zahl*, %struct.zahl** %6, align 8
  %45 = icmp ne %struct.zahl* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.zahl*, %struct.zahl** %4, align 8
  %48 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zset(%struct.zahl* noundef %47, %struct.zahl* noundef %48)
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49
  br label %717

51:                                               ; preds = %3
  %52 = load %struct.zahl*, %struct.zahl** %6, align 8
  %53 = call i32 @zzero(%struct.zahl* noundef %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.zahl*, %struct.zahl** %4, align 8
  %63 = load %struct.zahl*, %struct.zahl** %5, align 8
  %64 = icmp ne %struct.zahl* %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.zahl*, %struct.zahl** %4, align 8
  %67 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zset(%struct.zahl* noundef %66, %struct.zahl* noundef %67)
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68
  br label %717

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.zahl*, %struct.zahl** %5, align 8
  %73 = getelementptr inbounds %struct.zahl, %struct.zahl* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %9, align 8
  %75 = load %struct.zahl*, %struct.zahl** %5, align 8
  %76 = getelementptr inbounds %struct.zahl, %struct.zahl* %75, i32 0, i32 4
  %77 = load i64*, i64** %76, align 8
  store i64* %77, i64** %11, align 8
  %78 = load %struct.zahl*, %struct.zahl** %6, align 8
  %79 = getelementptr inbounds %struct.zahl, %struct.zahl* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %10, align 8
  %81 = load %struct.zahl*, %struct.zahl** %6, align 8
  %82 = getelementptr inbounds %struct.zahl, %struct.zahl* %81, i32 0, i32 4
  %83 = load i64*, i64** %82, align 8
  store i64* %83, i64** %12, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  %88 = load i64, i64* %9, align 8
  br label %91

89:                                               ; preds = %71
  %90 = load i64, i64* %10, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i64, i64* %9, align 8
  br label %100

98:                                               ; preds = %91
  %99 = load i64, i64* %10, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i64 [ %97, %96 ], [ %99, %98 ]
  store i64 %101, i64* %8, align 8
  br label %102

102:                                              ; preds = %100
  %103 = load %struct.zahl*, %struct.zahl** %4, align 8
  %104 = getelementptr inbounds %struct.zahl, %struct.zahl* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.zahl*, %struct.zahl** %4, align 8
  %110 = load i64, i64* %8, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %109, i64 noundef %110)
  br label %111

111:                                              ; preds = %108, %102
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.zahl*, %struct.zahl** %4, align 8
  %114 = load %struct.zahl*, %struct.zahl** %5, align 8
  %115 = icmp eq %struct.zahl* %113, %114
  br i1 %115, label %116, label %293

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.zahl*, %struct.zahl** %4, align 8
  %119 = getelementptr inbounds %struct.zahl, %struct.zahl* %118, i32 0, i32 4
  %120 = load i64*, i64** %119, align 8
  store i64* %120, i64** %13, align 8
  %121 = load %struct.zahl*, %struct.zahl** %4, align 8
  %122 = getelementptr inbounds %struct.zahl, %struct.zahl* %121, i32 0, i32 4
  %123 = load i64*, i64** %122, align 8
  store i64* %123, i64** %14, align 8
  %124 = load i64*, i64** %12, align 8
  store i64* %124, i64** %15, align 8
  %125 = load i64, i64* %7, align 8
  store i64 %125, i64* %17, align 8
  %126 = load i64, i64* %17, align 8
  %127 = icmp ule i64 %126, 4
  br i1 %127, label %128, label %181

128:                                              ; preds = %117
  %129 = load i64, i64* %17, align 8
  %130 = icmp uge i64 %129, 1
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i64*, i64** %14, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** %15, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 0
  %137 = load i64, i64* %136, align 8
  %138 = xor i64 %134, %137
  %139 = load i64*, i64** %13, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %131, %128
  %142 = load i64, i64* %17, align 8
  %143 = icmp uge i64 %142, 2
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = load i64*, i64** %14, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %15, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = xor i64 %147, %150
  %152 = load i64*, i64** %13, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 1
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %144, %141
  %155 = load i64, i64* %17, align 8
  %156 = icmp uge i64 %155, 3
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = load i64*, i64** %14, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** %15, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 2
  %163 = load i64, i64* %162, align 8
  %164 = xor i64 %160, %163
  %165 = load i64*, i64** %13, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 2
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %157, %154
  %168 = load i64, i64* %17, align 8
  %169 = icmp uge i64 %168, 4
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load i64*, i64** %14, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 3
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** %15, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 3
  %176 = load i64, i64* %175, align 8
  %177 = xor i64 %173, %176
  %178 = load i64*, i64** %13, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 3
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %170, %167
  br label %277

181:                                              ; preds = %117
  store i64 0, i64* %16, align 8
  br label %182

182:                                              ; preds = %187, %181
  %183 = load i64, i64* %16, align 8
  %184 = add i64 %183, 4
  store i64 %184, i64* %16, align 8
  %185 = load i64, i64* %17, align 8
  %186 = icmp ult i64 %184, %185
  br i1 %186, label %187, label %248

187:                                              ; preds = %182
  %188 = load i64*, i64** %14, align 8
  %189 = load i64, i64* %16, align 8
  %190 = sub i64 %189, 1
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** %15, align 8
  %194 = load i64, i64* %16, align 8
  %195 = sub i64 %194, 1
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = xor i64 %192, %197
  %199 = load i64*, i64** %13, align 8
  %200 = load i64, i64* %16, align 8
  %201 = sub i64 %200, 1
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  store i64 %198, i64* %202, align 8
  %203 = load i64*, i64** %14, align 8
  %204 = load i64, i64* %16, align 8
  %205 = sub i64 %204, 2
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i64*, i64** %15, align 8
  %209 = load i64, i64* %16, align 8
  %210 = sub i64 %209, 2
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = xor i64 %207, %212
  %214 = load i64*, i64** %13, align 8
  %215 = load i64, i64* %16, align 8
  %216 = sub i64 %215, 2
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  store i64 %213, i64* %217, align 8
  %218 = load i64*, i64** %14, align 8
  %219 = load i64, i64* %16, align 8
  %220 = sub i64 %219, 3
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = load i64*, i64** %15, align 8
  %224 = load i64, i64* %16, align 8
  %225 = sub i64 %224, 3
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = xor i64 %222, %227
  %229 = load i64*, i64** %13, align 8
  %230 = load i64, i64* %16, align 8
  %231 = sub i64 %230, 3
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  store i64 %228, i64* %232, align 8
  %233 = load i64*, i64** %14, align 8
  %234 = load i64, i64* %16, align 8
  %235 = sub i64 %234, 4
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = load i64*, i64** %15, align 8
  %239 = load i64, i64* %16, align 8
  %240 = sub i64 %239, 4
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = xor i64 %237, %242
  %244 = load i64*, i64** %13, align 8
  %245 = load i64, i64* %16, align 8
  %246 = sub i64 %245, 4
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  store i64 %243, i64* %247, align 8
  br label %182, !llvm.loop !10

248:                                              ; preds = %182
  %249 = load i64, i64* %16, align 8
  %250 = load i64, i64* %17, align 8
  %251 = icmp ugt i64 %249, %250
  br i1 %251, label %252, label %276

252:                                              ; preds = %248
  %253 = load i64, i64* %16, align 8
  %254 = sub i64 %253, 4
  store i64 %254, i64* %16, align 8
  br label %255

255:                                              ; preds = %272, %252
  %256 = load i64, i64* %16, align 8
  %257 = load i64, i64* %17, align 8
  %258 = icmp ult i64 %256, %257
  br i1 %258, label %259, label %275

259:                                              ; preds = %255
  %260 = load i64*, i64** %14, align 8
  %261 = load i64, i64* %16, align 8
  %262 = getelementptr inbounds i64, i64* %260, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = load i64*, i64** %15, align 8
  %265 = load i64, i64* %16, align 8
  %266 = getelementptr inbounds i64, i64* %264, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = xor i64 %263, %267
  %269 = load i64*, i64** %13, align 8
  %270 = load i64, i64* %16, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  store i64 %268, i64* %271, align 8
  br label %272

272:                                              ; preds = %259
  %273 = load i64, i64* %16, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %16, align 8
  br label %255, !llvm.loop !12

275:                                              ; preds = %255
  br label %276

276:                                              ; preds = %275, %248
  br label %277

277:                                              ; preds = %276, %180
  br label %278

278:                                              ; preds = %277
  %279 = load %struct.zahl*, %struct.zahl** %4, align 8
  %280 = getelementptr inbounds %struct.zahl, %struct.zahl* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* %10, align 8
  %283 = icmp ult i64 %281, %282
  br i1 %283, label %284, label %292

284:                                              ; preds = %278
  %285 = load %struct.zahl*, %struct.zahl** %4, align 8
  %286 = getelementptr inbounds %struct.zahl, %struct.zahl* %285, i32 0, i32 4
  %287 = load i64*, i64** %286, align 8
  %288 = load i64*, i64** %12, align 8
  %289 = load i64, i64* %7, align 8
  %290 = load i64, i64* %8, align 8
  %291 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %287, i64* noundef %288, i64 noundef %289, i64 noundef %290)
  br label %292

292:                                              ; preds = %284, %278
  br label %667

293:                                              ; preds = %112
  %294 = load %struct.zahl*, %struct.zahl** %4, align 8
  %295 = load %struct.zahl*, %struct.zahl** %6, align 8
  %296 = icmp eq %struct.zahl* %294, %295
  %297 = xor i1 %296, true
  %298 = xor i1 %297, true
  %299 = zext i1 %298 to i32
  %300 = sext i32 %299 to i64
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %479

302:                                              ; preds = %293
  br label %303

303:                                              ; preds = %302
  %304 = load %struct.zahl*, %struct.zahl** %4, align 8
  %305 = getelementptr inbounds %struct.zahl, %struct.zahl* %304, i32 0, i32 4
  %306 = load i64*, i64** %305, align 8
  store i64* %306, i64** %18, align 8
  %307 = load %struct.zahl*, %struct.zahl** %4, align 8
  %308 = getelementptr inbounds %struct.zahl, %struct.zahl* %307, i32 0, i32 4
  %309 = load i64*, i64** %308, align 8
  store i64* %309, i64** %19, align 8
  %310 = load i64*, i64** %11, align 8
  store i64* %310, i64** %20, align 8
  %311 = load i64, i64* %7, align 8
  store i64 %311, i64* %22, align 8
  %312 = load i64, i64* %22, align 8
  %313 = icmp ule i64 %312, 4
  br i1 %313, label %314, label %367

314:                                              ; preds = %303
  %315 = load i64, i64* %22, align 8
  %316 = icmp uge i64 %315, 1
  br i1 %316, label %317, label %327

317:                                              ; preds = %314
  %318 = load i64*, i64** %19, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64*, i64** %20, align 8
  %322 = getelementptr inbounds i64, i64* %321, i64 0
  %323 = load i64, i64* %322, align 8
  %324 = xor i64 %320, %323
  %325 = load i64*, i64** %18, align 8
  %326 = getelementptr inbounds i64, i64* %325, i64 0
  store i64 %324, i64* %326, align 8
  br label %327

327:                                              ; preds = %317, %314
  %328 = load i64, i64* %22, align 8
  %329 = icmp uge i64 %328, 2
  br i1 %329, label %330, label %340

330:                                              ; preds = %327
  %331 = load i64*, i64** %19, align 8
  %332 = getelementptr inbounds i64, i64* %331, i64 1
  %333 = load i64, i64* %332, align 8
  %334 = load i64*, i64** %20, align 8
  %335 = getelementptr inbounds i64, i64* %334, i64 1
  %336 = load i64, i64* %335, align 8
  %337 = xor i64 %333, %336
  %338 = load i64*, i64** %18, align 8
  %339 = getelementptr inbounds i64, i64* %338, i64 1
  store i64 %337, i64* %339, align 8
  br label %340

340:                                              ; preds = %330, %327
  %341 = load i64, i64* %22, align 8
  %342 = icmp uge i64 %341, 3
  br i1 %342, label %343, label %353

343:                                              ; preds = %340
  %344 = load i64*, i64** %19, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 2
  %346 = load i64, i64* %345, align 8
  %347 = load i64*, i64** %20, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 2
  %349 = load i64, i64* %348, align 8
  %350 = xor i64 %346, %349
  %351 = load i64*, i64** %18, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 2
  store i64 %350, i64* %352, align 8
  br label %353

353:                                              ; preds = %343, %340
  %354 = load i64, i64* %22, align 8
  %355 = icmp uge i64 %354, 4
  br i1 %355, label %356, label %366

356:                                              ; preds = %353
  %357 = load i64*, i64** %19, align 8
  %358 = getelementptr inbounds i64, i64* %357, i64 3
  %359 = load i64, i64* %358, align 8
  %360 = load i64*, i64** %20, align 8
  %361 = getelementptr inbounds i64, i64* %360, i64 3
  %362 = load i64, i64* %361, align 8
  %363 = xor i64 %359, %362
  %364 = load i64*, i64** %18, align 8
  %365 = getelementptr inbounds i64, i64* %364, i64 3
  store i64 %363, i64* %365, align 8
  br label %366

366:                                              ; preds = %356, %353
  br label %463

367:                                              ; preds = %303
  store i64 0, i64* %21, align 8
  br label %368

368:                                              ; preds = %373, %367
  %369 = load i64, i64* %21, align 8
  %370 = add i64 %369, 4
  store i64 %370, i64* %21, align 8
  %371 = load i64, i64* %22, align 8
  %372 = icmp ult i64 %370, %371
  br i1 %372, label %373, label %434

373:                                              ; preds = %368
  %374 = load i64*, i64** %19, align 8
  %375 = load i64, i64* %21, align 8
  %376 = sub i64 %375, 1
  %377 = getelementptr inbounds i64, i64* %374, i64 %376
  %378 = load i64, i64* %377, align 8
  %379 = load i64*, i64** %20, align 8
  %380 = load i64, i64* %21, align 8
  %381 = sub i64 %380, 1
  %382 = getelementptr inbounds i64, i64* %379, i64 %381
  %383 = load i64, i64* %382, align 8
  %384 = xor i64 %378, %383
  %385 = load i64*, i64** %18, align 8
  %386 = load i64, i64* %21, align 8
  %387 = sub i64 %386, 1
  %388 = getelementptr inbounds i64, i64* %385, i64 %387
  store i64 %384, i64* %388, align 8
  %389 = load i64*, i64** %19, align 8
  %390 = load i64, i64* %21, align 8
  %391 = sub i64 %390, 2
  %392 = getelementptr inbounds i64, i64* %389, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = load i64*, i64** %20, align 8
  %395 = load i64, i64* %21, align 8
  %396 = sub i64 %395, 2
  %397 = getelementptr inbounds i64, i64* %394, i64 %396
  %398 = load i64, i64* %397, align 8
  %399 = xor i64 %393, %398
  %400 = load i64*, i64** %18, align 8
  %401 = load i64, i64* %21, align 8
  %402 = sub i64 %401, 2
  %403 = getelementptr inbounds i64, i64* %400, i64 %402
  store i64 %399, i64* %403, align 8
  %404 = load i64*, i64** %19, align 8
  %405 = load i64, i64* %21, align 8
  %406 = sub i64 %405, 3
  %407 = getelementptr inbounds i64, i64* %404, i64 %406
  %408 = load i64, i64* %407, align 8
  %409 = load i64*, i64** %20, align 8
  %410 = load i64, i64* %21, align 8
  %411 = sub i64 %410, 3
  %412 = getelementptr inbounds i64, i64* %409, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = xor i64 %408, %413
  %415 = load i64*, i64** %18, align 8
  %416 = load i64, i64* %21, align 8
  %417 = sub i64 %416, 3
  %418 = getelementptr inbounds i64, i64* %415, i64 %417
  store i64 %414, i64* %418, align 8
  %419 = load i64*, i64** %19, align 8
  %420 = load i64, i64* %21, align 8
  %421 = sub i64 %420, 4
  %422 = getelementptr inbounds i64, i64* %419, i64 %421
  %423 = load i64, i64* %422, align 8
  %424 = load i64*, i64** %20, align 8
  %425 = load i64, i64* %21, align 8
  %426 = sub i64 %425, 4
  %427 = getelementptr inbounds i64, i64* %424, i64 %426
  %428 = load i64, i64* %427, align 8
  %429 = xor i64 %423, %428
  %430 = load i64*, i64** %18, align 8
  %431 = load i64, i64* %21, align 8
  %432 = sub i64 %431, 4
  %433 = getelementptr inbounds i64, i64* %430, i64 %432
  store i64 %429, i64* %433, align 8
  br label %368, !llvm.loop !13

434:                                              ; preds = %368
  %435 = load i64, i64* %21, align 8
  %436 = load i64, i64* %22, align 8
  %437 = icmp ugt i64 %435, %436
  br i1 %437, label %438, label %462

438:                                              ; preds = %434
  %439 = load i64, i64* %21, align 8
  %440 = sub i64 %439, 4
  store i64 %440, i64* %21, align 8
  br label %441

441:                                              ; preds = %458, %438
  %442 = load i64, i64* %21, align 8
  %443 = load i64, i64* %22, align 8
  %444 = icmp ult i64 %442, %443
  br i1 %444, label %445, label %461

445:                                              ; preds = %441
  %446 = load i64*, i64** %19, align 8
  %447 = load i64, i64* %21, align 8
  %448 = getelementptr inbounds i64, i64* %446, i64 %447
  %449 = load i64, i64* %448, align 8
  %450 = load i64*, i64** %20, align 8
  %451 = load i64, i64* %21, align 8
  %452 = getelementptr inbounds i64, i64* %450, i64 %451
  %453 = load i64, i64* %452, align 8
  %454 = xor i64 %449, %453
  %455 = load i64*, i64** %18, align 8
  %456 = load i64, i64* %21, align 8
  %457 = getelementptr inbounds i64, i64* %455, i64 %456
  store i64 %454, i64* %457, align 8
  br label %458

458:                                              ; preds = %445
  %459 = load i64, i64* %21, align 8
  %460 = add i64 %459, 1
  store i64 %460, i64* %21, align 8
  br label %441, !llvm.loop !14

461:                                              ; preds = %441
  br label %462

462:                                              ; preds = %461, %434
  br label %463

463:                                              ; preds = %462, %366
  br label %464

464:                                              ; preds = %463
  %465 = load %struct.zahl*, %struct.zahl** %4, align 8
  %466 = getelementptr inbounds %struct.zahl, %struct.zahl* %465, i32 0, i32 2
  %467 = load i64, i64* %466, align 8
  %468 = load i64, i64* %9, align 8
  %469 = icmp ult i64 %467, %468
  br i1 %469, label %470, label %478

470:                                              ; preds = %464
  %471 = load %struct.zahl*, %struct.zahl** %4, align 8
  %472 = getelementptr inbounds %struct.zahl, %struct.zahl* %471, i32 0, i32 4
  %473 = load i64*, i64** %472, align 8
  %474 = load i64*, i64** %11, align 8
  %475 = load i64, i64* %7, align 8
  %476 = load i64, i64* %8, align 8
  %477 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %473, i64* noundef %474, i64 noundef %475, i64 noundef %476)
  br label %478

478:                                              ; preds = %470, %464
  br label %666

479:                                              ; preds = %293
  %480 = load i64, i64* %8, align 8
  %481 = load i64, i64* %9, align 8
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %483, label %574

483:                                              ; preds = %479
  br label %484

484:                                              ; preds = %483
  %485 = load %struct.zahl*, %struct.zahl** %4, align 8
  %486 = getelementptr inbounds %struct.zahl, %struct.zahl* %485, i32 0, i32 4
  %487 = load i64*, i64** %486, align 8
  store i64* %487, i64** %23, align 8
  %488 = load %struct.zahl*, %struct.zahl** %6, align 8
  %489 = getelementptr inbounds %struct.zahl, %struct.zahl* %488, i32 0, i32 4
  %490 = load i64*, i64** %489, align 8
  store i64* %490, i64** %24, align 8
  %491 = load %struct.zahl*, %struct.zahl** %5, align 8
  %492 = getelementptr inbounds %struct.zahl, %struct.zahl* %491, i32 0, i32 4
  %493 = load i64*, i64** %492, align 8
  store i64* %493, i64** %25, align 8
  %494 = load i64, i64* %7, align 8
  store i64 %494, i64* %27, align 8
  store i64 0, i64* %26, align 8
  br label %495

495:                                              ; preds = %560, %484
  %496 = load i64, i64* %26, align 8
  %497 = load i64, i64* %27, align 8
  %498 = icmp ult i64 %496, %497
  br i1 %498, label %499, label %563

499:                                              ; preds = %495
  %500 = load i64*, i64** %24, align 8
  %501 = load i64, i64* %26, align 8
  %502 = add i64 %501, 0
  %503 = getelementptr inbounds i64, i64* %500, i64 %502
  %504 = load i64, i64* %503, align 8
  %505 = load i64*, i64** %25, align 8
  %506 = load i64, i64* %26, align 8
  %507 = add i64 %506, 0
  %508 = getelementptr inbounds i64, i64* %505, i64 %507
  %509 = load i64, i64* %508, align 8
  %510 = xor i64 %504, %509
  %511 = load i64*, i64** %23, align 8
  %512 = load i64, i64* %26, align 8
  %513 = add i64 %512, 0
  %514 = getelementptr inbounds i64, i64* %511, i64 %513
  store i64 %510, i64* %514, align 8
  %515 = load i64*, i64** %24, align 8
  %516 = load i64, i64* %26, align 8
  %517 = add i64 %516, 1
  %518 = getelementptr inbounds i64, i64* %515, i64 %517
  %519 = load i64, i64* %518, align 8
  %520 = load i64*, i64** %25, align 8
  %521 = load i64, i64* %26, align 8
  %522 = add i64 %521, 1
  %523 = getelementptr inbounds i64, i64* %520, i64 %522
  %524 = load i64, i64* %523, align 8
  %525 = xor i64 %519, %524
  %526 = load i64*, i64** %23, align 8
  %527 = load i64, i64* %26, align 8
  %528 = add i64 %527, 1
  %529 = getelementptr inbounds i64, i64* %526, i64 %528
  store i64 %525, i64* %529, align 8
  %530 = load i64*, i64** %24, align 8
  %531 = load i64, i64* %26, align 8
  %532 = add i64 %531, 2
  %533 = getelementptr inbounds i64, i64* %530, i64 %532
  %534 = load i64, i64* %533, align 8
  %535 = load i64*, i64** %25, align 8
  %536 = load i64, i64* %26, align 8
  %537 = add i64 %536, 2
  %538 = getelementptr inbounds i64, i64* %535, i64 %537
  %539 = load i64, i64* %538, align 8
  %540 = xor i64 %534, %539
  %541 = load i64*, i64** %23, align 8
  %542 = load i64, i64* %26, align 8
  %543 = add i64 %542, 2
  %544 = getelementptr inbounds i64, i64* %541, i64 %543
  store i64 %540, i64* %544, align 8
  %545 = load i64*, i64** %24, align 8
  %546 = load i64, i64* %26, align 8
  %547 = add i64 %546, 3
  %548 = getelementptr inbounds i64, i64* %545, i64 %547
  %549 = load i64, i64* %548, align 8
  %550 = load i64*, i64** %25, align 8
  %551 = load i64, i64* %26, align 8
  %552 = add i64 %551, 3
  %553 = getelementptr inbounds i64, i64* %550, i64 %552
  %554 = load i64, i64* %553, align 8
  %555 = xor i64 %549, %554
  %556 = load i64*, i64** %23, align 8
  %557 = load i64, i64* %26, align 8
  %558 = add i64 %557, 3
  %559 = getelementptr inbounds i64, i64* %556, i64 %558
  store i64 %555, i64* %559, align 8
  br label %560

560:                                              ; preds = %499
  %561 = load i64, i64* %26, align 8
  %562 = add i64 %561, 4
  store i64 %562, i64* %26, align 8
  br label %495, !llvm.loop !15

563:                                              ; preds = %495
  br label %564

564:                                              ; preds = %563
  %565 = load %struct.zahl*, %struct.zahl** %4, align 8
  %566 = getelementptr inbounds %struct.zahl, %struct.zahl* %565, i32 0, i32 4
  %567 = load i64*, i64** %566, align 8
  %568 = load %struct.zahl*, %struct.zahl** %5, align 8
  %569 = getelementptr inbounds %struct.zahl, %struct.zahl* %568, i32 0, i32 4
  %570 = load i64*, i64** %569, align 8
  %571 = load i64, i64* %7, align 8
  %572 = load i64, i64* %8, align 8
  %573 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %567, i64* noundef %570, i64 noundef %571, i64 noundef %572)
  br label %665

574:                                              ; preds = %479
  br label %575

575:                                              ; preds = %574
  %576 = load %struct.zahl*, %struct.zahl** %4, align 8
  %577 = getelementptr inbounds %struct.zahl, %struct.zahl* %576, i32 0, i32 4
  %578 = load i64*, i64** %577, align 8
  store i64* %578, i64** %28, align 8
  %579 = load %struct.zahl*, %struct.zahl** %5, align 8
  %580 = getelementptr inbounds %struct.zahl, %struct.zahl* %579, i32 0, i32 4
  %581 = load i64*, i64** %580, align 8
  store i64* %581, i64** %29, align 8
  %582 = load %struct.zahl*, %struct.zahl** %6, align 8
  %583 = getelementptr inbounds %struct.zahl, %struct.zahl* %582, i32 0, i32 4
  %584 = load i64*, i64** %583, align 8
  store i64* %584, i64** %30, align 8
  %585 = load i64, i64* %7, align 8
  store i64 %585, i64* %32, align 8
  store i64 0, i64* %31, align 8
  br label %586

586:                                              ; preds = %651, %575
  %587 = load i64, i64* %31, align 8
  %588 = load i64, i64* %32, align 8
  %589 = icmp ult i64 %587, %588
  br i1 %589, label %590, label %654

590:                                              ; preds = %586
  %591 = load i64*, i64** %29, align 8
  %592 = load i64, i64* %31, align 8
  %593 = add i64 %592, 0
  %594 = getelementptr inbounds i64, i64* %591, i64 %593
  %595 = load i64, i64* %594, align 8
  %596 = load i64*, i64** %30, align 8
  %597 = load i64, i64* %31, align 8
  %598 = add i64 %597, 0
  %599 = getelementptr inbounds i64, i64* %596, i64 %598
  %600 = load i64, i64* %599, align 8
  %601 = xor i64 %595, %600
  %602 = load i64*, i64** %28, align 8
  %603 = load i64, i64* %31, align 8
  %604 = add i64 %603, 0
  %605 = getelementptr inbounds i64, i64* %602, i64 %604
  store i64 %601, i64* %605, align 8
  %606 = load i64*, i64** %29, align 8
  %607 = load i64, i64* %31, align 8
  %608 = add i64 %607, 1
  %609 = getelementptr inbounds i64, i64* %606, i64 %608
  %610 = load i64, i64* %609, align 8
  %611 = load i64*, i64** %30, align 8
  %612 = load i64, i64* %31, align 8
  %613 = add i64 %612, 1
  %614 = getelementptr inbounds i64, i64* %611, i64 %613
  %615 = load i64, i64* %614, align 8
  %616 = xor i64 %610, %615
  %617 = load i64*, i64** %28, align 8
  %618 = load i64, i64* %31, align 8
  %619 = add i64 %618, 1
  %620 = getelementptr inbounds i64, i64* %617, i64 %619
  store i64 %616, i64* %620, align 8
  %621 = load i64*, i64** %29, align 8
  %622 = load i64, i64* %31, align 8
  %623 = add i64 %622, 2
  %624 = getelementptr inbounds i64, i64* %621, i64 %623
  %625 = load i64, i64* %624, align 8
  %626 = load i64*, i64** %30, align 8
  %627 = load i64, i64* %31, align 8
  %628 = add i64 %627, 2
  %629 = getelementptr inbounds i64, i64* %626, i64 %628
  %630 = load i64, i64* %629, align 8
  %631 = xor i64 %625, %630
  %632 = load i64*, i64** %28, align 8
  %633 = load i64, i64* %31, align 8
  %634 = add i64 %633, 2
  %635 = getelementptr inbounds i64, i64* %632, i64 %634
  store i64 %631, i64* %635, align 8
  %636 = load i64*, i64** %29, align 8
  %637 = load i64, i64* %31, align 8
  %638 = add i64 %637, 3
  %639 = getelementptr inbounds i64, i64* %636, i64 %638
  %640 = load i64, i64* %639, align 8
  %641 = load i64*, i64** %30, align 8
  %642 = load i64, i64* %31, align 8
  %643 = add i64 %642, 3
  %644 = getelementptr inbounds i64, i64* %641, i64 %643
  %645 = load i64, i64* %644, align 8
  %646 = xor i64 %640, %645
  %647 = load i64*, i64** %28, align 8
  %648 = load i64, i64* %31, align 8
  %649 = add i64 %648, 3
  %650 = getelementptr inbounds i64, i64* %647, i64 %649
  store i64 %646, i64* %650, align 8
  br label %651

651:                                              ; preds = %590
  %652 = load i64, i64* %31, align 8
  %653 = add i64 %652, 4
  store i64 %653, i64* %31, align 8
  br label %586, !llvm.loop !16

654:                                              ; preds = %586
  br label %655

655:                                              ; preds = %654
  %656 = load %struct.zahl*, %struct.zahl** %4, align 8
  %657 = getelementptr inbounds %struct.zahl, %struct.zahl* %656, i32 0, i32 4
  %658 = load i64*, i64** %657, align 8
  %659 = load %struct.zahl*, %struct.zahl** %6, align 8
  %660 = getelementptr inbounds %struct.zahl, %struct.zahl* %659, i32 0, i32 4
  %661 = load i64*, i64** %660, align 8
  %662 = load i64, i64* %7, align 8
  %663 = load i64, i64* %8, align 8
  %664 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %658, i64* noundef %661, i64 noundef %662, i64 noundef %663)
  br label %665

665:                                              ; preds = %655, %564
  br label %666

666:                                              ; preds = %665, %478
  br label %667

667:                                              ; preds = %666, %292
  %668 = load i64, i64* %8, align 8
  %669 = load %struct.zahl*, %struct.zahl** %4, align 8
  %670 = getelementptr inbounds %struct.zahl, %struct.zahl* %669, i32 0, i32 2
  store i64 %668, i64* %670, align 8
  br label %671

671:                                              ; preds = %667
  br label %672

672:                                              ; preds = %692, %671
  %673 = load %struct.zahl*, %struct.zahl** %4, align 8
  %674 = getelementptr inbounds %struct.zahl, %struct.zahl* %673, i32 0, i32 2
  %675 = load i64, i64* %674, align 8
  %676 = icmp ne i64 %675, 0
  br i1 %676, label %677, label %689

677:                                              ; preds = %672
  %678 = load %struct.zahl*, %struct.zahl** %4, align 8
  %679 = getelementptr inbounds %struct.zahl, %struct.zahl* %678, i32 0, i32 4
  %680 = load i64*, i64** %679, align 8
  %681 = load %struct.zahl*, %struct.zahl** %4, align 8
  %682 = getelementptr inbounds %struct.zahl, %struct.zahl* %681, i32 0, i32 2
  %683 = load i64, i64* %682, align 8
  %684 = sub i64 %683, 1
  %685 = getelementptr inbounds i64, i64* %680, i64 %684
  %686 = load i64, i64* %685, align 8
  %687 = icmp ne i64 %686, 0
  %688 = xor i1 %687, true
  br label %689

689:                                              ; preds = %677, %672
  %690 = phi i1 [ false, %672 ], [ %688, %677 ]
  br i1 %690, label %691, label %697

691:                                              ; preds = %689
  br label %692

692:                                              ; preds = %691
  %693 = load %struct.zahl*, %struct.zahl** %4, align 8
  %694 = getelementptr inbounds %struct.zahl, %struct.zahl* %693, i32 0, i32 2
  %695 = load i64, i64* %694, align 8
  %696 = add i64 %695, -1
  store i64 %696, i64* %694, align 8
  br label %672, !llvm.loop !17

697:                                              ; preds = %689
  %698 = load %struct.zahl*, %struct.zahl** %4, align 8
  %699 = getelementptr inbounds %struct.zahl, %struct.zahl* %698, i32 0, i32 2
  %700 = load i64, i64* %699, align 8
  %701 = icmp ne i64 %700, 0
  br i1 %701, label %702, label %712

702:                                              ; preds = %697
  %703 = load %struct.zahl*, %struct.zahl** %5, align 8
  %704 = call i32 @zsignum(%struct.zahl* noundef %703)
  %705 = load %struct.zahl*, %struct.zahl** %6, align 8
  %706 = call i32 @zsignum(%struct.zahl* noundef %705)
  %707 = xor i32 %704, %706
  %708 = icmp slt i32 %707, 0
  %709 = zext i1 %708 to i32
  %710 = mul nsw i32 2, %709
  %711 = sub nsw i32 1, %710
  br label %713

712:                                              ; preds = %697
  br label %713

713:                                              ; preds = %712, %702
  %714 = phi i32 [ %711, %702 ], [ 0, %712 ]
  %715 = load %struct.zahl*, %struct.zahl** %4, align 8
  %716 = getelementptr inbounds %struct.zahl, %struct.zahl* %715, i32 0, i32 0
  store i32 %714, i32* %716, align 8
  br label %717

717:                                              ; preds = %50, %69, %713
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @zmemcpy_range(...) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

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
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
