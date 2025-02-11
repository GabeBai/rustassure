; ModuleID = 'src/zmul.c'
source_filename = "src/zmul.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_temp_stack_head = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_stack_end = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_stack = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_error = external local_unnamed_addr global i32, align 4
@libzahl_temp_allocation = external local_unnamed_addr global i8*, align 8
@libzahl_jmp_buf = external global [48 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @zmul_ll(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1 x %struct.zahl], align 8
  %5 = alloca [1 x %struct.zahl], align 8
  %6 = alloca [1 x %struct.zahl], align 8
  %7 = alloca [1 x %struct.zahl], align 8
  %8 = bitcast [1 x %struct.zahl]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #9
  %9 = bitcast [1 x %struct.zahl]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #9
  %10 = bitcast [1 x %struct.zahl]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #9
  %11 = bitcast [1 x %struct.zahl]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #9
  %12 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21, !prof !17

19:                                               ; preds = %3, %15
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %20, align 8, !tbaa !10
  br label %216

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %23 = load i64*, i64** %22, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %25 = load i64, i64* %24, align 8, !tbaa !19
  %26 = add i64 %25, -1
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8, !tbaa !20
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21, %30
  %31 = phi i64 [ %32, %30 ], [ %26, %21 ]
  %32 = add i64 %31, -1
  %33 = getelementptr inbounds i64, i64* %23, i64 %32
  %34 = load i64, i64* %33, align 8, !tbaa !20
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %30, label %36

36:                                               ; preds = %30
  store i64 %31, i64* %24, align 8, !tbaa !19
  br label %37

37:                                               ; preds = %21, %36
  %38 = phi i64 [ %31, %36 ], [ %25, %21 ]
  %39 = phi i64 [ %34, %36 ], [ %28, %21 ]
  %40 = shl i64 %38, 6
  %41 = tail call i64 @llvm.ctlz.i64(i64 %39, i1 true) #9, !range !22
  %42 = sub i64 %40, %41
  %43 = icmp eq %struct.zahl* %1, %2
  br i1 %43, label %66, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %46 = load i64*, i64** %45, align 8, !tbaa !18
  %47 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %48 = load i64, i64* %47, align 8, !tbaa !19
  %49 = add i64 %48, -1
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8, !tbaa !20
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44, %53
  %54 = phi i64 [ %55, %53 ], [ %49, %44 ]
  %55 = add i64 %54, -1
  %56 = getelementptr inbounds i64, i64* %46, i64 %55
  %57 = load i64, i64* %56, align 8, !tbaa !20
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %53, label %59

59:                                               ; preds = %53
  store i64 %54, i64* %47, align 8, !tbaa !19
  br label %60

60:                                               ; preds = %59, %44
  %61 = phi i64 [ %54, %59 ], [ %48, %44 ]
  %62 = phi i64 [ %57, %59 ], [ %51, %44 ]
  %63 = shl i64 %61, 6
  %64 = tail call i64 @llvm.ctlz.i64(i64 %62, i1 true) #9, !range !22
  %65 = sub i64 %63, %64
  br label %66

66:                                               ; preds = %60, %37
  %67 = phi i64 [ %42, %37 ], [ %65, %60 ]
  %68 = add i64 %67, %42
  %69 = icmp ult i64 %68, 65
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %72 = load i64, i64* %71, align 8, !tbaa !23
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef 1) #9
  %75 = load i64*, i64** %22, align 8, !tbaa !18
  br label %76

76:                                               ; preds = %70, %74
  %77 = phi i64* [ %23, %70 ], [ %75, %74 ]
  %78 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 1, i64* %78, align 8, !tbaa !19
  %79 = load i64, i64* %77, align 8, !tbaa !20
  %80 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %81 = load i64*, i64** %80, align 8, !tbaa !18
  %82 = load i64, i64* %81, align 8, !tbaa !20
  %83 = mul i64 %82, %79
  %84 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %85 = load i64*, i64** %84, align 8, !tbaa !18
  store i64 %83, i64* %85, align 8, !tbaa !20
  %86 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %86, align 8, !tbaa !10
  br label %216

87:                                               ; preds = %66
  %88 = icmp ugt i64 %42, %67
  %89 = select i1 %88, i64 %42, i64 %67
  %90 = lshr i64 %89, 1
  %91 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %4, i64 0, i64 0
  %92 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %4, i64 0, i64 0, i32 3
  %93 = bitcast i64* %92 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %93, i8 0, i64 16, i1 false) #9
  %94 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %95 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  %96 = icmp eq %struct.zahl** %94, %95
  br i1 %96, label %97, label %112, !prof !17

