; ModuleID = 'src/zxor.c'
source_filename = "src/zxor.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: nounwind ssp uwtable
define void @zxor(%struct.zahl* noundef %0, %struct.zahl* noundef readonly %1, %struct.zahl* noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10, !prof !17

7:                                                ; preds = %3
  %8 = icmp eq %struct.zahl* %0, %2
  br i1 %8, label %366, label %9

9:                                                ; preds = %7
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef %2)
  br label %366

10:                                               ; preds = %3
  %11 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !17

14:                                               ; preds = %10
  %15 = icmp eq %struct.zahl* %0, %1
  br i1 %15, label %366, label %16

16:                                               ; preds = %14
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1)
  br label %366

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %19 = load i64, i64* %18, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %23 = load i64, i64* %22, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %25 = load i64*, i64** %24, align 8, !tbaa !19
  %26 = icmp ult i64 %19, %23
  %27 = select i1 %26, i64 %19, i64 %23
  %28 = icmp ugt i64 %19, %23
  %29 = select i1 %28, i64 %19, i64 %23
  %30 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %31 = load i64, i64* %30, align 8, !tbaa !20
  %32 = icmp ult i64 %31, %29
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %29) #4
  br label %34

34:                                               ; preds = %33, %17
  %35 = icmp eq %struct.zahl* %0, %1
  br i1 %35, label %36, label %149

36:                                               ; preds = %34
  %37 = load i64*, i64** %20, align 8, !tbaa !19
  %38 = icmp ult i64 %27, 5
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = icmp eq i64 %27, 0
  br i1 %40, label %146, label %41

41:                                               ; preds = %39
  %42 = load i64, i64* %37, align 8, !tbaa !21
  %43 = load i64, i64* %25, align 8, !tbaa !21
  %44 = xor i64 %43, %42
  store i64 %44, i64* %37, align 8, !tbaa !21
  %45 = icmp eq i64 %27, 1
  br i1 %45, label %146, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds i64, i64* %37, i64 1
  %48 = load i64, i64* %47, align 8, !tbaa !21
  %49 = getelementptr inbounds i64, i64* %25, i64 1
  %50 = load i64, i64* %49, align 8, !tbaa !21
  %51 = xor i64 %50, %48
  store i64 %51, i64* %47, align 8, !tbaa !21
  %52 = icmp ugt i64 %27, 2
  br i1 %52, label %53, label %146

53:                                               ; preds = %46
  %54 = getelementptr inbounds i64, i64* %37, i64 2
  %55 = load i64, i64* %54, align 8, !tbaa !21
  %56 = getelementptr inbounds i64, i64* %25, i64 2
  %57 = load i64, i64* %56, align 8, !tbaa !21
  %58 = xor i64 %57, %55
  store i64 %58, i64* %54, align 8, !tbaa !21
  %59 = icmp eq i64 %27, 3
  br i1 %59, label %146, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds i64, i64* %37, i64 3
  %62 = load i64, i64* %61, align 8, !tbaa !21
  %63 = getelementptr inbounds i64, i64* %25, i64 3
  %64 = load i64, i64* %63, align 8, !tbaa !21
  %65 = xor i64 %64, %62
  store i64 %65, i64* %61, align 8, !tbaa !21
  br label %146

66:                                               ; preds = %36, %66
  %67 = phi i64 [ %92, %66 ], [ 4, %36 ]
  %68 = phi i64 [ %67, %66 ], [ 0, %36 ]
  %69 = or i64 %68, 3
  %70 = getelementptr inbounds i64, i64* %37, i64 %69
  %71 = load i64, i64* %70, align 8, !tbaa !21
  %72 = getelementptr inbounds i64, i64* %25, i64 %69
  %73 = load i64, i64* %72, align 8, !tbaa !21
  %74 = xor i64 %73, %71
  store i64 %74, i64* %70, align 8, !tbaa !21
  %75 = or i64 %68, 2
  %76 = getelementptr inbounds i64, i64* %37, i64 %75
  %77 = load i64, i64* %76, align 8, !tbaa !21
  %78 = getelementptr inbounds i64, i64* %25, i64 %75
  %79 = load i64, i64* %78, align 8, !tbaa !21
  %80 = xor i64 %79, %77
  store i64 %80, i64* %76, align 8, !tbaa !21
  %81 = or i64 %68, 1
  %82 = getelementptr inbounds i64, i64* %37, i64 %81
  %83 = load i64, i64* %82, align 8, !tbaa !21
  %84 = getelementptr inbounds i64, i64* %25, i64 %81
  %85 = load i64, i64* %84, align 8, !tbaa !21
  %86 = xor i64 %85, %83
  store i64 %86, i64* %82, align 8, !tbaa !21
  %87 = getelementptr inbounds i64, i64* %37, i64 %68
  %88 = load i64, i64* %87, align 8, !tbaa !21
  %89 = getelementptr inbounds i64, i64* %25, i64 %68
  %90 = load i64, i64* %89, align 8, !tbaa !21
  %91 = xor i64 %90, %88
  store i64 %91, i64* %87, align 8, !tbaa !21
  %92 = add i64 %67, 4
  %93 = icmp ult i64 %92, %27
  br i1 %93, label %66, label %94

