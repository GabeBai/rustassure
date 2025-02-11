; ModuleID = 'src/zdivmod.c'
source_filename = "src/zdivmod.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_error = external local_unnamed_addr global i32, align 4
@libzahl_temp_stack = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_stack_head = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_allocation = external local_unnamed_addr global i8*, align 8
@libzahl_jmp_buf = external global [48 x i32], align 4
@zdivmod_impl.tds = internal global [64 x [1 x %struct.zahl]] zeroinitializer, align 8
@libzahl_tmp_divmod_d = external global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_a = external global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_b = external global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_ds = external global [64 x [1 x %struct.zahl]], align 8

; Function Attrs: nounwind ssp uwtable
define void @zdivmod(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2, %struct.zahl* noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !10
  %7 = getelementptr %struct.zahl, %struct.zahl* %3, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !10
  %9 = mul nsw i32 %8, %6
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i32 %6, 0
  br i1 %10, label %12, label %20, !prof !17

12:                                               ; preds = %4
  br i1 %11, label %14, label %13, !prof !18

13:                                               ; preds = %12
  tail call fastcc void @libzahl_failure(i32 noundef -3)
  unreachable

14:                                               ; preds = %12
  %15 = icmp eq i32 %8, 0
  br i1 %15, label %16, label %17, !prof !17

16:                                               ; preds = %14
  tail call fastcc void @libzahl_failure(i32 noundef -2)
  unreachable

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %18, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  store i32 0, i32* %19, align 8, !tbaa !10
  br label %389

20:                                               ; preds = %4
  %21 = icmp eq i32 %8, 0
  br i1 %11, label %88, label %22, !prof !17

22:                                               ; preds = %20
  br i1 %21, label %23, label %26, !prof !17

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %25 = load i64*, i64** %24, align 8, !tbaa !19
  br label %97

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %28 = load i64, i64* %27, align 8, !tbaa !20
  %29 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 2
  %30 = load i64, i64* %29, align 8, !tbaa !20
  %31 = add i64 %30, -1
  %32 = add i64 %28, -1
  %33 = icmp ugt i64 %32, %31
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %36 = load i64*, i64** %35, align 8, !tbaa !19
  br label %42

37:                                               ; preds = %26
  %38 = icmp ugt i64 %31, %32
  br i1 %38, label %39, label %52

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 4
  %41 = load i64*, i64** %40, align 8, !tbaa !19
  br label %59

42:                                               ; preds = %48, %34
  %43 = phi i64 [ %28, %34 ], [ %49, %48 ]
  %44 = phi i64 [ %32, %34 ], [ %50, %48 ]
  %45 = getelementptr inbounds i64, i64* %36, i64 %44
  %46 = load i64, i64* %45, align 8, !tbaa !21
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %97

48:                                               ; preds = %42
  %49 = add i64 %43, -1
  store i64 %49, i64* %27, align 8, !tbaa !20
  %50 = add i64 %44, -1
  %51 = icmp ugt i64 %50, %31
  br i1 %51, label %42, label %52

52:                                               ; preds = %65, %48, %37
  %53 = phi i64 [ %32, %37 ], [ %31, %48 ], [ %32, %65 ]
  %54 = icmp eq i64 %53, 0
  %55 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %56 = load i64*, i64** %55, align 8, !tbaa !19
  %57 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 4
  %58 = load i64*, i64** %57, align 8, !tbaa !19
  br i1 %54, label %79, label %69

59:                                               ; preds = %65, %39
  %60 = phi i64 [ %30, %39 ], [ %66, %65 ]
  %61 = phi i64 [ %31, %39 ], [ %67, %65 ]
  %62 = getelementptr inbounds i64, i64* %41, i64 %61
  %63 = load i64, i64* %62, align 8, !tbaa !21
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %59
  %66 = add i64 %60, -1
  store i64 %66, i64* %29, align 8, !tbaa !20
  %67 = add i64 %61, -1
  %68 = icmp ugt i64 %67, %32
  br i1 %68, label %59, label %52

69:                                               ; preds = %52, %76
  %70 = phi i64 [ %77, %76 ], [ %53, %52 ]
  %71 = getelementptr inbounds i64, i64* %56, i64 %70
  %72 = load i64, i64* %71, align 8, !tbaa !21
  %73 = getelementptr inbounds i64, i64* %58, i64 %70
  %74 = load i64, i64* %73, align 8, !tbaa !21
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = add i64 %70, -1
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %69

79:                                               ; preds = %76, %69, %52
  %80 = phi i64 [ 0, %52 ], [ %70, %69 ], [ 0, %76 ]
  %81 = getelementptr inbounds i64, i64* %56, i64 %80
  %82 = load i64, i64* %81, align 8, !tbaa !21
  %83 = getelementptr inbounds i64, i64* %58, i64 %80
  %84 = load i64, i64* %83, align 8, !tbaa !21
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %79
  %87 = icmp ugt i64 %82, %84
  br i1 %87, label %97, label %89, !prof !18

88:                                               ; preds = %20
  br i1 %21, label %89, label %92, !prof !17

89:                                               ; preds = %86, %88
  %90 = sext i32 %9 to i64
  tail call fastcc void @zseti(%struct.zahl* noundef %0, i64 noundef %90)
  %91 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  store i32 0, i32* %91, align 8, !tbaa !10
  br label %389

92:                                               ; preds = %59, %79, %88
  %93 = icmp eq %struct.zahl* %1, %2
  br i1 %93, label %95, label %94

94:                                               ; preds = %92
  tail call fastcc void @zset(%struct.zahl* noundef %1, %struct.zahl* noundef %2)
  br label %95

95:                                               ; preds = %94, %92
  %96 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %96, align 8, !tbaa !10
  br label %389

97:                                               ; preds = %42, %86, %23
  %98 = phi i64* [ %25, %23 ], [ %56, %86 ], [ %36, %42 ]
  %99 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %100 = load i64, i64* %99, align 8, !tbaa !20
  %101 = add i64 %100, -1
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  %103 = load i64, i64* %102, align 8, !tbaa !21
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %97, %105
  %106 = phi i64 [ %107, %105 ], [ %101, %97 ]
  %107 = add i64 %106, -1
  %108 = getelementptr inbounds i64, i64* %98, i64 %107
  %109 = load i64, i64* %108, align 8, !tbaa !21
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %105, label %111

111:                                              ; preds = %105
  store i64 %106, i64* %99, align 8, !tbaa !20
  br label %112

112:                                              ; preds = %97, %111
  %113 = phi i64 [ %106, %111 ], [ %100, %97 ]
  %114 = phi i64 [ %109, %111 ], [ %103, %97 ]
  %115 = shl i64 %113, 6
  %116 = tail call i64 @llvm.ctlz.i64(i64 %114, i1 true) #9, !range !23
  %117 = sub i64 %115, %116
  br i1 %21, label %140, label %118, !prof !17

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 4
  %120 = load i64*, i64** %119, align 8, !tbaa !19
  %121 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i64 0, i32 2
  %122 = load i64, i64* %121, align 8, !tbaa !20
  %123 = add i64 %122, -1
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  %125 = load i64, i64* %124, align 8, !tbaa !21
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %118, %127
  %128 = phi i64 [ %129, %127 ], [ %123, %118 ]
  %129 = add i64 %128, -1
  %130 = getelementptr inbounds i64, i64* %120, i64 %129
  %131 = load i64, i64* %130, align 8, !tbaa !21
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %127, label %133

133:                                              ; preds = %127
  store i64 %128, i64* %121, align 8, !tbaa !20
  br label %134

134:                                              ; preds = %133, %118
  %135 = phi i64 [ %128, %133 ], [ %122, %118 ]
  %136 = phi i64 [ %131, %133 ], [ %125, %118 ]
  %137 = mul i64 %135, -64
  %138 = tail call i64 @llvm.ctlz.i64(i64 %136, i1 true) #9, !range !23
  %139 = or i64 %138, %137
  br label %140

140:                                              ; preds = %134, %112
  %141 = phi i64 [ %139, %134 ], [ -1, %112 ]
  %142 = add i64 %141, %117
  tail call void @zlsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), %struct.zahl* noundef nonnull %3, i64 noundef %142) #9
  store i32 1, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %143 = load i32, i32* %5, align 8, !tbaa !10
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %202, label %145, !prof !17

