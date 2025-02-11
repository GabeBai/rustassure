; ModuleID = 'src/zrsh.c'
source_filename = "src/zrsh.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: nounwind ssp uwtable
define void @zrsh(%struct.zahl* noundef %0, %struct.zahl* noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %8, !prof !10

5:                                                ; preds = %3
  %6 = icmp eq %struct.zahl* %0, %1
  br i1 %6, label %130, label %7

7:                                                ; preds = %5
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef %1)
  br label %130

8:                                                ; preds = %3
  %9 = lshr i64 %2, 6
  %10 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13, !prof !10

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %15 = load i64, i64* %14, align 8, !tbaa !18
  %16 = icmp ult i64 %9, %15
  br i1 %16, label %17, label %38, !prof !19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %19 = load i64*, i64** %18, align 8, !tbaa !20
  %20 = add i64 %15, -1
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8, !tbaa !21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17, %24
  %25 = phi i64 [ %26, %24 ], [ %20, %17 ]
  %26 = add i64 %25, -1
  %27 = getelementptr inbounds i64, i64* %19, i64 %26
  %28 = load i64, i64* %27, align 8, !tbaa !21
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %24, label %30

30:                                               ; preds = %24
  store i64 %25, i64* %14, align 8, !tbaa !18
  br label %31

31:                                               ; preds = %17, %30
  %32 = phi i64 [ %25, %30 ], [ %15, %17 ]
  %33 = phi i64 [ %28, %30 ], [ %22, %17 ]
  %34 = shl i64 %32, 6
  %35 = tail call i64 @llvm.ctlz.i64(i64 %33, i1 true) #5, !range !23
  %36 = sub i64 %34, %35
  %37 = icmp ugt i64 %36, %2
  br i1 %37, label %40, label %38, !prof !19

38:                                               ; preds = %8, %13, %31
  %39 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %39, align 8, !tbaa !11
  br label %130

40:                                               ; preds = %31
  %41 = and i64 %2, 63
  %42 = sub nuw nsw i64 64, %41
  %43 = icmp ugt i64 %2, 63
  %44 = icmp eq %struct.zahl* %0, %1
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %77, !prof !24

46:                                               ; preds = %40
  %47 = sub i64 %32, %9
  store i64 %47, i64* %14, align 8, !tbaa !18
  %48 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %49 = load i64*, i64** %48, align 8, !tbaa !20
  %50 = getelementptr inbounds i64, i64* %49, i64 %9
  %51 = add i64 %47, -1
  %52 = icmp ult i64 %51, 3
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = icmp eq i64 %47, 0
  br i1 %54, label %93, label %62

55:                                               ; preds = %46
  %56 = bitcast i64* %50 to <2 x i64>*
  %57 = load <2 x i64>, <2 x i64>* %56, align 8, !tbaa !21
  %58 = bitcast i64* %49 to <2 x i64>*
  store <2 x i64> %57, <2 x i64>* %58, align 8, !tbaa !21
  %59 = getelementptr inbounds i64, i64* %50, i64 2
  %60 = load i64, i64* %59, align 8, !tbaa !21
  %61 = getelementptr inbounds i64, i64* %49, i64 2
  store i64 %60, i64* %61, align 8, !tbaa !21
  br label %93

62:                                               ; preds = %53, %62
  %63 = phi i64 [ %75, %62 ], [ 0, %53 ]
  %64 = getelementptr inbounds i64, i64* %50, i64 %63
  %65 = getelementptr inbounds i64, i64* %49, i64 %63
  %66 = bitcast i64* %64 to <2 x i64>*
  %67 = load <2 x i64>, <2 x i64>* %66, align 8, !tbaa !21
  %68 = bitcast i64* %65 to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %68, align 8, !tbaa !21
  %69 = or i64 %63, 2
  %70 = getelementptr inbounds i64, i64* %50, i64 %69
  %71 = getelementptr inbounds i64, i64* %49, i64 %69
  %72 = bitcast i64* %70 to <2 x i64>*
  %73 = load <2 x i64>, <2 x i64>* %72, align 8, !tbaa !21
  %74 = bitcast i64* %71 to <2 x i64>*
  store <2 x i64> %73, <2 x i64>* %74, align 8, !tbaa !21
  %75 = add i64 %63, 4
  %76 = icmp ult i64 %75, %47
  br i1 %76, label %62, label %93

