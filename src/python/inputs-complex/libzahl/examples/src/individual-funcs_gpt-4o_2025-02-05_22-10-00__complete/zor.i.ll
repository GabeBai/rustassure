; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zor.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zor.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zor(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store %struct.zahl* %2, %struct.zahl** %6, align 8
  %29 = load %struct.zahl*, %struct.zahl** %5, align 8
  %30 = call i32 @zzero(%struct.zahl* noundef %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.zahl*, %struct.zahl** %4, align 8
  %40 = load %struct.zahl*, %struct.zahl** %6, align 8
  %41 = icmp ne %struct.zahl* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.zahl*, %struct.zahl** %4, align 8
  %44 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zset(%struct.zahl* noundef %43, %struct.zahl* noundef %44)
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45
  br label %696

47:                                               ; preds = %3
  %48 = load %struct.zahl*, %struct.zahl** %6, align 8
  %49 = call i32 @zzero(%struct.zahl* noundef %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.zahl*, %struct.zahl** %4, align 8
  %59 = load %struct.zahl*, %struct.zahl** %5, align 8
  %60 = icmp ne %struct.zahl* %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.zahl*, %struct.zahl** %4, align 8
  %63 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zset(%struct.zahl* noundef %62, %struct.zahl* noundef %63)
  br label %64

64:                                               ; preds = %61, %57
  br label %65

65:                                               ; preds = %64
  br label %696

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.zahl*, %struct.zahl** %5, align 8
  %69 = getelementptr inbounds %struct.zahl, %struct.zahl* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.zahl*, %struct.zahl** %6, align 8
  %72 = getelementptr inbounds %struct.zahl, %struct.zahl* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.zahl*, %struct.zahl** %5, align 8
  %77 = getelementptr inbounds %struct.zahl, %struct.zahl* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  br label %83

79:                                               ; preds = %67
  %80 = load %struct.zahl*, %struct.zahl** %6, align 8
  %81 = getelementptr inbounds %struct.zahl, %struct.zahl* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i64 [ %78, %75 ], [ %82, %79 ]
  store i64 %84, i64* %7, align 8
  %85 = load %struct.zahl*, %struct.zahl** %5, align 8
  %86 = getelementptr inbounds %struct.zahl, %struct.zahl* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.zahl*, %struct.zahl** %6, align 8
  %89 = getelementptr inbounds %struct.zahl, %struct.zahl* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load %struct.zahl*, %struct.zahl** %5, align 8
  %94 = getelementptr inbounds %struct.zahl, %struct.zahl* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  br label %100

96:                                               ; preds = %83
  %97 = load %struct.zahl*, %struct.zahl** %6, align 8
  %98 = getelementptr inbounds %struct.zahl, %struct.zahl* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i64 [ %95, %92 ], [ %99, %96 ]
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
  br i1 %115, label %116, label %299

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.zahl*, %struct.zahl** %4, align 8
  %119 = getelementptr inbounds %struct.zahl, %struct.zahl* %118, i32 0, i32 4
  %120 = load i64*, i64** %119, align 8
  store i64* %120, i64** %9, align 8
  %121 = load %struct.zahl*, %struct.zahl** %4, align 8
  %122 = getelementptr inbounds %struct.zahl, %struct.zahl* %121, i32 0, i32 4
  %123 = load i64*, i64** %122, align 8
  store i64* %123, i64** %10, align 8
  %124 = load %struct.zahl*, %struct.zahl** %6, align 8
  %125 = getelementptr inbounds %struct.zahl, %struct.zahl* %124, i32 0, i32 4
  %126 = load i64*, i64** %125, align 8
  store i64* %126, i64** %11, align 8
  %127 = load i64, i64* %7, align 8
  store i64 %127, i64* %13, align 8
  %128 = load i64, i64* %13, align 8
  %129 = icmp ule i64 %128, 4
  br i1 %129, label %130, label %183

130:                                              ; preds = %117
  %131 = load i64, i64* %13, align 8
  %132 = icmp uge i64 %131, 1
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i64*, i64** %10, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %11, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = or i64 %136, %139
  %141 = load i64*, i64** %9, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %133, %130
  %144 = load i64, i64* %13, align 8
  %145 = icmp uge i64 %144, 2
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load i64*, i64** %10, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %11, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 1
  %152 = load i64, i64* %151, align 8
  %153 = or i64 %149, %152
  %154 = load i64*, i64** %9, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 1
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %146, %143
  %157 = load i64, i64* %13, align 8
  %158 = icmp uge i64 %157, 3
  br i1 %158, label %159, label %169

159:                                              ; preds = %156
  %160 = load i64*, i64** %10, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64*, i64** %11, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 2
  %165 = load i64, i64* %164, align 8
  %166 = or i64 %162, %165
  %167 = load i64*, i64** %9, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 2
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %159, %156
  %170 = load i64, i64* %13, align 8
  %171 = icmp uge i64 %170, 4
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = load i64*, i64** %10, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 3
  %175 = load i64, i64* %174, align 8
  %176 = load i64*, i64** %11, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 3
  %178 = load i64, i64* %177, align 8
  %179 = or i64 %175, %178
  %180 = load i64*, i64** %9, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 3
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %172, %169
  br label %279

183:                                              ; preds = %117
  store i64 0, i64* %12, align 8
  br label %184

184:                                              ; preds = %189, %183
  %185 = load i64, i64* %12, align 8
  %186 = add i64 %185, 4
  store i64 %186, i64* %12, align 8
  %187 = load i64, i64* %13, align 8
  %188 = icmp ult i64 %186, %187
  br i1 %188, label %189, label %250

189:                                              ; preds = %184
  %190 = load i64*, i64** %10, align 8
  %191 = load i64, i64* %12, align 8
  %192 = sub i64 %191, 1
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load i64*, i64** %11, align 8
  %196 = load i64, i64* %12, align 8
  %197 = sub i64 %196, 1
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = or i64 %194, %199
  %201 = load i64*, i64** %9, align 8
  %202 = load i64, i64* %12, align 8
  %203 = sub i64 %202, 1
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  store i64 %200, i64* %204, align 8
  %205 = load i64*, i64** %10, align 8
  %206 = load i64, i64* %12, align 8
  %207 = sub i64 %206, 2
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** %11, align 8
  %211 = load i64, i64* %12, align 8
  %212 = sub i64 %211, 2
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = or i64 %209, %214
  %216 = load i64*, i64** %9, align 8
  %217 = load i64, i64* %12, align 8
  %218 = sub i64 %217, 2
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  store i64 %215, i64* %219, align 8
  %220 = load i64*, i64** %10, align 8
  %221 = load i64, i64* %12, align 8
  %222 = sub i64 %221, 3
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = load i64*, i64** %11, align 8
  %226 = load i64, i64* %12, align 8
  %227 = sub i64 %226, 3
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = or i64 %224, %229
  %231 = load i64*, i64** %9, align 8
  %232 = load i64, i64* %12, align 8
  %233 = sub i64 %232, 3
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  store i64 %230, i64* %234, align 8
  %235 = load i64*, i64** %10, align 8
  %236 = load i64, i64* %12, align 8
  %237 = sub i64 %236, 4
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = load i64*, i64** %11, align 8
  %241 = load i64, i64* %12, align 8
  %242 = sub i64 %241, 4
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = or i64 %239, %244
  %246 = load i64*, i64** %9, align 8
  %247 = load i64, i64* %12, align 8
  %248 = sub i64 %247, 4
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  store i64 %245, i64* %249, align 8
  br label %184, !llvm.loop !10

250:                                              ; preds = %184
  %251 = load i64, i64* %12, align 8
  %252 = load i64, i64* %13, align 8
  %253 = icmp ugt i64 %251, %252
  br i1 %253, label %254, label %278

254:                                              ; preds = %250
  %255 = load i64, i64* %12, align 8
  %256 = sub i64 %255, 4
  store i64 %256, i64* %12, align 8
  br label %257

257:                                              ; preds = %274, %254
  %258 = load i64, i64* %12, align 8
  %259 = load i64, i64* %13, align 8
  %260 = icmp ult i64 %258, %259
  br i1 %260, label %261, label %277

261:                                              ; preds = %257
  %262 = load i64*, i64** %10, align 8
  %263 = load i64, i64* %12, align 8
  %264 = getelementptr inbounds i64, i64* %262, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = load i64*, i64** %11, align 8
  %267 = load i64, i64* %12, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = or i64 %265, %269
  %271 = load i64*, i64** %9, align 8
  %272 = load i64, i64* %12, align 8
  %273 = getelementptr inbounds i64, i64* %271, i64 %272
  store i64 %270, i64* %273, align 8
  br label %274

274:                                              ; preds = %261
  %275 = load i64, i64* %12, align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* %12, align 8
  br label %257, !llvm.loop !12

277:                                              ; preds = %257
  br label %278

278:                                              ; preds = %277, %250
  br label %279

279:                                              ; preds = %278, %182
  br label %280

280:                                              ; preds = %279
  %281 = load %struct.zahl*, %struct.zahl** %4, align 8
  %282 = getelementptr inbounds %struct.zahl, %struct.zahl* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.zahl*, %struct.zahl** %6, align 8
  %285 = getelementptr inbounds %struct.zahl, %struct.zahl* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = icmp ult i64 %283, %286
  br i1 %287, label %288, label %298

288:                                              ; preds = %280
  %289 = load %struct.zahl*, %struct.zahl** %4, align 8
  %290 = getelementptr inbounds %struct.zahl, %struct.zahl* %289, i32 0, i32 4
  %291 = load i64*, i64** %290, align 8
  %292 = load %struct.zahl*, %struct.zahl** %6, align 8
  %293 = getelementptr inbounds %struct.zahl, %struct.zahl* %292, i32 0, i32 4
  %294 = load i64*, i64** %293, align 8
  %295 = load i64, i64* %7, align 8
  %296 = load i64, i64* %8, align 8
  %297 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %291, i64* noundef %294, i64 noundef %295, i64 noundef %296)
  br label %298

298:                                              ; preds = %288, %280
  br label %681

299:                                              ; preds = %112
  %300 = load %struct.zahl*, %struct.zahl** %4, align 8
  %301 = load %struct.zahl*, %struct.zahl** %6, align 8
  %302 = icmp eq %struct.zahl* %300, %301
  %303 = xor i1 %302, true
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = sext i32 %305 to i64
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %491

308:                                              ; preds = %299
  br label %309

309:                                              ; preds = %308
  %310 = load %struct.zahl*, %struct.zahl** %4, align 8
  %311 = getelementptr inbounds %struct.zahl, %struct.zahl* %310, i32 0, i32 4
  %312 = load i64*, i64** %311, align 8
  store i64* %312, i64** %14, align 8
  %313 = load %struct.zahl*, %struct.zahl** %4, align 8
  %314 = getelementptr inbounds %struct.zahl, %struct.zahl* %313, i32 0, i32 4
  %315 = load i64*, i64** %314, align 8
  store i64* %315, i64** %15, align 8
  %316 = load %struct.zahl*, %struct.zahl** %5, align 8
  %317 = getelementptr inbounds %struct.zahl, %struct.zahl* %316, i32 0, i32 4
  %318 = load i64*, i64** %317, align 8
  store i64* %318, i64** %16, align 8
  %319 = load i64, i64* %7, align 8
  store i64 %319, i64* %18, align 8
  %320 = load i64, i64* %18, align 8
  %321 = icmp ule i64 %320, 4
  br i1 %321, label %322, label %375

322:                                              ; preds = %309
  %323 = load i64, i64* %18, align 8
  %324 = icmp uge i64 %323, 1
  br i1 %324, label %325, label %335

325:                                              ; preds = %322
  %326 = load i64*, i64** %15, align 8
  %327 = getelementptr inbounds i64, i64* %326, i64 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64*, i64** %16, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 0
  %331 = load i64, i64* %330, align 8
  %332 = or i64 %328, %331
  %333 = load i64*, i64** %14, align 8
  %334 = getelementptr inbounds i64, i64* %333, i64 0
  store i64 %332, i64* %334, align 8
  br label %335

335:                                              ; preds = %325, %322
  %336 = load i64, i64* %18, align 8
  %337 = icmp uge i64 %336, 2
  br i1 %337, label %338, label %348

338:                                              ; preds = %335
  %339 = load i64*, i64** %15, align 8
  %340 = getelementptr inbounds i64, i64* %339, i64 1
  %341 = load i64, i64* %340, align 8
  %342 = load i64*, i64** %16, align 8
  %343 = getelementptr inbounds i64, i64* %342, i64 1
  %344 = load i64, i64* %343, align 8
  %345 = or i64 %341, %344
  %346 = load i64*, i64** %14, align 8
  %347 = getelementptr inbounds i64, i64* %346, i64 1
  store i64 %345, i64* %347, align 8
  br label %348

348:                                              ; preds = %338, %335
  %349 = load i64, i64* %18, align 8
  %350 = icmp uge i64 %349, 3
  br i1 %350, label %351, label %361

351:                                              ; preds = %348
  %352 = load i64*, i64** %15, align 8
  %353 = getelementptr inbounds i64, i64* %352, i64 2
  %354 = load i64, i64* %353, align 8
  %355 = load i64*, i64** %16, align 8
  %356 = getelementptr inbounds i64, i64* %355, i64 2
  %357 = load i64, i64* %356, align 8
  %358 = or i64 %354, %357
  %359 = load i64*, i64** %14, align 8
  %360 = getelementptr inbounds i64, i64* %359, i64 2
  store i64 %358, i64* %360, align 8
  br label %361

361:                                              ; preds = %351, %348
  %362 = load i64, i64* %18, align 8
  %363 = icmp uge i64 %362, 4
  br i1 %363, label %364, label %374

364:                                              ; preds = %361
  %365 = load i64*, i64** %15, align 8
  %366 = getelementptr inbounds i64, i64* %365, i64 3
  %367 = load i64, i64* %366, align 8
  %368 = load i64*, i64** %16, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 3
  %370 = load i64, i64* %369, align 8
  %371 = or i64 %367, %370
  %372 = load i64*, i64** %14, align 8
  %373 = getelementptr inbounds i64, i64* %372, i64 3
  store i64 %371, i64* %373, align 8
  br label %374

374:                                              ; preds = %364, %361
  br label %471

375:                                              ; preds = %309
  store i64 0, i64* %17, align 8
  br label %376

376:                                              ; preds = %381, %375
  %377 = load i64, i64* %17, align 8
  %378 = add i64 %377, 4
  store i64 %378, i64* %17, align 8
  %379 = load i64, i64* %18, align 8
  %380 = icmp ult i64 %378, %379
  br i1 %380, label %381, label %442

381:                                              ; preds = %376
  %382 = load i64*, i64** %15, align 8
  %383 = load i64, i64* %17, align 8
  %384 = sub i64 %383, 1
  %385 = getelementptr inbounds i64, i64* %382, i64 %384
  %386 = load i64, i64* %385, align 8
  %387 = load i64*, i64** %16, align 8
  %388 = load i64, i64* %17, align 8
  %389 = sub i64 %388, 1
  %390 = getelementptr inbounds i64, i64* %387, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = or i64 %386, %391
  %393 = load i64*, i64** %14, align 8
  %394 = load i64, i64* %17, align 8
  %395 = sub i64 %394, 1
  %396 = getelementptr inbounds i64, i64* %393, i64 %395
  store i64 %392, i64* %396, align 8
  %397 = load i64*, i64** %15, align 8
  %398 = load i64, i64* %17, align 8
  %399 = sub i64 %398, 2
  %400 = getelementptr inbounds i64, i64* %397, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = load i64*, i64** %16, align 8
  %403 = load i64, i64* %17, align 8
  %404 = sub i64 %403, 2
  %405 = getelementptr inbounds i64, i64* %402, i64 %404
  %406 = load i64, i64* %405, align 8
  %407 = or i64 %401, %406
  %408 = load i64*, i64** %14, align 8
  %409 = load i64, i64* %17, align 8
  %410 = sub i64 %409, 2
  %411 = getelementptr inbounds i64, i64* %408, i64 %410
  store i64 %407, i64* %411, align 8
  %412 = load i64*, i64** %15, align 8
  %413 = load i64, i64* %17, align 8
  %414 = sub i64 %413, 3
  %415 = getelementptr inbounds i64, i64* %412, i64 %414
  %416 = load i64, i64* %415, align 8
  %417 = load i64*, i64** %16, align 8
  %418 = load i64, i64* %17, align 8
  %419 = sub i64 %418, 3
  %420 = getelementptr inbounds i64, i64* %417, i64 %419
  %421 = load i64, i64* %420, align 8
  %422 = or i64 %416, %421
  %423 = load i64*, i64** %14, align 8
  %424 = load i64, i64* %17, align 8
  %425 = sub i64 %424, 3
  %426 = getelementptr inbounds i64, i64* %423, i64 %425
  store i64 %422, i64* %426, align 8
  %427 = load i64*, i64** %15, align 8
  %428 = load i64, i64* %17, align 8
  %429 = sub i64 %428, 4
  %430 = getelementptr inbounds i64, i64* %427, i64 %429
  %431 = load i64, i64* %430, align 8
  %432 = load i64*, i64** %16, align 8
  %433 = load i64, i64* %17, align 8
  %434 = sub i64 %433, 4
  %435 = getelementptr inbounds i64, i64* %432, i64 %434
  %436 = load i64, i64* %435, align 8
  %437 = or i64 %431, %436
  %438 = load i64*, i64** %14, align 8
  %439 = load i64, i64* %17, align 8
  %440 = sub i64 %439, 4
  %441 = getelementptr inbounds i64, i64* %438, i64 %440
  store i64 %437, i64* %441, align 8
  br label %376, !llvm.loop !13

442:                                              ; preds = %376
  %443 = load i64, i64* %17, align 8
  %444 = load i64, i64* %18, align 8
  %445 = icmp ugt i64 %443, %444
  br i1 %445, label %446, label %470

446:                                              ; preds = %442
  %447 = load i64, i64* %17, align 8
  %448 = sub i64 %447, 4
  store i64 %448, i64* %17, align 8
  br label %449

449:                                              ; preds = %466, %446
  %450 = load i64, i64* %17, align 8
  %451 = load i64, i64* %18, align 8
  %452 = icmp ult i64 %450, %451
  br i1 %452, label %453, label %469

453:                                              ; preds = %449
  %454 = load i64*, i64** %15, align 8
  %455 = load i64, i64* %17, align 8
  %456 = getelementptr inbounds i64, i64* %454, i64 %455
  %457 = load i64, i64* %456, align 8
  %458 = load i64*, i64** %16, align 8
  %459 = load i64, i64* %17, align 8
  %460 = getelementptr inbounds i64, i64* %458, i64 %459
  %461 = load i64, i64* %460, align 8
  %462 = or i64 %457, %461
  %463 = load i64*, i64** %14, align 8
  %464 = load i64, i64* %17, align 8
  %465 = getelementptr inbounds i64, i64* %463, i64 %464
  store i64 %462, i64* %465, align 8
  br label %466

466:                                              ; preds = %453
  %467 = load i64, i64* %17, align 8
  %468 = add i64 %467, 1
  store i64 %468, i64* %17, align 8
  br label %449, !llvm.loop !14

469:                                              ; preds = %449
  br label %470

470:                                              ; preds = %469, %442
  br label %471

471:                                              ; preds = %470, %374
  br label %472

472:                                              ; preds = %471
  %473 = load %struct.zahl*, %struct.zahl** %4, align 8
  %474 = getelementptr inbounds %struct.zahl, %struct.zahl* %473, i32 0, i32 2
  %475 = load i64, i64* %474, align 8
  %476 = load %struct.zahl*, %struct.zahl** %5, align 8
  %477 = getelementptr inbounds %struct.zahl, %struct.zahl* %476, i32 0, i32 2
  %478 = load i64, i64* %477, align 8
  %479 = icmp ult i64 %475, %478
  br i1 %479, label %480, label %490

480:                                              ; preds = %472
  %481 = load %struct.zahl*, %struct.zahl** %4, align 8
  %482 = getelementptr inbounds %struct.zahl, %struct.zahl* %481, i32 0, i32 4
  %483 = load i64*, i64** %482, align 8
  %484 = load %struct.zahl*, %struct.zahl** %5, align 8
  %485 = getelementptr inbounds %struct.zahl, %struct.zahl* %484, i32 0, i32 4
  %486 = load i64*, i64** %485, align 8
  %487 = load i64, i64* %7, align 8
  %488 = load i64, i64* %8, align 8
  %489 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %483, i64* noundef %486, i64 noundef %487, i64 noundef %488)
  br label %490

490:                                              ; preds = %480, %472
  br label %680

491:                                              ; preds = %299
  %492 = load i64, i64* %8, align 8
  %493 = load %struct.zahl*, %struct.zahl** %5, align 8
  %494 = getelementptr inbounds %struct.zahl, %struct.zahl* %493, i32 0, i32 2
  %495 = load i64, i64* %494, align 8
  %496 = icmp eq i64 %492, %495
  br i1 %496, label %497, label %588

497:                                              ; preds = %491
  br label %498

498:                                              ; preds = %497
  %499 = load %struct.zahl*, %struct.zahl** %4, align 8
  %500 = getelementptr inbounds %struct.zahl, %struct.zahl* %499, i32 0, i32 4
  %501 = load i64*, i64** %500, align 8
  store i64* %501, i64** %19, align 8
  %502 = load %struct.zahl*, %struct.zahl** %6, align 8
  %503 = getelementptr inbounds %struct.zahl, %struct.zahl* %502, i32 0, i32 4
  %504 = load i64*, i64** %503, align 8
  store i64* %504, i64** %20, align 8
  %505 = load %struct.zahl*, %struct.zahl** %5, align 8
  %506 = getelementptr inbounds %struct.zahl, %struct.zahl* %505, i32 0, i32 4
  %507 = load i64*, i64** %506, align 8
  store i64* %507, i64** %21, align 8
  %508 = load i64, i64* %7, align 8
  store i64 %508, i64* %23, align 8
  store i64 0, i64* %22, align 8
  br label %509

509:                                              ; preds = %574, %498
  %510 = load i64, i64* %22, align 8
  %511 = load i64, i64* %23, align 8
  %512 = icmp ult i64 %510, %511
  br i1 %512, label %513, label %577

513:                                              ; preds = %509
  %514 = load i64*, i64** %20, align 8
  %515 = load i64, i64* %22, align 8
  %516 = add i64 %515, 0
  %517 = getelementptr inbounds i64, i64* %514, i64 %516
  %518 = load i64, i64* %517, align 8
  %519 = load i64*, i64** %21, align 8
  %520 = load i64, i64* %22, align 8
  %521 = add i64 %520, 0
  %522 = getelementptr inbounds i64, i64* %519, i64 %521
  %523 = load i64, i64* %522, align 8
  %524 = or i64 %518, %523
  %525 = load i64*, i64** %19, align 8
  %526 = load i64, i64* %22, align 8
  %527 = add i64 %526, 0
  %528 = getelementptr inbounds i64, i64* %525, i64 %527
  store i64 %524, i64* %528, align 8
  %529 = load i64*, i64** %20, align 8
  %530 = load i64, i64* %22, align 8
  %531 = add i64 %530, 1
  %532 = getelementptr inbounds i64, i64* %529, i64 %531
  %533 = load i64, i64* %532, align 8
  %534 = load i64*, i64** %21, align 8
  %535 = load i64, i64* %22, align 8
  %536 = add i64 %535, 1
  %537 = getelementptr inbounds i64, i64* %534, i64 %536
  %538 = load i64, i64* %537, align 8
  %539 = or i64 %533, %538
  %540 = load i64*, i64** %19, align 8
  %541 = load i64, i64* %22, align 8
  %542 = add i64 %541, 1
  %543 = getelementptr inbounds i64, i64* %540, i64 %542
  store i64 %539, i64* %543, align 8
  %544 = load i64*, i64** %20, align 8
  %545 = load i64, i64* %22, align 8
  %546 = add i64 %545, 2
  %547 = getelementptr inbounds i64, i64* %544, i64 %546
  %548 = load i64, i64* %547, align 8
  %549 = load i64*, i64** %21, align 8
  %550 = load i64, i64* %22, align 8
  %551 = add i64 %550, 2
  %552 = getelementptr inbounds i64, i64* %549, i64 %551
  %553 = load i64, i64* %552, align 8
  %554 = or i64 %548, %553
  %555 = load i64*, i64** %19, align 8
  %556 = load i64, i64* %22, align 8
  %557 = add i64 %556, 2
  %558 = getelementptr inbounds i64, i64* %555, i64 %557
  store i64 %554, i64* %558, align 8
  %559 = load i64*, i64** %20, align 8
  %560 = load i64, i64* %22, align 8
  %561 = add i64 %560, 3
  %562 = getelementptr inbounds i64, i64* %559, i64 %561
  %563 = load i64, i64* %562, align 8
  %564 = load i64*, i64** %21, align 8
  %565 = load i64, i64* %22, align 8
  %566 = add i64 %565, 3
  %567 = getelementptr inbounds i64, i64* %564, i64 %566
  %568 = load i64, i64* %567, align 8
  %569 = or i64 %563, %568
  %570 = load i64*, i64** %19, align 8
  %571 = load i64, i64* %22, align 8
  %572 = add i64 %571, 3
  %573 = getelementptr inbounds i64, i64* %570, i64 %572
  store i64 %569, i64* %573, align 8
  br label %574

574:                                              ; preds = %513
  %575 = load i64, i64* %22, align 8
  %576 = add i64 %575, 4
  store i64 %576, i64* %22, align 8
  br label %509, !llvm.loop !15

577:                                              ; preds = %509
  br label %578

578:                                              ; preds = %577
  %579 = load %struct.zahl*, %struct.zahl** %4, align 8
  %580 = getelementptr inbounds %struct.zahl, %struct.zahl* %579, i32 0, i32 4
  %581 = load i64*, i64** %580, align 8
  %582 = load %struct.zahl*, %struct.zahl** %5, align 8
  %583 = getelementptr inbounds %struct.zahl, %struct.zahl* %582, i32 0, i32 4
  %584 = load i64*, i64** %583, align 8
  %585 = load i64, i64* %7, align 8
  %586 = load i64, i64* %8, align 8
  %587 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %581, i64* noundef %584, i64 noundef %585, i64 noundef %586)
  br label %679

