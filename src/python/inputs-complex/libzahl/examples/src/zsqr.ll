; ModuleID = 'src/zsqr.c'
source_filename = "src/zsqr.c"
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
define void @zsqr_ll(%struct.zahl* noundef %0, %struct.zahl* nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.zahl], align 8
  %4 = alloca [1 x %struct.zahl], align 8
  %5 = alloca [1 x %struct.zahl], align 8
  %6 = alloca [1 x %struct.zahl], align 8
  %7 = alloca [12 x i64], align 8
  %8 = bitcast [1 x %struct.zahl]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #9
  %9 = bitcast [1 x %struct.zahl]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #9
  %10 = bitcast [1 x %struct.zahl]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #9
  %11 = bitcast [1 x %struct.zahl]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #9
  %12 = bitcast [12 x i64]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %12) #9
  %13 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %39, label %16, !prof !17

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %18 = load i64*, i64** %17, align 8, !tbaa !18
  %19 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %20 = load i64, i64* %19, align 8, !tbaa !19
  %21 = add i64 %20, -1
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8, !tbaa !20
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16, %25
  %26 = phi i64 [ %27, %25 ], [ %21, %16 ]
  %27 = add i64 %26, -1
  %28 = getelementptr inbounds i64, i64* %18, i64 %27
  %29 = load i64, i64* %28, align 8, !tbaa !20
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %25, label %31

31:                                               ; preds = %25
  store i64 %26, i64* %19, align 8, !tbaa !19
  br label %32

32:                                               ; preds = %16, %31
  %33 = phi i64 [ %26, %31 ], [ %20, %16 ]
  %34 = phi i64 [ %29, %31 ], [ %23, %16 ]
  %35 = shl i64 %33, 6
  %36 = tail call i64 @llvm.ctlz.i64(i64 %34, i1 true) #9, !range !22
  %37 = sub i64 %35, %36
  %38 = icmp ult i64 %37, 33
  br i1 %38, label %39, label %53

39:                                               ; preds = %2, %32
  %40 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %41 = load i64, i64* %40, align 8, !tbaa !23
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef 1) #9
  br label %44

44:                                               ; preds = %39, %43
  %45 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 1, i64* %45, align 8, !tbaa !19
  %46 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %47 = load i64*, i64** %46, align 8, !tbaa !18
  %48 = load i64, i64* %47, align 8, !tbaa !20
  %49 = mul i64 %48, %48
  %50 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %51 = load i64*, i64** %50, align 8, !tbaa !18
  store i64 %49, i64* %51, align 8, !tbaa !20
  %52 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %52, align 8, !tbaa !10
  br label %175

53:                                               ; preds = %32
  %54 = lshr i64 %37, 1
  %55 = icmp ult i64 %37, 128
  br i1 %55, label %56, label %85

56:                                               ; preds = %53
  %57 = getelementptr inbounds [12 x i64], [12 x i64]* %7, i64 0, i64 0
  %58 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0, i32 4
  store i64* %57, i64** %58, align 8, !tbaa !18
  %59 = getelementptr inbounds [12 x i64], [12 x i64]* %7, i64 0, i64 4
  %60 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0, i32 4
  store i64* %59, i64** %60, align 8, !tbaa !18
  %61 = shl nsw i64 -1, %54
  %62 = xor i64 %61, -1
  %63 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0, i32 0
  store i32 1, i32* %63, align 8, !tbaa !10
  %64 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0, i32 2
  store i64 1, i64* %64, align 8, !tbaa !19
  %65 = load i64, i64* %18, align 8, !tbaa !20
  %66 = lshr i64 %65, %54
  store i64 %66, i64* %59, align 8, !tbaa !20
  %67 = icmp eq i64 %33, 2
  br i1 %67, label %68, label %79

