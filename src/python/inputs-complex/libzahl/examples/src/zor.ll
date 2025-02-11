; ModuleID = 'src/zor.c'
source_filename = "src/zor.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: nounwind ssp uwtable
define void @zor(%struct.zahl* noundef %0, %struct.zahl* noundef readonly %1, %struct.zahl* noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10, !prof !17

7:                                                ; preds = %3
  %8 = icmp eq %struct.zahl* %0, %2
  br i1 %8, label %361, label %9

9:                                                ; preds = %7
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef %2)
  br label %361

10:                                               ; preds = %3
  %11 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !17

14:                                               ; preds = %10
  %15 = icmp eq %struct.zahl* %0, %1
  br i1 %15, label %361, label %16

16:                                               ; preds = %14
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1)
  br label %361

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %19 = load i64, i64* %18, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %21 = load i64, i64* %20, align 8, !tbaa !18
  %22 = icmp ult i64 %19, %21
  %23 = select i1 %22, i64 %19, i64 %21
  %24 = icmp ugt i64 %19, %21
  %25 = select i1 %24, i64 %19, i64 %21
  %26 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %27 = load i64, i64* %26, align 8, !tbaa !19
  %28 = icmp ult i64 %27, %25
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %25) #4
  br label %30

30:                                               ; preds = %29, %17
  %31 = icmp eq %struct.zahl* %0, %1
  br i1 %31, label %32, label %149

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %34 = load i64*, i64** %33, align 8, !tbaa !20
  %35 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %36 = load i64*, i64** %35, align 8, !tbaa !20
  %37 = icmp ult i64 %23, 5
  br i1 %37, label %38, label %65

38:                                               ; preds = %32
  %39 = icmp eq i64 %23, 0
  br i1 %39, label %145, label %40

40:                                               ; preds = %38
  %41 = load i64, i64* %34, align 8, !tbaa !21
  %42 = load i64, i64* %36, align 8, !tbaa !21
  %43 = or i64 %42, %41
  store i64 %43, i64* %34, align 8, !tbaa !21
  %44 = icmp eq i64 %23, 1
  br i1 %44, label %145, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds i64, i64* %34, i64 1
  %47 = load i64, i64* %46, align 8, !tbaa !21
  %48 = getelementptr inbounds i64, i64* %36, i64 1
  %49 = load i64, i64* %48, align 8, !tbaa !21
  %50 = or i64 %49, %47
  store i64 %50, i64* %46, align 8, !tbaa !21
  %51 = icmp ugt i64 %23, 2
  br i1 %51, label %52, label %145

52:                                               ; preds = %45
  %53 = getelementptr inbounds i64, i64* %34, i64 2
  %54 = load i64, i64* %53, align 8, !tbaa !21
  %55 = getelementptr inbounds i64, i64* %36, i64 2
  %56 = load i64, i64* %55, align 8, !tbaa !21
  %57 = or i64 %56, %54
  store i64 %57, i64* %53, align 8, !tbaa !21
  %58 = icmp eq i64 %23, 3
  br i1 %58, label %145, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds i64, i64* %34, i64 3
  %61 = load i64, i64* %60, align 8, !tbaa !21
  %62 = getelementptr inbounds i64, i64* %36, i64 3
  %63 = load i64, i64* %62, align 8, !tbaa !21
  %64 = or i64 %63, %61
  store i64 %64, i64* %60, align 8, !tbaa !21
  br label %145

