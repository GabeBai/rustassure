; ModuleID = 'src/zadd.c'
source_filename = "src/zadd.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: nounwind ssp uwtable
define void @zadd_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @libzahl_zadd_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2)
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @libzahl_zadd_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) unnamed_addr #1 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !17

7:                                                ; preds = %3
  tail call fastcc void @zabs(%struct.zahl* noundef %0, %struct.zahl* noundef %2)
  br label %169

8:                                                ; preds = %3
  %9 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !17

12:                                               ; preds = %8
  tail call fastcc void @zabs(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1)
  br label %169

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %15 = load i64, i64* %14, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %17 = load i64, i64* %16, align 8, !tbaa !18
  %18 = icmp ugt i64 %15, %17
  %19 = select i1 %18, i64 %15, i64 %17
  %20 = add i64 %17, %15
  %21 = sub i64 %20, %19
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %23 = load i64, i64* %22, align 8, !tbaa !19
  %24 = add i64 %19, 1
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %24) #6
  br label %27

27:                                               ; preds = %26, %13
  %28 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %29 = load i64*, i64** %28, align 8, !tbaa !20
  %30 = getelementptr inbounds i64, i64* %29, i64 %19
  store i64 0, i64* %30, align 8, !tbaa !21
  %31 = icmp eq %struct.zahl* %0, %1
  br i1 %31, label %32, label %87

32:                                               ; preds = %27
  %33 = load i64, i64* %14, align 8, !tbaa !18
  %34 = load i64, i64* %16, align 8, !tbaa !18
  %35 = icmp ugt i64 %34, %33
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = getelementptr inbounds i64, i64* %29, i64 %33
  %38 = sub i64 %34, %33
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36, %40
  %41 = phi i64 [ %47, %40 ], [ 0, %36 ]
  %42 = getelementptr inbounds i64, i64* %37, i64 %41
  %43 = bitcast i64* %42 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %43, align 8, !tbaa !21
  %44 = or i64 %41, 2
  %45 = getelementptr inbounds i64, i64* %37, i64 %44
  %46 = bitcast i64* %45 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %46, align 8, !tbaa !21
  %47 = add i64 %41, 4
  %48 = icmp ult i64 %47, %38
  br i1 %48, label %40, label %49

49:                                               ; preds = %40, %32
  %50 = phi i64 [ %21, %32 ], [ %34, %40 ]
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %167, label %52

52:                                               ; preds = %36, %49
  %53 = phi i64 [ %50, %49 ], [ %34, %36 ]
  %54 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %55 = load i64*, i64** %54, align 8, !tbaa !20
  br label %57

56:                                               ; preds = %57
  br i1 %70, label %74, label %82

57:                                               ; preds = %52, %57
  %58 = phi i64 [ %72, %57 ], [ 0, %52 ]
  %59 = phi i64 [ %71, %57 ], [ 0, %52 ]
  %60 = getelementptr inbounds i64, i64* %29, i64 %58
  %61 = load i64, i64* %60, align 8, !tbaa !21
  %62 = getelementptr inbounds i64, i64* %55, i64 %58
  %63 = load i64, i64* %62, align 8, !tbaa !21
  %64 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %61, i64 %63) #6
  %65 = extractvalue { i64, i1 } %64, 1
  %66 = extractvalue { i64, i1 } %64, 0
  %67 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 %59) #6
  %68 = extractvalue { i64, i1 } %67, 1
  %69 = extractvalue { i64, i1 } %67, 0
  store i64 %69, i64* %60, align 8
  %70 = or i1 %65, %68
  %71 = zext i1 %70 to i64
  %72 = add nuw i64 %58, 1
  %73 = icmp eq i64 %72, %53
  br i1 %73, label %56, label %57

74:                                               ; preds = %56, %74
  %75 = phi i64 [ %81, %74 ], [ %53, %56 ]
  %76 = getelementptr inbounds i64, i64* %29, i64 %75
  %77 = load i64, i64* %76, align 8, !tbaa !21
  %78 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %77, i64 1) #6
  %79 = extractvalue { i64, i1 } %78, 1
  %80 = extractvalue { i64, i1 } %78, 0
  store i64 %80, i64* %76, align 8
  %81 = add i64 %75, 1
  br i1 %79, label %74, label %82

82:                                               ; preds = %74, %56
  %83 = phi i64 [ %53, %56 ], [ %81, %74 ]
  %84 = load i64, i64* %14, align 8, !tbaa !18
  %85 = icmp ult i64 %84, %83
  br i1 %85, label %86, label %167