94:                                               ; preds = %66
  %95 = icmp ugt i64 %92, %27
  %96 = icmp ugt i64 %27, %67
  %97 = and i1 %95, %96
  br i1 %97, label %98, label %146

98:                                               ; preds = %94
  %99 = sub i64 %27, %67
  %100 = icmp ult i64 %99, 4
  br i1 %100, label %135, label %101

101:                                              ; preds = %98
  %102 = getelementptr i64, i64* %37, i64 %67
  %103 = getelementptr i64, i64* %37, i64 %27
  %104 = getelementptr i64, i64* %25, i64 %67
  %105 = getelementptr i64, i64* %25, i64 %27
  %106 = icmp ult i64* %102, %105
  %107 = icmp ult i64* %104, %103
  %108 = and i1 %106, %107
  br i1 %108, label %135, label %109

109:                                              ; preds = %101
  %110 = and i64 %99, -4
  %111 = add i64 %67, %110
  br label %112

112:                                              ; preds = %112, %109
  %113 = phi i64 [ 0, %109 ], [ %131, %112 ]
  %114 = add i64 %67, %113
  %115 = getelementptr inbounds i64, i64* %37, i64 %114
  %116 = bitcast i64* %115 to <2 x i64>*
  %117 = load <2 x i64>, <2 x i64>* %116, align 8, !tbaa !21, !alias.scope !23, !noalias !26
  %118 = getelementptr inbounds i64, i64* %115, i64 2
  %119 = bitcast i64* %118 to <2 x i64>*
  %120 = load <2 x i64>, <2 x i64>* %119, align 8, !tbaa !21, !alias.scope !23, !noalias !26
  %121 = getelementptr inbounds i64, i64* %25, i64 %114
  %122 = bitcast i64* %121 to <2 x i64>*
  %123 = load <2 x i64>, <2 x i64>* %122, align 8, !tbaa !21, !alias.scope !26
  %124 = getelementptr inbounds i64, i64* %121, i64 2
  %125 = bitcast i64* %124 to <2 x i64>*
  %126 = load <2 x i64>, <2 x i64>* %125, align 8, !tbaa !21, !alias.scope !26
  %127 = xor <2 x i64> %123, %117
  %128 = xor <2 x i64> %126, %120
  %129 = bitcast i64* %115 to <2 x i64>*
  store <2 x i64> %127, <2 x i64>* %129, align 8, !tbaa !21, !alias.scope !23, !noalias !26
  %130 = bitcast i64* %118 to <2 x i64>*
  store <2 x i64> %128, <2 x i64>* %130, align 8, !tbaa !21, !alias.scope !23, !noalias !26
  %131 = add nuw i64 %113, 4
  %132 = icmp eq i64 %131, %110
  br i1 %132, label %133, label %112, !llvm.loop !28

133:                                              ; preds = %112
  %134 = icmp eq i64 %99, %110
  br i1 %134, label %146, label %135

135:                                              ; preds = %101, %98, %133
  %136 = phi i64 [ %67, %101 ], [ %67, %98 ], [ %111, %133 ]
  br label %137

