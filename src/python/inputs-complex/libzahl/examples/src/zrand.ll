; ModuleID = 'src/zrand.c'
source_filename = "src/zrand.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@libzahl_const_1 = external global [1 x %struct.zahl], align 8
@zrand_libc_rand.inited = internal unnamed_addr global i1 false, align 1
@zrand_libc_random.inited = internal unnamed_addr global i1 false, align 1
@zrand_libc_rand48.inited = internal unnamed_addr global i1 false, align 1
@libzahl_error = external local_unnamed_addr global i32, align 4
@libzahl_temp_stack = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_stack_head = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_allocation = external local_unnamed_addr global i8*, align 8
@libzahl_jmp_buf = external global [48 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @zrand(%struct.zahl* noundef %0, i32 noundef %1, i32 noundef %2, %struct.zahl* noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #7
  store i32 -1, i32* %5, align 4, !tbaa !10
  switch i32 %1, label %11 [
    i32 0, label %26
    i32 1, label %7
    i32 4, label %8
    i32 2, label %9
    i32 3, label %9
    i32 5, label %9
    i32 6, label %10
  ]

7:                                                ; preds = %4
  br label %26

8:                                                ; preds = %4
  br label %26

9:                                                ; preds = %4, %4, %4
  br label %26

10:                                               ; preds = %4
  br label %26

11:                                               ; preds = %4
  store i32 22, i32* @libzahl_error, align 4, !tbaa !10
  %12 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !14
  %13 = icmp eq %struct.zahl** %12, null
  %14 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %15 = icmp eq %struct.zahl** %14, %12
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %11, %17
  %18 = phi %struct.zahl** [ %21, %17 ], [ %14, %11 ]
  %19 = getelementptr inbounds %struct.zahl*, %struct.zahl** %18, i64 -1
  store %struct.zahl** %19, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !14
  %20 = load %struct.zahl*, %struct.zahl** %19, align 8, !tbaa !14
  tail call void @zfree(%struct.zahl* noundef %20) #7
  %21 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !14
  %22 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !14
  %23 = icmp eq %struct.zahl** %21, %22
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %11
  %25 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !14
  tail call void @free(i8* noundef %25) #7
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !14
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #8
  unreachable

26:                                               ; preds = %4, %10, %9, %8, %7
  %27 = phi i1 [ true, %10 ], [ true, %9 ], [ true, %8 ], [ false, %7 ], [ false, %4 ]
  %28 = phi i8* [ null, %10 ], [ null, %9 ], [ null, %8 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %7 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %4 ]
  %29 = phi void (i8*, i64, i8*)* [ @zrand_libc_rand48, %10 ], [ @zrand_libc_random, %9 ], [ @zrand_libc_rand, %8 ], [ @zrand_fd, %7 ], [ @zrand_fd, %4 ]
  %30 = getelementptr %struct.zahl, %struct.zahl* %3, i64 0, i32 0
  %31 = load i32, i32* %30, align 8, !tbaa !16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35, !prof !19

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %34, align 8, !tbaa !16
  br label %347

35:                                               ; preds = %26
  br i1 %27, label %42, label %36

36:                                               ; preds = %35
  %37 = tail call i32 (i8*, i32, ...) @"\01_open"(i8* noundef %28, i32 noundef 0) #7
  store i32 %37, i32* %5, align 4, !tbaa !10
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42, !prof !19

39:                                               ; preds = %36
  %40 = tail call i32* @__error() #7
  %41 = load i32, i32* %40, align 4, !tbaa !10
  tail call fastcc void @libzahl_failure(i32 noundef %41)
  unreachable

42:                                               ; preds = %36, %35
  %43 = phi i8* [ null, %35 ], [ %6, %36 ]
  switch i32 %2, label %327 [
    i32 0, label %44
    i32 1, label %112
    i32 2, label %221
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %30, align 8, !tbaa !16
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48, !prof !19

47:                                               ; preds = %44
  tail call fastcc void @libzahl_failure(i32 noundef -4)
  unreachable

48:                                               ; preds = %44
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %72, label %50, !prof !19

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 4
  %52 = load i64*, i64** %51, align 8, !tbaa !20
  %53 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 2
  %54 = load i64, i64* %53, align 8, !tbaa !21
  %55 = add i64 %54, -1
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8, !tbaa !22
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50, %59
  %60 = phi i64 [ %61, %59 ], [ %55, %50 ]
  %61 = add i64 %60, -1
  %62 = getelementptr inbounds i64, i64* %52, i64 %61
  %63 = load i64, i64* %62, align 8, !tbaa !22
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %59, label %65

65:                                               ; preds = %59
  store i64 %60, i64* %53, align 8, !tbaa !21
  br label %66

66:                                               ; preds = %65, %50
  %67 = phi i64 [ %60, %65 ], [ %54, %50 ]
  %68 = phi i64 [ %63, %65 ], [ %57, %50 ]
  %69 = shl i64 %67, 6
  %70 = tail call i64 @llvm.ctlz.i64(i64 %68, i1 true) #7, !range !24
  %71 = sub i64 %69, %70
  br label %72

72:                                               ; preds = %48, %66
  %73 = phi i64 [ %71, %66 ], [ 1, %48 ]
  %74 = add i64 %73, 63
  %75 = lshr i64 %74, 6
  %76 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %77 = load i64, i64* %76, align 8, !tbaa !25
  %78 = icmp ult i64 %77, %75
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %75) #7
  br label %80

80:                                               ; preds = %79, %72
  %81 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %82 = bitcast i64** %81 to i8**
  %83 = load i8*, i8** %82, align 8, !tbaa !20
  %84 = shl nuw nsw i64 %75, 3
  call void %29(i8* noundef %83, i64 noundef %84, i8* noundef %43) #7, !callees !26
  %85 = and i64 %73, 63
  %86 = shl nsw i64 -1, %85
  %87 = xor i64 %86, -1
  %88 = load i64*, i64** %81, align 8, !tbaa !20
  %89 = add nsw i64 %75, -1
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8, !tbaa !22
  %92 = and i64 %91, %87
  store i64 %92, i64* %90, align 8, !tbaa !22
  br label %93

93:                                               ; preds = %97, %80
  %94 = phi i64 [ %75, %80 ], [ %95, %97 ]
  %95 = add nsw i64 %94, -1
  %96 = icmp eq i64 %94, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds i64, i64* %88, i64 %95
  %99 = load i64, i64* %98, align 8, !tbaa !22
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %93, label %101, !prof !19

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %94, i64* %102, align 8, !tbaa !21
  br label %103

103:                                              ; preds = %93, %101
  %104 = phi i32 [ 1, %101 ], [ 0, %93 ]
  %105 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %104, i32* %105, align 8, !tbaa !16
  call void @zadd(%struct.zahl* noundef %0, %struct.zahl* noundef %0, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0)) #7
  %106 = load i32, i32* %105, align 8, !tbaa !16
  %107 = mul nsw i32 %106, %106
  store i32 %107, i32* %105, align 8, !tbaa !16
  %108 = load i32, i32* %30, align 8, !tbaa !16
  %109 = mul nsw i32 %108, %108
  store i32 %109, i32* %30, align 8, !tbaa !16
  call void @zmul_ll(%struct.zahl* noundef %0, %struct.zahl* noundef %0, %struct.zahl* noundef %3) #7
  store i32 %108, i32* %30, align 8, !tbaa !16
  store i32 %106, i32* %105, align 8, !tbaa !16
  %110 = load i32, i32* %30, align 8, !tbaa !16
  %111 = mul nsw i32 %110, %106
  store i32 %111, i32* %105, align 8, !tbaa !16
  call void @zrsh(%struct.zahl* noundef %0, %struct.zahl* noundef %0, i64 noundef %73) #7
  br label %342

112:                                              ; preds = %42
  %113 = load i32, i32* %30, align 8, !tbaa !16
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116, !prof !19

115:                                              ; preds = %112
  tail call fastcc void @libzahl_failure(i32 noundef -4)
  unreachable

116:                                              ; preds = %112
  %117 = icmp eq i32 %113, 0
  br i1 %117, label %140, label %118, !prof !19

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 4
  %120 = load i64*, i64** %119, align 8, !tbaa !20
  %121 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 2
  %122 = load i64, i64* %121, align 8, !tbaa !21
  %123 = add i64 %122, -1
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  %125 = load i64, i64* %124, align 8, !tbaa !22
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %118, %127
  %128 = phi i64 [ %129, %127 ], [ %123, %118 ]
  %129 = add i64 %128, -1
  %130 = getelementptr inbounds i64, i64* %120, i64 %129
  %131 = load i64, i64* %130, align 8, !tbaa !22
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %127, label %133

133:                                              ; preds = %127
  store i64 %128, i64* %121, align 8, !tbaa !21
  br label %134

134:                                              ; preds = %133, %118
  %135 = phi i64 [ %128, %133 ], [ %122, %118 ]
  %136 = phi i64 [ %131, %133 ], [ %125, %118 ]
  %137 = shl i64 %135, 6
  %138 = tail call i64 @llvm.ctlz.i64(i64 %136, i1 true) #7, !range !24
  %139 = sub i64 %137, %138
  br label %140

140:                                              ; preds = %116, %134
  %141 = phi i64 [ %139, %134 ], [ 1, %116 ]
  %142 = add i64 %141, 63
  %143 = lshr i64 %142, 6
  %144 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %145 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %146 = bitcast i64** %145 to i8**
  %147 = shl nuw nsw i64 %143, 3
  %148 = and i64 %141, 63
  %149 = shl nsw i64 -1, %148
  %150 = xor i64 %149, -1
  %151 = add nsw i64 %143, -1
  %152 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %153 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %154 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 2
  %155 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 4
  br label %156

156:                                              ; preds = %218, %140
  %157 = load i64, i64* %144, align 8, !tbaa !25
  %158 = icmp ult i64 %157, %143
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %143) #7
  br label %160

