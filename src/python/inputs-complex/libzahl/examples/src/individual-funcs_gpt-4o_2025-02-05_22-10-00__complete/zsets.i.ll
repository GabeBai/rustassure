; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsets.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsets.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_str_num = external global [1 x %struct.zahl], align 8
@libzahl_const_1e19 = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zsets(%struct.zahl* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 45
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 43
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ true, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = load i8*, i8** %5, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = call i32* @__error()
  store i32 22, i32* %37, align 4
  store i32 -1, i32* %3, align 4
  br label %313

38:                                               ; preds = %21
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %59, %38
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = call i32 @isdigit(i32 noundef %47) #3
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = call i32* @__error()
  store i32 22, i32* %57, align 4
  store i32 -1, i32* %3, align 4
  br label %313

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %8, align 8
  br label %40, !llvm.loop !10

62:                                               ; preds = %40
  %63 = load %struct.zahl*, %struct.zahl** %4, align 8
  %64 = getelementptr inbounds %struct.zahl, %struct.zahl* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0))
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = srem i64 %69, 19
  switch i64 %70, label %298 [
    i64 0, label %79
    i64 18, label %90
    i64 17, label %101
    i64 16, label %112
    i64 15, label %123
    i64 14, label %134
    i64 13, label %145
    i64 12, label %156
    i64 11, label %167
    i64 10, label %178
    i64 9, label %189
    i64 8, label %200
    i64 7, label %211
    i64 6, label %222
    i64 5, label %233
    i64 4, label %244
    i64 3, label %255
    i64 2, label %266
    i64 1, label %277
  ]

71:                                               ; No predecessors!
  br label %72

72:                                               ; preds = %291, %290, %71
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %297