137:                                              ; preds = %135, %137
  %138 = phi i64 [ %144, %137 ], [ %136, %135 ]
  %139 = getelementptr inbounds i64, i64* %37, i64 %138
  %140 = load i64, i64* %139, align 8, !tbaa !21
  %141 = getelementptr inbounds i64, i64* %25, i64 %138
  %142 = load i64, i64* %141, align 8, !tbaa !21
  %143 = xor i64 %142, %140
  store i64 %143, i64* %139, align 8, !tbaa !21
  %144 = add nuw i64 %138, 1
  %145 = icmp eq i64 %144, %27
  br i1 %145, label %146, label %137, !llvm.loop !30

146:                                              ; preds = %137, %133, %39, %41, %46, %94, %53, %60
  %147 = load i64, i64* %18, align 8, !tbaa !18
  %148 = icmp ult i64 %147, %23
  br i1 %148, label %337, label %343

149:                                              ; preds = %34
  %150 = icmp eq %struct.zahl* %0, %2
  br i1 %150, label %151, label %264, !prof !17

151:                                              ; preds = %149
  %152 = load i64*, i64** %24, align 8, !tbaa !19
  %153 = icmp ult i64 %27, 5
  br i1 %153, label %154, label %181

154:                                              ; preds = %151
  %155 = icmp eq i64 %27, 0
  br i1 %155, label %261, label %156

156:                                              ; preds = %154
  %157 = load i64, i64* %152, align 8, !tbaa !21
  %158 = load i64, i64* %21, align 8, !tbaa !21
  %159 = xor i64 %158, %157
  store i64 %159, i64* %152, align 8, !tbaa !21
  %160 = icmp eq i64 %27, 1
  br i1 %160, label %261, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds i64, i64* %152, i64 1
  %163 = load i64, i64* %162, align 8, !tbaa !21
  %164 = getelementptr inbounds i64, i64* %21, i64 1
  %165 = load i64, i64* %164, align 8, !tbaa !21
  %166 = xor i64 %165, %163
  store i64 %166, i64* %162, align 8, !tbaa !21
  %167 = icmp ugt i64 %27, 2
  br i1 %167, label %168, label %261

168:                                              ; preds = %161
  %169 = getelementptr inbounds i64, i64* %152, i64 2
  %170 = load i64, i64* %169, align 8, !tbaa !21
  %171 = getelementptr inbounds i64, i64* %21, i64 2
  %172 = load i64, i64* %171, align 8, !tbaa !21
  %173 = xor i64 %172, %170
  store i64 %173, i64* %169, align 8, !tbaa !21
  %174 = icmp eq i64 %27, 3
  br i1 %174, label %261, label %175

175:                                              ; preds = %168
  %176 = getelementptr inbounds i64, i64* %152, i64 3
  %177 = load i64, i64* %176, align 8, !tbaa !21
  %178 = getelementptr inbounds i64, i64* %21, i64 3
  %179 = load i64, i64* %178, align 8, !tbaa !21
  %180 = xor i64 %179, %177
  store i64 %180, i64* %176, align 8, !tbaa !21
  br label %261

181:                                              ; preds = %151, %181
  %182 = phi i64 [ %207, %181 ], [ 4, %151 ]
  %183 = phi i64 [ %182, %181 ], [ 0, %151 ]
  %184 = or i64 %183, 3
  %185 = getelementptr inbounds i64, i64* %152, i64 %184
  %186 = load i64, i64* %185, align 8, !tbaa !21
  %187 = getelementptr inbounds i64, i64* %21, i64 %184
  %188 = load i64, i64* %187, align 8, !tbaa !21
  %189 = xor i64 %188, %186
  store i64 %189, i64* %185, align 8, !tbaa !21
  %190 = or i64 %183, 2
  %191 = getelementptr inbounds i64, i64* %152, i64 %190
  %192 = load i64, i64* %191, align 8, !tbaa !21
  %193 = getelementptr inbounds i64, i64* %21, i64 %190
  %194 = load i64, i64* %193, align 8, !tbaa !21
  %195 = xor i64 %194, %192
  store i64 %195, i64* %191, align 8, !tbaa !21
  %196 = or i64 %183, 1
  %197 = getelementptr inbounds i64, i64* %152, i64 %196
  %198 = load i64, i64* %197, align 8, !tbaa !21
  %199 = getelementptr inbounds i64, i64* %21, i64 %196
  %200 = load i64, i64* %199, align 8, !tbaa !21
  %201 = xor i64 %200, %198
  store i64 %201, i64* %197, align 8, !tbaa !21
  %202 = getelementptr inbounds i64, i64* %152, i64 %183
  %203 = load i64, i64* %202, align 8, !tbaa !21
  %204 = getelementptr inbounds i64, i64* %21, i64 %183
  %205 = load i64, i64* %204, align 8, !tbaa !21
  %206 = xor i64 %205, %203
  store i64 %206, i64* %202, align 8, !tbaa !21
  %207 = add i64 %182, 4
  %208 = icmp ult i64 %207, %27
  br i1 %208, label %181, label %209

