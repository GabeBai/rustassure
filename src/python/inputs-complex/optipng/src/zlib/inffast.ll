; ModuleID = 'inffast.c'
source_filename = "inffast.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.gz_header_s*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, %struct.code*, %struct.code*, i32, i32, i32, i32, i32, i32, %struct.code*, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.gz_header_s = type { i32, i64, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32 }
%struct.code = type { i8, i8, i16 }

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define hidden void @inflate_fast(%struct.z_stream_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inflate_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.code*, align 8
  %18 = alloca %struct.code*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.code, align 2
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %26 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %27 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %26, i32 0, i32 7
  %28 = load %struct.internal_state*, %struct.internal_state** %27, align 8
  %29 = bitcast %struct.internal_state* %28 to %struct.inflate_state*
  store %struct.inflate_state* %29, %struct.inflate_state** %5, align 8
  %30 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sub i32 %37, 5
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  store i8* %40, i8** %7, align 8
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 -1
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %48 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = sub i32 %46, %49
  %51 = zext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, i8* %45, i64 %52
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = sub i32 %57, 257
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %54, i64 %59
  store i8* %60, i8** %10, align 8
  %61 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %62 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %65 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %12, align 4
  %67 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %68 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  %70 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %71 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %70, i32 0, i32 13
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %14, align 8
  %73 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %74 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %73, i32 0, i32 14
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %15, align 8
  %76 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %77 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %76, i32 0, i32 15
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %16, align 4
  %79 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %80 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %79, i32 0, i32 19
  %81 = load %struct.code*, %struct.code** %80, align 8
  store %struct.code* %81, %struct.code** %17, align 8
  %82 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %83 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %82, i32 0, i32 20
  %84 = load %struct.code*, %struct.code** %83, align 8
  store %struct.code* %84, %struct.code** %18, align 8
  %85 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %86 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %85, i32 0, i32 21
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 1, %87
  %89 = sub i32 %88, 1
  store i32 %89, i32* %19, align 4
  %90 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %91 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %90, i32 0, i32 22
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 1, %92
  %94 = sub i32 %93, 1
  store i32 %94, i32* %20, align 4
  br label %95

95:                                               ; preds = %612, %2
  %96 = load i32, i32* %16, align 4
  %97 = icmp ult i32 %96, 15
  br i1 %97, label %98, label %121

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i64
  %103 = load i32, i32* %16, align 4
  %104 = zext i32 %103 to i64
  %105 = shl i64 %102, %104
  %106 = load i64, i64* %15, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %15, align 8
  %108 = load i32, i32* %16, align 4
  %109 = add i32 %108, 8
  store i32 %109, i32* %16, align 4
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i64
  %114 = load i32, i32* %16, align 4
  %115 = zext i32 %114 to i64
  %116 = shl i64 %113, %115
  %117 = load i64, i64* %15, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %15, align 8
  %119 = load i32, i32* %16, align 4
  %120 = add i32 %119, 8
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %98, %95
  %122 = load %struct.code*, %struct.code** %17, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i32, i32* %19, align 4
  %125 = zext i32 %124 to i64
  %126 = and i64 %123, %125
  %127 = getelementptr inbounds %struct.code, %struct.code* %122, i64 %126
  %128 = bitcast %struct.code* %21 to i8*
  %129 = bitcast %struct.code* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %128, i8* align 2 %129, i64 4, i1 false)
  br label %130

130:                                              ; preds = %575, %121
  %131 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  store i32 %133, i32* %22, align 4
  %134 = load i32, i32* %22, align 4
  %135 = load i64, i64* %15, align 8
  %136 = zext i32 %134 to i64
  %137 = lshr i64 %135, %136
  store i64 %137, i64* %15, align 8
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* %16, align 4
  %140 = sub i32 %139, %138
  store i32 %140, i32* %16, align 4
  %141 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 0
  %142 = load i8, i8* %141, align 2
  %143 = zext i8 %142 to i32
  store i32 %143, i32* %22, align 4
  %144 = load i32, i32* %22, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %130
  %147 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 2
  %148 = load i16, i16* %147, align 2
  %149 = trunc i16 %148 to i8
  %150 = load i8*, i8** %8, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %8, align 8
  store i8 %149, i8* %151, align 1
  br label %603