97:                                               ; preds = %87
  %98 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  %99 = ptrtoint %struct.zahl** %94 to i64
  %100 = ptrtoint %struct.zahl** %98 to i64
  %101 = sub i64 %99, %100
  %102 = ashr exact i64 %101, 3
  %103 = bitcast %struct.zahl** %98 to i8*
  %104 = shl i64 %101, 1
  %105 = tail call i8* @realloc(i8* noundef %103, i64 noundef %104) #10
  store i8* %105, i8** bitcast (%struct.zahl*** @libzahl_temp_stack to i8**), align 8, !tbaa !24
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %108, !prof !17

107:                                              ; preds = %97
  store %struct.zahl** %98, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  tail call fastcc void @libzahl_memfailure() #9
  unreachable

108:                                              ; preds = %97
  %109 = bitcast i8* %105 to %struct.zahl**
  %110 = getelementptr inbounds %struct.zahl*, %struct.zahl** %109, i64 %102
  %111 = getelementptr inbounds %struct.zahl*, %struct.zahl** %110, i64 %102
  store %struct.zahl** %111, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  br label %112

112:                                              ; preds = %87, %108
  %113 = phi %struct.zahl** [ %110, %108 ], [ %94, %87 ]
  %114 = getelementptr inbounds %struct.zahl*, %struct.zahl** %113, i64 1
  store %struct.zahl** %114, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  store %struct.zahl* %91, %struct.zahl** %113, align 8, !tbaa !24
  %115 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0
  %116 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0, i32 3
  %117 = bitcast i64* %116 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %117, i8 0, i64 16, i1 false) #9
  %118 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %119 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  %120 = icmp eq %struct.zahl** %118, %119
  br i1 %120, label %121, label %136, !prof !17

121:                                              ; preds = %112
  %122 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  %123 = ptrtoint %struct.zahl** %118 to i64
  %124 = ptrtoint %struct.zahl** %122 to i64
  %125 = sub i64 %123, %124
  %126 = ashr exact i64 %125, 3
  %127 = bitcast %struct.zahl** %122 to i8*
  %128 = shl i64 %125, 1
  %129 = call i8* @realloc(i8* noundef %127, i64 noundef %128) #10
  store i8* %129, i8** bitcast (%struct.zahl*** @libzahl_temp_stack to i8**), align 8, !tbaa !24
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %132, !prof !17

131:                                              ; preds = %121
  store %struct.zahl** %122, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  call fastcc void @libzahl_memfailure() #9
  unreachable

132:                                              ; preds = %121
  %133 = bitcast i8* %129 to %struct.zahl**
  %134 = getelementptr inbounds %struct.zahl*, %struct.zahl** %133, i64 %126
  %135 = getelementptr inbounds %struct.zahl*, %struct.zahl** %134, i64 %126
  store %struct.zahl** %135, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  br label %136

136:                                              ; preds = %112, %132
  %137 = phi %struct.zahl** [ %134, %132 ], [ %118, %112 ]
  %138 = getelementptr inbounds %struct.zahl*, %struct.zahl** %137, i64 1
  store %struct.zahl** %138, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  store %struct.zahl* %115, %struct.zahl** %137, align 8, !tbaa !24
  %139 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0
  %140 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0, i32 3
  %141 = bitcast i64* %140 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %141, i8 0, i64 16, i1 false) #9
  %142 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %143 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  %144 = icmp eq %struct.zahl** %142, %143
  br i1 %144, label %145, label %160, !prof !17

145:                                              ; preds = %136
  %146 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  %147 = ptrtoint %struct.zahl** %142 to i64
  %148 = ptrtoint %struct.zahl** %146 to i64
  %149 = sub i64 %147, %148
  %150 = ashr exact i64 %149, 3
  %151 = bitcast %struct.zahl** %146 to i8*
  %152 = shl i64 %149, 1
  %153 = call i8* @realloc(i8* noundef %151, i64 noundef %152) #10
  store i8* %153, i8** bitcast (%struct.zahl*** @libzahl_temp_stack to i8**), align 8, !tbaa !24
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %156, !prof !17

155:                                              ; preds = %145
  store %struct.zahl** %146, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  call fastcc void @libzahl_memfailure() #9
  unreachable

156:                                              ; preds = %145
  %157 = bitcast i8* %153 to %struct.zahl**
  %158 = getelementptr inbounds %struct.zahl*, %struct.zahl** %157, i64 %150
  %159 = getelementptr inbounds %struct.zahl*, %struct.zahl** %158, i64 %150
  store %struct.zahl** %159, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  br label %160