209:                                              ; preds = %181
  %210 = icmp ugt i64 %207, %27
  %211 = icmp ugt i64 %27, %182
  %212 = and i1 %210, %211
  br i1 %212, label %213, label %261

213:                                              ; preds = %209
  %214 = sub i64 %27, %182
  %215 = icmp ult i64 %214, 4
  br i1 %215, label %250, label %216

216:                                              ; preds = %213
  %217 = getelementptr i64, i64* %152, i64 %182
  %218 = getelementptr i64, i64* %152, i64 %27
  %219 = getelementptr i64, i64* %21, i64 %182
  %220 = getelementptr i64, i64* %21, i64 %27
  %221 = icmp ult i64* %217, %220
  %222 = icmp ult i64* %219, %218
  %223 = and i1 %221, %222
  br i1 %223, label %250, label %224

224:                                              ; preds = %216
  %225 = and i64 %214, -4
  %226 = add i64 %182, %225
  br label %227

227:                                              ; preds = %227, %224
  %228 = phi i64 [ 0, %224 ], [ %246, %227 ]
  %229 = add i64 %182, %228
  %230 = getelementptr inbounds i64, i64* %152, i64 %229
  %231 = bitcast i64* %230 to <2 x i64>*
  %232 = load <2 x i64>, <2 x i64>* %231, align 8, !tbaa !21, !alias.scope !31, !noalias !34
  %233 = getelementptr inbounds i64, i64* %230, i64 2
  %234 = bitcast i64* %233 to <2 x i64>*
  %235 = load <2 x i64>, <2 x i64>* %234, align 8, !tbaa !21, !alias.scope !31, !noalias !34
  %236 = getelementptr inbounds i64, i64* %21, i64 %229
  %237 = bitcast i64* %236 to <2 x i64>*
  %238 = load <2 x i64>, <2 x i64>* %237, align 8, !tbaa !21, !alias.scope !34
  %239 = getelementptr inbounds i64, i64* %236, i64 2
  %240 = bitcast i64* %239 to <2 x i64>*
  %241 = load <2 x i64>, <2 x i64>* %240, align 8, !tbaa !21, !alias.scope !34
  %242 = xor <2 x i64> %238, %232
  %243 = xor <2 x i64> %241, %235
  %244 = bitcast i64* %230 to <2 x i64>*
  store <2 x i64> %242, <2 x i64>* %244, align 8, !tbaa !21, !alias.scope !31, !noalias !34
  %245 = bitcast i64* %233 to <2 x i64>*
  store <2 x i64> %243, <2 x i64>* %245, align 8, !tbaa !21, !alias.scope !31, !noalias !34
  %246 = add nuw i64 %228, 4
  %247 = icmp eq i64 %246, %225
  br i1 %247, label %248, label %227, !llvm.loop !36

248:                                              ; preds = %227
  %249 = icmp eq i64 %214, %225
  br i1 %249, label %261, label %250

250:                                              ; preds = %216, %213, %248
  %251 = phi i64 [ %182, %216 ], [ %182, %213 ], [ %226, %248 ]
  br label %252

252:                                              ; preds = %250, %252
  %253 = phi i64 [ %259, %252 ], [ %251, %250 ]
  %254 = getelementptr inbounds i64, i64* %152, i64 %253
  %255 = load i64, i64* %254, align 8, !tbaa !21
  %256 = getelementptr inbounds i64, i64* %21, i64 %253
  %257 = load i64, i64* %256, align 8, !tbaa !21
  %258 = xor i64 %257, %255
  store i64 %258, i64* %254, align 8, !tbaa !21
  %259 = add nuw i64 %253, 1
  %260 = icmp eq i64 %259, %27
  br i1 %260, label %261, label %252, !llvm.loop !37