68:                                               ; preds = %56
  %69 = getelementptr inbounds i64, i64* %18, i64 1
  %70 = load i64, i64* %69, align 8, !tbaa !20
  %71 = lshr i64 %70, %54
  %72 = getelementptr inbounds [12 x i64], [12 x i64]* %7, i64 0, i64 5
  store i64 %71, i64* %72, align 8, !tbaa !20
  %73 = icmp eq i64 %71, 0
  %74 = select i1 %73, i64 1, i64 2
  store i64 %74, i64* %64, align 8, !tbaa !19
  %75 = sub nsw i64 64, %54
  %76 = load i64, i64* %69, align 8, !tbaa !20
  %77 = shl i64 %76, %75
  %78 = or i64 %77, %66
  store i64 %78, i64* %59, align 8, !tbaa !20
  br label %79

79:                                               ; preds = %68, %56
  %80 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0, i32 0
  store i32 1, i32* %80, align 8, !tbaa !10
  %81 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0, i32 2
  store i64 1, i64* %81, align 8, !tbaa !19
  %82 = load i64, i64* %18, align 8, !tbaa !20
  %83 = and i64 %82, %62
  store i64 %83, i64* %57, align 8, !tbaa !20
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %113, label %117, !prof !17

85:                                               ; preds = %53
  %86 = and i64 %54, 9223372036854775744
  %87 = lshr i64 %37, 7
  %88 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0, i32 0
  store i32 1, i32* %88, align 8, !tbaa !10
  %89 = sub i64 %33, %87
  %90 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0, i32 2
  store i64 %89, i64* %90, align 8, !tbaa !19
  %91 = getelementptr inbounds i64, i64* %18, i64 %87
  %92 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0, i32 4
  store i64* %91, i64** %92, align 8, !tbaa !18
  %93 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0, i32 0
  store i32 1, i32* %93, align 8, !tbaa !10
  %94 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0, i32 2
  %95 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0, i32 4
  store i64* %18, i64** %95, align 8, !tbaa !18
  %96 = icmp eq i64 %86, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %85
  %98 = add nsw i64 %87, -1
  %99 = getelementptr inbounds i64, i64* %18, i64 %98
  %100 = load i64, i64* %99, align 8, !tbaa !20
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %107, label %111

102:                                              ; preds = %107
  %103 = add nsw i64 %108, -1
  %104 = getelementptr inbounds i64, i64* %18, i64 %103
  %105 = load i64, i64* %104, align 8, !tbaa !20
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %97, %102
  %108 = phi i64 [ %103, %102 ], [ %98, %97 ]
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %102

110:                                              ; preds = %107
  store i64 0, i64* %94, align 8, !tbaa !19
  br label %113

111:                                              ; preds = %102, %97
  %112 = phi i64 [ %87, %97 ], [ %108, %102 ]
  store i64 %112, i64* %94, align 8, !tbaa !19
  br label %117

113:                                              ; preds = %85, %110, %79
  %114 = phi i64 [ %54, %79 ], [ %86, %110 ], [ %86, %85 ]
  %115 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0
  call void @zsqr_ll(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %115)
  %116 = shl nuw i64 %114, 1
  call void @zlsh(%struct.zahl* noundef %0, %struct.zahl* noundef %0, i64 noundef %116) #9
  br label %175

117:                                              ; preds = %79, %111
  %118 = phi i64 [ %86, %111 ], [ %54, %79 ]
  %119 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0
  %120 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %3, i64 0, i64 0
  %121 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %3, i64 0, i64 0, i32 3
  %122 = bitcast i64* %121 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %122, i8 0, i64 16, i1 false) #9
  %123 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %124 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  %125 = icmp eq %struct.zahl** %123, %124
  br i1 %125, label %126, label %141, !prof !17

126:                                              ; preds = %117
  %127 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  %128 = ptrtoint %struct.zahl** %123 to i64
  %129 = ptrtoint %struct.zahl** %127 to i64
  %130 = sub i64 %128, %129
  %131 = ashr exact i64 %130, 3
  %132 = bitcast %struct.zahl** %127 to i8*
  %133 = shl i64 %130, 1
  %134 = call i8* @realloc(i8* noundef %132, i64 noundef %133) #10
  store i8* %134, i8** bitcast (%struct.zahl*** @libzahl_temp_stack to i8**), align 8, !tbaa !24
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %137, !prof !17