152:                                              ; preds = %130
  %153 = load i32, i32* %22, align 4
  %154 = and i32 %153, 16
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %571

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 2
  %158 = load i16, i16* %157, align 2
  %159 = zext i16 %158 to i32
  store i32 %159, i32* %23, align 4
  %160 = load i32, i32* %22, align 4
  %161 = and i32 %160, 15
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %22, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %196

164:                                              ; preds = %156
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %22, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = load i8*, i8** %6, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %6, align 8
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i64
  %173 = load i32, i32* %16, align 4
  %174 = zext i32 %173 to i64
  %175 = shl i64 %172, %174
  %176 = load i64, i64* %15, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %15, align 8
  %178 = load i32, i32* %16, align 4
  %179 = add i32 %178, 8
  store i32 %179, i32* %16, align 4
  br label %180

180:                                              ; preds = %168, %164
  %181 = load i64, i64* %15, align 8
  %182 = trunc i64 %181 to i32
  %183 = load i32, i32* %22, align 4
  %184 = shl i32 1, %183
  %185 = sub i32 %184, 1
  %186 = and i32 %182, %185
  %187 = load i32, i32* %23, align 4
  %188 = add i32 %187, %186
  store i32 %188, i32* %23, align 4
  %189 = load i32, i32* %22, align 4
  %190 = load i64, i64* %15, align 8
  %191 = zext i32 %189 to i64
  %192 = lshr i64 %190, %191
  store i64 %192, i64* %15, align 8
  %193 = load i32, i32* %22, align 4
  %194 = load i32, i32* %16, align 4
  %195 = sub i32 %194, %193
  store i32 %195, i32* %16, align 4
  br label %196

196:                                              ; preds = %180, %156
  %197 = load i32, i32* %16, align 4
  %198 = icmp ult i32 %197, 15
  br i1 %198, label %199, label %222

199:                                              ; preds = %196
  %200 = load i8*, i8** %6, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %6, align 8
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i64
  %204 = load i32, i32* %16, align 4
  %205 = zext i32 %204 to i64
  %206 = shl i64 %203, %205
  %207 = load i64, i64* %15, align 8
  %208 = add i64 %207, %206
  store i64 %208, i64* %15, align 8
  %209 = load i32, i32* %16, align 4
  %210 = add i32 %209, 8
  store i32 %210, i32* %16, align 4
  %211 = load i8*, i8** %6, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %6, align 8
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i64
  %215 = load i32, i32* %16, align 4
  %216 = zext i32 %215 to i64
  %217 = shl i64 %214, %216
  %218 = load i64, i64* %15, align 8
  %219 = add i64 %218, %217
  store i64 %219, i64* %15, align 8
  %220 = load i32, i32* %16, align 4
  %221 = add i32 %220, 8
  store i32 %221, i32* %16, align 4
  br label %222

222:                                              ; preds = %199, %196
  %223 = load %struct.code*, %struct.code** %18, align 8
  %224 = load i64, i64* %15, align 8
  %225 = load i32, i32* %20, align 4
  %226 = zext i32 %225 to i64
  %227 = and i64 %224, %226
  %228 = getelementptr inbounds %struct.code, %struct.code* %223, i64 %227
  %229 = bitcast %struct.code* %21 to i8*
  %230 = bitcast %struct.code* %228 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %229, i8* align 2 %230, i64 4, i1 false)
  br label %231

231:                                              ; preds = %550, %222
  %232 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  store i32 %234, i32* %22, align 4
  %235 = load i32, i32* %22, align 4
  %236 = load i64, i64* %15, align 8
  %237 = zext i32 %235 to i64
  %238 = lshr i64 %236, %237
  store i64 %238, i64* %15, align 8
  %239 = load i32, i32* %22, align 4
  %240 = load i32, i32* %16, align 4
  %241 = sub i32 %240, %239
  store i32 %241, i32* %16, align 4
  %242 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 0
  %243 = load i8, i8* %242, align 2
  %244 = zext i8 %243 to i32
  store i32 %244, i32* %22, align 4
  %245 = load i32, i32* %22, align 4
  %246 = and i32 %245, 16
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %546