261:                                              ; preds = %252, %248, %154, %156, %161, %209, %168, %175
  %262 = load i64, i64* %22, align 8, !tbaa !18
  %263 = icmp ult i64 %262, %19
  br i1 %263, label %337, label %343

264:                                              ; preds = %149
  %265 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %266 = load i64*, i64** %265, align 8, !tbaa !19
  br i1 %26, label %302, label %267

267:                                              ; preds = %264
  %268 = load i64*, i64** %24, align 8, !tbaa !19
  %269 = load i64*, i64** %20, align 8, !tbaa !19
  %270 = icmp eq i64 %27, 0
  br i1 %270, label %337, label %271

271:                                              ; preds = %267, %271
  %272 = phi i64 [ %300, %271 ], [ 0, %267 ]
  %273 = getelementptr inbounds i64, i64* %268, i64 %272
  %274 = load i64, i64* %273, align 8, !tbaa !21
  %275 = getelementptr inbounds i64, i64* %269, i64 %272
  %276 = load i64, i64* %275, align 8, !tbaa !21
  %277 = xor i64 %276, %274
  %278 = getelementptr inbounds i64, i64* %266, i64 %272
  store i64 %277, i64* %278, align 8, !tbaa !21
  %279 = or i64 %272, 1
  %280 = getelementptr inbounds i64, i64* %268, i64 %279
  %281 = load i64, i64* %280, align 8, !tbaa !21
  %282 = getelementptr inbounds i64, i64* %269, i64 %279
  %283 = load i64, i64* %282, align 8, !tbaa !21
  %284 = xor i64 %283, %281
  %285 = getelementptr inbounds i64, i64* %266, i64 %279
  store i64 %284, i64* %285, align 8, !tbaa !21
  %286 = or i64 %272, 2
  %287 = getelementptr inbounds i64, i64* %268, i64 %286
  %288 = load i64, i64* %287, align 8, !tbaa !21
  %289 = getelementptr inbounds i64, i64* %269, i64 %286
  %290 = load i64, i64* %289, align 8, !tbaa !21
  %291 = xor i64 %290, %288
  %292 = getelementptr inbounds i64, i64* %266, i64 %286
  store i64 %291, i64* %292, align 8, !tbaa !21
  %293 = or i64 %272, 3
  %294 = getelementptr inbounds i64, i64* %268, i64 %293
  %295 = load i64, i64* %294, align 8, !tbaa !21
  %296 = getelementptr inbounds i64, i64* %269, i64 %293
  %297 = load i64, i64* %296, align 8, !tbaa !21
  %298 = xor i64 %297, %295
  %299 = getelementptr inbounds i64, i64* %266, i64 %293
  store i64 %298, i64* %299, align 8, !tbaa !21
  %300 = add i64 %272, 4
  %301 = icmp ult i64 %300, %27
  br i1 %301, label %271, label %337

302:                                              ; preds = %264
  %303 = load i64*, i64** %20, align 8, !tbaa !19
  %304 = load i64*, i64** %24, align 8, !tbaa !19
  %305 = icmp eq i64 %27, 0
  br i1 %305, label %337, label %306

306:                                              ; preds = %302, %306
  %307 = phi i64 [ %335, %306 ], [ 0, %302 ]
  %308 = getelementptr inbounds i64, i64* %303, i64 %307
  %309 = load i64, i64* %308, align 8, !tbaa !21
  %310 = getelementptr inbounds i64, i64* %304, i64 %307
  %311 = load i64, i64* %310, align 8, !tbaa !21
  %312 = xor i64 %311, %309
  %313 = getelementptr inbounds i64, i64* %266, i64 %307
  store i64 %312, i64* %313, align 8, !tbaa !21
  %314 = or i64 %307, 1
  %315 = getelementptr inbounds i64, i64* %303, i64 %314
  %316 = load i64, i64* %315, align 8, !tbaa !21
  %317 = getelementptr inbounds i64, i64* %304, i64 %314
  %318 = load i64, i64* %317, align 8, !tbaa !21
  %319 = xor i64 %318, %316
  %320 = getelementptr inbounds i64, i64* %266, i64 %314
  store i64 %319, i64* %320, align 8, !tbaa !21
  %321 = or i64 %307, 2
  %322 = getelementptr inbounds i64, i64* %303, i64 %321
  %323 = load i64, i64* %322, align 8, !tbaa !21
  %324 = getelementptr inbounds i64, i64* %304, i64 %321
  %325 = load i64, i64* %324, align 8, !tbaa !21
  %326 = xor i64 %325, %323
  %327 = getelementptr inbounds i64, i64* %266, i64 %321
  store i64 %326, i64* %327, align 8, !tbaa !21
  %328 = or i64 %307, 3
  %329 = getelementptr inbounds i64, i64* %303, i64 %328
  %330 = load i64, i64* %329, align 8, !tbaa !21
  %331 = getelementptr inbounds i64, i64* %304, i64 %328
  %332 = load i64, i64* %331, align 8, !tbaa !21
  %333 = xor i64 %332, %330
  %334 = getelementptr inbounds i64, i64* %266, i64 %328
  store i64 %333, i64* %334, align 8, !tbaa !21
  %335 = add i64 %307, 4
  %336 = icmp ult i64 %335, %27
  br i1 %336, label %306, label %337