160:                                              ; preds = %136, %156
  %161 = phi %struct.zahl** [ %158, %156 ], [ %142, %136 ]
  %162 = getelementptr inbounds %struct.zahl*, %struct.zahl** %161, i64 1
  store %struct.zahl** %162, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  store %struct.zahl* %139, %struct.zahl** %161, align 8, !tbaa !24
  %163 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %7, i64 0, i64 0
  %164 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %7, i64 0, i64 0, i32 3
  %165 = bitcast i64* %164 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %165, i8 0, i64 16, i1 false) #9
  %166 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %167 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  %168 = icmp eq %struct.zahl** %166, %167
  br i1 %168, label %169, label %184, !prof !17

169:                                              ; preds = %160
  %170 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  %171 = ptrtoint %struct.zahl** %166 to i64
  %172 = ptrtoint %struct.zahl** %170 to i64
  %173 = sub i64 %171, %172
  %174 = ashr exact i64 %173, 3
  %175 = bitcast %struct.zahl** %170 to i8*
  %176 = shl i64 %173, 1
  %177 = call i8* @realloc(i8* noundef %175, i64 noundef %176) #10
  store i8* %177, i8** bitcast (%struct.zahl*** @libzahl_temp_stack to i8**), align 8, !tbaa !24
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %180, !prof !17

179:                                              ; preds = %169
  store %struct.zahl** %170, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  call fastcc void @libzahl_memfailure() #9
  unreachable

180:                                              ; preds = %169
  %181 = bitcast i8* %177 to %struct.zahl**
  %182 = getelementptr inbounds %struct.zahl*, %struct.zahl** %181, i64 %174
  %183 = getelementptr inbounds %struct.zahl*, %struct.zahl** %182, i64 %174
  store %struct.zahl** %183, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  br label %184

184:                                              ; preds = %160, %180
  %185 = phi %struct.zahl** [ %182, %180 ], [ %166, %160 ]
  %186 = getelementptr inbounds %struct.zahl*, %struct.zahl** %185, i64 1
  store %struct.zahl** %186, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  store %struct.zahl* %163, %struct.zahl** %185, align 8, !tbaa !24
  %187 = load i32, i32* %12, align 8, !tbaa !10
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192, !prof !17

189:                                              ; preds = %184
  %190 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %4, i64 0, i64 0, i32 0
  store i32 0, i32* %190, align 8, !tbaa !10
  %191 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0, i32 0
  store i32 0, i32* %191, align 8, !tbaa !10
  br label %196

192:                                              ; preds = %184
  %193 = icmp eq %struct.zahl* %91, %1
  br i1 %193, label %194, label %195, !prof !17

194:                                              ; preds = %192
  call void @ztrunc(%struct.zahl* noundef nonnull %115, %struct.zahl* noundef nonnull %1, i64 noundef %90) #9
  call void @zrsh(%struct.zahl* noundef nonnull %1, %struct.zahl* noundef nonnull %1, i64 noundef %90) #9
  br label %196

195:                                              ; preds = %192
  call void @zrsh(%struct.zahl* noundef nonnull %91, %struct.zahl* noundef nonnull %1, i64 noundef %90) #9
  call void @ztrunc(%struct.zahl* noundef nonnull %115, %struct.zahl* noundef nonnull %1, i64 noundef %90) #9
  br label %196

196:                                              ; preds = %189, %194, %195
  %197 = load i32, i32* %16, align 8, !tbaa !10
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202, !prof !17

199:                                              ; preds = %196
  %200 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0, i32 0
  store i32 0, i32* %200, align 8, !tbaa !10
  %201 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %7, i64 0, i64 0, i32 0
  store i32 0, i32* %201, align 8, !tbaa !10
  br label %206

202:                                              ; preds = %196
  %203 = icmp eq %struct.zahl* %139, %2
  br i1 %203, label %204, label %205, !prof !17

204:                                              ; preds = %202
  call void @ztrunc(%struct.zahl* noundef nonnull %163, %struct.zahl* noundef nonnull %2, i64 noundef %90) #9
  call void @zrsh(%struct.zahl* noundef nonnull %2, %struct.zahl* noundef nonnull %2, i64 noundef %90) #9
  br label %206