248:                                              ; preds = %231
  %249 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 2
  %250 = load i16, i16* %249, align 2
  %251 = zext i16 %250 to i32
  store i32 %251, i32* %24, align 4
  %252 = load i32, i32* %22, align 4
  %253 = and i32 %252, 15
  store i32 %253, i32* %22, align 4
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* %22, align 4
  %256 = icmp ult i32 %254, %255
  br i1 %256, label %257, label %285

257:                                              ; preds = %248
  %258 = load i8*, i8** %6, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %6, align 8
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i64
  %262 = load i32, i32* %16, align 4
  %263 = zext i32 %262 to i64
  %264 = shl i64 %261, %263
  %265 = load i64, i64* %15, align 8
  %266 = add i64 %265, %264
  store i64 %266, i64* %15, align 8
  %267 = load i32, i32* %16, align 4
  %268 = add i32 %267, 8
  store i32 %268, i32* %16, align 4
  %269 = load i32, i32* %16, align 4
  %270 = load i32, i32* %22, align 4
  %271 = icmp ult i32 %269, %270
  br i1 %271, label %272, label %284

272:                                              ; preds = %257
  %273 = load i8*, i8** %6, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %6, align 8
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i64
  %277 = load i32, i32* %16, align 4
  %278 = zext i32 %277 to i64
  %279 = shl i64 %276, %278
  %280 = load i64, i64* %15, align 8
  %281 = add i64 %280, %279
  store i64 %281, i64* %15, align 8
  %282 = load i32, i32* %16, align 4
  %283 = add i32 %282, 8
  store i32 %283, i32* %16, align 4
  br label %284

284:                                              ; preds = %272, %257
  br label %285

285:                                              ; preds = %284, %248
  %286 = load i64, i64* %15, align 8
  %287 = trunc i64 %286 to i32
  %288 = load i32, i32* %22, align 4
  %289 = shl i32 1, %288
  %290 = sub i32 %289, 1
  %291 = and i32 %287, %290
  %292 = load i32, i32* %24, align 4
  %293 = add i32 %292, %291
  store i32 %293, i32* %24, align 4
  %294 = load i32, i32* %22, align 4
  %295 = load i64, i64* %15, align 8
  %296 = zext i32 %294 to i64
  %297 = lshr i64 %295, %296
  store i64 %297, i64* %15, align 8
  %298 = load i32, i32* %22, align 4
  %299 = load i32, i32* %16, align 4
  %300 = sub i32 %299, %298
  store i32 %300, i32* %16, align 4
  %301 = load i8*, i8** %8, align 8
  %302 = load i8*, i8** %9, align 8
  %303 = ptrtoint i8* %301 to i64
  %304 = ptrtoint i8* %302 to i64
  %305 = sub i64 %303, %304
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %22, align 4
  %307 = load i32, i32* %24, align 4
  %308 = load i32, i32* %22, align 4
  %309 = icmp ugt i32 %307, %308
  br i1 %309, label %310, label %499

310:                                              ; preds = %285
  %311 = load i32, i32* %24, align 4
  %312 = load i32, i32* %22, align 4
  %313 = sub i32 %311, %312
  store i32 %313, i32* %22, align 4
  %314 = load i32, i32* %22, align 4
  %315 = load i32, i32* %12, align 4
  %316 = icmp ugt i32 %314, %315
  br i1 %316, label %317, label %328

317:                                              ; preds = %310
  %318 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %319 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %318, i32 0, i32 31
  %320 = load i32, i32* %319, align 8
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %324 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %323, i32 0, i32 6
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %324, align 8
  %325 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %326 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %325, i32 0, i32 0
  store i32 29, i32* %326, align 8
  br label %614

327:                                              ; preds = %317
  br label %328

328:                                              ; preds = %327, %310
  %329 = load i8*, i8** %14, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 -1
  store i8* %330, i8** %25, align 8
  %331 = load i32, i32* %13, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %364