65:                                               ; preds = %32, %65
  %66 = phi i64 [ %91, %65 ], [ 4, %32 ]
  %67 = phi i64 [ %66, %65 ], [ 0, %32 ]
  %68 = or i64 %67, 3
  %69 = getelementptr inbounds i64, i64* %34, i64 %68
  %70 = load i64, i64* %69, align 8, !tbaa !21
  %71 = getelementptr inbounds i64, i64* %36, i64 %68
  %72 = load i64, i64* %71, align 8, !tbaa !21
  %73 = or i64 %72, %70
  store i64 %73, i64* %69, align 8, !tbaa !21
  %74 = or i64 %67, 2
  %75 = getelementptr inbounds i64, i64* %34, i64 %74
  %76 = load i64, i64* %75, align 8, !tbaa !21
  %77 = getelementptr inbounds i64, i64* %36, i64 %74
  %78 = load i64, i64* %77, align 8, !tbaa !21
  %79 = or i64 %78, %76
  store i64 %79, i64* %75, align 8, !tbaa !21
  %80 = or i64 %67, 1
  %81 = getelementptr inbounds i64, i64* %34, i64 %80
  %82 = load i64, i64* %81, align 8, !tbaa !21
  %83 = getelementptr inbounds i64, i64* %36, i64 %80
  %84 = load i64, i64* %83, align 8, !tbaa !21
  %85 = or i64 %84, %82
  store i64 %85, i64* %81, align 8, !tbaa !21
  %86 = getelementptr inbounds i64, i64* %34, i64 %67
  %87 = load i64, i64* %86, align 8, !tbaa !21
  %88 = getelementptr inbounds i64, i64* %36, i64 %67
  %89 = load i64, i64* %88, align 8, !tbaa !21
  %90 = or i64 %89, %87
  store i64 %90, i64* %86, align 8, !tbaa !21
  %91 = add i64 %66, 4
  %92 = icmp ult i64 %91, %23
  br i1 %92, label %65, label %93

93:                                               ; preds = %65
  %94 = icmp ugt i64 %91, %23
  %95 = icmp ugt i64 %23, %66
  %96 = and i1 %94, %95
  br i1 %96, label %97, label %145

97:                                               ; preds = %93
  %98 = sub i64 %23, %66
  %99 = icmp ult i64 %98, 4
  br i1 %99, label %134, label %100

100:                                              ; preds = %97
  %101 = getelementptr i64, i64* %34, i64 %66
  %102 = getelementptr i64, i64* %34, i64 %23
  %103 = getelementptr i64, i64* %36, i64 %66
  %104 = getelementptr i64, i64* %36, i64 %23
  %105 = icmp ult i64* %101, %104
  %106 = icmp ult i64* %103, %102
  %107 = and i1 %105, %106
  br i1 %107, label %134, label %108

108:                                              ; preds = %100
  %109 = and i64 %98, -4
  %110 = add i64 %66, %109
  br label %111

111:                                              ; preds = %111, %108
  %112 = phi i64 [ 0, %108 ], [ %130, %111 ]
  %113 = add i64 %66, %112
  %114 = getelementptr inbounds i64, i64* %34, i64 %113
  %115 = bitcast i64* %114 to <2 x i64>*
  %116 = load <2 x i64>, <2 x i64>* %115, align 8, !tbaa !21, !alias.scope !23, !noalias !26
  %117 = getelementptr inbounds i64, i64* %114, i64 2
  %118 = bitcast i64* %117 to <2 x i64>*
  %119 = load <2 x i64>, <2 x i64>* %118, align 8, !tbaa !21, !alias.scope !23, !noalias !26
  %120 = getelementptr inbounds i64, i64* %36, i64 %113
  %121 = bitcast i64* %120 to <2 x i64>*
  %122 = load <2 x i64>, <2 x i64>* %121, align 8, !tbaa !21, !alias.scope !26
  %123 = getelementptr inbounds i64, i64* %120, i64 2
  %124 = bitcast i64* %123 to <2 x i64>*
  %125 = load <2 x i64>, <2 x i64>* %124, align 8, !tbaa !21, !alias.scope !26
  %126 = or <2 x i64> %122, %116
  %127 = or <2 x i64> %125, %119
  %128 = bitcast i64* %114 to <2 x i64>*
  store <2 x i64> %126, <2 x i64>* %128, align 8, !tbaa !21, !alias.scope !23, !noalias !26
  %129 = bitcast i64* %117 to <2 x i64>*
  store <2 x i64> %127, <2 x i64>* %129, align 8, !tbaa !21, !alias.scope !23, !noalias !26
  %130 = add nuw i64 %112, 4
  %131 = icmp eq i64 %130, %109
  br i1 %131, label %132, label %111, !llvm.loop !28