86:                                               ; preds = %82
  store i64 %83, i64* %14, align 8, !tbaa !18
  br label %167

87:                                               ; preds = %27
  %88 = icmp eq %struct.zahl* %0, %2
  br i1 %88, label %89, label %110, !prof !17

89:                                               ; preds = %87
  %90 = load i64, i64* %16, align 8, !tbaa !18
  %91 = load i64, i64* %14, align 8, !tbaa !18
  %92 = icmp ugt i64 %91, %90
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = getelementptr inbounds i64, i64* %29, i64 %90
  %95 = sub i64 %91, %90
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %93, %97
  %98 = phi i64 [ %104, %97 ], [ 0, %93 ]
  %99 = getelementptr inbounds i64, i64* %94, i64 %98
  %100 = bitcast i64* %99 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %100, align 8, !tbaa !21
  %101 = or i64 %98, 2
  %102 = getelementptr inbounds i64, i64* %94, i64 %101
  %103 = bitcast i64* %102 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %103, align 8, !tbaa !21
  %104 = add i64 %98, 4
  %105 = icmp ult i64 %104, %95
  br i1 %105, label %97, label %106

106:                                              ; preds = %97, %93, %89
  %107 = phi i64 [ %21, %89 ], [ %91, %93 ], [ %91, %97 ]
  %108 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %109 = load i64*, i64** %108, align 8, !tbaa !20
  tail call fastcc void @zadd_impl_3(%struct.zahl* noundef %2, i64* %109, i64 noundef %107)
  br label %167

110:                                              ; preds = %87
  %111 = load i64, i64* %14, align 8, !tbaa !18
  %112 = load i64, i64* %16, align 8, !tbaa !18
  %113 = icmp ugt i64 %111, %112
  %114 = getelementptr inbounds i64, i64* %29, i64 %21
  br i1 %113, label %115, label %158, !prof !23

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %117 = load i64*, i64** %116, align 8, !tbaa !20
  %118 = getelementptr inbounds i64, i64* %117, i64 %21
  %119 = sub i64 %19, %21
  tail call fastcc void @libzahl_memcpy(i64* noundef %114, i64* noundef %118, i64 noundef %119)
  %120 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %19, i64* %120, align 8, !tbaa !18
  %121 = load i64*, i64** %116, align 8, !tbaa !20
  %122 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %123 = load i64*, i64** %122, align 8, !tbaa !20
  %124 = load i64*, i64** %28, align 8, !tbaa !20
  %125 = icmp eq i64 %21, 0
  br i1 %125, label %167, label %127

126:                                              ; preds = %127
  br i1 %141, label %145, label %153

127:                                              ; preds = %115, %127
  %128 = phi i64 [ %143, %127 ], [ 0, %115 ]
  %129 = phi i64 [ %142, %127 ], [ 0, %115 ]
  %130 = getelementptr inbounds i64, i64* %121, i64 %128
  %131 = load i64, i64* %130, align 8, !tbaa !21
  %132 = getelementptr inbounds i64, i64* %123, i64 %128
  %133 = load i64, i64* %132, align 8, !tbaa !21
  %134 = getelementptr inbounds i64, i64* %124, i64 %128
  %135 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %131, i64 %133) #6
  %136 = extractvalue { i64, i1 } %135, 1
  %137 = extractvalue { i64, i1 } %135, 0
  %138 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %137, i64 %129) #6
  %139 = extractvalue { i64, i1 } %138, 1
  %140 = extractvalue { i64, i1 } %138, 0
  store i64 %140, i64* %134, align 8
  %141 = or i1 %136, %139
  %142 = zext i1 %141 to i64
  %143 = add nuw i64 %128, 1
  %144 = icmp eq i64 %143, %21
  br i1 %144, label %126, label %127

145:                                              ; preds = %126, %145
  %146 = phi i64 [ %152, %145 ], [ %21, %126 ]
  %147 = getelementptr inbounds i64, i64* %124, i64 %146
  %148 = load i64, i64* %147, align 8, !tbaa !21
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 1) #6
  %150 = extractvalue { i64, i1 } %149, 1
  %151 = extractvalue { i64, i1 } %149, 0
  store i64 %151, i64* %147, align 8
  %152 = add i64 %146, 1
  br i1 %150, label %145, label %153

153:                                              ; preds = %145, %126
  %154 = phi i64 [ %21, %126 ], [ %152, %145 ]
  %155 = load i64, i64* %120, align 8, !tbaa !18
  %156 = icmp ult i64 %155, %154
  br i1 %156, label %157, label %167