333:                                              ; preds = %328
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* %22, align 4
  %336 = sub i32 %334, %335
  %337 = load i8*, i8** %25, align 8
  %338 = zext i32 %336 to i64
  %339 = getelementptr inbounds i8, i8* %337, i64 %338
  store i8* %339, i8** %25, align 8
  %340 = load i32, i32* %22, align 4
  %341 = load i32, i32* %23, align 4
  %342 = icmp ult i32 %340, %341
  br i1 %342, label %343, label %363

343:                                              ; preds = %333
  %344 = load i32, i32* %22, align 4
  %345 = load i32, i32* %23, align 4
  %346 = sub i32 %345, %344
  store i32 %346, i32* %23, align 4
  br label %347

347:                                              ; preds = %353, %343
  %348 = load i8*, i8** %25, align 8
  %349 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %349, i8** %25, align 8
  %350 = load i8, i8* %349, align 1
  %351 = load i8*, i8** %8, align 8
  %352 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %352, i8** %8, align 8
  store i8 %350, i8* %352, align 1
  br label %353

353:                                              ; preds = %347
  %354 = load i32, i32* %22, align 4
  %355 = add i32 %354, -1
  store i32 %355, i32* %22, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %347, label %357, !llvm.loop !10

357:                                              ; preds = %353
  %358 = load i8*, i8** %8, align 8
  %359 = load i32, i32* %24, align 4
  %360 = zext i32 %359 to i64
  %361 = sub i64 0, %360
  %362 = getelementptr inbounds i8, i8* %358, i64 %361
  store i8* %362, i8** %25, align 8
  br label %363

363:                                              ; preds = %357, %333
  br label %458

364:                                              ; preds = %328
  %365 = load i32, i32* %13, align 4
  %366 = load i32, i32* %22, align 4
  %367 = icmp ult i32 %365, %366
  br i1 %367, label %368, label %426

368:                                              ; preds = %364
  %369 = load i32, i32* %11, align 4
  %370 = load i32, i32* %13, align 4
  %371 = add i32 %369, %370
  %372 = load i32, i32* %22, align 4
  %373 = sub i32 %371, %372
  %374 = load i8*, i8** %25, align 8
  %375 = zext i32 %373 to i64
  %376 = getelementptr inbounds i8, i8* %374, i64 %375
  store i8* %376, i8** %25, align 8
  %377 = load i32, i32* %13, align 4
  %378 = load i32, i32* %22, align 4
  %379 = sub i32 %378, %377
  store i32 %379, i32* %22, align 4
  %380 = load i32, i32* %22, align 4
  %381 = load i32, i32* %23, align 4
  %382 = icmp ult i32 %380, %381
  br i1 %382, label %383, label %425

383:                                              ; preds = %368
  %384 = load i32, i32* %22, align 4
  %385 = load i32, i32* %23, align 4
  %386 = sub i32 %385, %384
  store i32 %386, i32* %23, align 4
  br label %387

387:                                              ; preds = %393, %383
  %388 = load i8*, i8** %25, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %25, align 8
  %390 = load i8, i8* %389, align 1
  %391 = load i8*, i8** %8, align 8
  %392 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %392, i8** %8, align 8
  store i8 %390, i8* %392, align 1
  br label %393

393:                                              ; preds = %387
  %394 = load i32, i32* %22, align 4
  %395 = add i32 %394, -1
  store i32 %395, i32* %22, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %387, label %397, !llvm.loop !12

397:                                              ; preds = %393
  %398 = load i8*, i8** %14, align 8
  %399 = getelementptr inbounds i8, i8* %398, i64 -1
  store i8* %399, i8** %25, align 8
  %400 = load i32, i32* %13, align 4
  %401 = load i32, i32* %23, align 4
  %402 = icmp ult i32 %400, %401
  br i1 %402, label %403, label %424

403:                                              ; preds = %397
  %404 = load i32, i32* %13, align 4
  store i32 %404, i32* %22, align 4
  %405 = load i32, i32* %22, align 4
  %406 = load i32, i32* %23, align 4
  %407 = sub i32 %406, %405
  store i32 %407, i32* %23, align 4
  br label %408