588:                                              ; preds = %491
  br label %589

589:                                              ; preds = %588
  %590 = load %struct.zahl*, %struct.zahl** %4, align 8
  %591 = getelementptr inbounds %struct.zahl, %struct.zahl* %590, i32 0, i32 4
  %592 = load i64*, i64** %591, align 8
  store i64* %592, i64** %24, align 8
  %593 = load %struct.zahl*, %struct.zahl** %5, align 8
  %594 = getelementptr inbounds %struct.zahl, %struct.zahl* %593, i32 0, i32 4
  %595 = load i64*, i64** %594, align 8
  store i64* %595, i64** %25, align 8
  %596 = load %struct.zahl*, %struct.zahl** %6, align 8
  %597 = getelementptr inbounds %struct.zahl, %struct.zahl* %596, i32 0, i32 4
  %598 = load i64*, i64** %597, align 8
  store i64* %598, i64** %26, align 8
  %599 = load i64, i64* %7, align 8
  store i64 %599, i64* %28, align 8
  store i64 0, i64* %27, align 8
  br label %600

600:                                              ; preds = %665, %589
  %601 = load i64, i64* %27, align 8
  %602 = load i64, i64* %28, align 8
  %603 = icmp ult i64 %601, %602
  br i1 %603, label %604, label %668