160:                                              ; preds = %159, %156
  %161 = load i8*, i8** %146, align 8, !tbaa !20
  call void %29(i8* noundef %161, i64 noundef %147, i8* noundef %43) #7, !callees !26
  %162 = load i64*, i64** %145, align 8, !tbaa !20
  %163 = getelementptr inbounds i64, i64* %162, i64 %151
  %164 = load i64, i64* %163, align 8, !tbaa !22
  %165 = and i64 %164, %150
  store i64 %165, i64* %163, align 8, !tbaa !22
  br label %166

166:                                              ; preds = %170, %160
  %167 = phi i64 [ %143, %160 ], [ %168, %170 ]
  %168 = add i64 %167, -1
  %169 = icmp eq i64 %167, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds i64, i64* %162, i64 %168
  %172 = load i64, i64* %171, align 8, !tbaa !22
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %166, label %175, !prof !19

174:                                              ; preds = %166
  store i32 0, i32* %153, align 8, !tbaa !16
  br label %342

175:                                              ; preds = %170
  store i64 %167, i64* %152, align 8, !tbaa !21
  store i32 1, i32* %153, align 8, !tbaa !16
  %176 = load i32, i32* %30, align 8, !tbaa !16
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %218, label %178, !prof !19

178:                                              ; preds = %175
  %179 = load i64, i64* %154, align 8, !tbaa !21
  %180 = add i64 %179, -1
  %181 = icmp ugt i64 %168, %180
  br i1 %181, label %218, label %182