157:                                              ; preds = %153
  store i64 %154, i64* %120, align 8, !tbaa !18
  br label %167

158:                                              ; preds = %110
  %159 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %160 = load i64*, i64** %159, align 8, !tbaa !20
  %161 = getelementptr inbounds i64, i64* %160, i64 %21
  %162 = sub i64 %19, %21
  tail call fastcc void @libzahl_memcpy(i64* noundef %114, i64* noundef %161, i64 noundef %162)
  %163 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %19, i64* %163, align 8, !tbaa !18
  %164 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %165 = load i64*, i64** %164, align 8, !tbaa !20
  %166 = load i64*, i64** %159, align 8, !tbaa !20
  tail call fastcc void @zadd_impl_4(%struct.zahl* noundef nonnull %0, i64* %165, i64* %166, i64 noundef %21)
  br label %167

167:                                              ; preds = %157, %153, %115, %86, %82, %49, %106, %158
  %168 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %168, align 8, !tbaa !10
  br label %169

169:                                              ; preds = %167, %12, %7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @zadd_unsigned_assign(%struct.zahl* noundef %0, %struct.zahl* noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %2
  tail call fastcc void @zabs(%struct.zahl* noundef nonnull %0, %struct.zahl* noundef %1)
  br label %86

7:                                                ; preds = %2
  %8 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %86, label %11, !prof !17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %13 = load i64, i64* %12, align 8, !tbaa !18
  %14 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %15 = load i64, i64* %14, align 8, !tbaa !18
  %16 = icmp ugt i64 %13, %15
  %17 = select i1 %16, i64 %13, i64 %15
  %18 = add i64 %15, %13
  %19 = sub i64 %18, %17
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %21 = load i64, i64* %20, align 8, !tbaa !19
  %22 = add i64 %17, 1
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %22) #6
  %25 = load i64, i64* %12, align 8, !tbaa !18
  %26 = load i64, i64* %14, align 8, !tbaa !18
  br label %27

27:                                               ; preds = %24, %11
  %28 = phi i64 [ %26, %24 ], [ %15, %11 ]
  %29 = phi i64 [ %25, %24 ], [ %13, %11 ]
  %30 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %31 = load i64*, i64** %30, align 8, !tbaa !20
  %32 = getelementptr inbounds i64, i64* %31, i64 %17
  store i64 0, i64* %32, align 8, !tbaa !21
  %33 = icmp ugt i64 %28, %29
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = getelementptr inbounds i64, i64* %31, i64 %29
  %36 = sub i64 %28, %29
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %45, %38 ], [ 0, %34 ]
  %40 = getelementptr inbounds i64, i64* %35, i64 %39
  %41 = bitcast i64* %40 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %41, align 8, !tbaa !21
  %42 = or i64 %39, 2
  %43 = getelementptr inbounds i64, i64* %35, i64 %42
  %44 = bitcast i64* %43 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %44, align 8, !tbaa !21
  %45 = add i64 %39, 4
  %46 = icmp ult i64 %45, %36
  br i1 %46, label %38, label %47

47:                                               ; preds = %38, %27
  %48 = phi i64 [ %19, %27 ], [ %28, %38 ]
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %85, label %50

50:                                               ; preds = %34, %47
  %51 = phi i64 [ %48, %47 ], [ %28, %34 ]
  %52 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %53 = load i64*, i64** %52, align 8, !tbaa !20
  br label %55

54:                                               ; preds = %55
  br i1 %68, label %72, label %80

55:                                               ; preds = %50, %55
  %56 = phi i64 [ %70, %55 ], [ 0, %50 ]
  %57 = phi i64 [ %69, %55 ], [ 0, %50 ]
  %58 = getelementptr inbounds i64, i64* %31, i64 %56
  %59 = load i64, i64* %58, align 8, !tbaa !21
  %60 = getelementptr inbounds i64, i64* %53, i64 %56
  %61 = load i64, i64* %60, align 8, !tbaa !21
  %62 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %59, i64 %61) #6
  %63 = extractvalue { i64, i1 } %62, 1
  %64 = extractvalue { i64, i1 } %62, 0
  %65 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 %57) #6
  %66 = extractvalue { i64, i1 } %65, 1
  %67 = extractvalue { i64, i1 } %65, 0
  store i64 %67, i64* %58, align 8
  %68 = or i1 %63, %66
  %69 = zext i1 %68 to i64
  %70 = add nuw i64 %56, 1
  %71 = icmp eq i64 %70, %51
  br i1 %71, label %54, label %55