145:                                              ; preds = %140
  %146 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0, i32 2), align 8, !tbaa !20
  %147 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %148 = load i64, i64* %147, align 8, !tbaa !20
  %149 = add i64 %148, -1
  %150 = add i64 %146, -1
  %151 = icmp ugt i64 %150, %149
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0, i32 4), align 8, !tbaa !19
  br label %159

154:                                              ; preds = %145
  %155 = icmp ugt i64 %149, %150
  br i1 %155, label %156, label %169

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %158 = load i64*, i64** %157, align 8, !tbaa !19
  br label %175

159:                                              ; preds = %165, %152
  %160 = phi i64 [ %146, %152 ], [ %166, %165 ]
  %161 = phi i64 [ %150, %152 ], [ %167, %165 ]
  %162 = getelementptr inbounds i64, i64* %153, i64 %161
  %163 = load i64, i64* %162, align 8, !tbaa !21
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %202

165:                                              ; preds = %159
  %166 = add i64 %160, -1
  store i64 %166, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0, i32 2), align 8, !tbaa !20
  %167 = add i64 %161, -1
  %168 = icmp ugt i64 %167, %149
  br i1 %168, label %159, label %169

169:                                              ; preds = %181, %165, %154
  %170 = phi i64 [ %150, %154 ], [ %149, %165 ], [ %150, %181 ]
  %171 = icmp eq i64 %170, 0
  %172 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0, i32 4), align 8, !tbaa !19
  %173 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %174 = load i64*, i64** %173, align 8, !tbaa !19
  br i1 %171, label %195, label %185