182:                                              ; preds = %178
  %183 = icmp ugt i64 %180, %168
  br i1 %183, label %184, label %186

184:                                              ; preds = %182
  %185 = load i64*, i64** %155, align 8, !tbaa !20
  br label %189

186:                                              ; preds = %195, %182
  %187 = icmp eq i64 %168, 0
  %188 = load i64*, i64** %155, align 8, !tbaa !20
  br i1 %187, label %209, label %199

189:                                              ; preds = %195, %184
  %190 = phi i64 [ %179, %184 ], [ %196, %195 ]
  %191 = phi i64 [ %180, %184 ], [ %197, %195 ]
  %192 = getelementptr inbounds i64, i64* %185, i64 %191
  %193 = load i64, i64* %192, align 8, !tbaa !22
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %342

195:                                              ; preds = %189
  %196 = add i64 %190, -1
  store i64 %196, i64* %154, align 8, !tbaa !21
  %197 = add i64 %191, -1
  %198 = icmp ugt i64 %197, %168
  br i1 %198, label %189, label %186

199:                                              ; preds = %186, %206
  %200 = phi i64 [ %207, %206 ], [ %168, %186 ]
  %201 = getelementptr inbounds i64, i64* %162, i64 %200
  %202 = load i64, i64* %201, align 8, !tbaa !22
  %203 = getelementptr inbounds i64, i64* %188, i64 %200
  %204 = load i64, i64* %203, align 8, !tbaa !22
  %205 = icmp eq i64 %202, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = add i64 %200, -1
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %199