337:                                              ; preds = %271, %306, %302, %267, %261, %146
  %338 = phi i64* [ %37, %146 ], [ %152, %261 ], [ %266, %267 ], [ %266, %302 ], [ %266, %306 ], [ %266, %271 ]
  %339 = phi i64* [ %25, %146 ], [ %21, %261 ], [ %269, %267 ], [ %304, %302 ], [ %304, %306 ], [ %269, %271 ]
  %340 = getelementptr inbounds i64, i64* %338, i64 %27
  %341 = getelementptr inbounds i64, i64* %339, i64 %27
  %342 = sub i64 %29, %27
  tail call fastcc void @libzahl_memcpy(i64* noundef %340, i64* noundef %341, i64 noundef %342) #4
  br label %343

343:                                              ; preds = %337, %261, %146
  %344 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %345 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  br label %346

346:                                              ; preds = %349, %343
  %347 = phi i64 [ %29, %343 ], [ %351, %349 ]
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %362, label %349

349:                                              ; preds = %346
  %350 = load i64*, i64** %345, align 8, !tbaa !19
  %351 = add i64 %347, -1
  %352 = getelementptr inbounds i64, i64* %350, i64 %351
  %353 = load i64, i64* %352, align 8, !tbaa !21
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %346, label %355

355:                                              ; preds = %349
  store i64 %347, i64* %344, align 8, !tbaa !18
  %356 = load i32, i32* %4, align 8, !tbaa !10
  %357 = load i32, i32* %11, align 8, !tbaa !10
  %358 = xor i32 %357, %356
  %359 = lshr i32 %358, 30
  %360 = and i32 %359, 2
  %361 = sub nsw i32 1, %360
  br label %363

362:                                              ; preds = %346
  store i64 0, i64* %344, align 8, !tbaa !18
  br label %363

363:                                              ; preds = %362, %355
  %364 = phi i32 [ %361, %355 ], [ 0, %362 ]
  %365 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %364, i32* %365, align 8, !tbaa !10
  br label %366

366:                                              ; preds = %14, %16, %7, %9, %363
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  br i1 %5, label %7, label %8, !prof !17

7:                                                ; preds = %2
  store i32 0, i32* %6, align 8, !tbaa !10
  br label %24

8:                                                ; preds = %2
  store i32 %4, i32* %6, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %10, i64* %11, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %13 = load i64, i64* %12, align 8, !tbaa !20
  %14 = load i64, i64* %9, align 8, !tbaa !18
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %14) #4
  %17 = load i64, i64* %9, align 8, !tbaa !18
  br label %18

