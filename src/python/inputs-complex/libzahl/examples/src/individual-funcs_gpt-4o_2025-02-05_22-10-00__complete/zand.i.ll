; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zand.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zand.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zand(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store %struct.zahl* %2, %struct.zahl** %6, align 8
  %22 = load %struct.zahl*, %struct.zahl** %5, align 8
  %23 = call i32 @zzero(%struct.zahl* noundef %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.zahl*, %struct.zahl** %4, align 8
  %32 = getelementptr inbounds %struct.zahl, %struct.zahl* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %397

33:                                               ; preds = %3
  %34 = load %struct.zahl*, %struct.zahl** %6, align 8
  %35 = call i32 @zzero(%struct.zahl* noundef %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.zahl*, %struct.zahl** %4, align 8
  %44 = getelementptr inbounds %struct.zahl, %struct.zahl* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %397

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.zahl*, %struct.zahl** %5, align 8
  %48 = getelementptr inbounds %struct.zahl, %struct.zahl* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.zahl*, %struct.zahl** %6, align 8
  %51 = getelementptr inbounds %struct.zahl, %struct.zahl* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.zahl*, %struct.zahl** %5, align 8
  %56 = getelementptr inbounds %struct.zahl, %struct.zahl* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  br label %62

58:                                               ; preds = %46
  %59 = load %struct.zahl*, %struct.zahl** %6, align 8
  %60 = getelementptr inbounds %struct.zahl, %struct.zahl* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i64 [ %57, %54 ], [ %61, %58 ]
  %64 = load %struct.zahl*, %struct.zahl** %4, align 8
  %65 = getelementptr inbounds %struct.zahl, %struct.zahl* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.zahl*, %struct.zahl** %4, align 8
  %67 = load %struct.zahl*, %struct.zahl** %5, align 8
  %68 = icmp eq %struct.zahl* %66, %67
  br i1 %68, label %69, label %153

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.zahl*, %struct.zahl** %4, align 8
  %72 = getelementptr inbounds %struct.zahl, %struct.zahl* %71, i32 0, i32 4
  %73 = load i64*, i64** %72, align 8
  store i64* %73, i64** %7, align 8
  %74 = load %struct.zahl*, %struct.zahl** %4, align 8
  %75 = getelementptr inbounds %struct.zahl, %struct.zahl* %74, i32 0, i32 4
  %76 = load i64*, i64** %75, align 8
  store i64* %76, i64** %8, align 8
  %77 = load %struct.zahl*, %struct.zahl** %6, align 8
  %78 = getelementptr inbounds %struct.zahl, %struct.zahl* %77, i32 0, i32 4
  %79 = load i64*, i64** %78, align 8
  store i64* %79, i64** %9, align 8
  %80 = load %struct.zahl*, %struct.zahl** %4, align 8
  %81 = getelementptr inbounds %struct.zahl, %struct.zahl* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %83

83:                                               ; preds = %148, %70
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %151

87:                                               ; preds = %83
  %88 = load i64*, i64** %8, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, 0
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, 0
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = and i64 %92, %97
  %99 = load i64*, i64** %7, align 8
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 0
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 %98, i64* %102, align 8
  %103 = load i64*, i64** %8, align 8
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %9, align 8
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, 1
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = and i64 %107, %112
  %114 = load i64*, i64** %7, align 8
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %115, 1
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 %113, i64* %117, align 8
  %118 = load i64*, i64** %8, align 8
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %119, 2
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = add i64 %124, 2
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = and i64 %122, %127
  %129 = load i64*, i64** %7, align 8
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, 2
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  store i64 %128, i64* %132, align 8
  %133 = load i64*, i64** %8, align 8
  %134 = load i64, i64* %10, align 8
  %135 = add i64 %134, 3
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %9, align 8
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %139, 3
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = and i64 %137, %142
  %144 = load i64*, i64** %7, align 8
  %145 = load i64, i64* %10, align 8
  %146 = add i64 %145, 3
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  store i64 %143, i64* %147, align 8
  br label %148

148:                                              ; preds = %87
  %149 = load i64, i64* %10, align 8
  %150 = add i64 %149, 4
  store i64 %150, i64* %10, align 8
  br label %83, !llvm.loop !10

151:                                              ; preds = %83
  br label %152

152:                                              ; preds = %151
  br label %346

153:                                              ; preds = %62
  %154 = load %struct.zahl*, %struct.zahl** %4, align 8
  %155 = load %struct.zahl*, %struct.zahl** %6, align 8
  %156 = icmp eq %struct.zahl* %154, %155
  %157 = xor i1 %156, true
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = sext i32 %159 to i64
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %246

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162
  %164 = load %struct.zahl*, %struct.zahl** %4, align 8
  %165 = getelementptr inbounds %struct.zahl, %struct.zahl* %164, i32 0, i32 4
  %166 = load i64*, i64** %165, align 8
  store i64* %166, i64** %12, align 8
  %167 = load %struct.zahl*, %struct.zahl** %4, align 8
  %168 = getelementptr inbounds %struct.zahl, %struct.zahl* %167, i32 0, i32 4
  %169 = load i64*, i64** %168, align 8
  store i64* %169, i64** %13, align 8
  %170 = load %struct.zahl*, %struct.zahl** %5, align 8
  %171 = getelementptr inbounds %struct.zahl, %struct.zahl* %170, i32 0, i32 4
  %172 = load i64*, i64** %171, align 8
  store i64* %172, i64** %14, align 8
  %173 = load %struct.zahl*, %struct.zahl** %4, align 8
  %174 = getelementptr inbounds %struct.zahl, %struct.zahl* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %176

176:                                              ; preds = %241, %163
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %16, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %244

180:                                              ; preds = %176
  %181 = load i64*, i64** %13, align 8
  %182 = load i64, i64* %15, align 8
  %183 = add i64 %182, 0
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load i64*, i64** %14, align 8
  %187 = load i64, i64* %15, align 8
  %188 = add i64 %187, 0
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = and i64 %185, %190
  %192 = load i64*, i64** %12, align 8
  %193 = load i64, i64* %15, align 8
  %194 = add i64 %193, 0
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64 %191, i64* %195, align 8
  %196 = load i64*, i64** %13, align 8
  %197 = load i64, i64* %15, align 8
  %198 = add i64 %197, 1
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load i64*, i64** %14, align 8
  %202 = load i64, i64* %15, align 8
  %203 = add i64 %202, 1
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = and i64 %200, %205
  %207 = load i64*, i64** %12, align 8
  %208 = load i64, i64* %15, align 8
  %209 = add i64 %208, 1
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  store i64 %206, i64* %210, align 8
  %211 = load i64*, i64** %13, align 8
  %212 = load i64, i64* %15, align 8
  %213 = add i64 %212, 2
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = load i64*, i64** %14, align 8
  %217 = load i64, i64* %15, align 8
  %218 = add i64 %217, 2
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = and i64 %215, %220
  %222 = load i64*, i64** %12, align 8
  %223 = load i64, i64* %15, align 8
  %224 = add i64 %223, 2
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  store i64 %221, i64* %225, align 8
  %226 = load i64*, i64** %13, align 8
  %227 = load i64, i64* %15, align 8
  %228 = add i64 %227, 3
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** %14, align 8
  %232 = load i64, i64* %15, align 8
  %233 = add i64 %232, 3
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = and i64 %230, %235
  %237 = load i64*, i64** %12, align 8
  %238 = load i64, i64* %15, align 8
  %239 = add i64 %238, 3
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  store i64 %236, i64* %240, align 8
  br label %241

241:                                              ; preds = %180
  %242 = load i64, i64* %15, align 8
  %243 = add i64 %242, 4
  store i64 %243, i64* %15, align 8
  br label %176, !llvm.loop !12

244:                                              ; preds = %176
  br label %245

245:                                              ; preds = %244
  br label %345

246:                                              ; preds = %153
  br label %247

247:                                              ; preds = %246
  %248 = load %struct.zahl*, %struct.zahl** %4, align 8
  %249 = getelementptr inbounds %struct.zahl, %struct.zahl* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.zahl*, %struct.zahl** %4, align 8
  %252 = getelementptr inbounds %struct.zahl, %struct.zahl* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = icmp ult i64 %250, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %247
  %256 = load %struct.zahl*, %struct.zahl** %4, align 8
  %257 = load %struct.zahl*, %struct.zahl** %4, align 8
  %258 = getelementptr inbounds %struct.zahl, %struct.zahl* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %256, i64 noundef %259)
  br label %260

260:                                              ; preds = %255, %247
  br label %261

261:                                              ; preds = %260
  br label %262

262:                                              ; preds = %261
  %263 = load %struct.zahl*, %struct.zahl** %4, align 8
  %264 = getelementptr inbounds %struct.zahl, %struct.zahl* %263, i32 0, i32 4
  %265 = load i64*, i64** %264, align 8
  store i64* %265, i64** %17, align 8
  %266 = load %struct.zahl*, %struct.zahl** %5, align 8
  %267 = getelementptr inbounds %struct.zahl, %struct.zahl* %266, i32 0, i32 4
  %268 = load i64*, i64** %267, align 8
  store i64* %268, i64** %18, align 8
  %269 = load %struct.zahl*, %struct.zahl** %6, align 8
  %270 = getelementptr inbounds %struct.zahl, %struct.zahl* %269, i32 0, i32 4
  %271 = load i64*, i64** %270, align 8
  store i64* %271, i64** %19, align 8
  %272 = load %struct.zahl*, %struct.zahl** %4, align 8
  %273 = getelementptr inbounds %struct.zahl, %struct.zahl* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %21, align 8
  store i64 0, i64* %20, align 8
  br label %275

275:                                              ; preds = %340, %262
  %276 = load i64, i64* %20, align 8
  %277 = load i64, i64* %21, align 8
  %278 = icmp ult i64 %276, %277
  br i1 %278, label %279, label %343

279:                                              ; preds = %275
  %280 = load i64*, i64** %18, align 8
  %281 = load i64, i64* %20, align 8
  %282 = add i64 %281, 0
  %283 = getelementptr inbounds i64, i64* %280, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = load i64*, i64** %19, align 8
  %286 = load i64, i64* %20, align 8
  %287 = add i64 %286, 0
  %288 = getelementptr inbounds i64, i64* %285, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = and i64 %284, %289
  %291 = load i64*, i64** %17, align 8
  %292 = load i64, i64* %20, align 8
  %293 = add i64 %292, 0
  %294 = getelementptr inbounds i64, i64* %291, i64 %293
  store i64 %290, i64* %294, align 8
  %295 = load i64*, i64** %18, align 8
  %296 = load i64, i64* %20, align 8
  %297 = add i64 %296, 1
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = load i64*, i64** %19, align 8
  %301 = load i64, i64* %20, align 8
  %302 = add i64 %301, 1
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  %304 = load i64, i64* %303, align 8
  %305 = and i64 %299, %304
  %306 = load i64*, i64** %17, align 8
  %307 = load i64, i64* %20, align 8
  %308 = add i64 %307, 1
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  store i64 %305, i64* %309, align 8
  %310 = load i64*, i64** %18, align 8
  %311 = load i64, i64* %20, align 8
  %312 = add i64 %311, 2
  %313 = getelementptr inbounds i64, i64* %310, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = load i64*, i64** %19, align 8
  %316 = load i64, i64* %20, align 8
  %317 = add i64 %316, 2
  %318 = getelementptr inbounds i64, i64* %315, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = and i64 %314, %319
  %321 = load i64*, i64** %17, align 8
  %322 = load i64, i64* %20, align 8
  %323 = add i64 %322, 2
  %324 = getelementptr inbounds i64, i64* %321, i64 %323
  store i64 %320, i64* %324, align 8
  %325 = load i64*, i64** %18, align 8
  %326 = load i64, i64* %20, align 8
  %327 = add i64 %326, 3
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = load i64*, i64** %19, align 8
  %331 = load i64, i64* %20, align 8
  %332 = add i64 %331, 3
  %333 = getelementptr inbounds i64, i64* %330, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = and i64 %329, %334
  %336 = load i64*, i64** %17, align 8
  %337 = load i64, i64* %20, align 8
  %338 = add i64 %337, 3
  %339 = getelementptr inbounds i64, i64* %336, i64 %338
  store i64 %335, i64* %339, align 8
  br label %340

340:                                              ; preds = %279
  %341 = load i64, i64* %20, align 8
  %342 = add i64 %341, 4
  store i64 %342, i64* %20, align 8
  br label %275, !llvm.loop !13

343:                                              ; preds = %275
  br label %344

344:                                              ; preds = %343
  br label %345

345:                                              ; preds = %344, %245
  br label %346

346:                                              ; preds = %345, %152
  br label %347

347:                                              ; preds = %346
  br label %348

348:                                              ; preds = %368, %347
  %349 = load %struct.zahl*, %struct.zahl** %4, align 8
  %350 = getelementptr inbounds %struct.zahl, %struct.zahl* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %365

353:                                              ; preds = %348
  %354 = load %struct.zahl*, %struct.zahl** %4, align 8
  %355 = getelementptr inbounds %struct.zahl, %struct.zahl* %354, i32 0, i32 4
  %356 = load i64*, i64** %355, align 8
  %357 = load %struct.zahl*, %struct.zahl** %4, align 8
  %358 = getelementptr inbounds %struct.zahl, %struct.zahl* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = sub i64 %359, 1
  %361 = getelementptr inbounds i64, i64* %356, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  %364 = xor i1 %363, true
  br label %365

365:                                              ; preds = %353, %348
  %366 = phi i1 [ false, %348 ], [ %364, %353 ]
  br i1 %366, label %367, label %373

367:                                              ; preds = %365
  br label %368

368:                                              ; preds = %367
  %369 = load %struct.zahl*, %struct.zahl** %4, align 8
  %370 = getelementptr inbounds %struct.zahl, %struct.zahl* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = add i64 %371, -1
  store i64 %372, i64* %370, align 8
  br label %348, !llvm.loop !14

373:                                              ; preds = %365
  %374 = load %struct.zahl*, %struct.zahl** %4, align 8
  %375 = getelementptr inbounds %struct.zahl, %struct.zahl* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %392

378:                                              ; preds = %373
  %379 = load %struct.zahl*, %struct.zahl** %5, align 8
  %380 = call i32 @zsignum(%struct.zahl* noundef %379)
  %381 = icmp sgt i32 %380, 0
  %382 = zext i1 %381 to i32
  %383 = load %struct.zahl*, %struct.zahl** %6, align 8
  %384 = call i32 @zsignum(%struct.zahl* noundef %383)
  %385 = icmp sgt i32 %384, 0
  %386 = zext i1 %385 to i32
  %387 = add nsw i32 %382, %386
  %388 = icmp sgt i32 %387, 0
  %389 = zext i1 %388 to i32
  %390 = mul nsw i32 %389, 2
  %391 = sub nsw i32 %390, 1
  br label %393

392:                                              ; preds = %373
  br label %393

393:                                              ; preds = %392, %378
  %394 = phi i32 [ %391, %378 ], [ 0, %392 ]
  %395 = load %struct.zahl*, %struct.zahl** %4, align 8
  %396 = getelementptr inbounds %struct.zahl, %struct.zahl* %395, i32 0, i32 0
  store i32 %394, i32* %396, align 8
  br label %397

397:                                              ; preds = %30, %42, %393
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

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