132:                                              ; preds = %111
  %133 = icmp eq i64 %98, %109
  br i1 %133, label %145, label %134

134:                                              ; preds = %100, %97, %132
  %135 = phi i64 [ %66, %100 ], [ %66, %97 ], [ %110, %132 ]
  br label %136

136:                                              ; preds = %134, %136
  %137 = phi i64 [ %143, %136 ], [ %135, %134 ]
  %138 = getelementptr inbounds i64, i64* %34, i64 %137
  %139 = load i64, i64* %138, align 8, !tbaa !21
  %140 = getelementptr inbounds i64, i64* %36, i64 %137
  %141 = load i64, i64* %140, align 8, !tbaa !21
  %142 = or i64 %141, %139
  store i64 %142, i64* %138, align 8, !tbaa !21
  %143 = add nuw i64 %137, 1
  %144 = icmp eq i64 %143, %23
  br i1 %144, label %145, label %136, !llvm.loop !30

145:                                              ; preds = %136, %132, %38, %40, %45, %93, %52, %59
  %146 = load i64, i64* %18, align 8, !tbaa !18
  %147 = load i64, i64* %20, align 8, !tbaa !18
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %347, label %353

149:                                              ; preds = %30
  %150 = icmp eq %struct.zahl* %0, %2
  br i1 %150, label %151, label %268, !prof !17

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %153 = load i64*, i64** %152, align 8, !tbaa !20
  %154 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %155 = load i64*, i64** %154, align 8, !tbaa !20
  %156 = icmp ult i64 %23, 5
  br i1 %156, label %157, label %184

157:                                              ; preds = %151
  %158 = icmp eq i64 %23, 0
  br i1 %158, label %264, label %159

159:                                              ; preds = %157
  %160 = load i64, i64* %153, align 8, !tbaa !21
  %161 = load i64, i64* %155, align 8, !tbaa !21
  %162 = or i64 %161, %160
  store i64 %162, i64* %153, align 8, !tbaa !21
  %163 = icmp eq i64 %23, 1
  br i1 %163, label %264, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds i64, i64* %153, i64 1
  %166 = load i64, i64* %165, align 8, !tbaa !21
  %167 = getelementptr inbounds i64, i64* %155, i64 1
  %168 = load i64, i64* %167, align 8, !tbaa !21
  %169 = or i64 %168, %166
  store i64 %169, i64* %165, align 8, !tbaa !21
  %170 = icmp ugt i64 %23, 2
  br i1 %170, label %171, label %264

171:                                              ; preds = %164
  %172 = getelementptr inbounds i64, i64* %153, i64 2
  %173 = load i64, i64* %172, align 8, !tbaa !21
  %174 = getelementptr inbounds i64, i64* %155, i64 2
  %175 = load i64, i64* %174, align 8, !tbaa !21
  %176 = or i64 %175, %173
  store i64 %176, i64* %172, align 8, !tbaa !21
  %177 = icmp eq i64 %23, 3
  br i1 %177, label %264, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds i64, i64* %153, i64 3
  %180 = load i64, i64* %179, align 8, !tbaa !21
  %181 = getelementptr inbounds i64, i64* %155, i64 3
  %182 = load i64, i64* %181, align 8, !tbaa !21
  %183 = or i64 %182, %180
  store i64 %183, i64* %179, align 8, !tbaa !21
  br label %264