77:                                               ; preds = %40
  br i1 %44, label %93, label %78, !prof !19

78:                                               ; preds = %77
  %79 = sub i64 %32, %9
  %80 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %79, i64* %80, align 8, !tbaa !18
  %81 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %82 = load i64, i64* %81, align 8, !tbaa !25
  %83 = icmp ult i64 %82, %79
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %79) #5
  %85 = load i64, i64* %80, align 8, !tbaa !18
  br label %86

86:                                               ; preds = %84, %78
  %87 = phi i64 [ %85, %84 ], [ %79, %78 ]
  %88 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %89 = load i64*, i64** %88, align 8, !tbaa !20
  %90 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %91 = load i64*, i64** %90, align 8, !tbaa !20
  %92 = getelementptr inbounds i64, i64* %91, i64 %9
  tail call fastcc void @libzahl_memcpy(i64* noundef %89, i64* noundef %92, i64 noundef %87)
  br label %93

93:                                               ; preds = %62, %55, %53, %77, %86
  %94 = icmp eq i64 %41, 0
  br i1 %94, label %127, label %95, !prof !19

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %97 = load i64*, i64** %96, align 8, !tbaa !20
  %98 = load i64, i64* %97, align 8, !tbaa !21
  %99 = lshr i64 %98, %41
  store i64 %99, i64* %97, align 8, !tbaa !21
  %100 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %101 = load i64, i64* %100, align 8, !tbaa !18
  %102 = icmp ugt i64 %101, 1
  br i1 %102, label %108, label %103

103:                                              ; preds = %108, %95
  %104 = add i64 %101, -1
  %105 = getelementptr inbounds i64, i64* %97, i64 %104
  %106 = load i64, i64* %105, align 8, !tbaa !21
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %120, label %127

108:                                              ; preds = %95, %108
  %109 = phi i64 [ %117, %108 ], [ %99, %95 ]
  %110 = phi i64 [ %118, %108 ], [ 1, %95 ]
  %111 = getelementptr inbounds i64, i64* %97, i64 %110
  %112 = load i64, i64* %111, align 8, !tbaa !21
  %113 = shl i64 %112, %42
  %114 = add i64 %110, -1
  %115 = getelementptr inbounds i64, i64* %97, i64 %114
  %116 = or i64 %109, %113
  store i64 %116, i64* %115, align 8, !tbaa !21
  %117 = lshr i64 %112, %41
  store i64 %117, i64* %111, align 8, !tbaa !21
  %118 = add nuw i64 %110, 1
  %119 = icmp eq i64 %118, %101
  br i1 %119, label %103, label %108

120:                                              ; preds = %103, %120
  %121 = phi i64 [ %122, %120 ], [ %104, %103 ]
  %122 = add i64 %121, -1
  %123 = getelementptr inbounds i64, i64* %97, i64 %122
  %124 = load i64, i64* %123, align 8, !tbaa !21
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %120, label %126

126:                                              ; preds = %120
  store i64 %121, i64* %100, align 8, !tbaa !18
  br label %127

127:                                              ; preds = %103, %126, %93
  %128 = load i32, i32* %10, align 8, !tbaa !11
  %129 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %128, i32* %129, align 8, !tbaa !11
  br label %130

130:                                              ; preds = %5, %7, %127, %38
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !11
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  br i1 %5, label %7, label %8, !prof !10

7:                                                ; preds = %2
  store i32 0, i32* %6, align 8, !tbaa !11
  br label %24

8:                                                ; preds = %2
  store i32 %4, i32* %6, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %10, i64* %11, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %13 = load i64, i64* %12, align 8, !tbaa !25
  %14 = load i64, i64* %9, align 8, !tbaa !18
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %14) #5
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

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!12, !13, i64 0}
!12 = !{!"zahl", !13, i64 0, !13, i64 4, !16, i64 8, !16, i64 16, !17, i64 24}
!13 = !{!"int", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"long", !14, i64 0}
!17 = !{!"any pointer", !14, i64 0}
!18 = !{!12, !16, i64 8}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{!12, !17, i64 24}
!21 = !{!22, !22, i64 0}
!22 = !{!"long long", !14, i64 0}
!23 = !{i64 0, i64 65}
!24 = !{!"branch_weights", i32 4000000, i32 4001}
!25 = !{!12, !16, i64 16}