175:                                              ; preds = %181, %156
  %176 = phi i64 [ %148, %156 ], [ %182, %181 ]
  %177 = phi i64 [ %149, %156 ], [ %183, %181 ]
  %178 = getelementptr inbounds i64, i64* %158, i64 %177
  %179 = load i64, i64* %178, align 8, !tbaa !21
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %204

181:                                              ; preds = %175
  %182 = add i64 %176, -1
  store i64 %182, i64* %147, align 8, !tbaa !20
  %183 = add i64 %177, -1
  %184 = icmp ugt i64 %183, %150
  br i1 %184, label %175, label %169

185:                                              ; preds = %169, %192
  %186 = phi i64 [ %193, %192 ], [ %170, %169 ]
  %187 = getelementptr inbounds i64, i64* %172, i64 %186
  %188 = load i64, i64* %187, align 8, !tbaa !21
  %189 = getelementptr inbounds i64, i64* %174, i64 %186
  %190 = load i64, i64* %189, align 8, !tbaa !21
  %191 = icmp eq i64 %188, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = add i64 %186, -1
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %185

195:                                              ; preds = %192, %185, %169
  %196 = phi i64 [ 0, %169 ], [ 0, %192 ], [ %186, %185 ]
  %197 = getelementptr inbounds i64, i64* %172, i64 %196
  %198 = load i64, i64* %197, align 8, !tbaa !21
  %199 = getelementptr inbounds i64, i64* %174, i64 %196
  %200 = load i64, i64* %199, align 8, !tbaa !21
  %201 = icmp ugt i64 %198, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %159, %195, %140
  tail call void @zrsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), i64 noundef 1) #9
  %203 = add i64 %142, -1
  br label %204

204:                                              ; preds = %175, %202, %195
  %205 = phi i64 [ %203, %202 ], [ %142, %195 ], [ %142, %175 ]
  store i32 0, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %206 = icmp eq %struct.zahl* %2, getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0)
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  tail call fastcc void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0), %struct.zahl* noundef %2) #9
  br label %208

208:                                              ; preds = %207, %204
  %209 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %210 = and i32 %209, 1
  store i32 %210, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %211 = icmp ult i64 %205, 65
  br i1 %211, label %212, label %224, !prof !17

212:                                              ; preds = %208, %222
  %213 = phi i64 [ %223, %222 ], [ %205, %208 ]
  %214 = tail call fastcc i32 @zcmpmag(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0)) #9
  %215 = icmp slt i32 %214, 1
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  tail call void @zsub_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0)) #9
  tail call void @zbset_ll_set(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0), i64 noundef %213) #9
  br label %217

217:                                              ; preds = %216, %212
  %218 = icmp eq i64 %213, 0
  %219 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 0), align 8
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %218, i1 true, i1 %220
  br i1 %221, label %357, label %222

222:                                              ; preds = %217
  %223 = add i64 %213, -1
  tail call void @zrsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), i64 noundef 1) #9
  br label %212

224:                                              ; preds = %208, %224
  %225 = phi i64 [ %236, %224 ], [ 0, %208 ]
  %226 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 %225, i64 0
  tail call void @zrsh(%struct.zahl* noundef nonnull %226, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), i64 noundef %225) #9
  %227 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 %225, i64 0, i32 2
  %228 = load i64, i64* %227, align 8, !tbaa !20
  %229 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @zdivmod_impl.tds, i64 0, i64 %225, i64 0, i32 2
  store i64 %228, i64* %229, align 8, !tbaa !20
  %230 = getelementptr inbounds %struct.zahl, %struct.zahl* %226, i64 0, i32 0
  %231 = load i32, i32* %230, align 8, !tbaa !10
  %232 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @zdivmod_impl.tds, i64 0, i64 %225, i64 0, i32 0
  store i32 %231, i32* %232, align 8, !tbaa !10
  %233 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 %225, i64 0, i32 4
  %234 = load i64*, i64** %233, align 8, !tbaa !19
  %235 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @zdivmod_impl.tds, i64 0, i64 %225, i64 0, i32 4
  store i64* %234, i64** %235, align 8, !tbaa !19
  %236 = add nuw nsw i64 %225, 1
  %237 = icmp eq i64 %236, 64
  br i1 %237, label %242, label %224

238:                                              ; preds = %310
  %239 = icmp eq i64 %316, 64
  br i1 %239, label %317, label %240

240:                                              ; preds = %354, %238
  %241 = phi i64 [ %316, %238 ], [ 0, %354 ]
  br label %242

242:                                              ; preds = %224, %240
  %243 = phi i64 [ %241, %240 ], [ 0, %224 ]
  %244 = phi i64 [ %311, %240 ], [ %205, %224 ]
  %245 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @zdivmod_impl.tds, i64 0, i64 %243, i64 0
  %246 = getelementptr %struct.zahl, %struct.zahl* %245, i64 0, i32 0
  %247 = load i32, i32* %246, align 8, !tbaa !10
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %309, label %249, !prof !17