184:                                              ; preds = %151, %184
  %185 = phi i64 [ %210, %184 ], [ 4, %151 ]
  %186 = phi i64 [ %185, %184 ], [ 0, %151 ]
  %187 = or i64 %186, 3
  %188 = getelementptr inbounds i64, i64* %153, i64 %187
  %189 = load i64, i64* %188, align 8, !tbaa !21
  %190 = getelementptr inbounds i64, i64* %155, i64 %187
  %191 = load i64, i64* %190, align 8, !tbaa !21
  %192 = or i64 %191, %189
  store i64 %192, i64* %188, align 8, !tbaa !21
  %193 = or i64 %186, 2
  %194 = getelementptr inbounds i64, i64* %153, i64 %193
  %195 = load i64, i64* %194, align 8, !tbaa !21
  %196 = getelementptr inbounds i64, i64* %155, i64 %193
  %197 = load i64, i64* %196, align 8, !tbaa !21
  %198 = or i64 %197, %195
  store i64 %198, i64* %194, align 8, !tbaa !21
  %199 = or i64 %186, 1
  %200 = getelementptr inbounds i64, i64* %153, i64 %199
  %201 = load i64, i64* %200, align 8, !tbaa !21
  %202 = getelementptr inbounds i64, i64* %155, i64 %199
  %203 = load i64, i64* %202, align 8, !tbaa !21
  %204 = or i64 %203, %201
  store i64 %204, i64* %200, align 8, !tbaa !21
  %205 = getelementptr inbounds i64, i64* %153, i64 %186
  %206 = load i64, i64* %205, align 8, !tbaa !21
  %207 = getelementptr inbounds i64, i64* %155, i64 %186
  %208 = load i64, i64* %207, align 8, !tbaa !21
  %209 = or i64 %208, %206
  store i64 %209, i64* %205, align 8, !tbaa !21
  %210 = add i64 %185, 4
  %211 = icmp ult i64 %210, %23
  br i1 %211, label %184, label %212

212:                                              ; preds = %184
  %213 = icmp ugt i64 %210, %23
  %214 = icmp ugt i64 %23, %185
  %215 = and i1 %213, %214
  br i1 %215, label %216, label %264

216:                                              ; preds = %212
  %217 = sub i64 %23, %185
  %218 = icmp ult i64 %217, 4
  br i1 %218, label %253, label %219

219:                                              ; preds = %216
  %220 = getelementptr i64, i64* %153, i64 %185
  %221 = getelementptr i64, i64* %153, i64 %23
  %222 = getelementptr i64, i64* %155, i64 %185
  %223 = getelementptr i64, i64* %155, i64 %23
  %224 = icmp ult i64* %220, %223
  %225 = icmp ult i64* %222, %221
  %226 = and i1 %224, %225
  br i1 %226, label %253, label %227

227:                                              ; preds = %219
  %228 = and i64 %217, -4
  %229 = add i64 %185, %228
  br label %230

230:                                              ; preds = %230, %227
  %231 = phi i64 [ 0, %227 ], [ %249, %230 ]
  %232 = add i64 %185, %231
  %233 = getelementptr inbounds i64, i64* %153, i64 %232
  %234 = bitcast i64* %233 to <2 x i64>*
  %235 = load <2 x i64>, <2 x i64>* %234, align 8, !tbaa !21, !alias.scope !31, !noalias !34
  %236 = getelementptr inbounds i64, i64* %233, i64 2
  %237 = bitcast i64* %236 to <2 x i64>*
  %238 = load <2 x i64>, <2 x i64>* %237, align 8, !tbaa !21, !alias.scope !31, !noalias !34
  %239 = getelementptr inbounds i64, i64* %155, i64 %232
  %240 = bitcast i64* %239 to <2 x i64>*
  %241 = load <2 x i64>, <2 x i64>* %240, align 8, !tbaa !21, !alias.scope !34
  %242 = getelementptr inbounds i64, i64* %239, i64 2
  %243 = bitcast i64* %242 to <2 x i64>*
  %244 = load <2 x i64>, <2 x i64>* %243, align 8, !tbaa !21, !alias.scope !34
  %245 = or <2 x i64> %241, %235
  %246 = or <2 x i64> %244, %238
  %247 = bitcast i64* %233 to <2 x i64>*
  store <2 x i64> %245, <2 x i64>* %247, align 8, !tbaa !21, !alias.scope !31, !noalias !34
  %248 = bitcast i64* %236 to <2 x i64>*
  store <2 x i64> %246, <2 x i64>* %248, align 8, !tbaa !21, !alias.scope !31, !noalias !34
  %249 = add nuw i64 %231, 4
  %250 = icmp eq i64 %249, %228
  br i1 %250, label %251, label %230, !llvm.loop !36