408:                                              ; preds = %414, %403
  %409 = load i8*, i8** %25, align 8
  %410 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %410, i8** %25, align 8
  %411 = load i8, i8* %410, align 1
  %412 = load i8*, i8** %8, align 8
  %413 = getelementptr inbounds i8, i8* %412, i32 1
  store i8* %413, i8** %8, align 8
  store i8 %411, i8* %413, align 1
  br label %414

414:                                              ; preds = %408
  %415 = load i32, i32* %22, align 4
  %416 = add i32 %415, -1
  store i32 %416, i32* %22, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %408, label %418, !llvm.loop !13

418:                                              ; preds = %414
  %419 = load i8*, i8** %8, align 8
  %420 = load i32, i32* %24, align 4
  %421 = zext i32 %420 to i64
  %422 = sub i64 0, %421
  %423 = getelementptr inbounds i8, i8* %419, i64 %422
  store i8* %423, i8** %25, align 8
  br label %424

424:                                              ; preds = %418, %397
  br label %425

425:                                              ; preds = %424, %368
  br label %457

426:                                              ; preds = %364
  %427 = load i32, i32* %13, align 4
  %428 = load i32, i32* %22, align 4
  %429 = sub i32 %427, %428
  %430 = load i8*, i8** %25, align 8
  %431 = zext i32 %429 to i64
  %432 = getelementptr inbounds i8, i8* %430, i64 %431
  store i8* %432, i8** %25, align 8
  %433 = load i32, i32* %22, align 4
  %434 = load i32, i32* %23, align 4
  %435 = icmp ult i32 %433, %434
  br i1 %435, label %436, label %456

436:                                              ; preds = %426
  %437 = load i32, i32* %22, align 4
  %438 = load i32, i32* %23, align 4
  %439 = sub i32 %438, %437
  store i32 %439, i32* %23, align 4
  br label %440

440:                                              ; preds = %446, %436
  %441 = load i8*, i8** %25, align 8
  %442 = getelementptr inbounds i8, i8* %441, i32 1
  store i8* %442, i8** %25, align 8
  %443 = load i8, i8* %442, align 1
  %444 = load i8*, i8** %8, align 8
  %445 = getelementptr inbounds i8, i8* %444, i32 1
  store i8* %445, i8** %8, align 8
  store i8 %443, i8* %445, align 1
  br label %446

446:                                              ; preds = %440
  %447 = load i32, i32* %22, align 4
  %448 = add i32 %447, -1
  store i32 %448, i32* %22, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %440, label %450, !llvm.loop !14

450:                                              ; preds = %446
  %451 = load i8*, i8** %8, align 8
  %452 = load i32, i32* %24, align 4
  %453 = zext i32 %452 to i64
  %454 = sub i64 0, %453
  %455 = getelementptr inbounds i8, i8* %451, i64 %454
  store i8* %455, i8** %25, align 8
  br label %456

456:                                              ; preds = %450, %426
  br label %457

457:                                              ; preds = %456, %425
  br label %458

458:                                              ; preds = %457, %363
  br label %459

459:                                              ; preds = %462, %458
  %460 = load i32, i32* %23, align 4
  %461 = icmp ugt i32 %460, 2
  br i1 %461, label %462, label %480

462:                                              ; preds = %459
  %463 = load i8*, i8** %25, align 8
  %464 = getelementptr inbounds i8, i8* %463, i32 1
  store i8* %464, i8** %25, align 8
  %465 = load i8, i8* %464, align 1
  %466 = load i8*, i8** %8, align 8
  %467 = getelementptr inbounds i8, i8* %466, i32 1
  store i8* %467, i8** %8, align 8
  store i8 %465, i8* %467, align 1
  %468 = load i8*, i8** %25, align 8
  %469 = getelementptr inbounds i8, i8* %468, i32 1
  store i8* %469, i8** %25, align 8
  %470 = load i8, i8* %469, align 1
  %471 = load i8*, i8** %8, align 8
  %472 = getelementptr inbounds i8, i8* %471, i32 1
  store i8* %472, i8** %8, align 8
  store i8 %470, i8* %472, align 1
  %473 = load i8*, i8** %25, align 8
  %474 = getelementptr inbounds i8, i8* %473, i32 1
  store i8* %474, i8** %25, align 8
  %475 = load i8, i8* %474, align 1
  %476 = load i8*, i8** %8, align 8
  %477 = getelementptr inbounds i8, i8* %476, i32 1
  store i8* %477, i8** %8, align 8
  store i8 %475, i8* %477, align 1
  %478 = load i32, i32* %23, align 4
  %479 = sub i32 %478, 3
  store i32 %479, i32* %23, align 4
  br label %459, !llvm.loop !15

