; ModuleID = 'adler32.c'
source_filename = "adler32.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @adler32(i64 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = lshr i64 %10, 16
  %12 = and i64 %11, 65535
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %13, 65535
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %43

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp uge i64 %24, 65521
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %27, 65521
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp uge i64 %33, 65521
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %36, 65521
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = shl i64 %40, 16
  %42 = or i64 %39, %41
  store i64 %42, i64* %4, align 8
  br label %422

43:                                               ; preds = %3
  %44 = load i8*, i8** %6, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i64 1, i64* %4, align 8
  br label %422

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = icmp ult i32 %48, 16
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %55, %50
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %7, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  %58 = load i8, i8* %56, align 1
  %59 = zext i8 %58 to i64
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %8, align 8
  br label %51, !llvm.loop !10

65:                                               ; preds = %51
  %66 = load i64, i64* %5, align 8
  %67 = icmp uge i64 %66, 65521
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* %5, align 8
  %70 = sub i64 %69, 65521
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i64, i64* %8, align 8
  %73 = urem i64 %72, 65521
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %8, align 8
  %76 = shl i64 %75, 16
  %77 = or i64 %74, %76
  store i64 %77, i64* %4, align 8
  br label %422

78:                                               ; preds = %47
  br label %79

79:                                               ; preds = %236, %78
  %80 = load i32, i32* %7, align 4
  %81 = icmp uge i32 %80, 5552
  br i1 %81, label %82, label %241

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = sub i32 %83, 5552
  store i32 %84, i32* %7, align 4
  store i32 347, i32* %9, align 4
  br label %85

85:                                               ; preds = %232, %82
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i64
  %90 = load i64, i64* %5, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %8, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i64
  %99 = load i64, i64* %5, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %8, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  %108 = load i64, i64* %5, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %5, align 8
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %8, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i64
  %117 = load i64, i64* %5, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %5, align 8
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* %8, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %8, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 4
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i64
  %126 = load i64, i64* %5, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %5, align 8
  %128 = load i64, i64* %5, align 8
  %129 = load i64, i64* %8, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %8, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 5
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i64
  %135 = load i64, i64* %5, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %5, align 8
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* %8, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %8, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 6
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i64
  %144 = load i64, i64* %5, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %5, align 8
  %146 = load i64, i64* %5, align 8
  %147 = load i64, i64* %8, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %8, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 7
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i64
  %153 = load i64, i64* %5, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %5, align 8
  %155 = load i64, i64* %5, align 8
  %156 = load i64, i64* %8, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %8, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 8
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i64
  %162 = load i64, i64* %5, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %5, align 8
  %164 = load i64, i64* %5, align 8
  %165 = load i64, i64* %8, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %8, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 9
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i64
  %171 = load i64, i64* %5, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %5, align 8
  %173 = load i64, i64* %5, align 8
  %174 = load i64, i64* %8, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %8, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 10
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i64
  %180 = load i64, i64* %5, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %5, align 8
  %182 = load i64, i64* %5, align 8
  %183 = load i64, i64* %8, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %8, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 11
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i64
  %189 = load i64, i64* %5, align 8
  %190 = add i64 %189, %188
  store i64 %190, i64* %5, align 8
  %191 = load i64, i64* %5, align 8
  %192 = load i64, i64* %8, align 8
  %193 = add i64 %192, %191
  store i64 %193, i64* %8, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 12
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i64
  %198 = load i64, i64* %5, align 8
  %199 = add i64 %198, %197
  store i64 %199, i64* %5, align 8
  %200 = load i64, i64* %5, align 8
  %201 = load i64, i64* %8, align 8
  %202 = add i64 %201, %200
  store i64 %202, i64* %8, align 8
  %203 = load i8*, i8** %6, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 13
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i64
  %207 = load i64, i64* %5, align 8
  %208 = add i64 %207, %206
  store i64 %208, i64* %5, align 8
  %209 = load i64, i64* %5, align 8
  %210 = load i64, i64* %8, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %8, align 8
  %212 = load i8*, i8** %6, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 14
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i64
  %216 = load i64, i64* %5, align 8
  %217 = add i64 %216, %215
  store i64 %217, i64* %5, align 8
  %218 = load i64, i64* %5, align 8
  %219 = load i64, i64* %8, align 8
  %220 = add i64 %219, %218
  store i64 %220, i64* %8, align 8
  %221 = load i8*, i8** %6, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 15
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i64
  %225 = load i64, i64* %5, align 8
  %226 = add i64 %225, %224
  store i64 %226, i64* %5, align 8
  %227 = load i64, i64* %5, align 8
  %228 = load i64, i64* %8, align 8
  %229 = add i64 %228, %227
  store i64 %229, i64* %8, align 8
  %230 = load i8*, i8** %6, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 16
  store i8* %231, i8** %6, align 8
  br label %232