72:                                               ; preds = %54, %72
  %73 = phi i64 [ %79, %72 ], [ %51, %54 ]
  %74 = getelementptr inbounds i64, i64* %31, i64 %73
  %75 = load i64, i64* %74, align 8, !tbaa !21
  %76 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %75, i64 1) #6
  %77 = extractvalue { i64, i1 } %76, 1
  %78 = extractvalue { i64, i1 } %76, 0
  store i64 %78, i64* %74, align 8
  %79 = add i64 %73, 1
  br i1 %77, label %72, label %80

80:                                               ; preds = %72, %54
  %81 = phi i64 [ %51, %54 ], [ %79, %72 ]
  %82 = load i64, i64* %12, align 8, !tbaa !18
  %83 = icmp ult i64 %82, %81
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i64 %81, i64* %12, align 8, !tbaa !18
  br label %85

85:                                               ; preds = %47, %80, %84
  store i32 1, i32* %3, align 8, !tbaa !10
  br label %86

86:                                               ; preds = %7, %85, %6
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zabs(%struct.zahl* noundef %0, %struct.zahl* noundef readonly %1) unnamed_addr #1 {
  %3 = icmp eq %struct.zahl* %0, %1
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !10
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  br i1 %7, label %9, label %10, !prof !17

9:                                                ; preds = %4
  store i32 0, i32* %8, align 8, !tbaa !10
  br label %26

10:                                               ; preds = %4
  store i32 %6, i32* %8, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %12 = load i64, i64* %11, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %12, i64* %13, align 8, !tbaa !18
  %14 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %15 = load i64, i64* %14, align 8, !tbaa !19
  %16 = load i64, i64* %11, align 8, !tbaa !18
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %16) #6
  %19 = load i64, i64* %11, align 8, !tbaa !18
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i64 [ %16, %10 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %23 = load i64*, i64** %22, align 8, !tbaa !20
  %24 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %25 = load i64*, i64** %24, align 8, !tbaa !20
  tail call fastcc void @libzahl_memcpy(i64* noundef %23, i64* noundef %25, i64 noundef %21) #6
  br label %26

26:                                               ; preds = %20, %9, %2
  %27 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %28 = load i32, i32* %27, align 8, !tbaa !10
  %29 = and i32 %28, 1
  store i32 %29, i32* %27, align 8, !tbaa !10
  ret void
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nosync nounwind ssp uwtable
define internal fastcc void @zadd_impl_3(%struct.zahl* nocapture noundef %0, i64* %1, i64 noundef %2) unnamed_addr #3 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %5 = load i64*, i64** %4, align 8, !tbaa !20
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %39, label %8

7:                                                ; preds = %8
  br i1 %21, label %25, label %33

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %23, %8 ], [ 0, %3 ]
  %10 = phi i64 [ %22, %8 ], [ 0, %3 ]
  %11 = getelementptr inbounds i64, i64* %5, i64 %9
  %12 = load i64, i64* %11, align 8, !tbaa !21
  %13 = getelementptr inbounds i64, i64* %1, i64 %9
  %14 = load i64, i64* %13, align 8, !tbaa !21
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %12, i64 %14) #6
  %16 = extractvalue { i64, i1 } %15, 1
  %17 = extractvalue { i64, i1 } %15, 0
  %18 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %17, i64 %10) #6
  %19 = extractvalue { i64, i1 } %18, 1
  %20 = extractvalue { i64, i1 } %18, 0
  store i64 %20, i64* %11, align 8
  %21 = or i1 %16, %19
  %22 = zext i1 %21 to i64
  %23 = add nuw i64 %9, 1
  %24 = icmp eq i64 %23, %2
  br i1 %24, label %7, label %8

25:                                               ; preds = %7, %25
  %26 = phi i64 [ %32, %25 ], [ %2, %7 ]
  %27 = getelementptr inbounds i64, i64* %5, i64 %26
  %28 = load i64, i64* %27, align 8, !tbaa !21
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %28, i64 1) #6
  %30 = extractvalue { i64, i1 } %29, 1
  %31 = extractvalue { i64, i1 } %29, 0
  store i64 %31, i64* %27, align 8
  %32 = add i64 %26, 1
  br i1 %30, label %25, label %33

33:                                               ; preds = %25, %7
  %34 = phi i64 [ %2, %7 ], [ %32, %25 ]
  %35 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %36 = load i64, i64* %35, align 8, !tbaa !18
  %37 = icmp ult i64 %36, %34
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i64 %34, i64* %35, align 8, !tbaa !18
  br label %39