136:                                              ; preds = %126
  store %struct.zahl** %127, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  call fastcc void @libzahl_memfailure() #9
  unreachable

137:                                              ; preds = %126
  %138 = bitcast i8* %134 to %struct.zahl**
  %139 = getelementptr inbounds %struct.zahl*, %struct.zahl** %138, i64 %131
  %140 = getelementptr inbounds %struct.zahl*, %struct.zahl** %139, i64 %131
  store %struct.zahl** %140, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  br label %141

141:                                              ; preds = %117, %137
  %142 = phi %struct.zahl** [ %139, %137 ], [ %123, %117 ]
  %143 = getelementptr inbounds %struct.zahl*, %struct.zahl** %142, i64 1
  store %struct.zahl** %143, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  store %struct.zahl* %120, %struct.zahl** %142, align 8, !tbaa !24
  %144 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %4, i64 0, i64 0
  %145 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %4, i64 0, i64 0, i32 3
  %146 = bitcast i64* %145 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %146, i8 0, i64 16, i1 false) #9
  %147 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %148 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  %149 = icmp eq %struct.zahl** %147, %148
  br i1 %149, label %150, label %165, !prof !17

150:                                              ; preds = %141
  %151 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  %152 = ptrtoint %struct.zahl** %147 to i64
  %153 = ptrtoint %struct.zahl** %151 to i64
  %154 = sub i64 %152, %153
  %155 = ashr exact i64 %154, 3
  %156 = bitcast %struct.zahl** %151 to i8*
  %157 = shl i64 %154, 1
  %158 = call i8* @realloc(i8* noundef %156, i64 noundef %157) #10
  store i8* %158, i8** bitcast (%struct.zahl*** @libzahl_temp_stack to i8**), align 8, !tbaa !24
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %161, !prof !17

160:                                              ; preds = %150
  store %struct.zahl** %151, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  call fastcc void @libzahl_memfailure() #9
  unreachable

161:                                              ; preds = %150
  %162 = bitcast i8* %158 to %struct.zahl**
  %163 = getelementptr inbounds %struct.zahl*, %struct.zahl** %162, i64 %155
  %164 = getelementptr inbounds %struct.zahl*, %struct.zahl** %163, i64 %155
  store %struct.zahl** %164, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !24
  br label %165

165:                                              ; preds = %141, %161
  %166 = phi %struct.zahl** [ %163, %161 ], [ %147, %141 ]
  %167 = getelementptr inbounds %struct.zahl*, %struct.zahl** %166, i64 1
  store %struct.zahl** %167, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  store %struct.zahl* %144, %struct.zahl** %166, align 8, !tbaa !24
  call void @zsqr_ll(%struct.zahl* noundef nonnull %120, %struct.zahl* noundef nonnull %119)
  %168 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0
  call void @zmul_ll(%struct.zahl* noundef nonnull %144, %struct.zahl* noundef nonnull %119, %struct.zahl* noundef nonnull %168) #9
  %169 = add nuw i64 %118, 1
  call void @zlsh(%struct.zahl* noundef nonnull %144, %struct.zahl* noundef nonnull %144, i64 noundef %169) #9
  call void @zsqr_ll(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %168)
  %170 = shl nuw i64 %118, 1
  call void @zlsh(%struct.zahl* noundef %0, %struct.zahl* noundef %0, i64 noundef %170) #9
  call void @zadd_unsigned_assign(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %144) #9
  call void @zadd_unsigned_assign(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %120) #9
  call void @zfree(%struct.zahl* noundef nonnull %144) #9
  %171 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %172 = getelementptr inbounds %struct.zahl*, %struct.zahl** %171, i64 -1
  store %struct.zahl** %172, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  call void @zfree(%struct.zahl* noundef nonnull %120) #9
  %173 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %174 = getelementptr inbounds %struct.zahl*, %struct.zahl** %173, i64 -1
  store %struct.zahl** %174, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  br label %175

175:                                              ; preds = %113, %165, %44
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %12) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @zlsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) local_unnamed_addr #2

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #2

declare void @zadd_unsigned_assign(%struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #2

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