249:                                              ; preds = %242
  %250 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %310, label %252, !prof !17

252:                                              ; preds = %249
  %253 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @zdivmod_impl.tds, i64 0, i64 %243, i64 0, i32 2
  %254 = load i64, i64* %253, align 8, !tbaa !20
  %255 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 2), align 8, !tbaa !20
  %256 = add i64 %255, -1
  %257 = add i64 %254, -1
  %258 = icmp ugt i64 %257, %256
  br i1 %258, label %259, label %262

259:                                              ; preds = %252
  %260 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @zdivmod_impl.tds, i64 0, i64 %243, i64 0, i32 4
  %261 = load i64*, i64** %260, align 8, !tbaa !19
  br label %266

262:                                              ; preds = %252
  %263 = icmp ugt i64 %256, %257
  br i1 %263, label %264, label %276

264:                                              ; preds = %262
  %265 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 4), align 8, !tbaa !19
  br label %282

266:                                              ; preds = %272, %259
  %267 = phi i64 [ %254, %259 ], [ %273, %272 ]
  %268 = phi i64 [ %257, %259 ], [ %274, %272 ]
  %269 = getelementptr inbounds i64, i64* %261, i64 %268
  %270 = load i64, i64* %269, align 8, !tbaa !21
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %310

272:                                              ; preds = %266
  %273 = add i64 %267, -1
  store i64 %273, i64* %253, align 8, !tbaa !20
  %274 = add i64 %268, -1
  %275 = icmp ugt i64 %274, %256
  br i1 %275, label %266, label %276

276:                                              ; preds = %288, %272, %262
  %277 = phi i64 [ %257, %262 ], [ %256, %272 ], [ %257, %288 ]
  %278 = icmp eq i64 %277, 0
  %279 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @zdivmod_impl.tds, i64 0, i64 %243, i64 0, i32 4
  %280 = load i64*, i64** %279, align 8, !tbaa !19
  %281 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 4), align 8, !tbaa !19
  br i1 %278, label %302, label %292

282:                                              ; preds = %288, %264
  %283 = phi i64 [ %255, %264 ], [ %289, %288 ]
  %284 = phi i64 [ %256, %264 ], [ %290, %288 ]
  %285 = getelementptr inbounds i64, i64* %265, i64 %284
  %286 = load i64, i64* %285, align 8, !tbaa !21
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %309

288:                                              ; preds = %282
  %289 = add i64 %283, -1
  store i64 %289, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 2), align 8, !tbaa !20
  %290 = add i64 %284, -1
  %291 = icmp ugt i64 %290, %257
  br i1 %291, label %282, label %276

292:                                              ; preds = %276, %299
  %293 = phi i64 [ %300, %299 ], [ %277, %276 ]
  %294 = getelementptr inbounds i64, i64* %280, i64 %293
  %295 = load i64, i64* %294, align 8, !tbaa !21
  %296 = getelementptr inbounds i64, i64* %281, i64 %293
  %297 = load i64, i64* %296, align 8, !tbaa !21
  %298 = icmp eq i64 %295, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %292
  %300 = add i64 %293, -1
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %292

302:                                              ; preds = %299, %292, %276
  %303 = phi i64 [ 0, %276 ], [ 0, %299 ], [ %293, %292 ]
  %304 = getelementptr inbounds i64, i64* %280, i64 %303
  %305 = load i64, i64* %304, align 8, !tbaa !21
  %306 = getelementptr inbounds i64, i64* %281, i64 %303
  %307 = load i64, i64* %306, align 8, !tbaa !21
  %308 = icmp ugt i64 %305, %307
  br i1 %308, label %310, label %309

309:                                              ; preds = %282, %302, %242
  tail call void @zsub_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0), %struct.zahl* noundef nonnull %245) #9
  tail call void @zbset_ll_set(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0), i64 noundef %244) #9
  br label %310

310:                                              ; preds = %266, %309, %302, %249
  %311 = add i64 %244, -1
  %312 = icmp eq i64 %244, 0
  %313 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 0), align 8
  %314 = icmp eq i32 %313, 0
  %315 = select i1 %312, i1 true, i1 %314
  %316 = add nuw nsw i64 %243, 1
  br i1 %315, label %357, label %238

317:                                              ; preds = %238
  %318 = icmp ult i64 %311, 63
  %319 = select i1 %318, i64 %311, i64 63
  br label %320

320:                                              ; preds = %354, %317
  %321 = phi i64 [ %319, %317 ], [ %355, %354 ]
  %322 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @zdivmod_impl.tds, i64 0, i64 %321, i64 0, i32 0
  %323 = load i32, i32* %322, align 8, !tbaa !10
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %354, label %325, !prof !17