39:                                               ; preds = %3, %33, %38
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @zadd(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10, !prof !17

7:                                                ; preds = %3
  %8 = icmp eq %struct.zahl* %0, %2
  br i1 %8, label %29, label %9

9:                                                ; preds = %7
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef %2)
  br label %29

10:                                               ; preds = %3
  %11 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !17

14:                                               ; preds = %10
  %15 = icmp eq %struct.zahl* %0, %1
  br i1 %15, label %29, label %16

16:                                               ; preds = %14
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1)
  br label %29

17:                                               ; preds = %10
  %18 = icmp slt i32 %5, 0
  %19 = icmp slt i32 %12, 0
  br i1 %18, label %20, label %26, !prof !17

20:                                               ; preds = %17
  br i1 %19, label %21, label %25

21:                                               ; preds = %20
  tail call fastcc void @libzahl_zadd_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1, %struct.zahl* noundef nonnull %2)
  %22 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %23 = load i32, i32* %22, align 8, !tbaa !10
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %22, align 8, !tbaa !10
  br label %29

25:                                               ; preds = %20
  tail call void @zsub_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %2, %struct.zahl* noundef nonnull %1) #6
  br label %29

26:                                               ; preds = %17
  br i1 %19, label %27, label %28, !prof !17

27:                                               ; preds = %26
  tail call void @zsub_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1, %struct.zahl* noundef nonnull %2) #6
  br label %29

28:                                               ; preds = %26
  tail call fastcc void @libzahl_zadd_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1, %struct.zahl* noundef nonnull %2)
  br label %29

29:                                               ; preds = %14, %16, %27, %28, %21, %25, %9, %7
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
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %14) #6
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

declare void @zsub_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind ssp uwtable
define internal fastcc void @libzahl_memcpy(i64* noalias noundef writeonly %0, i64* noalias noundef readonly %1, i64 noundef %2) unnamed_addr #4 {
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

; Function Attrs: inlinehint nofree nosync nounwind ssp uwtable
define internal fastcc void @zadd_impl_4(%struct.zahl* nocapture noundef %0, i64* %1, i64* %2, i64 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %6 = load i64*, i64** %5, align 8, !tbaa !20
  %7 = icmp eq i64 %3, 0
  br i1 %7, label %41, label %9

8:                                                ; preds = %9
  br i1 %23, label %27, label %35

9:                                                ; preds = %4, %9
  %10 = phi i64 [ %25, %9 ], [ 0, %4 ]
  %11 = phi i64 [ %24, %9 ], [ 0, %4 ]
  %12 = getelementptr inbounds i64, i64* %1, i64 %10
  %13 = load i64, i64* %12, align 8, !tbaa !21
  %14 = getelementptr inbounds i64, i64* %2, i64 %10
  %15 = load i64, i64* %14, align 8, !tbaa !21
  %16 = getelementptr inbounds i64, i64* %6, i64 %10
  %17 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %15)
  %18 = extractvalue { i64, i1 } %17, 1
  %19 = extractvalue { i64, i1 } %17, 0
  %20 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 %11)
  %21 = extractvalue { i64, i1 } %20, 1
  %22 = extractvalue { i64, i1 } %20, 0
  store i64 %22, i64* %16, align 8
  %23 = or i1 %18, %21
  %24 = zext i1 %23 to i64
  %25 = add nuw i64 %10, 1
  %26 = icmp eq i64 %25, %3
  br i1 %26, label %8, label %9

27:                                               ; preds = %8, %27
  %28 = phi i64 [ %34, %27 ], [ %3, %8 ]
  %29 = getelementptr inbounds i64, i64* %6, i64 %28
  %30 = load i64, i64* %29, align 8, !tbaa !21
  %31 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %30, i64 1)
  %32 = extractvalue { i64, i1 } %31, 1
  %33 = extractvalue { i64, i1 } %31, 0
  store i64 %33, i64* %29, align 8
  %34 = add i64 %28, 1
  br i1 %32, label %27, label %35

35:                                               ; preds = %27, %8
  %36 = phi i64 [ %3, %8 ], [ %34, %27 ]
  %37 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %38 = load i64, i64* %37, align 8, !tbaa !18
  %39 = icmp ult i64 %38, %36
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i64 %36, i64* %37, align 8, !tbaa !18
  br label %41

41:                                               ; preds = %4, %40, %35
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { inlinehint nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!23 = !{!"branch_weights", i32 2000, i32 1}