209:                                              ; preds = %206, %199, %186
  %210 = phi i64 [ 0, %186 ], [ %200, %199 ], [ 0, %206 ]
  %211 = getelementptr inbounds i64, i64* %162, i64 %210
  %212 = load i64, i64* %211, align 8, !tbaa !22
  %213 = getelementptr inbounds i64, i64* %188, i64 %210
  %214 = load i64, i64* %213, align 8, !tbaa !22
  %215 = icmp ult i64 %212, %214
  %216 = icmp ugt i64 %212, %214
  %217 = zext i1 %216 to i32
  br i1 %215, label %342, label %218

218:                                              ; preds = %178, %209, %175
  %219 = phi i32 [ %217, %209 ], [ 1, %175 ], [ 1, %178 ]
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %342, label %156, !prof !27

221:                                              ; preds = %42
  %222 = load i32, i32* %30, align 8, !tbaa !16
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %225, !prof !19

224:                                              ; preds = %221
  tail call fastcc void @libzahl_failure(i32 noundef -4)
  unreachable

225:                                              ; preds = %221
  %226 = icmp eq i32 %222, 0
  br i1 %226, label %249, label %227, !prof !19

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 4
  %229 = load i64*, i64** %228, align 8, !tbaa !20
  %230 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 2
  %231 = load i64, i64* %230, align 8, !tbaa !21
  %232 = add i64 %231, -1
  %233 = getelementptr inbounds i64, i64* %229, i64 %232
  %234 = load i64, i64* %233, align 8, !tbaa !22
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %227, %236
  %237 = phi i64 [ %238, %236 ], [ %232, %227 ]
  %238 = add i64 %237, -1
  %239 = getelementptr inbounds i64, i64* %229, i64 %238
  %240 = load i64, i64* %239, align 8, !tbaa !22
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %236, label %242

242:                                              ; preds = %236
  store i64 %237, i64* %230, align 8, !tbaa !21
  br label %243

243:                                              ; preds = %242, %227
  %244 = phi i64 [ %237, %242 ], [ %231, %227 ]
  %245 = phi i64 [ %240, %242 ], [ %234, %227 ]
  %246 = shl i64 %244, 6
  %247 = tail call i64 @llvm.ctlz.i64(i64 %245, i1 true) #7, !range !24
  %248 = sub i64 %246, %247
  br label %249

249:                                              ; preds = %225, %243
  %250 = phi i64 [ %248, %243 ], [ 1, %225 ]
  %251 = add i64 %250, 63
  %252 = lshr i64 %251, 6
  %253 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %254 = load i64, i64* %253, align 8, !tbaa !25
  %255 = icmp ult i64 %254, %252
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %252) #7
  br label %257

257:                                              ; preds = %256, %249
  %258 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %259 = bitcast i64** %258 to i8**
  %260 = load i8*, i8** %259, align 8, !tbaa !20
  %261 = shl nuw nsw i64 %252, 3
  call void %29(i8* noundef %260, i64 noundef %261, i8* noundef %43) #7, !callees !26
  %262 = and i64 %250, 63
  %263 = shl nsw i64 -1, %262
  %264 = xor i64 %263, -1
  %265 = load i64*, i64** %258, align 8, !tbaa !20
  %266 = add nsw i64 %252, -1
  %267 = getelementptr inbounds i64, i64* %265, i64 %266
  %268 = load i64, i64* %267, align 8, !tbaa !22
  %269 = and i64 %268, %264
  store i64 %269, i64* %267, align 8, !tbaa !22
  br label %270