604:                                              ; preds = %600
  %605 = load i64*, i64** %25, align 8
  %606 = load i64, i64* %27, align 8
  %607 = add i64 %606, 0
  %608 = getelementptr inbounds i64, i64* %605, i64 %607
  %609 = load i64, i64* %608, align 8
  %610 = load i64*, i64** %26, align 8
  %611 = load i64, i64* %27, align 8
  %612 = add i64 %611, 0
  %613 = getelementptr inbounds i64, i64* %610, i64 %612
  %614 = load i64, i64* %613, align 8
  %615 = or i64 %609, %614
  %616 = load i64*, i64** %24, align 8
  %617 = load i64, i64* %27, align 8
  %618 = add i64 %617, 0
  %619 = getelementptr inbounds i64, i64* %616, i64 %618
  store i64 %615, i64* %619, align 8
  %620 = load i64*, i64** %25, align 8
  %621 = load i64, i64* %27, align 8
  %622 = add i64 %621, 1
  %623 = getelementptr inbounds i64, i64* %620, i64 %622
  %624 = load i64, i64* %623, align 8
  %625 = load i64*, i64** %26, align 8
  %626 = load i64, i64* %27, align 8
  %627 = add i64 %626, 1
  %628 = getelementptr inbounds i64, i64* %625, i64 %627
  %629 = load i64, i64* %628, align 8
  %630 = or i64 %624, %629
  %631 = load i64*, i64** %24, align 8
  %632 = load i64, i64* %27, align 8
  %633 = add i64 %632, 1
  %634 = getelementptr inbounds i64, i64* %631, i64 %633
  store i64 %630, i64* %634, align 8
  %635 = load i64*, i64** %25, align 8
  %636 = load i64, i64* %27, align 8
  %637 = add i64 %636, 2
  %638 = getelementptr inbounds i64, i64* %635, i64 %637
  %639 = load i64, i64* %638, align 8
  %640 = load i64*, i64** %26, align 8
  %641 = load i64, i64* %27, align 8
  %642 = add i64 %641, 2
  %643 = getelementptr inbounds i64, i64* %640, i64 %642
  %644 = load i64, i64* %643, align 8
  %645 = or i64 %639, %644
  %646 = load i64*, i64** %24, align 8
  %647 = load i64, i64* %27, align 8
  %648 = add i64 %647, 2
  %649 = getelementptr inbounds i64, i64* %646, i64 %648
  store i64 %645, i64* %649, align 8
  %650 = load i64*, i64** %25, align 8
  %651 = load i64, i64* %27, align 8
  %652 = add i64 %651, 3
  %653 = getelementptr inbounds i64, i64* %650, i64 %652
  %654 = load i64, i64* %653, align 8
  %655 = load i64*, i64** %26, align 8
  %656 = load i64, i64* %27, align 8
  %657 = add i64 %656, 3
  %658 = getelementptr inbounds i64, i64* %655, i64 %657
  %659 = load i64, i64* %658, align 8
  %660 = or i64 %654, %659
  %661 = load i64*, i64** %24, align 8
  %662 = load i64, i64* %27, align 8
  %663 = add i64 %662, 3
  %664 = getelementptr inbounds i64, i64* %661, i64 %663
  store i64 %660, i64* %664, align 8
  br label %665