232:                                              ; preds = %85
  %233 = load i32, i32* %9, align 4
  %234 = add i32 %233, -1
  store i32 %234, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %85, label %236, !llvm.loop !12

236:                                              ; preds = %232
  %237 = load i64, i64* %5, align 8
  %238 = urem i64 %237, 65521
  store i64 %238, i64* %5, align 8
  %239 = load i64, i64* %8, align 8
  %240 = urem i64 %239, 65521
  store i64 %240, i64* %8, align 8
  br label %79, !llvm.loop !13

241:                                              ; preds = %79
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %417

244:                                              ; preds = %241
  br label %245

245:                                              ; preds = %248, %244
  %246 = load i32, i32* %7, align 4
  %247 = icmp uge i32 %246, 16
  br i1 %247, label %248, label %397

248:                                              ; preds = %245
  %249 = load i32, i32* %7, align 4
  %250 = sub i32 %249, 16
  store i32 %250, i32* %7, align 4
  %251 = load i8*, i8** %6, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i64
  %255 = load i64, i64* %5, align 8
  %256 = add i64 %255, %254
  store i64 %256, i64* %5, align 8
  %257 = load i64, i64* %5, align 8
  %258 = load i64, i64* %8, align 8
  %259 = add i64 %258, %257
  store i64 %259, i64* %8, align 8
  %260 = load i8*, i8** %6, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 1
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i64
  %264 = load i64, i64* %5, align 8
  %265 = add i64 %264, %263
  store i64 %265, i64* %5, align 8
  %266 = load i64, i64* %5, align 8
  %267 = load i64, i64* %8, align 8
  %268 = add i64 %267, %266
  store i64 %268, i64* %8, align 8
  %269 = load i8*, i8** %6, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 2
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i64
  %273 = load i64, i64* %5, align 8
  %274 = add i64 %273, %272
  store i64 %274, i64* %5, align 8
  %275 = load i64, i64* %5, align 8
  %276 = load i64, i64* %8, align 8
  %277 = add i64 %276, %275
  store i64 %277, i64* %8, align 8
  %278 = load i8*, i8** %6, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 3
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i64
  %282 = load i64, i64* %5, align 8
  %283 = add i64 %282, %281
  store i64 %283, i64* %5, align 8
  %284 = load i64, i64* %5, align 8
  %285 = load i64, i64* %8, align 8
  %286 = add i64 %285, %284
  store i64 %286, i64* %8, align 8
  %287 = load i8*, i8** %6, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 4
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i64
  %291 = load i64, i64* %5, align 8
  %292 = add i64 %291, %290
  store i64 %292, i64* %5, align 8
  %293 = load i64, i64* %5, align 8
  %294 = load i64, i64* %8, align 8
  %295 = add i64 %294, %293
  store i64 %295, i64* %8, align 8
  %296 = load i8*, i8** %6, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 5
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i64
  %300 = load i64, i64* %5, align 8
  %301 = add i64 %300, %299
  store i64 %301, i64* %5, align 8
  %302 = load i64, i64* %5, align 8
  %303 = load i64, i64* %8, align 8
  %304 = add i64 %303, %302
  store i64 %304, i64* %8, align 8
  %305 = load i8*, i8** %6, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 6
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i64
  %309 = load i64, i64* %5, align 8
  %310 = add i64 %309, %308
  store i64 %310, i64* %5, align 8
  %311 = load i64, i64* %5, align 8
  %312 = load i64, i64* %8, align 8
  %313 = add i64 %312, %311
  store i64 %313, i64* %8, align 8
  %314 = load i8*, i8** %6, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 7
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i64
  %318 = load i64, i64* %5, align 8
  %319 = add i64 %318, %317
  store i64 %319, i64* %5, align 8
  %320 = load i64, i64* %5, align 8
  %321 = load i64, i64* %8, align 8
  %322 = add i64 %321, %320
  store i64 %322, i64* %8, align 8
  %323 = load i8*, i8** %6, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 8
  %325 = load i8, i8* %324, align 1
  %326 = zext i8 %325 to i64
  %327 = load i64, i64* %5, align 8
  %328 = add i64 %327, %326
  store i64 %328, i64* %5, align 8
  %329 = load i64, i64* %5, align 8
  %330 = load i64, i64* %8, align 8
  %331 = add i64 %330, %329
  store i64 %331, i64* %8, align 8
  %332 = load i8*, i8** %6, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 9
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i64
  %336 = load i64, i64* %5, align 8
  %337 = add i64 %336, %335
  store i64 %337, i64* %5, align 8
  %338 = load i64, i64* %5, align 8
  %339 = load i64, i64* %8, align 8
  %340 = add i64 %339, %338
  store i64 %340, i64* %8, align 8
  %341 = load i8*, i8** %6, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 10
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i64
  %345 = load i64, i64* %5, align 8
  %346 = add i64 %345, %344
  store i64 %346, i64* %5, align 8
  %347 = load i64, i64* %5, align 8
  %348 = load i64, i64* %8, align 8
  %349 = add i64 %348, %347
  store i64 %349, i64* %8, align 8
  %350 = load i8*, i8** %6, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 11
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i64
  %354 = load i64, i64* %5, align 8
  %355 = add i64 %354, %353
  store i64 %355, i64* %5, align 8
  %356 = load i64, i64* %5, align 8
  %357 = load i64, i64* %8, align 8
  %358 = add i64 %357, %356
  store i64 %358, i64* %8, align 8
  %359 = load i8*, i8** %6, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 12
  %361 = load i8, i8* %360, align 1
  %362 = zext i8 %361 to i64
  %363 = load i64, i64* %5, align 8
  %364 = add i64 %363, %362
  store i64 %364, i64* %5, align 8
  %365 = load i64, i64* %5, align 8
  %366 = load i64, i64* %8, align 8
  %367 = add i64 %366, %365
  store i64 %367, i64* %8, align 8
  %368 = load i8*, i8** %6, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 13
  %370 = load i8, i8* %369, align 1
  %371 = zext i8 %370 to i64
  %372 = load i64, i64* %5, align 8
  %373 = add i64 %372, %371
  store i64 %373, i64* %5, align 8
  %374 = load i64, i64* %5, align 8
  %375 = load i64, i64* %8, align 8
  %376 = add i64 %375, %374
  store i64 %376, i64* %8, align 8
  %377 = load i8*, i8** %6, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 14
  %379 = load i8, i8* %378, align 1
  %380 = zext i8 %379 to i64
  %381 = load i64, i64* %5, align 8
  %382 = add i64 %381, %380
  store i64 %382, i64* %5, align 8
  %383 = load i64, i64* %5, align 8
  %384 = load i64, i64* %8, align 8
  %385 = add i64 %384, %383
  store i64 %385, i64* %8, align 8
  %386 = load i8*, i8** %6, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 15
  %388 = load i8, i8* %387, align 1
  %389 = zext i8 %388 to i64
  %390 = load i64, i64* %5, align 8
  %391 = add i64 %390, %389
  store i64 %391, i64* %5, align 8
  %392 = load i64, i64* %5, align 8
  %393 = load i64, i64* %8, align 8
  %394 = add i64 %393, %392
  store i64 %394, i64* %8, align 8
  %395 = load i8*, i8** %6, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 16
  store i8* %396, i8** %6, align 8
  br label %245, !llvm.loop !14