251:                                              ; preds = %230
  %252 = icmp eq i64 %217, %228
  br i1 %252, label %264, label %253

253:                                              ; preds = %219, %216, %251
  %254 = phi i64 [ %185, %219 ], [ %185, %216 ], [ %229, %251 ]
  br label %255

255:                                              ; preds = %253, %255
  %256 = phi i64 [ %262, %255 ], [ %254, %253 ]
  %257 = getelementptr inbounds i64, i64* %153, i64 %256
  %258 = load i64, i64* %257, align 8, !tbaa !21
  %259 = getelementptr inbounds i64, i64* %155, i64 %256
  %260 = load i64, i64* %259, align 8, !tbaa !21
  %261 = or i64 %260, %258
  store i64 %261, i64* %257, align 8, !tbaa !21
  %262 = add nuw i64 %256, 1
  %263 = icmp eq i64 %262, %23
  br i1 %263, label %264, label %255, !llvm.loop !37

264:                                              ; preds = %255, %251, %157, %159, %164, %212, %171, %178
  %265 = load i64, i64* %20, align 8, !tbaa !18
  %266 = load i64, i64* %18, align 8, !tbaa !18
  %267 = icmp ult i64 %265, %266
  br i1 %267, label %347, label %353

268:                                              ; preds = %149
  %269 = load i64, i64* %18, align 8, !tbaa !18
  %270 = icmp eq i64 %25, %269
  %271 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %272 = load i64*, i64** %271, align 8, !tbaa !20
  br i1 %270, label %273, label %310

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %275 = load i64*, i64** %274, align 8, !tbaa !20
  %276 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %277 = load i64*, i64** %276, align 8, !tbaa !20
  %278 = icmp eq i64 %23, 0
  br i1 %278, label %347, label %279

279:                                              ; preds = %273, %279
  %280 = phi i64 [ %308, %279 ], [ 0, %273 ]
  %281 = getelementptr inbounds i64, i64* %275, i64 %280
  %282 = load i64, i64* %281, align 8, !tbaa !21
  %283 = getelementptr inbounds i64, i64* %277, i64 %280
  %284 = load i64, i64* %283, align 8, !tbaa !21
  %285 = or i64 %284, %282
  %286 = getelementptr inbounds i64, i64* %272, i64 %280
  store i64 %285, i64* %286, align 8, !tbaa !21
  %287 = or i64 %280, 1
  %288 = getelementptr inbounds i64, i64* %275, i64 %287
  %289 = load i64, i64* %288, align 8, !tbaa !21
  %290 = getelementptr inbounds i64, i64* %277, i64 %287
  %291 = load i64, i64* %290, align 8, !tbaa !21
  %292 = or i64 %291, %289
  %293 = getelementptr inbounds i64, i64* %272, i64 %287
  store i64 %292, i64* %293, align 8, !tbaa !21
  %294 = or i64 %280, 2
  %295 = getelementptr inbounds i64, i64* %275, i64 %294
  %296 = load i64, i64* %295, align 8, !tbaa !21
  %297 = getelementptr inbounds i64, i64* %277, i64 %294
  %298 = load i64, i64* %297, align 8, !tbaa !21
  %299 = or i64 %298, %296
  %300 = getelementptr inbounds i64, i64* %272, i64 %294
  store i64 %299, i64* %300, align 8, !tbaa !21
  %301 = or i64 %280, 3
  %302 = getelementptr inbounds i64, i64* %275, i64 %301
  %303 = load i64, i64* %302, align 8, !tbaa !21
  %304 = getelementptr inbounds i64, i64* %277, i64 %301
  %305 = load i64, i64* %304, align 8, !tbaa !21
  %306 = or i64 %305, %303
  %307 = getelementptr inbounds i64, i64* %272, i64 %301
  store i64 %306, i64* %307, align 8, !tbaa !21
  %308 = add i64 %280, 4
  %309 = icmp ult i64 %308, %23
  br i1 %309, label %279, label %347