325:                                              ; preds = %320
  %326 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @zdivmod_impl.tds, i64 0, i64 %321, i64 0, i32 2
  %327 = load i64, i64* %326, align 8, !tbaa !20
  %328 = icmp ult i64 %327, 2
  br i1 %328, label %350, label %329, !prof !24

329:                                              ; preds = %325
  %330 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @zdivmod_impl.tds, i64 0, i64 %321, i64 0, i32 4
  %331 = load i64*, i64** %330, align 8, !tbaa !19
  %332 = add i64 %327, -1
  %333 = getelementptr inbounds i64, i64* %331, i64 %332
  %334 = load i64, i64* %333, align 8, !tbaa !21
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %329, %336
  %337 = phi i64 [ %338, %336 ], [ %332, %329 ]
  %338 = add i64 %337, -1
  %339 = getelementptr inbounds i64, i64* %331, i64 %338
  %340 = load i64, i64* %339, align 8, !tbaa !21
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %336, label %342

342:                                              ; preds = %336
  store i64 %337, i64* %326, align 8, !tbaa !20
  br label %343

343:                                              ; preds = %342, %329
  %344 = phi i64 [ %337, %342 ], [ %327, %329 ]
  %345 = phi i64 [ %340, %342 ], [ %334, %329 ]
  %346 = shl i64 %344, 6
  %347 = tail call i64 @llvm.ctlz.i64(i64 %345, i1 true) #9, !range !23
  %348 = sub i64 %346, %347
  %349 = icmp ult i64 %348, 65
  br i1 %349, label %350, label %351, !prof !17

350:                                              ; preds = %343, %325
  store i32 0, i32* %322, align 8, !tbaa !10
  br label %354

351:                                              ; preds = %343
  %352 = add i64 %344, -1
  store i64 %352, i64* %326, align 8, !tbaa !20
  %353 = getelementptr inbounds i64, i64* %331, i64 1
  store i64* %353, i64** %330, align 8, !tbaa !19
  br label %354

354:                                              ; preds = %351, %350, %320
  %355 = add nsw i64 %321, -1
  %356 = icmp eq i64 %321, 0
  br i1 %356, label %240, label %320

357:                                              ; preds = %310, %217
  %358 = bitcast %struct.zahl* %0 to i64*
  %359 = load i64, i64* bitcast ([1 x %struct.zahl]* @libzahl_tmp_divmod_a to i64*), align 8, !tbaa !25
  %360 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %361 = bitcast %struct.zahl* %0 to <2 x i64>*
  %362 = load <2 x i64>, <2 x i64>* %361, align 8, !tbaa !25
  store i64 %359, i64* %358, align 8, !tbaa !25
  %363 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0, i32 2), align 8, !tbaa !25
  store <2 x i64> %362, <2 x i64>* bitcast ([1 x %struct.zahl]* @libzahl_tmp_divmod_a to <2 x i64>*), align 8, !tbaa !25
  store i64 %363, i64* %360, align 8, !tbaa !25
  %364 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %365 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0, i32 3), align 8, !tbaa !25
  %366 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %367 = bitcast i64** %366 to i64*
  %368 = bitcast i64* %364 to <2 x i64>*
  %369 = load <2 x i64>, <2 x i64>* %368, align 8, !tbaa !25
  store i64 %365, i64* %364, align 8, !tbaa !25
  %370 = load i64, i64* bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0, i32 4) to i64*), align 8, !tbaa !25
  store <2 x i64> %369, <2 x i64>* bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0, i32 3) to <2 x i64>*), align 8, !tbaa !25
  store i64 %370, i64* %367, align 8, !tbaa !25
  %371 = bitcast %struct.zahl* %1 to i64*
  %372 = load i64, i64* bitcast ([1 x %struct.zahl]* @libzahl_tmp_divmod_b to i64*), align 8, !tbaa !25
  %373 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %374 = bitcast %struct.zahl* %1 to <2 x i64>*
  %375 = load <2 x i64>, <2 x i64>* %374, align 8, !tbaa !25
  store i64 %372, i64* %371, align 8, !tbaa !25
  %376 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 2), align 8, !tbaa !25
  store <2 x i64> %375, <2 x i64>* bitcast ([1 x %struct.zahl]* @libzahl_tmp_divmod_b to <2 x i64>*), align 8, !tbaa !25
  store i64 %376, i64* %373, align 8, !tbaa !25
  %377 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 3
  %378 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 3), align 8, !tbaa !25
  %379 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %380 = bitcast i64** %379 to i64*
  %381 = bitcast i64* %377 to <2 x i64>*
  %382 = load <2 x i64>, <2 x i64>* %381, align 8, !tbaa !25
  store i64 %378, i64* %377, align 8, !tbaa !25
  %383 = load i64, i64* bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 4) to i64*), align 8, !tbaa !25
  store <2 x i64> %382, <2 x i64>* bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 3) to <2 x i64>*), align 8, !tbaa !25
  store i64 %383, i64* %380, align 8, !tbaa !25
  %384 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %9, i32* %384, align 8, !tbaa !10
  %385 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %386 = load i32, i32* %385, align 8, !tbaa !10
  %387 = icmp sgt i32 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %357
  store i32 %6, i32* %385, align 8, !tbaa !10
  br label %389