76:                                               ; preds = %72
  %77 = load %struct.zahl*, %struct.zahl** %4, align 8
  %78 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zmul(%struct.zahl* noundef %77, %struct.zahl* noundef %78, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %79

79:                                               ; preds = %62, %76
  %80 = load i64, i64* %6, align 8
  %81 = mul i64 %80, 10
  store i64 %81, i64* %6, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  %84 = load i8, i8* %82, align 1
  %85 = sext i8 %84 to i32
  %86 = and i32 %85, 15
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %62, %79
  %91 = load i64, i64* %6, align 8
  %92 = mul i64 %91, 10
  store i64 %92, i64* %6, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  %95 = load i8, i8* %93, align 1
  %96 = sext i8 %95 to i32
  %97 = and i32 %96, 15
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %6, align 8
  br label %101

101:                                              ; preds = %62, %90
  %102 = load i64, i64* %6, align 8
  %103 = mul i64 %102, 10
  store i64 %103, i64* %6, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %5, align 8
  %106 = load i8, i8* %104, align 1
  %107 = sext i8 %106 to i32
  %108 = and i32 %107, 15
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %6, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %6, align 8
  br label %112

112:                                              ; preds = %62, %101
  %113 = load i64, i64* %6, align 8
  %114 = mul i64 %113, 10
  store i64 %114, i64* %6, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %5, align 8
  %117 = load i8, i8* %115, align 1
  %118 = sext i8 %117 to i32
  %119 = and i32 %118, 15
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %6, align 8
  br label %123

123:                                              ; preds = %62, %112
  %124 = load i64, i64* %6, align 8
  %125 = mul i64 %124, 10
  store i64 %125, i64* %6, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %5, align 8
  %128 = load i8, i8* %126, align 1
  %129 = sext i8 %128 to i32
  %130 = and i32 %129, 15
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %6, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %6, align 8
  br label %134

134:                                              ; preds = %62, %123
  %135 = load i64, i64* %6, align 8
  %136 = mul i64 %135, 10
  store i64 %136, i64* %6, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %5, align 8
  %139 = load i8, i8* %137, align 1
  %140 = sext i8 %139 to i32
  %141 = and i32 %140, 15
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %6, align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* %6, align 8
  br label %145

145:                                              ; preds = %62, %134
  %146 = load i64, i64* %6, align 8
  %147 = mul i64 %146, 10
  store i64 %147, i64* %6, align 8
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %5, align 8
  %150 = load i8, i8* %148, align 1
  %151 = sext i8 %150 to i32
  %152 = and i32 %151, 15
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %6, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %6, align 8
  br label %156

156:                                              ; preds = %62, %145
  %157 = load i64, i64* %6, align 8
  %158 = mul i64 %157, 10
  store i64 %158, i64* %6, align 8
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %5, align 8
  %161 = load i8, i8* %159, align 1
  %162 = sext i8 %161 to i32
  %163 = and i32 %162, 15
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %6, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %6, align 8
  br label %167

167:                                              ; preds = %62, %156
  %168 = load i64, i64* %6, align 8
  %169 = mul i64 %168, 10
  store i64 %169, i64* %6, align 8
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %5, align 8
  %172 = load i8, i8* %170, align 1
  %173 = sext i8 %172 to i32
  %174 = and i32 %173, 15
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %6, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %6, align 8
  br label %178

178:                                              ; preds = %62, %167
  %179 = load i64, i64* %6, align 8
  %180 = mul i64 %179, 10
  store i64 %180, i64* %6, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %5, align 8
  %183 = load i8, i8* %181, align 1
  %184 = sext i8 %183 to i32
  %185 = and i32 %184, 15
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %6, align 8
  %188 = add i64 %187, %186
  store i64 %188, i64* %6, align 8
  br label %189

189:                                              ; preds = %62, %178
  %190 = load i64, i64* %6, align 8
  %191 = mul i64 %190, 10
  store i64 %191, i64* %6, align 8
  %192 = load i8*, i8** %5, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %5, align 8
  %194 = load i8, i8* %192, align 1
  %195 = sext i8 %194 to i32
  %196 = and i32 %195, 15
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %6, align 8
  %199 = add i64 %198, %197
  store i64 %199, i64* %6, align 8
  br label %200

200:                                              ; preds = %62, %189
  %201 = load i64, i64* %6, align 8
  %202 = mul i64 %201, 10
  store i64 %202, i64* %6, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %5, align 8
  %205 = load i8, i8* %203, align 1
  %206 = sext i8 %205 to i32
  %207 = and i32 %206, 15
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* %6, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %6, align 8
  br label %211

211:                                              ; preds = %62, %200
  %212 = load i64, i64* %6, align 8
  %213 = mul i64 %212, 10
  store i64 %213, i64* %6, align 8
  %214 = load i8*, i8** %5, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %5, align 8
  %216 = load i8, i8* %214, align 1
  %217 = sext i8 %216 to i32
  %218 = and i32 %217, 15
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %6, align 8
  %221 = add i64 %220, %219
  store i64 %221, i64* %6, align 8
  br label %222

222:                                              ; preds = %62, %211
  %223 = load i64, i64* %6, align 8
  %224 = mul i64 %223, 10
  store i64 %224, i64* %6, align 8
  %225 = load i8*, i8** %5, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %5, align 8
  %227 = load i8, i8* %225, align 1
  %228 = sext i8 %227 to i32
  %229 = and i32 %228, 15
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %6, align 8
  %232 = add i64 %231, %230
  store i64 %232, i64* %6, align 8
  br label %233

233:                                              ; preds = %62, %222
  %234 = load i64, i64* %6, align 8
  %235 = mul i64 %234, 10
  store i64 %235, i64* %6, align 8
  %236 = load i8*, i8** %5, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %5, align 8
  %238 = load i8, i8* %236, align 1
  %239 = sext i8 %238 to i32
  %240 = and i32 %239, 15
  %241 = sext i32 %240 to i64
  %242 = load i64, i64* %6, align 8
  %243 = add i64 %242, %241
  store i64 %243, i64* %6, align 8
  br label %244

244:                                              ; preds = %62, %233
  %245 = load i64, i64* %6, align 8
  %246 = mul i64 %245, 10
  store i64 %246, i64* %6, align 8
  %247 = load i8*, i8** %5, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %5, align 8
  %249 = load i8, i8* %247, align 1
  %250 = sext i8 %249 to i32
  %251 = and i32 %250, 15
  %252 = sext i32 %251 to i64
  %253 = load i64, i64* %6, align 8
  %254 = add i64 %253, %252
  store i64 %254, i64* %6, align 8
  br label %255

255:                                              ; preds = %62, %244
  %256 = load i64, i64* %6, align 8
  %257 = mul i64 %256, 10
  store i64 %257, i64* %6, align 8
  %258 = load i8*, i8** %5, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %5, align 8
  %260 = load i8, i8* %258, align 1
  %261 = sext i8 %260 to i32
  %262 = and i32 %261, 15
  %263 = sext i32 %262 to i64
  %264 = load i64, i64* %6, align 8
  %265 = add i64 %264, %263
  store i64 %265, i64* %6, align 8
  br label %266

266:                                              ; preds = %62, %255
  %267 = load i64, i64* %6, align 8
  %268 = mul i64 %267, 10
  store i64 %268, i64* %6, align 8
  %269 = load i8*, i8** %5, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %5, align 8
  %271 = load i8, i8* %269, align 1
  %272 = sext i8 %271 to i32
  %273 = and i32 %272, 15
  %274 = sext i32 %273 to i64
  %275 = load i64, i64* %6, align 8
  %276 = add i64 %275, %274
  store i64 %276, i64* %6, align 8
  br label %277

277:                                              ; preds = %62, %266
  %278 = load i64, i64* %6, align 8
  %279 = mul i64 %278, 10
  store i64 %279, i64* %6, align 8
  %280 = load i8*, i8** %5, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %5, align 8
  %282 = load i8, i8* %280, align 1
  %283 = sext i8 %282 to i32
  %284 = and i32 %283, 15
  %285 = sext i32 %284 to i64
  %286 = load i64, i64* %6, align 8
  %287 = add i64 %286, %285
  store i64 %287, i64* %6, align 8
  %288 = load i64, i64* %6, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %277
  br label %72, !llvm.loop !12

291:                                              ; preds = %277
  %292 = load i64, i64* %6, align 8
  %293 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 4), align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 0
  store i64 %292, i64* %294, align 8
  %295 = load %struct.zahl*, %struct.zahl** %4, align 8
  %296 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zadd(%struct.zahl* noundef %295, %struct.zahl* noundef %296, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0))
  br label %72, !llvm.loop !12

297:                                              ; preds = %72
  br label %298

298:                                              ; preds = %297, %62
  %299 = load i32, i32* %7, align 4
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i32
  %304 = sext i32 %303 to i64
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %298
  %307 = load %struct.zahl*, %struct.zahl** %4, align 8
  %308 = call i32 @zsignum(%struct.zahl* noundef %307)
  %309 = sub nsw i32 0, %308
  %310 = load %struct.zahl*, %struct.zahl** %4, align 8
  %311 = getelementptr inbounds %struct.zahl, %struct.zahl* %310, i32 0, i32 0
  store i32 %309, i32* %311, align 8
  br label %312

312:                                              ; preds = %306, %298
  store i32 0, i32* %3, align 4
  br label %313

313:                                              ; preds = %312, %56, %36
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare i32* @__error() #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isdigit(i32 noundef) #2

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmul(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zadd(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn }

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