310:                                              ; preds = %268
  %311 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %312 = load i64*, i64** %311, align 8, !tbaa !20
  %313 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %314 = load i64*, i64** %313, align 8, !tbaa !20
  %315 = icmp eq i64 %23, 0
  br i1 %315, label %347, label %316

316:                                              ; preds = %310, %316
  %317 = phi i64 [ %345, %316 ], [ 0, %310 ]
  %318 = getelementptr inbounds i64, i64* %312, i64 %317
  %319 = load i64, i64* %318, align 8, !tbaa !21
  %320 = getelementptr inbounds i64, i64* %314, i64 %317
  %321 = load i64, i64* %320, align 8, !tbaa !21
  %322 = or i64 %321, %319
  %323 = getelementptr inbounds i64, i64* %272, i64 %317
  store i64 %322, i64* %323, align 8, !tbaa !21
  %324 = or i64 %317, 1
  %325 = getelementptr inbounds i64, i64* %312, i64 %324
  %326 = load i64, i64* %325, align 8, !tbaa !21
  %327 = getelementptr inbounds i64, i64* %314, i64 %324
  %328 = load i64, i64* %327, align 8, !tbaa !21
  %329 = or i64 %328, %326
  %330 = getelementptr inbounds i64, i64* %272, i64 %324
  store i64 %329, i64* %330, align 8, !tbaa !21
  %331 = or i64 %317, 2
  %332 = getelementptr inbounds i64, i64* %312, i64 %331
  %333 = load i64, i64* %332, align 8, !tbaa !21
  %334 = getelementptr inbounds i64, i64* %314, i64 %331
  %335 = load i64, i64* %334, align 8, !tbaa !21
  %336 = or i64 %335, %333
  %337 = getelementptr inbounds i64, i64* %272, i64 %331
  store i64 %336, i64* %337, align 8, !tbaa !21
  %338 = or i64 %317, 3
  %339 = getelementptr inbounds i64, i64* %312, i64 %338
  %340 = load i64, i64* %339, align 8, !tbaa !21
  %341 = getelementptr inbounds i64, i64* %314, i64 %338
  %342 = load i64, i64* %341, align 8, !tbaa !21
  %343 = or i64 %342, %340
  %344 = getelementptr inbounds i64, i64* %272, i64 %338
  store i64 %343, i64* %344, align 8, !tbaa !21
  %345 = add i64 %317, 4
  %346 = icmp ult i64 %345, %23
  br i1 %346, label %316, label %347

347:                                              ; preds = %316, %279, %310, %273, %264, %145
  %348 = phi i64* [ %34, %145 ], [ %153, %264 ], [ %272, %273 ], [ %272, %310 ], [ %272, %279 ], [ %272, %316 ]
  %349 = phi i64* [ %36, %145 ], [ %155, %264 ], [ %277, %273 ], [ %314, %310 ], [ %277, %279 ], [ %314, %316 ]
  %350 = getelementptr inbounds i64, i64* %348, i64 %23
  %351 = getelementptr inbounds i64, i64* %349, i64 %23
  %352 = sub i64 %25, %23
  tail call fastcc void @libzahl_memcpy(i64* noundef %350, i64* noundef %351, i64 noundef %352) #4
  br label %353

353:                                              ; preds = %347, %264, %145
  %354 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %25, i64* %354, align 8, !tbaa !18
  %355 = load i32, i32* %4, align 8, !tbaa !10
  %356 = load i32, i32* %11, align 8, !tbaa !10
  %357 = add nsw i32 %356, %355
  %358 = icmp eq i32 %357, 2
  %359 = select i1 %358, i32 1, i32 -1
  %360 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %359, i32* %360, align 8, !tbaa !10
  br label %361

361:                                              ; preds = %14, %16, %7, %9, %353
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
  %13 = load i64, i64* %12, align 8, !tbaa !19
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
  %21 = load i64*, i64** %20, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %23 = load i64*, i64** %22, align 8, !tbaa !20
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
!19 = !{!11, !15, i64 16}
!20 = !{!11, !16, i64 24}
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