665:                                              ; preds = %604
  %666 = load i64, i64* %27, align 8
  %667 = add i64 %666, 4
  store i64 %667, i64* %27, align 8
  br label %600, !llvm.loop !16

668:                                              ; preds = %600
  br label %669

669:                                              ; preds = %668
  %670 = load %struct.zahl*, %struct.zahl** %4, align 8
  %671 = getelementptr inbounds %struct.zahl, %struct.zahl* %670, i32 0, i32 4
  %672 = load i64*, i64** %671, align 8
  %673 = load %struct.zahl*, %struct.zahl** %6, align 8
  %674 = getelementptr inbounds %struct.zahl, %struct.zahl* %673, i32 0, i32 4
  %675 = load i64*, i64** %674, align 8
  %676 = load i64, i64* %7, align 8
  %677 = load i64, i64* %8, align 8
  %678 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %672, i64* noundef %675, i64 noundef %676, i64 noundef %677)
  br label %679

679:                                              ; preds = %669, %578
  br label %680

680:                                              ; preds = %679, %490
  br label %681

681:                                              ; preds = %680, %298
  %682 = load i64, i64* %8, align 8
  %683 = load %struct.zahl*, %struct.zahl** %4, align 8
  %684 = getelementptr inbounds %struct.zahl, %struct.zahl* %683, i32 0, i32 2
  store i64 %682, i64* %684, align 8
  %685 = load %struct.zahl*, %struct.zahl** %5, align 8
  %686 = call i32 @zsignum(%struct.zahl* noundef %685)
  %687 = load %struct.zahl*, %struct.zahl** %6, align 8
  %688 = call i32 @zsignum(%struct.zahl* noundef %687)
  %689 = add nsw i32 %686, %688
  %690 = icmp eq i32 %689, 2
  %691 = zext i1 %690 to i32
  %692 = mul nsw i32 %691, 2
  %693 = sub nsw i32 %692, 1
  %694 = load %struct.zahl*, %struct.zahl** %4, align 8
  %695 = getelementptr inbounds %struct.zahl, %struct.zahl* %694, i32 0, i32 0
  store i32 %693, i32* %695, align 8
  br label %696

696:                                              ; preds = %681, %65, %46
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