480:                                              ; preds = %459
  %481 = load i32, i32* %23, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %498

483:                                              ; preds = %480
  %484 = load i8*, i8** %25, align 8
  %485 = getelementptr inbounds i8, i8* %484, i32 1
  store i8* %485, i8** %25, align 8
  %486 = load i8, i8* %485, align 1
  %487 = load i8*, i8** %8, align 8
  %488 = getelementptr inbounds i8, i8* %487, i32 1
  store i8* %488, i8** %8, align 8
  store i8 %486, i8* %488, align 1
  %489 = load i32, i32* %23, align 4
  %490 = icmp ugt i32 %489, 1
  br i1 %490, label %491, label %497

491:                                              ; preds = %483
  %492 = load i8*, i8** %25, align 8
  %493 = getelementptr inbounds i8, i8* %492, i32 1
  store i8* %493, i8** %25, align 8
  %494 = load i8, i8* %493, align 1
  %495 = load i8*, i8** %8, align 8
  %496 = getelementptr inbounds i8, i8* %495, i32 1
  store i8* %496, i8** %8, align 8
  store i8 %494, i8* %496, align 1
  br label %497

497:                                              ; preds = %491, %483
  br label %498

498:                                              ; preds = %497, %480
  br label %545

499:                                              ; preds = %285
  %500 = load i8*, i8** %8, align 8
  %501 = load i32, i32* %24, align 4
  %502 = zext i32 %501 to i64
  %503 = sub i64 0, %502
  %504 = getelementptr inbounds i8, i8* %500, i64 %503
  store i8* %504, i8** %25, align 8
  br label %505

505:                                              ; preds = %523, %499
  %506 = load i8*, i8** %25, align 8
  %507 = getelementptr inbounds i8, i8* %506, i32 1
  store i8* %507, i8** %25, align 8
  %508 = load i8, i8* %507, align 1
  %509 = load i8*, i8** %8, align 8
  %510 = getelementptr inbounds i8, i8* %509, i32 1
  store i8* %510, i8** %8, align 8
  store i8 %508, i8* %510, align 1
  %511 = load i8*, i8** %25, align 8
  %512 = getelementptr inbounds i8, i8* %511, i32 1
  store i8* %512, i8** %25, align 8
  %513 = load i8, i8* %512, align 1
  %514 = load i8*, i8** %8, align 8
  %515 = getelementptr inbounds i8, i8* %514, i32 1
  store i8* %515, i8** %8, align 8
  store i8 %513, i8* %515, align 1
  %516 = load i8*, i8** %25, align 8
  %517 = getelementptr inbounds i8, i8* %516, i32 1
  store i8* %517, i8** %25, align 8
  %518 = load i8, i8* %517, align 1
  %519 = load i8*, i8** %8, align 8
  %520 = getelementptr inbounds i8, i8* %519, i32 1
  store i8* %520, i8** %8, align 8
  store i8 %518, i8* %520, align 1
  %521 = load i32, i32* %23, align 4
  %522 = sub i32 %521, 3
  store i32 %522, i32* %23, align 4
  br label %523

523:                                              ; preds = %505
  %524 = load i32, i32* %23, align 4
  %525 = icmp ugt i32 %524, 2
  br i1 %525, label %505, label %526, !llvm.loop !16

526:                                              ; preds = %523
  %527 = load i32, i32* %23, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %544