270:                                              ; preds = %274, %257
  %271 = phi i64 [ %252, %257 ], [ %272, %274 ]
  %272 = add i64 %271, -1
  %273 = icmp eq i64 %271, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds i64, i64* %265, i64 %272
  %276 = load i64, i64* %275, align 8, !tbaa !22
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %270, label %280, !prof !19

278:                                              ; preds = %270
  %279 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %279, align 8, !tbaa !16
  br label %342

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %271, i64* %281, align 8, !tbaa !21
  %282 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %282, align 8, !tbaa !16
  %283 = load i32, i32* %30, align 8, !tbaa !16
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %326, label %285, !prof !19

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 2
  %287 = load i64, i64* %286, align 8, !tbaa !21
  %288 = add i64 %287, -1
  %289 = icmp ugt i64 %272, %288
  br i1 %289, label %326, label %290

290:                                              ; preds = %285
  %291 = icmp ugt i64 %288, %272
  br i1 %291, label %292, label %295

292:                                              ; preds = %290
  %293 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 4
  %294 = load i64*, i64** %293, align 8, !tbaa !20
  br label %299

295:                                              ; preds = %305, %290
  %296 = icmp eq i64 %272, 0
  %297 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 4
  %298 = load i64*, i64** %297, align 8, !tbaa !20
  br i1 %296, label %319, label %309

299:                                              ; preds = %305, %292
  %300 = phi i64 [ %287, %292 ], [ %306, %305 ]
  %301 = phi i64 [ %288, %292 ], [ %307, %305 ]
  %302 = getelementptr inbounds i64, i64* %294, i64 %301
  %303 = load i64, i64* %302, align 8, !tbaa !22
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %342

305:                                              ; preds = %299
  %306 = add i64 %300, -1
  store i64 %306, i64* %286, align 8, !tbaa !21
  %307 = add i64 %301, -1
  %308 = icmp ugt i64 %307, %272
  br i1 %308, label %299, label %295

309:                                              ; preds = %295, %316
  %310 = phi i64 [ %317, %316 ], [ %272, %295 ]
  %311 = getelementptr inbounds i64, i64* %265, i64 %310
  %312 = load i64, i64* %311, align 8, !tbaa !22
  %313 = getelementptr inbounds i64, i64* %298, i64 %310
  %314 = load i64, i64* %313, align 8, !tbaa !22
  %315 = icmp eq i64 %312, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %309
  %317 = add i64 %310, -1
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %309

319:                                              ; preds = %316, %309, %295
  %320 = phi i64 [ 0, %295 ], [ %310, %309 ], [ 0, %316 ]
  %321 = getelementptr inbounds i64, i64* %265, i64 %320
  %322 = load i64, i64* %321, align 8, !tbaa !22
  %323 = getelementptr inbounds i64, i64* %298, i64 %320
  %324 = load i64, i64* %323, align 8, !tbaa !22
  %325 = icmp ugt i64 %322, %324
  br i1 %325, label %326, label %342, !prof !28

326:                                              ; preds = %285, %319, %280
  call void @zsub(%struct.zahl* noundef %0, %struct.zahl* noundef %0, %struct.zahl* noundef %3) #7
  br label %342

327:                                              ; preds = %42
  store i32 22, i32* @libzahl_error, align 4, !tbaa !10
  %328 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !14
  %329 = icmp eq %struct.zahl** %328, null
  %330 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %331 = icmp eq %struct.zahl** %330, %328
  %332 = select i1 %329, i1 true, i1 %331
  br i1 %332, label %340, label %333