397:                                              ; preds = %245
  br label %398

398:                                              ; preds = %402, %397
  %399 = load i32, i32* %7, align 4
  %400 = add i32 %399, -1
  store i32 %400, i32* %7, align 4
  %401 = icmp ne i32 %399, 0
  br i1 %401, label %402, label %412

402:                                              ; preds = %398
  %403 = load i8*, i8** %6, align 8
  %404 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %404, i8** %6, align 8
  %405 = load i8, i8* %403, align 1
  %406 = zext i8 %405 to i64
  %407 = load i64, i64* %5, align 8
  %408 = add i64 %407, %406
  store i64 %408, i64* %5, align 8
  %409 = load i64, i64* %5, align 8
  %410 = load i64, i64* %8, align 8
  %411 = add i64 %410, %409
  store i64 %411, i64* %8, align 8
  br label %398, !llvm.loop !15

412:                                              ; preds = %398
  %413 = load i64, i64* %5, align 8
  %414 = urem i64 %413, 65521
  store i64 %414, i64* %5, align 8
  %415 = load i64, i64* %8, align 8
  %416 = urem i64 %415, 65521
  store i64 %416, i64* %8, align 8
  br label %417

417:                                              ; preds = %412, %241
  %418 = load i64, i64* %5, align 8
  %419 = load i64, i64* %8, align 8
  %420 = shl i64 %419, 16
  %421 = or i64 %418, %420
  store i64 %421, i64* %4, align 8
  br label %422