389:                                              ; preds = %357, %388, %89, %95, %17
  ret void
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal fastcc void @libzahl_failure(i32 noundef %0) unnamed_addr #1 {
  store i32 %0, i32* @libzahl_error, align 4, !tbaa !26
  %2 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !27
  %3 = icmp eq %struct.zahl** %2, null
  %4 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %5 = icmp eq %struct.zahl** %4, %2
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %1, %7
  %8 = phi %struct.zahl** [ %11, %7 ], [ %4, %1 ]
  %9 = getelementptr inbounds %struct.zahl*, %struct.zahl** %8, i64 -1
  store %struct.zahl** %9, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !27
  %10 = load %struct.zahl*, %struct.zahl** %9, align 8, !tbaa !27
  tail call void @zfree(%struct.zahl* noundef %10) #9
  %11 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !27
  %12 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !27
  %13 = icmp eq %struct.zahl** %11, %12
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %1
  %15 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !27
  tail call void @free(i8* noundef %15)
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !27
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #10
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind ssp uwtable
define internal fastcc i32 @zcmpmag(%struct.zahl* nocapture noundef %0, %struct.zahl* nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !10
  br i1 %5, label %8, label %11, !prof !17

8:                                                ; preds = %2
  %9 = icmp ne i32 %7, 0
  %10 = sext i1 %9 to i32
  br label %76

11:                                               ; preds = %2
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %76, label %13, !prof !17

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %15 = load i64, i64* %14, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %17 = load i64, i64* %16, align 8, !tbaa !20
  %18 = add i64 %17, -1
  %19 = add i64 %15, -1
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %23 = load i64*, i64** %22, align 8, !tbaa !19
  br label %29

24:                                               ; preds = %13
  %25 = icmp ugt i64 %18, %19
  br i1 %25, label %26, label %39

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %28 = load i64*, i64** %27, align 8, !tbaa !19
  br label %46

29:                                               ; preds = %21, %35
  %30 = phi i64 [ %15, %21 ], [ %36, %35 ]
  %31 = phi i64 [ %19, %21 ], [ %37, %35 ]
  %32 = getelementptr inbounds i64, i64* %23, i64 %31
  %33 = load i64, i64* %32, align 8, !tbaa !21
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %29
  %36 = add i64 %30, -1
  store i64 %36, i64* %14, align 8, !tbaa !20
  %37 = add i64 %31, -1
  %38 = icmp ugt i64 %37, %18
  br i1 %38, label %29, label %39

39:                                               ; preds = %51, %35, %24
  %40 = phi i64 [ %19, %24 ], [ %18, %35 ], [ %19, %51 ]
  %41 = icmp eq i64 %40, 0
  %42 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %43 = load i64*, i64** %42, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %45 = load i64*, i64** %44, align 8, !tbaa !19
  br i1 %41, label %66, label %56

46:                                               ; preds = %26, %51
  %47 = phi i64 [ %18, %26 ], [ %54, %51 ]
  %48 = getelementptr inbounds i64, i64* %28, i64 %47
  %49 = load i64, i64* %48, align 8, !tbaa !21
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  %52 = load i64, i64* %16, align 8, !tbaa !20
  %53 = add i64 %52, -1
  store i64 %53, i64* %16, align 8, !tbaa !20
  %54 = add i64 %47, -1
  %55 = icmp ugt i64 %54, %19
  br i1 %55, label %46, label %39

56:                                               ; preds = %39, %63
  %57 = phi i64 [ %64, %63 ], [ %40, %39 ]
  %58 = getelementptr inbounds i64, i64* %43, i64 %57
  %59 = load i64, i64* %58, align 8, !tbaa !21
  %60 = getelementptr inbounds i64, i64* %45, i64 %57
  %61 = load i64, i64* %60, align 8, !tbaa !21
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = add i64 %57, -1
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %56

66:                                               ; preds = %56, %63, %39
  %67 = phi i64 [ 0, %39 ], [ 0, %63 ], [ %57, %56 ]
  %68 = getelementptr inbounds i64, i64* %43, i64 %67
  %69 = load i64, i64* %68, align 8, !tbaa !21
  %70 = getelementptr inbounds i64, i64* %45, i64 %67
  %71 = load i64, i64* %70, align 8, !tbaa !21
  %72 = icmp ult i64 %69, %71
  %73 = icmp ugt i64 %69, %71
  %74 = zext i1 %73 to i32
  %75 = select i1 %72, i32 -1, i32 %74
  br label %76

76:                                               ; preds = %46, %29, %11, %66, %8
  %77 = phi i32 [ %10, %8 ], [ %75, %66 ], [ 1, %11 ], [ 1, %29 ], [ -1, %46 ]
  ret i32 %77
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zseti(%struct.zahl* noundef %0, i64 noundef %1) unnamed_addr #3 {
  %3 = icmp sgt i64 %1, -1
  br i1 %3, label %4, label %5, !prof !17

4:                                                ; preds = %2
  tail call fastcc void @zsetu(%struct.zahl* noundef %0, i64 noundef %1)
  br label %16

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %7 = load i64, i64* %6, align 8, !tbaa !28
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef 1) #9
  br label %10