333:                                              ; preds = %327, %333
  %334 = phi %struct.zahl** [ %337, %333 ], [ %330, %327 ]
  %335 = getelementptr inbounds %struct.zahl*, %struct.zahl** %334, i64 -1
  store %struct.zahl** %335, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !14
  %336 = load %struct.zahl*, %struct.zahl** %335, align 8, !tbaa !14
  tail call void @zfree(%struct.zahl* noundef %336) #7
  %337 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !14
  %338 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !14
  %339 = icmp eq %struct.zahl** %337, %338
  br i1 %339, label %340, label %333

340:                                              ; preds = %333, %327
  %341 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !14
  tail call void @free(i8* noundef %341) #7
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !14
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #8
  unreachable

342:                                              ; preds = %299, %209, %218, %189, %319, %278, %174, %326, %103
  %343 = load i32, i32* %5, align 4, !tbaa !10
  %344 = icmp sgt i32 %343, -1
  br i1 %344, label %345, label %347

345:                                              ; preds = %342
  %346 = call i32 @"\01_close"(i32 noundef %343) #7
  br label %347

347:                                              ; preds = %342, %345, %33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @zrand_fd(i8* noundef %0, i64 noundef %1, i8* nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = bitcast i8* %2 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !10
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %16
  %8 = phi i64 [ %18, %16 ], [ %1, %3 ]
  %9 = phi i64 [ %17, %16 ], [ 0, %3 ]
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = tail call i64 @"\01_read"(i32 noundef %5, i8* noundef %10, i64 noundef %8) #7
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16, !prof !19

13:                                               ; preds = %7
  %14 = tail call i32* @__error() #7
  %15 = load i32, i32* %14, align 4, !tbaa !10
  tail call fastcc void @libzahl_failure(i32 noundef %15)
  unreachable

16:                                               ; preds = %7
  %17 = add i64 %11, %9
  %18 = sub i64 %8, %11
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %7

20:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @zrand_libc_rand(i8* noundef %0, i64 noundef %1, i8* nocapture noundef readnone %2) unnamed_addr #0 {
  %4 = load i1, i1* @zrand_libc_rand.inited, align 1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  store i1 true, i1* @zrand_libc_rand.inited, align 1
  %6 = ptrtoint i8* %0 to i64
  %7 = tail call i64 @time(i64* noundef null) #7
  %8 = or i64 %7, %6
  %9 = trunc i64 %8 to i32
  tail call void @srand(i32 noundef %9) #7
  br label %10

10:                                               ; preds = %5, %3
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %10, %24
  %13 = phi i64 [ %22, %24 ], [ %1, %10 ]
  %14 = add i64 %13, -1
  %15 = tail call i32 @rand() #7
  %16 = uitofp i32 %15 to double
  %17 = fmul double %16, 0x3E00000000000000
  %18 = fmul double %17, 6.553600e+04
  %19 = fptoui double %18 to i32
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, i8* %0, i64 %14
  store i8 %20, i8* %21, align 1, !tbaa !29
  %22 = add i64 %13, -2
  %23 = icmp eq i64 %14, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %12
  %25 = lshr i32 %19, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, i8* %0, i64 %22
  store i8 %26, i8* %27, align 1, !tbaa !29
  %28 = icmp eq i64 %22, 0
  br i1 %28, label %29, label %12

29:                                               ; preds = %24, %12, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @zrand_libc_random(i8* noundef %0, i64 noundef %1, i8* nocapture noundef readnone %2) unnamed_addr #0 {
  %4 = load i1, i1* @zrand_libc_random.inited, align 1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  store i1 true, i1* @zrand_libc_random.inited, align 1
  %6 = ptrtoint i8* %0 to i64
  %7 = tail call i64 @time(i64* noundef null) #7
  %8 = or i64 %7, %6
  %9 = trunc i64 %8 to i32
  tail call void @srandom(i32 noundef %9) #7
  br label %10

10:                                               ; preds = %5, %3
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %10, %26
  %13 = phi i64 [ %24, %26 ], [ %1, %10 ]
  %14 = add i64 %13, -1
  %15 = tail call i64 @random() #7
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds i8, i8* %0, i64 %14
  store i8 %16, i8* %17, align 1, !tbaa !29
  %18 = add i64 %13, -2
  %19 = icmp eq i64 %14, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %12
  %21 = lshr i64 %15, 8
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds i8, i8* %0, i64 %18
  store i8 %22, i8* %23, align 1, !tbaa !29
  %24 = add i64 %13, -3
  %25 = icmp eq i64 %18, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = lshr i64 %15, 16
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds i8, i8* %0, i64 %24
  store i8 %28, i8* %29, align 1, !tbaa !29
  %30 = icmp eq i64 %24, 0
  br i1 %30, label %31, label %12

31:                                               ; preds = %26, %12, %20, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @zrand_libc_rand48(i8* noundef %0, i64 noundef %1, i8* nocapture noundef readnone %2) unnamed_addr #0 {
  %4 = load i1, i1* @zrand_libc_rand48.inited, align 1
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  store i1 true, i1* @zrand_libc_rand48.inited, align 1
  %6 = ptrtoint i8* %0 to i64
  %7 = tail call i64 @time(i64* noundef null) #7
  %8 = or i64 %7, %6
  tail call void @srand48(i64 noundef %8) #7
  br label %9

9:                                                ; preds = %5, %3
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ %13, %11 ], [ %1, %9 ]
  %13 = add i64 %12, -1
  %14 = tail call i64 @lrand48() #7
  %15 = tail call i64 @lrand48() #7
  %16 = and i64 %15, 15
  %17 = shl i64 %14, 4
  %18 = or i64 %16, %17
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds i8, i8* %0, i64 %13
  store i8 %19, i8* %20, align 1, !tbaa !29
  %21 = icmp eq i64 %13, 0
  br i1 %21, label %22, label %11

22:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal fastcc void @libzahl_failure(i32 noundef %0) unnamed_addr #2 {
  store i32 %0, i32* @libzahl_error, align 4, !tbaa !10
  %2 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !14
  %3 = icmp eq %struct.zahl** %2, null
  %4 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %5 = icmp eq %struct.zahl** %4, %2
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %1, %7
  %8 = phi %struct.zahl** [ %11, %7 ], [ %4, %1 ]
  %9 = getelementptr inbounds %struct.zahl*, %struct.zahl** %8, i64 -1
  store %struct.zahl** %9, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !14
  %10 = load %struct.zahl*, %struct.zahl** %9, align 8, !tbaa !14
  tail call void @zfree(%struct.zahl* noundef %10) #7
  %11 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !14
  %12 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !14
  %13 = icmp eq %struct.zahl** %11, %12
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %1
  %15 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !14
  tail call void @free(i8* noundef %15)
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !14
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #8
  unreachable
}

declare i32 @"\01_open"(i8* noundef, i32 noundef, ...) local_unnamed_addr #3

declare i32* @__error() local_unnamed_addr #3

declare void @zadd(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zrsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) local_unnamed_addr #3

declare void @zsub(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare i32 @"\01_close"(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i64 @"\01_read"(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @srand(i32 noundef) local_unnamed_addr #3

declare i64 @time(i64* noundef) local_unnamed_addr #3

declare i32 @rand() local_unnamed_addr #3

declare void @srandom(i32 noundef) local_unnamed_addr #3

declare i64 @random() local_unnamed_addr #3

declare void @srand48(i64 noundef) local_unnamed_addr #3

declare i64 @lrand48() local_unnamed_addr #3

declare void @zfree(%struct.zahl* noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #3

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !12, i64 0}
!16 = !{!17, !11, i64 0}
!17 = !{!"zahl", !11, i64 0, !11, i64 4, !18, i64 8, !18, i64 16, !15, i64 24}
!18 = !{!"long", !12, i64 0}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!17, !15, i64 24}
!21 = !{!17, !18, i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"long long", !12, i64 0}
!24 = !{i64 0, i64 65}
!25 = !{!17, !18, i64 16}
!26 = !{void (i8*, i64, i8*)* @zrand_fd, void (i8*, i64, i8*)* @zrand_libc_rand, void (i8*, i64, i8*)* @zrand_libc_rand48, void (i8*, i64, i8*)* @zrand_libc_random}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{!"branch_weights", i32 1, i32 4001}
!29 = !{!12, !12, i64 0}