205:                                              ; preds = %202
  call void @zrsh(%struct.zahl* noundef nonnull %139, %struct.zahl* noundef nonnull %2, i64 noundef %90) #9
  call void @ztrunc(%struct.zahl* noundef nonnull %163, %struct.zahl* noundef nonnull %2, i64 noundef %90) #9
  br label %206

206:                                              ; preds = %199, %204, %205
  call void @zmul_ll(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %115, %struct.zahl* noundef nonnull %163)
  call void @zadd_unsigned_assign(%struct.zahl* noundef nonnull %115, %struct.zahl* noundef nonnull %91) #9
  call void @zadd_unsigned_assign(%struct.zahl* noundef nonnull %163, %struct.zahl* noundef nonnull %139) #9
  call void @zmul_ll(%struct.zahl* noundef nonnull %115, %struct.zahl* noundef nonnull %115, %struct.zahl* noundef nonnull %163)
  call void @zmul_ll(%struct.zahl* noundef nonnull %163, %struct.zahl* noundef nonnull %91, %struct.zahl* noundef nonnull %139)
  call void @zsub_nonnegative_assign(%struct.zahl* noundef nonnull %115, %struct.zahl* noundef %0) #9
  call void @zsub_nonnegative_assign(%struct.zahl* noundef nonnull %115, %struct.zahl* noundef nonnull %163) #9
  call void @zlsh(%struct.zahl* noundef nonnull %115, %struct.zahl* noundef nonnull %115, i64 noundef %90) #9
  %207 = and i64 %89, -2
  call void @zlsh(%struct.zahl* noundef nonnull %163, %struct.zahl* noundef nonnull %163, i64 noundef %207) #9
  call void @zadd_unsigned_assign(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %115) #9
  call void @zadd_unsigned_assign(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %163) #9
  call void @zfree(%struct.zahl* noundef nonnull %163) #9
  %208 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %209 = getelementptr inbounds %struct.zahl*, %struct.zahl** %208, i64 -1
  store %struct.zahl** %209, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  call void @zfree(%struct.zahl* noundef nonnull %139) #9
  %210 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %211 = getelementptr inbounds %struct.zahl*, %struct.zahl** %210, i64 -1
  store %struct.zahl** %211, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  call void @zfree(%struct.zahl* noundef nonnull %115) #9
  %212 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %213 = getelementptr inbounds %struct.zahl*, %struct.zahl** %212, i64 -1
  store %struct.zahl** %213, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  call void @zfree(%struct.zahl* noundef nonnull %91) #9
  %214 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %215 = getelementptr inbounds %struct.zahl*, %struct.zahl** %214, i64 -1
  store %struct.zahl** %215, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  br label %216

216:                                              ; preds = %206, %76, %19
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @zadd_unsigned_assign(%struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #2

declare void @zsub_nonnegative_assign(%struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #2

declare void @zlsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint noreturn nounwind ssp uwtable
define internal fastcc void @libzahl_memfailure() unnamed_addr #5 {
  %1 = tail call i32* @__error() #9
  %2 = load i32, i32* %1, align 4, !tbaa !25
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32* @__error() #9
  store i32 2, i32* %5, align 4, !tbaa !25
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32* @__error() #9
  %8 = load i32, i32* %7, align 4, !tbaa !25
  store i32 %8, i32* @libzahl_error, align 4, !tbaa !25
  %9 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  %10 = icmp eq %struct.zahl** %9, null
  %11 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %12 = icmp eq %struct.zahl** %11, %9
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %6, %14
  %15 = phi %struct.zahl** [ %18, %14 ], [ %11, %6 ]
  %16 = getelementptr inbounds %struct.zahl*, %struct.zahl** %15, i64 -1
  store %struct.zahl** %16, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %17 = load %struct.zahl*, %struct.zahl** %16, align 8, !tbaa !24
  tail call void @zfree(%struct.zahl* noundef %17) #9
  %18 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %19 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  %20 = icmp eq %struct.zahl** %18, %19
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %6
  %22 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !24
  tail call void @free(i8* noundef %22) #9
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !24
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #11
  unreachable
}

declare i32* @__error() local_unnamed_addr #2

declare void @zfree(%struct.zahl* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) local_unnamed_addr #7

declare void @ztrunc(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) local_unnamed_addr #2

declare void @zrsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { inlinehint noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #7 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { noreturn nounwind }

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
!18 = !{!11, !16, i64 24}
!19 = !{!11, !15, i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"long long", !13, i64 0}
!22 = !{i64 0, i64 65}
!23 = !{!11, !15, i64 16}
!24 = !{!16, !16, i64 0}
!25 = !{!12, !12, i64 0}