10:                                               ; preds = %5, %9
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 -1, i32* %11, align 8, !tbaa !10
  %12 = sub nsw i64 0, %1
  %13 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %14 = load i64*, i64** %13, align 8, !tbaa !19
  store i64 %12, i64* %14, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 1, i64* %15, align 8, !tbaa !20
  br label %16

16:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  br i1 %5, label %7, label %8, !prof !17

7:                                                ; preds = %2
  store i32 0, i32* %6, align 8, !tbaa !10
  br label %117

8:                                                ; preds = %2
  store i32 %4, i32* %6, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !20
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %10, i64* %11, align 8, !tbaa !20
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %13 = load i64, i64* %12, align 8, !tbaa !28
  %14 = load i64, i64* %9, align 8, !tbaa !20
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %14) #9
  %17 = load i64, i64* %9, align 8, !tbaa !20
  br label %18

18:                                               ; preds = %8, %16
  %19 = phi i64 [ %14, %8 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %23 = load i64*, i64** %22, align 8, !tbaa !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  switch i64 %19, label %102 [
    i64 20, label %24
    i64 19, label %28
    i64 18, label %32
    i64 17, label %36
    i64 16, label %40
    i64 15, label %44
    i64 14, label %48
    i64 13, label %52
    i64 12, label %56
    i64 11, label %60
    i64 10, label %64
    i64 9, label %68
    i64 8, label %72
    i64 7, label %76
    i64 6, label %80
    i64 5, label %84
    i64 4, label %88
    i64 3, label %92
    i64 2, label %96
    i64 1, label %100
    i64 0, label %117
  ]

24:                                               ; preds = %18
  %25 = getelementptr inbounds i64, i64* %23, i64 19
  %26 = load i64, i64* %25, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %27 = getelementptr inbounds i64, i64* %21, i64 19
  store i64 %26, i64* %27, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds i64, i64* %23, i64 18
  %30 = load i64, i64* %29, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %31 = getelementptr inbounds i64, i64* %21, i64 18
  store i64 %30, i64* %31, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %32

32:                                               ; preds = %28, %18
  %33 = getelementptr inbounds i64, i64* %23, i64 17
  %34 = load i64, i64* %33, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %35 = getelementptr inbounds i64, i64* %21, i64 17
  store i64 %34, i64* %35, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %36

36:                                               ; preds = %32, %18
  %37 = getelementptr inbounds i64, i64* %23, i64 16
  %38 = load i64, i64* %37, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %39 = getelementptr inbounds i64, i64* %21, i64 16
  store i64 %38, i64* %39, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %40

40:                                               ; preds = %36, %18
  %41 = getelementptr inbounds i64, i64* %23, i64 15
  %42 = load i64, i64* %41, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %43 = getelementptr inbounds i64, i64* %21, i64 15
  store i64 %42, i64* %43, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %44

44:                                               ; preds = %40, %18
  %45 = getelementptr inbounds i64, i64* %23, i64 14
  %46 = load i64, i64* %45, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %47 = getelementptr inbounds i64, i64* %21, i64 14
  store i64 %46, i64* %47, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %48

48:                                               ; preds = %44, %18
  %49 = getelementptr inbounds i64, i64* %23, i64 13
  %50 = load i64, i64* %49, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %51 = getelementptr inbounds i64, i64* %21, i64 13
  store i64 %50, i64* %51, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %52

52:                                               ; preds = %48, %18
  %53 = getelementptr inbounds i64, i64* %23, i64 12
  %54 = load i64, i64* %53, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %55 = getelementptr inbounds i64, i64* %21, i64 12
  store i64 %54, i64* %55, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %56

56:                                               ; preds = %52, %18
  %57 = getelementptr inbounds i64, i64* %23, i64 11
  %58 = load i64, i64* %57, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %59 = getelementptr inbounds i64, i64* %21, i64 11
  store i64 %58, i64* %59, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %60

60:                                               ; preds = %56, %18
  %61 = getelementptr inbounds i64, i64* %23, i64 10
  %62 = load i64, i64* %61, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %63 = getelementptr inbounds i64, i64* %21, i64 10
  store i64 %62, i64* %63, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %64

64:                                               ; preds = %60, %18
  %65 = getelementptr inbounds i64, i64* %23, i64 9
  %66 = load i64, i64* %65, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %67 = getelementptr inbounds i64, i64* %21, i64 9
  store i64 %66, i64* %67, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %68

68:                                               ; preds = %64, %18
  %69 = getelementptr inbounds i64, i64* %23, i64 8
  %70 = load i64, i64* %69, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %71 = getelementptr inbounds i64, i64* %21, i64 8
  store i64 %70, i64* %71, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %72

72:                                               ; preds = %68, %18
  %73 = getelementptr inbounds i64, i64* %23, i64 7
  %74 = load i64, i64* %73, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %75 = getelementptr inbounds i64, i64* %21, i64 7
  store i64 %74, i64* %75, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %76

76:                                               ; preds = %72, %18
  %77 = getelementptr inbounds i64, i64* %23, i64 6
  %78 = load i64, i64* %77, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %79 = getelementptr inbounds i64, i64* %21, i64 6
  store i64 %78, i64* %79, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %80

80:                                               ; preds = %76, %18
  %81 = getelementptr inbounds i64, i64* %23, i64 5
  %82 = load i64, i64* %81, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %83 = getelementptr inbounds i64, i64* %21, i64 5
  store i64 %82, i64* %83, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %84

84:                                               ; preds = %80, %18
  %85 = getelementptr inbounds i64, i64* %23, i64 4
  %86 = load i64, i64* %85, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %87 = getelementptr inbounds i64, i64* %21, i64 4
  store i64 %86, i64* %87, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %88

88:                                               ; preds = %84, %18
  %89 = getelementptr inbounds i64, i64* %23, i64 3
  %90 = load i64, i64* %89, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %91 = getelementptr inbounds i64, i64* %21, i64 3
  store i64 %90, i64* %91, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %92

92:                                               ; preds = %88, %18
  %93 = getelementptr inbounds i64, i64* %23, i64 2
  %94 = load i64, i64* %93, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %95 = getelementptr inbounds i64, i64* %21, i64 2
  store i64 %94, i64* %95, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %96

96:                                               ; preds = %92, %18
  %97 = getelementptr inbounds i64, i64* %23, i64 1
  %98 = load i64, i64* %97, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %99 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %98, i64* %99, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %100

100:                                              ; preds = %96, %18
  %101 = load i64, i64* %23, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  store i64 %101, i64* %21, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  br label %117

102:                                              ; preds = %18, %102
  %103 = phi i64 [ %115, %102 ], [ 0, %18 ]
  %104 = getelementptr inbounds i64, i64* %23, i64 %103
  %105 = getelementptr inbounds i64, i64* %21, i64 %103
  %106 = bitcast i64* %104 to <2 x i64>*
  %107 = load <2 x i64>, <2 x i64>* %106, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %108 = bitcast i64* %105 to <2 x i64>*
  store <2 x i64> %107, <2 x i64>* %108, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  %109 = or i64 %103, 2
  %110 = getelementptr inbounds i64, i64* %23, i64 %109
  %111 = getelementptr inbounds i64, i64* %21, i64 %109
  %112 = bitcast i64* %110 to <2 x i64>*
  %113 = load <2 x i64>, <2 x i64>* %112, align 8, !tbaa !21, !alias.scope !32, !noalias !29
  %114 = bitcast i64* %111 to <2 x i64>*
  store <2 x i64> %113, <2 x i64>* %114, align 8, !tbaa !21, !alias.scope !29, !noalias !32
  %115 = add i64 %103, 4
  %116 = icmp ult i64 %115, %19
  br i1 %116, label %102, label %117

117:                                              ; preds = %102, %100, %18, %7
  ret void
}