422:                                              ; preds = %417, %71, %46, %38
  %423 = load i64, i64* %4, align 8
  ret i64 %423
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @adler32_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @adler32_combine_(i64 noundef %7, i64 noundef %8, i64 noundef %9)
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @adler32_combine_(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 4294967295, i64* %4, align 8
  br label %74

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = srem i64 %15, 65521
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %5, align 8
  %20 = and i64 %19, 65535
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* %8, align 8
  %24 = mul i64 %22, %23
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = urem i64 %25, 65521
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = and i64 %27, 65535
  %29 = add i64 %28, 65521
  %30 = sub i64 %29, 1
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %5, align 8
  %34 = lshr i64 %33, 16
  %35 = and i64 %34, 65535
  %36 = load i64, i64* %6, align 8
  %37 = lshr i64 %36, 16
  %38 = and i64 %37, 65535
  %39 = add i64 %35, %38
  %40 = add i64 %39, 65521
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = sub i64 %40, %42
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp uge i64 %46, 65521
  br i1 %47, label %48, label %51

48:                                               ; preds = %14
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %49, 65521
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %48, %14
  %52 = load i64, i64* %8, align 8
  %53 = icmp uge i64 %52, 65521
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %55, 65521
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i64, i64* %9, align 8
  %59 = icmp uge i64 %58, 131042
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* %9, align 8
  %62 = sub i64 %61, 131042
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i64, i64* %9, align 8
  %65 = icmp uge i64 %64, 65521
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %67, 65521
  store i64 %68, i64* %9, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = shl i64 %71, 16
  %73 = or i64 %70, %72
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %69, %13
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @adler32_combine64(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @adler32_combine_(i64 noundef %7, i64 noundef %8, i64 noundef %9)
  ret i64 %10
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