529:                                              ; preds = %526
  %530 = load i8*, i8** %25, align 8
  %531 = getelementptr inbounds i8, i8* %530, i32 1
  store i8* %531, i8** %25, align 8
  %532 = load i8, i8* %531, align 1
  %533 = load i8*, i8** %8, align 8
  %534 = getelementptr inbounds i8, i8* %533, i32 1
  store i8* %534, i8** %8, align 8
  store i8 %532, i8* %534, align 1
  %535 = load i32, i32* %23, align 4
  %536 = icmp ugt i32 %535, 1
  br i1 %536, label %537, label %543

537:                                              ; preds = %529
  %538 = load i8*, i8** %25, align 8
  %539 = getelementptr inbounds i8, i8* %538, i32 1
  store i8* %539, i8** %25, align 8
  %540 = load i8, i8* %539, align 1
  %541 = load i8*, i8** %8, align 8
  %542 = getelementptr inbounds i8, i8* %541, i32 1
  store i8* %542, i8** %8, align 8
  store i8 %540, i8* %542, align 1
  br label %543

543:                                              ; preds = %537, %529
  br label %544

544:                                              ; preds = %543, %526
  br label %545

545:                                              ; preds = %544, %498
  br label %570

546:                                              ; preds = %231
  %547 = load i32, i32* %22, align 4
  %548 = and i32 %547, 64
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %565

550:                                              ; preds = %546
  %551 = load %struct.code*, %struct.code** %18, align 8
  %552 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 2
  %553 = load i16, i16* %552, align 2
  %554 = zext i16 %553 to i64
  %555 = load i64, i64* %15, align 8
  %556 = load i32, i32* %22, align 4
  %557 = shl i32 1, %556
  %558 = sub i32 %557, 1
  %559 = zext i32 %558 to i64
  %560 = and i64 %555, %559
  %561 = add i64 %554, %560
  %562 = getelementptr inbounds %struct.code, %struct.code* %551, i64 %561
  %563 = bitcast %struct.code* %21 to i8*
  %564 = bitcast %struct.code* %562 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %563, i8* align 2 %564, i64 4, i1 false)
  br label %231

565:                                              ; preds = %546
  %566 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %567 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %566, i32 0, i32 6
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %567, align 8
  %568 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %569 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %568, i32 0, i32 0
  store i32 29, i32* %569, align 8
  br label %614

570:                                              ; preds = %545
  br label %602

571:                                              ; preds = %152
  %572 = load i32, i32* %22, align 4
  %573 = and i32 %572, 64
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %590

575:                                              ; preds = %571
  %576 = load %struct.code*, %struct.code** %17, align 8
  %577 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 2
  %578 = load i16, i16* %577, align 2
  %579 = zext i16 %578 to i64
  %580 = load i64, i64* %15, align 8
  %581 = load i32, i32* %22, align 4
  %582 = shl i32 1, %581
  %583 = sub i32 %582, 1
  %584 = zext i32 %583 to i64
  %585 = and i64 %580, %584
  %586 = add i64 %579, %585
  %587 = getelementptr inbounds %struct.code, %struct.code* %576, i64 %586
  %588 = bitcast %struct.code* %21 to i8*
  %589 = bitcast %struct.code* %587 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %588, i8* align 2 %589, i64 4, i1 false)
  br label %130

590:                                              ; preds = %571
  %591 = load i32, i32* %22, align 4
  %592 = and i32 %591, 32
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %590
  %595 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %596 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %595, i32 0, i32 0
  store i32 11, i32* %596, align 8
  br label %614

597:                                              ; preds = %590
  %598 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %599 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %598, i32 0, i32 6
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %599, align 8
  %600 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %601 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %600, i32 0, i32 0
  store i32 29, i32* %601, align 8
  br label %614

602:                                              ; preds = %570
  br label %603

603:                                              ; preds = %602, %146
  br label %604

604:                                              ; preds = %603
  %605 = load i8*, i8** %6, align 8
  %606 = load i8*, i8** %7, align 8
  %607 = icmp ult i8* %605, %606
  br i1 %607, label %608, label %612

608:                                              ; preds = %604
  %609 = load i8*, i8** %8, align 8
  %610 = load i8*, i8** %10, align 8
  %611 = icmp ult i8* %609, %610
  br label %612