declare void @zfree(%struct.zahl* noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zsetu(%struct.zahl* noundef %0, i64 noundef %1) unnamed_addr #3 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %6, !prof !17

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %5, align 8, !tbaa !10
  br label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %8 = load i64, i64* %7, align 8, !tbaa !28
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef 1) #9
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %12, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %14 = load i64*, i64** %13, align 8, !tbaa !19
  store i64 %1, i64* %14, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 1, i64* %15, align 8, !tbaa !20
  br label %16

16:                                               ; preds = %11, %4
  ret void
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #4

declare void @zlsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) local_unnamed_addr #4

declare void @zrsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) local_unnamed_addr #4

declare void @zsub_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

declare void @zbset_ll_set(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { inlinehint nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

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
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!11, !16, i64 24}
!20 = !{!11, !15, i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"long long", !13, i64 0}
!23 = !{i64 0, i64 65}
!24 = !{!"branch_weights", i32 4001, i32 4000000}
!25 = !{!15, !15, i64 0}
!26 = !{!12, !12, i64 0}
!27 = !{!16, !16, i64 0}
!28 = !{!11, !15, i64 16}
!29 = !{!30}
!30 = distinct !{!30, !31, !"libzahl_memcpy: argument 0"}
!31 = distinct !{!31, !"libzahl_memcpy"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"libzahl_memcpy: argument 1"}