18:                                               ; preds = %8, %16
  %19 = phi i64 [ %14, %8 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %23 = load i64*, i64** %22, align 8, !tbaa !19
  tail call fastcc void @libzahl_memcpy(i64* noundef %21, i64* noundef %23, i64 noundef %19)
  br label %24

24:                                               ; preds = %18, %7
  ret void
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind ssp uwtable
define internal fastcc void @libzahl_memcpy(i64* noalias noundef writeonly %0, i64* noalias noundef readonly %1, i64 noundef %2) unnamed_addr #3 {
  switch i64 %2, label %82 [
    i64 20, label %4
    i64 19, label %8
    i64 18, label %12
    i64 17, label %16
    i64 16, label %20
    i64 15, label %24
    i64 14, label %28
    i64 13, label %32
    i64 12, label %36
    i64 11, label %40
    i64 10, label %44
    i64 9, label %48
    i64 8, label %52
    i64 7, label %56
    i64 6, label %60
    i64 5, label %64
    i64 4, label %68
    i64 3, label %72
    i64 2, label %76
    i64 1, label %80
    i64 0, label %97
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds i64, i64* %1, i64 19
  %6 = load i64, i64* %5, align 8, !tbaa !21
  %7 = getelementptr inbounds i64, i64* %0, i64 19
  store i64 %6, i64* %7, align 8, !tbaa !21
  br label %8

8:                                                ; preds = %3, %4
  %9 = getelementptr inbounds i64, i64* %1, i64 18
  %10 = load i64, i64* %9, align 8, !tbaa !21
  %11 = getelementptr inbounds i64, i64* %0, i64 18
  store i64 %10, i64* %11, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %3, %8
  %13 = getelementptr inbounds i64, i64* %1, i64 17
  %14 = load i64, i64* %13, align 8, !tbaa !21
  %15 = getelementptr inbounds i64, i64* %0, i64 17
  store i64 %14, i64* %15, align 8, !tbaa !21
  br label %16

16:                                               ; preds = %3, %12
  %17 = getelementptr inbounds i64, i64* %1, i64 16
  %18 = load i64, i64* %17, align 8, !tbaa !21
  %19 = getelementptr inbounds i64, i64* %0, i64 16
  store i64 %18, i64* %19, align 8, !tbaa !21
  br label %20

20:                                               ; preds = %3, %16
  %21 = getelementptr inbounds i64, i64* %1, i64 15
  %22 = load i64, i64* %21, align 8, !tbaa !21
  %23 = getelementptr inbounds i64, i64* %0, i64 15
  store i64 %22, i64* %23, align 8, !tbaa !21
  br label %24

24:                                               ; preds = %3, %20
  %25 = getelementptr inbounds i64, i64* %1, i64 14
  %26 = load i64, i64* %25, align 8, !tbaa !21
  %27 = getelementptr inbounds i64, i64* %0, i64 14
  store i64 %26, i64* %27, align 8, !tbaa !21
  br label %28

28:                                               ; preds = %3, %24
  %29 = getelementptr inbounds i64, i64* %1, i64 13
  %30 = load i64, i64* %29, align 8, !tbaa !21
  %31 = getelementptr inbounds i64, i64* %0, i64 13
  store i64 %30, i64* %31, align 8, !tbaa !21
  br label %32

32:                                               ; preds = %3, %28
  %33 = getelementptr inbounds i64, i64* %1, i64 12
  %34 = load i64, i64* %33, align 8, !tbaa !21
  %35 = getelementptr inbounds i64, i64* %0, i64 12
  store i64 %34, i64* %35, align 8, !tbaa !21
  br label %36

36:                                               ; preds = %3, %32
  %37 = getelementptr inbounds i64, i64* %1, i64 11
  %38 = load i64, i64* %37, align 8, !tbaa !21
  %39 = getelementptr inbounds i64, i64* %0, i64 11
  store i64 %38, i64* %39, align 8, !tbaa !21
  br label %40

40:                                               ; preds = %3, %36
  %41 = getelementptr inbounds i64, i64* %1, i64 10
  %42 = load i64, i64* %41, align 8, !tbaa !21
  %43 = getelementptr inbounds i64, i64* %0, i64 10
  store i64 %42, i64* %43, align 8, !tbaa !21
  br label %44

44:                                               ; preds = %3, %40
  %45 = getelementptr inbounds i64, i64* %1, i64 9
  %46 = load i64, i64* %45, align 8, !tbaa !21
  %47 = getelementptr inbounds i64, i64* %0, i64 9
  store i64 %46, i64* %47, align 8, !tbaa !21
  br label %48

48:                                               ; preds = %3, %44
  %49 = getelementptr inbounds i64, i64* %1, i64 8
  %50 = load i64, i64* %49, align 8, !tbaa !21
  %51 = getelementptr inbounds i64, i64* %0, i64 8
  store i64 %50, i64* %51, align 8, !tbaa !21
  br label %52

52:                                               ; preds = %3, %48
  %53 = getelementptr inbounds i64, i64* %1, i64 7
  %54 = load i64, i64* %53, align 8, !tbaa !21
  %55 = getelementptr inbounds i64, i64* %0, i64 7
  store i64 %54, i64* %55, align 8, !tbaa !21
  br label %56

56:                                               ; preds = %3, %52
  %57 = getelementptr inbounds i64, i64* %1, i64 6
  %58 = load i64, i64* %57, align 8, !tbaa !21
  %59 = getelementptr inbounds i64, i64* %0, i64 6
  store i64 %58, i64* %59, align 8, !tbaa !21
  br label %60

60:                                               ; preds = %3, %56
  %61 = getelementptr inbounds i64, i64* %1, i64 5
  %62 = load i64, i64* %61, align 8, !tbaa !21
  %63 = getelementptr inbounds i64, i64* %0, i64 5
  store i64 %62, i64* %63, align 8, !tbaa !21
  br label %64

64:                                               ; preds = %3, %60
  %65 = getelementptr inbounds i64, i64* %1, i64 4
  %66 = load i64, i64* %65, align 8, !tbaa !21
  %67 = getelementptr inbounds i64, i64* %0, i64 4
  store i64 %66, i64* %67, align 8, !tbaa !21
  br label %68

68:                                               ; preds = %3, %64
  %69 = getelementptr inbounds i64, i64* %1, i64 3
  %70 = load i64, i64* %69, align 8, !tbaa !21
  %71 = getelementptr inbounds i64, i64* %0, i64 3
  store i64 %70, i64* %71, align 8, !tbaa !21
  br label %72

72:                                               ; preds = %3, %68
  %73 = getelementptr inbounds i64, i64* %1, i64 2
  %74 = load i64, i64* %73, align 8, !tbaa !21
  %75 = getelementptr inbounds i64, i64* %0, i64 2
  store i64 %74, i64* %75, align 8, !tbaa !21
  br label %76

76:                                               ; preds = %3, %72
  %77 = getelementptr inbounds i64, i64* %1, i64 1
  %78 = load i64, i64* %77, align 8, !tbaa !21
  %79 = getelementptr inbounds i64, i64* %0, i64 1
  store i64 %78, i64* %79, align 8, !tbaa !21
  br label %80

80:                                               ; preds = %3, %76
  %81 = load i64, i64* %1, align 8, !tbaa !21
  store i64 %81, i64* %0, align 8, !tbaa !21
  br label %97

82:                                               ; preds = %3, %82
  %83 = phi i64 [ %95, %82 ], [ 0, %3 ]
  %84 = getelementptr inbounds i64, i64* %1, i64 %83
  %85 = getelementptr inbounds i64, i64* %0, i64 %83
  %86 = bitcast i64* %84 to <2 x i64>*
  %87 = load <2 x i64>, <2 x i64>* %86, align 8, !tbaa !21
  %88 = bitcast i64* %85 to <2 x i64>*
  store <2 x i64> %87, <2 x i64>* %88, align 8, !tbaa !21
  %89 = or i64 %83, 2
  %90 = getelementptr inbounds i64, i64* %1, i64 %89
  %91 = getelementptr inbounds i64, i64* %0, i64 %89
  %92 = bitcast i64* %90 to <2 x i64>*
  %93 = load <2 x i64>, <2 x i64>* %92, align 8, !tbaa !21
  %94 = bitcast i64* %91 to <2 x i64>*
  store <2 x i64> %93, <2 x i64>* %94, align 8, !tbaa !21
  %95 = add i64 %83, 4
  %96 = icmp ult i64 %95, %2
  br i1 %96, label %82, label %97

97:                                               ; preds = %82, %80, %3
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
!10 = !{!11, !12, i64 0}
!11 = !{!"zahl", !12, i64 0, !12, i64 4, !15, i64 8, !15, i64 16, !16, i64 24}
!12 = !{!"int", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"long", !13, i64 0}
!16 = !{!"any pointer", !13, i64 0}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!11, !15, i64 8}
!19 = !{!11, !16, i64 24}
!20 = !{!11, !15, i64 16}
!21 = !{!22, !22, i64 0}
!22 = !{!"long long", !13, i64 0}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = distinct !{!30, !29}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !29}