612:                                              ; preds = %608, %604
  %613 = phi i1 [ false, %604 ], [ %611, %608 ]
  br i1 %613, label %95, label %614, !llvm.loop !17

614:                                              ; preds = %612, %597, %594, %565, %322
  %615 = load i32, i32* %16, align 4
  %616 = lshr i32 %615, 3
  store i32 %616, i32* %23, align 4
  %617 = load i32, i32* %23, align 4
  %618 = load i8*, i8** %6, align 8
  %619 = zext i32 %617 to i64
  %620 = sub i64 0, %619
  %621 = getelementptr inbounds i8, i8* %618, i64 %620
  store i8* %621, i8** %6, align 8
  %622 = load i32, i32* %23, align 4
  %623 = shl i32 %622, 3
  %624 = load i32, i32* %16, align 4
  %625 = sub i32 %624, %623
  store i32 %625, i32* %16, align 4
  %626 = load i32, i32* %16, align 4
  %627 = shl i32 1, %626
  %628 = sub i32 %627, 1
  %629 = zext i32 %628 to i64
  %630 = load i64, i64* %15, align 8
  %631 = and i64 %630, %629
  store i64 %631, i64* %15, align 8
  %632 = load i8*, i8** %6, align 8
  %633 = getelementptr inbounds i8, i8* %632, i64 1
  %634 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %635 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %634, i32 0, i32 0
  store i8* %633, i8** %635, align 8
  %636 = load i8*, i8** %8, align 8
  %637 = getelementptr inbounds i8, i8* %636, i64 1
  %638 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %639 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %638, i32 0, i32 3
  store i8* %637, i8** %639, align 8
  %640 = load i8*, i8** %6, align 8
  %641 = load i8*, i8** %7, align 8
  %642 = icmp ult i8* %640, %641
  br i1 %642, label %643, label %650

643:                                              ; preds = %614
  %644 = load i8*, i8** %7, align 8
  %645 = load i8*, i8** %6, align 8
  %646 = ptrtoint i8* %644 to i64
  %647 = ptrtoint i8* %645 to i64
  %648 = sub i64 %646, %647
  %649 = add nsw i64 5, %648
  br label %657

650:                                              ; preds = %614
  %651 = load i8*, i8** %6, align 8
  %652 = load i8*, i8** %7, align 8
  %653 = ptrtoint i8* %651 to i64
  %654 = ptrtoint i8* %652 to i64
  %655 = sub i64 %653, %654
  %656 = sub nsw i64 5, %655
  br label %657

657:                                              ; preds = %650, %643
  %658 = phi i64 [ %649, %643 ], [ %656, %650 ]
  %659 = trunc i64 %658 to i32
  %660 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %661 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %660, i32 0, i32 1
  store i32 %659, i32* %661, align 8
  %662 = load i8*, i8** %8, align 8
  %663 = load i8*, i8** %10, align 8
  %664 = icmp ult i8* %662, %663
  br i1 %664, label %665, label %672

665:                                              ; preds = %657
  %666 = load i8*, i8** %10, align 8
  %667 = load i8*, i8** %8, align 8
  %668 = ptrtoint i8* %666 to i64
  %669 = ptrtoint i8* %667 to i64
  %670 = sub i64 %668, %669
  %671 = add nsw i64 257, %670
  br label %679

672:                                              ; preds = %657
  %673 = load i8*, i8** %8, align 8
  %674 = load i8*, i8** %10, align 8
  %675 = ptrtoint i8* %673 to i64
  %676 = ptrtoint i8* %674 to i64
  %677 = sub i64 %675, %676
  %678 = sub nsw i64 257, %677
  br label %679

679:                                              ; preds = %672, %665
  %680 = phi i64 [ %671, %665 ], [ %678, %672 ]
  %681 = trunc i64 %680 to i32
  %682 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %683 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %682, i32 0, i32 4
  store i32 %681, i32* %683, align 8
  %684 = load i64, i64* %15, align 8
  %685 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %686 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %685, i32 0, i32 14
  store i64 %684, i64* %686, align 8
  %687 = load i32, i32* %16, align 4
  %688 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %689 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %688, i32 0, i32 15
  store i32 %687, i32* %689, align 8
  ret void
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
